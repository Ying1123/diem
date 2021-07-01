
// ** Expanded prelude

// Copyright (c) The Diem Core Contributors
// SPDX-License-Identifier: Apache-2.0

// Boogie model for vectors, based on Z3 sequences.
//
// This version of vectors has extensional equality.
//
// This implementation works to some extend but has been so far been much slower/times out compared to
// non-extensional array versions, even though the later require stratified custom equality.
//
// Major issues seem to be:
//
// (a) UpdateVec, SwapVec etc. are slow. UpdateVec requires a ConcatVec of two SliceVec.
// (b) ReverseVec needs to be fully axiomatized with quantifiers which makes it infeasible
//     to work in practice.

type {:builtin "Seq"} Vec _;

function {:builtin "seq.empty"} EmptyVec<T>(): Vec T;

function {:builtin "seq.unit"} MakeVec1<T>(v: T): Vec T;

function {:inline} MakeVec2<T>(v1: T, v2: T): Vec T {
    ConcatVec(MakeVec1(v1), MakeVec1(v2))
}

function {:inline} MakeVec3<T>(v1: T, v2: T, v3: T): Vec T {
    ConcatVec(MakeVec2(v1, v2), MakeVec1(v3))
}

function {:inline} MakeVec4<T>(v1: T, v2: T, v3: T, v4: T): Vec T {
    ConcatVec(MakeVec3(v1, v2, v3), MakeVec1(v4))
}

function {:inline} ExtendVec<T>(v: Vec T, elem: T): Vec T {
    ConcatVec(v, MakeVec1(elem))
}

function {:builtin "seq.nth"} ReadVec<T>(v: Vec T, i: int): T;

function {:builtin "seq.len"} LenVec<T>(v: Vec T): int;

function {:inline} IsEmptyVec<T>(v: Vec T): bool {
    LenVec(v) == 0
}

function {:inline} RemoveVec<T>(v: Vec T): Vec T {
    SliceVec(v, 0, LenVec(v) - 1)
}

function {:inline} RemoveAtVec<T>(v: Vec T, i: int): Vec T {
    ConcatVec(SliceVec(v, 0, i), SliceVec(v, i + 1, LenVec(v)))
}

function {:builtin "seq.++"} ConcatVec<T>(v1: Vec T, v2: Vec T): Vec T;
/*private*/ function {:builtin "seq.++"} ConcatVec3<T>(v1: Vec T, v2: Vec T, v3: Vec T): Vec T;
/*private*/ function {:builtin "seq.++"} ConcatVec4<T>(v1: Vec T, v2: Vec T, v3: Vec T, v4: Vec T): Vec T;
/*private*/ function {:builtin "seq.++"} ConcatVec5<T>(v1: Vec T, v2: Vec T, v3: Vec T, v4: Vec T, v5: Vec T): Vec T;

function {:inline} ReverseVec<T>(v: Vec T): Vec T;
axiom {:ctor "Vec"} (forall<T> v: Vec T:: {ReverseVec(v)}
        (var r := ReverseVec(v);
         LenVec(r) == LenVec(v) &&
         (forall i: int:: {ReadVec(r, i)} i >= 0 && i < LenVec(r) ==> ReadVec(r, i) == ReadVec(v, LenVec(v) - i - 1))));

function {:inline} SliceVec<T>(v: Vec T, i: int, j: int): Vec T {
    ExtractVec(v, i, j - i)
}
/*private*/ function {:builtin "seq.extract"} ExtractVec<T>(v: Vec T, start: int, len: int): Vec T;

function {:inline} UpdateVec<T>(v: Vec T, i: int, elem: T): Vec T {
    ConcatVec3(SliceVec(v, 0, i), MakeVec1(elem), SliceVec(v, i + 1, LenVec(v)))
}

function {:inline} SwapVec<T>(v: Vec T, i: int, j: int): Vec T {
    UpdateVec(UpdateVec(v, j, ReadVec(v, i)), i, ReadVec(v, j))
}

function {:inline} ContainsVec<T>(v: Vec T, e: T): bool {
    ContainsSubVec(v, MakeVec1(e))
}
/*private*/ function {:builtin "seq.contains"} ContainsSubVec<T>(v: Vec T, sub: Vec T): bool;

function {:inline} IndexOfVec<T>(v: Vec T, e: T): int {
    IndexOfSubVec(v, MakeVec1(e))
}
/*private*/ function {:builtin "seq.indexof"} IndexOfSubVec<T>(v: Vec T, sub: Vec T): int;

function {:inline} InRangeVec<T>(v: Vec T, i: int): bool {
    i >= 0 && i < LenVec(v)
}

// Copyright (c) The Diem Core Contributors
// SPDX-License-Identifier: Apache-2.0

// Boogie model for multisets, based on Boogie arrays. This theory assumes extensional equality for element types.

type {:datatype} Multiset _;
function {:constructor} Multiset<T>(v: [T]int, l: int): Multiset T;

function {:builtin "MapConst"} MapConstMultiset<T>(l: int): [T]int;

function {:inline} EmptyMultiset<T>(): Multiset T {
    Multiset(MapConstMultiset(0), 0)
}

function {:inline} LenMultiset<T>(s: Multiset T): int {
    l#Multiset(s)
}

function {:inline} ExtendMultiset<T>(s: Multiset T, v: T): Multiset T {
    (var len := l#Multiset(s);
    (var cnt := v#Multiset(s)[v];
    Multiset(v#Multiset(s)[v := (cnt + 1)], len + 1)))
}

// This function returns (s1 - s2). This function assumes that s2 is a subset of s1.
function {:inline} SubtractMultiset<T>(s1: Multiset T, s2: Multiset T): Multiset T {
    (var len1 := l#Multiset(s1);
    (var len2 := l#Multiset(s2);
    Multiset((lambda v:T :: v#Multiset(s1)[v]-v#Multiset(s2)[v]), len1-len2)))
}

function {:inline} IsEmptyMultiset<T>(s: Multiset T): bool {
    (l#Multiset(s) == 0) &&
    (forall v: T :: v#Multiset(s)[v] == 0)
}

function {:inline} IsSubsetMultiset<T>(s1: Multiset T, s2: Multiset T): bool {
    (l#Multiset(s1) <= l#Multiset(s2)) &&
    (forall v: T :: v#Multiset(s1)[v] <= v#Multiset(s2)[v])
}

function {:inline} ContainsMultiset<T>(s: Multiset T, v: T): bool {
    v#Multiset(s)[v] > 0
}



// ============================================================================================
// Primitive Types

const $MAX_U8: int;
axiom $MAX_U8 == 255;
const $MAX_U64: int;
axiom $MAX_U64 == 18446744073709551615;
const $MAX_U128: int;
axiom $MAX_U128 == 340282366920938463463374607431768211455;

type {:datatype} $Range;
function {:constructor} $Range(lb: int, ub: int): $Range;

function {:inline} $IsValid'bool'(v: bool): bool {
  true
}

function $IsValid'u8'(v: int): bool {
  v >= 0 && v <= $MAX_U8
}

function $IsValid'u64'(v: int): bool {
  v >= 0 && v <= $MAX_U64
}

function $IsValid'u128'(v: int): bool {
  v >= 0 && v <= $MAX_U128
}

function $IsValid'num'(v: int): bool {
  true
}

function $IsValid'address'(v: int): bool {
  // TODO: restrict max to representable addresses?
  v >= 0
}

function {:inline} $IsValidRange(r: $Range): bool {
   $IsValid'u64'(lb#$Range(r)) &&  $IsValid'u64'(ub#$Range(r))
}

// Intentionally not inlined so it serves as a trigger in quantifiers.
function $InRange(r: $Range, i: int): bool {
   lb#$Range(r) <= i && i < ub#$Range(r)
}


function {:inline} $IsEqual'u8'(x: int, y: int): bool {
    x == y
}

function {:inline} $IsEqual'u64'(x: int, y: int): bool {
    x == y
}

function {:inline} $IsEqual'u128'(x: int, y: int): bool {
    x == y
}

function {:inline} $IsEqual'num'(x: int, y: int): bool {
    x == y
}

function {:inline} $IsEqual'address'(x: int, y: int): bool {
    x == y
}

function {:inline} $IsEqual'bool'(x: bool, y: bool): bool {
    x == y
}

// ============================================================================================
// Memory

type {:datatype} $Location;

// A global resource location within the statically known resource type's memory,
// where `a` is an address.
function {:constructor} $Global(a: int): $Location;

// A local location. `i` is the unique index of the local.
function {:constructor} $Local(i: int): $Location;

// The location of a reference outside of the verification scope, for example, a `&mut` parameter
// of the function being verified. References with these locations don't need to be written back
// when mutation ends.
function {:constructor} $Param(i: int): $Location;


// A mutable reference which also carries its current value. Since mutable references
// are single threaded in Move, we can keep them together and treat them as a value
// during mutation until the point they are stored back to their original location.
type {:datatype} $Mutation _;
function {:constructor} $Mutation<T>(l: $Location, p: Vec int, v: T): $Mutation T;

// Representation of memory for a given type.
type {:datatype} $Memory _;
function {:constructor} $Memory<T>(domain: [int]bool, contents: [int]T): $Memory T;

function {:builtin "MapConst"} $ConstMemoryDomain(v: bool): [int]bool;
function {:builtin "MapConst"} $ConstMemoryContent<T>(v: T): [int]T;
axiom $ConstMemoryDomain(false) == (lambda i: int :: false);
axiom $ConstMemoryDomain(true) == (lambda i: int :: true);


// Dereferences a mutation.
function {:inline} $Dereference<T>(ref: $Mutation T): T {
    v#$Mutation(ref)
}

// Update the value of a mutation.
function {:inline} $UpdateMutation<T>(m: $Mutation T, v: T): $Mutation T {
    $Mutation(l#$Mutation(m), p#$Mutation(m), v)
}

function {:inline} $ChildMutation<T1, T2>(m: $Mutation T1, offset: int, v: T2): $Mutation T2 {
    $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), offset), v)
}

// Return true of the mutation is a parent of a child which was derived with the given edge offset. This
// is used to implement write-back choices.
function {:inline} $IsParentMutation<T1, T2>(parent: $Mutation T1, edge: int, child: $Mutation T2 ): bool {
    l#$Mutation(parent) == l#$Mutation(child) &&
    (var pp := p#$Mutation(parent);
    (var cp := p#$Mutation(child);
    (var pl := LenVec(pp);
    (var cl := LenVec(cp);
     cl == pl + 1 &&
     (forall i: int:: i >= 0 && i < pl ==> ReadVec(pp, i) ==  ReadVec(cp, i)) &&
     $EdgeMatches(ReadVec(cp, pl), edge)
    ))))
}

// Return true of the mutation is a parent of a child, for hyper edge.
function {:inline} $IsParentMutationHyper<T1, T2>(parent: $Mutation T1, hyper_edge: Vec int, child: $Mutation T2 ): bool {
    l#$Mutation(parent) == l#$Mutation(child) &&
    (var pp := p#$Mutation(parent);
    (var cp := p#$Mutation(child);
    (var pl := LenVec(pp);
    (var cl := LenVec(cp);
    (var el := LenVec(hyper_edge);
     cl == pl + el &&
     (forall i: int:: i >= 0 && i < pl ==> ReadVec(pp, i) == ReadVec(cp, i)) &&
     (forall i: int:: i >= 0 && i < el ==> $EdgeMatches(ReadVec(cp, pl + i), ReadVec(hyper_edge, i)))
    )))))
}

function {:inline} $EdgeMatches(edge: int, edge_pattern: int): bool {
    edge_pattern == -1 // wildcard
    || edge_pattern == edge
}



function {:inline} $SameLocation<T1, T2>(m1: $Mutation T1, m2: $Mutation T2): bool {
    l#$Mutation(m1) == l#$Mutation(m2)
}

function {:inline} $HasGlobalLocation<T>(m: $Mutation T): bool {
    is#$Global(l#$Mutation(m))
}

function {:inline} $HasLocalLocation<T>(m: $Mutation T, idx: int): bool {
    l#$Mutation(m) == $Local(idx)
}

function {:inline} $GlobalLocationAddress<T>(m: $Mutation T): int {
    a#$Global(l#$Mutation(m))
}



// Tests whether resource exists.
function {:inline} $ResourceExists<T>(m: $Memory T, addr: int): bool {
    domain#$Memory(m)[addr]
}

// Obtains Value of given resource.
function {:inline} $ResourceValue<T>(m: $Memory T, addr: int): T {
    contents#$Memory(m)[addr]
}

// Update resource.
function {:inline} $ResourceUpdate<T>(m: $Memory T, a: int, v: T): $Memory T {
    $Memory(domain#$Memory(m)[a := true], contents#$Memory(m)[a := v])
}

// Remove resource.
function {:inline} $ResourceRemove<T>(m: $Memory T, a: int): $Memory T {
    $Memory(domain#$Memory(m)[a := false], contents#$Memory(m))
}

// Copies resource from memory s to m.
function {:inline} $ResourceCopy<T>(m: $Memory T, s: $Memory T, a: int): $Memory T {
    $Memory(domain#$Memory(m)[a := domain#$Memory(s)[a]],
            contents#$Memory(m)[a := contents#$Memory(s)[a]])
}



// ============================================================================================
// Abort Handling

var $abort_flag: bool;
var $abort_code: int;

function {:inline} $process_abort_code(code: int): int {
    code
}

const $EXEC_FAILURE_CODE: int;
axiom $EXEC_FAILURE_CODE == -1;

// TODO(wrwg): currently we map aborts of native functions like those for vectors also to
//   execution failure. This may need to be aligned with what the runtime actually does.

procedure {:inline 1} $ExecFailureAbort() {
    $abort_flag := true;
    $abort_code := $EXEC_FAILURE_CODE;
}

procedure {:inline 1} $InitVerification() {
    // Set abort_flag to false, and havoc abort_code
    $abort_flag := false;
    havoc $abort_code;
    // Initialize event store
    call $InitEventStore();
}

// ============================================================================================
// Instructions


procedure {:inline 1} $CastU8(src: int) returns (dst: int)
{
    if (src > $MAX_U8) {
        call $ExecFailureAbort();
        return;
    }
    dst := src;
}

procedure {:inline 1} $CastU64(src: int) returns (dst: int)
{
    if (src > $MAX_U64) {
        call $ExecFailureAbort();
        return;
    }
    dst := src;
}

procedure {:inline 1} $CastU128(src: int) returns (dst: int)
{
    if (src > $MAX_U128) {
        call $ExecFailureAbort();
        return;
    }
    dst := src;
}

procedure {:inline 1} $AddU8(src1: int, src2: int) returns (dst: int)
{
    if (src1 + src2 > $MAX_U8) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 + src2;
}

procedure {:inline 1} $AddU64(src1: int, src2: int) returns (dst: int)
{
    if (src1 + src2 > $MAX_U64) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 + src2;
}

procedure {:inline 1} $AddU64_unchecked(src1: int, src2: int) returns (dst: int)
{
    dst := src1 + src2;
}

procedure {:inline 1} $AddU128(src1: int, src2: int) returns (dst: int)
{
    if (src1 + src2 > $MAX_U128) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 + src2;
}

procedure {:inline 1} $AddU128_unchecked(src1: int, src2: int) returns (dst: int)
{
    dst := src1 + src2;
}

procedure {:inline 1} $Sub(src1: int, src2: int) returns (dst: int)
{
    if (src1 < src2) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 - src2;
}

// Note that *not* inlining the shl/shr functions avoids timeouts. It appears that Z3 can reason
// better about this if it is an axiomatized function.
function $shl(src1: int, p: int): int {
    if p == 8 then src1 * 256
    else if p == 16 then src1 * 65536
    else if p == 32 then src1 * 4294967296
    else if p == 64 then src1 * 18446744073709551616
    // Value is undefined, otherwise.
    else -1
}

function $shr(src1: int, p: int): int {
    if p == 8 then src1 div 256
    else if p == 16 then src1 div 65536
    else if p == 32 then src1 div 4294967296
    else if p == 64 then src1 div 18446744073709551616
    // Value is undefined, otherwise.
    else -1
}

// TODO: fix this and $Shr to drop bits on overflow. Requires $Shl8, $Shl64, and $Shl128
procedure {:inline 1} $Shl(src1: int, src2: int) returns (dst: int)
{
    var res: int;
    res := $shl(src1, src2);
    assert res >= 0;   // restriction: shift argument must be 8, 16, 32, or 64
    dst := res;
}

procedure {:inline 1} $Shr(src1: int, src2: int) returns (dst: int)
{
    var res: int;
    res := $shr(src1, src2);
    assert res >= 0;   // restriction: shift argument must be 8, 16, 32, or 64
    dst := res;
}

procedure {:inline 1} $MulU8(src1: int, src2: int) returns (dst: int)
{
    if (src1 * src2 > $MAX_U8) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 * src2;
}

procedure {:inline 1} $MulU64(src1: int, src2: int) returns (dst: int)
{
    if (src1 * src2 > $MAX_U64) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 * src2;
}

procedure {:inline 1} $MulU128(src1: int, src2: int) returns (dst: int)
{
    if (src1 * src2 > $MAX_U128) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 * src2;
}

procedure {:inline 1} $Div(src1: int, src2: int) returns (dst: int)
{
    if (src2 == 0) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 div src2;
}

procedure {:inline 1} $Mod(src1: int, src2: int) returns (dst: int)
{
    if (src2 == 0) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 mod src2;
}

procedure {:inline 1} $ArithBinaryUnimplemented(src1: int, src2: int) returns (dst: int);

procedure {:inline 1} $Lt(src1: int, src2: int) returns (dst: bool)
{
    dst := src1 < src2;
}

procedure {:inline 1} $Gt(src1: int, src2: int) returns (dst: bool)
{
    dst := src1 > src2;
}

procedure {:inline 1} $Le(src1: int, src2: int) returns (dst: bool)
{
    dst := src1 <= src2;
}

procedure {:inline 1} $Ge(src1: int, src2: int) returns (dst: bool)
{
    dst := src1 >= src2;
}

procedure {:inline 1} $And(src1: bool, src2: bool) returns (dst: bool)
{
    dst := src1 && src2;
}

procedure {:inline 1} $Or(src1: bool, src2: bool) returns (dst: bool)
{
    dst := src1 || src2;
}

procedure {:inline 1} $Not(src: bool) returns (dst: bool)
{
    dst := !src;
}

// Pack and Unpack are auto-generated for each type T


// ==================================================================================
// Native Vector

function {:inline} $SliceVecByRange<T>(v: Vec T, r: $Range): Vec T {
    SliceVec(v, lb#$Range(r), ub#$Range(r))
}

// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `#0`


function {:inline} $IsEqual'vec'#0''(v1: Vec (#0), v2: Vec (#0)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'#0''(v: Vec (#0)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'#0'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'#0'(v: Vec (#0), e: #0): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'#0'(ReadVec(v, i), e))
}

function $IndexOfVec'#0'(v: Vec (#0), e: #0): int;
axiom (forall v: Vec (#0), e: #0:: {$IndexOfVec'#0'(v, e)}
    (var i := $IndexOfVec'#0'(v, e);
     if (!$ContainsVec'#0'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'#0'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'#0'(ReadVec(v, j), e))));


function {:inline} $RangeVec'#0'(v: Vec (#0)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'#0'(): Vec (#0) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'#0'() returns (v: Vec (#0)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'#0'(): Vec (#0) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'#0'(v: Vec (#0)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'#0'(m: $Mutation (Vec (#0)), val: #0) returns (m': $Mutation (Vec (#0))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'#0'(v: Vec (#0), val: #0): Vec (#0) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'#0'(m: $Mutation (Vec (#0))) returns (e: #0, m': $Mutation (Vec (#0))) {
    var v: Vec (#0);
    var len: int;
    v := $Dereference(m);
    len := LenVec(v);
    if (len == 0) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, len-1);
    m' := $UpdateMutation(m, RemoveVec(v));
}

procedure {:inline 1} $1_Vector_append'#0'(m: $Mutation (Vec (#0)), other: Vec (#0)) returns (m': $Mutation (Vec (#0))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'#0'(m: $Mutation (Vec (#0))) returns (m': $Mutation (Vec (#0))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'#0'(v: Vec (#0)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'#0'(v: Vec (#0)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'#0'(v: Vec (#0), i: int) returns (dst: #0) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'#0'(v: Vec (#0), i: int): #0 {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'#0'(m: $Mutation (Vec (#0)), index: int)
returns (dst: $Mutation (#0), m': $Mutation (Vec (#0)))
{
    var v: Vec (#0);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'#0'(v: Vec (#0), i: int): #0 {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'#0'(v: Vec (#0)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'#0'(m: $Mutation (Vec (#0)), i: int, j: int) returns (m': $Mutation (Vec (#0)))
{
    var v: Vec (#0);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'#0'(v: Vec (#0), i: int, j: int): Vec (#0) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'#0'(m: $Mutation (Vec (#0)), i: int) returns (e: #0, m': $Mutation (Vec (#0)))
{
    var v: Vec (#0);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'#0'(m: $Mutation (Vec (#0)), i: int) returns (e: #0, m': $Mutation (Vec (#0)))
{
    var len: int;
    var v: Vec (#0);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'#0'(v: Vec (#0), e: #0) returns (res: bool)  {
    res := $ContainsVec'#0'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'#0'(v: Vec (#0), e: #0) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'#0'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `u64`


function {:inline} $IsEqual'vec'u64''(v1: Vec (int), v2: Vec (int)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'u64''(v: Vec (int)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'u64'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'u64'(v: Vec (int), e: int): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'u64'(ReadVec(v, i), e))
}

function $IndexOfVec'u64'(v: Vec (int), e: int): int;
axiom (forall v: Vec (int), e: int:: {$IndexOfVec'u64'(v, e)}
    (var i := $IndexOfVec'u64'(v, e);
     if (!$ContainsVec'u64'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'u64'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'u64'(ReadVec(v, j), e))));


function {:inline} $RangeVec'u64'(v: Vec (int)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'u64'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'u64'() returns (v: Vec (int)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'u64'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'u64'(v: Vec (int)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'u64'(m: $Mutation (Vec (int)), val: int) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'u64'(v: Vec (int), val: int): Vec (int) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'u64'(m: $Mutation (Vec (int))) returns (e: int, m': $Mutation (Vec (int))) {
    var v: Vec (int);
    var len: int;
    v := $Dereference(m);
    len := LenVec(v);
    if (len == 0) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, len-1);
    m' := $UpdateMutation(m, RemoveVec(v));
}

procedure {:inline 1} $1_Vector_append'u64'(m: $Mutation (Vec (int)), other: Vec (int)) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'u64'(m: $Mutation (Vec (int))) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'u64'(v: Vec (int)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'u64'(v: Vec (int)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'u64'(v: Vec (int), i: int) returns (dst: int) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'u64'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'u64'(m: $Mutation (Vec (int)), index: int)
returns (dst: $Mutation (int), m': $Mutation (Vec (int)))
{
    var v: Vec (int);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'u64'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'u64'(v: Vec (int)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'u64'(m: $Mutation (Vec (int)), i: int, j: int) returns (m': $Mutation (Vec (int)))
{
    var v: Vec (int);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'u64'(v: Vec (int), i: int, j: int): Vec (int) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'u64'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
{
    var v: Vec (int);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'u64'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
{
    var len: int;
    var v: Vec (int);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'u64'(v: Vec (int), e: int) returns (res: bool)  {
    res := $ContainsVec'u64'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'u64'(v: Vec (int), e: int) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'u64'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `u8`


function {:inline} $IsEqual'vec'u8''(v1: Vec (int), v2: Vec (int)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'u8''(v: Vec (int)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'u8'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'u8'(v: Vec (int), e: int): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'u8'(ReadVec(v, i), e))
}

function $IndexOfVec'u8'(v: Vec (int), e: int): int;
axiom (forall v: Vec (int), e: int:: {$IndexOfVec'u8'(v, e)}
    (var i := $IndexOfVec'u8'(v, e);
     if (!$ContainsVec'u8'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'u8'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'u8'(ReadVec(v, j), e))));


function {:inline} $RangeVec'u8'(v: Vec (int)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'u8'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'u8'() returns (v: Vec (int)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'u8'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'u8'(v: Vec (int)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'u8'(m: $Mutation (Vec (int)), val: int) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'u8'(v: Vec (int), val: int): Vec (int) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'u8'(m: $Mutation (Vec (int))) returns (e: int, m': $Mutation (Vec (int))) {
    var v: Vec (int);
    var len: int;
    v := $Dereference(m);
    len := LenVec(v);
    if (len == 0) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, len-1);
    m' := $UpdateMutation(m, RemoveVec(v));
}

procedure {:inline 1} $1_Vector_append'u8'(m: $Mutation (Vec (int)), other: Vec (int)) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'u8'(m: $Mutation (Vec (int))) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'u8'(v: Vec (int)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'u8'(v: Vec (int)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'u8'(v: Vec (int), i: int) returns (dst: int) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'u8'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'u8'(m: $Mutation (Vec (int)), index: int)
returns (dst: $Mutation (int), m': $Mutation (Vec (int)))
{
    var v: Vec (int);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'u8'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'u8'(v: Vec (int)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'u8'(m: $Mutation (Vec (int)), i: int, j: int) returns (m': $Mutation (Vec (int)))
{
    var v: Vec (int);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'u8'(v: Vec (int), i: int, j: int): Vec (int) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'u8'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
{
    var v: Vec (int);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'u8'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
{
    var len: int;
    var v: Vec (int);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'u8'(v: Vec (int), e: int) returns (res: bool)  {
    res := $ContainsVec'u8'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'u8'(v: Vec (int), e: int) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'u8'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ==================================================================================
// Native Hash

// Hash is modeled as an otherwise uninterpreted injection.
// In truth, it is not an injection since the domain has greater cardinality
// (arbitrary length vectors) than the co-domain (vectors of length 32).  But it is
// common to assume in code there are no hash collisions in practice.  Fortunately,
// Boogie is not smart enough to recognized that there is an inconsistency.
// FIXME: If we were using a reliable extensional theory of arrays, and if we could use ==
// instead of $IsEqual, we might be able to avoid so many quantified formulas by
// using a sha2_inverse function in the ensures conditions of Hash_sha2_256 to
// assert that sha2/3 are injections without using global quantified axioms.


function $1_Hash_sha2(val: Vec int): Vec int;

// This says that Hash_sha2 is bijective.
axiom (forall v1,v2: Vec int :: {$1_Hash_sha2(v1), $1_Hash_sha2(v2)}
       $IsEqual'vec'u8''(v1, v2) <==> $IsEqual'vec'u8''($1_Hash_sha2(v1), $1_Hash_sha2(v2)));

procedure $1_Hash_sha2_256(val: Vec int) returns (res: Vec int);
ensures res == $1_Hash_sha2(val);     // returns Hash_sha2 Value
ensures $IsValid'vec'u8''(res);    // result is a legal vector of U8s.
ensures LenVec(res) == 32;               // result is 32 bytes.

// Spec version of Move native function.
function {:inline} $1_Hash_$sha2_256(val: Vec int): Vec int {
    $1_Hash_sha2(val)
}

// similarly for Hash_sha3
function $1_Hash_sha3(val: Vec int): Vec int;

axiom (forall v1,v2: Vec int :: {$1_Hash_sha3(v1), $1_Hash_sha3(v2)}
       $IsEqual'vec'u8''(v1, v2) <==> $IsEqual'vec'u8''($1_Hash_sha3(v1), $1_Hash_sha3(v2)));

procedure $1_Hash_sha3_256(val: Vec int) returns (res: Vec int);
ensures res == $1_Hash_sha3(val);     // returns Hash_sha3 Value
ensures $IsValid'vec'u8''(res);    // result is a legal vector of U8s.
ensures LenVec(res) == 32;               // result is 32 bytes.

// Spec version of Move native function.
function {:inline} $1_Hash_$sha3_256(val: Vec int): Vec int {
    $1_Hash_sha3(val)
}

// ==================================================================================
// Native diem_account

procedure {:inline 1} $1_DiemAccount_create_signer(
  addr: int
) returns (signer: int) {
    // A signer is currently identical to an address.
    signer := addr;
}

procedure {:inline 1} $1_DiemAccount_destroy_signer(
  signer: int
) {
  return;
}

// ==================================================================================
// Native Signer

procedure {:inline 1} $1_Signer_borrow_address(signer: int) returns (res: int) {
    res := signer;
}

// ==================================================================================
// Native signature

// Signature related functionality is handled via uninterpreted functions. This is sound
// currently because we verify every code path based on signature verification with
// an arbitrary interpretation.

function $1_Signature_$ed25519_validate_pubkey(public_key: Vec int): bool;
function $1_Signature_$ed25519_verify(signature: Vec int, public_key: Vec int, message: Vec int): bool;

// Needed because we do not have extensional equality:
axiom (forall k1, k2: Vec int ::
    {$1_Signature_$ed25519_validate_pubkey(k1), $1_Signature_$ed25519_validate_pubkey(k2)}
    $IsEqual'vec'u8''(k1, k2) ==> $1_Signature_$ed25519_validate_pubkey(k1) == $1_Signature_$ed25519_validate_pubkey(k2));
axiom (forall s1, s2, k1, k2, m1, m2: Vec int ::
    {$1_Signature_$ed25519_verify(s1, k1, m1), $1_Signature_$ed25519_verify(s2, k2, m2)}
    $IsEqual'vec'u8''(s1, s2) && $IsEqual'vec'u8''(k1, k2) && $IsEqual'vec'u8''(m1, m2)
    ==> $1_Signature_$ed25519_verify(s1, k1, m1) == $1_Signature_$ed25519_verify(s2, k2, m2));


procedure {:inline 1} $1_Signature_ed25519_validate_pubkey(public_key: Vec int) returns (res: bool) {
    res := $1_Signature_$ed25519_validate_pubkey(public_key);
}

procedure {:inline 1} $1_Signature_ed25519_verify(
        signature: Vec int, public_key: Vec int, message: Vec int) returns (res: bool) {
    res := $1_Signature_$ed25519_verify(signature, public_key, message);
}


// ==================================================================================
// Native BCS::serialize


// ==================================================================================
// Native Signer::spec_address_of

function {:inline} $1_Signer_spec_address_of(signer: int): int
{
    // A signer is currently identical to an address.
    signer
}

function {:inline} $1_Signer_$borrow_address(signer: int): int
{
    // A signer is currently identical to an address.
    signer
}

// ==================================================================================
// Native Event module



procedure {:inline 1} $InitEventStore() {
}



//==================================
// Begin Translation



// Given Types for Type Parameters

type #0;
function {:inline} $IsEqual'#0'(x1: #0, x2: #0): bool { x1 == x2 }
function {:inline} $IsValid'#0'(x: #0): bool { true }

// struct TestVector::T<u64> at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:442:5+55
type {:datatype} $42_TestVector_T'u64';
function {:constructor} $42_TestVector_T'u64'($v: Vec (int)): $42_TestVector_T'u64';
function {:inline} $Update'$42_TestVector_T'u64''_v(s: $42_TestVector_T'u64', x: Vec (int)): $42_TestVector_T'u64' {
    $42_TestVector_T'u64'(x)
}
function $IsValid'$42_TestVector_T'u64''(s: $42_TestVector_T'u64'): bool {
    $IsValid'vec'u64''($v#$42_TestVector_T'u64'(s))
}
function {:inline} $IsEqual'$42_TestVector_T'u64''(s1: $42_TestVector_T'u64', s2: $42_TestVector_T'u64'): bool {
    s1 == s2
}

// struct TestVector::T<#0> at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:442:5+55
type {:datatype} $42_TestVector_T'#0';
function {:constructor} $42_TestVector_T'#0'($v: Vec (#0)): $42_TestVector_T'#0';
function {:inline} $Update'$42_TestVector_T'#0''_v(s: $42_TestVector_T'#0', x: Vec (#0)): $42_TestVector_T'#0' {
    $42_TestVector_T'#0'(x)
}
function $IsValid'$42_TestVector_T'#0''(s: $42_TestVector_T'#0'): bool {
    $IsValid'vec'#0''($v#$42_TestVector_T'#0'(s))
}
function {:inline} $IsEqual'$42_TestVector_T'#0''(s1: $42_TestVector_T'#0', s2: $42_TestVector_T'#0'): bool {
    s1 == s2
}

// fun TestVector::none<u64> [baseline] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:446:5+64
procedure {:inline 1} $42_TestVector_none'u64'() returns ($ret0: $42_TestVector_T'u64')
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: int;
    var $t2: $42_TestVector_T'u64';
    var $temp_0'$42_TestVector_T'u64'': $42_TestVector_T'u64';

    // bytecode translation starts here
    // $t0 := Vector::empty<#0>() on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:447:18+18
    assume {:print "$at(2,12295,12313)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,12295,12313)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,0):", $t1} $t1 == $t1;
        goto L2;
    }

    // $t2 := pack TestVector::T<#0>($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:447:9+28
    $t2 := $42_TestVector_T'u64'($t0);

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:447:9+28
    assume {:print "$track_return(1,0,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:448:5+1
    assume {:print "$at(2,12319,12320)"} true;
L1:

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:448:5+1
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:448:5+1
L2:

    // abort($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:448:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun TestVector::none [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:446:5+64
procedure {:timeLimit 40} $42_TestVector_none$verify() returns ($ret0: $42_TestVector_T'#0')
{
    // declare local variables
    var $t0: Vec (#0);
    var $t1: int;
    var $t2: $42_TestVector_T'#0';
    var $temp_0'$42_TestVector_T'#0'': $42_TestVector_T'#0';

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<#0>() on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:447:18+18
    assume {:print "$at(2,12295,12313)"} true;
    call $t0 := $1_Vector_empty'#0'();
    if ($abort_flag) {
        assume {:print "$at(2,12295,12313)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,0):", $t1} $t1 == $t1;
        goto L2;
    }

    // $t2 := pack TestVector::T<#0>($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:447:9+28
    $t2 := $42_TestVector_T'#0'($t0);

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:447:9+28
    assume {:print "$track_return(1,0,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:448:5+1
    assume {:print "$at(2,12319,12320)"} true;
L1:

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:448:5+1
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:448:5+1
L2:

    // abort($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:448:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun TestVector::option_type [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:464:5+150
procedure {:timeLimit 40} $42_TestVector_option_type$verify() returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t0: $42_TestVector_T'u64';
    var $t1: $42_TestVector_T'u64';
    var $t2: $42_TestVector_T'u64';
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestVector_T'u64';
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $temp_0'$42_TestVector_T'u64'': $42_TestVector_T'u64';
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t2 := TestVector::none<u64>() on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:465:17+11
    assume {:print "$at(2,12700,12711)"} true;
    call $t2 := $42_TestVector_none'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,12700,12711)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[n]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:465:13+1
    assume {:print "$track_local(1,1,0):", $t2} $t2 == $t2;

    // $t4 := 42 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:466:27+2
    assume {:print "$at(2,12739,12741)"} true;
    $t4 := 42;
    assume $IsValid'u64'($t4);

    // $t5 := TestVector::some<u64>($t4) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:466:17+13
    call $t5 := $42_TestVector_some'u64'($t4);
    if ($abort_flag) {
        assume {:print "$at(2,12729,12742)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[s]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:466:13+1
    assume {:print "$track_local(1,1,1):", $t5} $t5 == $t5;

    // $t6 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:467:28+1
    assume {:print "$at(2,12771,12772)"} true;
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // $t7 := TestVector::unwrap_or<u64>($t2, $t6) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:467:10+20
    call $t7 := $42_TestVector_unwrap_or'u64'($t2, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,12753,12773)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t8 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:467:50+1
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := TestVector::unwrap_or<u64>($t5, $t8) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:467:32+20
    call $t9 := $42_TestVector_unwrap_or'u64'($t5, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,12775,12795)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:467:9+44
    assume {:print "$track_return(1,1,0):", $t7} $t7 == $t7;

    // trace_return[1]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:467:9+44
    assume {:print "$track_return(1,1,1):", $t9} $t9 == $t9;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:468:5+1
    assume {:print "$at(2,12801,12802)"} true;
L1:

    // assert Eq<u64>($t7, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:470:9+22
    assume {:print "$at(2,12834,12856)"} true;
    assert {:msg "assert_failed(2,12834,12856): post-condition does not hold"}
      $IsEqual'u64'($t7, 0);

    // assert Eq<u64>($t9, 42) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:471:9+23
    assume {:print "$at(2,12865,12888)"} true;
    assert {:msg "assert_failed(2,12865,12888): post-condition does not hold"}
      $IsEqual'u64'($t9, 42);

    // return ($t7, $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:471:9+23
    $ret0 := $t7;
    $ret1 := $t9;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:468:5+1
    assume {:print "$at(2,12801,12802)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:468:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestVector::some<u64> [baseline] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:450:5+125
procedure {:inline 1} $42_TestVector_some'u64'(_$t0: int) returns ($ret0: $42_TestVector_T'u64')
{
    // declare local variables
    var $t1: Vec (int);
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: Vec (int);
    var $t5: $42_TestVector_T'u64';
    var $t0: int;
    var $temp_0'$42_TestVector_T'u64'': $42_TestVector_T'u64';
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t3));

    // bytecode translation starts here
    // trace_local[e]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:450:5+1
    assume {:print "$at(2,12326,12327)"} true;
    assume {:print "$track_local(1,2,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<#0>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:451:17+18
    assume {:print "$at(2,12368,12386)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,12368,12386)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,2):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[v]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:451:13+1
    assume {:print "$track_local(1,2,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:452:27+6
    assume {:print "$at(2,12414,12420)"} true;
    $t3 := $Mutation($Local(1), EmptyVec(), $t1);

    // Vector::push_back<#0>($t3, $t0) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:452:9+28
    call $t3 := $1_Vector_push_back'u64'($t3, $t0);
    if ($abort_flag) {
        assume {:print "$at(2,12396,12424)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,2):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:452:9+28
    $t1 := $Dereference($t3);

    // $t4 := move($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:453:18+1
    assume {:print "$at(2,12443,12444)"} true;
    $t4 := $t1;

    // $t5 := pack TestVector::T<#0>($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:453:9+11
    $t5 := $42_TestVector_T'u64'($t4);

    // trace_return[0]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:453:9+11
    assume {:print "$track_return(1,2,0):", $t5} $t5 == $t5;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:454:5+1
    assume {:print "$at(2,12450,12451)"} true;
L1:

    // return $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:454:5+1
    $ret0 := $t5;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:454:5+1
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:454:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::some [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:450:5+125
procedure {:timeLimit 40} $42_TestVector_some$verify(_$t0: #0) returns ($ret0: $42_TestVector_T'#0')
{
    // declare local variables
    var $t1: Vec (#0);
    var $t2: int;
    var $t3: $Mutation (Vec (#0));
    var $t4: Vec (#0);
    var $t5: $42_TestVector_T'#0';
    var $t0: #0;
    var $temp_0'#0': #0;
    var $temp_0'$42_TestVector_T'#0'': $42_TestVector_T'#0';
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t3));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:450:5+125
    assume {:print "$at(2,12326,12451)"} true;
    assume $IsValid'#0'($t0);

    // trace_local[e]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:450:5+1
    assume {:print "$track_local(1,2,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<#0>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:451:17+18
    assume {:print "$at(2,12368,12386)"} true;
    call $t1 := $1_Vector_empty'#0'();
    if ($abort_flag) {
        assume {:print "$at(2,12368,12386)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,2):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[v]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:451:13+1
    assume {:print "$track_local(1,2,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:452:27+6
    assume {:print "$at(2,12414,12420)"} true;
    $t3 := $Mutation($Local(1), EmptyVec(), $t1);

    // Vector::push_back<#0>($t3, $t0) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:452:9+28
    call $t3 := $1_Vector_push_back'#0'($t3, $t0);
    if ($abort_flag) {
        assume {:print "$at(2,12396,12424)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,2):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:452:9+28
    $t1 := $Dereference($t3);

    // $t4 := move($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:453:18+1
    assume {:print "$at(2,12443,12444)"} true;
    $t4 := $t1;

    // $t5 := pack TestVector::T<#0>($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:453:9+11
    $t5 := $42_TestVector_T'#0'($t4);

    // trace_return[0]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:453:9+11
    assume {:print "$track_return(1,2,0):", $t5} $t5 == $t5;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:454:5+1
    assume {:print "$at(2,12450,12451)"} true;
L1:

    // return $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:454:5+1
    $ret0 := $t5;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:454:5+1
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:454:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_borrow1 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:202:5+143
procedure {:timeLimit 40} $42_TestVector_test_borrow1$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: int;
    var $t2: $Mutation (Vec (int));
    var $t3: int;
    var $t4: Vec (int);
    var $t5: int;
    var $t6: int;
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t2));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:204:17+20
    assume {:print "$at(2,5634,5654)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,5634,5654)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,3):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:204:13+1
    assume {:print "$track_local(1,3,0):", $t0} $t0 == $t0;

    // $t2 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:205:27+6
    assume {:print "$at(2,5682,5688)"} true;
    $t2 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t3 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:205:35+1
    $t3 := 7;
    assume $IsValid'u64'($t3);

    // Vector::push_back<u64>($t2, $t3) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:205:9+28
    call $t2 := $1_Vector_push_back'u64'($t2, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,5664,5692)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,3):", $t1} $t1 == $t1;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:205:9+28
    $t0 := $Dereference($t2);

    // $t4 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:206:25+2
    assume {:print "$at(2,5718,5720)"} true;
    $t4 := $t0;

    // $t5 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:206:29+1
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := Vector::borrow<u64>($t4, $t5) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:206:10+21
    call $t6 := $1_Vector_borrow'u64'($t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,5703,5724)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,3):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_return[0]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:206:9+22
    assume {:print "$track_return(1,3,0):", $t6} $t6 == $t6;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:207:5+1
    assume {:print "$at(2,5729,5730)"} true;
L1:

    // assert Eq<u64>($t6, 7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:209:9+20
    assume {:print "$at(2,5763,5783)"} true;
    assert {:msg "assert_failed(2,5763,5783): post-condition does not hold"}
      $IsEqual'u64'($t6, 7);

    // return $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:209:9+20
    $ret0 := $t6;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:207:5+1
    assume {:print "$at(2,5729,5730)"} true;
L2:

    // abort($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:207:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun TestVector::test_borrow2 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:213:5+143
procedure {:timeLimit 40} $42_TestVector_test_borrow2$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: int;
    var $t2: $Mutation (Vec (int));
    var $t3: int;
    var $t4: Vec (int);
    var $t5: int;
    var $t6: int;
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t2));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:215:17+20
    assume {:print "$at(2,5867,5887)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,5867,5887)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,4):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:215:13+1
    assume {:print "$track_local(1,4,0):", $t0} $t0 == $t0;

    // $t2 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:216:27+6
    assume {:print "$at(2,5915,5921)"} true;
    $t2 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t3 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:216:35+1
    $t3 := 0;
    assume $IsValid'u64'($t3);

    // Vector::push_back<u64>($t2, $t3) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:216:9+28
    call $t2 := $1_Vector_push_back'u64'($t2, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,5897,5925)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,4):", $t1} $t1 == $t1;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:216:9+28
    $t0 := $Dereference($t2);

    // $t4 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:217:25+2
    assume {:print "$at(2,5951,5953)"} true;
    $t4 := $t0;

    // $t5 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:217:29+1
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := Vector::borrow<u64>($t4, $t5) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:217:10+21
    call $t6 := $1_Vector_borrow'u64'($t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,5936,5957)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,4):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_return[0]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:217:9+22
    assume {:print "$track_return(1,4,0):", $t6} $t6 == $t6;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:218:5+1
    assume {:print "$at(2,5962,5963)"} true;
L1:

    // assert Neq<u64>($t6, 7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:220:9+20
    assume {:print "$at(2,5996,6016)"} true;
    assert {:msg "assert_failed(2,5996,6016): post-condition does not hold"}
      !$IsEqual'u64'($t6, 7);

    // return $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:220:9+20
    $ret0 := $t6;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:218:5+1
    assume {:print "$at(2,5962,5963)"} true;
L2:

    // abort($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:218:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun TestVector::test_borrow3 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:224:5+143
procedure {:timeLimit 40} $42_TestVector_test_borrow3$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: int;
    var $t2: $Mutation (Vec (int));
    var $t3: int;
    var $t4: Vec (int);
    var $t5: int;
    var $t6: int;
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t2));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:226:17+20
    assume {:print "$at(2,6143,6163)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,6143,6163)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,5):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:226:13+1
    assume {:print "$track_local(1,5,0):", $t0} $t0 == $t0;

    // $t2 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:227:27+6
    assume {:print "$at(2,6191,6197)"} true;
    $t2 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t3 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:227:35+1
    $t3 := 7;
    assume $IsValid'u64'($t3);

    // Vector::push_back<u64>($t2, $t3) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:227:9+28
    call $t2 := $1_Vector_push_back'u64'($t2, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,6173,6201)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,5):", $t1} $t1 == $t1;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:227:9+28
    $t0 := $Dereference($t2);

    // $t4 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:228:25+2
    assume {:print "$at(2,6227,6229)"} true;
    $t4 := $t0;

    // $t5 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:228:29+1
    $t5 := 1;
    assume $IsValid'u64'($t5);

    // $t6 := Vector::borrow<u64>($t4, $t5) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:228:10+21
    call $t6 := $1_Vector_borrow'u64'($t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,6212,6233)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,5):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_return[0]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:228:9+22
    assume {:print "$track_return(1,5,0):", $t6} $t6 == $t6;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:229:5+1
    assume {:print "$at(2,6238,6239)"} true;
L1:

    // assert Not(true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:231:9+15
    assume {:print "$at(2,6272,6287)"} true;
    assert {:msg "assert_failed(2,6272,6287): function does not abort under this condition"}
      !true;

    // return $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:231:9+15
    $ret0 := $t6;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:229:5+1
    assume {:print "$at(2,6238,6239)"} true;
L2:

    // assert true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:230:5+49
    assume {:print "$at(2,6244,6293)"} true;
    assert {:msg "assert_failed(2,6244,6293): abort not covered by any of the `aborts_if` clauses"}
      true;

    // abort($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:230:5+49
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun TestVector::test_borrow_mut [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:427:5+146
procedure {:timeLimit 40} $42_TestVector_test_borrow_mut$verify(_$t0: $Mutation (Vec (int))) returns ($ret0: int, $ret1: $Mutation (Vec (int)))
{
    // declare local variables
    var $t1: $Mutation (Vec (int));
    var $t2: int;
    var $t3: int;
    var $t4: Vec (int);
    var $t5: Vec (int);
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $Mutation (int);
    var $t0: $Mutation (Vec (int));
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t11));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:427:5+146
    assume {:print "$at(2,11821,11967)"} true;
    assume $IsValid'vec'u64''($Dereference($t0));

    // $t4 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:427:5+1
    $t4 := $Dereference($t0);

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:427:5+1
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,6,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // trace_local[tmp#$1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:429:32+6
    assume {:print "$at(2,11905,11911)"} true;
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,6,1):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t5 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:429:32+6
    $t5 := $Dereference($t0);

    // $t6 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:429:36+1
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // $t7 := Vector::borrow<u64>($t5, $t6) on_abort goto L2 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:429:18+20
    call $t7 := $1_Vector_borrow'u64'($t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,11891,11911)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,6):", $t8} $t8 == $t8;
        goto L2;
    }

    // trace_local[x]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:429:13+1
    assume {:print "$track_local(1,6,3):", $t7} $t7 == $t7;

    // $t9 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:430:37+1
    assume {:print "$at(2,11949,11950)"} true;
    $t9 := 7;
    assume $IsValid'u64'($t9);

    // $t10 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:430:32+1
    $t10 := 0;
    assume $IsValid'u64'($t10);

    // $t11 := Vector::borrow_mut<u64>($t0, $t10) on_abort goto L2 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:430:10+24
    call $t11,$t0 := $1_Vector_borrow_mut'u64'($t0, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,11922,11946)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,6):", $t8} $t8 == $t8;
        goto L2;
    }

    // write_ref($t11, $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:430:9+29
    $t11 := $UpdateMutation($t11, $t9);

    // write_back[Reference($t0)[]]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:430:9+29
    $t0 := $UpdateMutation($t0, UpdateVec($Dereference($t0), ReadVec(p#$Mutation($t11), LenVec(p#$Mutation($t0))), $Dereference($t11)));

    // trace_return[0]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:431:9+1
    assume {:print "$at(2,11960,11961)"} true;
    assume {:print "$track_return(1,6,0):", $t7} $t7 == $t7;

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:431:9+1
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,6,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:432:5+1
    assume {:print "$at(2,11966,11967)"} true;
L1:

    // assert Not(Eq<num>(Len<u64>($t4), 0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:434:9+22
    assume {:print "$at(2,12003,12025)"} true;
    assert {:msg "assert_failed(2,12003,12025): function does not abort under this condition"}
      !$IsEqual'num'(LenVec($t4), 0);

    // return $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:434:9+22
    $ret0 := $t7;
    $ret1 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:432:5+1
    assume {:print "$at(2,11966,11967)"} true;
L2:

    // assert Eq<num>(Len<u64>($t4), 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:433:5+59
    assume {:print "$at(2,11972,12031)"} true;
    assert {:msg "assert_failed(2,11972,12031): abort not covered by any of the `aborts_if` clauses"}
      $IsEqual'num'(LenVec($t4), 0);

    // abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:433:5+59
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun TestVector::test_contains [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:257:5+407
procedure {:timeLimit 40} $42_TestVector_test_contains$verify() returns ($ret0: Vec (int), $ret1: bool, $ret2: bool)
{
    // declare local variables
    var $t0: bool;
    var $t1: bool;
    var $t2: Vec (int);
    var $t3: int;
    var $t4: Vec (int);
    var $t5: int;
    var $t6: Vec (int);
    var $t7: int;
    var $t8: $Mutation (Vec (int));
    var $t9: int;
    var $t10: $Mutation (Vec (int));
    var $t11: int;
    var $t12: $Mutation (Vec (int));
    var $t13: int;
    var $t14: $Mutation (Vec (int));
    var $t15: int;
    var $t16: Vec (int);
    var $t17: int;
    var $t18: bool;
    var $t19: Vec (int);
    var $t20: int;
    var $t21: bool;
    var $t22: Vec (int);
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t12));
    assume IsEmptyVec(p#$Mutation($t14));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t2 := Vector::empty<u64>() on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:261:19+20
    assume {:print "$at(2,7206,7226)"} true;
    call $t2 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,7206,7226)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(1,7):", $t7} $t7 == $t7;
        goto L2;
    }

    // trace_local[ev1]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:261:13+3
    assume {:print "$track_local(1,7,2):", $t2} $t2 == $t2;

    // $t8 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:262:27+8
    assume {:print "$at(2,7254,7262)"} true;
    $t8 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t9 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:262:37+1
    $t9 := 1;
    assume $IsValid'u64'($t9);

    // Vector::push_back<u64>($t8, $t9) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:262:9+30
    call $t8 := $1_Vector_push_back'u64'($t8, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,7236,7266)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(1,7):", $t7} $t7 == $t7;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:262:9+30
    $t2 := $Dereference($t8);

    // $t10 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:263:27+8
    assume {:print "$at(2,7294,7302)"} true;
    $t10 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t11 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:263:37+1
    $t11 := 2;
    assume $IsValid'u64'($t11);

    // Vector::push_back<u64>($t10, $t11) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:263:9+30
    call $t10 := $1_Vector_push_back'u64'($t10, $t11);
    if ($abort_flag) {
        assume {:print "$at(2,7276,7306)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(1,7):", $t7} $t7 == $t7;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:263:9+30
    $t2 := $Dereference($t10);

    // $t12 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:264:27+8
    assume {:print "$at(2,7334,7342)"} true;
    $t12 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t13 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:264:37+1
    $t13 := 3;
    assume $IsValid'u64'($t13);

    // Vector::push_back<u64>($t12, $t13) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:264:9+30
    call $t12 := $1_Vector_push_back'u64'($t12, $t13);
    if ($abort_flag) {
        assume {:print "$at(2,7316,7346)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(1,7):", $t7} $t7 == $t7;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:264:9+30
    $t2 := $Dereference($t12);

    // $t14 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:265:27+8
    assume {:print "$at(2,7374,7382)"} true;
    $t14 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t15 := 5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:265:37+1
    $t15 := 5;
    assume $IsValid'u64'($t15);

    // Vector::push_back<u64>($t14, $t15) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:265:9+30
    call $t14 := $1_Vector_push_back'u64'($t14, $t15);
    if ($abort_flag) {
        assume {:print "$at(2,7356,7386)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(1,7):", $t7} $t7 == $t7;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:265:9+30
    $t2 := $Dereference($t14);

    // $t16 := copy($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:266:31+4
    assume {:print "$at(2,7418,7422)"} true;
    $t16 := $t2;

    // trace_local[tmp#$4]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:266:31+4
    assume {:print "$track_local(1,7,4):", $t16} $t16 == $t16;

    // $t17 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:266:38+1
    $t17 := 3;
    assume $IsValid'u64'($t17);

    // trace_local[tmp#$3]($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:266:38+1
    assume {:print "$track_local(1,7,3):", $t17} $t17 == $t17;

    // $t18 := Vector::contains<u64>($t16, $t17) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:266:14+26
    call $t18 := $1_Vector_contains'u64'($t16, $t17);
    if ($abort_flag) {
        assume {:print "$at(2,7401,7427)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(1,7):", $t7} $t7 == $t7;
        goto L2;
    }

    // trace_local[b1]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:266:9+2
    assume {:print "$track_local(1,7,0):", $t18} $t18 == $t18;

    // $t19 := copy($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:267:31+4
    assume {:print "$at(2,7459,7463)"} true;
    $t19 := $t2;

    // trace_local[tmp#$6]($t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:267:31+4
    assume {:print "$track_local(1,7,6):", $t19} $t19 == $t19;

    // $t20 := 4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:267:38+1
    $t20 := 4;
    assume $IsValid'u64'($t20);

    // trace_local[tmp#$5]($t20) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:267:38+1
    assume {:print "$track_local(1,7,5):", $t20} $t20 == $t20;

    // $t21 := Vector::contains<u64>($t19, $t20) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:267:14+26
    call $t21 := $1_Vector_contains'u64'($t19, $t20);
    if ($abort_flag) {
        assume {:print "$at(2,7442,7468)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(1,7):", $t7} $t7 == $t7;
        goto L2;
    }

    // trace_local[b2]($t21) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:267:9+2
    assume {:print "$track_local(1,7,1):", $t21} $t21 == $t21;

    // $t22 := move($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:268:10+3
    assume {:print "$at(2,7479,7482)"} true;
    $t22 := $t2;

    // trace_return[0]($t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:268:9+13
    assume {:print "$track_return(1,7,0):", $t22} $t22 == $t22;

    // trace_return[1]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:268:9+13
    assume {:print "$track_return(1,7,1):", $t18} $t18 == $t18;

    // trace_return[2]($t21) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:268:9+13
    assume {:print "$track_return(1,7,2):", $t21} $t21 == $t21;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:269:5+1
    assume {:print "$at(2,7496,7497)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:271:9+16
    assume {:print "$at(2,7531,7547)"} true;
    assert {:msg "assert_failed(2,7531,7547): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t18, true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:272:9+25
    assume {:print "$at(2,7556,7581)"} true;
    assert {:msg "assert_failed(2,7556,7581): post-condition does not hold"}
      $IsEqual'bool'($t18, true);

    // assert Eq<bool>($t21, false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:273:9+26
    assume {:print "$at(2,7590,7616)"} true;
    assert {:msg "assert_failed(2,7590,7616): post-condition does not hold"}
      $IsEqual'bool'($t21, false);

    // assert Eq<num>(Len<u64>($t22), 4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:274:9+27
    assume {:print "$at(2,7625,7652)"} true;
    assert {:msg "assert_failed(2,7625,7652): post-condition does not hold"}
      $IsEqual'num'(LenVec($t22), 4);

    // assert Eq<u64>(Index($t22, 0), 1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:275:9+25
    assume {:print "$at(2,7661,7686)"} true;
    assert {:msg "assert_failed(2,7661,7686): post-condition does not hold"}
      $IsEqual'u64'(ReadVec($t22, 0), 1);

    // assert Eq<u64>(Index($t22, 1), 2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:276:9+25
    assume {:print "$at(2,7810,7835)"} true;
    assert {:msg "assert_failed(2,7810,7835): post-condition does not hold"}
      $IsEqual'u64'(ReadVec($t22, 1), 2);

    // assert Eq<u64>(Index($t22, 2), 3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:277:9+25
    assume {:print "$at(2,7844,7869)"} true;
    assert {:msg "assert_failed(2,7844,7869): post-condition does not hold"}
      $IsEqual'u64'(ReadVec($t22, 2), 3);

    // assert Eq<u64>(Index($t22, 3), 5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:278:9+25
    assume {:print "$at(2,7878,7903)"} true;
    assert {:msg "assert_failed(2,7878,7903): post-condition does not hold"}
      $IsEqual'u64'(ReadVec($t22, 3), 5);

    // assert exists x: $t22: Eq<u64>(x, 1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:279:9+37
    assume {:print "$at(2,7912,7949)"} true;
    assert {:msg "assert_failed(2,7912,7949): post-condition does not hold"}
      (var $range_0 := $t22; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var x := ReadVec($range_0, $i_1);
    ($IsEqual'u64'(x, 1)))));

    // assert exists x: $t22: Eq<u64>(x, 2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:280:9+37
    assume {:print "$at(2,7958,7995)"} true;
    assert {:msg "assert_failed(2,7958,7995): post-condition does not hold"}
      (var $range_0 := $t22; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var x := ReadVec($range_0, $i_1);
    ($IsEqual'u64'(x, 2)))));

    // assert exists x: $t22: Eq<u64>(x, 3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:281:9+37
    assume {:print "$at(2,8004,8041)"} true;
    assert {:msg "assert_failed(2,8004,8041): post-condition does not hold"}
      (var $range_0 := $t22; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var x := ReadVec($range_0, $i_1);
    ($IsEqual'u64'(x, 3)))));

    // assert Not(exists x: $t22: Eq<u64>(x, 4)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:282:9+40
    assume {:print "$at(2,8050,8090)"} true;
    assert {:msg "assert_failed(2,8050,8090): post-condition does not hold"}
      !(var $range_0 := $t22; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var x := ReadVec($range_0, $i_1);
    ($IsEqual'u64'(x, 4)))));

    // assert exists x: $t22: Eq<u64>(x, 5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:283:9+37
    assume {:print "$at(2,8099,8136)"} true;
    assert {:msg "assert_failed(2,8099,8136): post-condition does not hold"}
      (var $range_0 := $t22; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var x := ReadVec($range_0, $i_1);
    ($IsEqual'u64'(x, 5)))));

    // return ($t22, $t18, $t21) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:283:9+37
    $ret0 := $t22;
    $ret1 := $t18;
    $ret2 := $t21;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:269:5+1
    assume {:print "$at(2,7496,7497)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:270:5+640
    assume {:print "$at(2,7502,8142)"} true;
    assert {:msg "assert_failed(2,7502,8142): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:270:5+640
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun TestVector::test_destroy_empty1 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:399:5+220
procedure {:timeLimit 40} $42_TestVector_test_destroy_empty1$verify(_$t0: Vec (int)) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: Vec (int);
    var $t2: bool;
    var $t3: int;
    var $t4: Vec (int);
    var $t0: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:410:17+6
    assume {:print "$at(2,11441,11447)"} true;
    assume $IsValid'vec'u64''($t0);

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:399:5+1
    assume {:print "$at(2,11173,11174)"} true;
    assume {:print "$track_local(1,8,0):", $t0} $t0 == $t0;

    // $t2 := Vector::is_empty<u64>($t0) on_abort goto L5 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:12+20
    assume {:print "$at(2,11244,11264)"} true;
    call $t2 := $1_Vector_is_empty'u64'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,11244,11264)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,8):", $t3} $t3 == $t3;
        goto L5;
    }

    // if ($t2) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:9+146
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:9+146
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:9+146
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:402:35+1
    assume {:print "$at(2,11302,11303)"} true;
L0:

    // Vector::destroy_empty<u64>($t0) on_abort goto L5 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:402:13+24
    call $1_Vector_destroy_empty'u64'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,11280,11304)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,8):", $t3} $t3 == $t3;
        goto L5;
    }

    // $t4 := Vector::empty<u64>() on_abort goto L5 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:403:13+20
    assume {:print "$at(2,11318,11338)"} true;
    call $t4 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,11318,11338)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,8):", $t3} $t3 == $t3;
        goto L5;
    }

    // $t1 := $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:9+146
    assume {:print "$at(2,11241,11387)"} true;
    $t1 := $t4;

    // trace_local[tmp#$1]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:9+146
    assume {:print "$track_local(1,8,1):", $t4} $t4 == $t4;

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:9+146
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:406:13+1
    assume {:print "$at(2,11376,11377)"} true;
L2:

    // $t1 := $t0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:9+146
    assume {:print "$at(2,11241,11387)"} true;
    $t1 := $t0;

    // trace_local[tmp#$1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:9+146
    assume {:print "$track_local(1,8,1):", $t0} $t0 == $t0;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:9+146
L3:

    // trace_return[0]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:401:9+146
    assume {:print "$track_return(1,8,0):", $t1} $t1 == $t1;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:408:5+1
    assume {:print "$at(2,11392,11393)"} true;
L4:

    // assert Eq<vector<u64>>($t1, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:410:9+20
    assume {:print "$at(2,11433,11453)"} true;
    assert {:msg "assert_failed(2,11433,11453): post-condition does not hold"}
      $IsEqual'vec'u64''($t1, $t0);

    // return $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:410:9+20
    $ret0 := $t1;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:408:5+1
    assume {:print "$at(2,11392,11393)"} true;
L5:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:408:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestVector::test_destroy_empty2 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:414:5+199
procedure {:timeLimit 40} $42_TestVector_test_destroy_empty2$verify(_$t0: Vec (int)) returns ()
{
    // declare local variables
    var $t1: Vec (int);
    var $t2: bool;
    var $t3: int;
    var $t4: $Mutation (Vec (int));
    var $t5: int;
    var $t6: int;
    var $t7: Vec (int);
    var $t0: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t4));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:414:5+199
    assume {:print "$at(2,11555,11754)"} true;
    assume $IsValid'vec'u64''($t0);

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:414:5+1
    assume {:print "$track_local(1,9,0):", $t0} $t0 == $t0;

    // $t1 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:416:29+2
    assume {:print "$at(2,11629,11631)"} true;
    $t1 := $t0;

    // $t2 := Vector::is_empty<u64>($t1) on_abort goto L5 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:416:12+20
    call $t2 := $1_Vector_is_empty'u64'($t1);
    if ($abort_flag) {
        assume {:print "$at(2,11612,11632)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,9):", $t3} $t3 == $t3;
        goto L5;
    }

    // if ($t2) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:416:9+139
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:416:9+139
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:416:9+139
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:417:26+6
    assume {:print "$at(2,11661,11667)"} true;
L0:

    // $t4 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:417:26+6
    $t4 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t5 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:417:34+1
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:417:37+1
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // Vector::swap<u64>($t4, $t5, $t6) on_abort goto L5 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:417:13+26
    call $t4 := $1_Vector_swap'u64'($t4, $t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,11648,11674)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,9):", $t3} $t3 == $t3;
        goto L5;
    }

    // write_back[LocalRoot($t0)@]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:417:13+26
    $t0 := $Dereference($t4);

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:416:9+139
    assume {:print "$at(2,11609,11748)"} true;
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:420:35+1
    assume {:print "$at(2,11735,11736)"} true;
L2:

    // $t7 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:420:35+1
    $t7 := $t0;

    // Vector::destroy_empty<u64>($t7) on_abort goto L5 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:420:13+24
    call $1_Vector_destroy_empty'u64'($t7);
    if ($abort_flag) {
        assume {:print "$at(2,11713,11737)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,9):", $t3} $t3 == $t3;
        goto L5;
    }

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:416:9+139
    assume {:print "$at(2,11609,11748)"} true;
L3:

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:422:5+1
    assume {:print "$at(2,11753,11754)"} true;
L4:

    // assert Not(true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:424:9+15
    assume {:print "$at(2,11794,11809)"} true;
    assert {:msg "assert_failed(2,11794,11809): function does not abort under this condition"}
      !true;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:424:9+15
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:422:5+1
    assume {:print "$at(2,11753,11754)"} true;
L5:

    // assert true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:423:5+56
    assume {:print "$at(2,11759,11815)"} true;
    assert {:msg "assert_failed(2,11759,11815): abort not covered by any of the `aborts_if` clauses"}
      true;

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:423:5+56
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestVector::test_empty [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:27:5+156
procedure {:timeLimit 40} $42_TestVector_test_empty$verify() returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: Vec (int);
    var $t3: int;
    var $t4: Vec (int);
    var $temp_0'vec'u64'': Vec (int);

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t2 := Vector::empty<u64>() on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:29:19+20
    assume {:print "$at(2,774,794)"} true;
    call $t2 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,774,794)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,10):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[ev1]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:29:13+3
    assume {:print "$track_local(1,10,0):", $t2} $t2 == $t2;

    // $t4 := Vector::empty<u64>() on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:30:19+20
    assume {:print "$at(2,814,834)"} true;
    call $t4 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,814,834)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,10):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[ev2]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:30:13+3
    assume {:print "$track_local(1,10,1):", $t4} $t4 == $t4;

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:31:9+10
    assume {:print "$at(2,844,854)"} true;
    assume {:print "$track_return(1,10,0):", $t2} $t2 == $t2;

    // trace_return[1]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:31:9+10
    assume {:print "$track_return(1,10,1):", $t4} $t4 == $t4;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:32:5+1
    assume {:print "$at(2,859,860)"} true;
L1:

    // assert Eq<vector<u64>>($t2, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:34:9+29
    assume {:print "$at(2,891,920)"} true;
    assert {:msg "assert_failed(2,891,920): post-condition does not hold"}
      $IsEqual'vec'u64''($t2, $t4);

    // assert Eq<num>(Len<u64>($t2), 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:35:9+27
    assume {:print "$at(2,929,956)"} true;
    assert {:msg "assert_failed(2,929,956): post-condition does not hold"}
      $IsEqual'num'(LenVec($t2), 0);

    // assert Eq<num>(Len<u64>($t4), 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:36:9+27
    assume {:print "$at(2,965,992)"} true;
    assert {:msg "assert_failed(2,965,992): post-condition does not hold"}
      $IsEqual'num'(LenVec($t4), 0);

    // return ($t2, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:36:9+27
    $ret0 := $t2;
    $ret1 := $t4;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:32:5+1
    assume {:print "$at(2,859,860)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:32:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestVector::test_id1 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:358:5+64
procedure {:timeLimit 40} $42_TestVector_test_id1$verify(_$t0: Vec (int)) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:363:17+6
    assume {:print "$at(2,10346,10352)"} true;
    assume $IsValid'vec'u64''($t0);

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:358:5+1
    assume {:print "$at(2,10245,10246)"} true;
    assume {:print "$track_local(1,11,0):", $t0} $t0 == $t0;

    // trace_return[0]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:360:9+1
    assume {:print "$at(2,10302,10303)"} true;
    assume {:print "$track_return(1,11,0):", $t0} $t0 == $t0;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:361:5+1
    assume {:print "$at(2,10308,10309)"} true;
L1:

    // assert Eq<vector<u64>>($t0, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:363:9+20
    assume {:print "$at(2,10338,10358)"} true;
    assert {:msg "assert_failed(2,10338,10358): post-condition does not hold"}
      $IsEqual'vec'u64''($t0, $t0);

    // return $t0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:363:9+20
    $ret0 := $t0;
    return;

}

// fun TestVector::test_id2 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:367:5+130
procedure {:timeLimit 40} $42_TestVector_test_id2$verify(_$t0: Vec (int)) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: Vec (int);
    var $t2: $Mutation (Vec (int));
    var $t3: int;
    var $t4: $Mutation (Vec (int));
    var $t5: Vec (int);
    var $t0: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t4));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:374:17+6
    assume {:print "$at(2,10580,10586)"} true;
    assume $IsValid'vec'u64''($t0);

    // $t1 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:367:5+1
    assume {:print "$at(2,10413,10414)"} true;
    $t1 := $t0;

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:367:5+1
    assume {:print "$track_local(1,12,0):", $t0} $t0 == $t0;

    // $t2 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:369:25+6
    assume {:print "$at(2,10486,10492)"} true;
    $t2 := $Mutation($Local(0), EmptyVec(), $t0);

    // Vector::reverse<u64>($t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:369:9+23
    call $t2 := $1_Vector_reverse'u64'($t2);
    if ($abort_flag) {
        assume {:print "$at(2,10470,10493)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,12):", $t3} $t3 == $t3;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:369:9+23
    $t0 := $Dereference($t2);

    // $t4 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:370:25+6
    assume {:print "$at(2,10519,10525)"} true;
    $t4 := $Mutation($Local(0), EmptyVec(), $t0);

    // Vector::reverse<u64>($t4) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:370:9+23
    call $t4 := $1_Vector_reverse'u64'($t4);
    if ($abort_flag) {
        assume {:print "$at(2,10503,10526)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,12):", $t3} $t3 == $t3;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:370:9+23
    $t0 := $Dereference($t4);

    // $t5 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:371:9+1
    assume {:print "$at(2,10536,10537)"} true;
    $t5 := $t0;

    // trace_return[0]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:371:9+1
    assume {:print "$track_return(1,12,0):", $t5} $t5 == $t5;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:372:5+1
    assume {:print "$at(2,10542,10543)"} true;
L1:

    // assert Eq<vector<u64>>($t5, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:374:9+20
    assume {:print "$at(2,10572,10592)"} true;
    assert {:msg "assert_failed(2,10572,10592): post-condition does not hold"}
      $IsEqual'vec'u64''($t5, $t1);

    // return $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:374:9+20
    $ret0 := $t5;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:372:5+1
    assume {:print "$at(2,10542,10543)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:372:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestVector::test_id3 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:378:5+354
procedure {:timeLimit 40} $42_TestVector_test_id3$verify(_$t0: Vec (int)) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: int;
    var $t2: Vec (int);
    var $t3: Vec (int);
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: bool;
    var $t10: $Mutation (Vec (int));
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: $Mutation (Vec (int));
    var $t15: $Mutation (Vec (int));
    var $t16: Vec (int);
    var $t0: Vec (int);
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t14));
    assume IsEmptyVec(p#$Mutation($t15));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:395:17+6
    assume {:print "$at(2,11059,11065)"} true;
    assume $IsValid'vec'u64''($t0);

    // $t2 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:378:5+1
    assume {:print "$at(2,10668,10669)"} true;
    $t2 := $t0;

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:378:5+1
    assume {:print "$track_local(1,13,0):", $t0} $t0 == $t0;

    // $t3 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:380:37+2
    assume {:print "$at(2,10753,10755)"} true;
    $t3 := $t0;

    // $t4 := Vector::length<u64>($t3) on_abort goto L8 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:380:22+18
    call $t4 := $1_Vector_length'u64'($t3);
    if ($abort_flag) {
        assume {:print "$at(2,10738,10756)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,13):", $t5} $t5 == $t5;
        goto L8;
    }

    // trace_local[l]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:380:13+1
    assume {:print "$track_local(1,13,1):", $t4} $t4 == $t4;

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:381:17+1
    assume {:print "$at(2,10774,10775)"} true;
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // $t7 := <=($t4, $t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:381:14+2
    call $t7 := $Le($t4, $t6);

    // if ($t7) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:381:9+206
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:381:9+206
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:381:9+206
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:381:20+11
L0:

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:381:20+11
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:384:16+1
    assume {:print "$at(2,10819,10820)"} true;
L2:

    // $t8 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:384:21+1
    $t8 := 3;
    assume $IsValid'u64'($t8);

    // $t9 := <=($t4, $t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:384:18+2
    call $t9 := $Le($t4, $t8);

    // if ($t9) goto L4 else goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:384:13+146
    if ($t9) { goto L4; } else { goto L5; }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:384:13+146
L5:

    // goto L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:384:13+146
    goto L6;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:385:30+6
    assume {:print "$at(2,10858,10864)"} true;
L4:

    // $t10 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:385:30+6
    $t10 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t11 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:385:38+1
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // $t12 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:385:43+1
    $t12 := 1;
    assume $IsValid'u64'($t12);

    // $t13 := -($t4, $t12) on_abort goto L8 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:385:42+1
    call $t13 := $Sub($t4, $t12);
    if ($abort_flag) {
        assume {:print "$at(2,10870,10871)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,13):", $t5} $t5 == $t5;
        goto L8;
    }

    // Vector::swap<u64>($t10, $t11, $t13) on_abort goto L8 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:385:17+28
    call $t10 := $1_Vector_swap'u64'($t10, $t11, $t13);
    if ($abort_flag) {
        assume {:print "$at(2,10845,10873)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,13):", $t5} $t5 == $t5;
        goto L8;
    }

    // write_back[LocalRoot($t0)@]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:385:17+28
    $t0 := $Dereference($t10);

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:384:13+146
    assume {:print "$at(2,10816,10962)"} true;
    goto L3;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:388:33+6
    assume {:print "$at(2,10940,10946)"} true;
L6:

    // $t14 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:388:33+6
    $t14 := $Mutation($Local(0), EmptyVec(), $t0);

    // Vector::reverse<u64>($t14) on_abort goto L8 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:388:17+23
    call $t14 := $1_Vector_reverse'u64'($t14);
    if ($abort_flag) {
        assume {:print "$at(2,10924,10947)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,13):", $t5} $t5 == $t5;
        goto L8;
    }

    // write_back[LocalRoot($t0)@]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:388:17+23
    $t0 := $Dereference($t14);

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:391:25+6
    assume {:print "$at(2,10998,11004)"} true;
L3:

    // $t15 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:391:25+6
    $t15 := $Mutation($Local(0), EmptyVec(), $t0);

    // Vector::reverse<u64>($t15) on_abort goto L8 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:391:9+23
    call $t15 := $1_Vector_reverse'u64'($t15);
    if ($abort_flag) {
        assume {:print "$at(2,10982,11005)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,13):", $t5} $t5 == $t5;
        goto L8;
    }

    // write_back[LocalRoot($t0)@]($t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:391:9+23
    $t0 := $Dereference($t15);

    // $t16 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:392:9+1
    assume {:print "$at(2,11015,11016)"} true;
    $t16 := $t0;

    // trace_return[0]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:392:9+1
    assume {:print "$track_return(1,13,0):", $t16} $t16 == $t16;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:393:5+1
    assume {:print "$at(2,11021,11022)"} true;
L7:

    // assert Eq<vector<u64>>($t16, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:395:9+20
    assume {:print "$at(2,11051,11071)"} true;
    assert {:msg "assert_failed(2,11051,11071): post-condition does not hold"}
      $IsEqual'vec'u64''($t16, $t2);

    // return $t16 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:395:9+20
    $ret0 := $t16;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:393:5+1
    assume {:print "$at(2,11021,11022)"} true;
L8:

    // abort($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:393:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestVector::test_index_of [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:286:5+599
procedure {:timeLimit 40} $42_TestVector_test_index_of$verify() returns ($ret0: Vec (int), $ret1: bool, $ret2: int, $ret3: bool, $ret4: int)
{
    // declare local variables
    var $t0: bool;
    var $t1: bool;
    var $t2: Vec (int);
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: Vec (int);
    var $t7: int;
    var $t8: Vec (int);
    var $t9: int;
    var $t10: $Mutation (Vec (int));
    var $t11: int;
    var $t12: $Mutation (Vec (int));
    var $t13: int;
    var $t14: $Mutation (Vec (int));
    var $t15: int;
    var $t16: $Mutation (Vec (int));
    var $t17: int;
    var $t18: $Mutation (Vec (int));
    var $t19: int;
    var $t20: $Mutation (Vec (int));
    var $t21: int;
    var $t22: $Mutation (Vec (int));
    var $t23: Vec (int);
    var $t24: int;
    var $t25: bool;
    var $t26: int;
    var $t27: Vec (int);
    var $t28: int;
    var $t29: bool;
    var $t30: int;
    var $t31: Vec (int);
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t12));
    assume IsEmptyVec(p#$Mutation($t14));
    assume IsEmptyVec(p#$Mutation($t16));
    assume IsEmptyVec(p#$Mutation($t18));
    assume IsEmptyVec(p#$Mutation($t20));
    assume IsEmptyVec(p#$Mutation($t22));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t2 := Vector::empty<u64>() on_abort goto L2 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:291:19+20
    assume {:print "$at(2,8311,8331)"} true;
    call $t2 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,8311,8331)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,14):", $t9} $t9 == $t9;
        goto L2;
    }

    // trace_local[ev1]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:291:13+3
    assume {:print "$track_local(1,14,2):", $t2} $t2 == $t2;

    // $t10 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:292:27+8
    assume {:print "$at(2,8359,8367)"} true;
    $t10 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t11 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:292:37+1
    $t11 := 1;
    assume $IsValid'u64'($t11);

    // Vector::push_back<u64>($t10, $t11) on_abort goto L2 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:292:9+30
    call $t10 := $1_Vector_push_back'u64'($t10, $t11);
    if ($abort_flag) {
        assume {:print "$at(2,8341,8371)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,14):", $t9} $t9 == $t9;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:292:9+30
    $t2 := $Dereference($t10);

    // $t12 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:293:27+8
    assume {:print "$at(2,8399,8407)"} true;
    $t12 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t13 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:293:37+1
    $t13 := 2;
    assume $IsValid'u64'($t13);

    // Vector::push_back<u64>($t12, $t13) on_abort goto L2 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:293:9+30
    call $t12 := $1_Vector_push_back'u64'($t12, $t13);
    if ($abort_flag) {
        assume {:print "$at(2,8381,8411)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,14):", $t9} $t9 == $t9;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:293:9+30
    $t2 := $Dereference($t12);

    // $t14 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:294:27+8
    assume {:print "$at(2,8439,8447)"} true;
    $t14 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t15 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:294:37+1
    $t15 := 3;
    assume $IsValid'u64'($t15);

    // Vector::push_back<u64>($t14, $t15) on_abort goto L2 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:294:9+30
    call $t14 := $1_Vector_push_back'u64'($t14, $t15);
    if ($abort_flag) {
        assume {:print "$at(2,8421,8451)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,14):", $t9} $t9 == $t9;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:294:9+30
    $t2 := $Dereference($t14);

    // $t16 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:295:27+8
    assume {:print "$at(2,8479,8487)"} true;
    $t16 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t17 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:295:37+1
    $t17 := 7;
    assume $IsValid'u64'($t17);

    // Vector::push_back<u64>($t16, $t17) on_abort goto L2 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:295:9+30
    call $t16 := $1_Vector_push_back'u64'($t16, $t17);
    if ($abort_flag) {
        assume {:print "$at(2,8461,8491)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,14):", $t9} $t9 == $t9;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:295:9+30
    $t2 := $Dereference($t16);

    // $t18 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:296:27+8
    assume {:print "$at(2,8519,8527)"} true;
    $t18 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t19 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:296:37+1
    $t19 := 7;
    assume $IsValid'u64'($t19);

    // Vector::push_back<u64>($t18, $t19) on_abort goto L2 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:296:9+30
    call $t18 := $1_Vector_push_back'u64'($t18, $t19);
    if ($abort_flag) {
        assume {:print "$at(2,8501,8531)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,14):", $t9} $t9 == $t9;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:296:9+30
    $t2 := $Dereference($t18);

    // $t20 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:297:27+8
    assume {:print "$at(2,8559,8567)"} true;
    $t20 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t21 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:297:37+1
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // Vector::push_back<u64>($t20, $t21) on_abort goto L2 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:297:9+30
    call $t20 := $1_Vector_push_back'u64'($t20, $t21);
    if ($abort_flag) {
        assume {:print "$at(2,8541,8571)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,14):", $t9} $t9 == $t9;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t20) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:297:9+30
    $t2 := $Dereference($t20);

    // $t22 := borrow_local($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:298:25+8
    assume {:print "$at(2,8597,8605)"} true;
    $t22 := $Mutation($Local(2), EmptyVec(), $t2);

    // Vector::reverse<u64>($t22) on_abort goto L2 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:298:9+25
    call $t22 := $1_Vector_reverse'u64'($t22);
    if ($abort_flag) {
        assume {:print "$at(2,8581,8606)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,14):", $t9} $t9 == $t9;
        goto L2;
    }

    // write_back[LocalRoot($t2)@]($t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:298:9+25
    $t2 := $Dereference($t22);

    // $t23 := copy($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:299:42+4
    assume {:print "$at(2,8649,8653)"} true;
    $t23 := $t2;

    // trace_local[tmp#$6]($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:299:42+4
    assume {:print "$track_local(1,14,6):", $t23} $t23 == $t23;

    // $t24 := 4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:299:49+1
    $t24 := 4;
    assume $IsValid'u64'($t24);

    // trace_local[tmp#$5]($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:299:49+1
    assume {:print "$track_local(1,14,5):", $t24} $t24 == $t24;

    // ($t25, $t26) := Vector::index_of<u64>($t23, $t24) on_abort goto L2 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:299:20+31
    call $t25,$t26 := $1_Vector_index_of'u64'($t23, $t24);
    if ($abort_flag) {
        assume {:print "$at(2,8627,8658)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,14):", $t9} $t9 == $t9;
        goto L2;
    }

    // trace_local[i1]($t26) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:299:14+2
    assume {:print "$track_local(1,14,3):", $t26} $t26 == $t26;

    // trace_local[b1]($t25) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:299:10+2
    assume {:print "$track_local(1,14,0):", $t25} $t25 == $t25;

    // $t27 := copy($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:300:42+4
    assume {:print "$at(2,8701,8705)"} true;
    $t27 := $t2;

    // trace_local[tmp#$8]($t27) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:300:42+4
    assume {:print "$track_local(1,14,8):", $t27} $t27 == $t27;

    // $t28 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:300:49+1
    $t28 := 7;
    assume $IsValid'u64'($t28);

    // trace_local[tmp#$7]($t28) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:300:49+1
    assume {:print "$track_local(1,14,7):", $t28} $t28 == $t28;

    // ($t29, $t30) := Vector::index_of<u64>($t27, $t28) on_abort goto L2 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:300:20+31
    call $t29,$t30 := $1_Vector_index_of'u64'($t27, $t28);
    if ($abort_flag) {
        assume {:print "$at(2,8679,8710)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,14):", $t9} $t9 == $t9;
        goto L2;
    }

    // trace_local[i2]($t30) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:300:14+2
    assume {:print "$track_local(1,14,4):", $t30} $t30 == $t30;

    // trace_local[b2]($t29) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:300:10+2
    assume {:print "$track_local(1,14,1):", $t29} $t29 == $t29;

    // $t31 := move($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:301:10+3
    assume {:print "$at(2,8721,8724)"} true;
    $t31 := $t2;

    // trace_return[0]($t31) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:301:9+21
    assume {:print "$track_return(1,14,0):", $t31} $t31 == $t31;

    // trace_return[1]($t25) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:301:9+21
    assume {:print "$track_return(1,14,1):", $t25} $t25 == $t25;

    // trace_return[2]($t26) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:301:9+21
    assume {:print "$track_return(1,14,2):", $t26} $t26 == $t26;

    // trace_return[3]($t29) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:301:9+21
    assume {:print "$track_return(1,14,3):", $t29} $t29 == $t29;

    // trace_return[4]($t30) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:301:9+21
    assume {:print "$track_return(1,14,4):", $t30} $t30 == $t30;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:302:5+1
    assume {:print "$at(2,8746,8747)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:304:9+16
    assume {:print "$at(2,8781,8797)"} true;
    assert {:msg "assert_failed(2,8781,8797): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t25, false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:305:9+26
    assume {:print "$at(2,8806,8832)"} true;
    assert {:msg "assert_failed(2,8806,8832): post-condition does not hold"}
      $IsEqual'bool'($t25, false);

    // assert Eq<u64>($t26, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:306:9+22
    assume {:print "$at(2,8841,8863)"} true;
    assert {:msg "assert_failed(2,8841,8863): post-condition does not hold"}
      $IsEqual'u64'($t26, 0);

    // assert Eq<bool>($t29, true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:307:9+25
    assume {:print "$at(2,8872,8897)"} true;
    assert {:msg "assert_failed(2,8872,8897): post-condition does not hold"}
      $IsEqual'bool'($t29, true);

    // assert Eq<u64>(Index($t31, 1), 7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:308:9+25
    assume {:print "$at(2,8906,8931)"} true;
    assert {:msg "assert_failed(2,8906,8931): post-condition does not hold"}
      $IsEqual'u64'(ReadVec($t31, 1), 7);

    // assert Eq<u64>(Index($t31, 2), 7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:309:9+25
    assume {:print "$at(2,9055,9080)"} true;
    assert {:msg "assert_failed(2,9055,9080): post-condition does not hold"}
      $IsEqual'u64'(ReadVec($t31, 2), 7);

    // assert Eq<u64>($t30, 1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:310:9+22
    assume {:print "$at(2,9089,9111)"} true;
    assert {:msg "assert_failed(2,9089,9111): post-condition does not hold"}
      $IsEqual'u64'($t30, 1);

    // return ($t31, $t25, $t26, $t29, $t30) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:310:9+22
    $ret0 := $t31;
    $ret1 := $t25;
    $ret2 := $t26;
    $ret3 := $t29;
    $ret4 := $t30;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:302:5+1
    assume {:print "$at(2,8746,8747)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:303:5+365
    assume {:print "$at(2,8752,9117)"} true;
    assert {:msg "assert_failed(2,8752,9117): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:303:5+365
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// fun TestVector::test_length1 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:178:5+216
procedure {:timeLimit 40} $42_TestVector_test_length1$verify() returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: int;
    var $t3: Vec (int);
    var $t4: $Mutation (Vec (int));
    var $t5: int;
    var $t6: Vec (int);
    var $t7: int;
    var $t8: int;
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t4));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:180:19+20
    assume {:print "$at(2,4922,4942)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,4922,4942)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,15):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:180:13+3
    assume {:print "$track_local(1,15,0):", $t0} $t0 == $t0;

    // $t3 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:181:19+20
    assume {:print "$at(2,4962,4982)"} true;
    call $t3 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,4962,4982)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,15):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev2]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:181:13+3
    assume {:print "$track_local(1,15,1):", $t3} $t3 == $t3;

    // $t4 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:182:27+8
    assume {:print "$at(2,5010,5018)"} true;
    $t4 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t5 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:182:37+1
    $t5 := 1;
    assume $IsValid'u64'($t5);

    // Vector::push_back<u64>($t4, $t5) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:182:9+30
    call $t4 := $1_Vector_push_back'u64'($t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,4992,5022)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,15):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:182:9+30
    $t0 := $Dereference($t4);

    // $t6 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:183:25+4
    assume {:print "$at(2,5048,5052)"} true;
    $t6 := $t0;

    // $t7 := Vector::length<u64>($t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:183:10+20
    call $t7 := $1_Vector_length'u64'($t6);
    if ($abort_flag) {
        assume {:print "$at(2,5033,5053)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,15):", $t2} $t2 == $t2;
        goto L2;
    }

    // $t8 := Vector::length<u64>($t3) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:183:32+20
    call $t8 := $1_Vector_length'u64'($t3);
    if ($abort_flag) {
        assume {:print "$at(2,5055,5075)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,15):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_return[0]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:183:9+44
    assume {:print "$track_return(1,15,0):", $t7} $t7 == $t7;

    // trace_return[1]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:183:9+44
    assume {:print "$track_return(1,15,1):", $t8} $t8 == $t8;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:184:5+1
    assume {:print "$at(2,5081,5082)"} true;
L1:

    // assert Eq<u64>($t7, Add($t8, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:186:9+33
    assume {:print "$at(2,5115,5148)"} true;
    assert {:msg "assert_failed(2,5115,5148): post-condition does not hold"}
      $IsEqual'u64'($t7, ($t8 + 1));

    // return ($t7, $t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:186:9+33
    $ret0 := $t7;
    $ret1 := $t8;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:184:5+1
    assume {:print "$at(2,5081,5082)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:184:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_length2 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:318:5+290
procedure {:timeLimit 40} $42_TestVector_test_length2$verify(_$t0: Vec (int)) returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: Vec (int);
    var $t4: int;
    var $t5: int;
    var $t6: $Mutation (Vec (int));
    var $t7: int;
    var $t8: $Mutation (Vec (int));
    var $t9: int;
    var $t10: $Mutation (Vec (int));
    var $t11: int;
    var $t12: Vec (int);
    var $t13: int;
    var $t0: Vec (int);
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t6));
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t10));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:330:33+8
    assume {:print "$at(2,9577,9585)"} true;
    assume $IsValid'vec'u64''($t0);

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:318:5+1
    assume {:print "$at(2,9230,9231)"} true;
    assume {:print "$track_local(1,16,0):", $t0} $t0 == $t0;

    // $t3 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:322:28+2
    assume {:print "$at(2,9349,9351)"} true;
    $t3 := $t0;

    // $t4 := Vector::length<u64>($t3) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:322:13+18
    call $t4 := $1_Vector_length'u64'($t3);
    if ($abort_flag) {
        assume {:print "$at(2,9334,9352)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,16):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[x]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:322:9+1
    assume {:print "$track_local(1,16,1):", $t4} $t4 == $t4;

    // $t6 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:323:27+6
    assume {:print "$at(2,9380,9386)"} true;
    $t6 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t7 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:323:35+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // Vector::push_back<u64>($t6, $t7) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:323:9+28
    call $t6 := $1_Vector_push_back'u64'($t6, $t7);
    if ($abort_flag) {
        assume {:print "$at(2,9362,9390)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,16):", $t5} $t5 == $t5;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:323:9+28
    $t0 := $Dereference($t6);

    // $t8 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:324:27+6
    assume {:print "$at(2,9418,9424)"} true;
    $t8 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t9 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:324:35+1
    $t9 := 2;
    assume $IsValid'u64'($t9);

    // Vector::push_back<u64>($t8, $t9) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:324:9+28
    call $t8 := $1_Vector_push_back'u64'($t8, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,9400,9428)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,16):", $t5} $t5 == $t5;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:324:9+28
    $t0 := $Dereference($t8);

    // $t10 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:325:27+6
    assume {:print "$at(2,9456,9462)"} true;
    $t10 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t11 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:325:35+1
    $t11 := 3;
    assume $IsValid'u64'($t11);

    // Vector::push_back<u64>($t10, $t11) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:325:9+28
    call $t10 := $1_Vector_push_back'u64'($t10, $t11);
    if ($abort_flag) {
        assume {:print "$at(2,9438,9466)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,16):", $t5} $t5 == $t5;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:325:9+28
    $t0 := $Dereference($t10);

    // $t12 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:326:28+2
    assume {:print "$at(2,9495,9497)"} true;
    $t12 := $t0;

    // $t13 := Vector::length<u64>($t12) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:326:13+18
    call $t13 := $1_Vector_length'u64'($t12);
    if ($abort_flag) {
        assume {:print "$at(2,9480,9498)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,16):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[y]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:326:9+1
    assume {:print "$track_local(1,16,2):", $t13} $t13 == $t13;

    // trace_return[0]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:327:9+6
    assume {:print "$at(2,9508,9514)"} true;
    assume {:print "$track_return(1,16,0):", $t4} $t4 == $t4;

    // trace_return[1]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:327:9+6
    assume {:print "$track_return(1,16,1):", $t13} $t13 == $t13;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:328:5+1
    assume {:print "$at(2,9519,9520)"} true;
L1:

    // assert Eq<num>(Add($t4, 3), $t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:330:9+33
    assume {:print "$at(2,9553,9586)"} true;
    assert {:msg "assert_failed(2,9553,9586): post-condition does not hold"}
      $IsEqual'num'(($t4 + 3), $t13);

    // return ($t4, $t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:330:9+33
    $ret0 := $t4;
    $ret1 := $t13;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:328:5+1
    assume {:print "$at(2,9519,9520)"} true;
L2:

    // abort($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:328:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestVector::test_length3 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:333:5+163
procedure {:timeLimit 40} $42_TestVector_test_length3$verify(_$t0: Vec (int)) returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t1: int;
    var $t2: Vec (int);
    var $t3: Vec (int);
    var $t4: int;
    var $t5: int;
    var $t6: $Mutation (Vec (int));
    var $t7: int;
    var $t8: Vec (int);
    var $t9: int;
    var $t0: Vec (int);
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t6));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:341:33+8
    assume {:print "$at(2,9854,9862)"} true;
    assume $IsValid'vec'u64''($t0);

    // $t2 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:333:5+1
    assume {:print "$at(2,9598,9599)"} true;
    $t2 := $t0;

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:333:5+1
    assume {:print "$track_local(1,17,0):", $t0} $t0 == $t0;

    // $t3 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:335:32+2
    assume {:print "$at(2,9681,9683)"} true;
    $t3 := $t0;

    // $t4 := Vector::length<u64>($t3) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:335:17+18
    call $t4 := $1_Vector_length'u64'($t3);
    if ($abort_flag) {
        assume {:print "$at(2,9666,9684)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,17):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[l]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:335:13+1
    assume {:print "$track_local(1,17,1):", $t4} $t4 == $t4;

    // $t6 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:336:27+6
    assume {:print "$at(2,9712,9718)"} true;
    $t6 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t7 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:336:35+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // Vector::push_back<u64>($t6, $t7) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:336:9+28
    call $t6 := $1_Vector_push_back'u64'($t6, $t7);
    if ($abort_flag) {
        assume {:print "$at(2,9694,9722)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,17):", $t5} $t5 == $t5;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:336:9+28
    $t0 := $Dereference($t6);

    // $t8 := copy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:337:28+2
    assume {:print "$at(2,9751,9753)"} true;
    $t8 := $t0;

    // $t9 := Vector::length<u64>($t8) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:337:13+18
    call $t9 := $1_Vector_length'u64'($t8);
    if ($abort_flag) {
        assume {:print "$at(2,9736,9754)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,17):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_return[0]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:337:9+23
    assume {:print "$track_return(1,17,0):", $t4} $t4 == $t4;

    // trace_return[1]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:337:9+23
    assume {:print "$track_return(1,17,1):", $t9} $t9 == $t9;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:338:5+1
    assume {:print "$at(2,9760,9761)"} true;
L1:

    // assert Eq<num>(Len<u64>($t2), $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:340:9+27
    assume {:print "$at(2,9794,9821)"} true;
    assert {:msg "assert_failed(2,9794,9821): post-condition does not hold"}
      $IsEqual'num'(LenVec($t2), $t4);

    // assert Eq<num>(Add($t4, 1), $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:341:9+33
    assume {:print "$at(2,9830,9863)"} true;
    assert {:msg "assert_failed(2,9830,9863): post-condition does not hold"}
      $IsEqual'num'(($t4 + 1), $t9);

    // return ($t4, $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:341:9+33
    $ret0 := $t4;
    $ret1 := $t9;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:338:5+1
    assume {:print "$at(2,9760,9761)"} true;
L2:

    // abort($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:338:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestVector::test_length4 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:344:5+161
procedure {:timeLimit 40} $42_TestVector_test_length4$verify(_$t0: $Mutation (Vec (int))) returns ($ret0: int, $ret1: int, $ret2: $Mutation (Vec (int)))
{
    // declare local variables
    var $t1: int;
    var $t2: Vec (int);
    var $t3: Vec (int);
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: Vec (int);
    var $t8: int;
    var $t0: $Mutation (Vec (int));
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:354:27+8
    assume {:print "$at(2,10199,10207)"} true;
    assume $IsValid'vec'u64''($Dereference($t0));

    // $t2 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:344:5+1
    assume {:print "$at(2,9875,9876)"} true;
    $t2 := $Dereference($t0);

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:344:5+1
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,18,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t3 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:346:32+1
    assume {:print "$at(2,9963,9964)"} true;
    $t3 := $Dereference($t0);

    // $t4 := Vector::length<u64>($t3) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:346:17+17
    call $t4 := $1_Vector_length'u64'($t3);
    if ($abort_flag) {
        assume {:print "$at(2,9948,9965)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,18):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[l]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:346:13+1
    assume {:print "$track_local(1,18,1):", $t4} $t4 == $t4;

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:347:30+1
    assume {:print "$at(2,9996,9997)"} true;
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // Vector::push_back<u64>($t0, $t6) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:347:9+23
    call $t0 := $1_Vector_push_back'u64'($t0, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,9975,9998)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,18):", $t5} $t5 == $t5;
        goto L2;
    }

    // $t7 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:348:28+1
    assume {:print "$at(2,10027,10028)"} true;
    $t7 := $Dereference($t0);

    // $t8 := Vector::length<u64>($t7) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:348:13+17
    call $t8 := $1_Vector_length'u64'($t7);
    if ($abort_flag) {
        assume {:print "$at(2,10012,10029)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,18):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_return[0]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:348:9+22
    assume {:print "$track_return(1,18,0):", $t4} $t4 == $t4;

    // trace_return[1]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:348:9+22
    assume {:print "$track_return(1,18,1):", $t8} $t8 == $t8;

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:348:9+22
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,18,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:349:5+1
    assume {:print "$at(2,10035,10036)"} true;
L1:

    // assert Eq<num>(Len<u64>($t2), $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:351:9+32
    assume {:print "$at(2,10069,10101)"} true;
    assert {:msg "assert_failed(2,10069,10101): post-condition does not hold"}
      $IsEqual'num'(LenVec($t2), $t4);

    // assert Eq<num>(Add($t4, 1), $t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:352:9+33
    assume {:print "$at(2,10110,10143)"} true;
    assert {:msg "assert_failed(2,10110,10143): post-condition does not hold"}
      $IsEqual'num'(($t4 + 1), $t8);

    // assert Neq<vector<u64>>($t0, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:353:9+20
    assume {:print "$at(2,10152,10172)"} true;
    assert {:msg "assert_failed(2,10152,10172): post-condition does not hold"}
      !$IsEqual'vec'u64''($Dereference($t0), $t2);

    // assert Eq<num>(Len<u64>($t0), $t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:354:9+27
    assume {:print "$at(2,10181,10208)"} true;
    assert {:msg "assert_failed(2,10181,10208): post-condition does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), $t8);

    // return ($t4, $t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:354:9+27
    $ret0 := $t4;
    $ret1 := $t8;
    $ret2 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:349:5+1
    assume {:print "$at(2,10035,10036)"} true;
L2:

    // abort($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:349:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestVector::test_neq1 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:68:5+275
procedure {:timeLimit 40} $42_TestVector_test_neq1$verify() returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (Vec (int));
    var $t6: int;
    var $t7: $Mutation (Vec (int));
    var $t8: int;
    var $t9: Vec (int);
    var $t10: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:70:19+20
    assume {:print "$at(2,1845,1865)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,1845,1865)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,19):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:70:13+3
    assume {:print "$track_local(1,19,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:71:19+20
    assume {:print "$at(2,1885,1905)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,1885,1905)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,19):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:71:13+3
    assume {:print "$track_local(1,19,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:72:27+8
    assume {:print "$at(2,1933,1941)"} true;
    $t3 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:72:37+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // Vector::push_back<u64>($t3, $t4) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:72:9+30
    call $t3 := $1_Vector_push_back'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,1915,1945)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,19):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:72:9+30
    $t0 := $Dereference($t3);

    // $t5 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:73:27+8
    assume {:print "$at(2,1973,1981)"} true;
    $t5 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t6 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:73:37+1
    $t6 := 2;
    assume $IsValid'u64'($t6);

    // Vector::push_back<u64>($t5, $t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:73:9+30
    call $t5 := $1_Vector_push_back'u64'($t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,1955,1985)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,19):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:73:9+30
    $t0 := $Dereference($t5);

    // $t7 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:74:27+8
    assume {:print "$at(2,2013,2021)"} true;
    $t7 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t8 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:74:37+1
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // Vector::push_back<u64>($t7, $t8) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:74:9+30
    call $t7 := $1_Vector_push_back'u64'($t7, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,1995,2025)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,19):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:74:9+30
    $t1 := $Dereference($t7);

    // $t9 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:75:10+3
    assume {:print "$at(2,2036,2039)"} true;
    $t9 := $t0;

    // $t10 := move($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:75:15+3
    $t10 := $t1;

    // trace_return[0]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:75:9+10
    assume {:print "$track_return(1,19,0):", $t9} $t9 == $t9;

    // trace_return[1]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:75:9+10
    assume {:print "$track_return(1,19,1):", $t10} $t10 == $t10;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:76:5+1
    assume {:print "$at(2,2050,2051)"} true;
L1:

    // assert Neq<vector<u64>>($t9, $t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:78:9+29
    assume {:print "$at(2,2081,2110)"} true;
    assert {:msg "assert_failed(2,2081,2110): post-condition does not hold"}
      !$IsEqual'vec'u64''($t9, $t10);

    // return ($t9, $t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:78:9+29
    $ret0 := $t9;
    $ret1 := $t10;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:76:5+1
    assume {:print "$at(2,2050,2051)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:76:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_neq2 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:82:5+235
procedure {:timeLimit 40} $42_TestVector_test_neq2$verify() returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (Vec (int));
    var $t6: int;
    var $t7: Vec (int);
    var $t8: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:84:19+20
    assume {:print "$at(2,2219,2239)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,2219,2239)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,20):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:84:13+3
    assume {:print "$track_local(1,20,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:85:19+20
    assume {:print "$at(2,2259,2279)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,2259,2279)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,20):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:85:13+3
    assume {:print "$track_local(1,20,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:86:27+8
    assume {:print "$at(2,2307,2315)"} true;
    $t3 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:86:37+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // Vector::push_back<u64>($t3, $t4) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:86:9+30
    call $t3 := $1_Vector_push_back'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,2289,2319)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,20):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:86:9+30
    $t0 := $Dereference($t3);

    // $t5 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:87:27+8
    assume {:print "$at(2,2347,2355)"} true;
    $t5 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t6 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:87:37+1
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // Vector::push_back<u64>($t5, $t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:87:9+30
    call $t5 := $1_Vector_push_back'u64'($t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,2329,2359)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,20):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:87:9+30
    $t1 := $Dereference($t5);

    // $t7 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:88:10+3
    assume {:print "$at(2,2370,2373)"} true;
    $t7 := $t0;

    // $t8 := move($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:88:15+3
    $t8 := $t1;

    // trace_return[0]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:88:9+10
    assume {:print "$track_return(1,20,0):", $t7} $t7 == $t7;

    // trace_return[1]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:88:9+10
    assume {:print "$track_return(1,20,1):", $t8} $t8 == $t8;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:89:5+1
    assume {:print "$at(2,2384,2385)"} true;
L1:

    // assert Neq<vector<u64>>($t7, $t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:91:9+29
    assume {:print "$at(2,2415,2444)"} true;
    assert {:msg "assert_failed(2,2415,2444): post-condition does not hold"}
      !$IsEqual'vec'u64''($t7, $t8);

    // return ($t7, $t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:91:9+29
    $ret0 := $t7;
    $ret1 := $t8;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:89:5+1
    assume {:print "$at(2,2384,2385)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:89:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_push [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:40:5+235
procedure {:timeLimit 40} $42_TestVector_test_push$verify() returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (Vec (int));
    var $t6: int;
    var $t7: Vec (int);
    var $t8: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:42:19+20
    assume {:print "$at(2,1101,1121)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,1101,1121)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,21):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:42:13+3
    assume {:print "$track_local(1,21,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:43:19+20
    assume {:print "$at(2,1141,1161)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,1141,1161)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,21):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:43:13+3
    assume {:print "$track_local(1,21,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:44:27+8
    assume {:print "$at(2,1189,1197)"} true;
    $t3 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:44:37+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // Vector::push_back<u64>($t3, $t4) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:44:9+30
    call $t3 := $1_Vector_push_back'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,1171,1201)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,21):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:44:9+30
    $t0 := $Dereference($t3);

    // $t5 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:45:27+8
    assume {:print "$at(2,1229,1237)"} true;
    $t5 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:45:37+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // Vector::push_back<u64>($t5, $t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:45:9+30
    call $t5 := $1_Vector_push_back'u64'($t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,1211,1241)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,21):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:45:9+30
    $t1 := $Dereference($t5);

    // $t7 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:46:10+3
    assume {:print "$at(2,1252,1255)"} true;
    $t7 := $t0;

    // $t8 := move($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:46:15+3
    $t8 := $t1;

    // trace_return[0]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:46:9+10
    assume {:print "$track_return(1,21,0):", $t7} $t7 == $t7;

    // trace_return[1]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:46:9+10
    assume {:print "$track_return(1,21,1):", $t8} $t8 == $t8;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:47:5+1
    assume {:print "$at(2,1266,1267)"} true;
L1:

    // assert Eq<vector<u64>>($t7, $t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:49:9+29
    assume {:print "$at(2,1297,1326)"} true;
    assert {:msg "assert_failed(2,1297,1326): post-condition does not hold"}
      $IsEqual'vec'u64''($t7, $t8);

    // assert Eq<num>(Len<u64>($t7), 1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:50:9+27
    assume {:print "$at(2,1335,1362)"} true;
    assert {:msg "assert_failed(2,1335,1362): post-condition does not hold"}
      $IsEqual'num'(LenVec($t7), 1);

    // assert Eq<num>(Len<u64>($t8), 1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:51:9+27
    assume {:print "$at(2,1371,1398)"} true;
    assert {:msg "assert_failed(2,1371,1398): post-condition does not hold"}
      $IsEqual'num'(LenVec($t8), 1);

    // return ($t7, $t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:51:9+27
    $ret0 := $t7;
    $ret1 := $t8;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:47:5+1
    assume {:print "$at(2,1266,1267)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:47:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_push_pop [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:55:5+235
procedure {:timeLimit 40} $42_TestVector_test_push_pop$verify() returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: int;
    var $t3: Vec (int);
    var $t4: $Mutation (Vec (int));
    var $t5: int;
    var $t6: $Mutation (Vec (int));
    var $t7: int;
    var $t8: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t6));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:57:19+20
    assume {:print "$at(2,1509,1529)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,1509,1529)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,22):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:57:13+3
    assume {:print "$track_local(1,22,0):", $t0} $t0 == $t0;

    // $t3 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:58:19+20
    assume {:print "$at(2,1549,1569)"} true;
    call $t3 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,1549,1569)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,22):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev2]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:58:13+3
    assume {:print "$track_local(1,22,1):", $t3} $t3 == $t3;

    // $t4 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:59:27+8
    assume {:print "$at(2,1597,1605)"} true;
    $t4 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t5 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:59:37+1
    $t5 := 1;
    assume $IsValid'u64'($t5);

    // Vector::push_back<u64>($t4, $t5) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:59:9+30
    call $t4 := $1_Vector_push_back'u64'($t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,1579,1609)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,22):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:59:9+30
    $t0 := $Dereference($t4);

    // $t6 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:60:26+8
    assume {:print "$at(2,1636,1644)"} true;
    $t6 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t7 := Vector::pop_back<u64>($t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:60:9+26
    call $t7,$t6 := $1_Vector_pop_back'u64'($t6);
    if ($abort_flag) {
        assume {:print "$at(2,1619,1645)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,22):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:60:9+26
    $t0 := $Dereference($t6);

    // destroy($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:60:9+26

    // $t8 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:61:10+3
    assume {:print "$at(2,1656,1659)"} true;
    $t8 := $t0;

    // trace_return[0]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:61:9+10
    assume {:print "$track_return(1,22,0):", $t8} $t8 == $t8;

    // trace_return[1]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:61:9+10
    assume {:print "$track_return(1,22,1):", $t3} $t3 == $t3;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:62:5+1
    assume {:print "$at(2,1670,1671)"} true;
L1:

    // assert Eq<vector<u64>>($t8, $t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:64:9+29
    assume {:print "$at(2,1705,1734)"} true;
    assert {:msg "assert_failed(2,1705,1734): post-condition does not hold"}
      $IsEqual'vec'u64''($t8, $t3);

    // return ($t8, $t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:64:9+29
    $ret0 := $t8;
    $ret1 := $t3;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:62:5+1
    assume {:print "$at(2,1670,1671)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:62:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_reverse1 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:95:5+194
procedure {:timeLimit 40} $42_TestVector_test_reverse1$verify() returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: int;
    var $t3: Vec (int);
    var $t4: $Mutation (Vec (int));
    var $t5: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t4));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:97:19+20
    assume {:print "$at(2,2565,2585)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,2565,2585)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,23):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:97:13+3
    assume {:print "$track_local(1,23,0):", $t0} $t0 == $t0;

    // $t3 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:98:19+20
    assume {:print "$at(2,2605,2625)"} true;
    call $t3 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,2605,2625)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,23):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev2]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:98:13+3
    assume {:print "$track_local(1,23,1):", $t3} $t3 == $t3;

    // $t4 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:99:25+8
    assume {:print "$at(2,2651,2659)"} true;
    $t4 := $Mutation($Local(0), EmptyVec(), $t0);

    // Vector::reverse<u64>($t4) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:99:9+25
    call $t4 := $1_Vector_reverse'u64'($t4);
    if ($abort_flag) {
        assume {:print "$at(2,2635,2660)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,23):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:99:9+25
    $t0 := $Dereference($t4);

    // $t5 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:100:10+3
    assume {:print "$at(2,2671,2674)"} true;
    $t5 := $t0;

    // trace_return[0]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:100:9+10
    assume {:print "$track_return(1,23,0):", $t5} $t5 == $t5;

    // trace_return[1]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:100:9+10
    assume {:print "$track_return(1,23,1):", $t3} $t3 == $t3;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:101:5+1
    assume {:print "$at(2,2685,2686)"} true;
L1:

    // assert Eq<vector<u64>>($t5, $t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:103:9+29
    assume {:print "$at(2,2720,2749)"} true;
    assert {:msg "assert_failed(2,2720,2749): post-condition does not hold"}
      $IsEqual'vec'u64''($t5, $t3);

    // return ($t5, $t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:103:9+29
    $ret0 := $t5;
    $ret1 := $t3;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:101:5+1
    assume {:print "$at(2,2685,2686)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:101:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_reverse2 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:107:5+354
procedure {:timeLimit 40} $42_TestVector_test_reverse2$verify() returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (Vec (int));
    var $t6: int;
    var $t7: $Mutation (Vec (int));
    var $t8: int;
    var $t9: $Mutation (Vec (int));
    var $t10: int;
    var $t11: $Mutation (Vec (int));
    var $t12: Vec (int);
    var $t13: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t11));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:109:19+20
    assume {:print "$at(2,2876,2896)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,2876,2896)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,24):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:109:13+3
    assume {:print "$track_local(1,24,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:110:19+20
    assume {:print "$at(2,2916,2936)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,2916,2936)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,24):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:110:13+3
    assume {:print "$track_local(1,24,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:111:27+8
    assume {:print "$at(2,2964,2972)"} true;
    $t3 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:111:37+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // Vector::push_back<u64>($t3, $t4) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:111:9+30
    call $t3 := $1_Vector_push_back'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,2946,2976)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,24):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:111:9+30
    $t0 := $Dereference($t3);

    // $t5 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:112:27+8
    assume {:print "$at(2,3004,3012)"} true;
    $t5 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t6 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:112:37+1
    $t6 := 2;
    assume $IsValid'u64'($t6);

    // Vector::push_back<u64>($t5, $t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:112:9+30
    call $t5 := $1_Vector_push_back'u64'($t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,2986,3016)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,24):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:112:9+30
    $t0 := $Dereference($t5);

    // $t7 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:113:27+8
    assume {:print "$at(2,3044,3052)"} true;
    $t7 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t8 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:113:37+1
    $t8 := 2;
    assume $IsValid'u64'($t8);

    // Vector::push_back<u64>($t7, $t8) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:113:9+30
    call $t7 := $1_Vector_push_back'u64'($t7, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,3026,3056)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,24):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:113:9+30
    $t1 := $Dereference($t7);

    // $t9 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:114:27+8
    assume {:print "$at(2,3084,3092)"} true;
    $t9 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t10 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:114:37+1
    $t10 := 1;
    assume $IsValid'u64'($t10);

    // Vector::push_back<u64>($t9, $t10) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:114:9+30
    call $t9 := $1_Vector_push_back'u64'($t9, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,3066,3096)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,24):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:114:9+30
    $t1 := $Dereference($t9);

    // $t11 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:115:25+8
    assume {:print "$at(2,3122,3130)"} true;
    $t11 := $Mutation($Local(0), EmptyVec(), $t0);

    // Vector::reverse<u64>($t11) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:115:9+25
    call $t11 := $1_Vector_reverse'u64'($t11);
    if ($abort_flag) {
        assume {:print "$at(2,3106,3131)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,24):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:115:9+25
    $t0 := $Dereference($t11);

    // $t12 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:116:10+3
    assume {:print "$at(2,3142,3145)"} true;
    $t12 := $t0;

    // $t13 := move($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:116:15+3
    $t13 := $t1;

    // trace_return[0]($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:116:9+10
    assume {:print "$track_return(1,24,0):", $t12} $t12 == $t12;

    // trace_return[1]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:116:9+10
    assume {:print "$track_return(1,24,1):", $t13} $t13 == $t13;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:117:5+1
    assume {:print "$at(2,3156,3157)"} true;
L1:

    // assert Eq<vector<u64>>($t12, $t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:119:9+29
    assume {:print "$at(2,3191,3220)"} true;
    assert {:msg "assert_failed(2,3191,3220): post-condition does not hold"}
      $IsEqual'vec'u64''($t12, $t13);

    // return ($t12, $t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:119:9+29
    $ret0 := $t12;
    $ret1 := $t13;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:117:5+1
    assume {:print "$at(2,3156,3157)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:117:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_reverse3 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:123:5+354
procedure {:timeLimit 40} $42_TestVector_test_reverse3$verify() returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (Vec (int));
    var $t6: int;
    var $t7: $Mutation (Vec (int));
    var $t8: int;
    var $t9: $Mutation (Vec (int));
    var $t10: int;
    var $t11: $Mutation (Vec (int));
    var $t12: Vec (int);
    var $t13: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t11));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:125:19+20
    assume {:print "$at(2,3347,3367)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,3347,3367)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,25):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:125:13+3
    assume {:print "$track_local(1,25,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:126:19+20
    assume {:print "$at(2,3387,3407)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,3387,3407)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,25):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:126:13+3
    assume {:print "$track_local(1,25,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:127:27+8
    assume {:print "$at(2,3435,3443)"} true;
    $t3 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:127:37+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // Vector::push_back<u64>($t3, $t4) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:127:9+30
    call $t3 := $1_Vector_push_back'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,3417,3447)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,25):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:127:9+30
    $t0 := $Dereference($t3);

    // $t5 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:128:27+8
    assume {:print "$at(2,3475,3483)"} true;
    $t5 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t6 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:128:37+1
    $t6 := 2;
    assume $IsValid'u64'($t6);

    // Vector::push_back<u64>($t5, $t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:128:9+30
    call $t5 := $1_Vector_push_back'u64'($t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,3457,3487)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,25):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:128:9+30
    $t0 := $Dereference($t5);

    // $t7 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:129:27+8
    assume {:print "$at(2,3515,3523)"} true;
    $t7 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t8 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:129:37+1
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // Vector::push_back<u64>($t7, $t8) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:129:9+30
    call $t7 := $1_Vector_push_back'u64'($t7, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,3497,3527)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,25):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:129:9+30
    $t1 := $Dereference($t7);

    // $t9 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:130:27+8
    assume {:print "$at(2,3555,3563)"} true;
    $t9 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t10 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:130:37+1
    $t10 := 2;
    assume $IsValid'u64'($t10);

    // Vector::push_back<u64>($t9, $t10) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:130:9+30
    call $t9 := $1_Vector_push_back'u64'($t9, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,3537,3567)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,25):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:130:9+30
    $t1 := $Dereference($t9);

    // $t11 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:131:25+8
    assume {:print "$at(2,3593,3601)"} true;
    $t11 := $Mutation($Local(0), EmptyVec(), $t0);

    // Vector::reverse<u64>($t11) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:131:9+25
    call $t11 := $1_Vector_reverse'u64'($t11);
    if ($abort_flag) {
        assume {:print "$at(2,3577,3602)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,25):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:131:9+25
    $t0 := $Dereference($t11);

    // $t12 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:132:10+3
    assume {:print "$at(2,3613,3616)"} true;
    $t12 := $t0;

    // $t13 := move($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:132:15+3
    $t13 := $t1;

    // trace_return[0]($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:132:9+10
    assume {:print "$track_return(1,25,0):", $t12} $t12 == $t12;

    // trace_return[1]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:132:9+10
    assume {:print "$track_return(1,25,1):", $t13} $t13 == $t13;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:133:5+1
    assume {:print "$at(2,3627,3628)"} true;
L1:

    // assert Neq<vector<u64>>($t12, $t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:135:9+29
    assume {:print "$at(2,3662,3691)"} true;
    assert {:msg "assert_failed(2,3662,3691): post-condition does not hold"}
      !$IsEqual'vec'u64''($t12, $t13);

    // return ($t12, $t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:135:9+29
    $ret0 := $t12;
    $ret1 := $t13;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:133:5+1
    assume {:print "$at(2,3627,3628)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:133:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_slice [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:234:5+475
procedure {:timeLimit 40} $42_TestVector_test_slice$verify() returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (Vec (int));
    var $t6: int;
    var $t7: $Mutation (Vec (int));
    var $t8: int;
    var $t9: $Mutation (Vec (int));
    var $t10: int;
    var $t11: $Mutation (Vec (int));
    var $t12: int;
    var $t13: $Mutation (Vec (int));
    var $t14: int;
    var $t15: $Mutation (Vec (int));
    var $t16: int;
    var $t17: $Mutation (Vec (int));
    var $t18: int;
    var $t19: Vec (int);
    var $t20: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t11));
    assume IsEmptyVec(p#$Mutation($t13));
    assume IsEmptyVec(p#$Mutation($t15));
    assume IsEmptyVec(p#$Mutation($t17));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:236:19+20
    assume {:print "$at(2,6368,6388)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,6368,6388)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,26):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:236:13+3
    assume {:print "$track_local(1,26,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:237:19+20
    assume {:print "$at(2,6408,6428)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,6408,6428)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,26):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:237:13+3
    assume {:print "$track_local(1,26,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:238:27+8
    assume {:print "$at(2,6456,6464)"} true;
    $t3 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:238:37+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // Vector::push_back<u64>($t3, $t4) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:238:9+30
    call $t3 := $1_Vector_push_back'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,6438,6468)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,26):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:238:9+30
    $t0 := $Dereference($t3);

    // $t5 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:239:27+8
    assume {:print "$at(2,6496,6504)"} true;
    $t5 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t6 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:239:37+1
    $t6 := 2;
    assume $IsValid'u64'($t6);

    // Vector::push_back<u64>($t5, $t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:239:9+30
    call $t5 := $1_Vector_push_back'u64'($t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,6478,6508)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,26):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:239:9+30
    $t0 := $Dereference($t5);

    // $t7 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:240:27+8
    assume {:print "$at(2,6536,6544)"} true;
    $t7 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t8 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:240:37+1
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // Vector::push_back<u64>($t7, $t8) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:240:9+30
    call $t7 := $1_Vector_push_back'u64'($t7, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,6518,6548)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,26):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:240:9+30
    $t1 := $Dereference($t7);

    // $t9 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:241:27+8
    assume {:print "$at(2,6576,6584)"} true;
    $t9 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t10 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:241:37+1
    $t10 := 1;
    assume $IsValid'u64'($t10);

    // Vector::push_back<u64>($t9, $t10) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:241:9+30
    call $t9 := $1_Vector_push_back'u64'($t9, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,6558,6588)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,26):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:241:9+30
    $t1 := $Dereference($t9);

    // $t11 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:242:27+8
    assume {:print "$at(2,6616,6624)"} true;
    $t11 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t12 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:242:37+1
    $t12 := 2;
    assume $IsValid'u64'($t12);

    // Vector::push_back<u64>($t11, $t12) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:242:9+30
    call $t11 := $1_Vector_push_back'u64'($t11, $t12);
    if ($abort_flag) {
        assume {:print "$at(2,6598,6628)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,26):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:242:9+30
    $t1 := $Dereference($t11);

    // $t13 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:243:27+8
    assume {:print "$at(2,6656,6664)"} true;
    $t13 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t14 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:243:37+1
    $t14 := 3;
    assume $IsValid'u64'($t14);

    // Vector::push_back<u64>($t13, $t14) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:243:9+30
    call $t13 := $1_Vector_push_back'u64'($t13, $t14);
    if ($abort_flag) {
        assume {:print "$at(2,6638,6668)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,26):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:243:9+30
    $t1 := $Dereference($t13);

    // $t15 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:244:27+8
    assume {:print "$at(2,6696,6704)"} true;
    $t15 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t16 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:244:37+1
    $t16 := 1;
    assume $IsValid'u64'($t16);

    // Vector::push_back<u64>($t15, $t16) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:244:9+30
    call $t15 := $1_Vector_push_back'u64'($t15, $t16);
    if ($abort_flag) {
        assume {:print "$at(2,6678,6708)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,26):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:244:9+30
    $t1 := $Dereference($t15);

    // $t17 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:245:27+8
    assume {:print "$at(2,6736,6744)"} true;
    $t17 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t18 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:245:37+1
    $t18 := 2;
    assume $IsValid'u64'($t18);

    // Vector::push_back<u64>($t17, $t18) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:245:9+30
    call $t17 := $1_Vector_push_back'u64'($t17, $t18);
    if ($abort_flag) {
        assume {:print "$at(2,6718,6748)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,26):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:245:9+30
    $t1 := $Dereference($t17);

    // $t19 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:246:10+3
    assume {:print "$at(2,6759,6762)"} true;
    $t19 := $t0;

    // $t20 := move($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:246:15+3
    $t20 := $t1;

    // trace_return[0]($t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:246:9+10
    assume {:print "$track_return(1,26,0):", $t19} $t19 == $t19;

    // trace_return[1]($t20) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:246:9+10
    assume {:print "$track_return(1,26,1):", $t20} $t20 == $t20;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:247:5+1
    assume {:print "$at(2,6773,6774)"} true;
L1:

    // assert Eq<vector<u64>>($t19, Slice($t20, Range(1, 3))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:249:9+35
    assume {:print "$at(2,6805,6840)"} true;
    assert {:msg "assert_failed(2,6805,6840): post-condition does not hold"}
      $IsEqual'vec'u64''($t19, $SliceVecByRange($t20, $Range(1, 3)));

    // assert Neq<vector<u64>>($t19, Slice($t20, Range(0, 2))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:250:9+35
    assume {:print "$at(2,6849,6884)"} true;
    assert {:msg "assert_failed(2,6849,6884): post-condition does not hold"}
      !$IsEqual'vec'u64''($t19, $SliceVecByRange($t20, $Range(0, 2)));

    // assert Eq<vector<u64>>($t19, Slice($t20, Range(4, 6))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:251:9+35
    assume {:print "$at(2,6893,6928)"} true;
    assert {:msg "assert_failed(2,6893,6928): post-condition does not hold"}
      $IsEqual'vec'u64''($t19, $SliceVecByRange($t20, $Range(4, 6)));

    // assert Eq<vector<u64>>(Slice($t19, Range(0, 2)), Slice($t20, Range(4, 6))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:252:9+41
    assume {:print "$at(2,6937,6978)"} true;
    assert {:msg "assert_failed(2,6937,6978): post-condition does not hold"}
      $IsEqual'vec'u64''($SliceVecByRange($t19, $Range(0, 2)), $SliceVecByRange($t20, $Range(4, 6)));

    // assert Eq<vector<u64>>(Slice($t19, Range(1, 2)), Slice($t20, Range(2, 3))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:253:9+41
    assume {:print "$at(2,6987,7028)"} true;
    assert {:msg "assert_failed(2,6987,7028): post-condition does not hold"}
      $IsEqual'vec'u64''($SliceVecByRange($t19, $Range(1, 2)), $SliceVecByRange($t20, $Range(2, 3)));

    // assert Eq<vector<u64>>(Slice($t20, Range(1, 3)), Slice($t20, Range(4, 6))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:254:9+41
    assume {:print "$at(2,7037,7078)"} true;
    assert {:msg "assert_failed(2,7037,7078): post-condition does not hold"}
      $IsEqual'vec'u64''($SliceVecByRange($t20, $Range(1, 3)), $SliceVecByRange($t20, $Range(4, 6)));

    // return ($t19, $t20) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:254:9+41
    $ret0 := $t19;
    $ret1 := $t20;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:247:5+1
    assume {:print "$at(2,6773,6774)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:247:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_swap [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:139:5+391
procedure {:timeLimit 40} $42_TestVector_test_swap$verify() returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: Vec (int);
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (Vec (int));
    var $t6: int;
    var $t7: $Mutation (Vec (int));
    var $t8: int;
    var $t9: $Mutation (Vec (int));
    var $t10: int;
    var $t11: $Mutation (Vec (int));
    var $t12: int;
    var $t13: int;
    var $t14: $Mutation (Vec (int));
    var $t15: int;
    var $t16: int;
    var $t17: Vec (int);
    var $t18: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t11));
    assume IsEmptyVec(p#$Mutation($t14));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:141:19+20
    assume {:print "$at(2,3815,3835)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,3815,3835)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,27):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:141:13+3
    assume {:print "$track_local(1,27,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:142:19+20
    assume {:print "$at(2,3855,3875)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,3855,3875)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,27):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[ev2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:142:13+3
    assume {:print "$track_local(1,27,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:143:27+8
    assume {:print "$at(2,3903,3911)"} true;
    $t3 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:143:37+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // Vector::push_back<u64>($t3, $t4) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:143:9+30
    call $t3 := $1_Vector_push_back'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,3885,3915)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,27):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:143:9+30
    $t0 := $Dereference($t3);

    // $t5 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:144:27+8
    assume {:print "$at(2,3943,3951)"} true;
    $t5 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t6 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:144:37+1
    $t6 := 2;
    assume $IsValid'u64'($t6);

    // Vector::push_back<u64>($t5, $t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:144:9+30
    call $t5 := $1_Vector_push_back'u64'($t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,3925,3955)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,27):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:144:9+30
    $t0 := $Dereference($t5);

    // $t7 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:145:27+8
    assume {:print "$at(2,3983,3991)"} true;
    $t7 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t8 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:145:37+1
    $t8 := 2;
    assume $IsValid'u64'($t8);

    // Vector::push_back<u64>($t7, $t8) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:145:9+30
    call $t7 := $1_Vector_push_back'u64'($t7, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,3965,3995)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,27):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:145:9+30
    $t1 := $Dereference($t7);

    // $t9 := borrow_local($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:146:27+8
    assume {:print "$at(2,4023,4031)"} true;
    $t9 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t10 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:146:37+1
    $t10 := 1;
    assume $IsValid'u64'($t10);

    // Vector::push_back<u64>($t9, $t10) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:146:9+30
    call $t9 := $1_Vector_push_back'u64'($t9, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,4005,4035)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,27):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:146:9+30
    $t1 := $Dereference($t9);

    // $t11 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:147:22+8
    assume {:print "$at(2,4058,4066)"} true;
    $t11 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t12 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:147:32+1
    $t12 := 0;
    assume $IsValid'u64'($t12);

    // $t13 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:147:35+1
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // Vector::swap<u64>($t11, $t12, $t13) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:147:9+28
    call $t11 := $1_Vector_swap'u64'($t11, $t12, $t13);
    if ($abort_flag) {
        assume {:print "$at(2,4045,4073)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,27):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:147:9+28
    $t0 := $Dereference($t11);

    // $t14 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:148:22+8
    assume {:print "$at(2,4096,4104)"} true;
    $t14 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t15 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:148:32+1
    $t15 := 0;
    assume $IsValid'u64'($t15);

    // $t16 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:148:35+1
    $t16 := 1;
    assume $IsValid'u64'($t16);

    // Vector::swap<u64>($t14, $t15, $t16) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:148:9+28
    call $t14 := $1_Vector_swap'u64'($t14, $t15, $t16);
    if ($abort_flag) {
        assume {:print "$at(2,4083,4111)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,27):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:148:9+28
    $t0 := $Dereference($t14);

    // $t17 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:149:10+3
    assume {:print "$at(2,4122,4125)"} true;
    $t17 := $t0;

    // $t18 := move($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:149:15+3
    $t18 := $t1;

    // trace_return[0]($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:149:9+10
    assume {:print "$track_return(1,27,0):", $t17} $t17 == $t17;

    // trace_return[1]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:149:9+10
    assume {:print "$track_return(1,27,1):", $t18} $t18 == $t18;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:150:5+1
    assume {:print "$at(2,4136,4137)"} true;
L1:

    // assert Eq<vector<u64>>($t17, $t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:152:9+29
    assume {:print "$at(2,4167,4196)"} true;
    assert {:msg "assert_failed(2,4167,4196): post-condition does not hold"}
      $IsEqual'vec'u64''($t17, $t18);

    // return ($t17, $t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:152:9+29
    $ret0 := $t17;
    $ret1 := $t18;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:150:5+1
    assume {:print "$at(2,4136,4137)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:150:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestVector::test_swap_abort1 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:156:5+152
procedure {:timeLimit 40} $42_TestVector_test_swap_abort1$verify() returns ()
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: int;
    var $t2: $Mutation (Vec (int));
    var $t3: int;
    var $t4: $Mutation (Vec (int));
    var $t5: int;
    var $t6: int;
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t4));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:158:19+20
    assume {:print "$at(2,4347,4367)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,4347,4367)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,28):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:158:13+3
    assume {:print "$track_local(1,28,0):", $t0} $t0 == $t0;

    // $t2 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:159:27+8
    assume {:print "$at(2,4395,4403)"} true;
    $t2 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:159:37+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // Vector::push_back<u64>($t2, $t3) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:159:9+30
    call $t2 := $1_Vector_push_back'u64'($t2, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,4377,4407)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,28):", $t1} $t1 == $t1;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:159:9+30
    $t0 := $Dereference($t2);

    // $t4 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:160:22+8
    assume {:print "$at(2,4430,4438)"} true;
    $t4 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t5 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:160:32+1
    $t5 := 1;
    assume $IsValid'u64'($t5);

    // $t6 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:160:35+1
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // Vector::swap<u64>($t4, $t5, $t6) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:160:9+28
    call $t4 := $1_Vector_swap'u64'($t4, $t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,4417,4445)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,28):", $t1} $t1 == $t1;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:160:9+28
    $t0 := $Dereference($t4);

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:161:5+1
    assume {:print "$at(2,4451,4452)"} true;
L1:

    // assert Not(true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:163:9+15
    assume {:print "$at(2,4489,4504)"} true;
    assert {:msg "assert_failed(2,4489,4504): function does not abort under this condition"}
      !true;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:163:9+15
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:161:5+1
    assume {:print "$at(2,4451,4452)"} true;
L2:

    // assert true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:162:5+53
    assume {:print "$at(2,4457,4510)"} true;
    assert {:msg "assert_failed(2,4457,4510): abort not covered by any of the `aborts_if` clauses"}
      true;

    // abort($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:162:5+53
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun TestVector::test_swap_abort2 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:167:5+152
procedure {:timeLimit 40} $42_TestVector_test_swap_abort2$verify() returns ()
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: int;
    var $t2: $Mutation (Vec (int));
    var $t3: int;
    var $t4: $Mutation (Vec (int));
    var $t5: int;
    var $t6: int;
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t4));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:169:19+20
    assume {:print "$at(2,4656,4676)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,4656,4676)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,29):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_local[ev1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:169:13+3
    assume {:print "$track_local(1,29,0):", $t0} $t0 == $t0;

    // $t2 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:170:27+8
    assume {:print "$at(2,4704,4712)"} true;
    $t2 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:170:37+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // Vector::push_back<u64>($t2, $t3) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:170:9+30
    call $t2 := $1_Vector_push_back'u64'($t2, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,4686,4716)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,29):", $t1} $t1 == $t1;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:170:9+30
    $t0 := $Dereference($t2);

    // $t4 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:171:22+8
    assume {:print "$at(2,4739,4747)"} true;
    $t4 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t5 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:171:32+1
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:171:35+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // Vector::swap<u64>($t4, $t5, $t6) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:171:9+28
    call $t4 := $1_Vector_swap'u64'($t4, $t5, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,4726,4754)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,29):", $t1} $t1 == $t1;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:171:9+28
    $t0 := $Dereference($t4);

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:172:5+1
    assume {:print "$at(2,4760,4761)"} true;
L1:

    // assert Not(true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:174:9+15
    assume {:print "$at(2,4798,4813)"} true;
    assert {:msg "assert_failed(2,4798,4813): function does not abort under this condition"}
      !true;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:174:9+15
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:172:5+1
    assume {:print "$at(2,4760,4761)"} true;
L2:

    // assert true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:173:5+53
    assume {:print "$at(2,4766,4819)"} true;
    assert {:msg "assert_failed(2,4766,4819): abort not covered by any of the `aborts_if` clauses"}
      true;

    // abort($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:173:5+53
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun TestVector::test_vector_equal [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:14:5+68
procedure {:timeLimit 40} $42_TestVector_test_vector_equal$verify(_$t0: Vec (int), _$t1: $Mutation (Vec (int))) returns ($ret0: $Mutation (Vec (int)))
{
    // declare local variables
    var $t2: Vec (int);
    var $t0: Vec (int);
    var $t1: $Mutation (Vec (int));
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:14:5+68
    assume {:print "$at(2,331,399)"} true;
    assume $IsValid'vec'u64''($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:14:5+68
    assume $IsValid'vec'u64''($Dereference($t1));

    // $t2 := read_ref($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:14:5+1
    $t2 := $Dereference($t1);

    // trace_local[_v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:14:5+1
    assume {:print "$track_local(1,30,0):", $t0} $t0 == $t0;

    // trace_local[_w]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:14:5+1
    $temp_0'vec'u64'' := $Dereference($t1);
    assume {:print "$track_local(1,30,1):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // trace_local[_w]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:14:66+7
    $temp_0'vec'u64'' := $Dereference($t1);
    assume {:print "$track_local(1,30,1):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:15:5+1
    assume {:print "$at(2,398,399)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:17:9+16
    assume {:print "$at(2,437,453)"} true;
    assert {:msg "assert_failed(2,437,453): function does not abort under this condition"}
      !false;

    // assert Eq<vector<u64>>($t0, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:18:9+17
    assume {:print "$at(2,462,479)"} true;
    assert {:msg "assert_failed(2,462,479): post-condition does not hold"}
      $IsEqual'vec'u64''($t0, $t0);

    // assert Eq<vector<u64>>($t0, Slice($t0, Range(0, Len<u64>($t0)))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:19:9+29
    assume {:print "$at(2,488,517)"} true;
    assert {:msg "assert_failed(2,488,517): post-condition does not hold"}
      $IsEqual'vec'u64''($t0, $SliceVecByRange($t0, $Range(0, LenVec($t0))));

    // assert Eq<vector<u64>>($t1, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:20:9+17
    assume {:print "$at(2,526,543)"} true;
    assert {:msg "assert_failed(2,526,543): post-condition does not hold"}
      $IsEqual'vec'u64''($Dereference($t1), $Dereference($t1));

    // assert Eq<vector<u64>>($t2, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:21:9+27
    assume {:print "$at(2,552,579)"} true;
    assert {:msg "assert_failed(2,552,579): post-condition does not hold"}
      $IsEqual'vec'u64''($t2, $t2);

    // assert Eq<vector<u64>>($t1, Slice($t1, Range(0, Len<u64>($t1)))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:22:9+29
    assume {:print "$at(2,588,617)"} true;
    assert {:msg "assert_failed(2,588,617): post-condition does not hold"}
      $IsEqual'vec'u64''($Dereference($t1), $SliceVecByRange($Dereference($t1), $Range(0, LenVec($Dereference($t1)))));

    // assert Eq<vector<u64>>($t2, Slice($t2, Range(0, Len<u64>($t2)))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:23:9+39
    assume {:print "$at(2,626,665)"} true;
    assert {:msg "assert_failed(2,626,665): post-condition does not hold"}
      $IsEqual'vec'u64''($t2, $SliceVecByRange($t2, $Range(0, LenVec($t2))));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:23:9+39
    $ret0 := $t1;
    return;

}

// fun TestVector::unwrap_or<u64> [baseline] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:456:5+189
procedure {:inline 1} $42_TestVector_unwrap_or'u64'(_$t0: $42_TestVector_T'u64', _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: Vec (int);
    var $t4: Vec (int);
    var $t5: bool;
    var $t6: int;
    var $t7: $Mutation (Vec (int));
    var $t8: int;
    var $t0: $42_TestVector_T'u64';
    var $t1: int;
    var $temp_0'$42_TestVector_T'u64'': $42_TestVector_T'u64';
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t7));

    // bytecode translation starts here
    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:456:5+1
    assume {:print "$at(2,12457,12458)"} true;
    assume {:print "$track_local(1,31,0):", $t0} $t0 == $t0;

    // trace_local[e]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:456:5+1
    assume {:print "$track_local(1,31,1):", $t1} $t1 == $t1;

    // $t3 := unpack TestVector::T<#0>($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:457:13+12
    assume {:print "$at(2,12519,12531)"} true;
    $t3 := $v#$42_TestVector_T'u64'($t0);

    // trace_local[v]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:457:23+1
    assume {:print "$track_local(1,31,3):", $t3} $t3 == $t3;

    // $t4 := copy($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:33+2
    assume {:print "$at(2,12569,12571)"} true;
    $t4 := $t3;

    // $t5 := Vector::is_empty<#0>($t4) on_abort goto L5 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:13+23
    call $t5 := $1_Vector_is_empty'u64'($t4);
    if ($abort_flag) {
        assume {:print "$at(2,12549,12572)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,31):", $t6} $t6 == $t6;
        goto L5;
    }

    // if ($t5) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    if ($t5) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:459:13+1
    assume {:print "$at(2,12586,12587)"} true;
L0:

    // $t2 := $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    assume {:print "$at(2,12545,12640)"} true;
    $t2 := $t1;

    // trace_local[tmp#$2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    assume {:print "$track_local(1,31,2):", $t1} $t1 == $t1;

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:461:33+6
    assume {:print "$at(2,12633,12639)"} true;
L2:

    // $t7 := borrow_local($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:461:33+6
    $t7 := $Mutation($Local(3), EmptyVec(), $t3);

    // $t8 := Vector::pop_back<#0>($t7) on_abort goto L5 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:461:13+27
    call $t8,$t7 := $1_Vector_pop_back'u64'($t7);
    if ($abort_flag) {
        assume {:print "$at(2,12613,12640)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,31):", $t6} $t6 == $t6;
        goto L5;
    }

    // write_back[LocalRoot($t3)@]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:461:13+27
    $t3 := $Dereference($t7);

    // $t2 := $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    assume {:print "$at(2,12545,12640)"} true;
    $t2 := $t8;

    // trace_local[tmp#$2]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    assume {:print "$track_local(1,31,2):", $t8} $t8 == $t8;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
L3:

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    assume {:print "$track_return(1,31,0):", $t2} $t2 == $t2;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:462:5+1
    assume {:print "$at(2,12645,12646)"} true;
L4:

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:462:5+1
    $ret0 := $t2;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:462:5+1
L5:

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:462:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestVector::unwrap_or [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:456:5+189
procedure {:timeLimit 40} $42_TestVector_unwrap_or$verify(_$t0: $42_TestVector_T'#0', _$t1: #0) returns ($ret0: #0)
{
    // declare local variables
    var $t2: #0;
    var $t3: Vec (#0);
    var $t4: Vec (#0);
    var $t5: bool;
    var $t6: int;
    var $t7: $Mutation (Vec (#0));
    var $t8: #0;
    var $t0: $42_TestVector_T'#0';
    var $t1: #0;
    var $temp_0'#0': #0;
    var $temp_0'$42_TestVector_T'#0'': $42_TestVector_T'#0';
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t7));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:456:5+189
    assume {:print "$at(2,12457,12646)"} true;
    assume $IsValid'$42_TestVector_T'#0''($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:456:5+189
    assume $IsValid'#0'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:456:5+1
    assume {:print "$track_local(1,31,0):", $t0} $t0 == $t0;

    // trace_local[e]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:456:5+1
    assume {:print "$track_local(1,31,1):", $t1} $t1 == $t1;

    // $t3 := unpack TestVector::T<#0>($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:457:13+12
    assume {:print "$at(2,12519,12531)"} true;
    $t3 := $v#$42_TestVector_T'#0'($t0);

    // trace_local[v]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:457:23+1
    assume {:print "$track_local(1,31,3):", $t3} $t3 == $t3;

    // $t4 := copy($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:33+2
    assume {:print "$at(2,12569,12571)"} true;
    $t4 := $t3;

    // $t5 := Vector::is_empty<#0>($t4) on_abort goto L5 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:13+23
    call $t5 := $1_Vector_is_empty'#0'($t4);
    if ($abort_flag) {
        assume {:print "$at(2,12549,12572)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,31):", $t6} $t6 == $t6;
        goto L5;
    }

    // if ($t5) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    if ($t5) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:459:13+1
    assume {:print "$at(2,12586,12587)"} true;
L0:

    // $t2 := $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    assume {:print "$at(2,12545,12640)"} true;
    $t2 := $t1;

    // trace_local[tmp#$2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    assume {:print "$track_local(1,31,2):", $t1} $t1 == $t1;

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:461:33+6
    assume {:print "$at(2,12633,12639)"} true;
L2:

    // $t7 := borrow_local($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:461:33+6
    $t7 := $Mutation($Local(3), EmptyVec(), $t3);

    // $t8 := Vector::pop_back<#0>($t7) on_abort goto L5 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:461:13+27
    call $t8,$t7 := $1_Vector_pop_back'#0'($t7);
    if ($abort_flag) {
        assume {:print "$at(2,12613,12640)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,31):", $t6} $t6 == $t6;
        goto L5;
    }

    // write_back[LocalRoot($t3)@]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:461:13+27
    $t3 := $Dereference($t7);

    // $t2 := $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    assume {:print "$at(2,12545,12640)"} true;
    $t2 := $t8;

    // trace_local[tmp#$2]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    assume {:print "$track_local(1,31,2):", $t8} $t8 == $t8;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
L3:

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:458:9+95
    assume {:print "$track_return(1,31,0):", $t2} $t2 == $t2;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:462:5+1
    assume {:print "$at(2,12645,12646)"} true;
L4:

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:462:5+1
    $ret0 := $t2;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:462:5+1
L5:

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:462:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestVector::vector_of_proper_positives [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:189:5+210
procedure {:timeLimit 40} $42_TestVector_vector_of_proper_positives$verify() returns ($ret0: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: int;
    var $t2: $Mutation (Vec (int));
    var $t3: int;
    var $t4: $Mutation (Vec (int));
    var $t5: int;
    var $t6: $Mutation (Vec (int));
    var $t7: int;
    var $t8: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t6));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:190:17+15
    assume {:print "$at(2,5224,5239)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,5224,5239)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,32):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:190:13+1
    assume {:print "$track_local(1,32,0):", $t0} $t0 == $t0;

    // $t2 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:191:27+6
    assume {:print "$at(2,5267,5273)"} true;
    $t2 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:191:35+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // Vector::push_back<u64>($t2, $t3) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:191:9+28
    call $t2 := $1_Vector_push_back'u64'($t2, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,5249,5277)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,32):", $t1} $t1 == $t1;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:191:9+28
    $t0 := $Dereference($t2);

    // $t4 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:192:27+6
    assume {:print "$at(2,5305,5311)"} true;
    $t4 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t5 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:192:35+1
    $t5 := 2;
    assume $IsValid'u64'($t5);

    // Vector::push_back<u64>($t4, $t5) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:192:9+28
    call $t4 := $1_Vector_push_back'u64'($t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,5287,5315)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,32):", $t1} $t1 == $t1;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:192:9+28
    $t0 := $Dereference($t4);

    // $t6 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:193:27+6
    assume {:print "$at(2,5343,5349)"} true;
    $t6 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t7 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:193:35+1
    $t7 := 3;
    assume $IsValid'u64'($t7);

    // Vector::push_back<u64>($t6, $t7) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:193:9+28
    call $t6 := $1_Vector_push_back'u64'($t6, $t7);
    if ($abort_flag) {
        assume {:print "$at(2,5325,5353)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,32):", $t1} $t1 == $t1;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:193:9+28
    $t0 := $Dereference($t6);

    // $t8 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:194:9+1
    assume {:print "$at(2,5363,5364)"} true;
    $t8 := $t0;

    // trace_return[0]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:194:9+1
    assume {:print "$track_return(1,32,0):", $t8} $t8 == $t8;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:195:5+1
    assume {:print "$at(2,5369,5370)"} true;
L1:

    // assert forall n: $t8: Gt(n, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:197:7+34
    assume {:print "$at(2,5415,5449)"} true;
    assert {:msg "assert_failed(2,5415,5449): post-condition does not hold"}
      (var $range_0 := $t8; (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var n := ReadVec($range_0, $i_1);
    ((n > 0)))));

    // assert forall i: Range(0, Len<u64>($t8)), j: Range(0, Len<u64>($t8)) where Eq<u64>(Index($t8, i), Index($t8, j)): Eq<num>(i, j) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:198:7+94
    assume {:print "$at(2,5456,5550)"} true;
    assert {:msg "assert_failed(2,5456,5550): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($t8)); (var $range_1 := $Range(0, LenVec($t8)); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var i := $i_2;
    (var j := $i_3;
    ($IsEqual'u64'(ReadVec($t8, i), ReadVec($t8, j)))  ==> ($IsEqual'num'(i, j)))))));

    // return $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:198:7+94
    $ret0 := $t8;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:195:5+1
    assume {:print "$at(2,5369,5370)"} true;
L2:

    // abort($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/simple_vector_client.move:195:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}
