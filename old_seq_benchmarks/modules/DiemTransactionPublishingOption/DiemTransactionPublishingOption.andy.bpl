
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
// Native Vector implementation for element type `$1_DiemAccount_KeyRotationCapability`


function {:inline} $IsEqual'vec'$1_DiemAccount_KeyRotationCapability''(v1: Vec ($1_DiemAccount_KeyRotationCapability), v2: Vec ($1_DiemAccount_KeyRotationCapability)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_DiemAccount_KeyRotationCapability''(v: Vec ($1_DiemAccount_KeyRotationCapability)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_DiemAccount_KeyRotationCapability'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), e: $1_DiemAccount_KeyRotationCapability): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), e: $1_DiemAccount_KeyRotationCapability): int;
axiom (forall v: Vec ($1_DiemAccount_KeyRotationCapability), e: $1_DiemAccount_KeyRotationCapability:: {$IndexOfVec'$1_DiemAccount_KeyRotationCapability'(v, e)}
    (var i := $IndexOfVec'$1_DiemAccount_KeyRotationCapability'(v, e);
     if (!$ContainsVec'$1_DiemAccount_KeyRotationCapability'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_DiemAccount_KeyRotationCapability'(): Vec ($1_DiemAccount_KeyRotationCapability) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_DiemAccount_KeyRotationCapability'() returns (v: Vec ($1_DiemAccount_KeyRotationCapability)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_DiemAccount_KeyRotationCapability'(): Vec ($1_DiemAccount_KeyRotationCapability) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), val: $1_DiemAccount_KeyRotationCapability) returns (m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), val: $1_DiemAccount_KeyRotationCapability): Vec ($1_DiemAccount_KeyRotationCapability) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) returns (e: $1_DiemAccount_KeyRotationCapability, m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) {
    var v: Vec ($1_DiemAccount_KeyRotationCapability);
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

procedure {:inline 1} $1_Vector_append'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), other: Vec ($1_DiemAccount_KeyRotationCapability)) returns (m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) returns (m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), i: int) returns (dst: $1_DiemAccount_KeyRotationCapability) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), i: int): $1_DiemAccount_KeyRotationCapability {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), index: int)
returns (dst: $Mutation ($1_DiemAccount_KeyRotationCapability), m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)))
{
    var v: Vec ($1_DiemAccount_KeyRotationCapability);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), i: int): $1_DiemAccount_KeyRotationCapability {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), i: int, j: int) returns (m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)))
{
    var v: Vec ($1_DiemAccount_KeyRotationCapability);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), i: int, j: int): Vec ($1_DiemAccount_KeyRotationCapability) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), i: int) returns (e: $1_DiemAccount_KeyRotationCapability, m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)))
{
    var v: Vec ($1_DiemAccount_KeyRotationCapability);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), i: int) returns (e: $1_DiemAccount_KeyRotationCapability, m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)))
{
    var len: int;
    var v: Vec ($1_DiemAccount_KeyRotationCapability);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), e: $1_DiemAccount_KeyRotationCapability) returns (res: bool)  {
    res := $ContainsVec'$1_DiemAccount_KeyRotationCapability'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), e: $1_DiemAccount_KeyRotationCapability) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_DiemAccount_KeyRotationCapability'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_DiemAccount_WithdrawCapability`


function {:inline} $IsEqual'vec'$1_DiemAccount_WithdrawCapability''(v1: Vec ($1_DiemAccount_WithdrawCapability), v2: Vec ($1_DiemAccount_WithdrawCapability)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_DiemAccount_WithdrawCapability''(v: Vec ($1_DiemAccount_WithdrawCapability)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_DiemAccount_WithdrawCapability'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), e: $1_DiemAccount_WithdrawCapability): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemAccount_WithdrawCapability'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), e: $1_DiemAccount_WithdrawCapability): int;
axiom (forall v: Vec ($1_DiemAccount_WithdrawCapability), e: $1_DiemAccount_WithdrawCapability:: {$IndexOfVec'$1_DiemAccount_WithdrawCapability'(v, e)}
    (var i := $IndexOfVec'$1_DiemAccount_WithdrawCapability'(v, e);
     if (!$ContainsVec'$1_DiemAccount_WithdrawCapability'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemAccount_WithdrawCapability'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_DiemAccount_WithdrawCapability'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_DiemAccount_WithdrawCapability'(): Vec ($1_DiemAccount_WithdrawCapability) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_DiemAccount_WithdrawCapability'() returns (v: Vec ($1_DiemAccount_WithdrawCapability)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_DiemAccount_WithdrawCapability'(): Vec ($1_DiemAccount_WithdrawCapability) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), val: $1_DiemAccount_WithdrawCapability) returns (m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), val: $1_DiemAccount_WithdrawCapability): Vec ($1_DiemAccount_WithdrawCapability) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) returns (e: $1_DiemAccount_WithdrawCapability, m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) {
    var v: Vec ($1_DiemAccount_WithdrawCapability);
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

procedure {:inline 1} $1_Vector_append'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), other: Vec ($1_DiemAccount_WithdrawCapability)) returns (m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) returns (m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), i: int) returns (dst: $1_DiemAccount_WithdrawCapability) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), i: int): $1_DiemAccount_WithdrawCapability {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), index: int)
returns (dst: $Mutation ($1_DiemAccount_WithdrawCapability), m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability)))
{
    var v: Vec ($1_DiemAccount_WithdrawCapability);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), i: int): $1_DiemAccount_WithdrawCapability {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), i: int, j: int) returns (m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability)))
{
    var v: Vec ($1_DiemAccount_WithdrawCapability);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), i: int, j: int): Vec ($1_DiemAccount_WithdrawCapability) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), i: int) returns (e: $1_DiemAccount_WithdrawCapability, m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability)))
{
    var v: Vec ($1_DiemAccount_WithdrawCapability);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), i: int) returns (e: $1_DiemAccount_WithdrawCapability, m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability)))
{
    var len: int;
    var v: Vec ($1_DiemAccount_WithdrawCapability);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), e: $1_DiemAccount_WithdrawCapability) returns (res: bool)  {
    res := $ContainsVec'$1_DiemAccount_WithdrawCapability'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), e: $1_DiemAccount_WithdrawCapability) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_DiemAccount_WithdrawCapability'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_DiemSystem_ValidatorInfo`


function {:inline} $IsEqual'vec'$1_DiemSystem_ValidatorInfo''(v1: Vec ($1_DiemSystem_ValidatorInfo), v2: Vec ($1_DiemSystem_ValidatorInfo)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_DiemSystem_ValidatorInfo''(v: Vec ($1_DiemSystem_ValidatorInfo)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_DiemSystem_ValidatorInfo'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemSystem_ValidatorInfo'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo): int;
axiom (forall v: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo:: {$IndexOfVec'$1_DiemSystem_ValidatorInfo'(v, e)}
    (var i := $IndexOfVec'$1_DiemSystem_ValidatorInfo'(v, e);
     if (!$ContainsVec'$1_DiemSystem_ValidatorInfo'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemSystem_ValidatorInfo'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_DiemSystem_ValidatorInfo'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_DiemSystem_ValidatorInfo'(): Vec ($1_DiemSystem_ValidatorInfo) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_DiemSystem_ValidatorInfo'() returns (v: Vec ($1_DiemSystem_ValidatorInfo)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_DiemSystem_ValidatorInfo'(): Vec ($1_DiemSystem_ValidatorInfo) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), val: $1_DiemSystem_ValidatorInfo) returns (m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), val: $1_DiemSystem_ValidatorInfo): Vec ($1_DiemSystem_ValidatorInfo) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) returns (e: $1_DiemSystem_ValidatorInfo, m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) {
    var v: Vec ($1_DiemSystem_ValidatorInfo);
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

procedure {:inline 1} $1_Vector_append'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), other: Vec ($1_DiemSystem_ValidatorInfo)) returns (m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) returns (m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), i: int) returns (dst: $1_DiemSystem_ValidatorInfo) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), i: int): $1_DiemSystem_ValidatorInfo {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), index: int)
returns (dst: $Mutation ($1_DiemSystem_ValidatorInfo), m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo)))
{
    var v: Vec ($1_DiemSystem_ValidatorInfo);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), i: int): $1_DiemSystem_ValidatorInfo {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), i: int, j: int) returns (m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo)))
{
    var v: Vec ($1_DiemSystem_ValidatorInfo);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), i: int, j: int): Vec ($1_DiemSystem_ValidatorInfo) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), i: int) returns (e: $1_DiemSystem_ValidatorInfo, m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo)))
{
    var v: Vec ($1_DiemSystem_ValidatorInfo);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), i: int) returns (e: $1_DiemSystem_ValidatorInfo, m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo)))
{
    var len: int;
    var v: Vec ($1_DiemSystem_ValidatorInfo);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo) returns (res: bool)  {
    res := $ContainsVec'$1_DiemSystem_ValidatorInfo'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_DiemSystem_ValidatorInfo'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_Diem_PreburnWithMetadata'$1_XDX_XDX'`


function {:inline} $IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''(v1: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), v2: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), e: $1_Diem_PreburnWithMetadata'$1_XDX_XDX'): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(ReadVec(v, i), e))
}

function $IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), e: $1_Diem_PreburnWithMetadata'$1_XDX_XDX'): int;
axiom (forall v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), e: $1_Diem_PreburnWithMetadata'$1_XDX_XDX':: {$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v, e)}
    (var i := $IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v, e);
     if (!$ContainsVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(): Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX') {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''() returns (v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(): Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX') {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')), val: $1_Diem_PreburnWithMetadata'$1_XDX_XDX') returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), val: $1_Diem_PreburnWithMetadata'$1_XDX_XDX'): Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX') {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'))) returns (e: $1_Diem_PreburnWithMetadata'$1_XDX_XDX', m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'))) {
    var v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX');
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

procedure {:inline 1} $1_Vector_append'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')), other: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')) returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'))) returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), i: int) returns (dst: $1_Diem_PreburnWithMetadata'$1_XDX_XDX') {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), i: int): $1_Diem_PreburnWithMetadata'$1_XDX_XDX' {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')), index: int)
returns (dst: $Mutation ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')))
{
    var v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX');
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), i: int): $1_Diem_PreburnWithMetadata'$1_XDX_XDX' {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')), i: int, j: int) returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')))
{
    var v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX');
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), i: int, j: int): Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX') {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')), i: int) returns (e: $1_Diem_PreburnWithMetadata'$1_XDX_XDX', m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')))
{
    var v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX');

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')), i: int) returns (e: $1_Diem_PreburnWithMetadata'$1_XDX_XDX', m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')))
{
    var len: int;
    var v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX');

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), e: $1_Diem_PreburnWithMetadata'$1_XDX_XDX') returns (res: bool)  {
    res := $ContainsVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), e: $1_Diem_PreburnWithMetadata'$1_XDX_XDX') returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_Diem_PreburnWithMetadata'$1_XUS_XUS'`


function {:inline} $IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''(v1: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), v2: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), e: $1_Diem_PreburnWithMetadata'$1_XUS_XUS'): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(ReadVec(v, i), e))
}

function $IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), e: $1_Diem_PreburnWithMetadata'$1_XUS_XUS'): int;
axiom (forall v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), e: $1_Diem_PreburnWithMetadata'$1_XUS_XUS':: {$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v, e)}
    (var i := $IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v, e);
     if (!$ContainsVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(): Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS') {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''() returns (v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(): Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS') {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')), val: $1_Diem_PreburnWithMetadata'$1_XUS_XUS') returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), val: $1_Diem_PreburnWithMetadata'$1_XUS_XUS'): Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS') {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'))) returns (e: $1_Diem_PreburnWithMetadata'$1_XUS_XUS', m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'))) {
    var v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS');
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

procedure {:inline 1} $1_Vector_append'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')), other: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')) returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'))) returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), i: int) returns (dst: $1_Diem_PreburnWithMetadata'$1_XUS_XUS') {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), i: int): $1_Diem_PreburnWithMetadata'$1_XUS_XUS' {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')), index: int)
returns (dst: $Mutation ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')))
{
    var v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS');
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), i: int): $1_Diem_PreburnWithMetadata'$1_XUS_XUS' {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')), i: int, j: int) returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')))
{
    var v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS');
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), i: int, j: int): Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS') {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')), i: int) returns (e: $1_Diem_PreburnWithMetadata'$1_XUS_XUS', m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')))
{
    var v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS');

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')), i: int) returns (e: $1_Diem_PreburnWithMetadata'$1_XUS_XUS', m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')))
{
    var len: int;
    var v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS');

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), e: $1_Diem_PreburnWithMetadata'$1_XUS_XUS') returns (res: bool)  {
    res := $ContainsVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), e: $1_Diem_PreburnWithMetadata'$1_XUS_XUS') returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_ValidatorConfig_Config`


function {:inline} $IsEqual'vec'$1_ValidatorConfig_Config''(v1: Vec ($1_ValidatorConfig_Config), v2: Vec ($1_ValidatorConfig_Config)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_ValidatorConfig_Config''(v: Vec ($1_ValidatorConfig_Config)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_ValidatorConfig_Config'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), e: $1_ValidatorConfig_Config): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_ValidatorConfig_Config'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), e: $1_ValidatorConfig_Config): int;
axiom (forall v: Vec ($1_ValidatorConfig_Config), e: $1_ValidatorConfig_Config:: {$IndexOfVec'$1_ValidatorConfig_Config'(v, e)}
    (var i := $IndexOfVec'$1_ValidatorConfig_Config'(v, e);
     if (!$ContainsVec'$1_ValidatorConfig_Config'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_ValidatorConfig_Config'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_ValidatorConfig_Config'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_ValidatorConfig_Config'(): Vec ($1_ValidatorConfig_Config) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_ValidatorConfig_Config'() returns (v: Vec ($1_ValidatorConfig_Config)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_ValidatorConfig_Config'(): Vec ($1_ValidatorConfig_Config) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), val: $1_ValidatorConfig_Config) returns (m': $Mutation (Vec ($1_ValidatorConfig_Config))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), val: $1_ValidatorConfig_Config): Vec ($1_ValidatorConfig_Config) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config))) returns (e: $1_ValidatorConfig_Config, m': $Mutation (Vec ($1_ValidatorConfig_Config))) {
    var v: Vec ($1_ValidatorConfig_Config);
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

procedure {:inline 1} $1_Vector_append'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), other: Vec ($1_ValidatorConfig_Config)) returns (m': $Mutation (Vec ($1_ValidatorConfig_Config))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config))) returns (m': $Mutation (Vec ($1_ValidatorConfig_Config))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), i: int) returns (dst: $1_ValidatorConfig_Config) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), i: int): $1_ValidatorConfig_Config {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), index: int)
returns (dst: $Mutation ($1_ValidatorConfig_Config), m': $Mutation (Vec ($1_ValidatorConfig_Config)))
{
    var v: Vec ($1_ValidatorConfig_Config);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), i: int): $1_ValidatorConfig_Config {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), i: int, j: int) returns (m': $Mutation (Vec ($1_ValidatorConfig_Config)))
{
    var v: Vec ($1_ValidatorConfig_Config);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), i: int, j: int): Vec ($1_ValidatorConfig_Config) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), i: int) returns (e: $1_ValidatorConfig_Config, m': $Mutation (Vec ($1_ValidatorConfig_Config)))
{
    var v: Vec ($1_ValidatorConfig_Config);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), i: int) returns (e: $1_ValidatorConfig_Config, m': $Mutation (Vec ($1_ValidatorConfig_Config)))
{
    var len: int;
    var v: Vec ($1_ValidatorConfig_Config);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), e: $1_ValidatorConfig_Config) returns (res: bool)  {
    res := $ContainsVec'$1_ValidatorConfig_Config'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), e: $1_ValidatorConfig_Config) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_ValidatorConfig_Config'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `vec'u8'`


function {:inline} $IsEqual'vec'vec'u8'''(v1: Vec (Vec (int)), v2: Vec (Vec (int))): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'vec'u8'''(v: Vec (Vec (int))): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'vec'u8''(ReadVec(v, i)))
}


function {:inline} $ContainsVec'vec'u8''(v: Vec (Vec (int)), e: Vec (int)): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'vec'u8''(ReadVec(v, i), e))
}

function $IndexOfVec'vec'u8''(v: Vec (Vec (int)), e: Vec (int)): int;
axiom (forall v: Vec (Vec (int)), e: Vec (int):: {$IndexOfVec'vec'u8''(v, e)}
    (var i := $IndexOfVec'vec'u8''(v, e);
     if (!$ContainsVec'vec'u8''(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'vec'u8''(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'vec'u8''(ReadVec(v, j), e))));


function {:inline} $RangeVec'vec'u8''(v: Vec (Vec (int))): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'vec'u8''(): Vec (Vec (int)) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'vec'u8''() returns (v: Vec (Vec (int))) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'vec'u8''(): Vec (Vec (int)) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'vec'u8''(v: Vec (Vec (int))) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'vec'u8''(m: $Mutation (Vec (Vec (int))), val: Vec (int)) returns (m': $Mutation (Vec (Vec (int)))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'vec'u8''(v: Vec (Vec (int)), val: Vec (int)): Vec (Vec (int)) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'vec'u8''(m: $Mutation (Vec (Vec (int)))) returns (e: Vec (int), m': $Mutation (Vec (Vec (int)))) {
    var v: Vec (Vec (int));
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

procedure {:inline 1} $1_Vector_append'vec'u8''(m: $Mutation (Vec (Vec (int))), other: Vec (Vec (int))) returns (m': $Mutation (Vec (Vec (int)))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'vec'u8''(m: $Mutation (Vec (Vec (int)))) returns (m': $Mutation (Vec (Vec (int)))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'vec'u8''(v: Vec (Vec (int))) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'vec'u8''(v: Vec (Vec (int))): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'vec'u8''(v: Vec (Vec (int)), i: int) returns (dst: Vec (int)) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'vec'u8''(v: Vec (Vec (int)), i: int): Vec (int) {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'vec'u8''(m: $Mutation (Vec (Vec (int))), index: int)
returns (dst: $Mutation (Vec (int)), m': $Mutation (Vec (Vec (int))))
{
    var v: Vec (Vec (int));
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'vec'u8''(v: Vec (Vec (int)), i: int): Vec (int) {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'vec'u8''(v: Vec (Vec (int))) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'vec'u8''(m: $Mutation (Vec (Vec (int))), i: int, j: int) returns (m': $Mutation (Vec (Vec (int))))
{
    var v: Vec (Vec (int));
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'vec'u8''(v: Vec (Vec (int)), i: int, j: int): Vec (Vec (int)) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'vec'u8''(m: $Mutation (Vec (Vec (int))), i: int) returns (e: Vec (int), m': $Mutation (Vec (Vec (int))))
{
    var v: Vec (Vec (int));

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'vec'u8''(m: $Mutation (Vec (Vec (int))), i: int) returns (e: Vec (int), m': $Mutation (Vec (Vec (int))))
{
    var len: int;
    var v: Vec (Vec (int));

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'vec'u8''(v: Vec (Vec (int)), e: Vec (int)) returns (res: bool)  {
    res := $ContainsVec'vec'u8''(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'vec'u8''(v: Vec (Vec (int)), e: Vec (int)) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'vec'u8''(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `address`


function {:inline} $IsEqual'vec'address''(v1: Vec (int), v2: Vec (int)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'address''(v: Vec (int)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'address'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'address'(v: Vec (int), e: int): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'address'(ReadVec(v, i), e))
}

function $IndexOfVec'address'(v: Vec (int), e: int): int;
axiom (forall v: Vec (int), e: int:: {$IndexOfVec'address'(v, e)}
    (var i := $IndexOfVec'address'(v, e);
     if (!$ContainsVec'address'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'address'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'address'(ReadVec(v, j), e))));


function {:inline} $RangeVec'address'(v: Vec (int)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'address'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'address'() returns (v: Vec (int)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'address'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'address'(v: Vec (int)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'address'(m: $Mutation (Vec (int)), val: int) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'address'(v: Vec (int), val: int): Vec (int) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'address'(m: $Mutation (Vec (int))) returns (e: int, m': $Mutation (Vec (int))) {
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

procedure {:inline 1} $1_Vector_append'address'(m: $Mutation (Vec (int)), other: Vec (int)) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'address'(m: $Mutation (Vec (int))) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'address'(v: Vec (int)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'address'(v: Vec (int)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'address'(v: Vec (int), i: int) returns (dst: int) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'address'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'address'(m: $Mutation (Vec (int)), index: int)
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

function {:inline} $1_Vector_$borrow_mut'address'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'address'(v: Vec (int)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'address'(m: $Mutation (Vec (int)), i: int, j: int) returns (m': $Mutation (Vec (int)))
{
    var v: Vec (int);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'address'(v: Vec (int), i: int, j: int): Vec (int) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'address'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
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

procedure {:inline 1} $1_Vector_swap_remove'address'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
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

procedure {:inline 1} $1_Vector_contains'address'(v: Vec (int), e: int) returns (res: bool)  {
    res := $ContainsVec'address'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'address'(v: Vec (int), e: int) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'address'(v, e);
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




// Publishing a generator does nothing. Currently we just ignore this function and do not represent generators
// at all because they are not publicly exposed by the Event module.
// TODO: we should check (and abort with the right code) if a generator already exists for
// the signer.

procedure {:inline 1} $1_Event_publish_generator(signer: int) {
}

// Generic code for dealing with mutations (havoc) still requires type and memory declarations.
type $1_Event_EventHandleGenerator;
var $1_Event_EventHandleGenerator_$memory: $Memory $1_Event_EventHandleGenerator;

// Abstract type of event handles.
type $1_Event_EventHandle;

// Global state to implement uniqueness of event handles.
var $1_Event_EventHandles: [$1_Event_EventHandle]bool;

// Universal representation of an an event. For each concrete event type, we generate a constructor.
type {:datatype} $EventRep;

// Representation of EventStore that consists of event streams.
type {:datatype} $EventStore;
function {:constructor} $EventStore(
    counter: int, streams: [$1_Event_EventHandle]Multiset $EventRep): $EventStore;

// Global state holding EventStore.
var $es: $EventStore;

procedure {:inline 1} $InitEventStore() {
    assume $EventStore__is_empty($es);
}

function {:inline} $EventStore__is_empty(es: $EventStore): bool {
    (counter#$EventStore(es) == 0) &&
    (forall handle: $1_Event_EventHandle ::
        (var stream := streams#$EventStore(es)[handle];
        IsEmptyMultiset(stream)))
}

// This function returns (es1 - es2). This function assumes that es2 is a subset of es1.
function {:inline} $EventStore__subtract(es1: $EventStore, es2: $EventStore): $EventStore {
    $EventStore(counter#$EventStore(es1)-counter#$EventStore(es2),
        (lambda handle: $1_Event_EventHandle ::
        SubtractMultiset(
            streams#$EventStore(es1)[handle],
            streams#$EventStore(es2)[handle])))
}

function {:inline} $EventStore__is_subset(es1: $EventStore, es2: $EventStore): bool {
    (counter#$EventStore(es1) <= counter#$EventStore(es2)) &&
    (forall handle: $1_Event_EventHandle ::
        IsSubsetMultiset(
            streams#$EventStore(es1)[handle],
            streams#$EventStore(es2)[handle]
        )
    )
}

procedure {:inline 1} $EventStore__diverge(es: $EventStore) returns (es': $EventStore) {
    assume $EventStore__is_subset(es, es');
}

const $EmptyEventStore: $EventStore;
axiom $EventStore__is_empty($EmptyEventStore);

// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_AccountFreezing_FreezeAccountEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''(a: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent', b: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''(h: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent'): bool {
    true
}

// Embed event `$1_AccountFreezing_FreezeAccountEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(e: $1_AccountFreezing_FreezeAccountEvent): $EventRep;
axiom (forall v1, v2: $1_AccountFreezing_FreezeAccountEvent :: {$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(v1), $ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(v2)}
    $IsEqual'$1_AccountFreezing_FreezeAccountEvent'(v1, v2) <==> $ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(v1) == $ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent', msg: $1_AccountFreezing_FreezeAccountEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent') {
    var handle: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_AccountFreezing_FreezeAccountEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_AccountFreezing_FreezeAccountEvent'(handle: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent') {
}

function {:inline} $ExtendEventStore'$1_AccountFreezing_FreezeAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent', msg: $1_AccountFreezing_FreezeAccountEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_AccountFreezing_FreezeAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent', msg: $1_AccountFreezing_FreezeAccountEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_AccountFreezing_FreezeAccountEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_AccountFreezing_UnfreezeAccountEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''(a: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent', b: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''(h: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent'): bool {
    true
}

// Embed event `$1_AccountFreezing_UnfreezeAccountEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(e: $1_AccountFreezing_UnfreezeAccountEvent): $EventRep;
axiom (forall v1, v2: $1_AccountFreezing_UnfreezeAccountEvent :: {$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(v1), $ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(v2)}
    $IsEqual'$1_AccountFreezing_UnfreezeAccountEvent'(v1, v2) <==> $ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(v1) == $ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent', msg: $1_AccountFreezing_UnfreezeAccountEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent') {
    var handle: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_AccountFreezing_UnfreezeAccountEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_AccountFreezing_UnfreezeAccountEvent'(handle: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent') {
}

function {:inline} $ExtendEventStore'$1_AccountFreezing_UnfreezeAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent', msg: $1_AccountFreezing_UnfreezeAccountEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_AccountFreezing_UnfreezeAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent', msg: $1_AccountFreezing_UnfreezeAccountEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_AccountFreezing_UnfreezeAccountEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DesignatedDealer_ReceivedMintEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''(a: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent', b: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''(h: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent'): bool {
    true
}

// Embed event `$1_DesignatedDealer_ReceivedMintEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(e: $1_DesignatedDealer_ReceivedMintEvent): $EventRep;
axiom (forall v1, v2: $1_DesignatedDealer_ReceivedMintEvent :: {$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(v1), $ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(v2)}
    $IsEqual'$1_DesignatedDealer_ReceivedMintEvent'(v1, v2) <==> $ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(v1) == $ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent', msg: $1_DesignatedDealer_ReceivedMintEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent') {
    var handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DesignatedDealer_ReceivedMintEvent'(handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent') {
}

function {:inline} $ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent', msg: $1_DesignatedDealer_ReceivedMintEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent', msg: $1_DesignatedDealer_ReceivedMintEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemAccount_AdminTransactionEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''(a: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent', b: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''(h: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent'): bool {
    true
}

// Embed event `$1_DiemAccount_AdminTransactionEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemAccount_AdminTransactionEvent'(e: $1_DiemAccount_AdminTransactionEvent): $EventRep;
axiom (forall v1, v2: $1_DiemAccount_AdminTransactionEvent :: {$ToEventRep'$1_DiemAccount_AdminTransactionEvent'(v1), $ToEventRep'$1_DiemAccount_AdminTransactionEvent'(v2)}
    $IsEqual'$1_DiemAccount_AdminTransactionEvent'(v1, v2) <==> $ToEventRep'$1_DiemAccount_AdminTransactionEvent'(v1) == $ToEventRep'$1_DiemAccount_AdminTransactionEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemAccount_AdminTransactionEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent', msg: $1_DiemAccount_AdminTransactionEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent') {
    var handle: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemAccount_AdminTransactionEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemAccount_AdminTransactionEvent'(handle: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemAccount_AdminTransactionEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent', msg: $1_DiemAccount_AdminTransactionEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemAccount_AdminTransactionEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemAccount_AdminTransactionEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent', msg: $1_DiemAccount_AdminTransactionEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemAccount_AdminTransactionEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemAccount_CreateAccountEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''(a: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent', b: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''(h: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent'): bool {
    true
}

// Embed event `$1_DiemAccount_CreateAccountEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemAccount_CreateAccountEvent'(e: $1_DiemAccount_CreateAccountEvent): $EventRep;
axiom (forall v1, v2: $1_DiemAccount_CreateAccountEvent :: {$ToEventRep'$1_DiemAccount_CreateAccountEvent'(v1), $ToEventRep'$1_DiemAccount_CreateAccountEvent'(v2)}
    $IsEqual'$1_DiemAccount_CreateAccountEvent'(v1, v2) <==> $ToEventRep'$1_DiemAccount_CreateAccountEvent'(v1) == $ToEventRep'$1_DiemAccount_CreateAccountEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemAccount_CreateAccountEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent', msg: $1_DiemAccount_CreateAccountEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent') {
    var handle: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemAccount_CreateAccountEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemAccount_CreateAccountEvent'(handle: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemAccount_CreateAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent', msg: $1_DiemAccount_CreateAccountEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemAccount_CreateAccountEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemAccount_CreateAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent', msg: $1_DiemAccount_CreateAccountEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemAccount_CreateAccountEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemAccount_ReceivedPaymentEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''(a: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent', b: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''(h: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent'): bool {
    true
}

// Embed event `$1_DiemAccount_ReceivedPaymentEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(e: $1_DiemAccount_ReceivedPaymentEvent): $EventRep;
axiom (forall v1, v2: $1_DiemAccount_ReceivedPaymentEvent :: {$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(v1), $ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(v2)}
    $IsEqual'$1_DiemAccount_ReceivedPaymentEvent'(v1, v2) <==> $ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(v1) == $ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_ReceivedPaymentEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemAccount_ReceivedPaymentEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent', msg: $1_DiemAccount_ReceivedPaymentEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent') {
    var handle: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemAccount_ReceivedPaymentEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemAccount_ReceivedPaymentEvent'(handle: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemAccount_ReceivedPaymentEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent', msg: $1_DiemAccount_ReceivedPaymentEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemAccount_ReceivedPaymentEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent', msg: $1_DiemAccount_ReceivedPaymentEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemAccount_ReceivedPaymentEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemAccount_SentPaymentEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''(a: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent', b: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''(h: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent'): bool {
    true
}

// Embed event `$1_DiemAccount_SentPaymentEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemAccount_SentPaymentEvent'(e: $1_DiemAccount_SentPaymentEvent): $EventRep;
axiom (forall v1, v2: $1_DiemAccount_SentPaymentEvent :: {$ToEventRep'$1_DiemAccount_SentPaymentEvent'(v1), $ToEventRep'$1_DiemAccount_SentPaymentEvent'(v2)}
    $IsEqual'$1_DiemAccount_SentPaymentEvent'(v1, v2) <==> $ToEventRep'$1_DiemAccount_SentPaymentEvent'(v1) == $ToEventRep'$1_DiemAccount_SentPaymentEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_SentPaymentEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemAccount_SentPaymentEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent', msg: $1_DiemAccount_SentPaymentEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent') {
    var handle: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemAccount_SentPaymentEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemAccount_SentPaymentEvent'(handle: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemAccount_SentPaymentEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent', msg: $1_DiemAccount_SentPaymentEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemAccount_SentPaymentEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemAccount_SentPaymentEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent', msg: $1_DiemAccount_SentPaymentEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemAccount_SentPaymentEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemBlock_NewBlockEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''(a: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent', b: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''(h: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent'): bool {
    true
}

// Embed event `$1_DiemBlock_NewBlockEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemBlock_NewBlockEvent'(e: $1_DiemBlock_NewBlockEvent): $EventRep;
axiom (forall v1, v2: $1_DiemBlock_NewBlockEvent :: {$ToEventRep'$1_DiemBlock_NewBlockEvent'(v1), $ToEventRep'$1_DiemBlock_NewBlockEvent'(v2)}
    $IsEqual'$1_DiemBlock_NewBlockEvent'(v1, v2) <==> $ToEventRep'$1_DiemBlock_NewBlockEvent'(v1) == $ToEventRep'$1_DiemBlock_NewBlockEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemBlock_NewBlockEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemBlock_NewBlockEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent', msg: $1_DiemBlock_NewBlockEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent') {
    var handle: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemBlock_NewBlockEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemBlock_NewBlockEvent'(handle: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemBlock_NewBlockEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent', msg: $1_DiemBlock_NewBlockEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemBlock_NewBlockEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemBlock_NewBlockEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent', msg: $1_DiemBlock_NewBlockEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemBlock_NewBlockEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemConfig_NewEpochEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''(a: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent', b: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''(h: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent'): bool {
    true
}

// Embed event `$1_DiemConfig_NewEpochEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemConfig_NewEpochEvent'(e: $1_DiemConfig_NewEpochEvent): $EventRep;
axiom (forall v1, v2: $1_DiemConfig_NewEpochEvent :: {$ToEventRep'$1_DiemConfig_NewEpochEvent'(v1), $ToEventRep'$1_DiemConfig_NewEpochEvent'(v2)}
    $IsEqual'$1_DiemConfig_NewEpochEvent'(v1, v2) <==> $ToEventRep'$1_DiemConfig_NewEpochEvent'(v1) == $ToEventRep'$1_DiemConfig_NewEpochEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemConfig_NewEpochEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent', msg: $1_DiemConfig_NewEpochEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent') {
    var handle: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemConfig_NewEpochEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemConfig_NewEpochEvent'(handle: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemConfig_NewEpochEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent', msg: $1_DiemConfig_NewEpochEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemConfig_NewEpochEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent', msg: $1_DiemConfig_NewEpochEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemConfig_NewEpochEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_Diem_BurnEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_Diem_BurnEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_Diem_BurnEvent''(a: $1_Event_EventHandle'$1_Diem_BurnEvent', b: $1_Event_EventHandle'$1_Diem_BurnEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''(h: $1_Event_EventHandle'$1_Diem_BurnEvent'): bool {
    true
}

// Embed event `$1_Diem_BurnEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_Diem_BurnEvent'(e: $1_Diem_BurnEvent): $EventRep;
axiom (forall v1, v2: $1_Diem_BurnEvent :: {$ToEventRep'$1_Diem_BurnEvent'(v1), $ToEventRep'$1_Diem_BurnEvent'(v2)}
    $IsEqual'$1_Diem_BurnEvent'(v1, v2) <==> $ToEventRep'$1_Diem_BurnEvent'(v1) == $ToEventRep'$1_Diem_BurnEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_BurnEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_Diem_BurnEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_Diem_BurnEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_Diem_BurnEvent', msg: $1_Diem_BurnEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_Diem_BurnEvent') {
    var handle: $1_Event_EventHandle'$1_Diem_BurnEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_Diem_BurnEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_Diem_BurnEvent'(handle: $1_Event_EventHandle'$1_Diem_BurnEvent') {
}

function {:inline} $ExtendEventStore'$1_Diem_BurnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_BurnEvent', msg: $1_Diem_BurnEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_Diem_BurnEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_Diem_BurnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_BurnEvent', msg: $1_Diem_BurnEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_Diem_BurnEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_Diem_CancelBurnEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_Diem_CancelBurnEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''(a: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', b: $1_Event_EventHandle'$1_Diem_CancelBurnEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''(h: $1_Event_EventHandle'$1_Diem_CancelBurnEvent'): bool {
    true
}

// Embed event `$1_Diem_CancelBurnEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_Diem_CancelBurnEvent'(e: $1_Diem_CancelBurnEvent): $EventRep;
axiom (forall v1, v2: $1_Diem_CancelBurnEvent :: {$ToEventRep'$1_Diem_CancelBurnEvent'(v1), $ToEventRep'$1_Diem_CancelBurnEvent'(v2)}
    $IsEqual'$1_Diem_CancelBurnEvent'(v1, v2) <==> $ToEventRep'$1_Diem_CancelBurnEvent'(v1) == $ToEventRep'$1_Diem_CancelBurnEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_CancelBurnEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_Diem_CancelBurnEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_Diem_CancelBurnEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_Diem_CancelBurnEvent', msg: $1_Diem_CancelBurnEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_Diem_CancelBurnEvent') {
    var handle: $1_Event_EventHandle'$1_Diem_CancelBurnEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_Diem_CancelBurnEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_Diem_CancelBurnEvent'(handle: $1_Event_EventHandle'$1_Diem_CancelBurnEvent') {
}

function {:inline} $ExtendEventStore'$1_Diem_CancelBurnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', msg: $1_Diem_CancelBurnEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_Diem_CancelBurnEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_Diem_CancelBurnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', msg: $1_Diem_CancelBurnEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_Diem_CancelBurnEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_Diem_MintEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_Diem_MintEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_Diem_MintEvent''(a: $1_Event_EventHandle'$1_Diem_MintEvent', b: $1_Event_EventHandle'$1_Diem_MintEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''(h: $1_Event_EventHandle'$1_Diem_MintEvent'): bool {
    true
}

// Embed event `$1_Diem_MintEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_Diem_MintEvent'(e: $1_Diem_MintEvent): $EventRep;
axiom (forall v1, v2: $1_Diem_MintEvent :: {$ToEventRep'$1_Diem_MintEvent'(v1), $ToEventRep'$1_Diem_MintEvent'(v2)}
    $IsEqual'$1_Diem_MintEvent'(v1, v2) <==> $ToEventRep'$1_Diem_MintEvent'(v1) == $ToEventRep'$1_Diem_MintEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_MintEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_Diem_MintEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_Diem_MintEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_Diem_MintEvent', msg: $1_Diem_MintEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_Diem_MintEvent') {
    var handle: $1_Event_EventHandle'$1_Diem_MintEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_Diem_MintEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_Diem_MintEvent'(handle: $1_Event_EventHandle'$1_Diem_MintEvent') {
}

function {:inline} $ExtendEventStore'$1_Diem_MintEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_MintEvent', msg: $1_Diem_MintEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_Diem_MintEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_Diem_MintEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_MintEvent', msg: $1_Diem_MintEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_Diem_MintEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_Diem_PreburnEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_Diem_PreburnEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_Diem_PreburnEvent''(a: $1_Event_EventHandle'$1_Diem_PreburnEvent', b: $1_Event_EventHandle'$1_Diem_PreburnEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''(h: $1_Event_EventHandle'$1_Diem_PreburnEvent'): bool {
    true
}

// Embed event `$1_Diem_PreburnEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_Diem_PreburnEvent'(e: $1_Diem_PreburnEvent): $EventRep;
axiom (forall v1, v2: $1_Diem_PreburnEvent :: {$ToEventRep'$1_Diem_PreburnEvent'(v1), $ToEventRep'$1_Diem_PreburnEvent'(v2)}
    $IsEqual'$1_Diem_PreburnEvent'(v1, v2) <==> $ToEventRep'$1_Diem_PreburnEvent'(v1) == $ToEventRep'$1_Diem_PreburnEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_PreburnEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_Diem_PreburnEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_Diem_PreburnEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_Diem_PreburnEvent', msg: $1_Diem_PreburnEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_Diem_PreburnEvent') {
    var handle: $1_Event_EventHandle'$1_Diem_PreburnEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_Diem_PreburnEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_Diem_PreburnEvent'(handle: $1_Event_EventHandle'$1_Diem_PreburnEvent') {
}

function {:inline} $ExtendEventStore'$1_Diem_PreburnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_PreburnEvent', msg: $1_Diem_PreburnEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_Diem_PreburnEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_Diem_PreburnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_PreburnEvent', msg: $1_Diem_PreburnEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_Diem_PreburnEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_Diem_ToXDXExchangeRateUpdateEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''(a: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent', b: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''(h: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): bool {
    true
}

// Embed event `$1_Diem_ToXDXExchangeRateUpdateEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(e: $1_Diem_ToXDXExchangeRateUpdateEvent): $EventRep;
axiom (forall v1, v2: $1_Diem_ToXDXExchangeRateUpdateEvent :: {$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(v1), $ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(v2)}
    $IsEqual'$1_Diem_ToXDXExchangeRateUpdateEvent'(v1, v2) <==> $ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(v1) == $ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_Diem_ToXDXExchangeRateUpdateEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent', msg: $1_Diem_ToXDXExchangeRateUpdateEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent') {
    var handle: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_Diem_ToXDXExchangeRateUpdateEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'(handle: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent') {
}

function {:inline} $ExtendEventStore'$1_Diem_ToXDXExchangeRateUpdateEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent', msg: $1_Diem_ToXDXExchangeRateUpdateEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_Diem_ToXDXExchangeRateUpdateEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent', msg: $1_Diem_ToXDXExchangeRateUpdateEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_Diem_ToXDXExchangeRateUpdateEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DualAttestation_BaseUrlRotationEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''(a: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent', b: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''(h: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent'): bool {
    true
}

// Embed event `$1_DualAttestation_BaseUrlRotationEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(e: $1_DualAttestation_BaseUrlRotationEvent): $EventRep;
axiom (forall v1, v2: $1_DualAttestation_BaseUrlRotationEvent :: {$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(v1), $ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(v2)}
    $IsEqual'$1_DualAttestation_BaseUrlRotationEvent'(v1, v2) <==> $ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(v1) == $ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent', msg: $1_DualAttestation_BaseUrlRotationEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent') {
    var handle: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DualAttestation_BaseUrlRotationEvent'(handle: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent') {
}

function {:inline} $ExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent', msg: $1_DualAttestation_BaseUrlRotationEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent', msg: $1_DualAttestation_BaseUrlRotationEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DualAttestation_ComplianceKeyRotationEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''(a: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent', b: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''(h: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent'): bool {
    true
}

// Embed event `$1_DualAttestation_ComplianceKeyRotationEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(e: $1_DualAttestation_ComplianceKeyRotationEvent): $EventRep;
axiom (forall v1, v2: $1_DualAttestation_ComplianceKeyRotationEvent :: {$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(v1), $ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(v2)}
    $IsEqual'$1_DualAttestation_ComplianceKeyRotationEvent'(v1, v2) <==> $ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(v1) == $ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent', msg: $1_DualAttestation_ComplianceKeyRotationEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent') {
    var handle: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DualAttestation_ComplianceKeyRotationEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DualAttestation_ComplianceKeyRotationEvent'(handle: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent') {
}

function {:inline} $ExtendEventStore'$1_DualAttestation_ComplianceKeyRotationEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent', msg: $1_DualAttestation_ComplianceKeyRotationEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DualAttestation_ComplianceKeyRotationEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent', msg: $1_DualAttestation_ComplianceKeyRotationEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DualAttestation_ComplianceKeyRotationEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_VASPDomain_VASPDomainEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''(a: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent', b: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''(h: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent'): bool {
    true
}

// Embed event `$1_VASPDomain_VASPDomainEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_VASPDomain_VASPDomainEvent'(e: $1_VASPDomain_VASPDomainEvent): $EventRep;
axiom (forall v1, v2: $1_VASPDomain_VASPDomainEvent :: {$ToEventRep'$1_VASPDomain_VASPDomainEvent'(v1), $ToEventRep'$1_VASPDomain_VASPDomainEvent'(v2)}
    $IsEqual'$1_VASPDomain_VASPDomainEvent'(v1, v2) <==> $ToEventRep'$1_VASPDomain_VASPDomainEvent'(v1) == $ToEventRep'$1_VASPDomain_VASPDomainEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent', msg: $1_VASPDomain_VASPDomainEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent') {
    var handle: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_VASPDomain_VASPDomainEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_VASPDomain_VASPDomainEvent'(handle: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent') {
}

function {:inline} $ExtendEventStore'$1_VASPDomain_VASPDomainEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent', msg: $1_VASPDomain_VASPDomainEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_VASPDomain_VASPDomainEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_VASPDomain_VASPDomainEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent', msg: $1_VASPDomain_VASPDomainEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_VASPDomain_VASPDomainEvent'(es, handle, msg)
    else
        es
}




//==================================
// Begin Translation



// Given Types for Type Parameters

type #0;
function {:inline} $IsEqual'#0'(x1: #0, x2: #0): bool { x1 == x2 }
function {:inline} $IsValid'#0'(x: #0): bool { true }

// spec fun at /home/ying/diem/language/move-stdlib/modules/Signer.move:12:5+77
function {:inline} $1_Signer_$address_of(s: int): int {
    $1_Signer_$borrow_address(s)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+89
function {:inline} $1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    !$ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:145:5+90
function {:inline} $1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:107:10+104
function {:inline} $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): int {
    $microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816))
}

// struct DiemTimestamp::CurrentTimeMicroseconds at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:19:5+73
type {:datatype} $1_DiemTimestamp_CurrentTimeMicroseconds;
function {:constructor} $1_DiemTimestamp_CurrentTimeMicroseconds($microseconds: int): $1_DiemTimestamp_CurrentTimeMicroseconds;
function {:inline} $Update'$1_DiemTimestamp_CurrentTimeMicroseconds'_microseconds(s: $1_DiemTimestamp_CurrentTimeMicroseconds, x: int): $1_DiemTimestamp_CurrentTimeMicroseconds {
    $1_DiemTimestamp_CurrentTimeMicroseconds(x)
}
function $IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'(s: $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    $IsValid'u64'($microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds(s))
}
function {:inline} $IsEqual'$1_DiemTimestamp_CurrentTimeMicroseconds'(s1: $1_DiemTimestamp_CurrentTimeMicroseconds, s2: $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    s1 == s2
}
var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;

// fun DiemTimestamp::set_time_has_started [baseline] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:35:5+240
procedure {:inline 1} $1_DiemTimestamp_set_time_has_started(_$t0: int) returns ()
{
    // declare local variables
    var $t1: $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $t0: int;
    var $temp_0'address': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:35:5+1
    assume {:print "$at(17,1630,1631)"} true;
    assume {:print "$track_local(3,6,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:9+16
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(17,1693,1709)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:9+16

    // assume Identical($t2, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:9+16
    assume ($t2 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t2) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:9+16
    if ($t2) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:9+16
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t3)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:9+16
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:9+16
    assume {:print "$at(17,1693,1709)"} true;
    assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:9+16
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:9+16
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:9+16

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+43
    // >> opaque call: CoreAddresses::assert_diem_root($t0)
    assume {:print "$at(17,1719,1762)"} true;

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+43

    // assume Identical($t4, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+43
    assume ($t4 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t4) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+43
    if ($t4) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+43
L6:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t3)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+43
    assume {:print "$at(17,1719,1762)"} true;
    assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+43
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+43
L5:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+43

    // $t5 := 0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:61+1
    assume {:print "$at(17,1824,1825)"} true;
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := pack DiemTimestamp::CurrentTimeMicroseconds($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:21+43
    $t6 := $1_DiemTimestamp_CurrentTimeMicroseconds($t5);

    // move_to<DiemTimestamp::CurrentTimeMicroseconds>($t6, $t0) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+7
    assume {:print "$at(17,1837,1844)"} true;
    if ($ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_DiemTimestamp_CurrentTimeMicroseconds_$memory := $ResourceUpdate($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t0, $t6);
    }
    if ($abort_flag) {
        assume {:print "$at(17,1837,1844)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:40:5+1
    assume {:print "$at(17,1869,1870)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:40:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:40:5+1
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:40:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun DiemTimestamp::update_global_time [verification] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:54:5+794
procedure {:timeLimit 40} $1_DiemTimestamp_update_global_time$verify(_$t0: int, _$t1: int, _$t2: int) returns ()
{
    // declare local variables
    var $t3: $Mutation ($1_DiemTimestamp_CurrentTimeMicroseconds);
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: $Mutation ($1_DiemTimestamp_CurrentTimeMicroseconds);
    var $t15: int;
    var $t16: int;
    var $t17: bool;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: bool;
    var $t22: int;
    var $t23: int;
    var $t24: $Mutation (int);
    var $t25: int;
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies: [int]bool;
    var $temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds': $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#109: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t14));
    assume IsEmptyVec(p#$Mutation($t24));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:54:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:169:9+72
    assume {:print "$at(17,2579,3373)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:54:5+794
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:54:5+794
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:54:5+794
    assume $IsValid'u64'($t2);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:54:5+794
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume Identical($t9, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:78:9+34
    assume {:print "$at(17,3497,3531)"} true;
    assume ($t9 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume CanModify<DiemTimestamp::CurrentTimeMicroseconds>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:76:9+52
    assume {:print "$at(17,3435,3487)"} true;
    assume $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies[173345816];

    // @109 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:76:9+52
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#109 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:54:5+1
    assume {:print "$at(17,2579,2580)"} true;
    assume {:print "$track_local(3,7,0):", $t0} $t0 == $t0;

    // trace_local[proposer]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:54:5+1
    assume {:print "$track_local(3,7,1):", $t1} $t1 == $t1;

    // trace_local[timestamp]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:54:5+1
    assume {:print "$track_local(3,7,2):", $t2} $t2 == $t2;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:59:9+18
    // >> opaque call: DiemTimestamp::assert_operating()
    assume {:print "$at(17,2735,2753)"} true;

    // opaque begin: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:59:9+18

    // assume Identical($t10, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:59:9+18
    assume ($t10 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t10) goto L10 else goto L9 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:59:9+18
    if ($t10) { goto L10; } else { goto L9; }

    // label L10 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:59:9+18
L10:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t11)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:59:9+18
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t11));

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:59:9+18
    assume {:print "$at(17,2735,2753)"} true;
    assume {:print "$track_abort(3,7):", $t11} $t11 == $t11;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:59:9+18
    goto L8;

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:59:9+18
L9:

    // opaque end: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:59:9+18

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:61:9+33
    // >> opaque call: CoreAddresses::assert_vm($t0)
    assume {:print "$at(17,2812,2845)"} true;

    // opaque begin: CoreAddresses::assert_vm($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:61:9+33

    // assume Identical($t12, Neq<address>(Signer::spec_address_of($t0), 0)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:61:9+33
    assume ($t12 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 0));

    // if ($t12) goto L12 else goto L11 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:61:9+33
    if ($t12) { goto L12; } else { goto L11; }

    // label L12 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:61:9+33
L12:

    // assume And(Neq<address>(Signer::spec_address_of($t0), 0), Eq(2, $t11)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:61:9+33
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 0) && $IsEqual'u8'(2, $t11));

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:61:9+33
    assume {:print "$at(17,2812,2845)"} true;
    assume {:print "$track_abort(3,7):", $t11} $t11 == $t11;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:61:9+33
    goto L8;

    // label L11 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:61:9+33
L11:

    // opaque end: CoreAddresses::assert_vm($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:61:9+33

    // $t13 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:63:71+9
    assume {:print "$at(17,2918,2927)"} true;
    $t13 := 173345816;
    assume $IsValid'address'($t13);

    // assert CanModify<DiemTimestamp::CurrentTimeMicroseconds>($t13) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:63:28+17
    assert {:msg "assert_failed(17,2875,2892): caller does not have permission to modify `DiemTimestamp::CurrentTimeMicroseconds` at given address"}
      $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies[$t13];

    // $t14 := borrow_global<DiemTimestamp::CurrentTimeMicroseconds>($t13) on_abort goto L8 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:63:28+17
    if (!$ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t13)) {
        call $ExecFailureAbort();
    } else {
        $t14 := $Mutation($Global($t13), EmptyVec(), $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t13));
    }
    if ($abort_flag) {
        assume {:print "$at(17,2875,2892)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(3,7):", $t11} $t11 == $t11;
        goto L8;
    }

    // trace_local[global_timer]($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:63:13+12
    $temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds' := $Dereference($t14);
    assume {:print "$track_local(3,7,3):", $temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'} $temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds' == $temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds';

    // $t15 := get_field<DiemTimestamp::CurrentTimeMicroseconds>.microseconds($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:64:19+25
    assume {:print "$at(17,2948,2973)"} true;
    $t15 := $microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($Dereference($t14));

    // trace_local[now]($t15) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:64:13+3
    assume {:print "$track_local(3,7,4):", $t15} $t15 == $t15;

    // $t16 := 0x0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:65:25+11
    assume {:print "$at(17,2999,3010)"} true;
    $t16 := 0;
    assume $IsValid'address'($t16);

    // $t17 := ==($t1, $t16) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:65:22+2
    $t17 := $IsEqual'address'($t1, $t16);

    // if ($t17) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:65:9+336
    if ($t17) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:65:9+336
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:65:9+336
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:20+3
    assume {:print "$at(17,3114,3117)"} true;
L0:

    // $t18 := ==($t15, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:24+2
    $t18 := $IsEqual'u64'($t15, $t2);

    // $t19 := 2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:63+10
    $t19 := 2;
    assume $IsValid'u64'($t19);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:38+36
    // >> opaque call: $t16 := Errors::invalid_argument($t15)

    // $t20 := opaque begin: Errors::invalid_argument($t19) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:38+36

    // assume WellFormed($t20) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:38+36
    assume $IsValid'u64'($t20);

    // assume Eq<u64>($t20, 7) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:38+36
    assume $IsEqual'u64'($t20, 7);

    // $t20 := opaque end: Errors::invalid_argument($t19) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:38+36

    // trace_local[tmp#$6]($t20) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:13+62
    assume {:print "$track_local(3,7,6):", $t20} $t20 == $t20;

    // trace_local[tmp#$5]($t18) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:13+62
    assume {:print "$track_local(3,7,5):", $t18} $t18 == $t18;

    // if ($t18) goto L3 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:13+62
    if ($t18) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:13+62
L4:

    // destroy($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:13+62

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:13+62
    assume {:print "$at(17,3107,3169)"} true;
    assume {:print "$track_abort(3,7):", $t20} $t20 == $t20;

    // $t11 := move($t20) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:13+62
    $t11 := $t20;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:13+62
    goto L8;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:75+1
L3:

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:75+1
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:20+3
    assume {:print "$at(17,3254,3257)"} true;
L2:

    // $t21 := <($t15, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:24+1
    call $t21 := $Lt($t15, $t2);

    // $t22 := 2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:62+10
    $t22 := 2;
    assume $IsValid'u64'($t22);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:37+36
    // >> opaque call: $t19 := Errors::invalid_argument($t18)

    // $t23 := opaque begin: Errors::invalid_argument($t22) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:37+36

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:37+36
    assume $IsValid'u64'($t23);

    // assume Eq<u64>($t23, 7) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:37+36
    assume $IsEqual'u64'($t23, 7);

    // $t23 := opaque end: Errors::invalid_argument($t22) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:37+36

    // trace_local[tmp#$8]($t23) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:13+61
    assume {:print "$track_local(3,7,8):", $t23} $t23 == $t23;

    // trace_local[tmp#$7]($t21) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:13+61
    assume {:print "$track_local(3,7,7):", $t21} $t21 == $t21;

    // if ($t21) goto L5 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:13+61
    if ($t21) { goto L5; } else { goto L6; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:13+61
L6:

    // destroy($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:13+61

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:13+61
    assume {:print "$at(17,3247,3308)"} true;
    assume {:print "$track_abort(3,7):", $t23} $t23 == $t23;

    // $t11 := move($t23) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:13+61
    $t11 := $t23;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:70:13+61
    goto L8;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:37+9
    assume {:print "$at(17,3357,3366)"} true;
L5:

    // $t24 := borrow_field<DiemTimestamp::CurrentTimeMicroseconds>.microseconds($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+25
    $t24 := $ChildMutation($t14, 0, $microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($Dereference($t14)));

    // write_ref($t24, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+37
    $t24 := $UpdateMutation($t24, $t2);

    // write_back[Reference($t14).microseconds]($t24) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+37
    $t14 := $UpdateMutation($t14, $Update'$1_DiemTimestamp_CurrentTimeMicroseconds'_microseconds($Dereference($t14), $Dereference($t24)));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:54:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+121
    assume {:print "$at(17,2579,3373)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // write_back[DiemTimestamp::CurrentTimeMicroseconds@]($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+37
    assume {:print "$at(17,3329,3366)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory := $ResourceUpdate($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $GlobalLocationAddress($t14),
        $Dereference($t14));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+121
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+121
    assume {:print "$at(18,6945,7066)"} true;
    assert {:msg "assert_failed(18,6945,7066): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:73:5+1
    assume {:print "$at(17,3372,3373)"} true;
L7:

    // assume Identical($t25, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:79:9+44
    assume {:print "$at(17,3540,3584)"} true;
    assume ($t25 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assert Not(Not(DiemTimestamp::$is_operating[@109]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:160:9+53
    assume {:print "$at(17,6375,6428)"} true;
    assert {:msg "assert_failed(17,6375,6428): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#109);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), 0)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:75:9+88
    assume {:print "$at(8,2798,2886)"} true;
    assert {:msg "assert_failed(8,2798,2886): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 0);

    // assert Not((if Eq<address>($t1, 0) {{let ; Neq<u64>($t9, $t2)}} else {{let ; Ge($t9, $t2)}})) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:87:9+225
    assume {:print "$at(17,3892,4117)"} true;
    assert {:msg "assert_failed(17,3892,4117): function does not abort under this condition"}
      !if ($IsEqual'address'($t1, 0)) then (!$IsEqual'u64'($t9, $t2)) else (($t9 >= $t2));

    // assert Eq<u64>($t25, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:84:9+30
    assume {:print "$at(17,3760,3790)"} true;
    assert {:msg "assert_failed(17,3760,3790): post-condition does not hold"}
      $IsEqual'u64'($t25, $t2);

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:84:9+30
    return;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:73:5+1
    assume {:print "$at(17,3372,3373)"} true;
L8:

    // assert Or(Or(Not(DiemTimestamp::$is_operating[@109]()), Neq<address>(Signer::spec_address_of[]($t0), 0)), (if Eq<address>($t1, 0) {{let ; Neq<u64>($t9, $t2)}} else {{let ; Ge($t9, $t2)}})) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:5+745
    assume {:print "$at(17,3378,4123)"} true;
    assert {:msg "assert_failed(17,3378,4123): abort not covered by any of the `aborts_if` clauses"}
      ((!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#109) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 0)) || if ($IsEqual'address'($t1, 0)) then (!$IsEqual'u64'($t9, $t2)) else (($t9 >= $t2)));

    // assert Or(Or(And(Not(DiemTimestamp::$is_operating[@109]()), Eq(1, $t11)), And(Neq<address>(Signer::spec_address_of[]($t0), 0), Eq(2, $t11))), And((if Eq<address>($t1, 0) {{let ; Neq<u64>($t9, $t2)}} else {{let ; Ge($t9, $t2)}}), Eq(7, $t11))) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:5+745
    assert {:msg "assert_failed(17,3378,4123): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#109) && $IsEqual'u8'(1, $t11)) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 0) && $IsEqual'u8'(2, $t11))) || (if ($IsEqual'address'($t1, 0)) then (!$IsEqual'u64'($t9, $t2)) else (($t9 >= $t2)) && $IsEqual'u8'(7, $t11)));

    // abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:5+745
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:192:5+122
function {:inline} $1_Roles_$has_diem_root_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, account: int): bool {
    $1_Roles_$has_role($1_Roles_RoleId_$memory, account, 0)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:186:5+210
function {:inline} $1_Roles_$has_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, account: int, role_id: int): bool {
    (var addr := $1_Signer_$address_of(account); ($ResourceExists($1_Roles_RoleId_$memory, addr) && $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr)), role_id)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:477:9+148
function {:inline} $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int, role_id: int): bool {
    ($ResourceExists($1_Roles_RoleId_$memory, addr) && $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr)), role_id))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:481:9+124
function {:inline} $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 0)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:485:9+144
function {:inline} $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 1)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:489:9+140
function {:inline} $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 2)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:493:9+124
function {:inline} $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 3)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:497:9+142
function {:inline} $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 4)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:501:9+128
function {:inline} $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 5)
}

// struct Roles::RoleId at /home/ying/diem/language/diem-framework/modules/Roles.move:49:5+51
type {:datatype} $1_Roles_RoleId;
function {:constructor} $1_Roles_RoleId($role_id: int): $1_Roles_RoleId;
function {:inline} $Update'$1_Roles_RoleId'_role_id(s: $1_Roles_RoleId, x: int): $1_Roles_RoleId {
    $1_Roles_RoleId(x)
}
function $IsValid'$1_Roles_RoleId'(s: $1_Roles_RoleId): bool {
    $IsValid'u64'($role_id#$1_Roles_RoleId(s))
}
function {:inline} $IsEqual'$1_Roles_RoleId'(s1: $1_Roles_RoleId, s2: $1_Roles_RoleId): bool {
    s1 == s2
}
var $1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId;

// fun Roles::has_diem_root_role [baseline] at /home/ying/diem/language/diem-framework/modules/Roles.move:192:5+122
procedure {:inline 1} $1_Roles_has_diem_root_role(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:192:5+1
    assume {:print "$at(26,7972,7973)"} true;
    assume {:print "$track_local(4,16,0):", $t0} $t0 == $t0;

    // $t1 := 0 at /home/ying/diem/language/diem-framework/modules/Roles.move:193:27+17
    assume {:print "$at(26,8070,8087)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := Roles::has_role($t0, $t1) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/Roles.move:193:9+36
    call $t2 := $1_Roles_has_role($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(26,8052,8088)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(4,16):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/Roles.move:193:9+36
    assume {:print "$track_return(4,16,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:194:5+1
    assume {:print "$at(26,8093,8094)"} true;
L1:

    // return $t2 at /home/ying/diem/language/diem-framework/modules/Roles.move:194:5+1
    $ret0 := $t2;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:194:5+1
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/Roles.move:194:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun Roles::has_role [baseline] at /home/ying/diem/language/diem-framework/modules/Roles.move:186:5+210
procedure {:inline 1} $1_Roles_has_role(_$t0: int, _$t1: int) returns ($ret0: bool)
{
    // declare local variables
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: $1_Roles_RoleId;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: bool;
    var $t0: int;
    var $t1: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:186:5+1
    assume {:print "$at(26,7756,7757)"} true;
    assume {:print "$track_local(4,18,0):", $t0} $t0 == $t0;

    // trace_local[role_id]($t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:186:5+1
    assume {:print "$track_local(4,18,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/Roles.move:187:19+27
    // >> opaque call: $t4 := Signer::address_of($t0)
    assume {:print "$at(26,7843,7870)"} true;

    // $t4 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:187:19+27

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/Roles.move:187:19+27
    assume $IsValid'address'($t4);

    // assume Eq<address>($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:187:19+27
    assume $IsEqual'address'($t4, $1_Signer_spec_address_of($t0));

    // $t4 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:187:19+27

    // trace_local[addr]($t4) at /home/ying/diem/language/diem-framework/modules/Roles.move:187:12+4
    assume {:print "$track_local(4,18,2):", $t4} $t4 == $t4;

    // $t5 := exists<Roles::RoleId>($t4) at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+6
    assume {:print "$at(26,7879,7885)"} true;
    $t5 := $ResourceExists($1_Roles_RoleId_$memory, $t4);

    // if ($t5) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
    if ($t5) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Roles.move:189:37+4
    assume {:print "$at(26,7936,7940)"} true;
L0:

    // $t6 := get_global<Roles::RoleId>($t4) on_abort goto L5 with $t7 at /home/ying/diem/language/diem-framework/modules/Roles.move:189:15+13
    if (!$ResourceExists($1_Roles_RoleId_$memory, $t4)) {
        call $ExecFailureAbort();
    } else {
        $t6 := $ResourceValue($1_Roles_RoleId_$memory, $t4);
    }
    if ($abort_flag) {
        assume {:print "$at(26,7914,7927)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(4,18):", $t7} $t7 == $t7;
        goto L5;
    }

    // $t8 := get_field<Roles::RoleId>.role_id($t6) at /home/ying/diem/language/diem-framework/modules/Roles.move:189:15+35
    $t8 := $role_id#$1_Roles_RoleId($t6);

    // $t9 := ==($t8, $t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:189:51+2
    $t9 := $IsEqual'u64'($t8, $t1);

    // $t3 := $t9 at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
    assume {:print "$at(26,7879,7960)"} true;
    $t3 := $t9;

    // trace_local[tmp#$3]($t9) at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
    assume {:print "$track_local(4,18,3):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
L2:

    // $t10 := false at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
    $t10 := false;
    assume $IsValid'bool'($t10);

    // $t3 := $t10 at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
    $t3 := $t10;

    // trace_local[tmp#$3]($t10) at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
    assume {:print "$track_local(4,18,3):", $t10} $t10 == $t10;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
L3:

    // trace_return[0]($t3) at /home/ying/diem/language/diem-framework/modules/Roles.move:188:8+81
    assume {:print "$track_return(4,18,0):", $t3} $t3 == $t3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Roles.move:190:5+1
    assume {:print "$at(26,7965,7966)"} true;
L4:

    // return $t3 at /home/ying/diem/language/diem-framework/modules/Roles.move:190:5+1
    $ret0 := $t3;
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Roles.move:190:5+1
L5:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/Roles.move:190:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:61:5+153
function {:inline} $1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig, validator_operator_addr: int): bool {
    $ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, validator_operator_addr)
}

// struct ValidatorOperatorConfig::ValidatorOperatorConfig at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:8:5+141
type {:datatype} $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
function {:constructor} $1_ValidatorOperatorConfig_ValidatorOperatorConfig($human_name: Vec (int)): $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
function {:inline} $Update'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'_human_name(s: $1_ValidatorOperatorConfig_ValidatorOperatorConfig, x: Vec (int)): $1_ValidatorOperatorConfig_ValidatorOperatorConfig {
    $1_ValidatorOperatorConfig_ValidatorOperatorConfig(x)
}
function $IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'(s: $1_ValidatorOperatorConfig_ValidatorOperatorConfig): bool {
    $IsValid'vec'u8''($human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig(s))
}
function {:inline} $IsEqual'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'(s1: $1_ValidatorOperatorConfig_ValidatorOperatorConfig, s2: $1_ValidatorOperatorConfig_ValidatorOperatorConfig): bool {
    s1 == s2
}
var $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig;

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'u8'(v: Vec (int)): bool {
    $IsEqual'u64'($1_Vector_$length'u8'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_ValidatorConfig_Config'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_DiemAccount_KeyRotationCapability'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_DiemAccount_WithdrawCapability'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:86:5+170
function {:inline} $1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'(t: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): $1_DiemAccount_KeyRotationCapability {
    $1_Vector_$borrow'$1_DiemAccount_KeyRotationCapability'($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(t), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:86:5+170
function {:inline} $1_Option_$borrow'$1_DiemAccount_WithdrawCapability'(t: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): $1_DiemAccount_WithdrawCapability {
    $1_Vector_$borrow'$1_DiemAccount_WithdrawCapability'($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(t), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:51:5+95
function {:inline} $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'(t: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    $1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:51:5+95
function {:inline} $1_Option_$is_none'$1_DiemAccount_WithdrawCapability'(t: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    $1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_ValidatorConfig_Config'(t: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    !$1_Vector_$is_empty'$1_ValidatorConfig_Config'($vec#$1_Option_Option'$1_ValidatorConfig_Config'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'(t: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    !$1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_DiemAccount_WithdrawCapability'(t: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    !$1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(t))
}

// struct Option::Option<address> at /home/ying/diem/language/move-stdlib/modules/Option.move:8:5+81
type {:datatype} $1_Option_Option'address';
function {:constructor} $1_Option_Option'address'($vec: Vec (int)): $1_Option_Option'address';
function {:inline} $Update'$1_Option_Option'address''_vec(s: $1_Option_Option'address', x: Vec (int)): $1_Option_Option'address' {
    $1_Option_Option'address'(x)
}
function $IsValid'$1_Option_Option'address''(s: $1_Option_Option'address'): bool {
    $IsValid'vec'address''($vec#$1_Option_Option'address'(s))
}
function {:inline} $IsEqual'$1_Option_Option'address''(s1: $1_Option_Option'address', s2: $1_Option_Option'address'): bool {
    s1 == s2
}

// struct Option::Option<ValidatorConfig::Config> at /home/ying/diem/language/move-stdlib/modules/Option.move:8:5+81
type {:datatype} $1_Option_Option'$1_ValidatorConfig_Config';
function {:constructor} $1_Option_Option'$1_ValidatorConfig_Config'($vec: Vec ($1_ValidatorConfig_Config)): $1_Option_Option'$1_ValidatorConfig_Config';
function {:inline} $Update'$1_Option_Option'$1_ValidatorConfig_Config''_vec(s: $1_Option_Option'$1_ValidatorConfig_Config', x: Vec ($1_ValidatorConfig_Config)): $1_Option_Option'$1_ValidatorConfig_Config' {
    $1_Option_Option'$1_ValidatorConfig_Config'(x)
}
function $IsValid'$1_Option_Option'$1_ValidatorConfig_Config''(s: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    $IsValid'vec'$1_ValidatorConfig_Config''($vec#$1_Option_Option'$1_ValidatorConfig_Config'(s))
}
function {:inline} $IsEqual'$1_Option_Option'$1_ValidatorConfig_Config''(s1: $1_Option_Option'$1_ValidatorConfig_Config', s2: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    s1 == s2
}

// struct Option::Option<DiemAccount::KeyRotationCapability> at /home/ying/diem/language/move-stdlib/modules/Option.move:8:5+81
type {:datatype} $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
function {:constructor} $1_Option_Option'$1_DiemAccount_KeyRotationCapability'($vec: Vec ($1_DiemAccount_KeyRotationCapability)): $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
function {:inline} $Update'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''_vec(s: $1_Option_Option'$1_DiemAccount_KeyRotationCapability', x: Vec ($1_DiemAccount_KeyRotationCapability)): $1_Option_Option'$1_DiemAccount_KeyRotationCapability' {
    $1_Option_Option'$1_DiemAccount_KeyRotationCapability'(x)
}
function $IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''(s: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    $IsValid'vec'$1_DiemAccount_KeyRotationCapability''($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(s))
}
function {:inline} $IsEqual'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''(s1: $1_Option_Option'$1_DiemAccount_KeyRotationCapability', s2: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    s1 == s2
}

// struct Option::Option<DiemAccount::WithdrawCapability> at /home/ying/diem/language/move-stdlib/modules/Option.move:8:5+81
type {:datatype} $1_Option_Option'$1_DiemAccount_WithdrawCapability';
function {:constructor} $1_Option_Option'$1_DiemAccount_WithdrawCapability'($vec: Vec ($1_DiemAccount_WithdrawCapability)): $1_Option_Option'$1_DiemAccount_WithdrawCapability';
function {:inline} $Update'$1_Option_Option'$1_DiemAccount_WithdrawCapability''_vec(s: $1_Option_Option'$1_DiemAccount_WithdrawCapability', x: Vec ($1_DiemAccount_WithdrawCapability)): $1_Option_Option'$1_DiemAccount_WithdrawCapability' {
    $1_Option_Option'$1_DiemAccount_WithdrawCapability'(x)
}
function $IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''(s: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    $IsValid'vec'$1_DiemAccount_WithdrawCapability''($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(s))
}
function {:inline} $IsEqual'$1_Option_Option'$1_DiemAccount_WithdrawCapability''(s1: $1_Option_Option'$1_DiemAccount_WithdrawCapability', s2: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    s1 == s2
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:82:5+84
function {:inline} $1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): bool {
    $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:228:5+176
function {:inline} $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): bool {
    ($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, addr) && $1_Option_$is_some'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr))))
}

// struct ValidatorConfig::ValidatorConfig at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:21:5+260
type {:datatype} $1_ValidatorConfig_ValidatorConfig;
function {:constructor} $1_ValidatorConfig_ValidatorConfig($config: $1_Option_Option'$1_ValidatorConfig_Config', $operator_account: $1_Option_Option'address', $human_name: Vec (int)): $1_ValidatorConfig_ValidatorConfig;
function {:inline} $Update'$1_ValidatorConfig_ValidatorConfig'_config(s: $1_ValidatorConfig_ValidatorConfig, x: $1_Option_Option'$1_ValidatorConfig_Config'): $1_ValidatorConfig_ValidatorConfig {
    $1_ValidatorConfig_ValidatorConfig(x, $operator_account#$1_ValidatorConfig_ValidatorConfig(s), $human_name#$1_ValidatorConfig_ValidatorConfig(s))
}
function {:inline} $Update'$1_ValidatorConfig_ValidatorConfig'_operator_account(s: $1_ValidatorConfig_ValidatorConfig, x: $1_Option_Option'address'): $1_ValidatorConfig_ValidatorConfig {
    $1_ValidatorConfig_ValidatorConfig($config#$1_ValidatorConfig_ValidatorConfig(s), x, $human_name#$1_ValidatorConfig_ValidatorConfig(s))
}
function {:inline} $Update'$1_ValidatorConfig_ValidatorConfig'_human_name(s: $1_ValidatorConfig_ValidatorConfig, x: Vec (int)): $1_ValidatorConfig_ValidatorConfig {
    $1_ValidatorConfig_ValidatorConfig($config#$1_ValidatorConfig_ValidatorConfig(s), $operator_account#$1_ValidatorConfig_ValidatorConfig(s), x)
}
function $IsValid'$1_ValidatorConfig_ValidatorConfig'(s: $1_ValidatorConfig_ValidatorConfig): bool {
    $IsValid'$1_Option_Option'$1_ValidatorConfig_Config''($config#$1_ValidatorConfig_ValidatorConfig(s))
      && $IsValid'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig(s))
      && $IsValid'vec'u8''($human_name#$1_ValidatorConfig_ValidatorConfig(s))
}
function {:inline} $IsEqual'$1_ValidatorConfig_ValidatorConfig'(s1: $1_ValidatorConfig_ValidatorConfig, s2: $1_ValidatorConfig_ValidatorConfig): bool {
    s1 == s2
}
var $1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig;

// struct ValidatorConfig::Config at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:15:5+178
type {:datatype} $1_ValidatorConfig_Config;
function {:constructor} $1_ValidatorConfig_Config($consensus_pubkey: Vec (int), $validator_network_addresses: Vec (int), $fullnode_network_addresses: Vec (int)): $1_ValidatorConfig_Config;
function {:inline} $Update'$1_ValidatorConfig_Config'_consensus_pubkey(s: $1_ValidatorConfig_Config, x: Vec (int)): $1_ValidatorConfig_Config {
    $1_ValidatorConfig_Config(x, $validator_network_addresses#$1_ValidatorConfig_Config(s), $fullnode_network_addresses#$1_ValidatorConfig_Config(s))
}
function {:inline} $Update'$1_ValidatorConfig_Config'_validator_network_addresses(s: $1_ValidatorConfig_Config, x: Vec (int)): $1_ValidatorConfig_Config {
    $1_ValidatorConfig_Config($consensus_pubkey#$1_ValidatorConfig_Config(s), x, $fullnode_network_addresses#$1_ValidatorConfig_Config(s))
}
function {:inline} $Update'$1_ValidatorConfig_Config'_fullnode_network_addresses(s: $1_ValidatorConfig_Config, x: Vec (int)): $1_ValidatorConfig_Config {
    $1_ValidatorConfig_Config($consensus_pubkey#$1_ValidatorConfig_Config(s), $validator_network_addresses#$1_ValidatorConfig_Config(s), x)
}
function $IsValid'$1_ValidatorConfig_Config'(s: $1_ValidatorConfig_Config): bool {
    $IsValid'vec'u8''($consensus_pubkey#$1_ValidatorConfig_Config(s))
      && $IsValid'vec'u8''($validator_network_addresses#$1_ValidatorConfig_Config(s))
      && $IsValid'vec'u8''($fullnode_network_addresses#$1_ValidatorConfig_Config(s))
}
function {:inline} $IsEqual'$1_ValidatorConfig_Config'(s1: $1_ValidatorConfig_Config, s2: $1_ValidatorConfig_Config): bool {
    s1 == s2
}

// struct SlidingNonce::SlidingNonce at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:10:5+341
type {:datatype} $1_SlidingNonce_SlidingNonce;
function {:constructor} $1_SlidingNonce_SlidingNonce($min_nonce: int, $nonce_mask: int): $1_SlidingNonce_SlidingNonce;
function {:inline} $Update'$1_SlidingNonce_SlidingNonce'_min_nonce(s: $1_SlidingNonce_SlidingNonce, x: int): $1_SlidingNonce_SlidingNonce {
    $1_SlidingNonce_SlidingNonce(x, $nonce_mask#$1_SlidingNonce_SlidingNonce(s))
}
function {:inline} $Update'$1_SlidingNonce_SlidingNonce'_nonce_mask(s: $1_SlidingNonce_SlidingNonce, x: int): $1_SlidingNonce_SlidingNonce {
    $1_SlidingNonce_SlidingNonce($min_nonce#$1_SlidingNonce_SlidingNonce(s), x)
}
function $IsValid'$1_SlidingNonce_SlidingNonce'(s: $1_SlidingNonce_SlidingNonce): bool {
    $IsValid'u64'($min_nonce#$1_SlidingNonce_SlidingNonce(s))
      && $IsValid'u128'($nonce_mask#$1_SlidingNonce_SlidingNonce(s))
}
function {:inline} $IsEqual'$1_SlidingNonce_SlidingNonce'(s1: $1_SlidingNonce_SlidingNonce, s2: $1_SlidingNonce_SlidingNonce): bool {
    s1 == s2
}
var $1_SlidingNonce_SlidingNonce_$memory: $Memory $1_SlidingNonce_SlidingNonce;

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:89:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): $1_DiemSystem_DiemSystem {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:89:5+260
function {:inline} $1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): $1_RegisteredCurrencies_RegisteredCurrencies {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'($ResourceValue($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:89:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:89:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): $1_DiemVMConfig_DiemVMConfig {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:89:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): $1_DiemVersion_DiemVersion {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:200:5+94
function {:inline} $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory: $Memory $1_DiemConfig_DisableReconfiguration): bool {
    !$ResourceExists($1_DiemConfig_DisableReconfiguration_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:436:9+84
function {:inline} $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory: $Memory $1_DiemConfig_Configuration): bool {
    $ResourceExists($1_DiemConfig_Configuration_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:440:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:440:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:440:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:440:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:440:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, 173345816)
}

// struct DiemConfig::DiemConfig<DiemSystem::DiemSystem> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:12:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($payload: $1_DiemSystem_DiemSystem): $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem', x: $1_DiemSystem_DiemSystem): $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem' {
    $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''(s: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    $IsValid'$1_DiemSystem_DiemSystem'($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''(s1: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem', s2: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';

// struct DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:12:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';
function {:constructor} $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'($payload: $1_RegisteredCurrencies_RegisteredCurrencies): $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''_payload(s: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies', x: $1_RegisteredCurrencies_RegisteredCurrencies): $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies' {
    $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''(s: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    $IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'($payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''(s1: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies', s2: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';

// struct DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:12:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($payload: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption): $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption', x: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption): $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption' {
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''(s: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    $IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''(s1: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption', s2: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';

// struct DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:12:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'($payload: $1_DiemVMConfig_DiemVMConfig): $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig', x: $1_DiemVMConfig_DiemVMConfig): $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig' {
    $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''(s: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): bool {
    $IsValid'$1_DiemVMConfig_DiemVMConfig'($payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''(s1: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig', s2: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';

// struct DiemConfig::DiemConfig<DiemVersion::DiemVersion> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:12:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'($payload: $1_DiemVersion_DiemVersion): $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion', x: $1_DiemVersion_DiemVersion): $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion' {
    $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''(s: $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): bool {
    $IsValid'$1_DiemVersion_DiemVersion'($payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''(s1: $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion', s2: $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion';

// struct DiemConfig::Configuration at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:25:5+306
type {:datatype} $1_DiemConfig_Configuration;
function {:constructor} $1_DiemConfig_Configuration($epoch: int, $last_reconfiguration_time: int, $events: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent'): $1_DiemConfig_Configuration;
function {:inline} $Update'$1_DiemConfig_Configuration'_epoch(s: $1_DiemConfig_Configuration, x: int): $1_DiemConfig_Configuration {
    $1_DiemConfig_Configuration(x, $last_reconfiguration_time#$1_DiemConfig_Configuration(s), $events#$1_DiemConfig_Configuration(s))
}
function {:inline} $Update'$1_DiemConfig_Configuration'_last_reconfiguration_time(s: $1_DiemConfig_Configuration, x: int): $1_DiemConfig_Configuration {
    $1_DiemConfig_Configuration($epoch#$1_DiemConfig_Configuration(s), x, $events#$1_DiemConfig_Configuration(s))
}
function {:inline} $Update'$1_DiemConfig_Configuration'_events(s: $1_DiemConfig_Configuration, x: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent'): $1_DiemConfig_Configuration {
    $1_DiemConfig_Configuration($epoch#$1_DiemConfig_Configuration(s), $last_reconfiguration_time#$1_DiemConfig_Configuration(s), x)
}
function $IsValid'$1_DiemConfig_Configuration'(s: $1_DiemConfig_Configuration): bool {
    $IsValid'u64'($epoch#$1_DiemConfig_Configuration(s))
      && $IsValid'u64'($last_reconfiguration_time#$1_DiemConfig_Configuration(s))
      && $IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''($events#$1_DiemConfig_Configuration(s))
}
function {:inline} $IsEqual'$1_DiemConfig_Configuration'(s1: $1_DiemConfig_Configuration, s2: $1_DiemConfig_Configuration): bool {
    s1 == s2
}
var $1_DiemConfig_Configuration_$memory: $Memory $1_DiemConfig_Configuration;

// struct DiemConfig::DisableReconfiguration at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:38:5+40
type {:datatype} $1_DiemConfig_DisableReconfiguration;
function {:constructor} $1_DiemConfig_DisableReconfiguration($dummy_field: bool): $1_DiemConfig_DisableReconfiguration;
function {:inline} $Update'$1_DiemConfig_DisableReconfiguration'_dummy_field(s: $1_DiemConfig_DisableReconfiguration, x: bool): $1_DiemConfig_DisableReconfiguration {
    $1_DiemConfig_DisableReconfiguration(x)
}
function $IsValid'$1_DiemConfig_DisableReconfiguration'(s: $1_DiemConfig_DisableReconfiguration): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_DisableReconfiguration(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DisableReconfiguration'(s1: $1_DiemConfig_DisableReconfiguration, s2: $1_DiemConfig_DisableReconfiguration): bool {
    s1 == s2
}
var $1_DiemConfig_DisableReconfiguration_$memory: $Memory $1_DiemConfig_DisableReconfiguration;

// struct DiemConfig::ModifyConfigCapability<DiemSystem::DiemSystem> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:35:5+57
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem' {
    $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''(s1: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem', s2: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';

// struct DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:35:5+57
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies' {
    $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''(s: $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''(s1: $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies', s2: $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies';

// struct DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:35:5+57
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption' {
    $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''(s1: $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption', s2: $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';

// struct DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:35:5+57
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig' {
    $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''(s1: $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig', s2: $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig';

// struct DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:35:5+57
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion' {
    $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''(s1: $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion', s2: $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion';

// struct DiemConfig::NewEpochEvent at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:20:5+64
type {:datatype} $1_DiemConfig_NewEpochEvent;
function {:constructor} $1_DiemConfig_NewEpochEvent($epoch: int): $1_DiemConfig_NewEpochEvent;
function {:inline} $Update'$1_DiemConfig_NewEpochEvent'_epoch(s: $1_DiemConfig_NewEpochEvent, x: int): $1_DiemConfig_NewEpochEvent {
    $1_DiemConfig_NewEpochEvent(x)
}
function $IsValid'$1_DiemConfig_NewEpochEvent'(s: $1_DiemConfig_NewEpochEvent): bool {
    $IsValid'u64'($epoch#$1_DiemConfig_NewEpochEvent(s))
}
function {:inline} $IsEqual'$1_DiemConfig_NewEpochEvent'(s1: $1_DiemConfig_NewEpochEvent, s2: $1_DiemConfig_NewEpochEvent): bool {
    s1 == s2
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:597:10+105
function {:inline} $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): Vec ($1_DiemSystem_ValidatorInfo) {
    $validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))
}

// struct DiemSystem::DiemSystem at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:48:5+198
type {:datatype} $1_DiemSystem_DiemSystem;
function {:constructor} $1_DiemSystem_DiemSystem($scheme: int, $validators: Vec ($1_DiemSystem_ValidatorInfo)): $1_DiemSystem_DiemSystem;
function {:inline} $Update'$1_DiemSystem_DiemSystem'_scheme(s: $1_DiemSystem_DiemSystem, x: int): $1_DiemSystem_DiemSystem {
    $1_DiemSystem_DiemSystem(x, $validators#$1_DiemSystem_DiemSystem(s))
}
function {:inline} $Update'$1_DiemSystem_DiemSystem'_validators(s: $1_DiemSystem_DiemSystem, x: Vec ($1_DiemSystem_ValidatorInfo)): $1_DiemSystem_DiemSystem {
    $1_DiemSystem_DiemSystem($scheme#$1_DiemSystem_DiemSystem(s), x)
}
function $IsValid'$1_DiemSystem_DiemSystem'(s: $1_DiemSystem_DiemSystem): bool {
    $IsValid'u8'($scheme#$1_DiemSystem_DiemSystem(s))
      && $IsValid'vec'$1_DiemSystem_ValidatorInfo''($validators#$1_DiemSystem_DiemSystem(s))
}
function {:inline} $IsEqual'$1_DiemSystem_DiemSystem'(s1: $1_DiemSystem_DiemSystem, s2: $1_DiemSystem_DiemSystem): bool {
    s1 == s2
}

// struct DiemSystem::CapabilityHolder at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:39:5+242
type {:datatype} $1_DiemSystem_CapabilityHolder;
function {:constructor} $1_DiemSystem_CapabilityHolder($cap: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'): $1_DiemSystem_CapabilityHolder;
function {:inline} $Update'$1_DiemSystem_CapabilityHolder'_cap(s: $1_DiemSystem_CapabilityHolder, x: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'): $1_DiemSystem_CapabilityHolder {
    $1_DiemSystem_CapabilityHolder(x)
}
function $IsValid'$1_DiemSystem_CapabilityHolder'(s: $1_DiemSystem_CapabilityHolder): bool {
    $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''($cap#$1_DiemSystem_CapabilityHolder(s))
}
function {:inline} $IsEqual'$1_DiemSystem_CapabilityHolder'(s1: $1_DiemSystem_CapabilityHolder, s2: $1_DiemSystem_CapabilityHolder): bool {
    s1 == s2
}
var $1_DiemSystem_CapabilityHolder_$memory: $Memory $1_DiemSystem_CapabilityHolder;

// struct DiemSystem::ValidatorInfo at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:18:5+600
type {:datatype} $1_DiemSystem_ValidatorInfo;
function {:constructor} $1_DiemSystem_ValidatorInfo($addr: int, $consensus_voting_power: int, $config: $1_ValidatorConfig_Config, $last_config_update_time: int): $1_DiemSystem_ValidatorInfo;
function {:inline} $Update'$1_DiemSystem_ValidatorInfo'_addr(s: $1_DiemSystem_ValidatorInfo, x: int): $1_DiemSystem_ValidatorInfo {
    $1_DiemSystem_ValidatorInfo(x, $consensus_voting_power#$1_DiemSystem_ValidatorInfo(s), $config#$1_DiemSystem_ValidatorInfo(s), $last_config_update_time#$1_DiemSystem_ValidatorInfo(s))
}
function {:inline} $Update'$1_DiemSystem_ValidatorInfo'_consensus_voting_power(s: $1_DiemSystem_ValidatorInfo, x: int): $1_DiemSystem_ValidatorInfo {
    $1_DiemSystem_ValidatorInfo($addr#$1_DiemSystem_ValidatorInfo(s), x, $config#$1_DiemSystem_ValidatorInfo(s), $last_config_update_time#$1_DiemSystem_ValidatorInfo(s))
}
function {:inline} $Update'$1_DiemSystem_ValidatorInfo'_config(s: $1_DiemSystem_ValidatorInfo, x: $1_ValidatorConfig_Config): $1_DiemSystem_ValidatorInfo {
    $1_DiemSystem_ValidatorInfo($addr#$1_DiemSystem_ValidatorInfo(s), $consensus_voting_power#$1_DiemSystem_ValidatorInfo(s), x, $last_config_update_time#$1_DiemSystem_ValidatorInfo(s))
}
function {:inline} $Update'$1_DiemSystem_ValidatorInfo'_last_config_update_time(s: $1_DiemSystem_ValidatorInfo, x: int): $1_DiemSystem_ValidatorInfo {
    $1_DiemSystem_ValidatorInfo($addr#$1_DiemSystem_ValidatorInfo(s), $consensus_voting_power#$1_DiemSystem_ValidatorInfo(s), $config#$1_DiemSystem_ValidatorInfo(s), x)
}
function $IsValid'$1_DiemSystem_ValidatorInfo'(s: $1_DiemSystem_ValidatorInfo): bool {
    $IsValid'address'($addr#$1_DiemSystem_ValidatorInfo(s))
      && $IsValid'u64'($consensus_voting_power#$1_DiemSystem_ValidatorInfo(s))
      && $IsValid'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(s))
      && $IsValid'u64'($last_config_update_time#$1_DiemSystem_ValidatorInfo(s))
}
function {:inline} $IsEqual'$1_DiemSystem_ValidatorInfo'(s1: $1_DiemSystem_ValidatorInfo, s2: $1_DiemSystem_ValidatorInfo): bool {
    s1 == s2
}

// fun DiemSystem::initialize_validator_set [baseline] at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:94:5+583
procedure {:inline 1} $1_DiemSystem_initialize_validator_set(_$t0: int) returns ()
{
    // declare local variables
    var $t1: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: Vec ($1_DiemSystem_ValidatorInfo);
    var $t12: $1_DiemSystem_DiemSystem;
    var $t13: int;
    var $t14: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';
    var $t15: bool;
    var $t16: int;
    var $t17: bool;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: $1_DiemSystem_CapabilityHolder;
    var $t0: int;
    var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies: [int]bool;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'': $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'': $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $1_DiemConfig_Configuration_$memory#148: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:117:9+50
    assume {:print "$at(16,5250,5300)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:94:5+1
    assume {:print "$at(16,4434,4435)"} true;
    assume {:print "$track_local(14,5,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(16,4516,4547)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:9+31

    // assume Identical($t6, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:9+31
    assume ($t6 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:9+31
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t7)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:9+31
    assume {:print "$at(16,4516,4547)"} true;
    assume {:print "$track_abort(14,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:98:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(16,4557,4592)"} true;

    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:98:9+35
    assume {:print "$at(16,4557,4592)"} true;

    // assume Identical($t9, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t8))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:98:9+35
    assume ($t9 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t8)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t9) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:98:9+35
    if ($t9) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:98:9+35
L7:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t7)), And(Not(exists<Roles::RoleId>($t8)), Eq(5, $t7))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 0), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:98:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t7)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t8) && $IsEqual'u8'(5, $t7))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 0) && $IsEqual'u8'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:98:9+35
    assume {:print "$at(16,4557,4592)"} true;
    assume {:print "$track_abort(14,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:98:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:98:9+35
L6:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:98:9+35

    // $t10 := 0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:25+1
    assume {:print "$at(16,4749,4750)"} true;
    $t10 := 0;
    assume $IsValid'u8'($t10);

    // $t11 := Vector::empty<DiemSystem::ValidatorInfo>() on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:104:29+15
    assume {:print "$at(16,4780,4795)"} true;
    call $t11 := $1_Vector_empty'$1_DiemSystem_ValidatorInfo'();
    if ($abort_flag) {
        assume {:print "$at(16,4780,4795)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(14,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // $t12 := pack DiemSystem::DiemSystem($t10, $t11) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:102:13+98
    assume {:print "$at(16,4712,4810)"} true;
    $t12 := $1_DiemSystem_DiemSystem($t10, $t11);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    // >> opaque call: $t7 := DiemConfig::publish_new_config_and_get_capability<DiemSystem::DiemSystem>($t0, $t6)
    assume {:print "$at(16,4613,4821)"} true;

    // assume Identical($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t13 == $1_Signer_spec_address_of($t0));

    // $t14 := opaque begin: DiemConfig::publish_new_config_and_get_capability<DiemSystem::DiemSystem>($t0, $t12) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    assume {:print "$at(16,4613,4821)"} true;

    // assume Identical($t15, Or(Or(Or(Not(exists<Roles::RoleId>($t13)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18)), exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    assume ($t15 == (((!$ResourceExists($1_Roles_RoleId_$memory, $t13) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)) || $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816)));

    // if ($t15) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    if ($t15) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
L9:

    // assume Or(Or(Or(And(Not(exists<Roles::RoleId>($t13)), Eq(5, $t7)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t7))), And(exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18), Eq(6, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    assume ((((!$ResourceExists($1_Roles_RoleId_$memory, $t13) && $IsEqual'u8'(5, $t7)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0) && $IsEqual'u8'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t7))) || ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816) && $IsEqual'u8'(6, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    assume {:print "$at(16,4613,4821)"} true;
    assume {:print "$track_abort(14,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
L8:

    // @148 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    $1_DiemConfig_Configuration_$memory#148 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'';
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816);
    }

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    assume $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''($t14);

    // assume DiemConfig::spec_is_published<DiemSystem::DiemSystem>() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    assume $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory);

    // assume Eq<DiemSystem::DiemSystem>(DiemConfig::$get<DiemSystem::DiemSystem>(), $t12) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    assume $IsEqual'$1_DiemSystem_DiemSystem'($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), $t12);

    // assume Eq<bool>(DiemConfig::spec_has_config[@148](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#148), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // $t14 := opaque end: DiemConfig::publish_new_config_and_get_capability<DiemSystem::DiemSystem>($t0, $t12) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:19+208

    // trace_local[cap]($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:13+3
    assume {:print "$track_local(14,5,1):", $t14} $t14 == $t14;

    // $t16 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:108:39+9
    assume {:print "$at(16,4877,4886)"} true;
    $t16 := 173345816;
    assume $IsValid'address'($t16);

    // $t17 := exists<DiemSystem::CapabilityHolder>($t16) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:108:14+6
    $t17 := $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, $t16);

    // $t18 := !($t17) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:108:13+1
    call $t18 := $Not($t17);

    // $t19 := 0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:109:39+18
    assume {:print "$at(16,4927,4945)"} true;
    $t19 := 0;
    assume $IsValid'u64'($t19);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:109:13+45
    // >> opaque call: $t12 := Errors::already_published($t11)

    // $t20 := opaque begin: Errors::already_published($t19) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:109:13+45

    // assume WellFormed($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:109:13+45
    assume $IsValid'u64'($t20);

    // assume Eq<u64>($t20, 6) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:109:13+45
    assume $IsEqual'u64'($t20, 6);

    // $t20 := opaque end: Errors::already_published($t19) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:109:13+45

    // trace_local[tmp#$3]($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:107:9+125
    assume {:print "$at(16,4831,4956)"} true;
    assume {:print "$track_local(14,5,3):", $t20} $t20 == $t20;

    // trace_local[tmp#$2]($t18) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:107:9+125
    assume {:print "$track_local(14,5,2):", $t18} $t18 == $t18;

    // if ($t18) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:107:9+125
    if ($t18) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:107:9+125
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:107:9+125

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:107:9+125
    assume {:print "$at(16,4831,4956)"} true;
    assume {:print "$track_abort(14,5):", $t20} $t20 == $t20;

    // $t7 := move($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:107:9+125
    $t7 := $t20;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:107:9+125
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:111:17+10
    assume {:print "$at(16,4974,4984)"} true;
L0:

    // $t21 := pack DiemSystem::CapabilityHolder($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:111:29+24
    $t21 := $1_DiemSystem_CapabilityHolder($t14);

    // move_to<DiemSystem::CapabilityHolder>($t21, $t0) on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:111:9+7
    if ($ResourceExists($1_DiemSystem_CapabilityHolder_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_DiemSystem_CapabilityHolder_$memory := $ResourceUpdate($1_DiemSystem_CapabilityHolder_$memory, $t0, $t21);
    }
    if ($abort_flag) {
        assume {:print "$at(16,4966,4973)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(14,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:5+1
    assume {:print "$at(16,5016,5017)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:5+1
L3:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:204:10+244
function {:inline} $1_FixedPoint32_spec_create_from_rational(numerator: int, denominator: int): $1_FixedPoint32_FixedPoint32 {
    if ($IsEqual'num'(numerator, denominator)) then ($1_FixedPoint32_FixedPoint32(1)) else ($1_FixedPoint32_FixedPoint32(2))
}

// struct FixedPoint32::FixedPoint32 at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:17:5+56
type {:datatype} $1_FixedPoint32_FixedPoint32;
function {:constructor} $1_FixedPoint32_FixedPoint32($value: int): $1_FixedPoint32_FixedPoint32;
function {:inline} $Update'$1_FixedPoint32_FixedPoint32'_value(s: $1_FixedPoint32_FixedPoint32, x: int): $1_FixedPoint32_FixedPoint32 {
    $1_FixedPoint32_FixedPoint32(x)
}
function $IsValid'$1_FixedPoint32_FixedPoint32'(s: $1_FixedPoint32_FixedPoint32): bool {
    $IsValid'u64'($value#$1_FixedPoint32_FixedPoint32(s))
}
function {:inline} $IsEqual'$1_FixedPoint32_FixedPoint32'(s1: $1_FixedPoint32_FixedPoint32, s2: $1_FixedPoint32_FixedPoint32): bool {
    s1 == s2
}

// struct RegisteredCurrencies::RegisteredCurrencies at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:13:5+101
type {:datatype} $1_RegisteredCurrencies_RegisteredCurrencies;
function {:constructor} $1_RegisteredCurrencies_RegisteredCurrencies($currency_codes: Vec (Vec (int))): $1_RegisteredCurrencies_RegisteredCurrencies;
function {:inline} $Update'$1_RegisteredCurrencies_RegisteredCurrencies'_currency_codes(s: $1_RegisteredCurrencies_RegisteredCurrencies, x: Vec (Vec (int))): $1_RegisteredCurrencies_RegisteredCurrencies {
    $1_RegisteredCurrencies_RegisteredCurrencies(x)
}
function $IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'(s: $1_RegisteredCurrencies_RegisteredCurrencies): bool {
    $IsValid'vec'vec'u8'''($currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies(s))
}
function {:inline} $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'(s1: $1_RegisteredCurrencies_RegisteredCurrencies, s2: $1_RegisteredCurrencies_RegisteredCurrencies): bool {
    s1 == s2
}

// fun RegisteredCurrencies::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:22:5+280
procedure {:inline 1} $1_RegisteredCurrencies_initialize(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: Vec (Vec (int));
    var $t8: $1_RegisteredCurrencies_RegisteredCurrencies;
    var $t9: int;
    var $t10: bool;
    var $t0: int;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'': $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'': $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $1_DiemConfig_Configuration_$memory#200: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:22:5+1
    assume {:print "$at(25,847,848)"} true;
    assume {:print "$track_local(17,1,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(25,900,931)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31

    // assume Identical($t3, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    assume ($t3 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t4)) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    assume {:print "$at(25,900,931)"} true;
    assume {:print "$track_abort(17,1):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(25,941,976)"} true;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    assume {:print "$at(25,941,976)"} true;

    // assume Identical($t6, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t5))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    assume ($t6 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t5)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t6) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    if ($t6) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t4)), And(Not(exists<Roles::RoleId>($t5)), Eq(5, $t4))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 0), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t4)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t5) && $IsEqual'u8'(5, $t4))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 0) && $IsEqual'u8'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    assume {:print "$at(25,941,976)"} true;
    assume {:print "$track_abort(17,1):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35

    // $t7 := Vector::empty<vector<u8>>() on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:52+15
    assume {:print "$at(25,1093,1108)"} true;
    call $t7 := $1_Vector_empty'vec'u8''();
    if ($abort_flag) {
        assume {:print "$at(25,1093,1108)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(17,1):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t8 := pack RegisteredCurrencies::RegisteredCurrencies($t7) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:13+56
    $t8 := $1_RegisteredCurrencies_RegisteredCurrencies($t7);

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    // >> opaque call: DiemConfig::publish_new_config<RegisteredCurrencies::RegisteredCurrencies>($t0, $t2)
    assume {:print "$at(25,986,1120)"} true;

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<RegisteredCurrencies::RegisteredCurrencies>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume {:print "$at(25,986,1120)"} true;

    // assume Identical($t10, Or(Or(Or(Or(DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>(), exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume ($t10 == (((($1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t10) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    if ($t10) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>(), exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t9)), Eq(5, $t4))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume (((($1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t9) && $IsEqual'u8'(5, $t4))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0) && $IsEqual'u8'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume {:print "$at(25,986,1120)"} true;
    assume {:print "$track_abort(17,1):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
L7:

    // @200 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    $1_DiemConfig_Configuration_$memory#200 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'';
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'');
    } else {
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816);
    }

    // modifies global<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(a550c18) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'';
        $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816, $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816);
    }

    // assume exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory);

    // assume Eq<RegisteredCurrencies::RegisteredCurrencies>(DiemConfig::$get<RegisteredCurrencies::RegisteredCurrencies>(), $t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory), $t8);

    // assume Eq<bool>(DiemConfig::spec_has_config[@200](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#200), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<RegisteredCurrencies::RegisteredCurrencies>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134

    // label L1 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:29:5+1
    assume {:print "$at(25,1126,1127)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:29:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:29:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:29:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun RegisteredCurrencies::add_currency_code [baseline] at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:49:5+449
procedure {:inline 1} $1_RegisteredCurrencies_add_currency_code(_$t0: int, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: $1_RegisteredCurrencies_RegisteredCurrencies;
    var $t3: bool;
    var $t4: int;
    var $t5: $1_DiemConfig_Configuration;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: $1_RegisteredCurrencies_RegisteredCurrencies;
    var $t10: Vec (Vec (int));
    var $t11: bool;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: $Mutation ($1_RegisteredCurrencies_RegisteredCurrencies);
    var $t16: $Mutation (Vec (Vec (int)));
    var $t17: $1_RegisteredCurrencies_RegisteredCurrencies;
    var $t18: $1_DiemConfig_Configuration;
    var $t19: int;
    var $t20: bool;
    var $t0: int;
    var $t1: Vec (int);
    var $temp_0'$1_DiemConfig_Configuration': $1_DiemConfig_Configuration;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'': $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';
    var $temp_0'$1_RegisteredCurrencies_RegisteredCurrencies': $1_RegisteredCurrencies_RegisteredCurrencies;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_DiemConfig_Configuration_$memory#154: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t15));
    assume IsEmptyVec(p#$Mutation($t16));

    // bytecode translation starts here
    // assume Identical($t5, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t5 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t6, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t6 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:49:5+1
    assume {:print "$at(25,1822,1823)"} true;
    assume {:print "$track_local(17,0,0):", $t0} $t0 == $t0;

    // trace_local[currency_code]($t1) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:49:5+1
    assume {:print "$track_local(17,0,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    // >> opaque call: $t2 := DiemConfig::get<RegisteredCurrencies::RegisteredCurrencies>()
    assume {:print "$at(25,1945,1984)"} true;

    // $t2 := opaque begin: DiemConfig::get<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39

    // assume Identical($t7, Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume ($t7 == !$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816));

    // if ($t7) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    if ($t7) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
L5:

    // assume And(Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18)), Eq(5, $t8)) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume (!$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816) && $IsEqual'u8'(5, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume {:print "$at(25,1945,1984)"} true;
    assume {:print "$track_abort(17,0):", $t8} $t8 == $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
L4:

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume $IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'($t2);

    // assume Eq<RegisteredCurrencies::RegisteredCurrencies>($t2, DiemConfig::$get<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'($t2, $1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // $t2 := opaque end: DiemConfig::get<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39

    // trace_local[config]($t2) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:13+6
    assume {:print "$track_local(17,0,2):", $t2} $t2 == $t2;

    // $t9 := copy($t2) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:32+6
    assume {:print "$at(25,2033,2039)"} true;
    $t9 := $t2;

    // $t10 := get_field<RegisteredCurrencies::RegisteredCurrencies>.currency_codes($t9) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:31+22
    $t10 := $currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies($t9);

    // $t11 := Vector::contains<vector<u8>>($t10, $t1) on_abort goto L3 with $t8 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:14+56
    call $t11 := $1_Vector_contains'vec'u8''($t10, $t1);
    if ($abort_flag) {
        assume {:print "$at(25,2015,2071)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(17,0):", $t8} $t8 == $t8;
        goto L3;
    }

    // $t12 := !($t11) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:13+1
    call $t12 := $Not($t11);

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:38+28
    assume {:print "$at(25,2110,2138)"} true;
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:13+54
    // >> opaque call: $t10 := Errors::invalid_argument($t9)

    // $t14 := opaque begin: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:13+54

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:13+54
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 7) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:13+54
    assume $IsEqual'u64'($t14, 7);

    // $t14 := opaque end: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:13+54

    // trace_local[tmp#$4]($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    assume {:print "$at(25,1994,2149)"} true;
    assume {:print "$track_local(17,0,4):", $t14} $t14 == $t14;

    // trace_local[tmp#$3]($t12) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    assume {:print "$track_local(17,0,3):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    assume {:print "$at(25,1994,2149)"} true;
    assume {:print "$track_abort(17,0):", $t14} $t14 == $t14;

    // $t8 := move($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    $t8 := $t14;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:32+6
    assume {:print "$at(25,2182,2188)"} true;
L0:

    // $t15 := borrow_local($t2) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:32+6
    $t15 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t16 := borrow_field<RegisteredCurrencies::RegisteredCurrencies>.currency_codes($t15) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:27+26
    $t16 := $ChildMutation($t15, 0, $currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies($Dereference($t15)));

    // Vector::push_back<vector<u8>>($t16, $t1) on_abort goto L3 with $t8 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:9+60
    call $t16 := $1_Vector_push_back'vec'u8''($t16, $t1);
    if ($abort_flag) {
        assume {:print "$at(25,2159,2219)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(17,0):", $t8} $t8 == $t8;
        goto L3;
    }

    // write_back[Reference($t15).currency_codes]($t16) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:9+60
    $t15 := $UpdateMutation($t15, $Update'$1_RegisteredCurrencies_RegisteredCurrencies'_currency_codes($Dereference($t15), $Dereference($t16)));

    // write_back[LocalRoot($t2)@]($t15) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:9+60
    $t2 := $Dereference($t15);

    // $t17 := move($t2) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:37+6
    assume {:print "$at(25,2257,2263)"} true;
    $t17 := $t2;

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    // >> opaque call: DiemConfig::set<RegisteredCurrencies::RegisteredCurrencies>($t0, $t13)

    // assume Identical($t18, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t18 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t19, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t19 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // opaque begin: DiemConfig::set<RegisteredCurrencies::RegisteredCurrencies>($t0, $t17) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume {:print "$at(25,2229,2264)"} true;

    // assume Identical($t20, Or(Or(Not(exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18))), And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t18), 18446744073709551615)), Lt($t19, select DiemConfig::Configuration.last_reconfiguration_time($t18))))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume ($t20 == ((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0)) || !$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816)) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t18) < 18446744073709551615)) && ($t19 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t18)))));

    // if ($t20) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    if ($t20) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
L7:

    // assume Or(Or(And(Not(exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), Eq(4, $t8)), And(Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18)), Eq(5, $t8))), And(And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t18), 18446744073709551615)), Lt($t19, select DiemConfig::Configuration.last_reconfiguration_time($t18))), Eq(1, $t8))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume (((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0)) && $IsEqual'u8'(4, $t8)) || (!$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816) && $IsEqual'u8'(5, $t8))) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t18) < 18446744073709551615)) && ($t19 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t18))) && $IsEqual'u8'(1, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume {:print "$at(25,2229,2264)"} true;
    assume {:print "$track_abort(17,0):", $t8} $t8 == $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
L6:

    // @154 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    $1_DiemConfig_Configuration_$memory#154 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::Configuration>(a550c18) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, 173345816, $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, 173345816);
    }

    // modifies global<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'';
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'');
    } else {
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816);
    }

    // assume DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory);

    // assume Eq<RegisteredCurrencies::RegisteredCurrencies>(DiemConfig::$get<RegisteredCurrencies::RegisteredCurrencies>(), $t17) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory), $t17);

    // assume Eq<bool>(DiemConfig::spec_has_config[@154](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#154), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::set<RegisteredCurrencies::RegisteredCurrencies>($t0, $t17) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35

    // label L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:5+1
    assume {:print "$at(25,2270,2271)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:5+1
L3:

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:5+1
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1390:5+109
function {:inline} $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1390:5+109
function {:inline} $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1416:10+117
function {:inline} $1_Diem_spec_scaling_factor'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): int {
    $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1801:9+108
function {:inline} $1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1801:9+108
function {:inline} $1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
}

// struct Diem::Diem<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:22:5+126
type {:datatype} $1_Diem_Diem'$1_XUS_XUS';
function {:constructor} $1_Diem_Diem'$1_XUS_XUS'($value: int): $1_Diem_Diem'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_Diem'$1_XUS_XUS''_value(s: $1_Diem_Diem'$1_XUS_XUS', x: int): $1_Diem_Diem'$1_XUS_XUS' {
    $1_Diem_Diem'$1_XUS_XUS'(x)
}
function $IsValid'$1_Diem_Diem'$1_XUS_XUS''(s: $1_Diem_Diem'$1_XUS_XUS'): bool {
    $IsValid'u64'($value#$1_Diem_Diem'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_Diem'$1_XUS_XUS''(s1: $1_Diem_Diem'$1_XUS_XUS', s2: $1_Diem_Diem'$1_XUS_XUS'): bool {
    s1 == s2
}

// struct Diem::Diem<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:22:5+126
type {:datatype} $1_Diem_Diem'$1_XDX_XDX';
function {:constructor} $1_Diem_Diem'$1_XDX_XDX'($value: int): $1_Diem_Diem'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_Diem'$1_XDX_XDX''_value(s: $1_Diem_Diem'$1_XDX_XDX', x: int): $1_Diem_Diem'$1_XDX_XDX' {
    $1_Diem_Diem'$1_XDX_XDX'(x)
}
function $IsValid'$1_Diem_Diem'$1_XDX_XDX''(s: $1_Diem_Diem'$1_XDX_XDX'): bool {
    $IsValid'u64'($value#$1_Diem_Diem'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_Diem'$1_XDX_XDX''(s1: $1_Diem_Diem'$1_XDX_XDX', s2: $1_Diem_Diem'$1_XDX_XDX'): bool {
    s1 == s2
}

// struct Diem::BurnCapability<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:35:5+50
type {:datatype} $1_Diem_BurnCapability'$1_XUS_XUS';
function {:constructor} $1_Diem_BurnCapability'$1_XUS_XUS'($dummy_field: bool): $1_Diem_BurnCapability'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_BurnCapability'$1_XUS_XUS''_dummy_field(s: $1_Diem_BurnCapability'$1_XUS_XUS', x: bool): $1_Diem_BurnCapability'$1_XUS_XUS' {
    $1_Diem_BurnCapability'$1_XUS_XUS'(x)
}
function $IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''(s: $1_Diem_BurnCapability'$1_XUS_XUS'): bool {
    $IsValid'bool'($dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_BurnCapability'$1_XUS_XUS''(s1: $1_Diem_BurnCapability'$1_XUS_XUS', s2: $1_Diem_BurnCapability'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_Diem_BurnCapability'$1_XUS_XUS'_$memory: $Memory $1_Diem_BurnCapability'$1_XUS_XUS';

// struct Diem::BurnCapability<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:35:5+50
type {:datatype} $1_Diem_BurnCapability'$1_XDX_XDX';
function {:constructor} $1_Diem_BurnCapability'$1_XDX_XDX'($dummy_field: bool): $1_Diem_BurnCapability'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_BurnCapability'$1_XDX_XDX''_dummy_field(s: $1_Diem_BurnCapability'$1_XDX_XDX', x: bool): $1_Diem_BurnCapability'$1_XDX_XDX' {
    $1_Diem_BurnCapability'$1_XDX_XDX'(x)
}
function $IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''(s: $1_Diem_BurnCapability'$1_XDX_XDX'): bool {
    $IsValid'bool'($dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_BurnCapability'$1_XDX_XDX''(s1: $1_Diem_BurnCapability'$1_XDX_XDX', s2: $1_Diem_BurnCapability'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_Diem_BurnCapability'$1_XDX_XDX'_$memory: $Memory $1_Diem_BurnCapability'$1_XDX_XDX';

// struct Diem::BurnEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:56:5+323
type {:datatype} $1_Diem_BurnEvent;
function {:constructor} $1_Diem_BurnEvent($amount: int, $currency_code: Vec (int), $preburn_address: int): $1_Diem_BurnEvent;
function {:inline} $Update'$1_Diem_BurnEvent'_amount(s: $1_Diem_BurnEvent, x: int): $1_Diem_BurnEvent {
    $1_Diem_BurnEvent(x, $currency_code#$1_Diem_BurnEvent(s), $preburn_address#$1_Diem_BurnEvent(s))
}
function {:inline} $Update'$1_Diem_BurnEvent'_currency_code(s: $1_Diem_BurnEvent, x: Vec (int)): $1_Diem_BurnEvent {
    $1_Diem_BurnEvent($amount#$1_Diem_BurnEvent(s), x, $preburn_address#$1_Diem_BurnEvent(s))
}
function {:inline} $Update'$1_Diem_BurnEvent'_preburn_address(s: $1_Diem_BurnEvent, x: int): $1_Diem_BurnEvent {
    $1_Diem_BurnEvent($amount#$1_Diem_BurnEvent(s), $currency_code#$1_Diem_BurnEvent(s), x)
}
function $IsValid'$1_Diem_BurnEvent'(s: $1_Diem_BurnEvent): bool {
    $IsValid'u64'($amount#$1_Diem_BurnEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_BurnEvent(s))
      && $IsValid'address'($preburn_address#$1_Diem_BurnEvent(s))
}
function {:inline} $IsEqual'$1_Diem_BurnEvent'(s1: $1_Diem_BurnEvent, s2: $1_Diem_BurnEvent): bool {
    s1 == s2
}

// struct Diem::CancelBurnEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:81:5+327
type {:datatype} $1_Diem_CancelBurnEvent;
function {:constructor} $1_Diem_CancelBurnEvent($amount: int, $currency_code: Vec (int), $preburn_address: int): $1_Diem_CancelBurnEvent;
function {:inline} $Update'$1_Diem_CancelBurnEvent'_amount(s: $1_Diem_CancelBurnEvent, x: int): $1_Diem_CancelBurnEvent {
    $1_Diem_CancelBurnEvent(x, $currency_code#$1_Diem_CancelBurnEvent(s), $preburn_address#$1_Diem_CancelBurnEvent(s))
}
function {:inline} $Update'$1_Diem_CancelBurnEvent'_currency_code(s: $1_Diem_CancelBurnEvent, x: Vec (int)): $1_Diem_CancelBurnEvent {
    $1_Diem_CancelBurnEvent($amount#$1_Diem_CancelBurnEvent(s), x, $preburn_address#$1_Diem_CancelBurnEvent(s))
}
function {:inline} $Update'$1_Diem_CancelBurnEvent'_preburn_address(s: $1_Diem_CancelBurnEvent, x: int): $1_Diem_CancelBurnEvent {
    $1_Diem_CancelBurnEvent($amount#$1_Diem_CancelBurnEvent(s), $currency_code#$1_Diem_CancelBurnEvent(s), x)
}
function $IsValid'$1_Diem_CancelBurnEvent'(s: $1_Diem_CancelBurnEvent): bool {
    $IsValid'u64'($amount#$1_Diem_CancelBurnEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_CancelBurnEvent(s))
      && $IsValid'address'($preburn_address#$1_Diem_CancelBurnEvent(s))
}
function {:inline} $IsEqual'$1_Diem_CancelBurnEvent'(s1: $1_Diem_CancelBurnEvent, s2: $1_Diem_CancelBurnEvent): bool {
    s1 == s2
}

// struct Diem::CurrencyInfo<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:109:5+2300
type {:datatype} $1_Diem_CurrencyInfo'$1_XUS_XUS';
function {:constructor} $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value: int, $preburn_value: int, $to_xdx_exchange_rate: $1_FixedPoint32_FixedPoint32, $is_synthetic: bool, $scaling_factor: int, $fractional_part: int, $currency_code: Vec (int), $can_mint: bool, $mint_events: $1_Event_EventHandle'$1_Diem_MintEvent', $burn_events: $1_Event_EventHandle'$1_Diem_BurnEvent', $preburn_events: $1_Event_EventHandle'$1_Diem_PreburnEvent', $cancel_burn_events: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', $exchange_rate_update_events: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_total_value(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: int): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'(x, $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_preburn_value(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: int): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_to_xdx_exchange_rate(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_FixedPoint32_FixedPoint32): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_is_synthetic(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: bool): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_scaling_factor(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: int): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_fractional_part(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: int): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_currency_code(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: Vec (int)): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_can_mint(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: bool): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_mint_events(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_Event_EventHandle'$1_Diem_MintEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_burn_events(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_Event_EventHandle'$1_Diem_BurnEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_preburn_events(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_Event_EventHandle'$1_Diem_PreburnEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_cancel_burn_events(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_Event_EventHandle'$1_Diem_CancelBurnEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_exchange_rate_update_events(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x)
}
function $IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''(s: $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $IsValid'u128'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'u64'($preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_FixedPoint32_FixedPoint32'($to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'bool'($is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'u64'($scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'u64'($fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'bool'($can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''($mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''($burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''($preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''($cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''($exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_CurrencyInfo'$1_XUS_XUS''(s1: $1_Diem_CurrencyInfo'$1_XUS_XUS', s2: $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS';

// struct Diem::CurrencyInfo<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:109:5+2300
type {:datatype} $1_Diem_CurrencyInfo'$1_XDX_XDX';
function {:constructor} $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value: int, $preburn_value: int, $to_xdx_exchange_rate: $1_FixedPoint32_FixedPoint32, $is_synthetic: bool, $scaling_factor: int, $fractional_part: int, $currency_code: Vec (int), $can_mint: bool, $mint_events: $1_Event_EventHandle'$1_Diem_MintEvent', $burn_events: $1_Event_EventHandle'$1_Diem_BurnEvent', $preburn_events: $1_Event_EventHandle'$1_Diem_PreburnEvent', $cancel_burn_events: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', $exchange_rate_update_events: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_total_value(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: int): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'(x, $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_preburn_value(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: int): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_to_xdx_exchange_rate(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_FixedPoint32_FixedPoint32): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_is_synthetic(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: bool): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_scaling_factor(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: int): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_fractional_part(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: int): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_currency_code(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: Vec (int)): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_can_mint(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: bool): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_mint_events(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_Event_EventHandle'$1_Diem_MintEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_burn_events(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_Event_EventHandle'$1_Diem_BurnEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_preburn_events(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_Event_EventHandle'$1_Diem_PreburnEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_cancel_burn_events(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_Event_EventHandle'$1_Diem_CancelBurnEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_exchange_rate_update_events(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x)
}
function $IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''(s: $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $IsValid'u128'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'u64'($preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_FixedPoint32_FixedPoint32'($to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'bool'($is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'u64'($scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'u64'($fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'bool'($can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''($mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''($burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''($preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''($cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''($exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_CurrencyInfo'$1_XDX_XDX''(s1: $1_Diem_CurrencyInfo'$1_XDX_XDX', s2: $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX';

// struct Diem::MintCapability<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:31:5+50
type {:datatype} $1_Diem_MintCapability'$1_XUS_XUS';
function {:constructor} $1_Diem_MintCapability'$1_XUS_XUS'($dummy_field: bool): $1_Diem_MintCapability'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_MintCapability'$1_XUS_XUS''_dummy_field(s: $1_Diem_MintCapability'$1_XUS_XUS', x: bool): $1_Diem_MintCapability'$1_XUS_XUS' {
    $1_Diem_MintCapability'$1_XUS_XUS'(x)
}
function $IsValid'$1_Diem_MintCapability'$1_XUS_XUS''(s: $1_Diem_MintCapability'$1_XUS_XUS'): bool {
    $IsValid'bool'($dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_MintCapability'$1_XUS_XUS''(s1: $1_Diem_MintCapability'$1_XUS_XUS', s2: $1_Diem_MintCapability'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_Diem_MintCapability'$1_XUS_XUS'_$memory: $Memory $1_Diem_MintCapability'$1_XUS_XUS';

// struct Diem::MintCapability<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:31:5+50
type {:datatype} $1_Diem_MintCapability'$1_XDX_XDX';
function {:constructor} $1_Diem_MintCapability'$1_XDX_XDX'($dummy_field: bool): $1_Diem_MintCapability'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_MintCapability'$1_XDX_XDX''_dummy_field(s: $1_Diem_MintCapability'$1_XDX_XDX', x: bool): $1_Diem_MintCapability'$1_XDX_XDX' {
    $1_Diem_MintCapability'$1_XDX_XDX'(x)
}
function $IsValid'$1_Diem_MintCapability'$1_XDX_XDX''(s: $1_Diem_MintCapability'$1_XDX_XDX'): bool {
    $IsValid'bool'($dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_MintCapability'$1_XDX_XDX''(s1: $1_Diem_MintCapability'$1_XDX_XDX', s2: $1_Diem_MintCapability'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_Diem_MintCapability'$1_XDX_XDX'_$memory: $Memory $1_Diem_MintCapability'$1_XDX_XDX';

// struct Diem::MintEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:42:5+199
type {:datatype} $1_Diem_MintEvent;
function {:constructor} $1_Diem_MintEvent($amount: int, $currency_code: Vec (int)): $1_Diem_MintEvent;
function {:inline} $Update'$1_Diem_MintEvent'_amount(s: $1_Diem_MintEvent, x: int): $1_Diem_MintEvent {
    $1_Diem_MintEvent(x, $currency_code#$1_Diem_MintEvent(s))
}
function {:inline} $Update'$1_Diem_MintEvent'_currency_code(s: $1_Diem_MintEvent, x: Vec (int)): $1_Diem_MintEvent {
    $1_Diem_MintEvent($amount#$1_Diem_MintEvent(s), x)
}
function $IsValid'$1_Diem_MintEvent'(s: $1_Diem_MintEvent): bool {
    $IsValid'u64'($amount#$1_Diem_MintEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_MintEvent(s))
}
function {:inline} $IsEqual'$1_Diem_MintEvent'(s1: $1_Diem_MintEvent, s2: $1_Diem_MintEvent): bool {
    s1 == s2
}

// struct Diem::Preburn<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:168:5+232
type {:datatype} $1_Diem_Preburn'$1_XUS_XUS';
function {:constructor} $1_Diem_Preburn'$1_XUS_XUS'($to_burn: $1_Diem_Diem'$1_XUS_XUS'): $1_Diem_Preburn'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_Preburn'$1_XUS_XUS''_to_burn(s: $1_Diem_Preburn'$1_XUS_XUS', x: $1_Diem_Diem'$1_XUS_XUS'): $1_Diem_Preburn'$1_XUS_XUS' {
    $1_Diem_Preburn'$1_XUS_XUS'(x)
}
function $IsValid'$1_Diem_Preburn'$1_XUS_XUS''(s: $1_Diem_Preburn'$1_XUS_XUS'): bool {
    $IsValid'$1_Diem_Diem'$1_XUS_XUS''($to_burn#$1_Diem_Preburn'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_Preburn'$1_XUS_XUS''(s1: $1_Diem_Preburn'$1_XUS_XUS', s2: $1_Diem_Preburn'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_Diem_Preburn'$1_XUS_XUS'_$memory: $Memory $1_Diem_Preburn'$1_XUS_XUS';

// struct Diem::Preburn<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:168:5+232
type {:datatype} $1_Diem_Preburn'$1_XDX_XDX';
function {:constructor} $1_Diem_Preburn'$1_XDX_XDX'($to_burn: $1_Diem_Diem'$1_XDX_XDX'): $1_Diem_Preburn'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_Preburn'$1_XDX_XDX''_to_burn(s: $1_Diem_Preburn'$1_XDX_XDX', x: $1_Diem_Diem'$1_XDX_XDX'): $1_Diem_Preburn'$1_XDX_XDX' {
    $1_Diem_Preburn'$1_XDX_XDX'(x)
}
function $IsValid'$1_Diem_Preburn'$1_XDX_XDX''(s: $1_Diem_Preburn'$1_XDX_XDX'): bool {
    $IsValid'$1_Diem_Diem'$1_XDX_XDX''($to_burn#$1_Diem_Preburn'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_Preburn'$1_XDX_XDX''(s1: $1_Diem_Preburn'$1_XDX_XDX', s2: $1_Diem_Preburn'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_Diem_Preburn'$1_XDX_XDX'_$memory: $Memory $1_Diem_Preburn'$1_XDX_XDX';

// struct Diem::PreburnEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:68:5+355
type {:datatype} $1_Diem_PreburnEvent;
function {:constructor} $1_Diem_PreburnEvent($amount: int, $currency_code: Vec (int), $preburn_address: int): $1_Diem_PreburnEvent;
function {:inline} $Update'$1_Diem_PreburnEvent'_amount(s: $1_Diem_PreburnEvent, x: int): $1_Diem_PreburnEvent {
    $1_Diem_PreburnEvent(x, $currency_code#$1_Diem_PreburnEvent(s), $preburn_address#$1_Diem_PreburnEvent(s))
}
function {:inline} $Update'$1_Diem_PreburnEvent'_currency_code(s: $1_Diem_PreburnEvent, x: Vec (int)): $1_Diem_PreburnEvent {
    $1_Diem_PreburnEvent($amount#$1_Diem_PreburnEvent(s), x, $preburn_address#$1_Diem_PreburnEvent(s))
}
function {:inline} $Update'$1_Diem_PreburnEvent'_preburn_address(s: $1_Diem_PreburnEvent, x: int): $1_Diem_PreburnEvent {
    $1_Diem_PreburnEvent($amount#$1_Diem_PreburnEvent(s), $currency_code#$1_Diem_PreburnEvent(s), x)
}
function $IsValid'$1_Diem_PreburnEvent'(s: $1_Diem_PreburnEvent): bool {
    $IsValid'u64'($amount#$1_Diem_PreburnEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_PreburnEvent(s))
      && $IsValid'address'($preburn_address#$1_Diem_PreburnEvent(s))
}
function {:inline} $IsEqual'$1_Diem_PreburnEvent'(s1: $1_Diem_PreburnEvent, s2: $1_Diem_PreburnEvent): bool {
    s1 == s2
}

// struct Diem::PreburnQueue<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:192:5+144
type {:datatype} $1_Diem_PreburnQueue'$1_XUS_XUS';
function {:constructor} $1_Diem_PreburnQueue'$1_XUS_XUS'($preburns: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')): $1_Diem_PreburnQueue'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_PreburnQueue'$1_XUS_XUS''_preburns(s: $1_Diem_PreburnQueue'$1_XUS_XUS', x: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')): $1_Diem_PreburnQueue'$1_XUS_XUS' {
    $1_Diem_PreburnQueue'$1_XUS_XUS'(x)
}
function $IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''(s: $1_Diem_PreburnQueue'$1_XUS_XUS'): bool {
    $IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''($preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_PreburnQueue'$1_XUS_XUS''(s1: $1_Diem_PreburnQueue'$1_XUS_XUS', s2: $1_Diem_PreburnQueue'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_Diem_PreburnQueue'$1_XUS_XUS'_$memory: $Memory $1_Diem_PreburnQueue'$1_XUS_XUS';

// struct Diem::PreburnQueue<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:192:5+144
type {:datatype} $1_Diem_PreburnQueue'$1_XDX_XDX';
function {:constructor} $1_Diem_PreburnQueue'$1_XDX_XDX'($preburns: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')): $1_Diem_PreburnQueue'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_PreburnQueue'$1_XDX_XDX''_preburns(s: $1_Diem_PreburnQueue'$1_XDX_XDX', x: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')): $1_Diem_PreburnQueue'$1_XDX_XDX' {
    $1_Diem_PreburnQueue'$1_XDX_XDX'(x)
}
function $IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''(s: $1_Diem_PreburnQueue'$1_XDX_XDX'): bool {
    $IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''($preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_PreburnQueue'$1_XDX_XDX''(s1: $1_Diem_PreburnQueue'$1_XDX_XDX', s2: $1_Diem_PreburnQueue'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_Diem_PreburnQueue'$1_XDX_XDX'_$memory: $Memory $1_Diem_PreburnQueue'$1_XDX_XDX';

// struct Diem::PreburnWithMetadata<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:176:5+120
type {:datatype} $1_Diem_PreburnWithMetadata'$1_XUS_XUS';
function {:constructor} $1_Diem_PreburnWithMetadata'$1_XUS_XUS'($preburn: $1_Diem_Preburn'$1_XUS_XUS', $metadata: Vec (int)): $1_Diem_PreburnWithMetadata'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''_preburn(s: $1_Diem_PreburnWithMetadata'$1_XUS_XUS', x: $1_Diem_Preburn'$1_XUS_XUS'): $1_Diem_PreburnWithMetadata'$1_XUS_XUS' {
    $1_Diem_PreburnWithMetadata'$1_XUS_XUS'(x, $metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''_metadata(s: $1_Diem_PreburnWithMetadata'$1_XUS_XUS', x: Vec (int)): $1_Diem_PreburnWithMetadata'$1_XUS_XUS' {
    $1_Diem_PreburnWithMetadata'$1_XUS_XUS'($preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'(s), x)
}
function $IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(s: $1_Diem_PreburnWithMetadata'$1_XUS_XUS'): bool {
    $IsValid'$1_Diem_Preburn'$1_XUS_XUS''($preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'(s))
      && $IsValid'vec'u8''($metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(s1: $1_Diem_PreburnWithMetadata'$1_XUS_XUS', s2: $1_Diem_PreburnWithMetadata'$1_XUS_XUS'): bool {
    s1 == s2
}

// struct Diem::PreburnWithMetadata<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:176:5+120
type {:datatype} $1_Diem_PreburnWithMetadata'$1_XDX_XDX';
function {:constructor} $1_Diem_PreburnWithMetadata'$1_XDX_XDX'($preburn: $1_Diem_Preburn'$1_XDX_XDX', $metadata: Vec (int)): $1_Diem_PreburnWithMetadata'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''_preburn(s: $1_Diem_PreburnWithMetadata'$1_XDX_XDX', x: $1_Diem_Preburn'$1_XDX_XDX'): $1_Diem_PreburnWithMetadata'$1_XDX_XDX' {
    $1_Diem_PreburnWithMetadata'$1_XDX_XDX'(x, $metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''_metadata(s: $1_Diem_PreburnWithMetadata'$1_XDX_XDX', x: Vec (int)): $1_Diem_PreburnWithMetadata'$1_XDX_XDX' {
    $1_Diem_PreburnWithMetadata'$1_XDX_XDX'($preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'(s), x)
}
function $IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(s: $1_Diem_PreburnWithMetadata'$1_XDX_XDX'): bool {
    $IsValid'$1_Diem_Preburn'$1_XDX_XDX''($preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'(s))
      && $IsValid'vec'u8''($metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(s1: $1_Diem_PreburnWithMetadata'$1_XDX_XDX', s2: $1_Diem_PreburnWithMetadata'$1_XDX_XDX'): bool {
    s1 == s2
}

// struct Diem::ToXDXExchangeRateUpdateEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:92:5+424
type {:datatype} $1_Diem_ToXDXExchangeRateUpdateEvent;
function {:constructor} $1_Diem_ToXDXExchangeRateUpdateEvent($currency_code: Vec (int), $new_to_xdx_exchange_rate: int): $1_Diem_ToXDXExchangeRateUpdateEvent;
function {:inline} $Update'$1_Diem_ToXDXExchangeRateUpdateEvent'_currency_code(s: $1_Diem_ToXDXExchangeRateUpdateEvent, x: Vec (int)): $1_Diem_ToXDXExchangeRateUpdateEvent {
    $1_Diem_ToXDXExchangeRateUpdateEvent(x, $new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent(s))
}
function {:inline} $Update'$1_Diem_ToXDXExchangeRateUpdateEvent'_new_to_xdx_exchange_rate(s: $1_Diem_ToXDXExchangeRateUpdateEvent, x: int): $1_Diem_ToXDXExchangeRateUpdateEvent {
    $1_Diem_ToXDXExchangeRateUpdateEvent($currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent(s), x)
}
function $IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'(s: $1_Diem_ToXDXExchangeRateUpdateEvent): bool {
    $IsValid'vec'u8''($currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent(s))
      && $IsValid'u64'($new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent(s))
}
function {:inline} $IsEqual'$1_Diem_ToXDXExchangeRateUpdateEvent'(s1: $1_Diem_ToXDXExchangeRateUpdateEvent, s2: $1_Diem_ToXDXExchangeRateUpdateEvent): bool {
    s1 == s2
}

// fun Diem::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:246:5+247
procedure {:inline 1} $1_Diem_initialize(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t0: int;
    var $temp_0'address': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:246:5+1
    assume {:print "$at(10,12600,12601)"} true;
    assume {:print "$track_local(18,16,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:249:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(10,12668,12699)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/Diem.move:249:9+31

    // assume Identical($t3, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/Diem.move:249:9+31
    assume ($t3 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:249:9+31
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:249:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:249:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:249:9+31
    assume {:print "$at(10,12668,12699)"} true;
    assume {:print "$track_abort(18,16):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:249:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:249:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/Diem.move:249:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+43
    // >> opaque call: CoreAddresses::assert_diem_root($t0)
    assume {:print "$at(10,12743,12786)"} true;

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+43

    // assume Identical($t5, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+43
    assume ($t5 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+43
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+43
L6:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+43
    assume {:print "$at(10,12743,12786)"} true;
    assume {:print "$track_abort(18,16):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+43
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+43
L5:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+43

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // RegisteredCurrencies::initialize($t0) on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:252:9+44
    assume {:print "$at(10,12796,12840)"} true;
    call $1_RegisteredCurrencies_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(10,12796,12840)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(18,16):", $t4} $t4 == $t4;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:253:5+1
    assume {:print "$at(10,12846,12847)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:253:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:253:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun Diem::create_preburn<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:548:5+255
procedure {:inline 1} $1_Diem_create_preburn'$1_XUS_XUS'(_$t0: int) returns ($ret0: $1_Diem_Preburn'$1_XUS_XUS')
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: $1_Diem_Diem'$1_XUS_XUS';
    var $t7: $1_Diem_Preburn'$1_XUS_XUS';
    var $t0: int;
    var $temp_0'$1_Diem_Preburn'$1_XUS_XUS'': $1_Diem_Preburn'$1_XUS_XUS';
    var $temp_0'address': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:548:5+1
    assume {:print "$at(10,26051,26052)"} true;
    assume {:print "$track_local(18,11,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(10,26158,26203)"} true;

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    assume {:print "$at(10,26158,26203)"} true;

    // assume Identical($t3, Or(Or(Not(exists<Roles::RoleId>($t2)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    assume ($t3 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t2) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
L4:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t2)), Eq(5, $t4)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t2) && $IsEqual'u8'(5, $t4)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1) && $IsEqual'u8'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'u8'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    assume {:print "$at(10,26158,26203)"} true;
    assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
L3:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,26213,26243)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30

    // assume Identical($t5, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    assume ($t5 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
L6:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'u8'(5, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    assume {:print "$at(10,26213,26243)"} true;
    assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
L5:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30

    // $t6 := Diem::zero<#0>() on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:38+16
    assume {:print "$at(10,26282,26298)"} true;
    call $t6 := $1_Diem_zero'$1_XUS_XUS'();
    if ($abort_flag) {
        assume {:print "$at(10,26282,26298)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t7 := pack Diem::Preburn<#0>($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+47
    $t7 := $1_Diem_Preburn'$1_XUS_XUS'($t6);

    // trace_return[0]($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+47
    assume {:print "$track_return(18,11,0):", $t7} $t7 == $t7;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:5+1
    assume {:print "$at(10,26305,26306)"} true;
L1:

    // return $t7 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:5+1
    $ret0 := $t7;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun Diem::create_preburn<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:548:5+255
procedure {:inline 1} $1_Diem_create_preburn'$1_XDX_XDX'(_$t0: int) returns ($ret0: $1_Diem_Preburn'$1_XDX_XDX')
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: $1_Diem_Diem'$1_XDX_XDX';
    var $t7: $1_Diem_Preburn'$1_XDX_XDX';
    var $t0: int;
    var $temp_0'$1_Diem_Preburn'$1_XDX_XDX'': $1_Diem_Preburn'$1_XDX_XDX';
    var $temp_0'address': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:548:5+1
    assume {:print "$at(10,26051,26052)"} true;
    assume {:print "$track_local(18,11,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(10,26158,26203)"} true;

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    assume {:print "$at(10,26158,26203)"} true;

    // assume Identical($t3, Or(Or(Not(exists<Roles::RoleId>($t2)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    assume ($t3 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t2) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
L4:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t2)), Eq(5, $t4)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t2) && $IsEqual'u8'(5, $t4)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1) && $IsEqual'u8'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'u8'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    assume {:print "$at(10,26158,26203)"} true;
    assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45
L3:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:551:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,26213,26243)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30

    // assume Identical($t5, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    assume ($t5 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
L6:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'u8'(5, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    assume {:print "$at(10,26213,26243)"} true;
    assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30
L5:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:552:9+30

    // $t6 := Diem::zero<#0>() on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:38+16
    assume {:print "$at(10,26282,26298)"} true;
    call $t6 := $1_Diem_zero'$1_XDX_XDX'();
    if ($abort_flag) {
        assume {:print "$at(10,26282,26298)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t7 := pack Diem::Preburn<#0>($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+47
    $t7 := $1_Diem_Preburn'$1_XDX_XDX'($t6);

    // trace_return[0]($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+47
    assume {:print "$track_return(18,11,0):", $t7} $t7 == $t7;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:5+1
    assume {:print "$at(10,26305,26306)"} true;
L1:

    // return $t7 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:5+1
    $ret0 := $t7;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun Diem::publish_burn_capability<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:263:5+424
procedure {:inline 1} $1_Diem_publish_burn_capability'$1_XUS_XUS'(_$t0: int, _$t1: $1_Diem_BurnCapability'$1_XUS_XUS') returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: bool;
    var $t11: bool;
    var $t12: int;
    var $t13: int;
    var $t0: int;
    var $t1: $1_Diem_BurnCapability'$1_XUS_XUS';
    var $temp_0'$1_Diem_BurnCapability'$1_XUS_XUS'': $1_Diem_BurnCapability'$1_XUS_XUS';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:263:5+1
    assume {:print "$at(10,13317,13318)"} true;
    assume {:print "$track_local(18,27,0):", $t0} $t0 == $t0;

    // trace_local[cap]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:263:5+1
    assume {:print "$track_local(18,27,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:267:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(10,13454,13499)"} true;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:267:9+45
    assume {:print "$at(10,13454,13499)"} true;

    // assume Identical($t6, Or(Or(Not(exists<Roles::RoleId>($t5)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Diem.move:267:9+45
    assume ($t6 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t5) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:267:9+45
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:267:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t5)), Eq(5, $t7)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 1), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t7))) at /home/ying/diem/language/diem-framework/modules/Diem.move:267:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t5) && $IsEqual'u8'(5, $t7)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 1) && $IsEqual'u8'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'u8'(2, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:267:9+45
    assume {:print "$at(10,13454,13499)"} true;
    assume {:print "$track_abort(18,27):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:267:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:267:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:267:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:268:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,13509,13539)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:268:9+30

    // assume Identical($t8, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:268:9+30
    assume ($t8 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t8) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:268:9+30
    if ($t8) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:268:9+30
L7:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t7)) at /home/ying/diem/language/diem-framework/modules/Diem.move:268:9+30
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'u8'(5, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:268:9+30
    assume {:print "$at(10,13509,13539)"} true;
    assume {:print "$track_abort(18,27):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:268:9+30
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:268:9+30
L6:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:268:9+30

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:270:47+30
    // >> opaque call: $t4 := Signer::address_of($t0)
    assume {:print "$at(10,13603,13633)"} true;

    // $t9 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:47+30

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:47+30
    assume $IsValid'address'($t9);

    // assume Eq<address>($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:47+30
    assume $IsEqual'address'($t9, $1_Signer_spec_address_of($t0));

    // $t9 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:47+30

    // $t10 := exists<Diem::BurnCapability<#0>>($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:14+6
    $t10 := $ResourceExists($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $t9);

    // $t11 := !($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:13+1
    call $t11 := $Not($t10);

    // $t12 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:271:39+16
    assume {:print "$at(10,13674,13690)"} true;
    $t12 := 0;
    assume $IsValid'u64'($t12);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:271:13+43
    // >> opaque call: $t8 := Errors::already_published($t7)

    // $t13 := opaque begin: Errors::already_published($t12) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:13+43

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:13+43
    assume $IsValid'u64'($t13);

    // assume Eq<u64>($t13, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:13+43
    assume $IsEqual'u64'($t13, 6);

    // $t13 := opaque end: Errors::already_published($t12) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:13+43

    // trace_local[tmp#$3]($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+152
    assume {:print "$at(10,13549,13701)"} true;
    assume {:print "$track_local(18,27,3):", $t13} $t13 == $t13;

    // trace_local[tmp#$2]($t11) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+152
    assume {:print "$track_local(18,27,2):", $t11} $t11 == $t11;

    // if ($t11) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+152
    if ($t11) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+152
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+152

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+152
    assume {:print "$at(10,13549,13701)"} true;
    assume {:print "$track_abort(18,27):", $t13} $t13 == $t13;

    // $t7 := move($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+152
    $t7 := $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+152
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:273:17+10
    assume {:print "$at(10,13719,13729)"} true;
L0:

    // move_to<Diem::BurnCapability<#0>>($t1, $t0) on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/Diem.move:273:9+7
    if ($ResourceExists($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_BurnCapability'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $t0, $t1);
    }
    if ($abort_flag) {
        assume {:print "$at(10,13711,13718)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(18,27):", $t7} $t7 == $t7;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:274:5+1
    assume {:print "$at(10,13740,13741)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:274:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:274:5+1
L3:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:274:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun Diem::register_SCS_currency<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1297:5+920
procedure {:inline 1} $1_Diem_register_SCS_currency'$1_XUS_XUS'(_$t0: int, _$t1: int, _$t2: $1_FixedPoint32_FixedPoint32, _$t3: int, _$t4: int, _$t5: Vec (int)) returns ()
{
    // declare local variables
    var $t6: $1_Diem_BurnCapability'$1_XUS_XUS';
    var $t7: $1_Diem_MintCapability'$1_XUS_XUS';
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: $1_DiemConfig_Configuration;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: bool;
    var $t22: bool;
    var $t23: int;
    var $t24: $1_DiemConfig_Configuration;
    var $t25: int;
    var $t26: $1_Diem_MintCapability'$1_XUS_XUS';
    var $t27: $1_Diem_BurnCapability'$1_XUS_XUS';
    var $t28: int;
    var $t29: bool;
    var $t30: bool;
    var $t31: int;
    var $t32: int;
    var $t33: int;
    var $t0: int;
    var $t1: int;
    var $t2: $1_FixedPoint32_FixedPoint32;
    var $t3: int;
    var $t4: int;
    var $t5: Vec (int);
    var $temp_0'$1_Diem_BurnCapability'$1_XUS_XUS'': $1_Diem_BurnCapability'$1_XUS_XUS';
    var $temp_0'$1_Diem_MintCapability'$1_XUS_XUS'': $1_Diem_MintCapability'$1_XUS_XUS';
    var $temp_0'$1_FixedPoint32_FixedPoint32': $1_FixedPoint32_FixedPoint32;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;
    $t5 := _$t5;

    // bytecode translation starts here
    // assume Identical($t10, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t1));

    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // assume Identical($t12, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t12 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t13, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t13 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t14, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t1));

    // assume Identical($t15, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume ($t15 == $1_Signer_spec_address_of($t1));

    // assume Identical($t16, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume ($t16 == $1_Signer_spec_address_of($t1));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1297:5+1
    assume {:print "$at(10,61837,61838)"} true;
    assume {:print "$track_local(18,30,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1297:5+1
    assume {:print "$track_local(18,30,1):", $t1} $t1 == $t1;

    // trace_local[to_xdx_exchange_rate]($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1297:5+1
    assume {:print "$track_local(18,30,2):", $t2} $t2 == $t2;

    // trace_local[scaling_factor]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1297:5+1
    assume {:print "$track_local(18,30,3):", $t3} $t3 == $t3;

    // trace_local[fractional_part]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1297:5+1
    assume {:print "$track_local(18,30,4):", $t4} $t4 == $t4;

    // trace_local[currency_code]($t5) at /home/ying/diem/language/diem-framework/modules/Diem.move:1297:5+1
    assume {:print "$track_local(18,30,5):", $t5} $t5 == $t5;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1305:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t1)
    assume {:print "$at(10,62100,62145)"} true;

    // assume Identical($t17, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t17 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1305:9+45
    assume {:print "$at(10,62100,62145)"} true;

    // assume Identical($t18, Or(Or(Not(exists<Roles::RoleId>($t17)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t17)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1305:9+45
    assume ($t18 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t17) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t17)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)));

    // if ($t18) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1305:9+45
    if ($t18) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1305:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t17)), Eq(5, $t19)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t17)), 1), Eq(3, $t19))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t19))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1305:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t17) && $IsEqual'u8'(5, $t19)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t17)), 1) && $IsEqual'u8'(3, $t19))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'u8'(2, $t19)));

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1305:9+45
    assume {:print "$at(10,62100,62145)"} true;
    assume {:print "$track_abort(18,30):", $t19} $t19 == $t19;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1305:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1305:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1305:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1306:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(10,62155,62190)"} true;

    // assume Identical($t20, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t20 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1306:9+35
    assume {:print "$at(10,62155,62190)"} true;

    // assume Identical($t21, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t20))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t20)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1306:9+35
    assume ($t21 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t20)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t20)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t21) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1306:9+35
    if ($t21) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1306:9+35
L7:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t19)), And(Not(exists<Roles::RoleId>($t20)), Eq(5, $t19))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t20)), 0), Eq(3, $t19))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t19))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1306:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t19)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t20) && $IsEqual'u8'(5, $t19))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t20)), 0) && $IsEqual'u8'(3, $t19))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t19)));

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1306:9+35
    assume {:print "$at(10,62155,62190)"} true;
    assume {:print "$track_abort(18,30):", $t19} $t19 == $t19;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1306:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1306:9+35
L6:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1306:9+35

    // $t22 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1311:17+5
    assume {:print "$at(10,62350,62355)"} true;
    $t22 := false;
    assume $IsValid'bool'($t22);

    // assume Identical($t23, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t23 == $1_Signer_spec_address_of($t0));

    // assume Identical($t24, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t24 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t25, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t25 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // ($t26, $t27) := Diem::register_currency<#0>($t0, $t2, $t22, $t3, $t4, $t5) on_abort goto L3 with $t19 at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:13+245
    assume {:print "$at(10,62239,62484)"} true;
    call $t26,$t27 := $1_Diem_register_currency'$1_XUS_XUS'($t0, $t2, $t22, $t3, $t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(10,62239,62484)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(18,30):", $t19} $t19 == $t19;
        goto L3;
    }

    // trace_local[burn_cap]($t27) at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:24+8
    assume {:print "$at(10,62215,62223)"} true;
    assume {:print "$track_local(18,30,6):", $t27} $t27 == $t27;

    // trace_local[mint_cap]($t26) at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:14+8
    assume {:print "$track_local(18,30,7):", $t26} $t26 == $t26;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1317:47+30
    // >> opaque call: $t13 := Signer::address_of($t1)
    assume {:print "$at(10,62548,62578)"} true;

    // $t28 := opaque begin: Signer::address_of($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1317:47+30

    // assume WellFormed($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1317:47+30
    assume $IsValid'address'($t28);

    // assume Eq<address>($t28, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1317:47+30
    assume $IsEqual'address'($t28, $1_Signer_spec_address_of($t1));

    // $t28 := opaque end: Signer::address_of($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1317:47+30

    // $t29 := exists<Diem::MintCapability<#0>>($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1317:14+6
    $t29 := $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $t28);

    // $t30 := !($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1317:13+1
    call $t30 := $Not($t29);

    // $t31 := 9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:39+16
    assume {:print "$at(10,62619,62635)"} true;
    $t31 := 9;
    assume $IsValid'u64'($t31);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:13+43
    // >> opaque call: $t17 := Errors::already_published($t16)

    // $t32 := opaque begin: Errors::already_published($t31) at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:13+43

    // assume WellFormed($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:13+43
    assume $IsValid'u64'($t32);

    // assume Eq<u64>($t32, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:13+43
    assume $IsEqual'u64'($t32, 6);

    // $t32 := opaque end: Errors::already_published($t31) at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:13+43

    // trace_local[tmp#$9]($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1316:9+152
    assume {:print "$at(10,62494,62646)"} true;
    assume {:print "$track_local(18,30,9):", $t32} $t32 == $t32;

    // trace_local[tmp#$8]($t30) at /home/ying/diem/language/diem-framework/modules/Diem.move:1316:9+152
    assume {:print "$track_local(18,30,8):", $t30} $t30 == $t30;

    // if ($t30) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1316:9+152
    if ($t30) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1316:9+152
L1:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1316:9+152

    // trace_abort($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1316:9+152
    assume {:print "$at(10,62494,62646)"} true;
    assume {:print "$track_abort(18,30):", $t32} $t32 == $t32;

    // $t19 := move($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1316:9+152
    $t19 := $t32;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1316:9+152
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:17+10
    assume {:print "$at(10,62664,62674)"} true;
L0:

    // move_to<Diem::MintCapability<#0>>($t26, $t1) on_abort goto L3 with $t19 at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:9+7
    if ($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $t1)) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_MintCapability'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $t1, $t26);
    }
    if ($abort_flag) {
        assume {:print "$at(10,62656,62663)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(18,30):", $t19} $t19 == $t19;
        goto L3;
    }

    // assume Identical($t33, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t33 == $1_Signer_spec_address_of($t1));

    // Diem::publish_burn_capability<#0>($t1, $t27) on_abort goto L3 with $t19 at /home/ying/diem/language/diem-framework/modules/Diem.move:1321:9+55
    assume {:print "$at(10,62695,62750)"} true;
    call $1_Diem_publish_burn_capability'$1_XUS_XUS'($t1, $t27);
    if ($abort_flag) {
        assume {:print "$at(10,62695,62750)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(18,30):", $t19} $t19 == $t19;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1322:5+1
    assume {:print "$at(10,62756,62757)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:1322:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1322:5+1
L3:

    // abort($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1322:5+1
    $abort_code := $t19;
    $abort_flag := true;
    return;

}

// fun Diem::scaling_factor<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1411:5+199
procedure {:inline 1} $1_Diem_scaling_factor'$1_XDX_XDX'() returns ($ret0: int)
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $t3: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t4: int;
    var $temp_0'u64': int;

    // bytecode translation starts here
    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,66578,66608)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:9+30

    // assume Identical($t0, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:9+30
    assume ($t0 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:9+30
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:9+30
L4:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'u8'(5, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:9+30
    assume {:print "$at(10,66578,66608)"} true;
    assume {:print "$track_abort(18,34):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:9+30
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:9+30
L3:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:9+30

    // $t2 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/Diem.move:1414:47+13
    assume {:print "$at(10,66656,66669)"} true;
    $t2 := 173345816;
    assume $IsValid'address'($t2);

    // $t3 := get_global<Diem::CurrencyInfo<#0>>($t2) on_abort goto L2 with $t1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1414:9+13
    if (!$ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t2)) {
        call $ExecFailureAbort();
    } else {
        $t3 := $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(10,66618,66631)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(18,34):", $t1} $t1 == $t1;
        goto L2;
    }

    // $t4 := get_field<Diem::CurrencyInfo<#0>>.scaling_factor($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1414:9+67
    $t4 := $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t3);

    // trace_return[0]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1414:9+67
    assume {:print "$track_return(18,34,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:5+1
    assume {:print "$at(10,66690,66691)"} true;
L1:

    // return $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:5+1
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun Diem::register_currency<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1683
procedure {:inline 1} $1_Diem_register_currency'$1_XUS_XUS'(_$t0: int, _$t1: $1_FixedPoint32_FixedPoint32, _$t2: bool, _$t3: int, _$t4: int, _$t5: Vec (int)) returns ($ret0: $1_Diem_MintCapability'$1_XUS_XUS', $ret1: $1_Diem_BurnCapability'$1_XUS_XUS')
{
    // declare local variables
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: $1_DiemConfig_Configuration;
    var $t13: int;
    var $t14: int;
    var $t15: bool;
    var $t16: int;
    var $t17: bool;
    var $t18: int;
    var $t19: bool;
    var $t20: bool;
    var $t21: int;
    var $t22: int;
    var $t23: int;
    var $t24: bool;
    var $t25: int;
    var $t26: bool;
    var $t27: bool;
    var $t28: int;
    var $t29: int;
    var $t30: int;
    var $t31: int;
    var $t32: bool;
    var $t33: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t34: $1_Event_EventHandle'$1_Diem_BurnEvent';
    var $t35: $1_Event_EventHandle'$1_Diem_PreburnEvent';
    var $t36: $1_Event_EventHandle'$1_Diem_CancelBurnEvent';
    var $t37: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent';
    var $t38: $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $t39: $1_DiemConfig_Configuration;
    var $t40: int;
    var $t41: bool;
    var $t42: $1_Diem_MintCapability'$1_XUS_XUS';
    var $t43: bool;
    var $t44: $1_Diem_BurnCapability'$1_XUS_XUS';
    var $t0: int;
    var $t1: $1_FixedPoint32_FixedPoint32;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: Vec (int);
    var $temp_0'$1_Diem_BurnCapability'$1_XUS_XUS'': $1_Diem_BurnCapability'$1_XUS_XUS';
    var $temp_0'$1_Diem_MintCapability'$1_XUS_XUS'': $1_Diem_MintCapability'$1_XUS_XUS';
    var $temp_0'$1_FixedPoint32_FixedPoint32': $1_FixedPoint32_FixedPoint32;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;
    $t5 := _$t5;

    // bytecode translation starts here
    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // assume Identical($t12, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t12 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t13, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t13 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$at(10,58759,58760)"} true;
    assume {:print "$track_local(18,31,0):", $t0} $t0 == $t0;

    // trace_local[to_xdx_exchange_rate]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$track_local(18,31,1):", $t1} $t1 == $t1;

    // trace_local[is_synthetic]($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$track_local(18,31,2):", $t2} $t2 == $t2;

    // trace_local[scaling_factor]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$track_local(18,31,3):", $t3} $t3 == $t3;

    // trace_local[fractional_part]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$track_local(18,31,4):", $t4} $t4 == $t4;

    // trace_local[currency_code]($t5) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$track_local(18,31,5):", $t5} $t5 == $t5;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(10,59075,59110)"} true;

    // assume Identical($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    assume {:print "$at(10,59075,59110)"} true;

    // assume Identical($t15, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t14))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    assume ($t15 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t14)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t15) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    if ($t15) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
L11:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16)), And(Not(exists<Roles::RoleId>($t14)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0), Eq(3, $t16))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t16)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t14) && $IsEqual'u8'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0) && $IsEqual'u8'(3, $t16))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    assume {:print "$at(10,59075,59110)"} true;
    assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    goto L9;

    // label L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
L10:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    // >> opaque call: CoreAddresses::assert_currency_info($t0)
    assume {:print "$at(10,59203,59250)"} true;

    // opaque begin: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47

    // assume Identical($t17, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    assume ($t17 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t17) goto L13 else goto L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    if ($t17) { goto L13; } else { goto L12; }

    // label L13 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
L13:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t16));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    assume {:print "$at(10,59203,59250)"} true;
    assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    goto L9;

    // label L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
L12:

    // opaque end: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:45+30
    // >> opaque call: $t11 := Signer::address_of($t0)
    assume {:print "$at(10,59312,59342)"} true;

    // $t18 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:45+30

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:45+30
    assume $IsValid'address'($t18);

    // assume Eq<address>($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:45+30
    assume $IsEqual'address'($t18, $1_Signer_spec_address_of($t0));

    // $t18 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:45+30

    // $t19 := exists<Diem::CurrencyInfo<#0>>($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:14+6
    $t19 := $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $t18);

    // $t20 := !($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:13+1
    call $t20 := $Not($t19);

    // $t21 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:39+14
    assume {:print "$at(10,59383,59397)"} true;
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:13+41
    // >> opaque call: $t15 := Errors::already_published($t14)

    // $t22 := opaque begin: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:13+41

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:13+41
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:13+41
    assume $IsEqual'u64'($t22, 6);

    // $t22 := opaque end: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:13+41

    // trace_local[tmp#$7]($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    assume {:print "$at(10,59260,59408)"} true;
    assume {:print "$track_local(18,31,7):", $t22} $t22 == $t22;

    // trace_local[tmp#$6]($t20) at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    assume {:print "$track_local(18,31,6):", $t20} $t20 == $t20;

    // if ($t20) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    if ($t20) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    assume {:print "$at(10,59260,59408)"} true;
    assume {:print "$track_abort(18,31):", $t22} $t22 == $t22;

    // $t16 := move($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    $t16 := $t22;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    goto L9;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+1
    assume {:print "$at(10,59425,59426)"} true;
L0:

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+1
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := <($t23, $t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:18+1
    call $t24 := $Lt($t23, $t3);

    // if ($t24) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    if ($t24) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
L3:

    // goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:38+14
L2:

    // $t25 := 10000000000 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:56+18
    $t25 := 10000000000;
    assume $IsValid'u64'($t25);

    // $t26 := <=($t3, $t25) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:53+2
    call $t26 := $Le($t3, $t25);

    // $t10 := $t26 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    $t10 := $t26;

    // trace_local[tmp#$10]($t26) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    assume {:print "$track_local(18,31,10):", $t26} $t26 == $t26;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
L4:

    // $t27 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    $t27 := false;
    assume $IsValid'bool'($t27);

    // $t10 := $t27 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    $t10 := $t27;

    // trace_local[tmp#$10]($t27) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    assume {:print "$track_local(18,31,10):", $t27} $t27 == $t27;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
L5:

    // $t28 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:101+14
    $t28 := 1;
    assume $IsValid'u64'($t28);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:76+40
    // >> opaque call: $t22 := Errors::invalid_argument($t21)

    // $t29 := opaque begin: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:76+40

    // assume WellFormed($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:76+40
    assume $IsValid'u64'($t29);

    // assume Eq<u64>($t29, 7) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:76+40
    assume $IsEqual'u64'($t29, 7);

    // $t29 := opaque end: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:76+40

    // trace_local[tmp#$9]($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    assume {:print "$track_local(18,31,9):", $t29} $t29 == $t29;

    // trace_local[tmp#$8]($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    assume {:print "$track_local(18,31,8):", $t10} $t10 == $t10;

    // if ($t10) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    if ($t10) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
L7:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108

    // trace_abort($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    assume {:print "$at(10,59418,59526)"} true;
    assume {:print "$track_abort(18,31):", $t29} $t29 == $t29;

    // $t16 := move($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    $t16 := $t29;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    goto L9;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1245:17+10
    assume {:print "$at(10,59544,59554)"} true;
L6:

    // $t30 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:26+1
    assume {:print "$at(10,59606,59607)"} true;
    $t30 := 0;
    assume $IsValid'u128'($t30);

    // $t31 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1247:28+1
    assume {:print "$at(10,59636,59637)"} true;
    $t31 := 0;
    assume $IsValid'u64'($t31);

    // $t32 := true at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:23+4
    assume {:print "$at(10,59825,59829)"} true;
    $t32 := true;
    assume $IsValid'bool'($t32);

    // $t33 := Event::new_event_handle<Diem::MintEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:26+46
    assume {:print "$at(10,59856,59902)"} true;
    call $t33 := $1_Event_new_event_handle'$1_Diem_MintEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,59856,59902)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t34 := Event::new_event_handle<Diem::BurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:26+46
    assume {:print "$at(10,59929,59975)"} true;
    call $t34 := $1_Event_new_event_handle'$1_Diem_BurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,59929,59975)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t35 := Event::new_event_handle<Diem::PreburnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:29+49
    assume {:print "$at(10,60005,60054)"} true;
    call $t35 := $1_Event_new_event_handle'$1_Diem_PreburnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60005,60054)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t36 := Event::new_event_handle<Diem::CancelBurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1257:33+52
    assume {:print "$at(10,60088,60140)"} true;
    call $t36 := $1_Event_new_event_handle'$1_Diem_CancelBurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60088,60140)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t37 := Event::new_event_handle<Diem::ToXDXExchangeRateUpdateEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:42+65
    assume {:print "$at(10,60183,60248)"} true;
    call $t37 := $1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60183,60248)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t38 := pack Diem::CurrencyInfo<#0>($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37) at /home/ying/diem/language/diem-framework/modules/Diem.move:1245:29+702
    assume {:print "$at(10,59556,60258)"} true;
    $t38 := $1_Diem_CurrencyInfo'$1_XUS_XUS'($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37);

    // move_to<Diem::CurrencyInfo<#0>>($t38, $t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1245:9+7
    if ($ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $t0, $t38);
    }
    if ($abort_flag) {
        assume {:print "$at(10,59536,59543)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // assume Identical($t39, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t39 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t40, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t40 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // RegisteredCurrencies::add_currency_code($t0, $t5) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1260:9+101
    assume {:print "$at(10,60269,60370)"} true;
    call $1_RegisteredCurrencies_add_currency_code($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(10,60269,60370)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t41 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:10+26
    assume {:print "$at(10,60381,60407)"} true;
    $t41 := false;
    assume $IsValid'bool'($t41);

    // $t42 := pack Diem::MintCapability<#0>($t41) at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:10+26
    $t42 := $1_Diem_MintCapability'$1_XUS_XUS'($t41);

    // $t43 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:38+26
    $t43 := false;
    assume $IsValid'bool'($t43);

    // $t44 := pack Diem::BurnCapability<#0>($t43) at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:38+26
    $t44 := $1_Diem_BurnCapability'$1_XUS_XUS'($t43);

    // trace_return[0]($t42) at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:9+56
    assume {:print "$track_return(18,31,0):", $t42} $t42 == $t42;

    // trace_return[1]($t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:9+56
    assume {:print "$track_return(18,31,1):", $t44} $t44 == $t44;

    // label L8 at /home/ying/diem/language/diem-framework/modules/Diem.move:1265:5+1
    assume {:print "$at(10,60441,60442)"} true;
L8:

    // return ($t42, $t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1265:5+1
    $ret0 := $t42;
    $ret1 := $t44;
    return;

    // label L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1265:5+1
L9:

    // abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1265:5+1
    $abort_code := $t16;
    $abort_flag := true;
    return;

}

// fun Diem::register_currency<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1683
procedure {:inline 1} $1_Diem_register_currency'$1_XDX_XDX'(_$t0: int, _$t1: $1_FixedPoint32_FixedPoint32, _$t2: bool, _$t3: int, _$t4: int, _$t5: Vec (int)) returns ($ret0: $1_Diem_MintCapability'$1_XDX_XDX', $ret1: $1_Diem_BurnCapability'$1_XDX_XDX')
{
    // declare local variables
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: $1_DiemConfig_Configuration;
    var $t13: int;
    var $t14: int;
    var $t15: bool;
    var $t16: int;
    var $t17: bool;
    var $t18: int;
    var $t19: bool;
    var $t20: bool;
    var $t21: int;
    var $t22: int;
    var $t23: int;
    var $t24: bool;
    var $t25: int;
    var $t26: bool;
    var $t27: bool;
    var $t28: int;
    var $t29: int;
    var $t30: int;
    var $t31: int;
    var $t32: bool;
    var $t33: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t34: $1_Event_EventHandle'$1_Diem_BurnEvent';
    var $t35: $1_Event_EventHandle'$1_Diem_PreburnEvent';
    var $t36: $1_Event_EventHandle'$1_Diem_CancelBurnEvent';
    var $t37: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent';
    var $t38: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t39: $1_DiemConfig_Configuration;
    var $t40: int;
    var $t41: bool;
    var $t42: $1_Diem_MintCapability'$1_XDX_XDX';
    var $t43: bool;
    var $t44: $1_Diem_BurnCapability'$1_XDX_XDX';
    var $t0: int;
    var $t1: $1_FixedPoint32_FixedPoint32;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: Vec (int);
    var $temp_0'$1_Diem_BurnCapability'$1_XDX_XDX'': $1_Diem_BurnCapability'$1_XDX_XDX';
    var $temp_0'$1_Diem_MintCapability'$1_XDX_XDX'': $1_Diem_MintCapability'$1_XDX_XDX';
    var $temp_0'$1_FixedPoint32_FixedPoint32': $1_FixedPoint32_FixedPoint32;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;
    $t5 := _$t5;

    // bytecode translation starts here
    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // assume Identical($t12, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t12 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t13, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t13 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$at(10,58759,58760)"} true;
    assume {:print "$track_local(18,31,0):", $t0} $t0 == $t0;

    // trace_local[to_xdx_exchange_rate]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$track_local(18,31,1):", $t1} $t1 == $t1;

    // trace_local[is_synthetic]($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$track_local(18,31,2):", $t2} $t2 == $t2;

    // trace_local[scaling_factor]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$track_local(18,31,3):", $t3} $t3 == $t3;

    // trace_local[fractional_part]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$track_local(18,31,4):", $t4} $t4 == $t4;

    // trace_local[currency_code]($t5) at /home/ying/diem/language/diem-framework/modules/Diem.move:1228:5+1
    assume {:print "$track_local(18,31,5):", $t5} $t5 == $t5;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(10,59075,59110)"} true;

    // assume Identical($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    assume {:print "$at(10,59075,59110)"} true;

    // assume Identical($t15, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t14))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    assume ($t15 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t14)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t15) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    if ($t15) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
L11:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16)), And(Not(exists<Roles::RoleId>($t14)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0), Eq(3, $t16))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t16)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t14) && $IsEqual'u8'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0) && $IsEqual'u8'(3, $t16))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    assume {:print "$at(10,59075,59110)"} true;
    assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
    goto L9;

    // label L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35
L10:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1237:9+35

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    // >> opaque call: CoreAddresses::assert_currency_info($t0)
    assume {:print "$at(10,59203,59250)"} true;

    // opaque begin: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47

    // assume Identical($t17, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    assume ($t17 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t17) goto L13 else goto L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    if ($t17) { goto L13; } else { goto L12; }

    // label L13 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
L13:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t16));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    assume {:print "$at(10,59203,59250)"} true;
    assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
    goto L9;

    // label L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47
L12:

    // opaque end: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+47

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:45+30
    // >> opaque call: $t11 := Signer::address_of($t0)
    assume {:print "$at(10,59312,59342)"} true;

    // $t18 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:45+30

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:45+30
    assume $IsValid'address'($t18);

    // assume Eq<address>($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:45+30
    assume $IsEqual'address'($t18, $1_Signer_spec_address_of($t0));

    // $t18 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:45+30

    // $t19 := exists<Diem::CurrencyInfo<#0>>($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:14+6
    $t19 := $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t18);

    // $t20 := !($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:13+1
    call $t20 := $Not($t19);

    // $t21 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:39+14
    assume {:print "$at(10,59383,59397)"} true;
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:13+41
    // >> opaque call: $t15 := Errors::already_published($t14)

    // $t22 := opaque begin: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:13+41

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:13+41
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:13+41
    assume $IsEqual'u64'($t22, 6);

    // $t22 := opaque end: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:13+41

    // trace_local[tmp#$7]($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    assume {:print "$at(10,59260,59408)"} true;
    assume {:print "$track_local(18,31,7):", $t22} $t22 == $t22;

    // trace_local[tmp#$6]($t20) at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    assume {:print "$track_local(18,31,6):", $t20} $t20 == $t20;

    // if ($t20) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    if ($t20) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    assume {:print "$at(10,59260,59408)"} true;
    assume {:print "$track_abort(18,31):", $t22} $t22 == $t22;

    // $t16 := move($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    $t16 := $t22;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1240:9+148
    goto L9;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+1
    assume {:print "$at(10,59425,59426)"} true;
L0:

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+1
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := <($t23, $t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:18+1
    call $t24 := $Lt($t23, $t3);

    // if ($t24) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    if ($t24) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
L3:

    // goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:38+14
L2:

    // $t25 := 10000000000 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:56+18
    $t25 := 10000000000;
    assume $IsValid'u64'($t25);

    // $t26 := <=($t3, $t25) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:53+2
    call $t26 := $Le($t3, $t25);

    // $t10 := $t26 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    $t10 := $t26;

    // trace_local[tmp#$10]($t26) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    assume {:print "$track_local(18,31,10):", $t26} $t26 == $t26;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
L4:

    // $t27 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    $t27 := false;
    assume $IsValid'bool'($t27);

    // $t10 := $t27 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    $t10 := $t27;

    // trace_local[tmp#$10]($t27) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
    assume {:print "$track_local(18,31,10):", $t27} $t27 == $t27;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:16+58
L5:

    // $t28 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:101+14
    $t28 := 1;
    assume $IsValid'u64'($t28);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:76+40
    // >> opaque call: $t22 := Errors::invalid_argument($t21)

    // $t29 := opaque begin: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:76+40

    // assume WellFormed($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:76+40
    assume $IsValid'u64'($t29);

    // assume Eq<u64>($t29, 7) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:76+40
    assume $IsEqual'u64'($t29, 7);

    // $t29 := opaque end: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:76+40

    // trace_local[tmp#$9]($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    assume {:print "$track_local(18,31,9):", $t29} $t29 == $t29;

    // trace_local[tmp#$8]($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    assume {:print "$track_local(18,31,8):", $t10} $t10 == $t10;

    // if ($t10) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    if ($t10) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
L7:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108

    // trace_abort($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    assume {:print "$at(10,59418,59526)"} true;
    assume {:print "$track_abort(18,31):", $t29} $t29 == $t29;

    // $t16 := move($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    $t16 := $t29;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:9+108
    goto L9;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1245:17+10
    assume {:print "$at(10,59544,59554)"} true;
L6:

    // $t30 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:26+1
    assume {:print "$at(10,59606,59607)"} true;
    $t30 := 0;
    assume $IsValid'u128'($t30);

    // $t31 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1247:28+1
    assume {:print "$at(10,59636,59637)"} true;
    $t31 := 0;
    assume $IsValid'u64'($t31);

    // $t32 := true at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:23+4
    assume {:print "$at(10,59825,59829)"} true;
    $t32 := true;
    assume $IsValid'bool'($t32);

    // $t33 := Event::new_event_handle<Diem::MintEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:26+46
    assume {:print "$at(10,59856,59902)"} true;
    call $t33 := $1_Event_new_event_handle'$1_Diem_MintEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,59856,59902)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t34 := Event::new_event_handle<Diem::BurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:26+46
    assume {:print "$at(10,59929,59975)"} true;
    call $t34 := $1_Event_new_event_handle'$1_Diem_BurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,59929,59975)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t35 := Event::new_event_handle<Diem::PreburnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:29+49
    assume {:print "$at(10,60005,60054)"} true;
    call $t35 := $1_Event_new_event_handle'$1_Diem_PreburnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60005,60054)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t36 := Event::new_event_handle<Diem::CancelBurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1257:33+52
    assume {:print "$at(10,60088,60140)"} true;
    call $t36 := $1_Event_new_event_handle'$1_Diem_CancelBurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60088,60140)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t37 := Event::new_event_handle<Diem::ToXDXExchangeRateUpdateEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:42+65
    assume {:print "$at(10,60183,60248)"} true;
    call $t37 := $1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60183,60248)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t38 := pack Diem::CurrencyInfo<#0>($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37) at /home/ying/diem/language/diem-framework/modules/Diem.move:1245:29+702
    assume {:print "$at(10,59556,60258)"} true;
    $t38 := $1_Diem_CurrencyInfo'$1_XDX_XDX'($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37);

    // move_to<Diem::CurrencyInfo<#0>>($t38, $t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1245:9+7
    if ($ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t0, $t38);
    }
    if ($abort_flag) {
        assume {:print "$at(10,59536,59543)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // assume Identical($t39, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t39 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t40, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t40 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // RegisteredCurrencies::add_currency_code($t0, $t5) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1260:9+101
    assume {:print "$at(10,60269,60370)"} true;
    call $1_RegisteredCurrencies_add_currency_code($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(10,60269,60370)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t41 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:10+26
    assume {:print "$at(10,60381,60407)"} true;
    $t41 := false;
    assume $IsValid'bool'($t41);

    // $t42 := pack Diem::MintCapability<#0>($t41) at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:10+26
    $t42 := $1_Diem_MintCapability'$1_XDX_XDX'($t41);

    // $t43 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:38+26
    $t43 := false;
    assume $IsValid'bool'($t43);

    // $t44 := pack Diem::BurnCapability<#0>($t43) at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:38+26
    $t44 := $1_Diem_BurnCapability'$1_XDX_XDX'($t43);

    // trace_return[0]($t42) at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:9+56
    assume {:print "$track_return(18,31,0):", $t42} $t42 == $t42;

    // trace_return[1]($t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1264:9+56
    assume {:print "$track_return(18,31,1):", $t44} $t44 == $t44;

    // label L8 at /home/ying/diem/language/diem-framework/modules/Diem.move:1265:5+1
    assume {:print "$at(10,60441,60442)"} true;
L8:

    // return ($t42, $t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1265:5+1
    $ret0 := $t42;
    $ret1 := $t44;
    return;

    // label L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1265:5+1
L9:

    // abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1265:5+1
    $abort_code := $t16;
    $abort_flag := true;
    return;

}

// fun Diem::update_minting_ability<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1510:5+372
procedure {:inline 1} $1_Diem_update_minting_ability'$1_XDX_XDX'(_$t0: int, _$t1: bool) returns ()
{
    // declare local variables
    var $t2: $Mutation ($1_Diem_CurrencyInfo'$1_XDX_XDX');
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: $Mutation ($1_Diem_CurrencyInfo'$1_XDX_XDX');
    var $t10: $Mutation (bool);
    var $t0: int;
    var $t1: bool;
    var $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'': $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t10));

    // bytecode translation starts here
    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1510:5+1
    assume {:print "$at(10,70934,70935)"} true;
    assume {:print "$track_local(18,36,0):", $t0} $t0 == $t0;

    // trace_local[can_mint]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1510:5+1
    assume {:print "$track_local(18,36,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1515:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(10,71085,71130)"} true;

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1515:9+45
    assume {:print "$at(10,71085,71130)"} true;

    // assume Identical($t5, Or(Or(Not(exists<Roles::RoleId>($t4)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1515:9+45
    assume ($t5 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t4) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1515:9+45
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1515:9+45
L4:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t6)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1515:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'u8'(5, $t6)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'u8'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1515:9+45
    assume {:print "$at(10,71085,71130)"} true;
    assume {:print "$track_abort(18,36):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1515:9+45
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1515:9+45
L3:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1515:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1516:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,71140,71170)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1516:9+30

    // assume Identical($t7, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1516:9+30
    assume ($t7 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t7) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1516:9+30
    if ($t7) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1516:9+30
L6:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t6)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1516:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'u8'(5, $t6));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1516:9+30
    assume {:print "$at(10,71140,71170)"} true;
    assume {:print "$track_abort(18,36):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1516:9+30
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1516:9+30
L5:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1516:9+30

    // $t8 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:71+13
    assume {:print "$at(10,71242,71255)"} true;
    $t8 := 173345816;
    assume $IsValid'address'($t8);

    // $t9 := borrow_global<Diem::CurrencyInfo<#0>>($t8) on_abort goto L2 with $t6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:29+17
    if (!$ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t8)) {
        call $ExecFailureAbort();
    } else {
        $t9 := $Mutation($Global($t8), EmptyVec(), $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t8));
    }
    if ($abort_flag) {
        assume {:print "$at(10,71200,71217)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(18,36):", $t6} $t6 == $t6;
        goto L2;
    }

    // trace_local[currency_info]($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:13+13
    $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'' := $Dereference($t9);
    assume {:print "$track_local(18,36,2):", $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''} $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'' == $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'';

    // $t10 := borrow_field<Diem::CurrencyInfo<#0>>.can_mint($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+22
    assume {:print "$at(10,71266,71288)"} true;
    $t10 := $ChildMutation($t9, 7, $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'($Dereference($t9)));

    // write_ref($t10, $t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+33
    $t10 := $UpdateMutation($t10, $t1);

    // write_back[Reference($t9).can_mint]($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+33
    $t9 := $UpdateMutation($t9, $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_can_mint($Dereference($t9), $Dereference($t10)));

    // pack_ref_deep($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+33

    // write_back[Diem::CurrencyInfo<#0>@]($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+33
    $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $GlobalLocationAddress($t9),
        $Dereference($t9));

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1519:5+1
    assume {:print "$at(10,71305,71306)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:1519:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1519:5+1
L2:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1519:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun Diem::zero<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1107:5+134
procedure {:inline 1} $1_Diem_zero'$1_XUS_XUS'() returns ($ret0: $1_Diem_Diem'$1_XUS_XUS')
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $t3: $1_Diem_Diem'$1_XUS_XUS';
    var $temp_0'$1_Diem_Diem'$1_XUS_XUS'': $1_Diem_Diem'$1_XUS_XUS';

    // bytecode translation starts here
    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,53570,53600)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30

    // assume Identical($t0, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    assume ($t0 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
L4:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'u8'(5, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    assume {:print "$at(10,53570,53600)"} true;
    assume {:print "$track_abort(18,43):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
L3:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30

    // $t2 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1109:33+1
    assume {:print "$at(10,53634,53635)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack Diem::Diem<#0>($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1109:9+27
    $t3 := $1_Diem_Diem'$1_XUS_XUS'($t2);

    // trace_return[0]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1109:9+27
    assume {:print "$track_return(18,43,0):", $t3} $t3 == $t3;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:5+1
    assume {:print "$at(10,53642,53643)"} true;
L1:

    // return $t3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:5+1
    $ret0 := $t3;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun Diem::zero<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1107:5+134
procedure {:inline 1} $1_Diem_zero'$1_XDX_XDX'() returns ($ret0: $1_Diem_Diem'$1_XDX_XDX')
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $t3: $1_Diem_Diem'$1_XDX_XDX';
    var $temp_0'$1_Diem_Diem'$1_XDX_XDX'': $1_Diem_Diem'$1_XDX_XDX';

    // bytecode translation starts here
    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,53570,53600)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30

    // assume Identical($t0, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    assume ($t0 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
L4:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'u8'(5, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    assume {:print "$at(10,53570,53600)"} true;
    assume {:print "$track_abort(18,43):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30
L3:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1108:9+30

    // $t2 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1109:33+1
    assume {:print "$at(10,53634,53635)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack Diem::Diem<#0>($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1109:9+27
    $t3 := $1_Diem_Diem'$1_XDX_XDX'($t2);

    // trace_return[0]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1109:9+27
    assume {:print "$track_return(18,43,0):", $t3} $t3 == $t3;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:5+1
    assume {:print "$at(10,53642,53643)"} true;
L1:

    // return $t3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:5+1
    $ret0 := $t3;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// struct AccountLimits::AccountLimitMutationCapability at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:11:5+51
type {:datatype} $1_AccountLimits_AccountLimitMutationCapability;
function {:constructor} $1_AccountLimits_AccountLimitMutationCapability($dummy_field: bool): $1_AccountLimits_AccountLimitMutationCapability;
function {:inline} $Update'$1_AccountLimits_AccountLimitMutationCapability'_dummy_field(s: $1_AccountLimits_AccountLimitMutationCapability, x: bool): $1_AccountLimits_AccountLimitMutationCapability {
    $1_AccountLimits_AccountLimitMutationCapability(x)
}
function $IsValid'$1_AccountLimits_AccountLimitMutationCapability'(s: $1_AccountLimits_AccountLimitMutationCapability): bool {
    $IsValid'bool'($dummy_field#$1_AccountLimits_AccountLimitMutationCapability(s))
}
function {:inline} $IsEqual'$1_AccountLimits_AccountLimitMutationCapability'(s1: $1_AccountLimits_AccountLimitMutationCapability, s2: $1_AccountLimits_AccountLimitMutationCapability): bool {
    s1 == s2
}

// struct AccountLimits::LimitsDefinition<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:17:5+398
type {:datatype} $1_AccountLimits_LimitsDefinition'$1_XUS_XUS';
function {:constructor} $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($max_inflow: int, $max_outflow: int, $time_period: int, $max_holding: int): $1_AccountLimits_LimitsDefinition'$1_XUS_XUS';
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''_max_inflow(s: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS', x: int): $1_AccountLimits_LimitsDefinition'$1_XUS_XUS' {
    $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(x, $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''_max_outflow(s: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS', x: int): $1_AccountLimits_LimitsDefinition'$1_XUS_XUS' {
    $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), x, $time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''_time_period(s: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS', x: int): $1_AccountLimits_LimitsDefinition'$1_XUS_XUS' {
    $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), x, $max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''_max_holding(s: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS', x: int): $1_AccountLimits_LimitsDefinition'$1_XUS_XUS' {
    $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), x)
}
function $IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''(s: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'): bool {
    $IsValid'u64'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
      && $IsValid'u64'($max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
      && $IsValid'u64'($time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
      && $IsValid'u64'($max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''(s1: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS', s2: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory: $Memory $1_AccountLimits_LimitsDefinition'$1_XUS_XUS';

// struct AccountLimits::LimitsDefinition<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:17:5+398
type {:datatype} $1_AccountLimits_LimitsDefinition'$1_XDX_XDX';
function {:constructor} $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($max_inflow: int, $max_outflow: int, $time_period: int, $max_holding: int): $1_AccountLimits_LimitsDefinition'$1_XDX_XDX';
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''_max_inflow(s: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX', x: int): $1_AccountLimits_LimitsDefinition'$1_XDX_XDX' {
    $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(x, $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''_max_outflow(s: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX', x: int): $1_AccountLimits_LimitsDefinition'$1_XDX_XDX' {
    $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), x, $time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''_time_period(s: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX', x: int): $1_AccountLimits_LimitsDefinition'$1_XDX_XDX' {
    $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), x, $max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''_max_holding(s: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX', x: int): $1_AccountLimits_LimitsDefinition'$1_XDX_XDX' {
    $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), x)
}
function $IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''(s: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'): bool {
    $IsValid'u64'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
      && $IsValid'u64'($max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
      && $IsValid'u64'($time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
      && $IsValid'u64'($max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''(s1: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX', s2: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory: $Memory $1_AccountLimits_LimitsDefinition'$1_XDX_XDX';

// fun AccountLimits::publish_unrestricted_limits<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:183:5+522
procedure {:inline 1} $1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS';
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[publish_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:183:5+1
    assume {:print "$at(5,7826,7827)"} true;
    assume {:print "$track_local(19,8,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:49+35
    // >> opaque call: $t8 := Signer::address_of($t0)
    assume {:print "$at(5,7974,8009)"} true;

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:49+35

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:49+35
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:49+35
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:49+35

    // $t9 := exists<AccountLimits::LimitsDefinition<#0>>($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:14+6
    $t9 := $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $t8);

    // $t10 := !($t9) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:13+1
    call $t10 := $Not($t9);

    // $t11 := 0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:39+18
    assume {:print "$at(5,8050,8068)"} true;
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // nop at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:13+45
    // >> opaque call: $t12 := Errors::already_published($t11)

    // $t12 := opaque begin: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:13+45

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:13+45
    assume $IsValid'u64'($t12);

    // assume Eq<u64>($t12, 6) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:13+45
    assume $IsEqual'u64'($t12, 6);

    // $t12 := opaque end: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:13+45

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    assume {:print "$at(5,7918,8079)"} true;
    assume {:print "$track_local(19,8,2):", $t12} $t12 == $t12;

    // trace_local[tmp#$1]($t10) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    assume {:print "$track_local(19,8,1):", $t10} $t10 == $t10;

    // if ($t10) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    assume {:print "$at(5,7918,8079)"} true;
    assume {:print "$track_abort(19,8):", $t12} $t12 == $t12;

    // $t13 := move($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    $t13 := $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+15
    assume {:print "$at(5,8110,8125)"} true;
L0:

    // trace_local[tmp#$7]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+15
    assume {:print "$track_local(19,8,7):", $t0} $t0 == $t0;

    // $t14 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:191:29+7
    assume {:print "$at(5,8196,8203)"} true;
    $t14 := 18446744073709551615;
    assume $IsValid'u64'($t14);

    // $t15 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:192:30+7
    assume {:print "$at(5,8234,8241)"} true;
    $t15 := 18446744073709551615;
    assume $IsValid'u64'($t15);

    // $t16 := 86400000000 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:194:30+7
    assume {:print "$at(5,8310,8317)"} true;
    $t16 := 86400000000;
    assume $IsValid'u64'($t16);

    // $t17 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:193:30+7
    assume {:print "$at(5,8272,8279)"} true;
    $t17 := 18446744073709551615;
    assume $IsValid'u64'($t17);

    // $t18 := pack AccountLimits::LimitsDefinition<#0>($t14, $t15, $t16, $t17) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:13+193
    assume {:print "$at(5,8139,8332)"} true;
    $t18 := $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($t14, $t15, $t16, $t17);

    // move_to<AccountLimits::LimitsDefinition<#0>>($t18, $t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+7
    assume {:print "$at(5,8089,8096)"} true;
    if ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory := $ResourceUpdate($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $t0, $t18);
    }
    if ($abort_flag) {
        assume {:print "$at(5,8089,8096)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(19,8):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:5+1
    assume {:print "$at(5,8347,8348)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:5+1
L3:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// fun AccountLimits::publish_unrestricted_limits<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:183:5+522
procedure {:inline 1} $1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX';
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[publish_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:183:5+1
    assume {:print "$at(5,7826,7827)"} true;
    assume {:print "$track_local(19,8,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:49+35
    // >> opaque call: $t8 := Signer::address_of($t0)
    assume {:print "$at(5,7974,8009)"} true;

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:49+35

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:49+35
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:49+35
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:49+35

    // $t9 := exists<AccountLimits::LimitsDefinition<#0>>($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:14+6
    $t9 := $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $t8);

    // $t10 := !($t9) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:185:13+1
    call $t10 := $Not($t9);

    // $t11 := 0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:39+18
    assume {:print "$at(5,8050,8068)"} true;
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // nop at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:13+45
    // >> opaque call: $t12 := Errors::already_published($t11)

    // $t12 := opaque begin: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:13+45

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:13+45
    assume $IsValid'u64'($t12);

    // assume Eq<u64>($t12, 6) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:13+45
    assume $IsEqual'u64'($t12, 6);

    // $t12 := opaque end: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:13+45

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    assume {:print "$at(5,7918,8079)"} true;
    assume {:print "$track_local(19,8,2):", $t12} $t12 == $t12;

    // trace_local[tmp#$1]($t10) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    assume {:print "$track_local(19,8,1):", $t10} $t10 == $t10;

    // if ($t10) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    assume {:print "$at(5,7918,8079)"} true;
    assume {:print "$track_abort(19,8):", $t12} $t12 == $t12;

    // $t13 := move($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    $t13 := $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:184:9+161
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+15
    assume {:print "$at(5,8110,8125)"} true;
L0:

    // trace_local[tmp#$7]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+15
    assume {:print "$track_local(19,8,7):", $t0} $t0 == $t0;

    // $t14 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:191:29+7
    assume {:print "$at(5,8196,8203)"} true;
    $t14 := 18446744073709551615;
    assume $IsValid'u64'($t14);

    // $t15 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:192:30+7
    assume {:print "$at(5,8234,8241)"} true;
    $t15 := 18446744073709551615;
    assume $IsValid'u64'($t15);

    // $t16 := 86400000000 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:194:30+7
    assume {:print "$at(5,8310,8317)"} true;
    $t16 := 86400000000;
    assume $IsValid'u64'($t16);

    // $t17 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:193:30+7
    assume {:print "$at(5,8272,8279)"} true;
    $t17 := 18446744073709551615;
    assume $IsValid'u64'($t17);

    // $t18 := pack AccountLimits::LimitsDefinition<#0>($t14, $t15, $t16, $t17) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:13+193
    assume {:print "$at(5,8139,8332)"} true;
    $t18 := $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($t14, $t15, $t16, $t17);

    // move_to<AccountLimits::LimitsDefinition<#0>>($t18, $t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+7
    assume {:print "$at(5,8089,8096)"} true;
    if ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory := $ResourceUpdate($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $t0, $t18);
    }
    if ($abort_flag) {
        assume {:print "$at(5,8089,8096)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(19,8):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:5+1
    assume {:print "$at(5,8347,8348)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:5+1
L3:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// struct XUS::XUS at /home/ying/diem/language/diem-framework/modules/XUS.move:10:5+24
type {:datatype} $1_XUS_XUS;
function {:constructor} $1_XUS_XUS($dummy_field: bool): $1_XUS_XUS;
function {:inline} $Update'$1_XUS_XUS'_dummy_field(s: $1_XUS_XUS, x: bool): $1_XUS_XUS {
    $1_XUS_XUS(x)
}
function $IsValid'$1_XUS_XUS'(s: $1_XUS_XUS): bool {
    $IsValid'bool'($dummy_field#$1_XUS_XUS(s))
}
function {:inline} $IsEqual'$1_XUS_XUS'(s1: $1_XUS_XUS, s2: $1_XUS_XUS): bool {
    s1 == s2
}

// fun XUS::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/XUS.move:13:5+595
procedure {:inline 1} $1_XUS_initialize(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: $1_DiemConfig_Configuration;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t21: int;
    var $t22: int;
    var $t23: $1_FixedPoint32_FixedPoint32;
    var $t24: bool;
    var $t25: int;
    var $t26: int;
    var $t27: Vec (int);
    var $t28: int;
    var $t29: int;
    var $t30: $1_DiemConfig_Configuration;
    var $t31: int;
    var $t32: int;
    var $t33: int;
    var $t34: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'address': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t2, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t1));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t4 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t5, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t5 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t6, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t1));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t1));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/XUS.move:13:5+1
    assume {:print "$at(39,439,440)"} true;
    assume {:print "$track_local(20,0,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/XUS.move:13:5+1
    assume {:print "$track_local(20,0,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(39,536,567)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31

    // assume Identical($t9, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    assume ($t9 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t9) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    if ($t9) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t10)) at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t10));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    assume {:print "$at(39,536,567)"} true;
    assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t1)
    assume {:print "$at(39,577,622)"} true;

    // assume Identical($t11, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    assume {:print "$at(39,577,622)"} true;

    // assume Identical($t12, Or(Or(Not(exists<Roles::RoleId>($t11)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t11)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    assume ($t12 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t11) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t11)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)));

    // if ($t12) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    if ($t12) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
L6:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t11)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t11)), 1), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t10))) at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t11) && $IsEqual'u8'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t11)), 1) && $IsEqual'u8'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'u8'(2, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    assume {:print "$at(39,577,622)"} true;
    assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
L5:

    // opaque end: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(39,632,667)"} true;

    // assume Identical($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t13 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    assume {:print "$at(39,632,667)"} true;

    // assume Identical($t14, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t13))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    assume ($t14 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t13)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t14) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    if ($t14) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
L8:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t10)), And(Not(exists<Roles::RoleId>($t13)), Eq(5, $t10))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t10))) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t10)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t13) && $IsEqual'u8'(5, $t10))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0) && $IsEqual'u8'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    assume {:print "$at(39,632,667)"} true;
    assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
L7:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35

    // $t15 := 1 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:48+1
    assume {:print "$at(39,806,807)"} true;
    $t15 := 1;
    assume $IsValid'u64'($t15);

    // $t16 := 1 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:51+1
    $t16 := 1;
    assume $IsValid'u64'($t16);

    // nop at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    // >> opaque call: $t4 := FixedPoint32::create_from_rational($t2, $t3)

    // assume Identical($t17, Shl($t15, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:184:9+39
    assume {:print "$at(43,8340,8379)"} true;
    assume ($t17 == $shl($t15, 64));

    // assume Identical($t18, Shl($t16, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:185:9+43
    assume {:print "$at(43,8388,8431)"} true;
    assume ($t18 == $shl($t16, 32));

    // assume Identical($t19, Div($t17, $t18)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+53
    assume {:print "$at(43,8440,8493)"} true;
    assume ($t19 == ($t17 div $t18));

    // assume Identical($t20, Shl($t15, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:184:9+39
    assume {:print "$at(43,8340,8379)"} true;
    assume ($t20 == $shl($t15, 64));

    // assume Identical($t21, Shl($t16, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:185:9+43
    assume {:print "$at(43,8388,8431)"} true;
    assume ($t21 == $shl($t16, 32));

    // assume Identical($t22, Div($t20, $t21)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+53
    assume {:print "$at(43,8440,8493)"} true;
    assume ($t22 == ($t20 div $t21));

    // $t23 := opaque begin: FixedPoint32::create_from_rational($t15, $t16) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume {:print "$at(39,771,811)"} true;

    // assume Identical($t24, Or(Or(Eq<num>($t21, 0), And(Eq<num>($t22, 0), Neq<num>($t20, 0))), Gt($t22, 18446744073709551615))) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume ($t24 == (($IsEqual'num'($t21, 0) || ($IsEqual'num'($t22, 0) && !$IsEqual'num'($t20, 0))) || ($t22 > 18446744073709551615)));

    // if ($t24) goto L10 else goto L9 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    if ($t24) { goto L10; } else { goto L9; }

    // label L10 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
L10:

    // assume Or(Or(And(Eq<num>($t21, 0), Eq(7, $t10)), And(And(Eq<num>($t22, 0), Neq<num>($t20, 0)), Eq(7, $t10))), And(Gt($t22, 18446744073709551615), Eq(8, $t10))) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume ((($IsEqual'num'($t21, 0) && $IsEqual'u8'(7, $t10)) || (($IsEqual'num'($t22, 0) && !$IsEqual'num'($t20, 0)) && $IsEqual'u8'(7, $t10))) || (($t22 > 18446744073709551615) && $IsEqual'u8'(8, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume {:print "$at(39,771,811)"} true;
    assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    goto L2;

    // label L9 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
L9:

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume $IsValid'$1_FixedPoint32_FixedPoint32'($t23);

    // assume Eq<FixedPoint32::FixedPoint32>($t23, FixedPoint32::spec_create_from_rational($t15, $t16)) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume $IsEqual'$1_FixedPoint32_FixedPoint32'($t23, $1_FixedPoint32_spec_create_from_rational($t15, $t16));

    // $t23 := opaque end: FixedPoint32::create_from_rational($t15, $t16) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40

    // $t25 := 1000000 at /home/ying/diem/language/diem-framework/modules/XUS.move:24:13+7
    assume {:print "$at(39,849,856)"} true;
    $t25 := 1000000;
    assume $IsValid'u64'($t25);

    // $t26 := 100 at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+3
    assume {:print "$at(39,895,898)"} true;
    $t26 := 100;
    assume $IsValid'u64'($t26);

    // $t27 := [88, 85, 83] at /home/ying/diem/language/diem-framework/modules/XUS.move:26:13+6
    assume {:print "$at(39,942,948)"} true;
    $t27 := MakeVec3(88, 85, 83);
    assume $IsValid'vec'u8''($t27);

    // assume Identical($t28, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t28 == $1_Signer_spec_address_of($t1));

    // assume Identical($t29, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t29 == $1_Signer_spec_address_of($t0));

    // assume Identical($t30, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t30 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t31, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t31 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t32, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t32 == $1_Signer_spec_address_of($t1));

    // assume Identical($t33, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume ($t33 == $1_Signer_spec_address_of($t1));

    // assume Identical($t34, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume ($t34 == $1_Signer_spec_address_of($t1));

    // Diem::register_SCS_currency<XUS::XUS>($t0, $t1, $t23, $t25, $t26, $t27) on_abort goto L2 with $t10 at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+281
    assume {:print "$at(39,677,958)"} true;
    call $1_Diem_register_SCS_currency'$1_XUS_XUS'($t0, $t1, $t23, $t25, $t26, $t27);
    if ($abort_flag) {
        assume {:print "$at(39,677,958)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;
        goto L2;
    }

    // AccountLimits::publish_unrestricted_limits<XUS::XUS>($t0) on_abort goto L2 with $t10 at /home/ying/diem/language/diem-framework/modules/XUS.move:28:9+59
    assume {:print "$at(39,968,1027)"} true;
    call $1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'($t0);
    if ($abort_flag) {
        assume {:print "$at(39,968,1027)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/XUS.move:29:5+1
    assume {:print "$at(39,1033,1034)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/XUS.move:29:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:29:5+1
L2:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:29:5+1
    $abort_code := $t10;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/XDX.move:133:9+80
function {:inline} $1_XDX_reserve_exists($1_XDX_Reserve_$memory: $Memory $1_XDX_Reserve): bool {
    $ResourceExists($1_XDX_Reserve_$memory, 173345816)
}

// struct XDX::XDX at /home/ying/diem/language/diem-framework/modules/XDX.move:15:5+24
type {:datatype} $1_XDX_XDX;
function {:constructor} $1_XDX_XDX($dummy_field: bool): $1_XDX_XDX;
function {:inline} $Update'$1_XDX_XDX'_dummy_field(s: $1_XDX_XDX, x: bool): $1_XDX_XDX {
    $1_XDX_XDX(x)
}
function $IsValid'$1_XDX_XDX'(s: $1_XDX_XDX): bool {
    $IsValid'bool'($dummy_field#$1_XDX_XDX(s))
}
function {:inline} $IsEqual'$1_XDX_XDX'(s1: $1_XDX_XDX, s2: $1_XDX_XDX): bool {
    s1 == s2
}

// struct XDX::Reserve at /home/ying/diem/language/diem-framework/modules/XDX.move:24:5+677
type {:datatype} $1_XDX_Reserve;
function {:constructor} $1_XDX_Reserve($mint_cap: $1_Diem_MintCapability'$1_XDX_XDX', $burn_cap: $1_Diem_BurnCapability'$1_XDX_XDX', $preburn_cap: $1_Diem_Preburn'$1_XDX_XDX'): $1_XDX_Reserve;
function {:inline} $Update'$1_XDX_Reserve'_mint_cap(s: $1_XDX_Reserve, x: $1_Diem_MintCapability'$1_XDX_XDX'): $1_XDX_Reserve {
    $1_XDX_Reserve(x, $burn_cap#$1_XDX_Reserve(s), $preburn_cap#$1_XDX_Reserve(s))
}
function {:inline} $Update'$1_XDX_Reserve'_burn_cap(s: $1_XDX_Reserve, x: $1_Diem_BurnCapability'$1_XDX_XDX'): $1_XDX_Reserve {
    $1_XDX_Reserve($mint_cap#$1_XDX_Reserve(s), x, $preburn_cap#$1_XDX_Reserve(s))
}
function {:inline} $Update'$1_XDX_Reserve'_preburn_cap(s: $1_XDX_Reserve, x: $1_Diem_Preburn'$1_XDX_XDX'): $1_XDX_Reserve {
    $1_XDX_Reserve($mint_cap#$1_XDX_Reserve(s), $burn_cap#$1_XDX_Reserve(s), x)
}
function $IsValid'$1_XDX_Reserve'(s: $1_XDX_Reserve): bool {
    $IsValid'$1_Diem_MintCapability'$1_XDX_XDX''($mint_cap#$1_XDX_Reserve(s))
      && $IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''($burn_cap#$1_XDX_Reserve(s))
      && $IsValid'$1_Diem_Preburn'$1_XDX_XDX''($preburn_cap#$1_XDX_Reserve(s))
}
function {:inline} $IsEqual'$1_XDX_Reserve'(s1: $1_XDX_Reserve, s2: $1_XDX_Reserve): bool {
    s1 == s2
}
var $1_XDX_Reserve_$memory: $Memory $1_XDX_Reserve;

// fun XDX::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/XDX.move:48:5+973
procedure {:inline 1} $1_XDX_initialize(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: $1_Diem_BurnCapability'$1_XDX_XDX';
    var $t3: $1_Diem_MintCapability'$1_XDX_XDX';
    var $t4: $1_Diem_Preburn'$1_XDX_XDX';
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: $1_DiemConfig_Configuration;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: bool;
    var $t17: bool;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t21: int;
    var $t22: int;
    var $t23: int;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t27: int;
    var $t28: $1_FixedPoint32_FixedPoint32;
    var $t29: bool;
    var $t30: bool;
    var $t31: int;
    var $t32: int;
    var $t33: Vec (int);
    var $t34: int;
    var $t35: $1_DiemConfig_Configuration;
    var $t36: int;
    var $t37: $1_Diem_MintCapability'$1_XDX_XDX';
    var $t38: $1_Diem_BurnCapability'$1_XDX_XDX';
    var $t39: bool;
    var $t40: int;
    var $t41: int;
    var $t42: $1_Diem_Preburn'$1_XDX_XDX';
    var $t43: $1_XDX_Reserve;
    var $t0: int;
    var $t1: int;
    var $temp_0'$1_Diem_BurnCapability'$1_XDX_XDX'': $1_Diem_BurnCapability'$1_XDX_XDX';
    var $temp_0'$1_Diem_MintCapability'$1_XDX_XDX'': $1_Diem_MintCapability'$1_XDX_XDX';
    var $temp_0'$1_Diem_Preburn'$1_XDX_XDX'': $1_Diem_Preburn'$1_XDX_XDX';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t8 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t9, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t9 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // assume Identical($t11, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t1));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:48:5+1
    assume {:print "$at(38,2328,2329)"} true;
    assume {:print "$track_local(21,0,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/XDX.move:48:5+1
    assume {:print "$track_local(21,0,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(38,2425,2456)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31

    // assume Identical($t12, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    assume ($t12 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t12) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    if ($t12) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t13)) at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t13));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    assume {:print "$at(38,2425,2456)"} true;
    assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    // >> opaque call: CoreAddresses::assert_currency_info($t0)
    assume {:print "$at(38,2500,2547)"} true;

    // opaque begin: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47

    // assume Identical($t14, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    assume ($t14 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t14) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    if ($t14) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
L7:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t13)) at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t13));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    assume {:print "$at(38,2500,2547)"} true;
    assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
L6:

    // opaque end: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47

    // $t15 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/XDX.move:56:33+9
    assume {:print "$at(38,2616,2625)"} true;
    $t15 := 173345816;
    assume $IsValid'address'($t15);

    // $t16 := exists<XDX::Reserve>($t15) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:17+6
    $t16 := $ResourceExists($1_XDX_Reserve_$memory, $t15);

    // $t17 := !($t16) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:16+1
    call $t17 := $Not($t16);

    // $t18 := 0 at /home/ying/diem/language/diem-framework/modules/XDX.move:56:71+8
    $t18 := 0;
    assume $IsValid'u64'($t18);

    // nop at /home/ying/diem/language/diem-framework/modules/XDX.move:56:45+35
    // >> opaque call: $t11 := Errors::already_published($t10)

    // $t19 := opaque begin: Errors::already_published($t18) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:45+35

    // assume WellFormed($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:45+35
    assume $IsValid'u64'($t19);

    // assume Eq<u64>($t19, 6) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:45+35
    assume $IsEqual'u64'($t19, 6);

    // $t19 := opaque end: Errors::already_published($t18) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:45+35

    // trace_local[tmp#$6]($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    assume {:print "$track_local(21,0,6):", $t19} $t19 == $t19;

    // trace_local[tmp#$5]($t17) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    assume {:print "$track_local(21,0,5):", $t17} $t17 == $t17;

    // if ($t17) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    if ($t17) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
L1:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    assume {:print "$at(38,2592,2664)"} true;
    assume {:print "$track_abort(21,0):", $t19} $t19 == $t19;

    // $t13 := move($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    $t13 := $t19;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/XDX.move:58:13+10
    assume {:print "$at(38,2743,2753)"} true;
L0:

    // $t20 := 1 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:48+1
    assume {:print "$at(38,2802,2803)"} true;
    $t20 := 1;
    assume $IsValid'u64'($t20);

    // $t21 := 1 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:51+1
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // nop at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    // >> opaque call: $t14 := FixedPoint32::create_from_rational($t12, $t13)

    // assume Identical($t22, Shl($t20, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:184:9+39
    assume {:print "$at(43,8340,8379)"} true;
    assume ($t22 == $shl($t20, 64));

    // assume Identical($t23, Shl($t21, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:185:9+43
    assume {:print "$at(43,8388,8431)"} true;
    assume ($t23 == $shl($t21, 32));

    // assume Identical($t24, Div($t22, $t23)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+53
    assume {:print "$at(43,8440,8493)"} true;
    assume ($t24 == ($t22 div $t23));

    // assume Identical($t25, Shl($t20, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:184:9+39
    assume {:print "$at(43,8340,8379)"} true;
    assume ($t25 == $shl($t20, 64));

    // assume Identical($t26, Shl($t21, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:185:9+43
    assume {:print "$at(43,8388,8431)"} true;
    assume ($t26 == $shl($t21, 32));

    // assume Identical($t27, Div($t25, $t26)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+53
    assume {:print "$at(43,8440,8493)"} true;
    assume ($t27 == ($t25 div $t26));

    // $t28 := opaque begin: FixedPoint32::create_from_rational($t20, $t21) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume {:print "$at(38,2767,2807)"} true;

    // assume Identical($t29, Or(Or(Eq<num>($t26, 0), And(Eq<num>($t27, 0), Neq<num>($t25, 0))), Gt($t27, 18446744073709551615))) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume ($t29 == (($IsEqual'num'($t26, 0) || ($IsEqual'num'($t27, 0) && !$IsEqual'num'($t25, 0))) || ($t27 > 18446744073709551615)));

    // if ($t29) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    if ($t29) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
L9:

    // assume Or(Or(And(Eq<num>($t26, 0), Eq(7, $t13)), And(And(Eq<num>($t27, 0), Neq<num>($t25, 0)), Eq(7, $t13))), And(Gt($t27, 18446744073709551615), Eq(8, $t13))) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume ((($IsEqual'num'($t26, 0) && $IsEqual'u8'(7, $t13)) || (($IsEqual'num'($t27, 0) && !$IsEqual'num'($t25, 0)) && $IsEqual'u8'(7, $t13))) || (($t27 > 18446744073709551615) && $IsEqual'u8'(8, $t13)));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume {:print "$at(38,2767,2807)"} true;
    assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
L8:

    // assume WellFormed($t28) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume $IsValid'$1_FixedPoint32_FixedPoint32'($t28);

    // assume Eq<FixedPoint32::FixedPoint32>($t28, FixedPoint32::spec_create_from_rational($t20, $t21)) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume $IsEqual'$1_FixedPoint32_FixedPoint32'($t28, $1_FixedPoint32_spec_create_from_rational($t20, $t21));

    // $t28 := opaque end: FixedPoint32::create_from_rational($t20, $t21) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40

    // $t30 := true at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+4
    assume {:print "$at(38,2845,2849)"} true;
    $t30 := true;
    assume $IsValid'bool'($t30);

    // $t31 := 1000000 at /home/ying/diem/language/diem-framework/modules/XDX.move:61:13+7
    assume {:print "$at(38,2882,2889)"} true;
    $t31 := 1000000;
    assume $IsValid'u64'($t31);

    // $t32 := 1000 at /home/ying/diem/language/diem-framework/modules/XDX.move:62:13+4
    assume {:print "$at(38,2928,2932)"} true;
    $t32 := 1000;
    assume $IsValid'u64'($t32);

    // $t33 := [88, 68, 88] at /home/ying/diem/language/diem-framework/modules/XDX.move:63:13+6
    assume {:print "$at(38,2975,2981)"} true;
    $t33 := MakeVec3(88, 68, 88);
    assume $IsValid'vec'u8''($t33);

    // assume Identical($t34, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t34 == $1_Signer_spec_address_of($t0));

    // assume Identical($t35, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t35 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t36, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t36 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // ($t37, $t38) := Diem::register_currency<XDX::XDX>($t0, $t28, $t30, $t31, $t32, $t33) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:57:36+290
    assume {:print "$at(38,2701,2991)"} true;
    call $t37,$t38 := $1_Diem_register_currency'$1_XDX_XDX'($t0, $t28, $t30, $t31, $t32, $t33);
    if ($abort_flag) {
        assume {:print "$at(38,2701,2991)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // trace_local[burn_cap]($t38) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:24+8
    assume {:print "$track_local(21,0,2):", $t38} $t38 == $t38;

    // trace_local[mint_cap]($t37) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:14+8
    assume {:print "$track_local(21,0,3):", $t37} $t37 == $t37;

    // $t39 := false at /home/ying/diem/language/diem-framework/modules/XDX.move:66:55+5
    assume {:print "$at(38,3080,3085)"} true;
    $t39 := false;
    assume $IsValid'bool'($t39);

    // assume Identical($t40, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t40 == $1_Signer_spec_address_of($t1));

    // Diem::update_minting_ability<XDX::XDX>($t1, $t39) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:66:9+52
    assume {:print "$at(38,3034,3086)"} true;
    call $1_Diem_update_minting_ability'$1_XDX_XDX'($t1, $t39);
    if ($abort_flag) {
        assume {:print "$at(38,3034,3086)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // AccountLimits::publish_unrestricted_limits<XDX::XDX>($t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:67:9+59
    assume {:print "$at(38,3096,3155)"} true;
    call $1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'($t0);
    if ($abort_flag) {
        assume {:print "$at(38,3096,3155)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // assume Identical($t41, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t41 == $1_Signer_spec_address_of($t1));

    // $t42 := Diem::create_preburn<XDX::XDX>($t1) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:68:27+37
    assume {:print "$at(38,3183,3220)"} true;
    call $t42 := $1_Diem_create_preburn'$1_XDX_XDX'($t1);
    if ($abort_flag) {
        assume {:print "$at(38,3183,3220)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // trace_local[preburn_cap]($t42) at /home/ying/diem/language/diem-framework/modules/XDX.move:68:13+11
    assume {:print "$track_local(21,0,4):", $t42} $t42 == $t42;

    // $t43 := pack XDX::Reserve($t37, $t38, $t42) at /home/ying/diem/language/diem-framework/modules/XDX.move:69:29+43
    assume {:print "$at(38,3250,3293)"} true;
    $t43 := $1_XDX_Reserve($t37, $t38, $t42);

    // move_to<XDX::Reserve>($t43, $t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:69:9+7
    if ($ResourceExists($1_XDX_Reserve_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_XDX_Reserve_$memory := $ResourceUpdate($1_XDX_Reserve_$memory, $t0, $t43);
    }
    if ($abort_flag) {
        assume {:print "$at(38,3230,3237)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/XDX.move:70:5+1
    assume {:print "$at(38,3300,3301)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/XDX.move:70:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:70:5+1
L3:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:70:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:296:5+106
function {:inline} $1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory: $Memory $1_VASPDomain_VASPDomainManager): bool {
    $ResourceExists($1_VASPDomain_VASPDomainManager_$memory, 186537453)
}

// struct VASPDomain::VASPDomain at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:23:5+110
type {:datatype} $1_VASPDomain_VASPDomain;
function {:constructor} $1_VASPDomain_VASPDomain($domain: Vec (int)): $1_VASPDomain_VASPDomain;
function {:inline} $Update'$1_VASPDomain_VASPDomain'_domain(s: $1_VASPDomain_VASPDomain, x: Vec (int)): $1_VASPDomain_VASPDomain {
    $1_VASPDomain_VASPDomain(x)
}
function $IsValid'$1_VASPDomain_VASPDomain'(s: $1_VASPDomain_VASPDomain): bool {
    $IsValid'vec'u8''($domain#$1_VASPDomain_VASPDomain(s))
}
function {:inline} $IsEqual'$1_VASPDomain_VASPDomain'(s1: $1_VASPDomain_VASPDomain, s2: $1_VASPDomain_VASPDomain): bool {
    s1 == s2
}

// struct VASPDomain::VASPDomainEvent at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:37:5+256
type {:datatype} $1_VASPDomain_VASPDomainEvent;
function {:constructor} $1_VASPDomain_VASPDomainEvent($removed: bool, $domain: $1_VASPDomain_VASPDomain, $address: int): $1_VASPDomain_VASPDomainEvent;
function {:inline} $Update'$1_VASPDomain_VASPDomainEvent'_removed(s: $1_VASPDomain_VASPDomainEvent, x: bool): $1_VASPDomain_VASPDomainEvent {
    $1_VASPDomain_VASPDomainEvent(x, $domain#$1_VASPDomain_VASPDomainEvent(s), $address#$1_VASPDomain_VASPDomainEvent(s))
}
function {:inline} $Update'$1_VASPDomain_VASPDomainEvent'_domain(s: $1_VASPDomain_VASPDomainEvent, x: $1_VASPDomain_VASPDomain): $1_VASPDomain_VASPDomainEvent {
    $1_VASPDomain_VASPDomainEvent($removed#$1_VASPDomain_VASPDomainEvent(s), x, $address#$1_VASPDomain_VASPDomainEvent(s))
}
function {:inline} $Update'$1_VASPDomain_VASPDomainEvent'_address(s: $1_VASPDomain_VASPDomainEvent, x: int): $1_VASPDomain_VASPDomainEvent {
    $1_VASPDomain_VASPDomainEvent($removed#$1_VASPDomain_VASPDomainEvent(s), $domain#$1_VASPDomain_VASPDomainEvent(s), x)
}
function $IsValid'$1_VASPDomain_VASPDomainEvent'(s: $1_VASPDomain_VASPDomainEvent): bool {
    $IsValid'bool'($removed#$1_VASPDomain_VASPDomainEvent(s))
      && $IsValid'$1_VASPDomain_VASPDomain'($domain#$1_VASPDomain_VASPDomainEvent(s))
      && $IsValid'address'($address#$1_VASPDomain_VASPDomainEvent(s))
}
function {:inline} $IsEqual'$1_VASPDomain_VASPDomainEvent'(s1: $1_VASPDomain_VASPDomainEvent, s2: $1_VASPDomain_VASPDomainEvent): bool {
    s1 == s2
}

// struct VASPDomain::VASPDomainManager at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:31:5+235
type {:datatype} $1_VASPDomain_VASPDomainManager;
function {:constructor} $1_VASPDomain_VASPDomainManager($vasp_domain_events: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent'): $1_VASPDomain_VASPDomainManager;
function {:inline} $Update'$1_VASPDomain_VASPDomainManager'_vasp_domain_events(s: $1_VASPDomain_VASPDomainManager, x: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent'): $1_VASPDomain_VASPDomainManager {
    $1_VASPDomain_VASPDomainManager(x)
}
function $IsValid'$1_VASPDomain_VASPDomainManager'(s: $1_VASPDomain_VASPDomainManager): bool {
    $IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''($vasp_domain_events#$1_VASPDomain_VASPDomainManager(s))
}
function {:inline} $IsEqual'$1_VASPDomain_VASPDomainManager'(s1: $1_VASPDomain_VASPDomainManager, s2: $1_VASPDomain_VASPDomainManager): bool {
    s1 == s2
}
var $1_VASPDomain_VASPDomainManager_$memory: $Memory $1_VASPDomain_VASPDomainManager;

// spec fun at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:44:5+125
function {:inline} $1_TransactionFee_$is_coin_initialized'$1_XUS_XUS'($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory: $Memory $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    $ResourceExists($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, 186537453)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:48:5+69
function {:inline} $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory: $Memory $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    $1_TransactionFee_$is_coin_initialized'$1_XUS_XUS'($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory)
}

// struct TransactionFee::TransactionFee<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:13:5+116
type {:datatype} $1_TransactionFee_TransactionFee'$1_XUS_XUS';
function {:constructor} $1_TransactionFee_TransactionFee'$1_XUS_XUS'($balance: $1_Diem_Diem'$1_XUS_XUS', $preburn: $1_Diem_Preburn'$1_XUS_XUS'): $1_TransactionFee_TransactionFee'$1_XUS_XUS';
function {:inline} $Update'$1_TransactionFee_TransactionFee'$1_XUS_XUS''_balance(s: $1_TransactionFee_TransactionFee'$1_XUS_XUS', x: $1_Diem_Diem'$1_XUS_XUS'): $1_TransactionFee_TransactionFee'$1_XUS_XUS' {
    $1_TransactionFee_TransactionFee'$1_XUS_XUS'(x, $preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_TransactionFee_TransactionFee'$1_XUS_XUS''_preburn(s: $1_TransactionFee_TransactionFee'$1_XUS_XUS', x: $1_Diem_Preburn'$1_XUS_XUS'): $1_TransactionFee_TransactionFee'$1_XUS_XUS' {
    $1_TransactionFee_TransactionFee'$1_XUS_XUS'($balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'(s), x)
}
function $IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''(s: $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    $IsValid'$1_Diem_Diem'$1_XUS_XUS''($balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'(s))
      && $IsValid'$1_Diem_Preburn'$1_XUS_XUS''($preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_TransactionFee_TransactionFee'$1_XUS_XUS''(s1: $1_TransactionFee_TransactionFee'$1_XUS_XUS', s2: $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory: $Memory $1_TransactionFee_TransactionFee'$1_XUS_XUS';

// fun TransactionFee::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:23:5+253
procedure {:inline 1} $1_TransactionFee_initialize(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t0: int;
    var $temp_0'address': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:23:5+1
    assume {:print "$at(31,865,866)"} true;
    assume {:print "$track_local(24,2,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(31,933,964)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31

    // assume Identical($t2, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    assume ($t2 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t2) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    if ($t2) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t3)) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    assume {:print "$at(31,933,964)"} true;
    assume {:print "$track_abort(24,2):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(31,974,1019)"} true;

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    assume {:print "$at(31,974,1019)"} true;

    // assume Identical($t5, Or(Or(Not(exists<Roles::RoleId>($t4)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    assume ($t5 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t4) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
L6:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t3)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1), Eq(3, $t3))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t3))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'u8'(5, $t3)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1) && $IsEqual'u8'(3, $t3))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'u8'(2, $t3)));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    assume {:print "$at(31,974,1019)"} true;
    assume {:print "$track_abort(24,2):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
L5:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45

    // TransactionFee::add_txn_fee_currency<XUS::XUS>($t0) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:29:9+37
    assume {:print "$at(31,1074,1111)"} true;
    call $1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'($t0);
    if ($abort_flag) {
        assume {:print "$at(31,1074,1111)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(24,2):", $t3} $t3 == $t3;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:5+1
    assume {:print "$at(31,1117,1118)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:5+1
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TransactionFee::add_txn_fee_currency<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:55:5+508
procedure {:inline 1} $1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: bool;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: $1_Diem_Diem'$1_XUS_XUS';
    var $t12: int;
    var $t13: $1_Diem_Preburn'$1_XUS_XUS';
    var $t14: $1_TransactionFee_TransactionFee'$1_XUS_XUS';
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:55:5+1
    assume {:print "$at(31,2088,2089)"} true;
    assume {:print "$track_local(24,0,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(31,2168,2213)"} true;

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    assume {:print "$at(31,2168,2213)"} true;

    // assume Identical($t4, Or(Or(Not(exists<Roles::RoleId>($t3)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    assume ($t4 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t3) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t4) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    if ($t4) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t3)), Eq(5, $t5)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t3) && $IsEqual'u8'(5, $t5)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1) && $IsEqual'u8'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'u8'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    assume {:print "$at(31,2168,2213)"} true;
    assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(31,2223,2259)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36

    // assume Identical($t6, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    assume ($t6 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t6) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    if ($t6) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
L7:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t5)) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'u8'(5, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    assume {:print "$at(31,2223,2259)"} true;
    assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
L6:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36

    // $t7 := TransactionFee::is_coin_initialized<#0>() on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:59:14+31
    assume {:print "$at(31,2290,2321)"} true;
    call $t7 := $1_TransactionFee_is_coin_initialized'$1_XUS_XUS'();
    if ($abort_flag) {
        assume {:print "$at(31,2290,2321)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t8 := !($t7) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:59:13+1
    call $t8 := $Not($t7);

    // $t9 := 0 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:39+16
    assume {:print "$at(31,2361,2377)"} true;
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // nop at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:13+43
    // >> opaque call: $t6 := Errors::already_published($t5)

    // $t10 := opaque begin: Errors::already_published($t9) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:13+43

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:13+43
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 6) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:13+43
    assume $IsEqual'u64'($t10, 6);

    // $t10 := opaque end: Errors::already_published($t9) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:13+43

    // trace_local[tmp#$2]($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    assume {:print "$at(31,2269,2388)"} true;
    assume {:print "$track_local(24,0,2):", $t10} $t10 == $t10;

    // trace_local[tmp#$1]($t8) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    assume {:print "$track_local(24,0,1):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    assume {:print "$at(31,2269,2388)"} true;
    assume {:print "$track_abort(24,0):", $t10} $t10 == $t10;

    // $t5 := move($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    $t5 := $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:63:13+10
    assume {:print "$at(31,2419,2429)"} true;
L0:

    // $t11 := Diem::zero<#0>() on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:65:26+12
    assume {:print "$at(31,2495,2507)"} true;
    call $t11 := $1_Diem_zero'$1_XUS_XUS'();
    if ($abort_flag) {
        assume {:print "$at(31,2495,2507)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // $t13 := Diem::create_preburn<#0>($t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:66:26+32
    assume {:print "$at(31,2534,2566)"} true;
    call $t13 := $1_Diem_create_preburn'$1_XUS_XUS'($t0);
    if ($abort_flag) {
        assume {:print "$at(31,2534,2566)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t14 := pack TransactionFee::TransactionFee<#0>($t11, $t13) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:64:13+137
    assume {:print "$at(31,2443,2580)"} true;
    $t14 := $1_TransactionFee_TransactionFee'$1_XUS_XUS'($t11, $t13);

    // move_to<TransactionFee::TransactionFee<#0>>($t14, $t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:62:9+7
    assume {:print "$at(31,2398,2405)"} true;
    if ($ResourceExists($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory := $ResourceUpdate($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $t0, $t14);
    }
    if ($abort_flag) {
        assume {:print "$at(31,2398,2405)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:69:5+1
    assume {:print "$at(31,2595,2596)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:69:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:69:5+1
L3:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:69:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TransactionFee::is_coin_initialized<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:44:5+125
procedure {:inline 1} $1_TransactionFee_is_coin_initialized'$1_XUS_XUS'() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := 0xb1e55ed at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:45:42+19
    assume {:print "$at(31,1751,1770)"} true;
    $t0 := 186537453;
    assume $IsValid'address'($t0);

    // $t1 := exists<TransactionFee::TransactionFee<#0>>($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:45:9+6
    $t1 := $ResourceExists($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:45:9+53
    assume {:print "$track_return(24,3,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:46:5+1
    assume {:print "$at(31,1776,1777)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:46:5+1
    $ret0 := $t1;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:120:10+85
function {:inline} $1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential, addr: int): bool {
    $ResourceExists($1_DualAttestation_Credential_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:544:9+78
function {:inline} $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory: $Memory $1_DualAttestation_Limit): bool {
    $ResourceExists($1_DualAttestation_Limit_$memory, 173345816)
}

// struct DualAttestation::BaseUrlRotationEvent at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:56:5+257
type {:datatype} $1_DualAttestation_BaseUrlRotationEvent;
function {:constructor} $1_DualAttestation_BaseUrlRotationEvent($new_base_url: Vec (int), $time_rotated_seconds: int): $1_DualAttestation_BaseUrlRotationEvent;
function {:inline} $Update'$1_DualAttestation_BaseUrlRotationEvent'_new_base_url(s: $1_DualAttestation_BaseUrlRotationEvent, x: Vec (int)): $1_DualAttestation_BaseUrlRotationEvent {
    $1_DualAttestation_BaseUrlRotationEvent(x, $time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent(s))
}
function {:inline} $Update'$1_DualAttestation_BaseUrlRotationEvent'_time_rotated_seconds(s: $1_DualAttestation_BaseUrlRotationEvent, x: int): $1_DualAttestation_BaseUrlRotationEvent {
    $1_DualAttestation_BaseUrlRotationEvent($new_base_url#$1_DualAttestation_BaseUrlRotationEvent(s), x)
}
function $IsValid'$1_DualAttestation_BaseUrlRotationEvent'(s: $1_DualAttestation_BaseUrlRotationEvent): bool {
    $IsValid'vec'u8''($new_base_url#$1_DualAttestation_BaseUrlRotationEvent(s))
      && $IsValid'u64'($time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent(s))
}
function {:inline} $IsEqual'$1_DualAttestation_BaseUrlRotationEvent'(s1: $1_DualAttestation_BaseUrlRotationEvent, s2: $1_DualAttestation_BaseUrlRotationEvent): bool {
    s1 == s2
}

// struct DualAttestation::ComplianceKeyRotationEvent at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:48:5+303
type {:datatype} $1_DualAttestation_ComplianceKeyRotationEvent;
function {:constructor} $1_DualAttestation_ComplianceKeyRotationEvent($new_compliance_public_key: Vec (int), $time_rotated_seconds: int): $1_DualAttestation_ComplianceKeyRotationEvent;
function {:inline} $Update'$1_DualAttestation_ComplianceKeyRotationEvent'_new_compliance_public_key(s: $1_DualAttestation_ComplianceKeyRotationEvent, x: Vec (int)): $1_DualAttestation_ComplianceKeyRotationEvent {
    $1_DualAttestation_ComplianceKeyRotationEvent(x, $time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent(s))
}
function {:inline} $Update'$1_DualAttestation_ComplianceKeyRotationEvent'_time_rotated_seconds(s: $1_DualAttestation_ComplianceKeyRotationEvent, x: int): $1_DualAttestation_ComplianceKeyRotationEvent {
    $1_DualAttestation_ComplianceKeyRotationEvent($new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent(s), x)
}
function $IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'(s: $1_DualAttestation_ComplianceKeyRotationEvent): bool {
    $IsValid'vec'u8''($new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent(s))
      && $IsValid'u64'($time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent(s))
}
function {:inline} $IsEqual'$1_DualAttestation_ComplianceKeyRotationEvent'(s1: $1_DualAttestation_ComplianceKeyRotationEvent, s2: $1_DualAttestation_ComplianceKeyRotationEvent): bool {
    s1 == s2
}

// struct DualAttestation::Credential at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:18:5+1467
type {:datatype} $1_DualAttestation_Credential;
function {:constructor} $1_DualAttestation_Credential($human_name: Vec (int), $base_url: Vec (int), $compliance_public_key: Vec (int), $expiration_date: int, $compliance_key_rotation_events: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent', $base_url_rotation_events: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent'): $1_DualAttestation_Credential;
function {:inline} $Update'$1_DualAttestation_Credential'_human_name(s: $1_DualAttestation_Credential, x: Vec (int)): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential(x, $base_url#$1_DualAttestation_Credential(s), $compliance_public_key#$1_DualAttestation_Credential(s), $expiration_date#$1_DualAttestation_Credential(s), $compliance_key_rotation_events#$1_DualAttestation_Credential(s), $base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $Update'$1_DualAttestation_Credential'_base_url(s: $1_DualAttestation_Credential, x: Vec (int)): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential($human_name#$1_DualAttestation_Credential(s), x, $compliance_public_key#$1_DualAttestation_Credential(s), $expiration_date#$1_DualAttestation_Credential(s), $compliance_key_rotation_events#$1_DualAttestation_Credential(s), $base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $Update'$1_DualAttestation_Credential'_compliance_public_key(s: $1_DualAttestation_Credential, x: Vec (int)): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential($human_name#$1_DualAttestation_Credential(s), $base_url#$1_DualAttestation_Credential(s), x, $expiration_date#$1_DualAttestation_Credential(s), $compliance_key_rotation_events#$1_DualAttestation_Credential(s), $base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $Update'$1_DualAttestation_Credential'_expiration_date(s: $1_DualAttestation_Credential, x: int): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential($human_name#$1_DualAttestation_Credential(s), $base_url#$1_DualAttestation_Credential(s), $compliance_public_key#$1_DualAttestation_Credential(s), x, $compliance_key_rotation_events#$1_DualAttestation_Credential(s), $base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $Update'$1_DualAttestation_Credential'_compliance_key_rotation_events(s: $1_DualAttestation_Credential, x: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent'): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential($human_name#$1_DualAttestation_Credential(s), $base_url#$1_DualAttestation_Credential(s), $compliance_public_key#$1_DualAttestation_Credential(s), $expiration_date#$1_DualAttestation_Credential(s), x, $base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $Update'$1_DualAttestation_Credential'_base_url_rotation_events(s: $1_DualAttestation_Credential, x: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent'): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential($human_name#$1_DualAttestation_Credential(s), $base_url#$1_DualAttestation_Credential(s), $compliance_public_key#$1_DualAttestation_Credential(s), $expiration_date#$1_DualAttestation_Credential(s), $compliance_key_rotation_events#$1_DualAttestation_Credential(s), x)
}
function $IsValid'$1_DualAttestation_Credential'(s: $1_DualAttestation_Credential): bool {
    $IsValid'vec'u8''($human_name#$1_DualAttestation_Credential(s))
      && $IsValid'vec'u8''($base_url#$1_DualAttestation_Credential(s))
      && $IsValid'vec'u8''($compliance_public_key#$1_DualAttestation_Credential(s))
      && $IsValid'u64'($expiration_date#$1_DualAttestation_Credential(s))
      && $IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''($compliance_key_rotation_events#$1_DualAttestation_Credential(s))
      && $IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''($base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $IsEqual'$1_DualAttestation_Credential'(s1: $1_DualAttestation_Credential, s2: $1_DualAttestation_Credential): bool {
    s1 == s2
}
var $1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential;

// struct DualAttestation::Limit at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:43:5+58
type {:datatype} $1_DualAttestation_Limit;
function {:constructor} $1_DualAttestation_Limit($micro_xdx_limit: int): $1_DualAttestation_Limit;
function {:inline} $Update'$1_DualAttestation_Limit'_micro_xdx_limit(s: $1_DualAttestation_Limit, x: int): $1_DualAttestation_Limit {
    $1_DualAttestation_Limit(x)
}
function $IsValid'$1_DualAttestation_Limit'(s: $1_DualAttestation_Limit): bool {
    $IsValid'u64'($micro_xdx_limit#$1_DualAttestation_Limit(s))
}
function {:inline} $IsEqual'$1_DualAttestation_Limit'(s1: $1_DualAttestation_Limit, s2: $1_DualAttestation_Limit): bool {
    s1 == s2
}
var $1_DualAttestation_Limit_$memory: $Memory $1_DualAttestation_Limit;

// fun DualAttestation::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:482:5+574
procedure {:inline 1} $1_DualAttestation_initialize(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: bool;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t21: bool;
    var $t22: int;
    var $t23: int;
    var $t24: int;
    var $t25: $1_DualAttestation_Limit;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u128': int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t6, Mul(1000, Diem::spec_scaling_factor<XDX::XDX>())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:499:9+86
    assume {:print "$at(21,22239,22325)"} true;
    assume ($t6 == (1000 * $1_Diem_spec_scaling_factor'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:482:5+1
    assume {:print "$at(21,21435,21436)"} true;
    assume {:print "$track_local(25,10,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(21,21488,21519)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:9+31

    // assume Identical($t7, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:9+31
    assume ($t7 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t7) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:9+31
    if ($t7) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:9+31
L7:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t8)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:9+31
    assume {:print "$at(21,21488,21519)"} true;
    assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:9+31
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:9+31
L6:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+43
    // >> opaque call: CoreAddresses::assert_diem_root($t0)
    assume {:print "$at(21,21529,21572)"} true;

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+43

    // assume Identical($t9, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+43
    assume ($t9 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t9) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+43
    if ($t9) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+43
L9:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t8)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+43
    assume {:print "$at(21,21529,21572)"} true;
    assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+43
    goto L5;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+43
L8:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+43

    // $t10 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:31+9
    assume {:print "$at(21,21631,21640)"} true;
    $t10 := 173345816;
    assume $IsValid'address'($t10);

    // $t11 := exists<DualAttestation::Limit>($t10) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:17+6
    $t11 := $ResourceExists($1_DualAttestation_Limit_$memory, $t10);

    // $t12 := !($t11) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:16+1
    call $t12 := $Not($t11);

    // $t13 := 1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:69+6
    $t13 := 1;
    assume $IsValid'u64'($t13);

    // nop at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:43+33
    // >> opaque call: $t10 := Errors::already_published($t9)

    // $t14 := opaque begin: Errors::already_published($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:43+33

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:43+33
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 6) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:43+33
    assume $IsEqual'u64'($t14, 6);

    // $t14 := opaque end: Errors::already_published($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:43+33

    // trace_local[tmp#$3]($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+68
    assume {:print "$track_local(25,10,3):", $t14} $t14 == $t14;

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+68
    assume {:print "$track_local(25,10,2):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+68
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+68
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+68

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+68
    assume {:print "$at(21,21609,21677)"} true;
    assume {:print "$track_abort(25,10):", $t14} $t14 == $t14;

    // $t8 := move($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+68
    $t8 := $t14;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+68
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:30+30
    assume {:print "$at(21,21708,21738)"} true;
L0:

    // $t15 := 1000 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:30+30
    $t15 := 1000;
    assume $IsValid'u64'($t15);

    // $t16 := (u128)($t15) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:29+40
    call $t16 := $CastU128($t15);
    if ($abort_flag) {
        assume {:print "$at(21,21707,21747)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t17 := Diem::scaling_factor<XDX::XDX>() on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:73+27
    call $t17 := $1_Diem_scaling_factor'$1_XDX_XDX'();
    if ($abort_flag) {
        assume {:print "$at(21,21751,21778)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t18 := (u128)($t17) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:72+37
    call $t18 := $CastU128($t17);
    if ($abort_flag) {
        assume {:print "$at(21,21750,21787)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t19 := *($t16, $t18) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:70+1
    call $t19 := $MulU128($t16, $t18);
    if ($abort_flag) {
        assume {:print "$at(21,21748,21749)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // trace_local[initial_limit]($t19) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:13+13
    assume {:print "$track_local(25,10,1):", $t19} $t19 == $t19;

    // $t20 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:33+7
    assume {:print "$at(21,21821,21828)"} true;
    $t20 := 18446744073709551615;
    assume $IsValid'u128'($t20);

    // $t21 := <=($t19, $t20) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:30+2
    call $t21 := $Le($t19, $t20);

    // $t22 := 1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:65+6
    $t22 := 1;
    assume $IsValid'u64'($t22);

    // nop at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:42+30
    // >> opaque call: $t19 := Errors::limit_exceeded($t18)

    // $t23 := opaque begin: Errors::limit_exceeded($t22) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:42+30

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:42+30
    assume $IsValid'u64'($t23);

    // assume Eq<u64>($t23, 8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:42+30
    assume $IsEqual'u64'($t23, 8);

    // $t23 := opaque end: Errors::limit_exceeded($t22) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:42+30

    // trace_local[tmp#$5]($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+64
    assume {:print "$track_local(25,10,5):", $t23} $t23 == $t23;

    // trace_local[tmp#$4]($t21) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+64
    assume {:print "$track_local(25,10,4):", $t21} $t21 == $t21;

    // if ($t21) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+64
    if ($t21) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+64
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+64

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+64
    assume {:print "$at(21,21797,21861)"} true;
    assume {:print "$track_abort(25,10):", $t23} $t23 == $t23;

    // $t8 := move($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+64
    $t8 := $t23;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+64
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:13+10
    assume {:print "$at(21,21892,21902)"} true;
L2:

    // $t24 := (u64)($t19) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:491:34+22
    assume {:print "$at(21,21957,21979)"} true;
    call $t24 := $CastU64($t19);
    if ($abort_flag) {
        assume {:print "$at(21,21957,21979)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t25 := pack DualAttestation::Limit($t24) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:490:13+77
    assume {:print "$at(21,21916,21993)"} true;
    $t25 := $1_DualAttestation_Limit($t24);

    // move_to<DualAttestation::Limit>($t25, $t0) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:9+7
    assume {:print "$at(21,21871,21878)"} true;
    if ($ResourceExists($1_DualAttestation_Limit_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_DualAttestation_Limit_$memory := $ResourceUpdate($1_DualAttestation_Limit_$memory, $t0, $t25);
    }
    if ($abort_flag) {
        assume {:print "$at(21,21871,21878)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:494:5+1
    assume {:print "$at(21,22008,22009)"} true;
L4:

    // return () at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:494:5+1
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:494:5+1
L5:

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:494:5+1
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:154:5+86
function {:inline} $1_DiemTransactionPublishingOption_$transactions_halted($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory: $Memory $1_DiemTransactionPublishingOption_HaltAllTransactions): bool {
    $ResourceExists($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, 173345816)
}

// struct DiemTransactionPublishingOption::DiemTransactionPublishingOption at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:24:5+381
type {:datatype} $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
function {:constructor} $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($script_allow_list: Vec (Vec (int)), $module_publishing_allowed: bool): $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
function {:inline} $Update'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_script_allow_list(s: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption, x: Vec (Vec (int))): $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption {
    $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(x, $module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s))
}
function {:inline} $Update'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_module_publishing_allowed(s: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption, x: bool): $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption {
    $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s), x)
}
function $IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption): bool {
    $IsValid'vec'vec'u8'''($script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s))
      && $IsValid'bool'($module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s))
}
function {:inline} $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s1: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption, s2: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption): bool {
    s1 == s2
}

// struct DiemTransactionPublishingOption::HaltAllTransactions at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:33:5+37
type {:datatype} $1_DiemTransactionPublishingOption_HaltAllTransactions;
function {:constructor} $1_DiemTransactionPublishingOption_HaltAllTransactions($dummy_field: bool): $1_DiemTransactionPublishingOption_HaltAllTransactions;
function {:inline} $Update'$1_DiemTransactionPublishingOption_HaltAllTransactions'_dummy_field(s: $1_DiemTransactionPublishingOption_HaltAllTransactions, x: bool): $1_DiemTransactionPublishingOption_HaltAllTransactions {
    $1_DiemTransactionPublishingOption_HaltAllTransactions(x)
}
function $IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'(s: $1_DiemTransactionPublishingOption_HaltAllTransactions): bool {
    $IsValid'bool'($dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions(s))
}
function {:inline} $IsEqual'$1_DiemTransactionPublishingOption_HaltAllTransactions'(s1: $1_DiemTransactionPublishingOption_HaltAllTransactions, s2: $1_DiemTransactionPublishingOption_HaltAllTransactions): bool {
    s1 == s2
}
var $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory: $Memory $1_DiemTransactionPublishingOption_HaltAllTransactions;

// fun DiemTransactionPublishingOption::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
procedure {:inline 1} $1_DiemTransactionPublishingOption_initialize(_$t0: int, _$t1: Vec (Vec (int)), _$t2: bool) returns ()
{
    // declare local variables
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t10: int;
    var $t11: bool;
    var $t0: int;
    var $t1: Vec (Vec (int));
    var $t2: bool;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'': $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'': $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    var $1_DiemConfig_Configuration_$memory#184: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // bytecode translation starts here
    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    assume {:print "$at(18,1560,1561)"} true;
    assume {:print "$track_local(26,1,0):", $t0} $t0 == $t0;

    // trace_local[script_allow_list]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    assume {:print "$track_local(26,1,1):", $t1} $t1 == $t1;

    // trace_local[module_publishing_allowed]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    assume {:print "$track_local(26,1,2):", $t2} $t2 == $t2;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(18,1716,1747)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31

    // assume Identical($t5, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    assume ($t5 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t6)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t6));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    assume {:print "$at(18,1716,1747)"} true;
    assume {:print "$track_abort(26,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(18,1757,1792)"} true;

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume {:print "$at(18,1757,1792)"} true;

    // assume Identical($t8, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t7))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t7)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume ($t8 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t7)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t7)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t8) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    if ($t8) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6)), And(Not(exists<Roles::RoleId>($t7)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t7)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t6)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t7) && $IsEqual'u8'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t7)), 0) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume {:print "$at(18,1757,1792)"} true;
    assume {:print "$track_abort(26,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35

    // $t9 := pack DiemTransactionPublishingOption::DiemTransactionPublishingOption($t1, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:45:13+108
    assume {:print "$at(18,1871,1979)"} true;
    $t9 := $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($t1, $t2);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    // >> opaque call: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t3)
    assume {:print "$at(18,1803,1989)"} true;

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume {:print "$at(18,1803,1989)"} true;

    // assume Identical($t11, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t10))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume ($t11 == (((($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t10)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t11) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    if ($t11) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t10)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume (((($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t10) && $IsEqual'u8'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 0) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume {:print "$at(18,1803,1989)"} true;
    assume {:print "$track_abort(26,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
L7:

    // @184 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    $1_DiemConfig_Configuration_$memory#184 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'';
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816);
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816, $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816);
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory);

    // assume Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory), $t9);

    // assume Eq<bool>(DiemConfig::spec_has_config[@184](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#184), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:49:5+1
    assume {:print "$at(18,1995,1996)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:49:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:49:5+1
L2:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:49:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun DiemTransactionPublishingOption::initialize [verification] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
procedure {:timeLimit 40} $1_DiemTransactionPublishingOption_initialize$verify(_$t0: int, _$t1: Vec (Vec (int)), _$t2: bool) returns ()
{
    // declare local variables
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t10: int;
    var $t11: bool;
    var $t0: int;
    var $t1: Vec (Vec (int));
    var $t2: bool;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'': $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'': $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    var $1_Roles_RoleId_$memory#173: $Memory $1_Roles_RoleId;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#174: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#175: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#176: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $1_DiemConfig_Configuration_$memory#177: $Memory $1_DiemConfig_Configuration;
    var $1_DiemConfig_Configuration_$memory#178: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:169:9+72
    assume {:print "$at(18,1560,1996)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:409:9+62
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+121
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
    assume $IsValid'vec'vec'u8'''($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
    assume $IsValid'bool'($t2);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // @174 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    assume {:print "$at(18,1560,1561)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#174 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @173 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    $1_Roles_RoleId_$memory#173 := $1_Roles_RoleId_$memory;

    // @177 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    $1_DiemConfig_Configuration_$memory#177 := $1_DiemConfig_Configuration_$memory;

    // @175 := save_mem(DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#175 := $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // @176 := save_mem(DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#176 := $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    assume {:print "$track_local(26,1,0):", $t0} $t0 == $t0;

    // trace_local[script_allow_list]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    assume {:print "$track_local(26,1,1):", $t1} $t1 == $t1;

    // trace_local[module_publishing_allowed]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    assume {:print "$track_local(26,1,2):", $t2} $t2 == $t2;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(18,1716,1747)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31

    // assume Identical($t5, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    assume ($t5 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t6)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t6));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    assume {:print "$at(18,1716,1747)"} true;
    assume {:print "$track_abort(26,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(18,1757,1792)"} true;

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume {:print "$at(18,1757,1792)"} true;

    // assume Identical($t8, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t7))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t7)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume ($t8 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t7)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t7)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t8) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    if ($t8) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6)), And(Not(exists<Roles::RoleId>($t7)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t7)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t6)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t7) && $IsEqual'u8'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t7)), 0) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume {:print "$at(18,1757,1792)"} true;
    assume {:print "$track_abort(26,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35

    // $t9 := pack DiemTransactionPublishingOption::DiemTransactionPublishingOption($t1, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:45:13+108
    assume {:print "$at(18,1871,1979)"} true;
    $t9 := $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($t1, $t2);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    // >> opaque call: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t3)
    assume {:print "$at(18,1803,1989)"} true;

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume {:print "$at(18,1803,1989)"} true;

    // assume Identical($t11, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t10))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume ($t11 == (((($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t10)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t11) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    if ($t11) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t10)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume (((($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t10) && $IsEqual'u8'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 0) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume {:print "$at(18,1803,1989)"} true;
    assume {:print "$track_abort(26,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
L7:

    // @178 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    $1_DiemConfig_Configuration_$memory#178 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'';
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816);
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816, $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816);
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory);

    // assume Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory), $t9);

    // assume Eq<bool>(DiemConfig::spec_has_config[@178](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#178), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:49:5+1
    assume {:print "$at(18,1995,1996)"} true;
L1:

    // assert Not(Not(exists[@173]<Roles::RoleId>($t3))) at /home/ying/diem/language/diem-framework/modules/Roles.move:526:9+59
    assume {:print "$at(26,23574,23633)"} true;
    assert {:msg "assert_failed(26,23574,23633): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#173, $t3);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@173]<Roles::RoleId>($t3)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+87
    assume {:print "$at(26,23642,23729)"} true;
    assert {:msg "assert_failed(26,23642,23729): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#173, $t3)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:41:9+86
    assume {:print "$at(8,1561,1647)"} true;
    assert {:msg "assert_failed(8,1561,1647): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816);

    // assert Not(Not(DiemTimestamp::$is_genesis[@174]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:140:9+51
    assume {:print "$at(17,5622,5673)"} true;
    assert {:msg "assert_failed(17,5622,5673): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#174);

    // assert Not(DiemConfig::spec_is_published[@175]<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:257:9+38
    assume {:print "$at(13,10749,10787)"} true;
    assert {:msg "assert_failed(13,10749,10787): function does not abort under this condition"}
      !$1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#175);

    // assert Not(exists[@176]<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:258:9+86
    assume {:print "$at(13,10796,10882)"} true;
    assert {:msg "assert_failed(13,10796,10882): function does not abort under this condition"}
      !$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#176, $1_Signer_spec_address_of($t0));

    // assert Not(Not(exists[@173]<Roles::RoleId>($t4))) at /home/ying/diem/language/diem-framework/modules/Roles.move:526:9+59
    assume {:print "$at(26,23574,23633)"} true;
    assert {:msg "assert_failed(26,23574,23633): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#173, $t4);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@173]<Roles::RoleId>($t4)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+87
    assume {:print "$at(26,23642,23729)"} true;
    assert {:msg "assert_failed(26,23642,23729): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#173, $t4)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:41:9+86
    assume {:print "$at(8,1561,1647)"} true;
    assert {:msg "assert_failed(8,1561,1647): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816);

    // assert exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:264:9+84
    assume {:print "$at(13,11036,11120)"} true;
    assert {:msg "assert_failed(13,11036,11120): post-condition does not hold"}
      $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0));

    // assert DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:142:9+36
    assume {:print "$at(13,5647,5683)"} true;
    assert {:msg "assert_failed(13,5647,5683): post-condition does not hold"}
      $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory);

    // assert Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), pack DiemTransactionPublishingOption::DiemTransactionPublishingOption($t1, $t2)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:143:9+33
    assume {:print "$at(13,5692,5725)"} true;
    assert {:msg "assert_failed(13,5692,5725): post-condition does not hold"}
      $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory), $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($t1, $t2));

    // assert Eq<bool>(DiemConfig::spec_has_config[@177](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:144:9+52
    assume {:print "$at(13,5734,5786)"} true;
    assert {:msg "assert_failed(13,5734,5786): post-condition does not hold"}
      $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#177), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assert Implies(DiemConfig::spec_is_published[@175]<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), Eq<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18), global[@175]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    assume {:print "$at(18,7285,7529)"} true;
    assert {:msg "assert_failed(18,7285,7529): post-condition does not hold"}
      ($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#175) ==> $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816), $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#175, 173345816)));

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:49:5+1
    assume {:print "$at(18,1995,1996)"} true;
L2:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Not(exists[@173]<Roles::RoleId>($t3)), Neq<u64>(select Roles::RoleId.role_id(global[@173]<Roles::RoleId>($t3)), 0)), Neq<address>(Signer::spec_address_of[]($t0), a550c18)), Not(DiemTimestamp::$is_genesis[@174]())), DiemConfig::spec_is_published[@175]<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()), exists[@176]<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of[]($t0))), Not(exists[@173]<Roles::RoleId>($t4))), Neq<u64>(select Roles::RoleId.role_id(global[@173]<Roles::RoleId>($t4)), 0)), Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:50:5+536
    assume {:print "$at(18,2001,2537)"} true;
    assert {:msg "assert_failed(18,2001,2537): abort not covered by any of the `aborts_if` clauses"}
      ((((((((!$ResourceExists($1_Roles_RoleId_$memory#173, $t3) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#173, $t3)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)) || !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#174)) || $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#175)) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#176, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory#173, $t4)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#173, $t4)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists[@173]<Roles::RoleId>($t3)), Eq(5, $t6)), And(Neq<u64>(select Roles::RoleId.role_id(global[@173]<Roles::RoleId>($t3)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of[]($t0), a550c18), Eq(2, $t6))), And(Not(DiemTimestamp::$is_genesis[@174]()), Eq(1, $t6))), DiemConfig::spec_is_published[@175]<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()), exists[@176]<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of[]($t0))), And(Not(exists[@173]<Roles::RoleId>($t4)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global[@173]<Roles::RoleId>($t4)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of[]($t0), a550c18), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:50:5+536
    assert {:msg "assert_failed(18,2001,2537): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((((!$ResourceExists($1_Roles_RoleId_$memory#173, $t3) && $IsEqual'u8'(5, $t6)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#173, $t3)), 0) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t6))) || (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#174) && $IsEqual'u8'(1, $t6))) || $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#175)) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#176, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory#173, $t4) && $IsEqual'u8'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#173, $t4)), 0) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t6)));

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:50:5+536
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun DiemTransactionPublishingOption::halt_all_transactions [verification] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:132:5+323
procedure {:timeLimit 40} $1_DiemTransactionPublishingOption_halt_all_transactions$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: bool;
    var $t12: $1_DiemTransactionPublishingOption_HaltAllTransactions;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#111: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:132:5+323
    assume {:print "$at(18,5834,6157)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:132:5+323
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemTransactionPublishingOption::HaltAllTransactions>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:132:5+323
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $a_0);
    ($IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'($rsc))));

    // @111 := save_mem(DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:132:5+1
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#111 := $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:132:5+1
    assume {:print "$track_local(26,0,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:133:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(18,5898,5933)"} true;

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:133:9+35
    assume {:print "$at(18,5898,5933)"} true;

    // assume Identical($t4, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t3))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:133:9+35
    assume ($t4 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t3)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t4) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:133:9+35
    if ($t4) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:133:9+35
L5:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5)), And(Not(exists<Roles::RoleId>($t3)), Eq(5, $t5))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 0), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:133:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t5)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t3) && $IsEqual'u8'(5, $t5))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 0) && $IsEqual'u8'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:133:9+35
    assume {:print "$at(18,5898,5933)"} true;
    assume {:print "$track_abort(26,0):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:133:9+35
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:133:9+35
L4:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:133:9+35

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:135:42+30
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(18,5992,6022)"} true;

    // $t6 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:135:42+30

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:135:42+30
    assume $IsValid'address'($t6);

    // assume Eq<address>($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:135:42+30
    assume $IsEqual'address'($t6, $1_Signer_spec_address_of($t0));

    // $t6 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:135:42+30

    // $t7 := exists<DiemTransactionPublishingOption::HaltAllTransactions>($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:135:14+6
    $t7 := $ResourceExists($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $t6);

    // $t8 := !($t7) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:135:13+1
    call $t8 := $Not($t7);

    // $t9 := 2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:136:39+22
    assume {:print "$at(18,6063,6085)"} true;
    $t9 := 2;
    assume $IsValid'u64'($t9);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:136:13+49
    // >> opaque call: $t7 := Errors::already_published($t6)

    // $t10 := opaque begin: Errors::already_published($t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:136:13+49

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:136:13+49
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:136:13+49
    assume $IsEqual'u64'($t10, 6);

    // $t10 := opaque end: Errors::already_published($t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:136:13+49

    // trace_local[tmp#$2]($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:134:9+154
    assume {:print "$at(18,5943,6097)"} true;
    assume {:print "$track_local(26,0,2):", $t10} $t10 == $t10;

    // trace_local[tmp#$1]($t8) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:134:9+154
    assume {:print "$track_local(26,0,1):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:134:9+154
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:134:9+154
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:134:9+154

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:134:9+154
    assume {:print "$at(18,5943,6097)"} true;
    assume {:print "$track_abort(26,0):", $t10} $t10 == $t10;

    // $t5 := move($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:134:9+154
    $t5 := $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:134:9+154
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:138:17+10
    assume {:print "$at(18,6115,6125)"} true;
L0:

    // $t11 := false at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:138:29+22
    $t11 := false;
    assume $IsValid'bool'($t11);

    // $t12 := pack DiemTransactionPublishingOption::HaltAllTransactions($t11) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:138:29+22
    $t12 := $1_DiemTransactionPublishingOption_HaltAllTransactions($t11);

    // move_to<DiemTransactionPublishingOption::HaltAllTransactions>($t12, $t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:138:9+7
    if ($ResourceExists($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory := $ResourceUpdate($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $t0, $t12);
    }
    if ($abort_flag) {
        assume {:print "$at(18,6107,6114)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(26,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:139:5+1
    assume {:print "$at(18,6156,6157)"} true;
L2:

    // assert Implies(DiemConfig::spec_is_published[@111]<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), Eq<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18), global[@111]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    assume {:print "$at(18,7285,7529)"} true;
    assert {:msg "assert_failed(18,7285,7529): post-condition does not hold"}
      ($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#111) ==> $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816), $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#111, 173345816)));

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:139:5+1
    assume {:print "$at(18,6156,6157)"} true;
L3:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:139:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun DiemTransactionPublishingOption::is_module_allowed [verification] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:89:5+229
procedure {:timeLimit 40} $1_DiemTransactionPublishingOption_is_module_allowed$verify(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t2: bool;
    var $t3: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: bool;
    var $t8: bool;
    var $t0: int;
    var $temp_0'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption': $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#112: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:89:5+229
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+121
    assume {:print "$at(18,3856,4085)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:89:5+229
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:89:5+229
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:89:5+229
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // @112 := save_mem(DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:89:5+1
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#112 := $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:89:5+1
    assume {:print "$track_local(26,2,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50
    // >> opaque call: $t3 := DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()
    assume {:print "$at(18,3940,3990)"} true;

    // $t3 := opaque begin: DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50

    // assume Identical($t4, Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50
    assume ($t4 == !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816));

    // if ($t4) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50
    if ($t4) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50
L7:

    // assume And(Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t5)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50
    assume (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816) && $IsEqual'u8'(5, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50
    assume {:print "$at(18,3940,3990)"} true;
    assume {:print "$track_abort(26,2):", $t5} $t5 == $t5;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50
L6:

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50
    assume $IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($t3);

    // assume Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t3, DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50
    assume $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($t3, $1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // $t3 := opaque end: DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:30+50

    // trace_local[publish_option]($t3) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:90:13+14
    assume {:print "$track_local(26,2,1):", $t3} $t3 == $t3;

    // $t6 := get_field<DiemTransactionPublishingOption::DiemTransactionPublishingOption>.module_publishing_allowed($t3) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+40
    assume {:print "$at(18,4001,4041)"} true;
    $t6 := $module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($t3);

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
L0:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78

    // $t7 := true at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
    $t7 := true;
    assume $IsValid'bool'($t7);

    // $t2 := $t7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
    $t2 := $t7;

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
    assume {:print "$track_local(26,2,2):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:79+7
L2:

    // $t8 := Roles::has_diem_root_role($t0) on_abort goto L5 with $t5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:53+34
    call $t8 := $1_Roles_has_diem_root_role($t0);
    if ($abort_flag) {
        assume {:print "$at(18,4045,4079)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(26,2):", $t5} $t5 == $t5;
        goto L5;
    }

    // $t2 := $t8 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
    $t2 := $t8;

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
    assume {:print "$track_local(26,2,2):", $t8} $t8 == $t8;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
L3:

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:92:9+78
    assume {:print "$track_return(26,2,0):", $t2} $t2 == $t2;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:93:5+1
    assume {:print "$at(18,4084,4085)"} true;
L4:

    // assert Not(Not(exists[@112]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:101:9+76
    assume {:print "$at(13,3859,3935)"} true;
    assert {:msg "assert_failed(13,3859,3935): function does not abort under this condition"}
      !!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#112, 173345816);

    // assert Implies(DiemConfig::spec_is_published[@112]<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), Eq<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18), global[@112]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    assume {:print "$at(18,7285,7529)"} true;
    assert {:msg "assert_failed(18,7285,7529): post-condition does not hold"}
      ($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#112) ==> $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816), $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#112, 173345816)));

    // return $t2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    $ret0 := $t2;
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:93:5+1
    assume {:print "$at(18,4084,4085)"} true;
L5:

    // assert Not(exists[@112]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:94:5+114
    assume {:print "$at(18,4090,4204)"} true;
    assert {:msg "assert_failed(18,4090,4204): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#112, 173345816);

    // assert And(Not(exists[@112]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t5)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:94:5+114
    assert {:msg "assert_failed(18,4090,4204): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#112, 173345816) && $IsEqual'u8'(5, $t5));

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:94:5+114
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun DiemTransactionPublishingOption::is_script_allowed [verification] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+789
procedure {:timeLimit 40} $1_DiemTransactionPublishingOption_is_script_allowed$verify(_$t0: int, _$t1: Vec (int)) returns ($ret0: bool)
{
    // declare local variables
    var $t2: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t3: bool;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: bool;
    var $t8: bool;
    var $t9: bool;
    var $t10: bool;
    var $t11: bool;
    var $t12: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t13: bool;
    var $t14: Vec (Vec (int));
    var $t15: bool;
    var $t16: bool;
    var $t17: Vec (Vec (int));
    var $t18: bool;
    var $t0: int;
    var $t1: Vec (int);
    var $temp_0'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption': $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'vec'u8'': Vec (int);
    var $1_Roles_RoleId_$memory#125: $Memory $1_Roles_RoleId;
    var $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory#126: $Memory $1_DiemTransactionPublishingOption_HaltAllTransactions;
    var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#127: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+789
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+121
    assume {:print "$at(18,2598,3387)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+789
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+789
    assume $IsValid'vec'u8''($t1);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+789
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+789
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemTransactionPublishingOption::HaltAllTransactions>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+789
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $a_0);
    ($IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'($rsc))));

    // @125 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+1
    $1_Roles_RoleId_$memory#125 := $1_Roles_RoleId_$memory;

    // @127 := save_mem(DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+1
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#127 := $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // @126 := save_mem(DiemTransactionPublishingOption::HaltAllTransactions) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+1
    $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory#126 := $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+1
    assume {:print "$track_local(26,3,0):", $t0} $t0 == $t0;

    // trace_local[hash]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:63:5+1
    assume {:print "$track_local(26,3,1):", $t1} $t1 == $t1;

    // $t4 := Roles::has_diem_root_role($t0) on_abort goto L14 with $t5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:65:13+34
    assume {:print "$at(18,2724,2758)"} true;
    call $t4 := $1_Roles_has_diem_root_role($t0);
    if ($abort_flag) {
        assume {:print "$at(18,2724,2758)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(26,3):", $t5} $t5 == $t5;
        goto L14;
    }

    // if ($t4) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:65:9+51
    if ($t4) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:65:9+51
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:65:9+51
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:65:49+11
L0:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:65:49+11

    // $t6 := true at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:65:56+4
    $t6 := true;
    assume $IsValid'bool'($t6);

    // trace_return[0]($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:65:49+11
    assume {:print "$track_return(26,3,0):", $t6} $t6 == $t6;

    // $t7 := move($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:65:49+11
    $t7 := $t6;

    // goto L13 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:65:49+11
    goto L13;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:13+21
    assume {:print "$at(18,2866,2887)"} true;
L2:

    // $t8 := DiemTransactionPublishingOption::transactions_halted() on_abort goto L14 with $t5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:13+21
    call $t8 := $1_DiemTransactionPublishingOption_transactions_halted();
    if ($abort_flag) {
        assume {:print "$at(18,2866,2887)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(26,3):", $t5} $t5 == $t5;
        goto L14;
    }

    // if ($t8) goto L3 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:9+39
    if ($t8) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:9+39
L4:

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:9+39
    goto L5;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:36+12
L3:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:36+12

    // $t9 := false at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:43+5
    $t9 := false;
    assume $IsValid'bool'($t9);

    // trace_return[0]($t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:36+12
    assume {:print "$track_return(26,3,0):", $t9} $t9 == $t9;

    // $t7 := move($t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:36+12
    $t7 := $t9;

    // goto L13 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:68:36+12
    goto L13;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:30+4
    assume {:print "$at(18,3032,3036)"} true;
L5:

    // $t10 := Vector::is_empty<u8>($t1) on_abort goto L14 with $t5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:13+22
    call $t10 := $1_Vector_is_empty'u8'($t1);
    if ($abort_flag) {
        assume {:print "$at(18,3015,3037)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(26,3):", $t5} $t5 == $t5;
        goto L14;
    }

    // if ($t10) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:9+39
    if ($t10) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:9+39
L7:

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:9+39
    goto L8;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:37+11
L6:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:37+11

    // $t11 := true at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:44+4
    $t11 := true;
    assume $IsValid'bool'($t11);

    // trace_return[0]($t11) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:37+11
    assume {:print "$track_return(26,3,0):", $t11} $t11 == $t11;

    // $t7 := move($t11) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:37+11
    $t7 := $t11;

    // goto L13 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:71:37+11
    goto L13;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
    assume {:print "$at(18,3082,3132)"} true;
L8:

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
    // >> opaque call: $t10 := DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()

    // $t12 := opaque begin: DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50

    // assume Identical($t13, Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
    assume ($t13 == !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816));

    // if ($t13) goto L16 else goto L15 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
    if ($t13) { goto L16; } else { goto L15; }

    // label L16 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
L16:

    // assume And(Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t5)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
    assume (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816) && $IsEqual'u8'(5, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
    assume {:print "$at(18,3082,3132)"} true;
    assume {:print "$track_abort(26,3):", $t5} $t5 == $t5;

    // goto L14 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
    goto L14;

    // label L15 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
L15:

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
    assume $IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($t12);

    // assume Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t12, DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50
    assume $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($t12, $1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // $t12 := opaque end: DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:30+50

    // trace_local[publish_option]($t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:73:13+14
    assume {:print "$track_local(26,3,2):", $t12} $t12 == $t12;

    // $t14 := get_field<DiemTransactionPublishingOption::DiemTransactionPublishingOption>.script_allow_list($t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:26+33
    assume {:print "$at(18,3226,3259)"} true;
    $t14 := $script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($t12);

    // $t15 := Vector::is_empty<vector<u8>>($t14) on_abort goto L14 with $t5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+51
    call $t15 := $1_Vector_is_empty'vec'u8''($t14);
    if ($abort_flag) {
        assume {:print "$at(18,3209,3260)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(26,3):", $t5} $t5 == $t5;
        goto L14;
    }

    // if ($t15) goto L9 else goto L10 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
    if ($t15) { goto L9; } else { goto L10; }

    // label L10 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
L10:

    // goto L11 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
    goto L11;

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
L9:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172

    // $t16 := true at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
    $t16 := true;
    assume $IsValid'bool'($t16);

    // $t3 := $t16 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
    $t3 := $t16;

    // trace_local[tmp#$3]($t16) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
    assume {:print "$track_local(26,3,3):", $t16} $t16 == $t16;

    // goto L12 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
    goto L12;

    // label L11 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:77:34+14
    assume {:print "$at(18,3342,3356)"} true;
L11:

    // $t17 := get_field<DiemTransactionPublishingOption::DiemTransactionPublishingOption>.script_allow_list($t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:77:33+33
    $t17 := $script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($t12);

    // $t18 := Vector::contains<vector<u8>>($t17, $t1) on_abort goto L14 with $t5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:77:16+57
    call $t18 := $1_Vector_contains'vec'u8''($t17, $t1);
    if ($abort_flag) {
        assume {:print "$at(18,3324,3381)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(26,3):", $t5} $t5 == $t5;
        goto L14;
    }

    // $t3 := $t18 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
    assume {:print "$at(18,3209,3381)"} true;
    $t3 := $t18;

    // trace_local[tmp#$3]($t18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
    assume {:print "$track_local(26,3,3):", $t18} $t18 == $t18;

    // label L12 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
L12:

    // trace_return[0]($t3) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
    assume {:print "$track_return(26,3,0):", $t3} $t3 == $t3;

    // $t7 := move($t3) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:75:9+172
    $t7 := $t3;

    // label L13 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:78:5+1
    assume {:print "$at(18,3386,3387)"} true;
L13:

    // assert Not(And(And(And(Not(Roles::$has_diem_root_role[@125]($t0)), Not(DiemTransactionPublishingOption::$transactions_halted[@126]())), Not(Vector::$is_empty[]<u8>($t1))), Not(exists[@127]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:101:9+76
    assume {:print "$at(13,3859,3935)"} true;
    assert {:msg "assert_failed(13,3859,3935): function does not abort under this condition"}
      !(((!$1_Roles_$has_diem_root_role($1_Roles_RoleId_$memory#125, $t0) && !$1_DiemTransactionPublishingOption_$transactions_halted($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory#126)) && !$1_Vector_$is_empty'u8'($t1)) && !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#127, 173345816));

    // assert Implies(DiemConfig::spec_is_published[@127]<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), Eq<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18), global[@127]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    assume {:print "$at(18,7285,7529)"} true;
    assert {:msg "assert_failed(18,7285,7529): post-condition does not hold"}
      ($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#127) ==> $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816), $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#127, 173345816)));

    // return $t7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    $ret0 := $t7;
    return;

    // label L14 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:78:5+1
    assume {:print "$at(18,3386,3387)"} true;
L14:

    // assert And(And(And(Not(Roles::$has_diem_root_role[@125]($t0)), Not(DiemTransactionPublishingOption::$transactions_halted[@126]())), Not(Vector::$is_empty[]<u8>($t1))), Not(exists[@127]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:79:5+232
    assume {:print "$at(18,3392,3624)"} true;
    assert {:msg "assert_failed(18,3392,3624): abort not covered by any of the `aborts_if` clauses"}
      (((!$1_Roles_$has_diem_root_role($1_Roles_RoleId_$memory#125, $t0) && !$1_DiemTransactionPublishingOption_$transactions_halted($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory#126)) && !$1_Vector_$is_empty'u8'($t1)) && !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#127, 173345816));

    // assert And(And(And(And(Not(Roles::$has_diem_root_role[@125]($t0)), Not(DiemTransactionPublishingOption::$transactions_halted[@126]())), Not(Vector::$is_empty[]<u8>($t1))), Not(exists[@127]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))), Eq(5, $t5)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:79:5+232
    assert {:msg "assert_failed(18,3392,3624): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((!$1_Roles_$has_diem_root_role($1_Roles_RoleId_$memory#125, $t0) && !$1_DiemTransactionPublishingOption_$transactions_halted($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory#126)) && !$1_Vector_$is_empty'u8'($t1)) && !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#127, 173345816)) && $IsEqual'u8'(5, $t5));

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:79:5+232
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun DiemTransactionPublishingOption::resume_transactions [verification] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:142:5+415
procedure {:timeLimit 40} $1_DiemTransactionPublishingOption_resume_transactions$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: $1_DiemTransactionPublishingOption_HaltAllTransactions;
    var $t12: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#110: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:142:5+415
    assume {:print "$at(18,6235,6650)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:142:5+415
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemTransactionPublishingOption::HaltAllTransactions>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:142:5+415
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $a_0);
    ($IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'($rsc))));

    // @110 := save_mem(DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:142:5+1
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#110 := $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:142:5+1
    assume {:print "$track_local(26,4,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:143:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(18,6326,6361)"} true;

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:143:9+35
    assume {:print "$at(18,6326,6361)"} true;

    // assume Identical($t5, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t4))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:143:9+35
    assume ($t5 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t4)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t5) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:143:9+35
    if ($t5) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:143:9+35
L5:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6)), And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:143:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t6)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'u8'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 0) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:143:9+35
    assume {:print "$at(18,6326,6361)"} true;
    assume {:print "$track_abort(26,4):", $t6} $t6 == $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:143:9+35
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:143:9+35
L4:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:143:9+35

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:144:26+30
    // >> opaque call: $t4 := Signer::address_of($t0)
    assume {:print "$at(18,6388,6418)"} true;

    // $t7 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:144:26+30

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:144:26+30
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:144:26+30
    assume $IsEqual'address'($t7, $1_Signer_spec_address_of($t0));

    // $t7 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:144:26+30

    // trace_local[dr_address]($t7) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:144:13+10
    assume {:print "$track_local(26,4,1):", $t7} $t7 == $t7;

    // $t8 := exists<DiemTransactionPublishingOption::HaltAllTransactions>($t7) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:146:13+6
    assume {:print "$at(18,6448,6454)"} true;
    $t8 := $ResourceExists($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $t7);

    // $t9 := 2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:147:39+22
    assume {:print "$at(18,6527,6549)"} true;
    $t9 := 2;
    assume $IsValid'u64'($t9);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:147:13+49
    // >> opaque call: $t7 := Errors::already_published($t6)

    // $t10 := opaque begin: Errors::already_published($t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:147:13+49

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:147:13+49
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:147:13+49
    assume $IsEqual'u64'($t10, 6);

    // $t10 := opaque end: Errors::already_published($t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:147:13+49

    // trace_local[tmp#$3]($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:145:9+133
    assume {:print "$at(18,6428,6561)"} true;
    assume {:print "$track_local(26,4,3):", $t10} $t10 == $t10;

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:145:9+133
    assume {:print "$track_local(26,4,2):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:145:9+133
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:145:9+133
L1:

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:145:9+133
    assume {:print "$at(18,6428,6561)"} true;
    assume {:print "$track_abort(26,4):", $t10} $t10 == $t10;

    // $t6 := move($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:145:9+133
    $t6 := $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:145:9+133
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:150:69+10
    assume {:print "$at(18,6632,6642)"} true;
L0:

    // $t11 := move_from<DiemTransactionPublishingOption::HaltAllTransactions>($t7) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:150:38+9
    if (!$ResourceExists($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $t7)) {
        call $ExecFailureAbort();
    } else {
        $t11 := $ResourceValue($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $t7);
        $1_DiemTransactionPublishingOption_HaltAllTransactions_$memory := $ResourceRemove($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $t7);
    }
    if ($abort_flag) {
        assume {:print "$at(18,6601,6610)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(26,4):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t12 := unpack DiemTransactionPublishingOption::HaltAllTransactions($t11) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:150:13+22
    $t12 := $dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions($t11);

    // destroy($t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:150:13+22

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:151:5+1
    assume {:print "$at(18,6649,6650)"} true;
L2:

    // assert Implies(DiemConfig::spec_is_published[@110]<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), Eq<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18), global[@110]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    assume {:print "$at(18,7285,7529)"} true;
    assert {:msg "assert_failed(18,7285,7529): post-condition does not hold"}
      ($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#110) ==> $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816), $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#110, 173345816)));

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:151:5+1
    assume {:print "$at(18,6649,6650)"} true;
L3:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:151:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun DiemTransactionPublishingOption::set_open_module [verification] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
procedure {:timeLimit 40} $1_DiemTransactionPublishingOption_set_open_module$verify(_$t0: int, _$t1: bool) returns ()
{
    // declare local variables
    var $t2: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t3: int;
    var $t4: $1_DiemConfig_Configuration;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: bool;
    var $t10: $Mutation ($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption);
    var $t11: $Mutation (bool);
    var $t12: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t13: $1_DiemConfig_Configuration;
    var $t14: int;
    var $t15: bool;
    var $t0: int;
    var $t1: bool;
    var $temp_0'$1_DiemConfig_Configuration': $1_DiemConfig_Configuration;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'': $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $temp_0'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption': $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $1_Roles_RoleId_$memory#167: $Memory $1_Roles_RoleId;
    var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#168: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#169: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#170: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_DiemConfig_DisableReconfiguration_$memory#171: $Memory $1_DiemConfig_DisableReconfiguration;
    var $1_DiemConfig_Configuration_$memory#172: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t11));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:169:9+72
    assume {:print "$at(18,5029,5381)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:409:9+62
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+121
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    assume $IsValid'bool'($t1);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::Configuration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_Configuration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_Configuration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_Configuration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DisableReconfiguration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DisableReconfiguration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+352
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t4 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t5, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t5 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // @170 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+1
    assume {:print "$at(18,5029,5030)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#170 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @167 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+1
    $1_Roles_RoleId_$memory#167 := $1_Roles_RoleId_$memory;

    // @171 := save_mem(DiemConfig::DisableReconfiguration) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+1
    $1_DiemConfig_DisableReconfiguration_$memory#171 := $1_DiemConfig_DisableReconfiguration_$memory;

    // @168 := save_mem(DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+1
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#168 := $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // @169 := save_mem(DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+1
    $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#169 := $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+1
    assume {:print "$track_local(26,5,0):", $t0} $t0 == $t0;

    // trace_local[open_module]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:115:5+1
    assume {:print "$track_local(26,5,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:116:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(18,5106,5141)"} true;

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:116:9+35
    assume {:print "$at(18,5106,5141)"} true;

    // assume Identical($t7, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t6))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t6)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:116:9+35
    assume ($t7 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t6)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t6)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t7) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:116:9+35
    if ($t7) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:116:9+35
L4:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t8)), And(Not(exists<Roles::RoleId>($t6)), Eq(5, $t8))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t6)), 0), Eq(3, $t8))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t8))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:116:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t8)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t6) && $IsEqual'u8'(5, $t8))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t6)), 0) && $IsEqual'u8'(3, $t8))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:116:9+35
    assume {:print "$at(18,5106,5141)"} true;
    assume {:print "$track_abort(26,5):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:116:9+35
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:116:9+35
L3:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:116:9+35

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50
    // >> opaque call: $t2 := DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()
    assume {:print "$at(18,5173,5223)"} true;

    // $t2 := opaque begin: DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50

    // assume Identical($t9, Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50
    assume ($t9 == !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816));

    // if ($t9) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50
    if ($t9) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50
L6:

    // assume And(Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t8)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50
    assume (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816) && $IsEqual'u8'(5, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50
    assume {:print "$at(18,5173,5223)"} true;
    assume {:print "$track_abort(26,5):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50
L5:

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50
    assume $IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($t2);

    // assume Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t2, DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50
    assume $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($t2, $1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // $t2 := opaque end: DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:30+50

    // trace_local[publish_option]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:118:13+14
    assume {:print "$track_local(26,5,2):", $t2} $t2 == $t2;

    // $t10 := borrow_local($t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:120:9+14
    assume {:print "$at(18,5234,5248)"} true;
    $t10 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t11 := borrow_field<DiemTransactionPublishingOption::DiemTransactionPublishingOption>.module_publishing_allowed($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:120:9+40
    $t11 := $ChildMutation($t10, 1, $module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($Dereference($t10)));

    // write_ref($t11, $t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:120:9+54
    $t11 := $UpdateMutation($t11, $t1);

    // write_back[Reference($t10).module_publishing_allowed]($t11) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:120:9+54
    $t10 := $UpdateMutation($t10, $Update'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_module_publishing_allowed($Dereference($t10), $Dereference($t11)));

    // write_back[LocalRoot($t2)@]($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:120:9+54
    $t2 := $Dereference($t10);

    // $t12 := move($t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:70+14
    assume {:print "$at(18,5359,5373)"} true;
    $t12 := $t2;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    // >> opaque call: DiemConfig::set<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t5)

    // assume Identical($t13, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t13 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t14, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t14 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // opaque begin: DiemConfig::set<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    assume {:print "$at(18,5298,5374)"} true;

    // assume Identical($t15, Or(Or(Not(exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))), And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t13), 18446744073709551615)), Lt($t14, select DiemConfig::Configuration.last_reconfiguration_time($t13))))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    assume ($t15 == ((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0)) || !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816)) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t13) < 18446744073709551615)) && ($t14 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t13)))));

    // if ($t15) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    if ($t15) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
L8:

    // assume Or(Or(And(Not(exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), Eq(4, $t8)), And(Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t8))), And(And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t13), 18446744073709551615)), Lt($t14, select DiemConfig::Configuration.last_reconfiguration_time($t13))), Eq(1, $t8))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    assume (((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0)) && $IsEqual'u8'(4, $t8)) || (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816) && $IsEqual'u8'(5, $t8))) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t13) < 18446744073709551615)) && ($t14 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t13))) && $IsEqual'u8'(1, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    assume {:print "$at(18,5298,5374)"} true;
    assume {:print "$track_abort(26,5):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
L7:

    // @172 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    $1_DiemConfig_Configuration_$memory#172 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::Configuration>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, 173345816, $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, 173345816);
    }

    // modifies global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'';
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816);
    }

    // assume DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    assume $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory);

    // assume Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), $t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    assume $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory), $t12);

    // assume Eq<bool>(DiemConfig::spec_has_config[@172](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#172), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::set<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:121:9+76

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:122:5+1
    assume {:print "$at(18,5380,5381)"} true;
L1:

    // assert Not(Not(exists[@167]<Roles::RoleId>($t3))) at /home/ying/diem/language/diem-framework/modules/Roles.move:526:9+59
    assume {:print "$at(26,23574,23633)"} true;
    assert {:msg "assert_failed(26,23574,23633): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#167, $t3);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@167]<Roles::RoleId>($t3)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+87
    assume {:print "$at(26,23642,23729)"} true;
    assert {:msg "assert_failed(26,23642,23729): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#167, $t3)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:41:9+86
    assume {:print "$at(8,1561,1647)"} true;
    assert {:msg "assert_failed(8,1561,1647): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816);

    // assert Not(Not(exists[@168]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:101:9+76
    assume {:print "$at(13,3859,3935)"} true;
    assert {:msg "assert_failed(13,3859,3935): function does not abort under this condition"}
      !!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#168, 173345816);

    // assert Not(Not(exists[@169]<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:137:9+129
    assume {:print "$at(13,5441,5570)"} true;
    assert {:msg "assert_failed(13,5441,5570): function does not abort under this condition"}
      !!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#169, $1_Signer_spec_address_of($t0));

    // assert Not(Not(exists[@168]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:101:9+76
    assume {:print "$at(13,3859,3935)"} true;
    assert {:msg "assert_failed(13,3859,3935): function does not abort under this condition"}
      !!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#168, 173345816);

    // assert Not(And(And(And(And(DiemTimestamp::$is_operating[@170](), DiemConfig::$reconfiguration_enabled[@171]()), Gt(DiemTimestamp::spec_now_microseconds[@170](), 0)), Lt(select DiemConfig::Configuration.epoch($t4), 18446744073709551615)), Lt($t5, select DiemConfig::Configuration.last_reconfiguration_time($t4)))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:359:9+283
    assume {:print "$at(13,15496,15779)"} true;
    assert {:msg "assert_failed(13,15496,15779): function does not abort under this condition"}
      !(((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#170) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#171)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#170) > 0)) && ($epoch#$1_DiemConfig_Configuration($t4) < 18446744073709551615)) && ($t5 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t4)));

    // return () at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:359:9+283
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:122:5+1
    assume {:print "$at(18,5380,5381)"} true;
L2:

    // assert Or(Or(Or(Or(Or(Or(Not(exists[@167]<Roles::RoleId>($t3)), Neq<u64>(select Roles::RoleId.role_id(global[@167]<Roles::RoleId>($t3)), 0)), Neq<address>(Signer::spec_address_of[]($t0), a550c18)), Not(exists[@168]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))), Not(exists[@169]<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of[]($t0)))), Not(exists[@168]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))), And(And(And(And(DiemTimestamp::$is_operating[@170](), DiemConfig::$reconfiguration_enabled[@171]()), Gt(DiemTimestamp::spec_now_microseconds[@170](), 0)), Lt(select DiemConfig::Configuration.epoch($t4), 18446744073709551615)), Lt($t5, select DiemConfig::Configuration.last_reconfiguration_time($t4)))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:123:5+362
    assume {:print "$at(18,5386,5748)"} true;
    assert {:msg "assert_failed(18,5386,5748): abort not covered by any of the `aborts_if` clauses"}
      ((((((!$ResourceExists($1_Roles_RoleId_$memory#167, $t3) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#167, $t3)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)) || !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#168, 173345816)) || !$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#169, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#168, 173345816)) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#170) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#171)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#170) > 0)) && ($epoch#$1_DiemConfig_Configuration($t4) < 18446744073709551615)) && ($t5 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t4))));

    // assert Or(Or(Or(Or(Or(Or(And(Not(exists[@167]<Roles::RoleId>($t3)), Eq(5, $t8)), And(Neq<u64>(select Roles::RoleId.role_id(global[@167]<Roles::RoleId>($t3)), 0), Eq(3, $t8))), And(Neq<address>(Signer::spec_address_of[]($t0), a550c18), Eq(2, $t8))), And(Not(exists[@168]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t8))), And(Not(exists[@169]<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of[]($t0))), Eq(4, $t8))), And(Not(exists[@168]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t8))), And(And(And(And(And(DiemTimestamp::$is_operating[@170](), DiemConfig::$reconfiguration_enabled[@171]()), Gt(DiemTimestamp::spec_now_microseconds[@170](), 0)), Lt(select DiemConfig::Configuration.epoch($t4), 18446744073709551615)), Lt($t5, select DiemConfig::Configuration.last_reconfiguration_time($t4))), Eq(1, $t8))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:123:5+362
    assert {:msg "assert_failed(18,5386,5748): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((!$ResourceExists($1_Roles_RoleId_$memory#167, $t3) && $IsEqual'u8'(5, $t8)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#167, $t3)), 0) && $IsEqual'u8'(3, $t8))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t8))) || (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#168, 173345816) && $IsEqual'u8'(5, $t8))) || (!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#169, $1_Signer_spec_address_of($t0)) && $IsEqual'u8'(4, $t8))) || (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#168, 173345816) && $IsEqual'u8'(5, $t8))) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#170) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#171)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#170) > 0)) && ($epoch#$1_DiemConfig_Configuration($t4) < 18446744073709551615)) && ($t5 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t4))) && $IsEqual'u8'(1, $t8)));

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:123:5+362
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun DiemTransactionPublishingOption::set_open_script [verification] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
procedure {:timeLimit 40} $1_DiemTransactionPublishingOption_set_open_script$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t2: int;
    var $t3: $1_DiemConfig_Configuration;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: Vec (Vec (int));
    var $t10: $Mutation ($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption);
    var $t11: $Mutation (Vec (Vec (int)));
    var $t12: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t13: $1_DiemConfig_Configuration;
    var $t14: int;
    var $t15: bool;
    var $t0: int;
    var $temp_0'$1_DiemConfig_Configuration': $1_DiemConfig_Configuration;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'': $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $temp_0'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption': $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $1_Roles_RoleId_$memory#189: $Memory $1_Roles_RoleId;
    var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#190: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#191: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_DiemConfig_DisableReconfiguration_$memory#193: $Memory $1_DiemConfig_DisableReconfiguration;
    var $1_DiemConfig_Configuration_$memory#194: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t11));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:169:9+72
    assume {:print "$at(18,4266,4594)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:409:9+62
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+121
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::Configuration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_Configuration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_Configuration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_Configuration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DisableReconfiguration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DisableReconfiguration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+328
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t3 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t4, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t4 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // @192 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+1
    assume {:print "$at(18,4266,4267)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @189 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+1
    $1_Roles_RoleId_$memory#189 := $1_Roles_RoleId_$memory;

    // @193 := save_mem(DiemConfig::DisableReconfiguration) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+1
    $1_DiemConfig_DisableReconfiguration_$memory#193 := $1_DiemConfig_DisableReconfiguration_$memory;

    // @190 := save_mem(DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+1
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#190 := $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // @191 := save_mem(DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+1
    $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#191 := $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:99:5+1
    assume {:print "$track_local(26,6,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:100:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(18,4324,4359)"} true;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:100:9+35
    assume {:print "$at(18,4324,4359)"} true;

    // assume Identical($t6, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t5))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:100:9+35
    assume ($t6 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t5)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t6) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:100:9+35
    if ($t6) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:100:9+35
L4:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t7)), And(Not(exists<Roles::RoleId>($t5)), Eq(5, $t7))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 0), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:100:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t7)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t5) && $IsEqual'u8'(5, $t7))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 0) && $IsEqual'u8'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:100:9+35
    assume {:print "$at(18,4324,4359)"} true;
    assume {:print "$track_abort(26,6):", $t7} $t7 == $t7;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:100:9+35
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:100:9+35
L3:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:100:9+35

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50
    // >> opaque call: $t1 := DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()
    assume {:print "$at(18,4390,4440)"} true;

    // $t1 := opaque begin: DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50

    // assume Identical($t8, Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50
    assume ($t8 == !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816));

    // if ($t8) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50
    if ($t8) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50
L6:

    // assume And(Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t7)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50
    assume (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816) && $IsEqual'u8'(5, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50
    assume {:print "$at(18,4390,4440)"} true;
    assume {:print "$track_abort(26,6):", $t7} $t7 == $t7;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50
L5:

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50
    assume $IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($t1);

    // assume Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t1, DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50
    assume $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($t1, $1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // $t1 := opaque end: DiemConfig::get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:30+50

    // trace_local[publish_option]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:101:13+14
    assume {:print "$track_local(26,6,1):", $t1} $t1 == $t1;

    // $t9 := Vector::empty<vector<u8>>() on_abort goto L2 with $t7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:103:44+15
    assume {:print "$at(18,4486,4501)"} true;
    call $t9 := $1_Vector_empty'vec'u8''();
    if ($abort_flag) {
        assume {:print "$at(18,4486,4501)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(26,6):", $t7} $t7 == $t7;
        goto L2;
    }

    // $t10 := borrow_local($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:103:9+14
    $t10 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t11 := borrow_field<DiemTransactionPublishingOption::DiemTransactionPublishingOption>.script_allow_list($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:103:9+32
    $t11 := $ChildMutation($t10, 0, $script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($Dereference($t10)));

    // write_ref($t11, $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:103:9+50
    $t11 := $UpdateMutation($t11, $t9);

    // write_back[Reference($t10).script_allow_list]($t11) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:103:9+50
    $t10 := $UpdateMutation($t10, $Update'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_script_allow_list($Dereference($t10), $Dereference($t11)));

    // write_back[LocalRoot($t1)@]($t10) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:103:9+50
    $t1 := $Dereference($t10);

    // $t12 := move($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:70+14
    assume {:print "$at(18,4572,4586)"} true;
    $t12 := $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    // >> opaque call: DiemConfig::set<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t5)

    // assume Identical($t13, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t13 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t14, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t14 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // opaque begin: DiemConfig::set<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    assume {:print "$at(18,4511,4587)"} true;

    // assume Identical($t15, Or(Or(Not(exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))), And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t13), 18446744073709551615)), Lt($t14, select DiemConfig::Configuration.last_reconfiguration_time($t13))))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    assume ($t15 == ((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0)) || !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816)) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t13) < 18446744073709551615)) && ($t14 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t13)))));

    // if ($t15) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    if ($t15) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
L8:

    // assume Or(Or(And(Not(exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), Eq(4, $t7)), And(Not(exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t7))), And(And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t13), 18446744073709551615)), Lt($t14, select DiemConfig::Configuration.last_reconfiguration_time($t13))), Eq(1, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    assume (((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0)) && $IsEqual'u8'(4, $t7)) || (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816) && $IsEqual'u8'(5, $t7))) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t13) < 18446744073709551615)) && ($t14 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t13))) && $IsEqual'u8'(1, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    assume {:print "$at(18,4511,4587)"} true;
    assume {:print "$track_abort(26,6):", $t7} $t7 == $t7;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
L7:

    // @194 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    $1_DiemConfig_Configuration_$memory#194 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::Configuration>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, 173345816, $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, 173345816);
    }

    // modifies global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'';
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816);
    }

    // assume DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    assume $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory);

    // assume Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), $t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    assume $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory), $t12);

    // assume Eq<bool>(DiemConfig::spec_has_config[@194](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#194), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::set<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t12) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:104:9+76

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:105:5+1
    assume {:print "$at(18,4593,4594)"} true;
L1:

    // assert Not(Not(exists[@189]<Roles::RoleId>($t2))) at /home/ying/diem/language/diem-framework/modules/Roles.move:526:9+59
    assume {:print "$at(26,23574,23633)"} true;
    assert {:msg "assert_failed(26,23574,23633): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#189, $t2);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@189]<Roles::RoleId>($t2)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+87
    assume {:print "$at(26,23642,23729)"} true;
    assert {:msg "assert_failed(26,23642,23729): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#189, $t2)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:41:9+86
    assume {:print "$at(8,1561,1647)"} true;
    assert {:msg "assert_failed(8,1561,1647): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816);

    // assert Not(Not(exists[@190]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:101:9+76
    assume {:print "$at(13,3859,3935)"} true;
    assert {:msg "assert_failed(13,3859,3935): function does not abort under this condition"}
      !!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#190, 173345816);

    // assert Not(Not(exists[@191]<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:137:9+129
    assume {:print "$at(13,5441,5570)"} true;
    assert {:msg "assert_failed(13,5441,5570): function does not abort under this condition"}
      !!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#191, $1_Signer_spec_address_of($t0));

    // assert Not(Not(exists[@190]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:101:9+76
    assume {:print "$at(13,3859,3935)"} true;
    assert {:msg "assert_failed(13,3859,3935): function does not abort under this condition"}
      !!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#190, 173345816);

    // assert Not(And(And(And(And(DiemTimestamp::$is_operating[@192](), DiemConfig::$reconfiguration_enabled[@193]()), Gt(DiemTimestamp::spec_now_microseconds[@192](), 0)), Lt(select DiemConfig::Configuration.epoch($t3), 18446744073709551615)), Lt($t4, select DiemConfig::Configuration.last_reconfiguration_time($t3)))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:359:9+283
    assume {:print "$at(13,15496,15779)"} true;
    assert {:msg "assert_failed(13,15496,15779): function does not abort under this condition"}
      !(((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#193)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192) > 0)) && ($epoch#$1_DiemConfig_Configuration($t3) < 18446744073709551615)) && ($t4 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t3)));

    // return () at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:359:9+283
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:105:5+1
    assume {:print "$at(18,4593,4594)"} true;
L2:

    // assert Or(Or(Or(Or(Or(Or(Not(exists[@189]<Roles::RoleId>($t2)), Neq<u64>(select Roles::RoleId.role_id(global[@189]<Roles::RoleId>($t2)), 0)), Neq<address>(Signer::spec_address_of[]($t0), a550c18)), Not(exists[@190]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))), Not(exists[@191]<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of[]($t0)))), Not(exists[@190]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))), And(And(And(And(DiemTimestamp::$is_operating[@192](), DiemConfig::$reconfiguration_enabled[@193]()), Gt(DiemTimestamp::spec_now_microseconds[@192](), 0)), Lt(select DiemConfig::Configuration.epoch($t3), 18446744073709551615)), Lt($t4, select DiemConfig::Configuration.last_reconfiguration_time($t3)))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:106:5+362
    assume {:print "$at(18,4599,4961)"} true;
    assert {:msg "assert_failed(18,4599,4961): abort not covered by any of the `aborts_if` clauses"}
      ((((((!$ResourceExists($1_Roles_RoleId_$memory#189, $t2) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#189, $t2)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)) || !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#190, 173345816)) || !$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#191, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#190, 173345816)) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#193)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192) > 0)) && ($epoch#$1_DiemConfig_Configuration($t3) < 18446744073709551615)) && ($t4 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t3))));

    // assert Or(Or(Or(Or(Or(Or(And(Not(exists[@189]<Roles::RoleId>($t2)), Eq(5, $t7)), And(Neq<u64>(select Roles::RoleId.role_id(global[@189]<Roles::RoleId>($t2)), 0), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of[]($t0), a550c18), Eq(2, $t7))), And(Not(exists[@190]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t7))), And(Not(exists[@191]<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of[]($t0))), Eq(4, $t7))), And(Not(exists[@190]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18)), Eq(5, $t7))), And(And(And(And(And(DiemTimestamp::$is_operating[@192](), DiemConfig::$reconfiguration_enabled[@193]()), Gt(DiemTimestamp::spec_now_microseconds[@192](), 0)), Lt(select DiemConfig::Configuration.epoch($t3), 18446744073709551615)), Lt($t4, select DiemConfig::Configuration.last_reconfiguration_time($t3))), Eq(1, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:106:5+362
    assert {:msg "assert_failed(18,4599,4961): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((!$ResourceExists($1_Roles_RoleId_$memory#189, $t2) && $IsEqual'u8'(5, $t7)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#189, $t2)), 0) && $IsEqual'u8'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t7))) || (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#190, 173345816) && $IsEqual'u8'(5, $t7))) || (!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#191, $1_Signer_spec_address_of($t0)) && $IsEqual'u8'(4, $t7))) || (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#190, 173345816) && $IsEqual'u8'(5, $t7))) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#193)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192) > 0)) && ($epoch#$1_DiemConfig_Configuration($t3) < 18446744073709551615)) && ($t4 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t3))) && $IsEqual'u8'(1, $t7)));

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:106:5+362
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun DiemTransactionPublishingOption::transactions_halted [baseline] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:154:5+86
procedure {:inline 1} $1_DiemTransactionPublishingOption_transactions_halted() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:155:37+9
    assume {:print "$at(18,6806,6815)"} true;
    $t0 := 173345816;
    assume $IsValid'address'($t0);

    // $t1 := exists<DiemTransactionPublishingOption::HaltAllTransactions>($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:155:9+6
    $t1 := $ResourceExists($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:155:9+38
    assume {:print "$track_return(26,7,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:156:5+1
    assume {:print "$at(18,6821,6822)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:156:5+1
    $ret0 := $t1;
    return;

}

// fun DiemTransactionPublishingOption::transactions_halted [verification] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:154:5+86
procedure {:timeLimit 40} $1_DiemTransactionPublishingOption_transactions_halted$verify() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;
    var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#90: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall $rsc: ResourceDomain<DiemTransactionPublishingOption::HaltAllTransactions>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:154:5+86
    assume {:print "$at(18,6736,6822)"} true;
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $a_0);
    ($IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'($rsc))));

    // @90 := save_mem(DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:154:5+1
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#90 := $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory;

    // $t0 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:155:37+9
    assume {:print "$at(18,6806,6815)"} true;
    $t0 := 173345816;
    assume $IsValid'address'($t0);

    // $t1 := exists<DiemTransactionPublishingOption::HaltAllTransactions>($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:155:9+6
    $t1 := $ResourceExists($1_DiemTransactionPublishingOption_HaltAllTransactions_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:155:9+38
    assume {:print "$track_return(26,7,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:156:5+1
    assume {:print "$at(18,6821,6822)"} true;
L1:

    // assert Implies(DiemConfig::spec_is_published[@90]<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), Eq<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18), global[@90]<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    assume {:print "$at(18,7285,7529)"} true;
    assert {:msg "assert_failed(18,7285,7529): post-condition does not hold"}
      ($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#90) ==> $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816), $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory#90, 173345816)));

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:171:9+244
    $ret0 := $t1;
    return;

}

// struct DesignatedDealer::Dealer at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:13:5+130
type {:datatype} $1_DesignatedDealer_Dealer;
function {:constructor} $1_DesignatedDealer_Dealer($mint_event_handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent'): $1_DesignatedDealer_Dealer;
function {:inline} $Update'$1_DesignatedDealer_Dealer'_mint_event_handle(s: $1_DesignatedDealer_Dealer, x: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent'): $1_DesignatedDealer_Dealer {
    $1_DesignatedDealer_Dealer(x)
}
function $IsValid'$1_DesignatedDealer_Dealer'(s: $1_DesignatedDealer_Dealer): bool {
    $IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''($mint_event_handle#$1_DesignatedDealer_Dealer(s))
}
function {:inline} $IsEqual'$1_DesignatedDealer_Dealer'(s1: $1_DesignatedDealer_Dealer, s2: $1_DesignatedDealer_Dealer): bool {
    s1 == s2
}
var $1_DesignatedDealer_Dealer_$memory: $Memory $1_DesignatedDealer_Dealer;

// struct DesignatedDealer::ReceivedMintEvent at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:37:5+286
type {:datatype} $1_DesignatedDealer_ReceivedMintEvent;
function {:constructor} $1_DesignatedDealer_ReceivedMintEvent($currency_code: Vec (int), $destination_address: int, $amount: int): $1_DesignatedDealer_ReceivedMintEvent;
function {:inline} $Update'$1_DesignatedDealer_ReceivedMintEvent'_currency_code(s: $1_DesignatedDealer_ReceivedMintEvent, x: Vec (int)): $1_DesignatedDealer_ReceivedMintEvent {
    $1_DesignatedDealer_ReceivedMintEvent(x, $destination_address#$1_DesignatedDealer_ReceivedMintEvent(s), $amount#$1_DesignatedDealer_ReceivedMintEvent(s))
}
function {:inline} $Update'$1_DesignatedDealer_ReceivedMintEvent'_destination_address(s: $1_DesignatedDealer_ReceivedMintEvent, x: int): $1_DesignatedDealer_ReceivedMintEvent {
    $1_DesignatedDealer_ReceivedMintEvent($currency_code#$1_DesignatedDealer_ReceivedMintEvent(s), x, $amount#$1_DesignatedDealer_ReceivedMintEvent(s))
}
function {:inline} $Update'$1_DesignatedDealer_ReceivedMintEvent'_amount(s: $1_DesignatedDealer_ReceivedMintEvent, x: int): $1_DesignatedDealer_ReceivedMintEvent {
    $1_DesignatedDealer_ReceivedMintEvent($currency_code#$1_DesignatedDealer_ReceivedMintEvent(s), $destination_address#$1_DesignatedDealer_ReceivedMintEvent(s), x)
}
function $IsValid'$1_DesignatedDealer_ReceivedMintEvent'(s: $1_DesignatedDealer_ReceivedMintEvent): bool {
    $IsValid'vec'u8''($currency_code#$1_DesignatedDealer_ReceivedMintEvent(s))
      && $IsValid'address'($destination_address#$1_DesignatedDealer_ReceivedMintEvent(s))
      && $IsValid'u64'($amount#$1_DesignatedDealer_ReceivedMintEvent(s))
}
function {:inline} $IsEqual'$1_DesignatedDealer_ReceivedMintEvent'(s1: $1_DesignatedDealer_ReceivedMintEvent, s2: $1_DesignatedDealer_ReceivedMintEvent): bool {
    s1 == s2
}

// struct ChainId::ChainId at /home/ying/diem/language/diem-framework/modules/ChainId.move:10:5+45
type {:datatype} $1_ChainId_ChainId;
function {:constructor} $1_ChainId_ChainId($id: int): $1_ChainId_ChainId;
function {:inline} $Update'$1_ChainId_ChainId'_id(s: $1_ChainId_ChainId, x: int): $1_ChainId_ChainId {
    $1_ChainId_ChainId(x)
}
function $IsValid'$1_ChainId_ChainId'(s: $1_ChainId_ChainId): bool {
    $IsValid'u8'($id#$1_ChainId_ChainId(s))
}
function {:inline} $IsEqual'$1_ChainId_ChainId'(s1: $1_ChainId_ChainId, s2: $1_ChainId_ChainId): bool {
    s1 == s2
}
var $1_ChainId_ChainId_$memory: $Memory $1_ChainId_ChainId;

// spec fun at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:232:9+141
function {:inline} $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory: $Memory $1_AccountFreezing_FreezingBit, addr: int): bool {
    ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr) && !$is_frozen#$1_AccountFreezing_FreezingBit($ResourceValue($1_AccountFreezing_FreezingBit_$memory, addr)))
}

// struct AccountFreezing::FreezeAccountEvent at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:21:5+208
type {:datatype} $1_AccountFreezing_FreezeAccountEvent;
function {:constructor} $1_AccountFreezing_FreezeAccountEvent($initiator_address: int, $frozen_address: int): $1_AccountFreezing_FreezeAccountEvent;
function {:inline} $Update'$1_AccountFreezing_FreezeAccountEvent'_initiator_address(s: $1_AccountFreezing_FreezeAccountEvent, x: int): $1_AccountFreezing_FreezeAccountEvent {
    $1_AccountFreezing_FreezeAccountEvent(x, $frozen_address#$1_AccountFreezing_FreezeAccountEvent(s))
}
function {:inline} $Update'$1_AccountFreezing_FreezeAccountEvent'_frozen_address(s: $1_AccountFreezing_FreezeAccountEvent, x: int): $1_AccountFreezing_FreezeAccountEvent {
    $1_AccountFreezing_FreezeAccountEvent($initiator_address#$1_AccountFreezing_FreezeAccountEvent(s), x)
}
function $IsValid'$1_AccountFreezing_FreezeAccountEvent'(s: $1_AccountFreezing_FreezeAccountEvent): bool {
    $IsValid'address'($initiator_address#$1_AccountFreezing_FreezeAccountEvent(s))
      && $IsValid'address'($frozen_address#$1_AccountFreezing_FreezeAccountEvent(s))
}
function {:inline} $IsEqual'$1_AccountFreezing_FreezeAccountEvent'(s1: $1_AccountFreezing_FreezeAccountEvent, s2: $1_AccountFreezing_FreezeAccountEvent): bool {
    s1 == s2
}

// struct AccountFreezing::FreezeEventsHolder at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:15:5+169
type {:datatype} $1_AccountFreezing_FreezeEventsHolder;
function {:constructor} $1_AccountFreezing_FreezeEventsHolder($freeze_event_handle: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent', $unfreeze_event_handle: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent'): $1_AccountFreezing_FreezeEventsHolder;
function {:inline} $Update'$1_AccountFreezing_FreezeEventsHolder'_freeze_event_handle(s: $1_AccountFreezing_FreezeEventsHolder, x: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent'): $1_AccountFreezing_FreezeEventsHolder {
    $1_AccountFreezing_FreezeEventsHolder(x, $unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s))
}
function {:inline} $Update'$1_AccountFreezing_FreezeEventsHolder'_unfreeze_event_handle(s: $1_AccountFreezing_FreezeEventsHolder, x: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent'): $1_AccountFreezing_FreezeEventsHolder {
    $1_AccountFreezing_FreezeEventsHolder($freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s), x)
}
function $IsValid'$1_AccountFreezing_FreezeEventsHolder'(s: $1_AccountFreezing_FreezeEventsHolder): bool {
    $IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''($freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s))
      && $IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''($unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s))
}
function {:inline} $IsEqual'$1_AccountFreezing_FreezeEventsHolder'(s1: $1_AccountFreezing_FreezeEventsHolder, s2: $1_AccountFreezing_FreezeEventsHolder): bool {
    s1 == s2
}
var $1_AccountFreezing_FreezeEventsHolder_$memory: $Memory $1_AccountFreezing_FreezeEventsHolder;

// struct AccountFreezing::FreezingBit at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:10:5+164
type {:datatype} $1_AccountFreezing_FreezingBit;
function {:constructor} $1_AccountFreezing_FreezingBit($is_frozen: bool): $1_AccountFreezing_FreezingBit;
function {:inline} $Update'$1_AccountFreezing_FreezingBit'_is_frozen(s: $1_AccountFreezing_FreezingBit, x: bool): $1_AccountFreezing_FreezingBit {
    $1_AccountFreezing_FreezingBit(x)
}
function $IsValid'$1_AccountFreezing_FreezingBit'(s: $1_AccountFreezing_FreezingBit): bool {
    $IsValid'bool'($is_frozen#$1_AccountFreezing_FreezingBit(s))
}
function {:inline} $IsEqual'$1_AccountFreezing_FreezingBit'(s1: $1_AccountFreezing_FreezingBit, s2: $1_AccountFreezing_FreezingBit): bool {
    s1 == s2
}
var $1_AccountFreezing_FreezingBit_$memory: $Memory $1_AccountFreezing_FreezingBit;

// struct AccountFreezing::UnfreezeAccountEvent at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:29:5+216
type {:datatype} $1_AccountFreezing_UnfreezeAccountEvent;
function {:constructor} $1_AccountFreezing_UnfreezeAccountEvent($initiator_address: int, $unfrozen_address: int): $1_AccountFreezing_UnfreezeAccountEvent;
function {:inline} $Update'$1_AccountFreezing_UnfreezeAccountEvent'_initiator_address(s: $1_AccountFreezing_UnfreezeAccountEvent, x: int): $1_AccountFreezing_UnfreezeAccountEvent {
    $1_AccountFreezing_UnfreezeAccountEvent(x, $unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent(s))
}
function {:inline} $Update'$1_AccountFreezing_UnfreezeAccountEvent'_unfrozen_address(s: $1_AccountFreezing_UnfreezeAccountEvent, x: int): $1_AccountFreezing_UnfreezeAccountEvent {
    $1_AccountFreezing_UnfreezeAccountEvent($initiator_address#$1_AccountFreezing_UnfreezeAccountEvent(s), x)
}
function $IsValid'$1_AccountFreezing_UnfreezeAccountEvent'(s: $1_AccountFreezing_UnfreezeAccountEvent): bool {
    $IsValid'address'($initiator_address#$1_AccountFreezing_UnfreezeAccountEvent(s))
      && $IsValid'address'($unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent(s))
}
function {:inline} $IsEqual'$1_AccountFreezing_UnfreezeAccountEvent'(s1: $1_AccountFreezing_UnfreezeAccountEvent, s2: $1_AccountFreezing_UnfreezeAccountEvent): bool {
    s1 == s2
}

// fun AccountFreezing::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:47:5+508
procedure {:inline 1} $1_AccountFreezing_initialize(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
    var $t12: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent';
    var $t13: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent';
    var $t14: $1_AccountFreezing_FreezeEventsHolder;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:62:9+47
    assume {:print "$at(4,2314,2361)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:47:5+1
    assume {:print "$at(4,1651,1652)"} true;
    assume {:print "$track_local(29,4,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(4,1704,1735)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:9+31

    // assume Identical($t4, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:9+31
    assume ($t4 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t4) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:9+31
    if ($t4) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t5)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:9+31
    assume {:print "$at(4,1704,1735)"} true;
    assume {:print "$track_abort(29,4):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+43
    // >> opaque call: CoreAddresses::assert_diem_root($t0)
    assume {:print "$at(4,1745,1788)"} true;

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+43

    // assume Identical($t6, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+43
    assume ($t6 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t6) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+43
    if ($t6) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+43
L7:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+43
    assume {:print "$at(4,1745,1788)"} true;
    assume {:print "$track_abort(29,4):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+43
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+43
L6:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+43

    // nop at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:41+30
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(4,1846,1876)"} true;

    // $t7 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:41+30

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:41+30
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:41+30
    assume $IsEqual'address'($t7, $1_Signer_spec_address_of($t0));

    // $t7 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:41+30

    // $t8 := exists<AccountFreezing::FreezeEventsHolder>($t7) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:14+6
    $t8 := $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, $t7);

    // $t9 := !($t8) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:13+1
    call $t9 := $Not($t8);

    // $t10 := 1 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:39+21
    assume {:print "$at(4,1917,1938)"} true;
    $t10 := 1;
    assume $IsValid'u64'($t10);

    // nop at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:13+48
    // >> opaque call: $t7 := Errors::already_published($t6)

    // $t11 := opaque begin: Errors::already_published($t10) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:13+48

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:13+48
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 6) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:13+48
    assume $IsEqual'u64'($t11, 6);

    // $t11 := opaque end: Errors::already_published($t10) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:13+48

    // trace_local[tmp#$2]($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+151
    assume {:print "$at(4,1798,1949)"} true;
    assume {:print "$track_local(29,4,2):", $t11} $t11 == $t11;

    // trace_local[tmp#$1]($t9) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+151
    assume {:print "$track_local(29,4,1):", $t9} $t9 == $t9;

    // if ($t9) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+151
    if ($t9) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+151
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+151

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+151
    assume {:print "$at(4,1798,1949)"} true;
    assume {:print "$track_abort(29,4):", $t11} $t11 == $t11;

    // $t5 := move($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+151
    $t5 := $t11;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+151
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:54:17+10
    assume {:print "$at(4,1967,1977)"} true;
L0:

    // $t12 := Event::new_event_handle<AccountFreezing::FreezeAccountEvent>($t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:55:34+35
    assume {:print "$at(4,2033,2068)"} true;
    call $t12 := $1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(4,2033,2068)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(29,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t13 := Event::new_event_handle<AccountFreezing::UnfreezeAccountEvent>($t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:56:36+35
    assume {:print "$at(4,2105,2140)"} true;
    call $t13 := $1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(4,2105,2140)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(29,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t14 := pack AccountFreezing::FreezeEventsHolder($t12, $t13) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:54:29+172
    assume {:print "$at(4,1979,2151)"} true;
    $t14 := $1_AccountFreezing_FreezeEventsHolder($t12, $t13);

    // move_to<AccountFreezing::FreezeEventsHolder>($t14, $t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:54:9+7
    if ($ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_AccountFreezing_FreezeEventsHolder_$memory := $ResourceUpdate($1_AccountFreezing_FreezeEventsHolder_$memory, $t0, $t14);
    }
    if ($abort_flag) {
        assume {:print "$at(4,1959,1966)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(29,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:58:5+1
    assume {:print "$at(4,2158,2159)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:58:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:58:5+1
L3:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:58:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1569:5+247
function {:inline} $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1593:5+95
function {:inline} $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, check_addr: int): bool {
    $ResourceExists($1_DiemAccount_DiemAccount_$memory, check_addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2337:9+155
function {:inline} $1_DiemAccount_spec_get_key_rotation_cap_field($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_Option_Option'$1_DiemAccount_KeyRotationCapability' {
    $key_rotation_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2342:9+145
function {:inline} $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_DiemAccount_KeyRotationCapability {
    $1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'($1_DiemAccount_spec_get_key_rotation_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2347:9+129
function {:inline} $1_DiemAccount_spec_has_key_rotation_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($1_DiemAccount_spec_get_key_rotation_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2353:9+183
function {:inline} $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    ($1_DiemAccount_spec_has_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr) && $IsEqual'address'(addr, $account_address#$1_DiemAccount_KeyRotationCapability($1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2364:9+144
function {:inline} $1_DiemAccount_spec_get_withdraw_cap_field($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_Option_Option'$1_DiemAccount_WithdrawCapability' {
    $withdraw_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2369:9+134
function {:inline} $1_DiemAccount_spec_get_withdraw_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_DiemAccount_WithdrawCapability {
    $1_Option_$borrow'$1_DiemAccount_WithdrawCapability'($1_DiemAccount_spec_get_withdraw_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2374:9+121
function {:inline} $1_DiemAccount_spec_has_withdraw_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    $1_Option_$is_some'$1_DiemAccount_WithdrawCapability'($1_DiemAccount_spec_get_withdraw_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+171
function {:inline} $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    ($1_DiemAccount_spec_has_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr) && $IsEqual'address'(addr, $account_address#$1_DiemAccount_WithdrawCapability($1_DiemAccount_spec_get_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2385:9+171
function {:inline} $1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) && $1_Option_$is_none'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr))))
}

// struct DiemAccount::DiemAccount at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:34:5+1558
type {:datatype} $1_DiemAccount_DiemAccount;
function {:constructor} $1_DiemAccount_DiemAccount($authentication_key: Vec (int), $withdraw_capability: $1_Option_Option'$1_DiemAccount_WithdrawCapability', $key_rotation_capability: $1_Option_Option'$1_DiemAccount_KeyRotationCapability', $received_events: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent', $sent_events: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent', $sequence_number: int): $1_DiemAccount_DiemAccount;
function {:inline} $Update'$1_DiemAccount_DiemAccount'_authentication_key(s: $1_DiemAccount_DiemAccount, x: Vec (int)): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount(x, $withdraw_capability#$1_DiemAccount_DiemAccount(s), $key_rotation_capability#$1_DiemAccount_DiemAccount(s), $received_events#$1_DiemAccount_DiemAccount(s), $sent_events#$1_DiemAccount_DiemAccount(s), $sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $Update'$1_DiemAccount_DiemAccount'_withdraw_capability(s: $1_DiemAccount_DiemAccount, x: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount($authentication_key#$1_DiemAccount_DiemAccount(s), x, $key_rotation_capability#$1_DiemAccount_DiemAccount(s), $received_events#$1_DiemAccount_DiemAccount(s), $sent_events#$1_DiemAccount_DiemAccount(s), $sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $Update'$1_DiemAccount_DiemAccount'_key_rotation_capability(s: $1_DiemAccount_DiemAccount, x: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount($authentication_key#$1_DiemAccount_DiemAccount(s), $withdraw_capability#$1_DiemAccount_DiemAccount(s), x, $received_events#$1_DiemAccount_DiemAccount(s), $sent_events#$1_DiemAccount_DiemAccount(s), $sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $Update'$1_DiemAccount_DiemAccount'_received_events(s: $1_DiemAccount_DiemAccount, x: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent'): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount($authentication_key#$1_DiemAccount_DiemAccount(s), $withdraw_capability#$1_DiemAccount_DiemAccount(s), $key_rotation_capability#$1_DiemAccount_DiemAccount(s), x, $sent_events#$1_DiemAccount_DiemAccount(s), $sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $Update'$1_DiemAccount_DiemAccount'_sent_events(s: $1_DiemAccount_DiemAccount, x: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent'): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount($authentication_key#$1_DiemAccount_DiemAccount(s), $withdraw_capability#$1_DiemAccount_DiemAccount(s), $key_rotation_capability#$1_DiemAccount_DiemAccount(s), $received_events#$1_DiemAccount_DiemAccount(s), x, $sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $Update'$1_DiemAccount_DiemAccount'_sequence_number(s: $1_DiemAccount_DiemAccount, x: int): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount($authentication_key#$1_DiemAccount_DiemAccount(s), $withdraw_capability#$1_DiemAccount_DiemAccount(s), $key_rotation_capability#$1_DiemAccount_DiemAccount(s), $received_events#$1_DiemAccount_DiemAccount(s), $sent_events#$1_DiemAccount_DiemAccount(s), x)
}
function $IsValid'$1_DiemAccount_DiemAccount'(s: $1_DiemAccount_DiemAccount): bool {
    $IsValid'vec'u8''($authentication_key#$1_DiemAccount_DiemAccount(s))
      && $IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''($withdraw_capability#$1_DiemAccount_DiemAccount(s))
      && $IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($key_rotation_capability#$1_DiemAccount_DiemAccount(s))
      && $IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''($received_events#$1_DiemAccount_DiemAccount(s))
      && $IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''($sent_events#$1_DiemAccount_DiemAccount(s))
      && $IsValid'u64'($sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $IsEqual'$1_DiemAccount_DiemAccount'(s1: $1_DiemAccount_DiemAccount, s2: $1_DiemAccount_DiemAccount): bool {
    s1 == s2
}
var $1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount;

// struct DiemAccount::AccountOperationsCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:91:5+167
type {:datatype} $1_DiemAccount_AccountOperationsCapability;
function {:constructor} $1_DiemAccount_AccountOperationsCapability($limits_cap: $1_AccountLimits_AccountLimitMutationCapability, $creation_events: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent'): $1_DiemAccount_AccountOperationsCapability;
function {:inline} $Update'$1_DiemAccount_AccountOperationsCapability'_limits_cap(s: $1_DiemAccount_AccountOperationsCapability, x: $1_AccountLimits_AccountLimitMutationCapability): $1_DiemAccount_AccountOperationsCapability {
    $1_DiemAccount_AccountOperationsCapability(x, $creation_events#$1_DiemAccount_AccountOperationsCapability(s))
}
function {:inline} $Update'$1_DiemAccount_AccountOperationsCapability'_creation_events(s: $1_DiemAccount_AccountOperationsCapability, x: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent'): $1_DiemAccount_AccountOperationsCapability {
    $1_DiemAccount_AccountOperationsCapability($limits_cap#$1_DiemAccount_AccountOperationsCapability(s), x)
}
function $IsValid'$1_DiemAccount_AccountOperationsCapability'(s: $1_DiemAccount_AccountOperationsCapability): bool {
    $IsValid'$1_AccountLimits_AccountLimitMutationCapability'($limits_cap#$1_DiemAccount_AccountOperationsCapability(s))
      && $IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''($creation_events#$1_DiemAccount_AccountOperationsCapability(s))
}
function {:inline} $IsEqual'$1_DiemAccount_AccountOperationsCapability'(s1: $1_DiemAccount_AccountOperationsCapability, s2: $1_DiemAccount_AccountOperationsCapability): bool {
    s1 == s2
}
var $1_DiemAccount_AccountOperationsCapability_$memory: $Memory $1_DiemAccount_AccountOperationsCapability;

// struct DiemAccount::AdminTransactionEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:127:5+150
type {:datatype} $1_DiemAccount_AdminTransactionEvent;
function {:constructor} $1_DiemAccount_AdminTransactionEvent($committed_timestamp_secs: int): $1_DiemAccount_AdminTransactionEvent;
function {:inline} $Update'$1_DiemAccount_AdminTransactionEvent'_committed_timestamp_secs(s: $1_DiemAccount_AdminTransactionEvent, x: int): $1_DiemAccount_AdminTransactionEvent {
    $1_DiemAccount_AdminTransactionEvent(x)
}
function $IsValid'$1_DiemAccount_AdminTransactionEvent'(s: $1_DiemAccount_AdminTransactionEvent): bool {
    $IsValid'u64'($committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent(s))
}
function {:inline} $IsEqual'$1_DiemAccount_AdminTransactionEvent'(s1: $1_DiemAccount_AdminTransactionEvent, s2: $1_DiemAccount_AdminTransactionEvent): bool {
    s1 == s2
}

// struct DiemAccount::CreateAccountEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:133:5+179
type {:datatype} $1_DiemAccount_CreateAccountEvent;
function {:constructor} $1_DiemAccount_CreateAccountEvent($created: int, $role_id: int): $1_DiemAccount_CreateAccountEvent;
function {:inline} $Update'$1_DiemAccount_CreateAccountEvent'_created(s: $1_DiemAccount_CreateAccountEvent, x: int): $1_DiemAccount_CreateAccountEvent {
    $1_DiemAccount_CreateAccountEvent(x, $role_id#$1_DiemAccount_CreateAccountEvent(s))
}
function {:inline} $Update'$1_DiemAccount_CreateAccountEvent'_role_id(s: $1_DiemAccount_CreateAccountEvent, x: int): $1_DiemAccount_CreateAccountEvent {
    $1_DiemAccount_CreateAccountEvent($created#$1_DiemAccount_CreateAccountEvent(s), x)
}
function $IsValid'$1_DiemAccount_CreateAccountEvent'(s: $1_DiemAccount_CreateAccountEvent): bool {
    $IsValid'address'($created#$1_DiemAccount_CreateAccountEvent(s))
      && $IsValid'u64'($role_id#$1_DiemAccount_CreateAccountEvent(s))
}
function {:inline} $IsEqual'$1_DiemAccount_CreateAccountEvent'(s1: $1_DiemAccount_CreateAccountEvent, s2: $1_DiemAccount_CreateAccountEvent): bool {
    s1 == s2
}

// struct DiemAccount::DiemWriteSetManager at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:97:5+115
type {:datatype} $1_DiemAccount_DiemWriteSetManager;
function {:constructor} $1_DiemAccount_DiemWriteSetManager($upgrade_events: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent'): $1_DiemAccount_DiemWriteSetManager;
function {:inline} $Update'$1_DiemAccount_DiemWriteSetManager'_upgrade_events(s: $1_DiemAccount_DiemWriteSetManager, x: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent'): $1_DiemAccount_DiemWriteSetManager {
    $1_DiemAccount_DiemWriteSetManager(x)
}
function $IsValid'$1_DiemAccount_DiemWriteSetManager'(s: $1_DiemAccount_DiemWriteSetManager): bool {
    $IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''($upgrade_events#$1_DiemAccount_DiemWriteSetManager(s))
}
function {:inline} $IsEqual'$1_DiemAccount_DiemWriteSetManager'(s1: $1_DiemAccount_DiemWriteSetManager, s2: $1_DiemAccount_DiemWriteSetManager): bool {
    s1 == s2
}
var $1_DiemAccount_DiemWriteSetManager_$memory: $Memory $1_DiemAccount_DiemWriteSetManager;

// struct DiemAccount::KeyRotationCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:83:5+208
type {:datatype} $1_DiemAccount_KeyRotationCapability;
function {:constructor} $1_DiemAccount_KeyRotationCapability($account_address: int): $1_DiemAccount_KeyRotationCapability;
function {:inline} $Update'$1_DiemAccount_KeyRotationCapability'_account_address(s: $1_DiemAccount_KeyRotationCapability, x: int): $1_DiemAccount_KeyRotationCapability {
    $1_DiemAccount_KeyRotationCapability(x)
}
function $IsValid'$1_DiemAccount_KeyRotationCapability'(s: $1_DiemAccount_KeyRotationCapability): bool {
    $IsValid'address'($account_address#$1_DiemAccount_KeyRotationCapability(s))
}
function {:inline} $IsEqual'$1_DiemAccount_KeyRotationCapability'(s1: $1_DiemAccount_KeyRotationCapability, s2: $1_DiemAccount_KeyRotationCapability): bool {
    s1 == s2
}

// struct DiemAccount::ReceivedPaymentEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:115:5+363
type {:datatype} $1_DiemAccount_ReceivedPaymentEvent;
function {:constructor} $1_DiemAccount_ReceivedPaymentEvent($amount: int, $currency_code: Vec (int), $payer: int, $metadata: Vec (int)): $1_DiemAccount_ReceivedPaymentEvent;
function {:inline} $Update'$1_DiemAccount_ReceivedPaymentEvent'_amount(s: $1_DiemAccount_ReceivedPaymentEvent, x: int): $1_DiemAccount_ReceivedPaymentEvent {
    $1_DiemAccount_ReceivedPaymentEvent(x, $currency_code#$1_DiemAccount_ReceivedPaymentEvent(s), $payer#$1_DiemAccount_ReceivedPaymentEvent(s), $metadata#$1_DiemAccount_ReceivedPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_ReceivedPaymentEvent'_currency_code(s: $1_DiemAccount_ReceivedPaymentEvent, x: Vec (int)): $1_DiemAccount_ReceivedPaymentEvent {
    $1_DiemAccount_ReceivedPaymentEvent($amount#$1_DiemAccount_ReceivedPaymentEvent(s), x, $payer#$1_DiemAccount_ReceivedPaymentEvent(s), $metadata#$1_DiemAccount_ReceivedPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_ReceivedPaymentEvent'_payer(s: $1_DiemAccount_ReceivedPaymentEvent, x: int): $1_DiemAccount_ReceivedPaymentEvent {
    $1_DiemAccount_ReceivedPaymentEvent($amount#$1_DiemAccount_ReceivedPaymentEvent(s), $currency_code#$1_DiemAccount_ReceivedPaymentEvent(s), x, $metadata#$1_DiemAccount_ReceivedPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_ReceivedPaymentEvent'_metadata(s: $1_DiemAccount_ReceivedPaymentEvent, x: Vec (int)): $1_DiemAccount_ReceivedPaymentEvent {
    $1_DiemAccount_ReceivedPaymentEvent($amount#$1_DiemAccount_ReceivedPaymentEvent(s), $currency_code#$1_DiemAccount_ReceivedPaymentEvent(s), $payer#$1_DiemAccount_ReceivedPaymentEvent(s), x)
}
function $IsValid'$1_DiemAccount_ReceivedPaymentEvent'(s: $1_DiemAccount_ReceivedPaymentEvent): bool {
    $IsValid'u64'($amount#$1_DiemAccount_ReceivedPaymentEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_DiemAccount_ReceivedPaymentEvent(s))
      && $IsValid'address'($payer#$1_DiemAccount_ReceivedPaymentEvent(s))
      && $IsValid'vec'u8''($metadata#$1_DiemAccount_ReceivedPaymentEvent(s))
}
function {:inline} $IsEqual'$1_DiemAccount_ReceivedPaymentEvent'(s1: $1_DiemAccount_ReceivedPaymentEvent, s2: $1_DiemAccount_ReceivedPaymentEvent): bool {
    s1 == s2
}

// struct DiemAccount::SentPaymentEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:103:5+346
type {:datatype} $1_DiemAccount_SentPaymentEvent;
function {:constructor} $1_DiemAccount_SentPaymentEvent($amount: int, $currency_code: Vec (int), $payee: int, $metadata: Vec (int)): $1_DiemAccount_SentPaymentEvent;
function {:inline} $Update'$1_DiemAccount_SentPaymentEvent'_amount(s: $1_DiemAccount_SentPaymentEvent, x: int): $1_DiemAccount_SentPaymentEvent {
    $1_DiemAccount_SentPaymentEvent(x, $currency_code#$1_DiemAccount_SentPaymentEvent(s), $payee#$1_DiemAccount_SentPaymentEvent(s), $metadata#$1_DiemAccount_SentPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_SentPaymentEvent'_currency_code(s: $1_DiemAccount_SentPaymentEvent, x: Vec (int)): $1_DiemAccount_SentPaymentEvent {
    $1_DiemAccount_SentPaymentEvent($amount#$1_DiemAccount_SentPaymentEvent(s), x, $payee#$1_DiemAccount_SentPaymentEvent(s), $metadata#$1_DiemAccount_SentPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_SentPaymentEvent'_payee(s: $1_DiemAccount_SentPaymentEvent, x: int): $1_DiemAccount_SentPaymentEvent {
    $1_DiemAccount_SentPaymentEvent($amount#$1_DiemAccount_SentPaymentEvent(s), $currency_code#$1_DiemAccount_SentPaymentEvent(s), x, $metadata#$1_DiemAccount_SentPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_SentPaymentEvent'_metadata(s: $1_DiemAccount_SentPaymentEvent, x: Vec (int)): $1_DiemAccount_SentPaymentEvent {
    $1_DiemAccount_SentPaymentEvent($amount#$1_DiemAccount_SentPaymentEvent(s), $currency_code#$1_DiemAccount_SentPaymentEvent(s), $payee#$1_DiemAccount_SentPaymentEvent(s), x)
}
function $IsValid'$1_DiemAccount_SentPaymentEvent'(s: $1_DiemAccount_SentPaymentEvent): bool {
    $IsValid'u64'($amount#$1_DiemAccount_SentPaymentEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_DiemAccount_SentPaymentEvent(s))
      && $IsValid'address'($payee#$1_DiemAccount_SentPaymentEvent(s))
      && $IsValid'vec'u8''($metadata#$1_DiemAccount_SentPaymentEvent(s))
}
function {:inline} $IsEqual'$1_DiemAccount_SentPaymentEvent'(s1: $1_DiemAccount_SentPaymentEvent, s2: $1_DiemAccount_SentPaymentEvent): bool {
    s1 == s2
}

// struct DiemAccount::WithdrawCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:74:5+202
type {:datatype} $1_DiemAccount_WithdrawCapability;
function {:constructor} $1_DiemAccount_WithdrawCapability($account_address: int): $1_DiemAccount_WithdrawCapability;
function {:inline} $Update'$1_DiemAccount_WithdrawCapability'_account_address(s: $1_DiemAccount_WithdrawCapability, x: int): $1_DiemAccount_WithdrawCapability {
    $1_DiemAccount_WithdrawCapability(x)
}
function $IsValid'$1_DiemAccount_WithdrawCapability'(s: $1_DiemAccount_WithdrawCapability): bool {
    $IsValid'address'($account_address#$1_DiemAccount_WithdrawCapability(s))
}
function {:inline} $IsEqual'$1_DiemAccount_WithdrawCapability'(s1: $1_DiemAccount_WithdrawCapability, s2: $1_DiemAccount_WithdrawCapability): bool {
    s1 == s2
}

// fun DiemAccount::exists_at [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1593:5+95
procedure {:inline 1} $1_DiemAccount_exists_at(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[check_addr]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1593:5+1
    assume {:print "$at(11,73018,73019)"} true;
    assume {:print "$track_local(30,21,0):", $t0} $t0 == $t0;

    // $t1 := exists<DiemAccount::DiemAccount>($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1594:9+6
    assume {:print "$at(11,73076,73082)"} true;
    $t1 := $ResourceExists($1_DiemAccount_DiemAccount_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1594:9+31
    assume {:print "$track_return(30,21,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1595:5+1
    assume {:print "$at(11,73112,73113)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1595:5+1
    $ret0 := $t1;
    return;

}

// fun DiemAccount::delegated_key_rotation_capability [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1569:5+247
procedure {:inline 1} $1_DiemAccount_delegated_key_rotation_capability(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: $1_DiemAccount_DiemAccount;
    var $t8: $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
    var $t9: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1569:5+1
    assume {:print "$at(11,71964,71965)"} true;
    assume {:print "$track_local(30,16,0):", $t0} $t0 == $t0;

    // $t3 := DiemAccount::exists_at($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:16+15
    assume {:print "$at(11,72072,72087)"} true;
    call $t3 := $1_DiemAccount_exists_at($t0);
    if ($abort_flag) {
        assume {:print "$at(11,72072,72087)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(30,16):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t5 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:55+8
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:33+31
    // >> opaque call: $t5 := Errors::not_published($t4)

    // $t6 := opaque begin: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:33+31

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:33+31
    assume $IsValid'u64'($t6);

    // assume Eq<u64>($t6, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:33+31
    assume $IsEqual'u64'($t6, 5);

    // $t6 := opaque end: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:33+31

    // trace_local[tmp#$2]($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:9+56
    assume {:print "$track_local(30,16,2):", $t6} $t6 == $t6;

    // trace_local[tmp#$1]($t3) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:9+56
    assume {:print "$track_local(30,16,1):", $t3} $t3 == $t3;

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:9+56
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:9+56
L1:

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:9+56
    assume {:print "$at(11,72065,72121)"} true;
    assume {:print "$track_abort(30,16):", $t6} $t6 == $t6;

    // $t4 := move($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:9+56
    $t4 := $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:9+56
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1572:53+4
    assume {:print "$at(11,72175,72179)"} true;
L0:

    // $t7 := get_global<DiemAccount::DiemAccount>($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1572:26+13
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t7 := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(11,72148,72161)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(30,16):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t8 := get_field<DiemAccount::DiemAccount>.key_rotation_capability($t7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1572:25+57
    $t8 := $key_rotation_capability#$1_DiemAccount_DiemAccount($t7);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1572:9+74
    // >> opaque call: $t8 := Option::is_none<DiemAccount::KeyRotationCapability>($t7)

    // $t9 := opaque begin: Option::is_none<DiemAccount::KeyRotationCapability>($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1572:9+74

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1572:9+74
    assume $IsValid'bool'($t9);

    // assume Eq<bool>($t9, Option::$is_none<DiemAccount::KeyRotationCapability>($t8)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1572:9+74
    assume $IsEqual'bool'($t9, $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($t8));

    // $t9 := opaque end: Option::is_none<DiemAccount::KeyRotationCapability>($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1572:9+74

    // trace_return[0]($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1572:9+74
    assume {:print "$track_return(30,16,0):", $t9} $t9 == $t9;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:5+1
    assume {:print "$at(11,72210,72211)"} true;
L2:

    // return $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:5+1
    $ret0 := $t9;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:5+1
L3:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun DiemAccount::extract_key_rotation_capability [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:946:5+649
procedure {:inline 1} $1_DiemAccount_extract_key_rotation_capability(_$t0: int) returns ($ret0: $1_DiemAccount_KeyRotationCapability)
{
    // declare local variables
    var $t1: $Mutation ($1_DiemAccount_DiemAccount);
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: bool;
    var $t12: int;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: $Mutation ($1_DiemAccount_DiemAccount);
    var $t18: $Mutation ($1_Option_Option'$1_DiemAccount_KeyRotationCapability');
    var $t19: $1_DiemAccount_KeyRotationCapability;
    var $t20: $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
    var $t21: bool;
    var $t0: int;
    var $temp_0'$1_DiemAccount_DiemAccount': $1_DiemAccount_DiemAccount;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'': $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t17));
    assume IsEmptyVec(p#$Mutation($t18));

    // bytecode translation starts here
    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+52
    assume {:print "$at(11,43085,43137)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:946:5+1
    assume {:print "$at(11,42191,42192)"} true;
    assume {:print "$track_local(30,22,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:948:31+27
    // >> opaque call: $t7 := Signer::address_of($t0)
    assume {:print "$at(11,42332,42359)"} true;

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:948:31+27

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:948:31+27
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:948:31+27
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:948:31+27

    // trace_local[account_address]($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:948:13+15
    assume {:print "$track_local(30,22,2):", $t8} $t8 == $t8;

    // $t9 := DiemAccount::delegated_key_rotation_capability($t8) on_abort goto L5 with $t10 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:951:14+50
    assume {:print "$at(11,42484,42534)"} true;
    call $t9 := $1_DiemAccount_delegated_key_rotation_capability($t8);
    if ($abort_flag) {
        assume {:print "$at(11,42484,42534)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(30,22):", $t10} $t10 == $t10;
        goto L5;
    }

    // $t11 := !($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:951:13+1
    call $t11 := $Not($t9);

    // $t12 := 9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:35+42
    assume {:print "$at(11,42570,42612)"} true;
    $t12 := 9;
    assume $IsValid'u64'($t12);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:13+65
    // >> opaque call: $t11 := Errors::invalid_state($t10)

    // $t13 := opaque begin: Errors::invalid_state($t12) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:13+65

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:13+65
    assume $IsValid'u64'($t13);

    // assume Eq<u64>($t13, 1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:13+65
    assume $IsEqual'u64'($t13, 1);

    // $t13 := opaque end: Errors::invalid_state($t12) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:13+65

    // trace_local[tmp#$4]($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:9+160
    assume {:print "$at(11,42463,42623)"} true;
    assume {:print "$track_local(30,22,4):", $t13} $t13 == $t13;

    // trace_local[tmp#$3]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:9+160
    assume {:print "$track_local(30,22,3):", $t11} $t11 == $t11;

    // if ($t11) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:9+160
    if ($t11) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:9+160
L1:

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:9+160
    assume {:print "$at(11,42463,42623)"} true;
    assume {:print "$track_abort(30,22):", $t13} $t13 == $t13;

    // $t10 := move($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:9+160
    $t10 := $t13;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:9+160
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:26+15
    assume {:print "$at(11,42650,42665)"} true;
L0:

    // $t14 := DiemAccount::exists_at($t8) on_abort goto L5 with $t10 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:16+26
    call $t14 := $1_DiemAccount_exists_at($t8);
    if ($abort_flag) {
        assume {:print "$at(11,42640,42666)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(30,22):", $t10} $t10 == $t10;
        goto L5;
    }

    // $t15 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:66+8
    $t15 := 0;
    assume $IsValid'u64'($t15);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:44+31
    // >> opaque call: $t14 := Errors::not_published($t13)

    // $t16 := opaque begin: Errors::not_published($t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:44+31

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:44+31
    assume $IsValid'u64'($t16);

    // assume Eq<u64>($t16, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:44+31
    assume $IsEqual'u64'($t16, 5);

    // $t16 := opaque end: Errors::not_published($t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:44+31

    // trace_local[tmp#$6]($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:9+67
    assume {:print "$track_local(30,22,6):", $t16} $t16 == $t16;

    // trace_local[tmp#$5]($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:9+67
    assume {:print "$track_local(30,22,5):", $t14} $t14 == $t14;

    // if ($t14) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:9+67
    if ($t14) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:9+67
L3:

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:9+67
    assume {:print "$at(11,42633,42700)"} true;
    assume {:print "$track_abort(30,22):", $t16} $t16 == $t16;

    // $t10 := move($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:9+67
    $t10 := $t16;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:9+67
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:955:54+15
    assume {:print "$at(11,42755,42770)"} true;
L2:

    // $t17 := borrow_global<DiemAccount::DiemAccount>($t8) on_abort goto L5 with $t10 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:955:23+17
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t8)) {
        call $ExecFailureAbort();
    } else {
        $t17 := $Mutation($Global($t8), EmptyVec(), $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t8));
    }
    if ($abort_flag) {
        assume {:print "$at(11,42724,42741)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(30,22):", $t10} $t10 == $t10;
        goto L5;
    }

    // trace_local[account#1787]($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:955:13+7
    $temp_0'$1_DiemAccount_DiemAccount' := $Dereference($t17);
    assume {:print "$track_local(30,22,1):", $temp_0'$1_DiemAccount_DiemAccount'} $temp_0'$1_DiemAccount_DiemAccount' == $temp_0'$1_DiemAccount_DiemAccount';

    // $t18 := borrow_field<DiemAccount::DiemAccount>.key_rotation_capability($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:25+36
    assume {:print "$at(11,42797,42833)"} true;
    $t18 := $ChildMutation($t17, 2, $key_rotation_capability#$1_DiemAccount_DiemAccount($Dereference($t17)));

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    // >> opaque call: $t17 := Option::extract<DiemAccount::KeyRotationCapability>($t16)

    // $t19 := opaque begin: Option::extract<DiemAccount::KeyRotationCapability>($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53

    // $t20 := read_ref($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    $t20 := $Dereference($t18);

    // assume Identical($t21, Option::$is_none<DiemAccount::KeyRotationCapability>($t18)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    assume ($t21 == $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($Dereference($t18)));

    // if ($t21) goto L8 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    if ($t21) { goto L8; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
L7:

    // assume And(Option::$is_none<DiemAccount::KeyRotationCapability>($t18), Eq(7, $t10)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    assume ($1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($Dereference($t18)) && $IsEqual'u8'(7, $t10));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    assume {:print "$at(11,42781,42834)"} true;
    assume {:print "$track_abort(30,22):", $t10} $t10 == $t10;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
L6:

    // havoc[mut]($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    havoc $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'';
    $t18 := $UpdateMutation($t18, $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'');
    assume $IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t18));

    // assume And(WellFormed($t18), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec($t18)), 1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    assume ($IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t18)) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($Dereference($t18))) <= 1));

    // assume WellFormed($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    assume $IsValid'$1_DiemAccount_KeyRotationCapability'($t19);

    // assume Eq<DiemAccount::KeyRotationCapability>($t19, Option::$borrow<DiemAccount::KeyRotationCapability>($t20)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    assume $IsEqual'$1_DiemAccount_KeyRotationCapability'($t19, $1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'($t20));

    // assume Option::$is_none<DiemAccount::KeyRotationCapability>($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    assume $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($Dereference($t18));

    // $t19 := opaque end: Option::extract<DiemAccount::KeyRotationCapability>($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53

    // write_back[Reference($t17).key_rotation_capability]($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    $t17 := $UpdateMutation($t17, $Update'$1_DiemAccount_DiemAccount'_key_rotation_capability($Dereference($t17), $Dereference($t18)));

    // pack_ref_deep($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53

    // write_back[DiemAccount::DiemAccount@]($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $GlobalLocationAddress($t17),
        $Dereference($t17));

    // trace_return[0]($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+53
    assume {:print "$track_return(30,22,0):", $t19} $t19 == $t19;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:957:5+1
    assume {:print "$at(11,42839,42840)"} true;
L4:

    // return $t19 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:957:5+1
    $ret0 := $t19;
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:957:5+1
L5:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:957:5+1
    $abort_code := $t10;
    $abort_flag := true;
    return;

    // label L8 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L8:

    // destroy($t17) at <internal>:1:1+10

    // goto L7 at <internal>:1:1+10
    goto L7;

}

// fun DiemAccount::restore_key_rotation_capability [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:5+323
procedure {:inline 1} $1_DiemAccount_restore_key_rotation_capability(_$t0: $1_DiemAccount_KeyRotationCapability) returns ()
{
    // declare local variables
    var $t1: $Mutation ($1_DiemAccount_DiemAccount);
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: $Mutation ($1_DiemAccount_DiemAccount);
    var $t11: $Mutation ($1_Option_Option'$1_DiemAccount_KeyRotationCapability');
    var $t12: bool;
    var $t0: $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_DiemAccount_DiemAccount': $1_DiemAccount_DiemAccount;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'': $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t11));

    // bytecode translation starts here
    // trace_local[cap]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:5+1
    assume {:print "$at(11,43730,43731)"} true;
    assume {:print "$track_local(30,34,0):", $t0} $t0 == $t0;

    // $t4 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:26+19
    assume {:print "$at(11,43853,43872)"} true;
    $t4 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t5 := DiemAccount::exists_at($t4) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:16+30
    call $t5 := $1_DiemAccount_exists_at($t4);
    if ($abort_flag) {
        assume {:print "$at(11,43843,43873)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(30,34):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t7 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:70+8
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:48+31
    // >> opaque call: $t7 := Errors::not_published($t6)

    // $t8 := opaque begin: Errors::not_published($t7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:48+31

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:48+31
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:48+31
    assume $IsEqual'u64'($t8, 5);

    // $t8 := opaque end: Errors::not_published($t7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:48+31

    // trace_local[tmp#$3]($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:9+71
    assume {:print "$track_local(30,34,3):", $t8} $t8 == $t8;

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:9+71
    assume {:print "$track_local(30,34,2):", $t5} $t5 == $t5;

    // if ($t5) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:9+71
    if ($t5) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:9+71
L1:

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:9+71
    assume {:print "$at(11,43836,43907)"} true;
    assume {:print "$track_abort(30,34):", $t8} $t8 == $t8;

    // $t6 := move($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:9+71
    $t6 := $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:9+71
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:981:54+3
    assume {:print "$at(11,43962,43965)"} true;
L0:

    // $t9 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:981:54+19
    $t9 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t10 := borrow_global<DiemAccount::DiemAccount>($t9) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:981:23+17
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t9)) {
        call $ExecFailureAbort();
    } else {
        $t10 := $Mutation($Global($t9), EmptyVec(), $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t9));
    }
    if ($abort_flag) {
        assume {:print "$at(11,43931,43948)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(30,34):", $t6} $t6 == $t6;
        goto L3;
    }

    // trace_local[account]($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:981:13+7
    $temp_0'$1_DiemAccount_DiemAccount' := $Dereference($t10);
    assume {:print "$track_local(30,34,1):", $temp_0'$1_DiemAccount_DiemAccount'} $temp_0'$1_DiemAccount_DiemAccount' == $temp_0'$1_DiemAccount_DiemAccount';

    // $t11 := borrow_field<DiemAccount::DiemAccount>.key_rotation_capability($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:22+36
    assume {:print "$at(11,44005,44041)"} true;
    $t11 := $ChildMutation($t10, 2, $key_rotation_capability#$1_DiemAccount_DiemAccount($Dereference($t10)));

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    // >> opaque call: Option::fill<DiemAccount::KeyRotationCapability>($t10, $t0)

    // opaque begin: Option::fill<DiemAccount::KeyRotationCapability>($t11, $t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55

    // assume Identical($t12, Option::$is_some<DiemAccount::KeyRotationCapability>($t11)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    assume ($t12 == $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($Dereference($t11)));

    // if ($t12) goto L6 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    if ($t12) { goto L6; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
L5:

    // assume And(Option::$is_some<DiemAccount::KeyRotationCapability>($t11), Eq(7, $t6)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    assume ($1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($Dereference($t11)) && $IsEqual'u8'(7, $t6));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    assume {:print "$at(11,43992,44047)"} true;
    assume {:print "$track_abort(30,34):", $t6} $t6 == $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
L4:

    // havoc[mut]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    havoc $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'';
    $t11 := $UpdateMutation($t11, $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'');
    assume $IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t11));

    // assume And(WellFormed($t11), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec($t11)), 1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    assume ($IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t11)) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($Dereference($t11))) <= 1));

    // assume Option::$is_some<DiemAccount::KeyRotationCapability>($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    assume $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($Dereference($t11));

    // assume Eq<DiemAccount::KeyRotationCapability>(Option::$borrow<DiemAccount::KeyRotationCapability>($t11), $t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    assume $IsEqual'$1_DiemAccount_KeyRotationCapability'($1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'($Dereference($t11)), $t0);

    // opaque end: Option::fill<DiemAccount::KeyRotationCapability>($t11, $t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55

    // write_back[Reference($t10).key_rotation_capability]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    $t10 := $UpdateMutation($t10, $Update'$1_DiemAccount_DiemAccount'_key_rotation_capability($Dereference($t10), $Dereference($t11)));

    // pack_ref_deep($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55

    // write_back[DiemAccount::DiemAccount@]($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+55
    $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $GlobalLocationAddress($t10),
        $Dereference($t10));

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:983:5+1
    assume {:print "$at(11,44052,44053)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:983:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:983:5+1
L3:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:983:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

    // label L6 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L6:

    // destroy($t10) at <internal>:1:1+10

    // goto L5 at <internal>:1:1+10
    goto L5;

}

// fun DiemAccount::rotate_authentication_key [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:907:5+612
procedure {:inline 1} $1_DiemAccount_rotate_authentication_key(_$t0: $1_DiemAccount_KeyRotationCapability, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: $Mutation ($1_DiemAccount_DiemAccount);
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: $Mutation ($1_DiemAccount_DiemAccount);
    var $t14: int;
    var $t15: int;
    var $t16: bool;
    var $t17: int;
    var $t18: int;
    var $t19: $Mutation (Vec (int));
    var $t0: $1_DiemAccount_KeyRotationCapability;
    var $t1: Vec (int);
    var $temp_0'$1_DiemAccount_DiemAccount': $1_DiemAccount_DiemAccount;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t13));
    assume IsEmptyVec(p#$Mutation($t19));

    // bytecode translation starts here
    // trace_local[cap]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:907:5+1
    assume {:print "$at(11,40344,40345)"} true;
    assume {:print "$track_local(30,36,0):", $t0} $t0 == $t0;

    // trace_local[new_authentication_key]($t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:907:5+1
    assume {:print "$track_local(30,36,1):", $t1} $t1 == $t1;

    // $t7 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:26+19
    assume {:print "$at(11,40518,40537)"} true;
    $t7 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t8 := DiemAccount::exists_at($t7) on_abort goto L5 with $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:16+30
    call $t8 := $1_DiemAccount_exists_at($t7);
    if ($abort_flag) {
        assume {:print "$at(11,40508,40538)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(30,36):", $t9} $t9 == $t9;
        goto L5;
    }

    // $t10 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:70+8
    $t10 := 0;
    assume $IsValid'u64'($t10);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:48+31
    // >> opaque call: $t10 := Errors::not_published($t9)

    // $t11 := opaque begin: Errors::not_published($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:48+31

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:48+31
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:48+31
    assume $IsEqual'u64'($t11, 5);

    // $t11 := opaque end: Errors::not_published($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:48+31

    // trace_local[tmp#$4]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:9+71
    assume {:print "$track_local(30,36,4):", $t11} $t11 == $t11;

    // trace_local[tmp#$3]($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:9+71
    assume {:print "$track_local(30,36,3):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:9+71
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:9+71
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:9+71

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:9+71
    assume {:print "$at(11,40501,40572)"} true;
    assume {:print "$track_abort(30,36):", $t11} $t11 == $t11;

    // $t9 := move($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:9+71
    $t9 := $t11;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:911:9+71
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:912:70+3
    assume {:print "$at(11,40643,40646)"} true;
L0:

    // $t12 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:912:70+19
    $t12 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t13 := borrow_global<DiemAccount::DiemAccount>($t12) on_abort goto L5 with $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:912:39+17
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t12)) {
        call $ExecFailureAbort();
    } else {
        $t13 := $Mutation($Global($t12), EmptyVec(), $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t12));
    }
    if ($abort_flag) {
        assume {:print "$at(11,40612,40629)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(30,36):", $t9} $t9 == $t9;
        goto L5;
    }

    // trace_local[sender_account_resource]($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:912:13+23
    $temp_0'$1_DiemAccount_DiemAccount' := $Dereference($t13);
    assume {:print "$track_local(30,36,2):", $temp_0'$1_DiemAccount_DiemAccount'} $temp_0'$1_DiemAccount_DiemAccount' == $temp_0'$1_DiemAccount_DiemAccount';

    // $t14 := Vector::length<u8>($t1) on_abort goto L5 with $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:915:13+39
    assume {:print "$at(11,40748,40787)"} true;
    call $t14 := $1_Vector_length'u8'($t1);
    if ($abort_flag) {
        assume {:print "$at(11,40748,40787)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(30,36):", $t9} $t9 == $t9;
        goto L5;
    }

    // $t15 := 32 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:915:56+2
    $t15 := 32;
    assume $IsValid'u64'($t15);

    // $t16 := ==($t14, $t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:915:53+2
    $t16 := $IsEqual'u64'($t14, $t15);

    // $t17 := 8 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:38+29
    assume {:print "$at(11,40832,40861)"} true;
    $t17 := 8;
    assume $IsValid'u64'($t17);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:13+55
    // >> opaque call: $t17 := Errors::invalid_argument($t16)

    // $t18 := opaque begin: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:13+55

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:13+55
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:13+55
    assume $IsEqual'u64'($t18, 7);

    // $t18 := opaque end: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:13+55

    // trace_local[tmp#$6]($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:9+144
    assume {:print "$at(11,40728,40872)"} true;
    assume {:print "$track_local(30,36,6):", $t18} $t18 == $t18;

    // trace_local[tmp#$5]($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:9+144
    assume {:print "$track_local(30,36,5):", $t16} $t16 == $t16;

    // if ($t16) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:9+144
    if ($t16) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:9+144
L3:

    // pack_ref_deep($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:9+144

    // destroy($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:9+144

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:9+144
    assume {:print "$at(11,40728,40872)"} true;
    assume {:print "$track_abort(30,36):", $t18} $t18 == $t18;

    // $t9 := move($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:9+144
    $t9 := $t18;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:9+144
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:54+22
    assume {:print "$at(11,40927,40949)"} true;
L2:

    // $t19 := borrow_field<DiemAccount::DiemAccount>.authentication_key($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:9+42
    $t19 := $ChildMutation($t13, 0, $authentication_key#$1_DiemAccount_DiemAccount($Dereference($t13)));

    // write_ref($t19, $t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:9+67
    $t19 := $UpdateMutation($t19, $t1);

    // write_back[Reference($t13).authentication_key]($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:9+67
    $t13 := $UpdateMutation($t13, $Update'$1_DiemAccount_DiemAccount'_authentication_key($Dereference($t13), $Dereference($t19)));

    // pack_ref_deep($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:9+67

    // write_back[DiemAccount::DiemAccount@]($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:9+67
    $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $GlobalLocationAddress($t13),
        $Dereference($t13));

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:5+1
    assume {:print "$at(11,40955,40956)"} true;
L4:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:5+1
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:5+1
L5:

    // abort($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:5+1
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:55:5+75
function {:inline} $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory: $Memory $1_DiemBlock_BlockMetadata): bool {
    $ResourceExists($1_DiemBlock_BlockMetadata_$memory, 173345816)
}

// struct DiemBlock::BlockMetadata at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:9:5+236
type {:datatype} $1_DiemBlock_BlockMetadata;
function {:constructor} $1_DiemBlock_BlockMetadata($height: int, $new_block_events: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent'): $1_DiemBlock_BlockMetadata;
function {:inline} $Update'$1_DiemBlock_BlockMetadata'_height(s: $1_DiemBlock_BlockMetadata, x: int): $1_DiemBlock_BlockMetadata {
    $1_DiemBlock_BlockMetadata(x, $new_block_events#$1_DiemBlock_BlockMetadata(s))
}
function {:inline} $Update'$1_DiemBlock_BlockMetadata'_new_block_events(s: $1_DiemBlock_BlockMetadata, x: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent'): $1_DiemBlock_BlockMetadata {
    $1_DiemBlock_BlockMetadata($height#$1_DiemBlock_BlockMetadata(s), x)
}
function $IsValid'$1_DiemBlock_BlockMetadata'(s: $1_DiemBlock_BlockMetadata): bool {
    $IsValid'u64'($height#$1_DiemBlock_BlockMetadata(s))
      && $IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''($new_block_events#$1_DiemBlock_BlockMetadata(s))
}
function {:inline} $IsEqual'$1_DiemBlock_BlockMetadata'(s1: $1_DiemBlock_BlockMetadata, s2: $1_DiemBlock_BlockMetadata): bool {
    s1 == s2
}
var $1_DiemBlock_BlockMetadata_$memory: $Memory $1_DiemBlock_BlockMetadata;

// struct DiemBlock::NewBlockEvent at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:16:5+234
type {:datatype} $1_DiemBlock_NewBlockEvent;
function {:constructor} $1_DiemBlock_NewBlockEvent($round: int, $proposer: int, $previous_block_votes: Vec (int), $time_microseconds: int): $1_DiemBlock_NewBlockEvent;
function {:inline} $Update'$1_DiemBlock_NewBlockEvent'_round(s: $1_DiemBlock_NewBlockEvent, x: int): $1_DiemBlock_NewBlockEvent {
    $1_DiemBlock_NewBlockEvent(x, $proposer#$1_DiemBlock_NewBlockEvent(s), $previous_block_votes#$1_DiemBlock_NewBlockEvent(s), $time_microseconds#$1_DiemBlock_NewBlockEvent(s))
}
function {:inline} $Update'$1_DiemBlock_NewBlockEvent'_proposer(s: $1_DiemBlock_NewBlockEvent, x: int): $1_DiemBlock_NewBlockEvent {
    $1_DiemBlock_NewBlockEvent($round#$1_DiemBlock_NewBlockEvent(s), x, $previous_block_votes#$1_DiemBlock_NewBlockEvent(s), $time_microseconds#$1_DiemBlock_NewBlockEvent(s))
}
function {:inline} $Update'$1_DiemBlock_NewBlockEvent'_previous_block_votes(s: $1_DiemBlock_NewBlockEvent, x: Vec (int)): $1_DiemBlock_NewBlockEvent {
    $1_DiemBlock_NewBlockEvent($round#$1_DiemBlock_NewBlockEvent(s), $proposer#$1_DiemBlock_NewBlockEvent(s), x, $time_microseconds#$1_DiemBlock_NewBlockEvent(s))
}
function {:inline} $Update'$1_DiemBlock_NewBlockEvent'_time_microseconds(s: $1_DiemBlock_NewBlockEvent, x: int): $1_DiemBlock_NewBlockEvent {
    $1_DiemBlock_NewBlockEvent($round#$1_DiemBlock_NewBlockEvent(s), $proposer#$1_DiemBlock_NewBlockEvent(s), $previous_block_votes#$1_DiemBlock_NewBlockEvent(s), x)
}
function $IsValid'$1_DiemBlock_NewBlockEvent'(s: $1_DiemBlock_NewBlockEvent): bool {
    $IsValid'u64'($round#$1_DiemBlock_NewBlockEvent(s))
      && $IsValid'address'($proposer#$1_DiemBlock_NewBlockEvent(s))
      && $IsValid'vec'address''($previous_block_votes#$1_DiemBlock_NewBlockEvent(s))
      && $IsValid'u64'($time_microseconds#$1_DiemBlock_NewBlockEvent(s))
}
function {:inline} $IsEqual'$1_DiemBlock_NewBlockEvent'(s1: $1_DiemBlock_NewBlockEvent, s2: $1_DiemBlock_NewBlockEvent): bool {
    s1 == s2
}

// fun DiemBlock::is_initialized [baseline] at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:55:5+75
procedure {:inline 1} $1_DiemBlock_is_initialized() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:56:31+9
    assume {:print "$at(12,2101,2110)"} true;
    $t0 := 173345816;
    assume $IsValid'address'($t0);

    // $t1 := exists<DiemBlock::BlockMetadata>($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:56:9+6
    $t1 := $ResourceExists($1_DiemBlock_BlockMetadata_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:56:9+32
    assume {:print "$track_return(31,3,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:57:5+1
    assume {:print "$at(12,2116,2117)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:57:5+1
    $ret0 := $t1;
    return;

}

// fun DiemBlock::initialize_block_metadata [baseline] at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:32:5+531
procedure {:inline 1} $1_DiemBlock_initialize_block_metadata(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: bool;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent';
    var $t12: $1_DiemBlock_BlockMetadata;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:32:5+1
    assume {:print "$at(12,1130,1131)"} true;
    assume {:print "$track_local(31,2,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(12,1195,1226)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31

    // assume Identical($t3, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    assume ($t3 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t3) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    if ($t3) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t4)) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    assume {:print "$at(12,1195,1226)"} true;
    assume {:print "$track_abort(31,2):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    // >> opaque call: CoreAddresses::assert_diem_root($t0)
    assume {:print "$at(12,1312,1352)"} true;

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40

    // assume Identical($t5, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    assume ($t5 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t5) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    if ($t5) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
L7:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t4)) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    assume {:print "$at(12,1312,1352)"} true;
    assume {:print "$track_abort(31,2):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
L6:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40

    // $t6 := DiemBlock::is_initialized() on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:17+16
    assume {:print "$at(12,1371,1387)"} true;
    call $t6 := $1_DiemBlock_is_initialized();
    if ($abort_flag) {
        assume {:print "$at(12,1371,1387)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(31,2):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t7 := !($t6) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:16+1
    call $t7 := $Not($t6);

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:61+15
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:35+42
    // >> opaque call: $t6 := Errors::already_published($t5)

    // $t9 := opaque begin: Errors::already_published($t8) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:35+42

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:35+42
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 6) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:35+42
    assume $IsEqual'u64'($t9, 6);

    // $t9 := opaque end: Errors::already_published($t8) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:35+42

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    assume {:print "$track_local(31,2,2):", $t9} $t9 == $t9;

    // trace_local[tmp#$1]($t7) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    assume {:print "$track_local(31,2,1):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    assume {:print "$at(12,1363,1432)"} true;
    assume {:print "$track_abort(31,2):", $t9} $t9 == $t9;

    // $t4 := move($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    $t4 := $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:13+7
    assume {:print "$at(12,1478,1485)"} true;
L0:

    // $t10 := 0 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:41:25+1
    assume {:print "$at(12,1539,1540)"} true;
    $t10 := 0;
    assume $IsValid'u64'($t10);

    // $t11 := Event::new_event_handle<DiemBlock::NewBlockEvent>($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:42:35+53
    assume {:print "$at(12,1576,1629)"} true;
    call $t11 := $1_Event_new_event_handle'$1_DiemBlock_NewBlockEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(12,1576,1629)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(31,2):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t12 := pack DiemBlock::BlockMetadata($t10, $t11) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:40:13+145
    assume {:print "$at(12,1499,1644)"} true;
    $t12 := $1_DiemBlock_BlockMetadata($t10, $t11);

    // move_to<DiemBlock::BlockMetadata>($t12, $t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:38:9+7
    assume {:print "$at(12,1442,1449)"} true;
    if ($ResourceExists($1_DiemBlock_BlockMetadata_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_DiemBlock_BlockMetadata_$memory := $ResourceUpdate($1_DiemBlock_BlockMetadata_$memory, $t0, $t12);
    }
    if ($abort_flag) {
        assume {:print "$at(12,1442,1449)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(31,2):", $t4} $t4 == $t4;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:45:5+1
    assume {:print "$at(12,1660,1661)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:45:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:45:5+1
L3:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:45:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// struct DiemVMConfig::DiemVMConfig at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:13:5+120
type {:datatype} $1_DiemVMConfig_DiemVMConfig;
function {:constructor} $1_DiemVMConfig_DiemVMConfig($gas_schedule: $1_DiemVMConfig_GasSchedule): $1_DiemVMConfig_DiemVMConfig;
function {:inline} $Update'$1_DiemVMConfig_DiemVMConfig'_gas_schedule(s: $1_DiemVMConfig_DiemVMConfig, x: $1_DiemVMConfig_GasSchedule): $1_DiemVMConfig_DiemVMConfig {
    $1_DiemVMConfig_DiemVMConfig(x)
}
function $IsValid'$1_DiemVMConfig_DiemVMConfig'(s: $1_DiemVMConfig_DiemVMConfig): bool {
    $IsValid'$1_DiemVMConfig_GasSchedule'($gas_schedule#$1_DiemVMConfig_DiemVMConfig(s))
}
function {:inline} $IsEqual'$1_DiemVMConfig_DiemVMConfig'(s1: $1_DiemVMConfig_DiemVMConfig, s2: $1_DiemVMConfig_DiemVMConfig): bool {
    s1 == s2
}

// struct DiemVMConfig::GasConstants at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:35:5+1690
type {:datatype} $1_DiemVMConfig_GasConstants;
function {:constructor} $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost: int, $global_memory_per_byte_write_cost: int, $min_transaction_gas_units: int, $large_transaction_cutoff: int, $intrinsic_gas_per_byte: int, $maximum_number_of_gas_units: int, $min_price_per_gas_unit: int, $max_price_per_gas_unit: int, $max_transaction_size_in_bytes: int, $gas_unit_scaling_factor: int, $default_account_size: int): $1_DiemVMConfig_GasConstants;
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_global_memory_per_byte_cost(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants(x, $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_global_memory_per_byte_write_cost(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), x, $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_min_transaction_gas_units(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), x, $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_large_transaction_cutoff(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), x, $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_intrinsic_gas_per_byte(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), x, $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_maximum_number_of_gas_units(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), x, $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_min_price_per_gas_unit(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), x, $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_max_price_per_gas_unit(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), x, $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_max_transaction_size_in_bytes(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), x, $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_gas_unit_scaling_factor(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), x, $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_default_account_size(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), x)
}
function $IsValid'$1_DiemVMConfig_GasConstants'(s: $1_DiemVMConfig_GasConstants): bool {
    $IsValid'u64'($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $IsEqual'$1_DiemVMConfig_GasConstants'(s1: $1_DiemVMConfig_GasConstants, s2: $1_DiemVMConfig_GasConstants): bool {
    s1 == s2
}

// struct DiemVMConfig::GasSchedule at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:29:5+164
type {:datatype} $1_DiemVMConfig_GasSchedule;
function {:constructor} $1_DiemVMConfig_GasSchedule($instruction_schedule: Vec (int), $native_schedule: Vec (int), $gas_constants: $1_DiemVMConfig_GasConstants): $1_DiemVMConfig_GasSchedule;
function {:inline} $Update'$1_DiemVMConfig_GasSchedule'_instruction_schedule(s: $1_DiemVMConfig_GasSchedule, x: Vec (int)): $1_DiemVMConfig_GasSchedule {
    $1_DiemVMConfig_GasSchedule(x, $native_schedule#$1_DiemVMConfig_GasSchedule(s), $gas_constants#$1_DiemVMConfig_GasSchedule(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasSchedule'_native_schedule(s: $1_DiemVMConfig_GasSchedule, x: Vec (int)): $1_DiemVMConfig_GasSchedule {
    $1_DiemVMConfig_GasSchedule($instruction_schedule#$1_DiemVMConfig_GasSchedule(s), x, $gas_constants#$1_DiemVMConfig_GasSchedule(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasSchedule'_gas_constants(s: $1_DiemVMConfig_GasSchedule, x: $1_DiemVMConfig_GasConstants): $1_DiemVMConfig_GasSchedule {
    $1_DiemVMConfig_GasSchedule($instruction_schedule#$1_DiemVMConfig_GasSchedule(s), $native_schedule#$1_DiemVMConfig_GasSchedule(s), x)
}
function $IsValid'$1_DiemVMConfig_GasSchedule'(s: $1_DiemVMConfig_GasSchedule): bool {
    $IsValid'vec'u8''($instruction_schedule#$1_DiemVMConfig_GasSchedule(s))
      && $IsValid'vec'u8''($native_schedule#$1_DiemVMConfig_GasSchedule(s))
      && $IsValid'$1_DiemVMConfig_GasConstants'($gas_constants#$1_DiemVMConfig_GasSchedule(s))
}
function {:inline} $IsEqual'$1_DiemVMConfig_GasSchedule'(s1: $1_DiemVMConfig_GasSchedule, s2: $1_DiemVMConfig_GasSchedule): bool {
    s1 == s2
}

// fun DiemVMConfig::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:73:5+1150
procedure {:inline 1} $1_DiemVMConfig_initialize(_$t0: int, _$t1: Vec (int), _$t2: Vec (int)) returns ()
{
    // declare local variables
    var $t3: $1_DiemVMConfig_GasConstants;
    var $t4: $1_DiemVMConfig_GasConstants;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t21: int;
    var $t22: $1_DiemVMConfig_GasConstants;
    var $t23: $1_DiemVMConfig_GasSchedule;
    var $t24: $1_DiemVMConfig_DiemVMConfig;
    var $t25: int;
    var $t26: bool;
    var $t0: int;
    var $t1: Vec (int);
    var $t2: Vec (int);
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'': $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'': $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'vec'u8'': Vec (int);
    var $1_DiemConfig_Configuration_$memory#166: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // bytecode translation starts here
    // assume Identical($t4, pack DiemVMConfig::GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:109:9+528
    assume {:print "$at(19,4599,5127)"} true;
    assume ($t4 == $1_DiemVMConfig_GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:73:5+1
    assume {:print "$at(19,3418,3419)"} true;
    assume {:print "$track_local(32,0,0):", $t0} $t0 == $t0;

    // trace_local[instruction_schedule]($t1) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:73:5+1
    assume {:print "$track_local(32,0,1):", $t1} $t1 == $t1;

    // trace_local[native_schedule]($t2) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:73:5+1
    assume {:print "$track_local(32,0,2):", $t2} $t2 == $t2;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(19,3565,3596)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31

    // assume Identical($t7, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    assume ($t7 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t7) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    if ($t7) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t8)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    assume {:print "$at(19,3565,3596)"} true;
    assume {:print "$track_abort(32,0):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(19,3694,3729)"} true;

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    assume {:print "$at(19,3694,3729)"} true;

    // assume Identical($t10, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    assume ($t10 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t10) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    if ($t10) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t8)), And(Not(exists<Roles::RoleId>($t9)), Eq(5, $t8))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0), Eq(3, $t8))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t8))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t8)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t9) && $IsEqual'u8'(5, $t8))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0) && $IsEqual'u8'(3, $t8))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    assume {:print "$at(19,3694,3729)"} true;
    assume {:print "$track_abort(32,0):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35

    // $t11 := 4 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:42+1
    assume {:print "$at(19,3816,3817)"} true;
    $t11 := 4;
    assume $IsValid'u64'($t11);

    // $t12 := 9 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:85:48+1
    assume {:print "$at(19,3866,3867)"} true;
    $t12 := 9;
    assume $IsValid'u64'($t12);

    // $t13 := 600 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:86:40+3
    assume {:print "$at(19,3908,3911)"} true;
    $t13 := 600;
    assume $IsValid'u64'($t13);

    // $t14 := 600 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:87:39+3
    assume {:print "$at(19,3951,3954)"} true;
    $t14 := 600;
    assume $IsValid'u64'($t14);

    // $t15 := 8 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:88:37+1
    assume {:print "$at(19,3992,3993)"} true;
    $t15 := 8;
    assume $IsValid'u64'($t15);

    // $t16 := 4000000 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:89:42+7
    assume {:print "$at(19,4036,4043)"} true;
    $t16 := 4000000;
    assume $IsValid'u64'($t16);

    // $t17 := 0 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:90:37+1
    assume {:print "$at(19,4081,4082)"} true;
    $t17 := 0;
    assume $IsValid'u64'($t17);

    // $t18 := 10000 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:91:37+5
    assume {:print "$at(19,4120,4125)"} true;
    $t18 := 10000;
    assume $IsValid'u64'($t18);

    // $t19 := 4096 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:92:44+4
    assume {:print "$at(19,4170,4174)"} true;
    $t19 := 4096;
    assume $IsValid'u64'($t19);

    // $t20 := 1000 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:93:38+4
    assume {:print "$at(19,4213,4217)"} true;
    $t20 := 1000;
    assume $IsValid'u64'($t20);

    // $t21 := 800 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:94:35+3
    assume {:print "$at(19,4253,4256)"} true;
    $t21 := 800;
    assume $IsValid'u64'($t21);

    // $t22 := pack DiemVMConfig::GasConstants($t11, $t12, $t13, $t14, $t15, $t16, $t17, $t18, $t19, $t20, $t21) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:83:29+507
    assume {:print "$at(19,3760,4267)"} true;
    $t22 := $1_DiemVMConfig_GasConstants($t11, $t12, $t13, $t14, $t15, $t16, $t17, $t18, $t19, $t20, $t21);

    // $t23 := pack DiemVMConfig::GasSchedule($t1, $t2, $t22) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:31+145
    assume {:print "$at(19,4391,4536)"} true;
    $t23 := $1_DiemVMConfig_GasSchedule($t1, $t2, $t22);

    // $t24 := pack DiemVMConfig::DiemVMConfig($t23) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:99:13+204
    assume {:print "$at(19,4346,4550)"} true;
    $t24 := $1_DiemVMConfig_DiemVMConfig($t23);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    // >> opaque call: DiemConfig::publish_new_config<DiemVMConfig::DiemVMConfig>($t0, $t17)
    assume {:print "$at(19,4278,4561)"} true;

    // assume Identical($t25, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t25 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemVMConfig::DiemVMConfig>($t0, $t24) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume {:print "$at(19,4278,4561)"} true;

    // assume Identical($t26, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>(), exists<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t25))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t25)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume ($t26 == (((($1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t25)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t25)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t26) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    if ($t26) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>(), exists<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t25)), Eq(5, $t8))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t25)), 0), Eq(3, $t8))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t8))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume (((($1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t25) && $IsEqual'u8'(5, $t8))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t25)), 0) && $IsEqual'u8'(3, $t8))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume {:print "$at(19,4278,4561)"} true;
    assume {:print "$track_abort(32,0):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
L7:

    // @166 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    $1_DiemConfig_Configuration_$memory#166 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'';
        $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816);
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816, $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816);
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>() at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory);

    // assume Eq<DiemVMConfig::DiemVMConfig>(DiemConfig::$get<DiemVMConfig::DiemVMConfig>(), $t24) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume $IsEqual'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_$get'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory), $t24);

    // assume Eq<bool>(DiemConfig::spec_has_config[@166](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#166), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemVMConfig::DiemVMConfig>($t0, $t24) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:107:5+1
    assume {:print "$at(19,4567,4568)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:107:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:107:5+1
L2:

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:107:5+1
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// struct DiemVersion::DiemVersion at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:9:5+68
type {:datatype} $1_DiemVersion_DiemVersion;
function {:constructor} $1_DiemVersion_DiemVersion($major: int): $1_DiemVersion_DiemVersion;
function {:inline} $Update'$1_DiemVersion_DiemVersion'_major(s: $1_DiemVersion_DiemVersion, x: int): $1_DiemVersion_DiemVersion {
    $1_DiemVersion_DiemVersion(x)
}
function $IsValid'$1_DiemVersion_DiemVersion'(s: $1_DiemVersion_DiemVersion): bool {
    $IsValid'u64'($major#$1_DiemVersion_DiemVersion(s))
}
function {:inline} $IsEqual'$1_DiemVersion_DiemVersion'(s1: $1_DiemVersion_DiemVersion, s2: $1_DiemVersion_DiemVersion): bool {
    s1 == s2
}

// fun DiemVersion::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:17:5+298
procedure {:inline 1} $1_DiemVersion_initialize(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: $1_DiemVersion_DiemVersion;
    var $t9: int;
    var $t10: bool;
    var $t0: int;
    var $t1: int;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'': $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'': $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $1_DiemConfig_Configuration_$memory#160: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:17:5+1
    assume {:print "$at(20,618,619)"} true;
    assume {:print "$track_local(33,0,0):", $t0} $t0 == $t0;

    // trace_local[initial_version]($t1) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:17:5+1
    assume {:print "$track_local(33,0,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(20,693,724)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31

    // assume Identical($t4, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    assume ($t4 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t4) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    if ($t4) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t5)) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    assume {:print "$at(20,693,724)"} true;
    assume {:print "$track_abort(33,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(20,734,769)"} true;

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    assume {:print "$at(20,734,769)"} true;

    // assume Identical($t7, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t6))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t6)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    assume ($t7 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t6)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t6)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t7) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    if ($t7) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5)), And(Not(exists<Roles::RoleId>($t6)), Eq(5, $t5))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t6)), 0), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t5)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t6) && $IsEqual'u8'(5, $t5))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t6)), 0) && $IsEqual'u8'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    assume {:print "$at(20,734,769)"} true;
    assume {:print "$track_abort(33,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35

    // $t8 := pack DiemVersion::DiemVersion($t1) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:13+38
    assume {:print "$at(20,860,898)"} true;
    $t8 := $1_DiemVersion_DiemVersion($t1);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    // >> opaque call: DiemConfig::publish_new_config<DiemVersion::DiemVersion>($t0, $t2)
    assume {:print "$at(20,779,909)"} true;

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemVersion::DiemVersion>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume {:print "$at(20,779,909)"} true;

    // assume Identical($t10, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVersion::DiemVersion>(), exists<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume ($t10 == (((($1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t10) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    if ($t10) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVersion::DiemVersion>(), exists<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t9)), Eq(5, $t5))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume (((($1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t9) && $IsEqual'u8'(5, $t5))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0) && $IsEqual'u8'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume {:print "$at(20,779,909)"} true;
    assume {:print "$track_abort(33,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
L7:

    // @160 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    $1_DiemConfig_Configuration_$memory#160 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemVersion::DiemVersion>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'';
        $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, 173345816);
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, 173345816, $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, 173345816);
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemVersion::DiemVersion>() at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory);

    // assume Eq<DiemVersion::DiemVersion>(DiemConfig::$get<DiemVersion::DiemVersion>(), $t8) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume $IsEqual'$1_DiemVersion_DiemVersion'($1_DiemConfig_$get'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory), $t8);

    // assume Eq<bool>(DiemConfig::spec_has_config[@160](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#160), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemVersion::DiemVersion>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:24:5+1
    assume {:print "$at(20,915,916)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:24:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:24:5+1
L2:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:24:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun Genesis::initialize [verification] at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
procedure {:timeLimit 40} $1_Genesis_initialize$verify(_$t0: int, _$t1: int, _$t2: Vec (int), _$t3: Vec (int), _$t4: Vec (Vec (int)), _$t5: bool, _$t6: Vec (int), _$t7: Vec (int), _$t8: int, _$t9: int) returns ()
{
    // declare local variables
    var $t10: int;
    var $t11: $1_DiemAccount_KeyRotationCapability;
    var $t12: int;
    var $t13: $1_DiemAccount_KeyRotationCapability;
    var $t14: Vec (int);
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: bool;
    var $t20: int;
    var $t21: int;
    var $t22: bool;
    var $t23: bool;
    var $t24: $1_DiemConfig_Configuration;
    var $t25: int;
    var $t26: int;
    var $t27: int;
    var $t28: int;
    var $t29: $1_DiemConfig_Configuration;
    var $t30: int;
    var $t31: int;
    var $t32: int;
    var $t33: int;
    var $t34: int;
    var $t35: $1_DiemConfig_Configuration;
    var $t36: int;
    var $t37: int;
    var $t38: int;
    var $t39: int;
    var $t40: int;
    var $t41: int;
    var $t42: int;
    var $t43: int;
    var $t44: int;
    var $t45: int;
    var $t46: int;
    var $t47: $1_DiemAccount_KeyRotationCapability;
    var $t48: int;
    var $t49: $1_DiemAccount_KeyRotationCapability;
    var $t50: int;
    var $t51: int;
    var $t52: $1_DiemVMConfig_GasConstants;
    var $t53: int;
    var $t54: int;
    var $t0: int;
    var $t1: int;
    var $t2: Vec (int);
    var $t3: Vec (int);
    var $t4: Vec (Vec (int));
    var $t5: bool;
    var $t6: Vec (int);
    var $t7: Vec (int);
    var $t8: int;
    var $t9: int;
    var $temp_0'$1_AccountFreezing_FreezingBit': $1_AccountFreezing_FreezingBit;
    var $temp_0'$1_ChainId_ChainId': $1_ChainId_ChainId;
    var $temp_0'$1_DiemAccount_AccountOperationsCapability': $1_DiemAccount_AccountOperationsCapability;
    var $temp_0'$1_DiemAccount_DiemAccount': $1_DiemAccount_DiemAccount;
    var $temp_0'$1_DiemAccount_DiemWriteSetManager': $1_DiemAccount_DiemWriteSetManager;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_DiemConfig_Configuration': $1_DiemConfig_Configuration;
    var $temp_0'$1_Event_EventHandleGenerator': $1_Event_EventHandleGenerator;
    var $temp_0'$1_Roles_RoleId': $1_Roles_RoleId;
    var $temp_0'$1_SlidingNonce_SlidingNonce': $1_SlidingNonce_SlidingNonce;
    var $temp_0'$1_VASPDomain_VASPDomainManager': $1_VASPDomain_VASPDomainManager;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'u8': int;
    var $temp_0'vec'u8'': Vec (int);
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;
    $t5 := _$t5;
    $t6 := _$t6;
    $t7 := _$t7;
    $t8 := _$t8;
    $t9 := _$t9;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:169:9+72
    assume {:print "$at(22,1043,3408)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:74:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:347:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:354:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:280:9+88
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:283:9+98
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:409:9+62
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:559:9+151
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:618:8+133
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Eq<u64>(select DiemSystem::ValidatorInfo.consensus_voting_power(Index(DiemSystem::spec_get_validators(), i1)), 1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:626:8+119
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($IsEqual'u64'($consensus_voting_power#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)), 1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+98
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assume And(forall mint_cap_owner: TypeDomain<address>() where exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner): Roles::spec_has_treasury_compliance_role_addr(mint_cap_owner), forall mint_cap_owner: TypeDomain<address>() where exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner): Roles::spec_has_treasury_compliance_role_addr(mint_cap_owner)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1582:9+212
    assume ((forall mint_cap_owner: int :: $IsValid'address'(mint_cap_owner) ==> ($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner))  ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, mint_cap_owner))) && (forall mint_cap_owner: int :: $IsValid'address'(mint_cap_owner) ==> ($ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner))  ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, mint_cap_owner))));

    // assume And(forall addr1: TypeDomain<address>(): Implies(exists<Diem::BurnCapability<XUS::XUS>>(addr1), Roles::spec_has_treasury_compliance_role_addr(addr1)), forall addr1: TypeDomain<address>(): Implies(exists<Diem::BurnCapability<XDX::XDX>>(addr1), Roles::spec_has_treasury_compliance_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1660:9+203
    assume ((forall addr1: int :: $IsValid'address'(addr1) ==> (($ResourceExists($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, addr1) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr1)))) && (forall addr1: int :: $IsValid'address'(addr1) ==> (($ResourceExists($1_Diem_BurnCapability'$1_XDX_XDX'_$memory, addr1) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume And(forall addr1: TypeDomain<address>(): Implies(Or(exists<Diem::PreburnQueue<XUS::XUS>>(addr1), exists<Diem::Preburn<XUS::XUS>>(addr1)), Roles::spec_has_designated_dealer_role_addr(addr1)), forall addr1: TypeDomain<address>(): Implies(Or(exists<Diem::PreburnQueue<XDX::XDX>>(addr1), exists<Diem::Preburn<XDX::XDX>>(addr1)), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1727:9+236
    assume ((forall addr1: int :: $IsValid'address'(addr1) ==> ((($ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, addr1) || $ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, addr1)) ==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))) && (forall addr1: int :: $IsValid'address'(addr1) ==> ((($ResourceExists($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, addr1) || $ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, addr1)) ==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume true at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:549:9+318
    assume true;

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+69
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where exists<AccountLimits::LimitsDefinition<XUS::XUS>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:65:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+61
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+69
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where exists<AccountLimits::LimitsDefinition<XDX::XDX>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:144:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+61
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:538:9+64
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:576:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+121
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+71
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:191:9+94
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:199:9+94
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+104
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2203:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2233:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2282:9+91
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2285:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): exists<Roles::RoleId>(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2305:9+82
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> ($ResourceExists($1_Roles_RoleId_$memory, addr)));

    // assume true at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2308:9+139
    assume true;

    // assume forall addr: TypeDomain<address>() where exists<DesignatedDealer::Dealer>(addr): Roles::spec_has_designated_dealer_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2314:9+139
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr))  ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where exists<DualAttestation::Credential>(addr): Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2319:9+201
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DualAttestation_Credential_$memory, addr))  ==> (($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): exists<AccountFreezing::FreezingBit>(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2324:9+97
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr)));

    // assume true at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2327:9+115
    assume true;

    // assume Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+61
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+90
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+89
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume $IsValid'vec'u8''($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume $IsValid'vec'u8''($t3);

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume $IsValid'vec'vec'u8'''($t4);

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume $IsValid'bool'($t5);

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume $IsValid'vec'u8''($t6);

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume $IsValid'vec'u8''($t7);

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume $IsValid'u8'($t8);

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume $IsValid'u64'($t9);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<SlidingNonce::SlidingNonce>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0)}(var $rsc := $ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0);
    ($IsValid'$1_SlidingNonce_SlidingNonce'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::Configuration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_Configuration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_Configuration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_Configuration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DisableReconfiguration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DisableReconfiguration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(): And(WellFormed($rsc), forall i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))), j: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))): Implies(Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), i)), select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), j))), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0);
    (($IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''($rsc) && (var $range_1 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (var $range_2 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (forall $i_3: int, $i_4: int :: $InRange($range_1, $i_3) ==> $InRange($range_2, $i_4) ==> (var i := $i_3;
    (var j := $i_4;
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), i)), $addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), j))) ==> $IsEqual'num'(i, j))))))))))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemVersion::DiemVersion>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemSystem::CapabilityHolder>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0);
    ($IsValid'$1_DiemSystem_CapabilityHolder'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::BurnCapability<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XUS::XUS>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::MintCapability<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_Diem_MintCapability'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XDX::XDX>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<AccountLimits::LimitsDefinition<XUS::XUS>>(): And(WellFormed($rsc), And(And(And(Gt(select AccountLimits::LimitsDefinition.max_inflow($rsc), 0), Gt(select AccountLimits::LimitsDefinition.max_outflow($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.time_period($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.max_holding($rsc), 0))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''($rsc) && (((($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0) && ($max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0)) && ($time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0)) && ($max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0))))));

    // assume forall $rsc: ResourceDomain<AccountLimits::LimitsDefinition<XDX::XDX>>(): And(WellFormed($rsc), And(And(And(Gt(select AccountLimits::LimitsDefinition.max_inflow($rsc), 0), Gt(select AccountLimits::LimitsDefinition.max_outflow($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.time_period($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.max_holding($rsc), 0))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $a_0);
    (($IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''($rsc) && (((($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0) && ($max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0)) && ($time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0)) && ($max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0))))));

    // assume forall $rsc: ResourceDomain<XDX::Reserve>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_XDX_Reserve_$memory, $a_0)}(var $rsc := $ResourceValue($1_XDX_Reserve_$memory, $a_0);
    ($IsValid'$1_XDX_Reserve'($rsc))));

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomainManager>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0);
    ($IsValid'$1_VASPDomain_VASPDomainManager'($rsc))));

    // assume forall $rsc: ResourceDomain<TransactionFee::TransactionFee<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<DualAttestation::Limit>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DualAttestation_Limit_$memory, $a_0)}(var $rsc := $ResourceValue($1_DualAttestation_Limit_$memory, $a_0);
    ($IsValid'$1_DualAttestation_Limit'($rsc))));

    // assume forall $rsc: ResourceDomain<ChainId::ChainId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_ChainId_ChainId_$memory, $a_0)}(var $rsc := $ResourceValue($1_ChainId_ChainId_$memory, $a_0);
    ($IsValid'$1_ChainId_ChainId'($rsc))));

    // assume forall $rsc: ResourceDomain<AccountFreezing::FreezeEventsHolder>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_AccountFreezing_FreezeEventsHolder_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountFreezing_FreezeEventsHolder_$memory, $a_0);
    ($IsValid'$1_AccountFreezing_FreezeEventsHolder'($rsc))));

    // assume forall $rsc: ResourceDomain<AccountFreezing::FreezingBit>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_AccountFreezing_FreezingBit_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountFreezing_FreezingBit_$memory, $a_0);
    ($IsValid'$1_AccountFreezing_FreezingBit'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<DiemAccount::AccountOperationsCapability>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_AccountOperationsCapability_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_AccountOperationsCapability_$memory, $a_0);
    ($IsValid'$1_DiemAccount_AccountOperationsCapability'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemWriteSetManager>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemWriteSetManager_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemWriteSetManager_$memory, $a_0);
    ($IsValid'$1_DiemAccount_DiemWriteSetManager'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemBlock::BlockMetadata>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemBlock_BlockMetadata_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemBlock_BlockMetadata_$memory, $a_0);
    ($IsValid'$1_DiemBlock_BlockMetadata'($rsc))));

    // assume DiemTimestamp::$is_genesis() at /home/ying/diem/language/diem-framework/modules/Genesis.move:195:9+37
    assume {:print "$at(22,9112,9149)"} true;
    assume $1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory);

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+1
    assume {:print "$at(22,1043,1044)"} true;
    assume {:print "$track_local(34,1,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+1
    assume {:print "$track_local(34,1,1):", $t1} $t1 == $t1;

    // trace_local[dr_auth_key]($t2) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+1
    assume {:print "$track_local(34,1,2):", $t2} $t2 == $t2;

    // trace_local[tc_auth_key]($t3) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+1
    assume {:print "$track_local(34,1,3):", $t3} $t3 == $t3;

    // trace_local[initial_script_allow_list]($t4) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+1
    assume {:print "$track_local(34,1,4):", $t4} $t4 == $t4;

    // trace_local[is_open_module]($t5) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+1
    assume {:print "$track_local(34,1,5):", $t5} $t5 == $t5;

    // trace_local[instruction_schedule]($t6) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+1
    assume {:print "$track_local(34,1,6):", $t6} $t6 == $t6;

    // trace_local[native_schedule]($t7) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+1
    assume {:print "$track_local(34,1,7):", $t7} $t7 == $t7;

    // trace_local[chain_id]($t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+1
    assume {:print "$track_local(34,1,8):", $t8} $t8 == $t8;

    // trace_local[initial_diem_version]($t9) at /home/ying/diem/language/diem-framework/modules/Genesis.move:28:5+1
    assume {:print "$track_local(34,1,9):", $t9} $t9 == $t9;

    // trace_local[dr_account#2010]($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:40:13+10
    assume {:print "$at(22,1422,1432)"} true;
    assume {:print "$track_local(34,1,10):", $t0} $t0 == $t0;

    // trace_local[tc_account#2011]($t1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:41:13+10
    assume {:print "$at(22,1460,1470)"} true;
    assume {:print "$track_local(34,1,12):", $t1} $t1 == $t1;

    // $t14 := [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:45+35
    assume {:print "$at(22,1531,1566)"} true;
    $t14 := ConcatVec(ConcatVec(ConcatVec(MakeVec4(0, 0, 0, 0), MakeVec4(0, 0, 0, 0)), MakeVec4(0, 0, 0, 0)), MakeVec4(0, 0, 0, 0));
    assume $IsValid'vec'u8''($t14);

    // nop at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    // >> opaque call: DiemAccount::initialize($t0, $t14)

    // assume Identical($t15, a550c18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1225:9+24
    assume {:print "$at(11,54948,54972)"} true;
    assume ($t15 == 173345816);

    // assume Identical($t16, a550c18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1249:9+24
    assume {:print "$at(11,56142,56166)"} true;
    assume ($t16 == 173345816);

    // assume Identical($t17, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1293:9+34
    assume {:print "$at(11,58533,58567)"} true;
    assume ($t17 == 186537453);

    // assume Identical($t18, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1313:9+34
    assume {:print "$at(11,59623,59657)"} true;
    assume ($t18 == 186537453);

    // opaque begin: DiemAccount::initialize($t0, $t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume {:print "$at(22,1495,1567)"} true;

    // assume Identical($t19, Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), exists<SlidingNonce::SlidingNonce>(a550c18)), exists<DiemAccount::AccountOperationsCapability>(a550c18)), exists<DiemAccount::DiemWriteSetManager>(a550c18)), exists<AccountFreezing::FreezingBit>(a550c18)), Not(DiemTimestamp::$is_genesis())), exists<Roles::RoleId>(a550c18)), Neq<num>(Add(16, Len<u8>($t14)), 32)), exists<SlidingNonce::SlidingNonce>(b1e55ed)), VASPDomain::$tc_domain_manager_exists()), Not(DiemTimestamp::$is_genesis())), exists<Roles::RoleId>(b1e55ed)), exists<AccountFreezing::FreezingBit>(b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume ($t19 == ((((((((((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816)) || $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816)) || $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816)) || $ResourceExists($1_AccountFreezing_FreezingBit_$memory, 173345816)) || !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)) || $ResourceExists($1_Roles_RoleId_$memory, 173345816)) || !$IsEqual'num'((16 + LenVec($t14)), 32)) || $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453)) || $1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory)) || !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)) || $ResourceExists($1_Roles_RoleId_$memory, 186537453)) || $ResourceExists($1_AccountFreezing_FreezingBit_$memory, 186537453)));

    // if ($t19) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    if ($t19) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
L4:

    // assume Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t20)), And(exists<SlidingNonce::SlidingNonce>(a550c18), Eq(6, $t20))), And(exists<DiemAccount::AccountOperationsCapability>(a550c18), Eq(6, $t20))), And(exists<DiemAccount::DiemWriteSetManager>(a550c18), Eq(6, $t20))), And(exists<AccountFreezing::FreezingBit>(a550c18), Eq(6, $t20))), And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t20))), And(exists<Roles::RoleId>(a550c18), Eq(6, $t20))), And(Neq<num>(Add(16, Len<u8>($t14)), 32), Eq(7, $t20))), And(exists<SlidingNonce::SlidingNonce>(b1e55ed), Eq(6, $t20))), And(VASPDomain::$tc_domain_manager_exists(), Eq(6, $t20))), And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t20))), And(exists<Roles::RoleId>(b1e55ed), Eq(6, $t20))), And(exists<AccountFreezing::FreezingBit>(b1e55ed), Eq(6, $t20))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume (((((((((((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t20)) || ($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816) && $IsEqual'u8'(6, $t20))) || ($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816) && $IsEqual'u8'(6, $t20))) || ($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816) && $IsEqual'u8'(6, $t20))) || ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, 173345816) && $IsEqual'u8'(6, $t20))) || (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t20))) || ($ResourceExists($1_Roles_RoleId_$memory, 173345816) && $IsEqual'u8'(6, $t20))) || (!$IsEqual'num'((16 + LenVec($t14)), 32) && $IsEqual'u8'(7, $t20))) || ($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453) && $IsEqual'u8'(6, $t20))) || ($1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory) && $IsEqual'u8'(6, $t20))) || (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t20))) || ($ResourceExists($1_Roles_RoleId_$memory, 186537453) && $IsEqual'u8'(6, $t20))) || ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, 186537453) && $IsEqual'u8'(6, $t20)));

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume {:print "$at(22,1495,1567)"} true;
    assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
L3:

    // modifies global<Roles::RoleId>(a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, 173345816, $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, 173345816);
    }

    // modifies global<Roles::RoleId>(b1e55ed) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, 186537453, $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, 186537453);
    }

    // modifies global<Event::EventHandleGenerator>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Event_EventHandleGenerator';
        $1_Event_EventHandleGenerator_$memory := $ResourceUpdate($1_Event_EventHandleGenerator_$memory, $t15, $temp_0'$1_Event_EventHandleGenerator');
    } else {
        $1_Event_EventHandleGenerator_$memory := $ResourceRemove($1_Event_EventHandleGenerator_$memory, $t15);
    }

    // modifies global<DiemAccount::DiemAccount>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_DiemAccount';
        $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $t15, $temp_0'$1_DiemAccount_DiemAccount');
    } else {
        $1_DiemAccount_DiemAccount_$memory := $ResourceRemove($1_DiemAccount_DiemAccount_$memory, $t15);
    }

    // modifies global<DiemAccount::AccountOperationsCapability>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_AccountOperationsCapability';
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceUpdate($1_DiemAccount_AccountOperationsCapability_$memory, $t15, $temp_0'$1_DiemAccount_AccountOperationsCapability');
    } else {
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceRemove($1_DiemAccount_AccountOperationsCapability_$memory, $t15);
    }

    // modifies global<DiemAccount::DiemWriteSetManager>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_DiemWriteSetManager';
        $1_DiemAccount_DiemWriteSetManager_$memory := $ResourceUpdate($1_DiemAccount_DiemWriteSetManager_$memory, $t15, $temp_0'$1_DiemAccount_DiemWriteSetManager');
    } else {
        $1_DiemAccount_DiemWriteSetManager_$memory := $ResourceRemove($1_DiemAccount_DiemWriteSetManager_$memory, $t15);
    }

    // modifies global<SlidingNonce::SlidingNonce>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_SlidingNonce_SlidingNonce';
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceUpdate($1_SlidingNonce_SlidingNonce_$memory, $t15, $temp_0'$1_SlidingNonce_SlidingNonce');
    } else {
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceRemove($1_SlidingNonce_SlidingNonce_$memory, $t15);
    }

    // modifies global<Roles::RoleId>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, $t15, $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, $t15);
    }

    // modifies global<AccountFreezing::FreezingBit>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_AccountFreezing_FreezingBit';
        $1_AccountFreezing_FreezingBit_$memory := $ResourceUpdate($1_AccountFreezing_FreezingBit_$memory, $t15, $temp_0'$1_AccountFreezing_FreezingBit');
    } else {
        $1_AccountFreezing_FreezingBit_$memory := $ResourceRemove($1_AccountFreezing_FreezingBit_$memory, $t15);
    }

    // modifies global<DiemAccount::DiemAccount>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_DiemAccount';
        $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $t17, $temp_0'$1_DiemAccount_DiemAccount');
    } else {
        $1_DiemAccount_DiemAccount_$memory := $ResourceRemove($1_DiemAccount_DiemAccount_$memory, $t17);
    }

    // modifies global<SlidingNonce::SlidingNonce>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_SlidingNonce_SlidingNonce';
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceUpdate($1_SlidingNonce_SlidingNonce_$memory, $t17, $temp_0'$1_SlidingNonce_SlidingNonce');
    } else {
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceRemove($1_SlidingNonce_SlidingNonce_$memory, $t17);
    }

    // modifies global<Roles::RoleId>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, $t17, $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, $t17);
    }

    // modifies global<AccountFreezing::FreezingBit>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_AccountFreezing_FreezingBit';
        $1_AccountFreezing_FreezingBit_$memory := $ResourceUpdate($1_AccountFreezing_FreezingBit_$memory, $t17, $temp_0'$1_AccountFreezing_FreezingBit');
    } else {
        $1_AccountFreezing_FreezingBit_$memory := $ResourceRemove($1_AccountFreezing_FreezingBit_$memory, $t17);
    }

    // modifies global<DiemAccount::AccountOperationsCapability>(a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_AccountOperationsCapability';
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceUpdate($1_DiemAccount_AccountOperationsCapability_$memory, 173345816, $temp_0'$1_DiemAccount_AccountOperationsCapability');
    } else {
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceRemove($1_DiemAccount_AccountOperationsCapability_$memory, 173345816);
    }

    // modifies global<Event::EventHandleGenerator>(b1e55ed) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Event_EventHandleGenerator';
        $1_Event_EventHandleGenerator_$memory := $ResourceUpdate($1_Event_EventHandleGenerator_$memory, 186537453, $temp_0'$1_Event_EventHandleGenerator');
    } else {
        $1_Event_EventHandleGenerator_$memory := $ResourceRemove($1_Event_EventHandleGenerator_$memory, 186537453);
    }

    // modifies global<VASPDomain::VASPDomainManager>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_VASPDomain_VASPDomainManager';
        $1_VASPDomain_VASPDomainManager_$memory := $ResourceUpdate($1_VASPDomain_VASPDomainManager_$memory, $t17, $temp_0'$1_VASPDomain_VASPDomainManager');
    } else {
        $1_VASPDomain_VASPDomainManager_$memory := $ResourceRemove($1_VASPDomain_VASPDomainManager_$memory, $t17);
    }

    // assume exists<Roles::RoleId>(a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $ResourceExists($1_Roles_RoleId_$memory, 173345816);

    // assume Eq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(a550c18)), 0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, 173345816)), 0);

    // assume exists<Roles::RoleId>(b1e55ed) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $ResourceExists($1_Roles_RoleId_$memory, 186537453);

    // assume Eq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(b1e55ed)), 1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, 186537453)), 1);

    // assume exists<DiemAccount::AccountOperationsCapability>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, $t16);

    // assume exists<DiemAccount::DiemWriteSetManager>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, $t16);

    // assume exists<SlidingNonce::SlidingNonce>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $t16);

    // assume Roles::spec_has_diem_root_role_addr($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, $t16);

    // assume DiemAccount::$exists_at($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, $t16);

    // assume AccountFreezing::spec_account_is_not_frozen($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, $t16);

    // assume DiemAccount::spec_holds_own_key_rotation_cap($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t16);

    // assume DiemAccount::spec_holds_own_withdraw_cap($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, $t16);

    // assume exists<DiemAccount::AccountOperationsCapability>(a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816);

    // assume Roles::spec_has_treasury_compliance_role_addr($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, $t18);

    // assume DiemAccount::$exists_at($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, $t18);

    // assume exists<SlidingNonce::SlidingNonce>($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $t18);

    // assume AccountFreezing::spec_account_is_not_frozen($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, $t18);

    // assume DiemAccount::spec_holds_own_key_rotation_cap($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t18);

    // assume DiemAccount::spec_holds_own_withdraw_cap($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, $t18);

    // assume exists<VASPDomain::VASPDomainManager>($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72
    assume $ResourceExists($1_VASPDomain_VASPDomainManager_$memory, $t18);

    // opaque end: DiemAccount::initialize($t0, $t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:9+72

    // nop at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
    // >> opaque call: ChainId::initialize($t0, $t8)
    assume {:print "$at(22,1578,1619)"} true;

    // assume Identical($t21, Signer::$address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ChainId.move:27:9+45
    assume {:print "$at(7,1038,1083)"} true;
    assume ($t21 == $1_Signer_$address_of($t0));

    // opaque begin: ChainId::initialize($t0, $t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
    assume {:print "$at(22,1578,1619)"} true;

    // assume Identical($t22, Or(Or(Not(DiemTimestamp::$is_genesis()), Neq<address>(Signer::spec_address_of($t0), a550c18)), exists<ChainId::ChainId>($t21))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
    assume ($t22 == ((!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)) || $ResourceExists($1_ChainId_ChainId_$memory, $t21)));

    // if ($t22) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
    if ($t22) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
L6:

    // assume Or(Or(And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t20)), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t20))), And(exists<ChainId::ChainId>($t21), Eq(6, $t20))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
    assume (((!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t20)) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t20))) || ($ResourceExists($1_ChainId_ChainId_$memory, $t21) && $IsEqual'u8'(6, $t20)));

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
    assume {:print "$at(22,1578,1619)"} true;
    assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
L5:

    // modifies global<ChainId::ChainId>($t21) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_ChainId_ChainId';
        $1_ChainId_ChainId_$memory := $ResourceUpdate($1_ChainId_ChainId_$memory, $t21, $temp_0'$1_ChainId_ChainId');
    } else {
        $1_ChainId_ChainId_$memory := $ResourceRemove($1_ChainId_ChainId_$memory, $t21);
    }

    // assume exists<ChainId::ChainId>($t21) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41
    assume $ResourceExists($1_ChainId_ChainId_$memory, $t21);

    // opaque end: ChainId::initialize($t0, $t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+41

    // nop at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34
    // >> opaque call: DiemConfig::initialize($t0)
    assume {:print "$at(22,1663,1697)"} true;

    // opaque begin: DiemConfig::initialize($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34

    // assume Identical($t23, Or(Or(DiemConfig::spec_has_config(), Not(DiemTimestamp::$is_genesis())), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34
    assume ($t23 == (($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory) || !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t23) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34
    if ($t23) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34
L8:

    // assume Or(Or(And(DiemConfig::spec_has_config(), Eq(6, $t20)), And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t20))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t20))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34
    assume ((($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory) && $IsEqual'u8'(6, $t20)) || (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t20))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'u8'(2, $t20)));

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34
    assume {:print "$at(22,1663,1697)"} true;
    assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34
L7:

    // modifies global<DiemConfig::Configuration>(a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, 173345816, $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, 173345816);
    }

    // modifies global<Event::EventHandleGenerator>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:48:9+34
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Event_EventHandleGenerator';
        $1_Event_EventHandleGenerator_$memory := $ResourceUpdate($1_Event_EventHandleGenerator_$memory, $1_Signer_spec_address_of($t0), $temp_0'$1_Event_EventHandleGenerator');
    } else {
        $1_Event_EventHandleGenerator_$memory := $ResourceRemove($1_Event_EventHandleGenerator_$memory, $1_Signer_spec_address_of($t0));
    }

    // assume Identical($t24, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:82:9+56
    assume {:print "$at(13,3181,3237)"} true;
    assume ($t24 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume DiemConfig::spec_has_config() at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:82:9+56
    assume $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory);

    // assume Eq<u64>(select DiemConfig::Configuration.epoch($t24), 0) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:82:9+56
    assume $IsEqual'u64'($epoch#$1_DiemConfig_Configuration($t24), 0);

    // assume Eq<u64>(select DiemConfig::Configuration.last_reconfiguration_time($t24), 0) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:82:9+56
    assume $IsEqual'u64'($last_reconfiguration_time#$1_DiemConfig_Configuration($t24), 0);

    // opaque end: DiemConfig::initialize($t0) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:82:9+56

    // assume Identical($t25, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t25 == $1_Signer_spec_address_of($t0));

    // assume Identical($t26, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t26 == $1_Signer_spec_address_of($t0));

    // Diem::initialize($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:51:9+28
    assume {:print "$at(22,1734,1762)"} true;
    call $1_Diem_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(22,1734,1762)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t27, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t27 == $1_Signer_spec_address_of($t1));

    // assume Identical($t28, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t28 == $1_Signer_spec_address_of($t0));

    // assume Identical($t29, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t29 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t30, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t30 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t31, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t31 == $1_Signer_spec_address_of($t1));

    // assume Identical($t32, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t32 == $1_Signer_spec_address_of($t0));

    // assume Identical($t33, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t33 == $1_Signer_spec_address_of($t1));

    // XUS::initialize($t0, $t1) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:54:9+39
    assume {:print "$at(22,1799,1838)"} true;
    call $1_XUS_initialize($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(22,1799,1838)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t34, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t34 == $1_Signer_spec_address_of($t0));

    // assume Identical($t35, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:357:9+46
    assume {:print "$at(13,15374,15420)"} true;
    assume ($t35 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t36, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:358:9+58
    assume {:print "$at(13,15429,15487)"} true;
    assume ($t36 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t37, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t37 == $1_Signer_spec_address_of($t0));

    // assume Identical($t38, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t38 == $1_Signer_spec_address_of($t1));

    // XDX::initialize($t0, $t1) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:56:9+39
    assume {:print "$at(22,1849,1888)"} true;
    call $1_XDX_initialize($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(22,1849,1888)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t39, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:62:9+47
    assume {:print "$at(4,2314,2361)"} true;
    assume ($t39 == $1_Signer_spec_address_of($t0));

    // AccountFreezing::initialize($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:9+39
    assume {:print "$at(22,1899,1938)"} true;
    call $1_AccountFreezing_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(22,1899,1938)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t40, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:533:9+44
    assume {:print "$at(26,23880,23924)"} true;
    assume ($t40 == $1_Signer_spec_address_of($t1));

    // TransactionFee::initialize($t1) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:59:9+38
    assume {:print "$at(22,1948,1986)"} true;
    call $1_TransactionFee_initialize($t1);
    if ($abort_flag) {
        assume {:print "$at(22,1948,1986)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t41, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:117:9+50
    assume {:print "$at(16,5250,5300)"} true;
    assume ($t41 == $1_Signer_spec_address_of($t0));

    // assume Identical($t42, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t42 == $1_Signer_spec_address_of($t0));

    // DiemSystem::initialize_validator_set($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:61:9+48
    assume {:print "$at(22,1997,2045)"} true;
    call $1_DiemSystem_initialize_validator_set($t0);
    if ($abort_flag) {
        assume {:print "$at(22,1997,2045)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t43, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t43 == $1_Signer_spec_address_of($t0));

    // assume Identical($t44, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t44 == $1_Signer_spec_address_of($t0));

    // DiemVersion::initialize($t0, $t9) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:62:9+57
    assume {:print "$at(22,2055,2112)"} true;
    call $1_DiemVersion_initialize($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(22,2055,2112)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t45, Mul(1000, Diem::spec_scaling_factor<XDX::XDX>())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:499:9+86
    assume {:print "$at(21,22239,22325)"} true;
    assume ($t45 == (1000 * $1_Diem_spec_scaling_factor'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // DualAttestation::initialize($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:63:9+39
    assume {:print "$at(22,2122,2161)"} true;
    call $1_DualAttestation_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(22,2122,2161)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // DiemBlock::initialize_block_metadata($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:64:9+48
    assume {:print "$at(22,2171,2219)"} true;
    call $1_DiemBlock_initialize_block_metadata($t0);
    if ($abort_flag) {
        assume {:print "$at(22,2171,2219)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t46, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+52
    assume {:print "$at(11,43085,43137)"} true;
    assume ($t46 == $1_Signer_spec_address_of($t0));

    // $t47 := DiemAccount::extract_key_rotation_capability($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:68:33+56
    assume {:print "$at(22,2358,2414)"} true;
    call $t47 := $1_DiemAccount_extract_key_rotation_capability($t0);
    if ($abort_flag) {
        assume {:print "$at(22,2358,2414)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // trace_local[dr_rotate_key_cap]($t47) at /home/ying/diem/language/diem-framework/modules/Genesis.move:68:13+17
    assume {:print "$track_local(34,1,11):", $t47} $t47 == $t47;

    // DiemAccount::rotate_authentication_key($t47, $t2) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:69:9+71
    assume {:print "$at(22,2424,2495)"} true;
    call $1_DiemAccount_rotate_authentication_key($t47, $t2);
    if ($abort_flag) {
        assume {:print "$at(22,2424,2495)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // DiemAccount::restore_key_rotation_capability($t47) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:70:9+63
    assume {:print "$at(22,2505,2568)"} true;
    call $1_DiemAccount_restore_key_rotation_capability($t47);
    if ($abort_flag) {
        assume {:print "$at(22,2505,2568)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t48, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+52
    assume {:print "$at(11,43085,43137)"} true;
    assume ($t48 == $1_Signer_spec_address_of($t1));

    // $t49 := DiemAccount::extract_key_rotation_capability($t1) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:72:33+56
    assume {:print "$at(22,2603,2659)"} true;
    call $t49 := $1_DiemAccount_extract_key_rotation_capability($t1);
    if ($abort_flag) {
        assume {:print "$at(22,2603,2659)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // trace_local[tc_rotate_key_cap]($t49) at /home/ying/diem/language/diem-framework/modules/Genesis.move:72:13+17
    assume {:print "$track_local(34,1,13):", $t49} $t49 == $t49;

    // DiemAccount::rotate_authentication_key($t49, $t3) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+71
    assume {:print "$at(22,2669,2740)"} true;
    call $1_DiemAccount_rotate_authentication_key($t49, $t3);
    if ($abort_flag) {
        assume {:print "$at(22,2669,2740)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // DiemAccount::restore_key_rotation_capability($t49) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:74:9+63
    assume {:print "$at(22,2750,2813)"} true;
    call $1_DiemAccount_restore_key_rotation_capability($t49);
    if ($abort_flag) {
        assume {:print "$at(22,2750,2813)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t50, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t50 == $1_Signer_spec_address_of($t0));

    // assume Identical($t51, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t51 == $1_Signer_spec_address_of($t0));

    // DiemTransactionPublishingOption::initialize($t0, $t4, $t5) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+145
    assume {:print "$at(22,2824,2969)"} true;
    call $1_DiemTransactionPublishingOption_initialize($t0, $t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(22,2824,2969)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t52, pack DiemVMConfig::GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:109:9+528
    assume {:print "$at(19,4599,5127)"} true;
    assume ($t52 == $1_DiemVMConfig_GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800));

    // assume Identical($t53, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume {:print "$at(26,23521,23565)"} true;
    assume ($t53 == $1_Signer_spec_address_of($t0));

    // assume Identical($t54, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:525:9+44
    assume ($t54 == $1_Signer_spec_address_of($t0));

    // DiemVMConfig::initialize($t0, $t6, $t7) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:82:9+122
    assume {:print "$at(22,2980,3102)"} true;
    call $1_DiemVMConfig_initialize($t0, $t6, $t7);
    if ($abort_flag) {
        assume {:print "$at(22,2980,3102)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // DiemTimestamp::set_time_has_started($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:91:9+47
    assume {:print "$at(22,3354,3401)"} true;
    call $1_DiemTimestamp_set_time_has_started($t0);
    if ($abort_flag) {
        assume {:print "$at(22,3354,3401)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Genesis.move:92:5+1
    assume {:print "$at(22,3407,3408)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/Genesis.move:92:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:92:5+1
L2:

    // abort($t20) at /home/ying/diem/language/diem-framework/modules/Genesis.move:92:5+1
    $abort_code := $t20;
    $abort_flag := true;
    return;

}
