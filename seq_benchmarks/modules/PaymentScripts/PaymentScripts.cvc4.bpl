
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
// Native Event implementation for element type `$1_DiemId_DiemIdDomainEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''(a: $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent', b: $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''(h: $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent'): bool {
    true
}

// Embed event `$1_DiemId_DiemIdDomainEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemId_DiemIdDomainEvent'(e: $1_DiemId_DiemIdDomainEvent): $EventRep;
axiom (forall v1, v2: $1_DiemId_DiemIdDomainEvent :: {$ToEventRep'$1_DiemId_DiemIdDomainEvent'(v1), $ToEventRep'$1_DiemId_DiemIdDomainEvent'(v2)}
    $IsEqual'$1_DiemId_DiemIdDomainEvent'(v1, v2) <==> $ToEventRep'$1_DiemId_DiemIdDomainEvent'(v1) == $ToEventRep'$1_DiemId_DiemIdDomainEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemId_DiemIdDomainEvent'(signer: int) returns (res: $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent', msg: $1_DiemId_DiemIdDomainEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent') {
    var handle: $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemId_DiemIdDomainEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemId_DiemIdDomainEvent'(handle: $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemId_DiemIdDomainEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent', msg: $1_DiemId_DiemIdDomainEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemId_DiemIdDomainEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemId_DiemIdDomainEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent', msg: $1_DiemId_DiemIdDomainEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemId_DiemIdDomainEvent'(es, handle, msg)
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




//==================================
// Begin Translation



// Given Types for Type Parameters

type #0;
function {:inline} $IsEqual'#0'(x1: #0, x2: #0): bool { x1 == x2 }
function {:inline} $IsValid'#0'(x: #0): bool { true }

// spec fun at /home/ying/diem/language/move-stdlib/modules/Signer.move:13:5+77
function {:inline} $1_Signer_$address_of(s: int): int {
    $1_Signer_$borrow_address(s)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:24:5+70
function {:inline} $1_CoreAddresses_$CURRENCY_INFO_ADDRESS(): int {
    173345816
}

// spec fun at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:16:5+66
function {:inline} $1_CoreAddresses_$DIEM_ROOT_ADDRESS(): int {
    173345816
}

// spec fun at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:5+76
function {:inline} $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS(): int {
    186537453
}

// fun CoreAddresses::CURRENCY_INFO_ADDRESS [baseline] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:24:5+70
procedure {:inline 1} $1_CoreAddresses_CURRENCY_INFO_ADDRESS() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $temp_0'address': int;

    // bytecode translation starts here
    // $t0 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:25:9+10
    assume {:print "$at(8,1126,1136)"} true;
    $t0 := 173345816;
    assume $IsValid'address'($t0);

    // trace_return[0]($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:25:9+10
    assume {:print "$track_return(2,1,0):", $t0} $t0 == $t0;

    // label L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:26:5+1
    assume {:print "$at(8,1141,1142)"} true;
L1:

    // return $t0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:26:5+1
    $ret0 := $t0;
    return;

}

// fun CoreAddresses::DIEM_ROOT_ADDRESS [baseline] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:16:5+66
procedure {:inline 1} $1_CoreAddresses_DIEM_ROOT_ADDRESS() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $temp_0'address': int;

    // bytecode translation starts here
    // $t0 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:17:9+10
    assume {:print "$at(8,737,747)"} true;
    $t0 := 173345816;
    assume $IsValid'address'($t0);

    // trace_return[0]($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:17:9+10
    assume {:print "$track_return(2,2,0):", $t0} $t0 == $t0;

    // label L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:18:5+1
    assume {:print "$at(8,752,753)"} true;
L1:

    // return $t0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:18:5+1
    $ret0 := $t0;
    return;

}

// fun CoreAddresses::TREASURY_COMPLIANCE_ADDRESS [baseline] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:5+76
procedure {:inline 1} $1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $temp_0'address': int;

    // bytecode translation starts here
    // $t0 := 0xb1e55ed at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:32:9+10
    assume {:print "$at(8,1419,1429)"} true;
    $t0 := 186537453;
    assume $IsValid'address'($t0);

    // trace_return[0]($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:32:9+10
    assume {:print "$track_return(2,3,0):", $t0} $t0 == $t0;

    // label L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:33:5+1
    assume {:print "$at(8,1434,1435)"} true;
L1:

    // return $t0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:33:5+1
    $ret0 := $t0;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:127:5+114
function {:inline} $1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    !$ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:147:5+115
function {:inline} $1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:109:10+129
function {:inline} $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): int {
    $microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()))
}

// struct DiemTimestamp::CurrentTimeMicroseconds at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:21:5+73
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

// fun DiemTimestamp::set_time_has_started [baseline] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:5+240
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
    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:5+1
    assume {:print "$at(17,1620,1621)"} true;
    assume {:print "$track_local(3,6,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+16
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(17,1683,1699)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+16

    // assume Identical($t2, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+16
    assume ($t2 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t2) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+16
    if ($t2) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+16
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t3)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+16
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+16
    assume {:print "$at(17,1683,1699)"} true;
    assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+16
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+16
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+16

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+43
    // >> opaque call: CoreAddresses::assert_diem_root($t0)
    assume {:print "$at(17,1709,1752)"} true;

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+43

    // assume Identical($t4, Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+43
    assume ($t4 == !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // if ($t4) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+43
    if ($t4) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+43
L6:

    // assume And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t3)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+43
    assume {:print "$at(17,1709,1752)"} true;
    assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+43
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+43
L5:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:9+43

    // $t5 := 0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:40:61+1
    assume {:print "$at(17,1814,1815)"} true;
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := pack DiemTimestamp::CurrentTimeMicroseconds($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:40:21+43
    $t6 := $1_DiemTimestamp_CurrentTimeMicroseconds($t5);

    // move_to<DiemTimestamp::CurrentTimeMicroseconds>($t6, $t0) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:41:9+7
    assume {:print "$at(17,1827,1834)"} true;
    if ($ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_DiemTimestamp_CurrentTimeMicroseconds_$memory := $ResourceUpdate($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t0, $t6);
    }
    if ($abort_flag) {
        assume {:print "$at(17,1827,1834)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:42:5+1
    assume {:print "$at(17,1859,1860)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:42:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:42:5+1
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:42:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// struct SlidingNonce::SlidingNonce at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:13:5+341
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

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:479:9+148
function {:inline} $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int, role_id: int): bool {
    ($ResourceExists($1_Roles_RoleId_$memory, addr) && $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr)), role_id))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:483:9+124
function {:inline} $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 0)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:487:9+144
function {:inline} $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 1)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:491:9+140
function {:inline} $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 2)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:495:9+124
function {:inline} $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 3)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:499:9+142
function {:inline} $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 4)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:503:9+128
function {:inline} $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 5)
}

// struct Roles::RoleId at /home/ying/diem/language/diem-framework/modules/Roles.move:51:5+51
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

// spec fun at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:206:10+244
function {:inline} $1_FixedPoint32_spec_create_from_rational(numerator: int, denominator: int): $1_FixedPoint32_FixedPoint32 {
    if ($IsEqual'num'(numerator, denominator)) then ($1_FixedPoint32_FixedPoint32(1)) else ($1_FixedPoint32_FixedPoint32(2))
}

// struct FixedPoint32::FixedPoint32 at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:19:5+56
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

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:93:5+86
function {:inline} $1_Vector_$is_empty'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_ValidatorConfig_Config'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:93:5+86
function {:inline} $1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_DiemAccount_KeyRotationCapability'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:93:5+86
function {:inline} $1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_DiemAccount_WithdrawCapability'(v), 0)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:92:5+285
function {:inline} $1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): $1_RegisteredCurrencies_RegisteredCurrencies {
    (var addr := $1_CoreAddresses_$DIEM_ROOT_ADDRESS(); $payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'($ResourceValue($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:92:5+285
function {:inline} $1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption {
    (var addr := $1_CoreAddresses_$DIEM_ROOT_ADDRESS(); $payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:92:5+285
function {:inline} $1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): $1_DiemSystem_DiemSystem {
    (var addr := $1_CoreAddresses_$DIEM_ROOT_ADDRESS(); $payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:92:5+285
function {:inline} $1_DiemConfig_$get'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): $1_DiemVMConfig_DiemVMConfig {
    (var addr := $1_CoreAddresses_$DIEM_ROOT_ADDRESS(); $payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:92:5+285
function {:inline} $1_DiemConfig_$get'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): $1_DiemVersion_DiemVersion {
    (var addr := $1_CoreAddresses_$DIEM_ROOT_ADDRESS(); $payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:203:5+119
function {:inline} $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory: $Memory $1_DiemConfig_DisableReconfiguration): bool {
    !$ResourceExists($1_DiemConfig_DisableReconfiguration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:439:9+109
function {:inline} $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory: $Memory $1_DiemConfig_Configuration): bool {
    $ResourceExists($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:443:9+124
function {:inline} $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:443:9+124
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:443:9+124
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:443:9+124
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:443:9+124
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// struct DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:15:5+156
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

// struct DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:15:5+156
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

// struct DiemConfig::DiemConfig<DiemSystem::DiemSystem> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:15:5+156
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

// struct DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:15:5+156
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

// struct DiemConfig::DiemConfig<DiemVersion::DiemVersion> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:15:5+156
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

// struct DiemConfig::Configuration at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:28:5+306
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

// struct DiemConfig::DisableReconfiguration at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:41:5+40
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

// struct DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:38:5+57
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

// struct DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:38:5+57
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

// struct DiemConfig::ModifyConfigCapability<DiemSystem::DiemSystem> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:38:5+57
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

// struct DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:38:5+57
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

// struct DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:38:5+57
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

// struct DiemConfig::NewEpochEvent at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:23:5+64
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

// struct RegisteredCurrencies::RegisteredCurrencies at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:15:5+101
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

// fun RegisteredCurrencies::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:5+280
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
    var $1_DiemConfig_Configuration_$memory#171: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:5+1
    assume {:print "$at(25,817,818)"} true;
    assume {:print "$track_local(12,1,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(25,870,901)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+31

    // assume Identical($t3, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+31
    assume ($t3 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+31
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t4)) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+31
    assume {:print "$at(25,870,901)"} true;
    assume {:print "$track_abort(12,1):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:26:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(25,911,946)"} true;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:26:9+35
    assume {:print "$at(25,911,946)"} true;

    // assume Identical($t6, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Not(exists<Roles::RoleId>($t5))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:26:9+35
    assume ($t6 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) || !$ResourceExists($1_Roles_RoleId_$memory, $t5)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t6) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:26:9+35
    if ($t6) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:26:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t4)), And(Not(exists<Roles::RoleId>($t5)), Eq(5, $t4))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 0), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:26:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t4)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t5) && $IsEqual'u8'(5, $t4))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 0) && $IsEqual'u8'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:26:9+35
    assume {:print "$at(25,911,946)"} true;
    assume {:print "$track_abort(12,1):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:26:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:26:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:26:9+35

    // $t7 := Vector::empty<vector<u8>>() on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:29:52+15
    assume {:print "$at(25,1063,1078)"} true;
    call $t7 := $1_Vector_empty'vec'u8''();
    if ($abort_flag) {
        assume {:print "$at(25,1063,1078)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(12,1):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t8 := pack RegisteredCurrencies::RegisteredCurrencies($t7) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:29:13+56
    $t8 := $1_RegisteredCurrencies_RegisteredCurrencies($t7);

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    // >> opaque call: DiemConfig::publish_new_config<RegisteredCurrencies::RegisteredCurrencies>($t0, $t2)
    assume {:print "$at(25,956,1090)"} true;

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<RegisteredCurrencies::RegisteredCurrencies>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    assume {:print "$at(25,956,1090)"} true;

    // assume Identical($t10, Or(Or(Or(Or(DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>(), exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    assume ($t10 == (((($1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t10) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    if ($t10) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>(), exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t9)), Eq(5, $t4))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    assume (((($1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t9) && $IsEqual'u8'(5, $t4))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0) && $IsEqual'u8'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    assume {:print "$at(25,956,1090)"} true;
    assume {:print "$track_abort(12,1):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
L7:

    // @171 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    $1_DiemConfig_Configuration_$memory#171 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'';
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'');
    } else {
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // modifies global<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'';
        $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // assume exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    assume $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory);

    // assume Eq<RegisteredCurrencies::RegisteredCurrencies>(DiemConfig::$get<RegisteredCurrencies::RegisteredCurrencies>(), $t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    assume $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory), $t8);

    // assume Eq<bool>(DiemConfig::spec_has_config[@171](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#171), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<RegisteredCurrencies::RegisteredCurrencies>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:9+134

    // label L1 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:31:5+1
    assume {:print "$at(25,1096,1097)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:31:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:31:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:31:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun RegisteredCurrencies::add_currency_code [baseline] at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:51:5+449
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
    var $1_DiemConfig_Configuration_$memory#143: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t15));
    assume IsEmptyVec(p#$Mutation($t16));

    // bytecode translation starts here
    // assume Identical($t5, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t5 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t6, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t6 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:51:5+1
    assume {:print "$at(25,1792,1793)"} true;
    assume {:print "$track_local(12,0,0):", $t0} $t0 == $t0;

    // trace_local[currency_code]($t1) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:51:5+1
    assume {:print "$track_local(12,0,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39
    // >> opaque call: $t2 := DiemConfig::get<RegisteredCurrencies::RegisteredCurrencies>()
    assume {:print "$at(25,1915,1954)"} true;

    // $t2 := opaque begin: DiemConfig::get<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39

    // assume Identical($t7, Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39
    assume ($t7 == !$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // if ($t7) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39
    if ($t7) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39
L5:

    // assume And(Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(CoreAddresses::$DIEM_ROOT_ADDRESS())), Eq(5, $t8)) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39
    assume (!$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(5, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39
    assume {:print "$at(25,1915,1954)"} true;
    assume {:print "$track_abort(12,0):", $t8} $t8 == $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39
L4:

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39
    assume $IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'($t2);

    // assume Eq<RegisteredCurrencies::RegisteredCurrencies>($t2, DiemConfig::$get<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39
    assume $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'($t2, $1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // $t2 := opaque end: DiemConfig::get<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:22+39

    // trace_local[config]($t2) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:13+6
    assume {:print "$track_local(12,0,2):", $t2} $t2 == $t2;

    // $t9 := copy($t2) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:57:32+6
    assume {:print "$at(25,2003,2009)"} true;
    $t9 := $t2;

    // $t10 := get_field<RegisteredCurrencies::RegisteredCurrencies>.currency_codes($t9) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:57:31+22
    $t10 := $currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies($t9);

    // $t11 := Vector::contains<vector<u8>>($t10, $t1) on_abort goto L3 with $t8 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:57:14+56
    call $t11 := $1_Vector_contains'vec'u8''($t10, $t1);
    if ($abort_flag) {
        assume {:print "$at(25,1985,2041)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(12,0):", $t8} $t8 == $t8;
        goto L3;
    }

    // $t12 := !($t11) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:57:13+1
    call $t12 := $Not($t11);

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:38+28
    assume {:print "$at(25,2080,2108)"} true;
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:13+54
    // >> opaque call: $t10 := Errors::invalid_argument($t9)

    // $t14 := opaque begin: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:13+54

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:13+54
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 7) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:13+54
    assume $IsEqual'u64'($t14, 7);

    // $t14 := opaque end: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:13+54

    // trace_local[tmp#$4]($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:9+155
    assume {:print "$at(25,1964,2119)"} true;
    assume {:print "$track_local(12,0,4):", $t14} $t14 == $t14;

    // trace_local[tmp#$3]($t12) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:9+155
    assume {:print "$track_local(12,0,3):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:9+155
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:9+155
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:9+155

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:9+155
    assume {:print "$at(25,1964,2119)"} true;
    assume {:print "$track_abort(12,0):", $t14} $t14 == $t14;

    // $t8 := move($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:9+155
    $t8 := $t14;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:9+155
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:32+6
    assume {:print "$at(25,2152,2158)"} true;
L0:

    // $t15 := borrow_local($t2) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:32+6
    $t15 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t16 := borrow_field<RegisteredCurrencies::RegisteredCurrencies>.currency_codes($t15) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:27+26
    $t16 := $ChildMutation($t15, 0, $currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies($Dereference($t15)));

    // Vector::push_back<vector<u8>>($t16, $t1) on_abort goto L3 with $t8 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:9+60
    call $t16 := $1_Vector_push_back'vec'u8''($t16, $t1);
    if ($abort_flag) {
        assume {:print "$at(25,2129,2189)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(12,0):", $t8} $t8 == $t8;
        goto L3;
    }

    // write_back[Reference($t15).currency_codes]($t16) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:9+60
    $t15 := $UpdateMutation($t15, $Update'$1_RegisteredCurrencies_RegisteredCurrencies'_currency_codes($Dereference($t15), $Dereference($t16)));

    // write_back[LocalRoot($t2)@]($t15) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:9+60
    $t2 := $Dereference($t15);

    // $t17 := move($t2) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:37+6
    assume {:print "$at(25,2227,2233)"} true;
    $t17 := $t2;

    // nop at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    // >> opaque call: DiemConfig::set<RegisteredCurrencies::RegisteredCurrencies>($t0, $t13)

    // assume Identical($t18, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t18 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t19, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t19 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // opaque begin: DiemConfig::set<RegisteredCurrencies::RegisteredCurrencies>($t0, $t17) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    assume {:print "$at(25,2199,2234)"} true;

    // assume Identical($t20, Or(Or(Not(exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(CoreAddresses::$DIEM_ROOT_ADDRESS()))), And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t18), 18446744073709551615)), Lt($t19, select DiemConfig::Configuration.last_reconfiguration_time($t18))))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    assume ($t20 == ((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0)) || !$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t18) < 18446744073709551615)) && ($t19 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t18)))));

    // if ($t20) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    if ($t20) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
L7:

    // assume Or(Or(And(Not(exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), Eq(4, $t8)), And(Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(CoreAddresses::$DIEM_ROOT_ADDRESS())), Eq(5, $t8))), And(And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t18), 18446744073709551615)), Lt($t19, select DiemConfig::Configuration.last_reconfiguration_time($t18))), Eq(1, $t8))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    assume (((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0)) && $IsEqual'u8'(4, $t8)) || (!$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(5, $t8))) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t18) < 18446744073709551615)) && ($t19 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t18))) && $IsEqual'u8'(1, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    assume {:print "$at(25,2199,2234)"} true;
    assume {:print "$track_abort(12,0):", $t8} $t8 == $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
L6:

    // @143 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    $1_DiemConfig_Configuration_$memory#143 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // modifies global<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'';
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'');
    } else {
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // assume DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    assume $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory);

    // assume Eq<RegisteredCurrencies::RegisteredCurrencies>(DiemConfig::$get<RegisteredCurrencies::RegisteredCurrencies>(), $t17) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    assume $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory), $t17);

    // assume Eq<bool>(DiemConfig::spec_has_config[@143](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#143), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::set<RegisteredCurrencies::RegisteredCurrencies>($t0, $t17) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:61:9+35

    // label L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:62:5+1
    assume {:print "$at(25,2240,2241)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:62:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:62:5+1
L3:

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:62:5+1
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1392:5+134
function {:inline} $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $1_CoreAddresses_$CURRENCY_INFO_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1392:5+134
function {:inline} $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $1_CoreAddresses_$CURRENCY_INFO_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1418:10+142
function {:inline} $1_Diem_spec_scaling_factor'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): int {
    $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $1_CoreAddresses_$CURRENCY_INFO_ADDRESS()))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1803:9+133
function {:inline} $1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $1_CoreAddresses_$CURRENCY_INFO_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1803:9+133
function {:inline} $1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $1_CoreAddresses_$CURRENCY_INFO_ADDRESS())
}

// struct Diem::Diem<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:24:5+126
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

// struct Diem::Diem<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:24:5+126
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

// struct Diem::BurnCapability<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:37:5+50
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

// struct Diem::BurnCapability<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:37:5+50
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

// struct Diem::BurnEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:58:5+323
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

// struct Diem::CancelBurnEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:83:5+327
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

// struct Diem::CurrencyInfo<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:111:5+2300
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

// struct Diem::CurrencyInfo<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:111:5+2300
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

// struct Diem::MintCapability<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:33:5+50
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

// struct Diem::MintCapability<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:33:5+50
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

// struct Diem::MintEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:44:5+199
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

// struct Diem::Preburn<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:170:5+232
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

// struct Diem::Preburn<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:170:5+232
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

// struct Diem::PreburnEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:70:5+355
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

// struct Diem::PreburnQueue<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:194:5+144
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

// struct Diem::PreburnQueue<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:194:5+144
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

// struct Diem::PreburnWithMetadata<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:178:5+120
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

// struct Diem::PreburnWithMetadata<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:178:5+120
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

// struct Diem::ToXDXExchangeRateUpdateEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:94:5+424
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

// fun Diem::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:248:5+247
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
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:248:5+1
    assume {:print "$at(10,12665,12666)"} true;
    assume {:print "$track_local(13,16,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(10,12733,12764)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31

    // assume Identical($t3, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    assume ($t3 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    assume {:print "$at(10,12733,12764)"} true;
    assume {:print "$track_abort(13,16):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    // >> opaque call: CoreAddresses::assert_diem_root($t0)
    assume {:print "$at(10,12808,12851)"} true;

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43

    // assume Identical($t5, Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    assume ($t5 == !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
L6:

    // assume And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    assume {:print "$at(10,12808,12851)"} true;
    assume {:print "$track_abort(13,16):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
L5:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // RegisteredCurrencies::initialize($t0) on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:254:9+44
    assume {:print "$at(10,12861,12905)"} true;
    call $1_RegisteredCurrencies_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(10,12861,12905)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(13,16):", $t4} $t4 == $t4;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:255:5+1
    assume {:print "$at(10,12911,12912)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:255:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:255:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:255:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun Diem::create_preburn<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:550:5+255
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
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:550:5+1
    assume {:print "$at(10,26506,26507)"} true;
    assume {:print "$track_local(13,11,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(10,26613,26658)"} true;

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume {:print "$at(10,26613,26658)"} true;

    // assume Identical($t3, Or(Or(Not(exists<Roles::RoleId>($t2)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume ($t3 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t2) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
L4:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t2)), Eq(5, $t4)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t2) && $IsEqual'u8'(5, $t4)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1) && $IsEqual'u8'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume {:print "$at(10,26613,26658)"} true;
    assume {:print "$track_abort(13,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
L3:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,26668,26698)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30

    // assume Identical($t5, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume ($t5 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
L6:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'u8'(5, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume {:print "$at(10,26668,26698)"} true;
    assume {:print "$track_abort(13,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
L5:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30

    // $t6 := Diem::zero<#0>() on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:555:38+16
    assume {:print "$at(10,26737,26753)"} true;
    call $t6 := $1_Diem_zero'$1_XUS_XUS'();
    if ($abort_flag) {
        assume {:print "$at(10,26737,26753)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(13,11):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t7 := pack Diem::Preburn<#0>($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:555:9+47
    $t7 := $1_Diem_Preburn'$1_XUS_XUS'($t6);

    // trace_return[0]($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:555:9+47
    assume {:print "$track_return(13,11,0):", $t7} $t7 == $t7;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    assume {:print "$at(10,26760,26761)"} true;
L1:

    // return $t7 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    $ret0 := $t7;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun Diem::create_preburn<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:550:5+255
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
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:550:5+1
    assume {:print "$at(10,26506,26507)"} true;
    assume {:print "$track_local(13,11,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(10,26613,26658)"} true;

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume {:print "$at(10,26613,26658)"} true;

    // assume Identical($t3, Or(Or(Not(exists<Roles::RoleId>($t2)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume ($t3 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t2) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
L4:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t2)), Eq(5, $t4)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t2) && $IsEqual'u8'(5, $t4)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1) && $IsEqual'u8'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume {:print "$at(10,26613,26658)"} true;
    assume {:print "$track_abort(13,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
L3:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,26668,26698)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30

    // assume Identical($t5, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume ($t5 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
L6:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'u8'(5, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume {:print "$at(10,26668,26698)"} true;
    assume {:print "$track_abort(13,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
L5:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30

    // $t6 := Diem::zero<#0>() on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:555:38+16
    assume {:print "$at(10,26737,26753)"} true;
    call $t6 := $1_Diem_zero'$1_XDX_XDX'();
    if ($abort_flag) {
        assume {:print "$at(10,26737,26753)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(13,11):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t7 := pack Diem::Preburn<#0>($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:555:9+47
    $t7 := $1_Diem_Preburn'$1_XDX_XDX'($t6);

    // trace_return[0]($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:555:9+47
    assume {:print "$track_return(13,11,0):", $t7} $t7 == $t7;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    assume {:print "$at(10,26760,26761)"} true;
L1:

    // return $t7 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    $ret0 := $t7;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun Diem::publish_burn_capability<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:265:5+424
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
    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:265:5+1
    assume {:print "$at(10,13382,13383)"} true;
    assume {:print "$track_local(13,27,0):", $t0} $t0 == $t0;

    // trace_local[cap]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:265:5+1
    assume {:print "$track_local(13,27,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(10,13519,13564)"} true;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    assume {:print "$at(10,13519,13564)"} true;

    // assume Identical($t6, Or(Or(Not(exists<Roles::RoleId>($t5)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 1)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    assume ($t6 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t5) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t5)), Eq(5, $t7)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 1), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(2, $t7))) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t5) && $IsEqual'u8'(5, $t7)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 1) && $IsEqual'u8'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(2, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    assume {:print "$at(10,13519,13564)"} true;
    assume {:print "$track_abort(13,27):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,13574,13604)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30

    // assume Identical($t8, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    assume ($t8 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t8) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    if ($t8) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
L7:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t7)) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'u8'(5, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    assume {:print "$at(10,13574,13604)"} true;
    assume {:print "$track_abort(13,27):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
L6:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:272:47+30
    // >> opaque call: $t4 := Signer::address_of($t0)
    assume {:print "$at(10,13668,13698)"} true;

    // $t9 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:47+30

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:47+30
    assume $IsValid'address'($t9);

    // assume Eq<address>($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:47+30
    assume $IsEqual'address'($t9, $1_Signer_spec_address_of($t0));

    // $t9 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:47+30

    // $t10 := exists<Diem::BurnCapability<#0>>($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:14+6
    $t10 := $ResourceExists($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $t9);

    // $t11 := !($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:13+1
    call $t11 := $Not($t10);

    // $t12 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:273:39+16
    assume {:print "$at(10,13739,13755)"} true;
    $t12 := 0;
    assume $IsValid'u64'($t12);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:273:13+43
    // >> opaque call: $t8 := Errors::already_published($t7)

    // $t13 := opaque begin: Errors::already_published($t12) at /home/ying/diem/language/diem-framework/modules/Diem.move:273:13+43

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:273:13+43
    assume $IsValid'u64'($t13);

    // assume Eq<u64>($t13, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:273:13+43
    assume $IsEqual'u64'($t13, 6);

    // $t13 := opaque end: Errors::already_published($t12) at /home/ying/diem/language/diem-framework/modules/Diem.move:273:13+43

    // trace_local[tmp#$3]($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    assume {:print "$at(10,13614,13766)"} true;
    assume {:print "$track_local(13,27,3):", $t13} $t13 == $t13;

    // trace_local[tmp#$2]($t11) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    assume {:print "$track_local(13,27,2):", $t11} $t11 == $t11;

    // if ($t11) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    if ($t11) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    assume {:print "$at(10,13614,13766)"} true;
    assume {:print "$track_abort(13,27):", $t13} $t13 == $t13;

    // $t7 := move($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    $t7 := $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:275:17+10
    assume {:print "$at(10,13784,13794)"} true;
L0:

    // move_to<Diem::BurnCapability<#0>>($t1, $t0) on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/Diem.move:275:9+7
    if ($ResourceExists($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_BurnCapability'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $t0, $t1);
    }
    if ($abort_flag) {
        assume {:print "$at(10,13776,13783)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(13,27):", $t7} $t7 == $t7;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:276:5+1
    assume {:print "$at(10,13805,13806)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:276:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:276:5+1
L3:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:276:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun Diem::register_SCS_currency<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1299:5+920
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
    // assume Identical($t10, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t1));

    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // assume Identical($t12, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t12 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t13, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t13 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t14, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t1));

    // assume Identical($t15, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume ($t15 == $1_Signer_spec_address_of($t1));

    // assume Identical($t16, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume ($t16 == $1_Signer_spec_address_of($t1));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1299:5+1
    assume {:print "$at(10,62592,62593)"} true;
    assume {:print "$track_local(13,30,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1299:5+1
    assume {:print "$track_local(13,30,1):", $t1} $t1 == $t1;

    // trace_local[to_xdx_exchange_rate]($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1299:5+1
    assume {:print "$track_local(13,30,2):", $t2} $t2 == $t2;

    // trace_local[scaling_factor]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1299:5+1
    assume {:print "$track_local(13,30,3):", $t3} $t3 == $t3;

    // trace_local[fractional_part]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1299:5+1
    assume {:print "$track_local(13,30,4):", $t4} $t4 == $t4;

    // trace_local[currency_code]($t5) at /home/ying/diem/language/diem-framework/modules/Diem.move:1299:5+1
    assume {:print "$track_local(13,30,5):", $t5} $t5 == $t5;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t1)
    assume {:print "$at(10,62855,62900)"} true;

    // assume Identical($t17, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t17 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:9+45
    assume {:print "$at(10,62855,62900)"} true;

    // assume Identical($t18, Or(Or(Not(exists<Roles::RoleId>($t17)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t17)), 1)), Neq<address>(Signer::spec_address_of($t1), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:9+45
    assume ($t18 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t17) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t17)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())));

    // if ($t18) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:9+45
    if ($t18) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t17)), Eq(5, $t19)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t17)), 1), Eq(3, $t19))), And(Neq<address>(Signer::spec_address_of($t1), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(2, $t19))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t17) && $IsEqual'u8'(5, $t19)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t17)), 1) && $IsEqual'u8'(3, $t19))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(2, $t19)));

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:9+45
    assume {:print "$at(10,62855,62900)"} true;
    assume {:print "$track_abort(13,30):", $t19} $t19 == $t19;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1307:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(10,62910,62945)"} true;

    // assume Identical($t20, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t20 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:9+35
    assume {:print "$at(10,62910,62945)"} true;

    // assume Identical($t21, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Not(exists<Roles::RoleId>($t20))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t20)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:9+35
    assume ($t21 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) || !$ResourceExists($1_Roles_RoleId_$memory, $t20)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t20)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t21) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:9+35
    if ($t21) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:9+35
L7:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t19)), And(Not(exists<Roles::RoleId>($t20)), Eq(5, $t19))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t20)), 0), Eq(3, $t19))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t19))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t19)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t20) && $IsEqual'u8'(5, $t19))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t20)), 0) && $IsEqual'u8'(3, $t19))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t19)));

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:9+35
    assume {:print "$at(10,62910,62945)"} true;
    assume {:print "$track_abort(13,30):", $t19} $t19 == $t19;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:9+35
L6:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1308:9+35

    // $t22 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1313:17+5
    assume {:print "$at(10,63105,63110)"} true;
    $t22 := false;
    assume $IsValid'bool'($t22);

    // assume Identical($t23, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t23 == $1_Signer_spec_address_of($t0));

    // assume Identical($t24, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t24 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t25, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t25 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // ($t26, $t27) := Diem::register_currency<#0>($t0, $t2, $t22, $t3, $t4, $t5) on_abort goto L3 with $t19 at /home/ying/diem/language/diem-framework/modules/Diem.move:1310:13+245
    assume {:print "$at(10,62994,63239)"} true;
    call $t26,$t27 := $1_Diem_register_currency'$1_XUS_XUS'($t0, $t2, $t22, $t3, $t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(10,62994,63239)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(13,30):", $t19} $t19 == $t19;
        goto L3;
    }

    // trace_local[burn_cap]($t27) at /home/ying/diem/language/diem-framework/modules/Diem.move:1309:24+8
    assume {:print "$at(10,62970,62978)"} true;
    assume {:print "$track_local(13,30,6):", $t27} $t27 == $t27;

    // trace_local[mint_cap]($t26) at /home/ying/diem/language/diem-framework/modules/Diem.move:1309:14+8
    assume {:print "$track_local(13,30,7):", $t26} $t26 == $t26;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:47+30
    // >> opaque call: $t13 := Signer::address_of($t1)
    assume {:print "$at(10,63303,63333)"} true;

    // $t28 := opaque begin: Signer::address_of($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:47+30

    // assume WellFormed($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:47+30
    assume $IsValid'address'($t28);

    // assume Eq<address>($t28, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:47+30
    assume $IsEqual'address'($t28, $1_Signer_spec_address_of($t1));

    // $t28 := opaque end: Signer::address_of($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:47+30

    // $t29 := exists<Diem::MintCapability<#0>>($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:14+6
    $t29 := $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $t28);

    // $t30 := !($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:13+1
    call $t30 := $Not($t29);

    // $t31 := 9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:39+16
    assume {:print "$at(10,63374,63390)"} true;
    $t31 := 9;
    assume $IsValid'u64'($t31);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:13+43
    // >> opaque call: $t17 := Errors::already_published($t16)

    // $t32 := opaque begin: Errors::already_published($t31) at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:13+43

    // assume WellFormed($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:13+43
    assume $IsValid'u64'($t32);

    // assume Eq<u64>($t32, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:13+43
    assume $IsEqual'u64'($t32, 6);

    // $t32 := opaque end: Errors::already_published($t31) at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:13+43

    // trace_local[tmp#$9]($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:9+152
    assume {:print "$at(10,63249,63401)"} true;
    assume {:print "$track_local(13,30,9):", $t32} $t32 == $t32;

    // trace_local[tmp#$8]($t30) at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:9+152
    assume {:print "$track_local(13,30,8):", $t30} $t30 == $t30;

    // if ($t30) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:9+152
    if ($t30) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:9+152
L1:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:9+152

    // trace_abort($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:9+152
    assume {:print "$at(10,63249,63401)"} true;
    assume {:print "$track_abort(13,30):", $t32} $t32 == $t32;

    // $t19 := move($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:9+152
    $t19 := $t32;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1318:9+152
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1322:17+10
    assume {:print "$at(10,63419,63429)"} true;
L0:

    // move_to<Diem::MintCapability<#0>>($t26, $t1) on_abort goto L3 with $t19 at /home/ying/diem/language/diem-framework/modules/Diem.move:1322:9+7
    if ($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $t1)) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_MintCapability'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $t1, $t26);
    }
    if ($abort_flag) {
        assume {:print "$at(10,63411,63418)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(13,30):", $t19} $t19 == $t19;
        goto L3;
    }

    // assume Identical($t33, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t33 == $1_Signer_spec_address_of($t1));

    // Diem::publish_burn_capability<#0>($t1, $t27) on_abort goto L3 with $t19 at /home/ying/diem/language/diem-framework/modules/Diem.move:1323:9+55
    assume {:print "$at(10,63450,63505)"} true;
    call $1_Diem_publish_burn_capability'$1_XUS_XUS'($t1, $t27);
    if ($abort_flag) {
        assume {:print "$at(10,63450,63505)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(13,30):", $t19} $t19 == $t19;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1324:5+1
    assume {:print "$at(10,63511,63512)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:1324:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1324:5+1
L3:

    // abort($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1324:5+1
    $abort_code := $t19;
    $abort_flag := true;
    return;

}

// fun Diem::scaling_factor<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1413:5+224
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
    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,67458,67488)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:9+30

    // assume Identical($t0, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:9+30
    assume ($t0 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:9+30
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:9+30
L4:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'u8'(5, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:9+30
    assume {:print "$at(10,67458,67488)"} true;
    assume {:print "$track_abort(13,34):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:9+30
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:9+30
L3:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1415:9+30

    // $t2 := CoreAddresses::CURRENCY_INFO_ADDRESS() on_abort goto L2 with $t1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1416:47+38
    assume {:print "$at(10,67536,67574)"} true;
    call $t2 := $1_CoreAddresses_CURRENCY_INFO_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(10,67536,67574)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(13,34):", $t1} $t1 == $t1;
        goto L2;
    }

    // $t3 := get_global<Diem::CurrencyInfo<#0>>($t2) on_abort goto L2 with $t1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1416:9+13
    if (!$ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t2)) {
        call $ExecFailureAbort();
    } else {
        $t3 := $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(10,67498,67511)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(13,34):", $t1} $t1 == $t1;
        goto L2;
    }

    // $t4 := get_field<Diem::CurrencyInfo<#0>>.scaling_factor($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1416:9+92
    $t4 := $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t3);

    // trace_return[0]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1416:9+92
    assume {:print "$track_return(13,34,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1417:5+1
    assume {:print "$at(10,67595,67596)"} true;
L1:

    // return $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1417:5+1
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1417:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1417:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun Diem::register_currency<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1683
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
    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // assume Identical($t12, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t12 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t13, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t13 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$at(10,59514,59515)"} true;
    assume {:print "$track_local(13,31,0):", $t0} $t0 == $t0;

    // trace_local[to_xdx_exchange_rate]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$track_local(13,31,1):", $t1} $t1 == $t1;

    // trace_local[is_synthetic]($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$track_local(13,31,2):", $t2} $t2 == $t2;

    // trace_local[scaling_factor]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$track_local(13,31,3):", $t3} $t3 == $t3;

    // trace_local[fractional_part]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$track_local(13,31,4):", $t4} $t4 == $t4;

    // trace_local[currency_code]($t5) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$track_local(13,31,5):", $t5} $t5 == $t5;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(10,59830,59865)"} true;

    // assume Identical($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    assume {:print "$at(10,59830,59865)"} true;

    // assume Identical($t15, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Not(exists<Roles::RoleId>($t14))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    assume ($t15 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) || !$ResourceExists($1_Roles_RoleId_$memory, $t14)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t15) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    if ($t15) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
L11:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t16)), And(Not(exists<Roles::RoleId>($t14)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0), Eq(3, $t16))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t16))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t16)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t14) && $IsEqual'u8'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0) && $IsEqual'u8'(3, $t16))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    assume {:print "$at(10,59830,59865)"} true;
    assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    goto L9;

    // label L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
L10:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    // >> opaque call: CoreAddresses::assert_currency_info($t0)
    assume {:print "$at(10,59958,60005)"} true;

    // opaque begin: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47

    // assume Identical($t17, Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$CURRENCY_INFO_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    assume ($t17 == !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$CURRENCY_INFO_ADDRESS()));

    // if ($t17) goto L13 else goto L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    if ($t17) { goto L13; } else { goto L12; }

    // label L13 at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
L13:

    // assume And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$CURRENCY_INFO_ADDRESS()), Eq(2, $t16)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$CURRENCY_INFO_ADDRESS()) && $IsEqual'u8'(2, $t16));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    assume {:print "$at(10,59958,60005)"} true;
    assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    goto L9;

    // label L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
L12:

    // opaque end: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:45+30
    // >> opaque call: $t11 := Signer::address_of($t0)
    assume {:print "$at(10,60067,60097)"} true;

    // $t18 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:45+30

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:45+30
    assume $IsValid'address'($t18);

    // assume Eq<address>($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:45+30
    assume $IsEqual'address'($t18, $1_Signer_spec_address_of($t0));

    // $t18 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:45+30

    // $t19 := exists<Diem::CurrencyInfo<#0>>($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:14+6
    $t19 := $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $t18);

    // $t20 := !($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:13+1
    call $t20 := $Not($t19);

    // $t21 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:39+14
    assume {:print "$at(10,60138,60152)"} true;
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:13+41
    // >> opaque call: $t15 := Errors::already_published($t14)

    // $t22 := opaque begin: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:13+41

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:13+41
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:13+41
    assume $IsEqual'u64'($t22, 6);

    // $t22 := opaque end: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:13+41

    // trace_local[tmp#$7]($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    assume {:print "$at(10,60015,60163)"} true;
    assume {:print "$track_local(13,31,7):", $t22} $t22 == $t22;

    // trace_local[tmp#$6]($t20) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    assume {:print "$track_local(13,31,6):", $t20} $t20 == $t20;

    // if ($t20) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    if ($t20) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    assume {:print "$at(10,60015,60163)"} true;
    assume {:print "$track_abort(13,31):", $t22} $t22 == $t22;

    // $t16 := move($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    $t16 := $t22;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    goto L9;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+1
    assume {:print "$at(10,60180,60181)"} true;
L0:

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+1
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := <($t23, $t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:18+1
    call $t24 := $Lt($t23, $t3);

    // if ($t24) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    if ($t24) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
L3:

    // goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:38+14
L2:

    // $t25 := 10000000000 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:56+18
    $t25 := 10000000000;
    assume $IsValid'u64'($t25);

    // $t26 := <=($t3, $t25) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:53+2
    call $t26 := $Le($t3, $t25);

    // $t10 := $t26 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    $t10 := $t26;

    // trace_local[tmp#$10]($t26) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    assume {:print "$track_local(13,31,10):", $t26} $t26 == $t26;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
L4:

    // $t27 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    $t27 := false;
    assume $IsValid'bool'($t27);

    // $t10 := $t27 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    $t10 := $t27;

    // trace_local[tmp#$10]($t27) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    assume {:print "$track_local(13,31,10):", $t27} $t27 == $t27;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
L5:

    // $t28 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:101+14
    $t28 := 1;
    assume $IsValid'u64'($t28);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:76+40
    // >> opaque call: $t22 := Errors::invalid_argument($t21)

    // $t29 := opaque begin: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:76+40

    // assume WellFormed($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:76+40
    assume $IsValid'u64'($t29);

    // assume Eq<u64>($t29, 7) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:76+40
    assume $IsEqual'u64'($t29, 7);

    // $t29 := opaque end: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:76+40

    // trace_local[tmp#$9]($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    assume {:print "$track_local(13,31,9):", $t29} $t29 == $t29;

    // trace_local[tmp#$8]($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    assume {:print "$track_local(13,31,8):", $t10} $t10 == $t10;

    // if ($t10) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    if ($t10) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
L7:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108

    // trace_abort($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    assume {:print "$at(10,60173,60281)"} true;
    assume {:print "$track_abort(13,31):", $t29} $t29 == $t29;

    // $t16 := move($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    $t16 := $t29;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    goto L9;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1247:17+10
    assume {:print "$at(10,60299,60309)"} true;
L6:

    // $t30 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1248:26+1
    assume {:print "$at(10,60361,60362)"} true;
    $t30 := 0;
    assume $IsValid'u128'($t30);

    // $t31 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1249:28+1
    assume {:print "$at(10,60391,60392)"} true;
    $t31 := 0;
    assume $IsValid'u64'($t31);

    // $t32 := true at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:23+4
    assume {:print "$at(10,60580,60584)"} true;
    $t32 := true;
    assume $IsValid'bool'($t32);

    // $t33 := Event::new_event_handle<Diem::MintEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:26+46
    assume {:print "$at(10,60611,60657)"} true;
    call $t33 := $1_Event_new_event_handle'$1_Diem_MintEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60611,60657)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t34 := Event::new_event_handle<Diem::BurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1257:26+46
    assume {:print "$at(10,60684,60730)"} true;
    call $t34 := $1_Event_new_event_handle'$1_Diem_BurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60684,60730)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t35 := Event::new_event_handle<Diem::PreburnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:29+49
    assume {:print "$at(10,60760,60809)"} true;
    call $t35 := $1_Event_new_event_handle'$1_Diem_PreburnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60760,60809)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t36 := Event::new_event_handle<Diem::CancelBurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1259:33+52
    assume {:print "$at(10,60843,60895)"} true;
    call $t36 := $1_Event_new_event_handle'$1_Diem_CancelBurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60843,60895)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t37 := Event::new_event_handle<Diem::ToXDXExchangeRateUpdateEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1260:42+65
    assume {:print "$at(10,60938,61003)"} true;
    call $t37 := $1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60938,61003)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t38 := pack Diem::CurrencyInfo<#0>($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37) at /home/ying/diem/language/diem-framework/modules/Diem.move:1247:29+702
    assume {:print "$at(10,60311,61013)"} true;
    $t38 := $1_Diem_CurrencyInfo'$1_XUS_XUS'($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37);

    // move_to<Diem::CurrencyInfo<#0>>($t38, $t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1247:9+7
    if ($ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $t0, $t38);
    }
    if ($abort_flag) {
        assume {:print "$at(10,60291,60298)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // assume Identical($t39, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t39 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t40, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t40 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // RegisteredCurrencies::add_currency_code($t0, $t5) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1262:9+101
    assume {:print "$at(10,61024,61125)"} true;
    call $1_RegisteredCurrencies_add_currency_code($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(10,61024,61125)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t41 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:10+26
    assume {:print "$at(10,61136,61162)"} true;
    $t41 := false;
    assume $IsValid'bool'($t41);

    // $t42 := pack Diem::MintCapability<#0>($t41) at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:10+26
    $t42 := $1_Diem_MintCapability'$1_XUS_XUS'($t41);

    // $t43 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:38+26
    $t43 := false;
    assume $IsValid'bool'($t43);

    // $t44 := pack Diem::BurnCapability<#0>($t43) at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:38+26
    $t44 := $1_Diem_BurnCapability'$1_XUS_XUS'($t43);

    // trace_return[0]($t42) at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:9+56
    assume {:print "$track_return(13,31,0):", $t42} $t42 == $t42;

    // trace_return[1]($t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:9+56
    assume {:print "$track_return(13,31,1):", $t44} $t44 == $t44;

    // label L8 at /home/ying/diem/language/diem-framework/modules/Diem.move:1267:5+1
    assume {:print "$at(10,61196,61197)"} true;
L8:

    // return ($t42, $t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1267:5+1
    $ret0 := $t42;
    $ret1 := $t44;
    return;

    // label L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1267:5+1
L9:

    // abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1267:5+1
    $abort_code := $t16;
    $abort_flag := true;
    return;

}

// fun Diem::register_currency<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1683
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
    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // assume Identical($t12, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t12 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t13, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t13 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$at(10,59514,59515)"} true;
    assume {:print "$track_local(13,31,0):", $t0} $t0 == $t0;

    // trace_local[to_xdx_exchange_rate]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$track_local(13,31,1):", $t1} $t1 == $t1;

    // trace_local[is_synthetic]($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$track_local(13,31,2):", $t2} $t2 == $t2;

    // trace_local[scaling_factor]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$track_local(13,31,3):", $t3} $t3 == $t3;

    // trace_local[fractional_part]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$track_local(13,31,4):", $t4} $t4 == $t4;

    // trace_local[currency_code]($t5) at /home/ying/diem/language/diem-framework/modules/Diem.move:1230:5+1
    assume {:print "$track_local(13,31,5):", $t5} $t5 == $t5;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(10,59830,59865)"} true;

    // assume Identical($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    assume {:print "$at(10,59830,59865)"} true;

    // assume Identical($t15, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Not(exists<Roles::RoleId>($t14))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    assume ($t15 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) || !$ResourceExists($1_Roles_RoleId_$memory, $t14)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t15) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    if ($t15) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
L11:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t16)), And(Not(exists<Roles::RoleId>($t14)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0), Eq(3, $t16))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t16))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t16)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t14) && $IsEqual'u8'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0) && $IsEqual'u8'(3, $t16))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    assume {:print "$at(10,59830,59865)"} true;
    assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
    goto L9;

    // label L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35
L10:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1239:9+35

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    // >> opaque call: CoreAddresses::assert_currency_info($t0)
    assume {:print "$at(10,59958,60005)"} true;

    // opaque begin: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47

    // assume Identical($t17, Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$CURRENCY_INFO_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    assume ($t17 == !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$CURRENCY_INFO_ADDRESS()));

    // if ($t17) goto L13 else goto L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    if ($t17) { goto L13; } else { goto L12; }

    // label L13 at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
L13:

    // assume And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$CURRENCY_INFO_ADDRESS()), Eq(2, $t16)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$CURRENCY_INFO_ADDRESS()) && $IsEqual'u8'(2, $t16));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    assume {:print "$at(10,59958,60005)"} true;
    assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
    goto L9;

    // label L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47
L12:

    // opaque end: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1241:9+47

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:45+30
    // >> opaque call: $t11 := Signer::address_of($t0)
    assume {:print "$at(10,60067,60097)"} true;

    // $t18 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:45+30

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:45+30
    assume $IsValid'address'($t18);

    // assume Eq<address>($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:45+30
    assume $IsEqual'address'($t18, $1_Signer_spec_address_of($t0));

    // $t18 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:45+30

    // $t19 := exists<Diem::CurrencyInfo<#0>>($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:14+6
    $t19 := $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t18);

    // $t20 := !($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1243:13+1
    call $t20 := $Not($t19);

    // $t21 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:39+14
    assume {:print "$at(10,60138,60152)"} true;
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:13+41
    // >> opaque call: $t15 := Errors::already_published($t14)

    // $t22 := opaque begin: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:13+41

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:13+41
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:13+41
    assume $IsEqual'u64'($t22, 6);

    // $t22 := opaque end: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1244:13+41

    // trace_local[tmp#$7]($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    assume {:print "$at(10,60015,60163)"} true;
    assume {:print "$track_local(13,31,7):", $t22} $t22 == $t22;

    // trace_local[tmp#$6]($t20) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    assume {:print "$track_local(13,31,6):", $t20} $t20 == $t20;

    // if ($t20) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    if ($t20) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    assume {:print "$at(10,60015,60163)"} true;
    assume {:print "$track_abort(13,31):", $t22} $t22 == $t22;

    // $t16 := move($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    $t16 := $t22;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:9+148
    goto L9;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+1
    assume {:print "$at(10,60180,60181)"} true;
L0:

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+1
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := <($t23, $t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:18+1
    call $t24 := $Lt($t23, $t3);

    // if ($t24) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    if ($t24) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
L3:

    // goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:38+14
L2:

    // $t25 := 10000000000 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:56+18
    $t25 := 10000000000;
    assume $IsValid'u64'($t25);

    // $t26 := <=($t3, $t25) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:53+2
    call $t26 := $Le($t3, $t25);

    // $t10 := $t26 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    $t10 := $t26;

    // trace_local[tmp#$10]($t26) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    assume {:print "$track_local(13,31,10):", $t26} $t26 == $t26;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
L4:

    // $t27 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    $t27 := false;
    assume $IsValid'bool'($t27);

    // $t10 := $t27 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    $t10 := $t27;

    // trace_local[tmp#$10]($t27) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
    assume {:print "$track_local(13,31,10):", $t27} $t27 == $t27;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:16+58
L5:

    // $t28 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:101+14
    $t28 := 1;
    assume $IsValid'u64'($t28);

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:76+40
    // >> opaque call: $t22 := Errors::invalid_argument($t21)

    // $t29 := opaque begin: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:76+40

    // assume WellFormed($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:76+40
    assume $IsValid'u64'($t29);

    // assume Eq<u64>($t29, 7) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:76+40
    assume $IsEqual'u64'($t29, 7);

    // $t29 := opaque end: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:76+40

    // trace_local[tmp#$9]($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    assume {:print "$track_local(13,31,9):", $t29} $t29 == $t29;

    // trace_local[tmp#$8]($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    assume {:print "$track_local(13,31,8):", $t10} $t10 == $t10;

    // if ($t10) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    if ($t10) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
L7:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108

    // trace_abort($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    assume {:print "$at(10,60173,60281)"} true;
    assume {:print "$track_abort(13,31):", $t29} $t29 == $t29;

    // $t16 := move($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    $t16 := $t29;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1246:9+108
    goto L9;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1247:17+10
    assume {:print "$at(10,60299,60309)"} true;
L6:

    // $t30 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1248:26+1
    assume {:print "$at(10,60361,60362)"} true;
    $t30 := 0;
    assume $IsValid'u128'($t30);

    // $t31 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1249:28+1
    assume {:print "$at(10,60391,60392)"} true;
    $t31 := 0;
    assume $IsValid'u64'($t31);

    // $t32 := true at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:23+4
    assume {:print "$at(10,60580,60584)"} true;
    $t32 := true;
    assume $IsValid'bool'($t32);

    // $t33 := Event::new_event_handle<Diem::MintEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:26+46
    assume {:print "$at(10,60611,60657)"} true;
    call $t33 := $1_Event_new_event_handle'$1_Diem_MintEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60611,60657)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t34 := Event::new_event_handle<Diem::BurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1257:26+46
    assume {:print "$at(10,60684,60730)"} true;
    call $t34 := $1_Event_new_event_handle'$1_Diem_BurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60684,60730)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t35 := Event::new_event_handle<Diem::PreburnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:29+49
    assume {:print "$at(10,60760,60809)"} true;
    call $t35 := $1_Event_new_event_handle'$1_Diem_PreburnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60760,60809)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t36 := Event::new_event_handle<Diem::CancelBurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1259:33+52
    assume {:print "$at(10,60843,60895)"} true;
    call $t36 := $1_Event_new_event_handle'$1_Diem_CancelBurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60843,60895)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t37 := Event::new_event_handle<Diem::ToXDXExchangeRateUpdateEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1260:42+65
    assume {:print "$at(10,60938,61003)"} true;
    call $t37 := $1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,60938,61003)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t38 := pack Diem::CurrencyInfo<#0>($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37) at /home/ying/diem/language/diem-framework/modules/Diem.move:1247:29+702
    assume {:print "$at(10,60311,61013)"} true;
    $t38 := $1_Diem_CurrencyInfo'$1_XDX_XDX'($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37);

    // move_to<Diem::CurrencyInfo<#0>>($t38, $t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1247:9+7
    if ($ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t0, $t38);
    }
    if ($abort_flag) {
        assume {:print "$at(10,60291,60298)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // assume Identical($t39, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t39 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t40, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t40 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // RegisteredCurrencies::add_currency_code($t0, $t5) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1262:9+101
    assume {:print "$at(10,61024,61125)"} true;
    call $1_RegisteredCurrencies_add_currency_code($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(10,61024,61125)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(13,31):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t41 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:10+26
    assume {:print "$at(10,61136,61162)"} true;
    $t41 := false;
    assume $IsValid'bool'($t41);

    // $t42 := pack Diem::MintCapability<#0>($t41) at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:10+26
    $t42 := $1_Diem_MintCapability'$1_XDX_XDX'($t41);

    // $t43 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:38+26
    $t43 := false;
    assume $IsValid'bool'($t43);

    // $t44 := pack Diem::BurnCapability<#0>($t43) at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:38+26
    $t44 := $1_Diem_BurnCapability'$1_XDX_XDX'($t43);

    // trace_return[0]($t42) at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:9+56
    assume {:print "$track_return(13,31,0):", $t42} $t42 == $t42;

    // trace_return[1]($t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1266:9+56
    assume {:print "$track_return(13,31,1):", $t44} $t44 == $t44;

    // label L8 at /home/ying/diem/language/diem-framework/modules/Diem.move:1267:5+1
    assume {:print "$at(10,61196,61197)"} true;
L8:

    // return ($t42, $t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1267:5+1
    $ret0 := $t42;
    $ret1 := $t44;
    return;

    // label L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1267:5+1
L9:

    // abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1267:5+1
    $abort_code := $t16;
    $abort_flag := true;
    return;

}

// fun Diem::update_minting_ability<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1512:5+397
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
    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1512:5+1
    assume {:print "$at(10,72039,72040)"} true;
    assume {:print "$track_local(13,36,0):", $t0} $t0 == $t0;

    // trace_local[can_mint]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1512:5+1
    assume {:print "$track_local(13,36,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(10,72190,72235)"} true;

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:9+45
    assume {:print "$at(10,72190,72235)"} true;

    // assume Identical($t5, Or(Or(Not(exists<Roles::RoleId>($t4)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:9+45
    assume ($t5 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t4) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:9+45
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:9+45
L4:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t6)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'u8'(5, $t6)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:9+45
    assume {:print "$at(10,72190,72235)"} true;
    assume {:print "$track_abort(13,36):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:9+45
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:9+45
L3:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1517:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,72245,72275)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+30

    // assume Identical($t7, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+30
    assume ($t7 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t7) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+30
    if ($t7) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+30
L6:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t6)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'u8'(5, $t6));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+30
    assume {:print "$at(10,72245,72275)"} true;
    assume {:print "$track_abort(13,36):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+30
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+30
L5:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1518:9+30

    // $t8 := CoreAddresses::CURRENCY_INFO_ADDRESS() on_abort goto L2 with $t6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1519:71+38
    assume {:print "$at(10,72347,72385)"} true;
    call $t8 := $1_CoreAddresses_CURRENCY_INFO_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(10,72347,72385)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(13,36):", $t6} $t6 == $t6;
        goto L2;
    }

    // $t9 := borrow_global<Diem::CurrencyInfo<#0>>($t8) on_abort goto L2 with $t6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1519:29+17
    if (!$ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t8)) {
        call $ExecFailureAbort();
    } else {
        $t9 := $Mutation($Global($t8), EmptyVec(), $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t8));
    }
    if ($abort_flag) {
        assume {:print "$at(10,72305,72322)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(13,36):", $t6} $t6 == $t6;
        goto L2;
    }

    // trace_local[currency_info]($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1519:13+13
    $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'' := $Dereference($t9);
    assume {:print "$track_local(13,36,2):", $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''} $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'' == $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'';

    // $t10 := borrow_field<Diem::CurrencyInfo<#0>>.can_mint($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1520:9+22
    assume {:print "$at(10,72396,72418)"} true;
    $t10 := $ChildMutation($t9, 7, $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'($Dereference($t9)));

    // write_ref($t10, $t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1520:9+33
    $t10 := $UpdateMutation($t10, $t1);

    // write_back[Reference($t9).can_mint]($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:1520:9+33
    $t9 := $UpdateMutation($t9, $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_can_mint($Dereference($t9), $Dereference($t10)));

    // pack_ref_deep($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1520:9+33

    // write_back[Diem::CurrencyInfo<#0>@]($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1520:9+33
    $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $GlobalLocationAddress($t9),
        $Dereference($t9));

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1521:5+1
    assume {:print "$at(10,72435,72436)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:1521:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1521:5+1
L2:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1521:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun Diem::zero<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1109:5+134
procedure {:inline 1} $1_Diem_zero'$1_XUS_XUS'() returns ($ret0: $1_Diem_Diem'$1_XUS_XUS')
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $t3: $1_Diem_Diem'$1_XUS_XUS';
    var $temp_0'$1_Diem_Diem'$1_XUS_XUS'': $1_Diem_Diem'$1_XUS_XUS';

    // bytecode translation starts here
    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,54275,54305)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30

    // assume Identical($t0, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    assume ($t0 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
L4:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'u8'(5, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    assume {:print "$at(10,54275,54305)"} true;
    assume {:print "$track_abort(13,43):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
L3:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30

    // $t2 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1111:33+1
    assume {:print "$at(10,54339,54340)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack Diem::Diem<#0>($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1111:9+27
    $t3 := $1_Diem_Diem'$1_XUS_XUS'($t2);

    // trace_return[0]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1111:9+27
    assume {:print "$track_return(13,43,0):", $t3} $t3 == $t3;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1112:5+1
    assume {:print "$at(10,54347,54348)"} true;
L1:

    // return $t3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1112:5+1
    $ret0 := $t3;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1112:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1112:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun Diem::zero<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1109:5+134
procedure {:inline 1} $1_Diem_zero'$1_XDX_XDX'() returns ($ret0: $1_Diem_Diem'$1_XDX_XDX')
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $t3: $1_Diem_Diem'$1_XDX_XDX';
    var $temp_0'$1_Diem_Diem'$1_XDX_XDX'': $1_Diem_Diem'$1_XDX_XDX';

    // bytecode translation starts here
    // nop at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(10,54275,54305)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30

    // assume Identical($t0, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    assume ($t0 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
L4:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'u8'(5, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    assume {:print "$at(10,54275,54305)"} true;
    assume {:print "$track_abort(13,43):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30
L3:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1110:9+30

    // $t2 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1111:33+1
    assume {:print "$at(10,54339,54340)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack Diem::Diem<#0>($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1111:9+27
    $t3 := $1_Diem_Diem'$1_XDX_XDX'($t2);

    // trace_return[0]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1111:9+27
    assume {:print "$track_return(13,43,0):", $t3} $t3 == $t3;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1112:5+1
    assume {:print "$at(10,54347,54348)"} true;
L1:

    // return $t3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1112:5+1
    $ret0 := $t3;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1112:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1112:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// struct AccountLimits::AccountLimitMutationCapability at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:13:5+51
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

// struct AccountLimits::LimitsDefinition<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:20:5+398
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

// struct AccountLimits::LimitsDefinition<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:20:5+398
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

// fun AccountLimits::publish_unrestricted_limits<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:5+522
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
    // trace_local[publish_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:5+1
    assume {:print "$at(5,7840,7841)"} true;
    assume {:print "$track_local(14,8,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:49+35
    // >> opaque call: $t8 := Signer::address_of($t0)
    assume {:print "$at(5,7988,8023)"} true;

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:49+35

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:49+35
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:49+35
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:49+35

    // $t9 := exists<AccountLimits::LimitsDefinition<#0>>($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:14+6
    $t9 := $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $t8);

    // $t10 := !($t9) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:13+1
    call $t10 := $Not($t9);

    // $t11 := 0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:39+18
    assume {:print "$at(5,8064,8082)"} true;
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // nop at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+45
    // >> opaque call: $t12 := Errors::already_published($t11)

    // $t12 := opaque begin: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+45

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+45
    assume $IsValid'u64'($t12);

    // assume Eq<u64>($t12, 6) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+45
    assume $IsEqual'u64'($t12, 6);

    // $t12 := opaque end: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+45

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    assume {:print "$at(5,7932,8093)"} true;
    assume {:print "$track_local(14,8,2):", $t12} $t12 == $t12;

    // trace_local[tmp#$1]($t10) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    assume {:print "$track_local(14,8,1):", $t10} $t10 == $t10;

    // if ($t10) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    assume {:print "$at(5,7932,8093)"} true;
    assume {:print "$track_abort(14,8):", $t12} $t12 == $t12;

    // $t13 := move($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    $t13 := $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:192:13+15
    assume {:print "$at(5,8124,8139)"} true;
L0:

    // trace_local[tmp#$7]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:192:13+15
    assume {:print "$track_local(14,8,7):", $t0} $t0 == $t0;

    // $t14 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:194:29+7
    assume {:print "$at(5,8210,8217)"} true;
    $t14 := 18446744073709551615;
    assume $IsValid'u64'($t14);

    // $t15 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:195:30+7
    assume {:print "$at(5,8248,8255)"} true;
    $t15 := 18446744073709551615;
    assume $IsValid'u64'($t15);

    // $t16 := 86400000000 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:30+7
    assume {:print "$at(5,8324,8331)"} true;
    $t16 := 86400000000;
    assume $IsValid'u64'($t16);

    // $t17 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:196:30+7
    assume {:print "$at(5,8286,8293)"} true;
    $t17 := 18446744073709551615;
    assume $IsValid'u64'($t17);

    // $t18 := pack AccountLimits::LimitsDefinition<#0>($t14, $t15, $t16, $t17) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:193:13+193
    assume {:print "$at(5,8153,8346)"} true;
    $t18 := $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($t14, $t15, $t16, $t17);

    // move_to<AccountLimits::LimitsDefinition<#0>>($t18, $t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:191:9+7
    assume {:print "$at(5,8103,8110)"} true;
    if ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory := $ResourceUpdate($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $t0, $t18);
    }
    if ($abort_flag) {
        assume {:print "$at(5,8103,8110)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(14,8):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:200:5+1
    assume {:print "$at(5,8361,8362)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:200:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:200:5+1
L3:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:200:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// fun AccountLimits::publish_unrestricted_limits<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:5+522
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
    // trace_local[publish_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:186:5+1
    assume {:print "$at(5,7840,7841)"} true;
    assume {:print "$track_local(14,8,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:49+35
    // >> opaque call: $t8 := Signer::address_of($t0)
    assume {:print "$at(5,7988,8023)"} true;

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:49+35

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:49+35
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:49+35
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:49+35

    // $t9 := exists<AccountLimits::LimitsDefinition<#0>>($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:14+6
    $t9 := $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $t8);

    // $t10 := !($t9) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:13+1
    call $t10 := $Not($t9);

    // $t11 := 0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:39+18
    assume {:print "$at(5,8064,8082)"} true;
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // nop at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+45
    // >> opaque call: $t12 := Errors::already_published($t11)

    // $t12 := opaque begin: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+45

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+45
    assume $IsValid'u64'($t12);

    // assume Eq<u64>($t12, 6) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+45
    assume $IsEqual'u64'($t12, 6);

    // $t12 := opaque end: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+45

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    assume {:print "$at(5,7932,8093)"} true;
    assume {:print "$track_local(14,8,2):", $t12} $t12 == $t12;

    // trace_local[tmp#$1]($t10) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    assume {:print "$track_local(14,8,1):", $t10} $t10 == $t10;

    // if ($t10) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    assume {:print "$at(5,7932,8093)"} true;
    assume {:print "$track_abort(14,8):", $t12} $t12 == $t12;

    // $t13 := move($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    $t13 := $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:9+161
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:192:13+15
    assume {:print "$at(5,8124,8139)"} true;
L0:

    // trace_local[tmp#$7]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:192:13+15
    assume {:print "$track_local(14,8,7):", $t0} $t0 == $t0;

    // $t14 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:194:29+7
    assume {:print "$at(5,8210,8217)"} true;
    $t14 := 18446744073709551615;
    assume $IsValid'u64'($t14);

    // $t15 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:195:30+7
    assume {:print "$at(5,8248,8255)"} true;
    $t15 := 18446744073709551615;
    assume $IsValid'u64'($t15);

    // $t16 := 86400000000 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:30+7
    assume {:print "$at(5,8324,8331)"} true;
    $t16 := 86400000000;
    assume $IsValid'u64'($t16);

    // $t17 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:196:30+7
    assume {:print "$at(5,8286,8293)"} true;
    $t17 := 18446744073709551615;
    assume $IsValid'u64'($t17);

    // $t18 := pack AccountLimits::LimitsDefinition<#0>($t14, $t15, $t16, $t17) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:193:13+193
    assume {:print "$at(5,8153,8346)"} true;
    $t18 := $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($t14, $t15, $t16, $t17);

    // move_to<AccountLimits::LimitsDefinition<#0>>($t18, $t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:191:9+7
    assume {:print "$at(5,8103,8110)"} true;
    if ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory := $ResourceUpdate($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $t0, $t18);
    }
    if ($abort_flag) {
        assume {:print "$at(5,8103,8110)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(14,8):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:200:5+1
    assume {:print "$at(5,8361,8362)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:200:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:200:5+1
L3:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:200:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// struct XUS::XUS at /home/ying/diem/language/diem-framework/modules/XUS.move:12:5+24
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

// fun XUS::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/XUS.move:15:5+595
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
    // assume Identical($t2, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t1));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t4 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t5, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t5 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t6, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t1));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t1));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/XUS.move:15:5+1
    assume {:print "$at(38,399,400)"} true;
    assume {:print "$track_local(15,0,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/XUS.move:15:5+1
    assume {:print "$track_local(15,0,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(38,496,527)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+31

    // assume Identical($t9, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+31
    assume ($t9 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t9) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+31
    if ($t9) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t10)) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t10));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+31
    assume {:print "$at(38,496,527)"} true;
    assume {:print "$track_abort(15,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t1)
    assume {:print "$at(38,537,582)"} true;

    // assume Identical($t11, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+45
    assume {:print "$at(38,537,582)"} true;

    // assume Identical($t12, Or(Or(Not(exists<Roles::RoleId>($t11)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t11)), 1)), Neq<address>(Signer::spec_address_of($t1), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+45
    assume ($t12 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t11) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t11)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())));

    // if ($t12) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+45
    if ($t12) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+45
L6:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t11)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t11)), 1), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t1), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(2, $t10))) at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t11) && $IsEqual'u8'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t11)), 1) && $IsEqual'u8'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(2, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+45
    assume {:print "$at(38,537,582)"} true;
    assume {:print "$track_abort(15,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+45
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+45
L5:

    // opaque end: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/XUS.move:21:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(38,592,627)"} true;

    // assume Identical($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t13 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/XUS.move:21:9+35
    assume {:print "$at(38,592,627)"} true;

    // assume Identical($t14, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Not(exists<Roles::RoleId>($t13))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/XUS.move:21:9+35
    assume ($t14 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) || !$ResourceExists($1_Roles_RoleId_$memory, $t13)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t14) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/XUS.move:21:9+35
    if ($t14) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/XUS.move:21:9+35
L8:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t10)), And(Not(exists<Roles::RoleId>($t13)), Eq(5, $t10))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t10))) at /home/ying/diem/language/diem-framework/modules/XUS.move:21:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t10)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t13) && $IsEqual'u8'(5, $t10))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0) && $IsEqual'u8'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:21:9+35
    assume {:print "$at(38,592,627)"} true;
    assume {:print "$track_abort(15,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:21:9+35
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/XUS.move:21:9+35
L7:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/XUS.move:21:9+35

    // $t15 := 1 at /home/ying/diem/language/diem-framework/modules/XUS.move:25:48+1
    assume {:print "$at(38,766,767)"} true;
    $t15 := 1;
    assume $IsValid'u64'($t15);

    // $t16 := 1 at /home/ying/diem/language/diem-framework/modules/XUS.move:25:51+1
    $t16 := 1;
    assume $IsValid'u64'($t16);

    // nop at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
    // >> opaque call: $t4 := FixedPoint32::create_from_rational($t2, $t3)

    // assume Identical($t17, Shl($t15, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+39
    assume {:print "$at(42,8350,8389)"} true;
    assume ($t17 == $shl($t15, 64));

    // assume Identical($t18, Shl($t16, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:187:9+43
    assume {:print "$at(42,8398,8441)"} true;
    assume ($t18 == $shl($t16, 32));

    // assume Identical($t19, Div($t17, $t18)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:188:9+53
    assume {:print "$at(42,8450,8503)"} true;
    assume ($t19 == ($t17 div $t18));

    // assume Identical($t20, Shl($t15, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+39
    assume {:print "$at(42,8350,8389)"} true;
    assume ($t20 == $shl($t15, 64));

    // assume Identical($t21, Shl($t16, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:187:9+43
    assume {:print "$at(42,8398,8441)"} true;
    assume ($t21 == $shl($t16, 32));

    // assume Identical($t22, Div($t20, $t21)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:188:9+53
    assume {:print "$at(42,8450,8503)"} true;
    assume ($t22 == ($t20 div $t21));

    // $t23 := opaque begin: FixedPoint32::create_from_rational($t15, $t16) at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
    assume {:print "$at(38,731,771)"} true;

    // assume Identical($t24, Or(Or(Eq<num>($t21, 0), And(Eq<num>($t22, 0), Neq<num>($t20, 0))), Gt($t22, 18446744073709551615))) at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
    assume ($t24 == (($IsEqual'num'($t21, 0) || ($IsEqual'num'($t22, 0) && !$IsEqual'num'($t20, 0))) || ($t22 > 18446744073709551615)));

    // if ($t24) goto L10 else goto L9 at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
    if ($t24) { goto L10; } else { goto L9; }

    // label L10 at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
L10:

    // assume Or(Or(And(Eq<num>($t21, 0), Eq(7, $t10)), And(And(Eq<num>($t22, 0), Neq<num>($t20, 0)), Eq(7, $t10))), And(Gt($t22, 18446744073709551615), Eq(8, $t10))) at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
    assume ((($IsEqual'num'($t21, 0) && $IsEqual'u8'(7, $t10)) || (($IsEqual'num'($t22, 0) && !$IsEqual'num'($t20, 0)) && $IsEqual'u8'(7, $t10))) || (($t22 > 18446744073709551615) && $IsEqual'u8'(8, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
    assume {:print "$at(38,731,771)"} true;
    assume {:print "$track_abort(15,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
    goto L2;

    // label L9 at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
L9:

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
    assume $IsValid'$1_FixedPoint32_FixedPoint32'($t23);

    // assume Eq<FixedPoint32::FixedPoint32>($t23, FixedPoint32::spec_create_from_rational($t15, $t16)) at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40
    assume $IsEqual'$1_FixedPoint32_FixedPoint32'($t23, $1_FixedPoint32_spec_create_from_rational($t15, $t16));

    // $t23 := opaque end: FixedPoint32::create_from_rational($t15, $t16) at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+40

    // $t25 := 1000000 at /home/ying/diem/language/diem-framework/modules/XUS.move:26:13+7
    assume {:print "$at(38,809,816)"} true;
    $t25 := 1000000;
    assume $IsValid'u64'($t25);

    // $t26 := 100 at /home/ying/diem/language/diem-framework/modules/XUS.move:27:13+3
    assume {:print "$at(38,855,858)"} true;
    $t26 := 100;
    assume $IsValid'u64'($t26);

    // $t27 := [88, 85, 83] at /home/ying/diem/language/diem-framework/modules/XUS.move:28:13+6
    assume {:print "$at(38,902,908)"} true;
    $t27 := MakeVec3(88, 85, 83);
    assume $IsValid'vec'u8''($t27);

    // assume Identical($t28, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t28 == $1_Signer_spec_address_of($t1));

    // assume Identical($t29, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t29 == $1_Signer_spec_address_of($t0));

    // assume Identical($t30, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t30 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t31, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t31 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t32, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t32 == $1_Signer_spec_address_of($t1));

    // assume Identical($t33, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume ($t33 == $1_Signer_spec_address_of($t1));

    // assume Identical($t34, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume ($t34 == $1_Signer_spec_address_of($t1));

    // Diem::register_SCS_currency<XUS::XUS>($t0, $t1, $t23, $t25, $t26, $t27) on_abort goto L2 with $t10 at /home/ying/diem/language/diem-framework/modules/XUS.move:22:9+281
    assume {:print "$at(38,637,918)"} true;
    call $1_Diem_register_SCS_currency'$1_XUS_XUS'($t0, $t1, $t23, $t25, $t26, $t27);
    if ($abort_flag) {
        assume {:print "$at(38,637,918)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(15,0):", $t10} $t10 == $t10;
        goto L2;
    }

    // AccountLimits::publish_unrestricted_limits<XUS::XUS>($t0) on_abort goto L2 with $t10 at /home/ying/diem/language/diem-framework/modules/XUS.move:30:9+59
    assume {:print "$at(38,928,987)"} true;
    call $1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'($t0);
    if ($abort_flag) {
        assume {:print "$at(38,928,987)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(15,0):", $t10} $t10 == $t10;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/XUS.move:31:5+1
    assume {:print "$at(38,993,994)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/XUS.move:31:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:31:5+1
L2:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:31:5+1
    $abort_code := $t10;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/XDX.move:134:9+105
function {:inline} $1_XDX_reserve_exists($1_XDX_Reserve_$memory: $Memory $1_XDX_Reserve): bool {
    $ResourceExists($1_XDX_Reserve_$memory, $1_CoreAddresses_$CURRENCY_INFO_ADDRESS())
}

// struct XDX::XDX at /home/ying/diem/language/diem-framework/modules/XDX.move:16:5+24
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

// struct XDX::Reserve at /home/ying/diem/language/diem-framework/modules/XDX.move:25:5+677
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

// fun XDX::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/XDX.move:49:5+998
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
    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t8 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t9, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t9 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // assume Identical($t11, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t1));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:49:5+1
    assume {:print "$at(37,2310,2311)"} true;
    assume {:print "$track_local(16,0,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/XDX.move:49:5+1
    assume {:print "$track_local(16,0,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/XDX.move:53:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(37,2407,2438)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XDX.move:53:9+31

    // assume Identical($t12, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/XDX.move:53:9+31
    assume ($t12 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t12) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/XDX.move:53:9+31
    if ($t12) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/XDX.move:53:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t13)) at /home/ying/diem/language/diem-framework/modules/XDX.move:53:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t13));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:53:9+31
    assume {:print "$at(37,2407,2438)"} true;
    assume {:print "$track_abort(16,0):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:53:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/XDX.move:53:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XDX.move:53:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/XDX.move:55:9+47
    // >> opaque call: CoreAddresses::assert_currency_info($t0)
    assume {:print "$at(37,2482,2529)"} true;

    // opaque begin: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:55:9+47

    // assume Identical($t14, Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$CURRENCY_INFO_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/XDX.move:55:9+47
    assume ($t14 == !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$CURRENCY_INFO_ADDRESS()));

    // if ($t14) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/XDX.move:55:9+47
    if ($t14) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/XDX.move:55:9+47
L7:

    // assume And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$CURRENCY_INFO_ADDRESS()), Eq(2, $t13)) at /home/ying/diem/language/diem-framework/modules/XDX.move:55:9+47
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$CURRENCY_INFO_ADDRESS()) && $IsEqual'u8'(2, $t13));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:55:9+47
    assume {:print "$at(37,2482,2529)"} true;
    assume {:print "$track_abort(16,0):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:55:9+47
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/XDX.move:55:9+47
L6:

    // opaque end: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:55:9+47

    // $t15 := CoreAddresses::DIEM_ROOT_ADDRESS() on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:57:33+34
    assume {:print "$at(37,2598,2632)"} true;
    call $t15 := $1_CoreAddresses_DIEM_ROOT_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(37,2598,2632)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(16,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // $t16 := exists<XDX::Reserve>($t15) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:17+6
    $t16 := $ResourceExists($1_XDX_Reserve_$memory, $t15);

    // $t17 := !($t16) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:16+1
    call $t17 := $Not($t16);

    // $t18 := 0 at /home/ying/diem/language/diem-framework/modules/XDX.move:57:96+8
    $t18 := 0;
    assume $IsValid'u64'($t18);

    // nop at /home/ying/diem/language/diem-framework/modules/XDX.move:57:70+35
    // >> opaque call: $t11 := Errors::already_published($t10)

    // $t19 := opaque begin: Errors::already_published($t18) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:70+35

    // assume WellFormed($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:70+35
    assume $IsValid'u64'($t19);

    // assume Eq<u64>($t19, 6) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:70+35
    assume $IsEqual'u64'($t19, 6);

    // $t19 := opaque end: Errors::already_published($t18) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:70+35

    // trace_local[tmp#$6]($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:9+97
    assume {:print "$track_local(16,0,6):", $t19} $t19 == $t19;

    // trace_local[tmp#$5]($t17) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:9+97
    assume {:print "$track_local(16,0,5):", $t17} $t17 == $t17;

    // if ($t17) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/XDX.move:57:9+97
    if ($t17) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/XDX.move:57:9+97
L1:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:9+97

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:9+97

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:9+97
    assume {:print "$at(37,2574,2671)"} true;
    assume {:print "$track_abort(16,0):", $t19} $t19 == $t19;

    // $t13 := move($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:9+97
    $t13 := $t19;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:57:9+97
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+10
    assume {:print "$at(37,2750,2760)"} true;
L0:

    // $t20 := 1 at /home/ying/diem/language/diem-framework/modules/XDX.move:60:48+1
    assume {:print "$at(37,2809,2810)"} true;
    $t20 := 1;
    assume $IsValid'u64'($t20);

    // $t21 := 1 at /home/ying/diem/language/diem-framework/modules/XDX.move:60:51+1
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // nop at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
    // >> opaque call: $t14 := FixedPoint32::create_from_rational($t12, $t13)

    // assume Identical($t22, Shl($t20, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+39
    assume {:print "$at(42,8350,8389)"} true;
    assume ($t22 == $shl($t20, 64));

    // assume Identical($t23, Shl($t21, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:187:9+43
    assume {:print "$at(42,8398,8441)"} true;
    assume ($t23 == $shl($t21, 32));

    // assume Identical($t24, Div($t22, $t23)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:188:9+53
    assume {:print "$at(42,8450,8503)"} true;
    assume ($t24 == ($t22 div $t23));

    // assume Identical($t25, Shl($t20, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+39
    assume {:print "$at(42,8350,8389)"} true;
    assume ($t25 == $shl($t20, 64));

    // assume Identical($t26, Shl($t21, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:187:9+43
    assume {:print "$at(42,8398,8441)"} true;
    assume ($t26 == $shl($t21, 32));

    // assume Identical($t27, Div($t25, $t26)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:188:9+53
    assume {:print "$at(42,8450,8503)"} true;
    assume ($t27 == ($t25 div $t26));

    // $t28 := opaque begin: FixedPoint32::create_from_rational($t20, $t21) at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
    assume {:print "$at(37,2774,2814)"} true;

    // assume Identical($t29, Or(Or(Eq<num>($t26, 0), And(Eq<num>($t27, 0), Neq<num>($t25, 0))), Gt($t27, 18446744073709551615))) at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
    assume ($t29 == (($IsEqual'num'($t26, 0) || ($IsEqual'num'($t27, 0) && !$IsEqual'num'($t25, 0))) || ($t27 > 18446744073709551615)));

    // if ($t29) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
    if ($t29) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
L9:

    // assume Or(Or(And(Eq<num>($t26, 0), Eq(7, $t13)), And(And(Eq<num>($t27, 0), Neq<num>($t25, 0)), Eq(7, $t13))), And(Gt($t27, 18446744073709551615), Eq(8, $t13))) at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
    assume ((($IsEqual'num'($t26, 0) && $IsEqual'u8'(7, $t13)) || (($IsEqual'num'($t27, 0) && !$IsEqual'num'($t25, 0)) && $IsEqual'u8'(7, $t13))) || (($t27 > 18446744073709551615) && $IsEqual'u8'(8, $t13)));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
    assume {:print "$at(37,2774,2814)"} true;
    assume {:print "$track_abort(16,0):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
L8:

    // assume WellFormed($t28) at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
    assume $IsValid'$1_FixedPoint32_FixedPoint32'($t28);

    // assume Eq<FixedPoint32::FixedPoint32>($t28, FixedPoint32::spec_create_from_rational($t20, $t21)) at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40
    assume $IsEqual'$1_FixedPoint32_FixedPoint32'($t28, $1_FixedPoint32_spec_create_from_rational($t20, $t21));

    // $t28 := opaque end: FixedPoint32::create_from_rational($t20, $t21) at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+40

    // $t30 := true at /home/ying/diem/language/diem-framework/modules/XDX.move:61:13+4
    assume {:print "$at(37,2852,2856)"} true;
    $t30 := true;
    assume $IsValid'bool'($t30);

    // $t31 := 1000000 at /home/ying/diem/language/diem-framework/modules/XDX.move:62:13+7
    assume {:print "$at(37,2889,2896)"} true;
    $t31 := 1000000;
    assume $IsValid'u64'($t31);

    // $t32 := 1000 at /home/ying/diem/language/diem-framework/modules/XDX.move:63:13+4
    assume {:print "$at(37,2935,2939)"} true;
    $t32 := 1000;
    assume $IsValid'u64'($t32);

    // $t33 := [88, 68, 88] at /home/ying/diem/language/diem-framework/modules/XDX.move:64:13+6
    assume {:print "$at(37,2982,2988)"} true;
    $t33 := MakeVec3(88, 68, 88);
    assume $IsValid'vec'u8''($t33);

    // assume Identical($t34, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t34 == $1_Signer_spec_address_of($t0));

    // assume Identical($t35, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t35 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t36, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t36 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // ($t37, $t38) := Diem::register_currency<XDX::XDX>($t0, $t28, $t30, $t31, $t32, $t33) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:58:36+290
    assume {:print "$at(37,2708,2998)"} true;
    call $t37,$t38 := $1_Diem_register_currency'$1_XDX_XDX'($t0, $t28, $t30, $t31, $t32, $t33);
    if ($abort_flag) {
        assume {:print "$at(37,2708,2998)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(16,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // trace_local[burn_cap]($t38) at /home/ying/diem/language/diem-framework/modules/XDX.move:58:24+8
    assume {:print "$track_local(16,0,2):", $t38} $t38 == $t38;

    // trace_local[mint_cap]($t37) at /home/ying/diem/language/diem-framework/modules/XDX.move:58:14+8
    assume {:print "$track_local(16,0,3):", $t37} $t37 == $t37;

    // $t39 := false at /home/ying/diem/language/diem-framework/modules/XDX.move:67:55+5
    assume {:print "$at(37,3087,3092)"} true;
    $t39 := false;
    assume $IsValid'bool'($t39);

    // assume Identical($t40, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t40 == $1_Signer_spec_address_of($t1));

    // Diem::update_minting_ability<XDX::XDX>($t1, $t39) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:67:9+52
    assume {:print "$at(37,3041,3093)"} true;
    call $1_Diem_update_minting_ability'$1_XDX_XDX'($t1, $t39);
    if ($abort_flag) {
        assume {:print "$at(37,3041,3093)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(16,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // AccountLimits::publish_unrestricted_limits<XDX::XDX>($t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:68:9+59
    assume {:print "$at(37,3103,3162)"} true;
    call $1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'($t0);
    if ($abort_flag) {
        assume {:print "$at(37,3103,3162)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(16,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // assume Identical($t41, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t41 == $1_Signer_spec_address_of($t1));

    // $t42 := Diem::create_preburn<XDX::XDX>($t1) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:69:27+37
    assume {:print "$at(37,3190,3227)"} true;
    call $t42 := $1_Diem_create_preburn'$1_XDX_XDX'($t1);
    if ($abort_flag) {
        assume {:print "$at(37,3190,3227)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(16,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // trace_local[preburn_cap]($t42) at /home/ying/diem/language/diem-framework/modules/XDX.move:69:13+11
    assume {:print "$track_local(16,0,4):", $t42} $t42 == $t42;

    // $t43 := pack XDX::Reserve($t37, $t38, $t42) at /home/ying/diem/language/diem-framework/modules/XDX.move:70:29+43
    assume {:print "$at(37,3257,3300)"} true;
    $t43 := $1_XDX_Reserve($t37, $t38, $t42);

    // move_to<XDX::Reserve>($t43, $t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:70:9+7
    if ($ResourceExists($1_XDX_Reserve_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_XDX_Reserve_$memory := $ResourceUpdate($1_XDX_Reserve_$memory, $t0, $t43);
    }
    if ($abort_flag) {
        assume {:print "$at(37,3237,3244)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(16,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/XDX.move:71:5+1
    assume {:print "$at(37,3307,3308)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/XDX.move:71:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:71:5+1
L3:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:71:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:64:5+153
function {:inline} $1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig, validator_operator_addr: int): bool {
    $ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, validator_operator_addr)
}

// struct ValidatorOperatorConfig::ValidatorOperatorConfig at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:11:5+141
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

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:88:5+170
function {:inline} $1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'(t: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): $1_DiemAccount_KeyRotationCapability {
    $1_Vector_$borrow'$1_DiemAccount_KeyRotationCapability'($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(t), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:88:5+170
function {:inline} $1_Option_$borrow'$1_DiemAccount_WithdrawCapability'(t: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): $1_DiemAccount_WithdrawCapability {
    $1_Vector_$borrow'$1_DiemAccount_WithdrawCapability'($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(t), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:53:5+95
function {:inline} $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'(t: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    $1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:53:5+95
function {:inline} $1_Option_$is_none'$1_DiemAccount_WithdrawCapability'(t: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    $1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:63:5+96
function {:inline} $1_Option_$is_some'$1_ValidatorConfig_Config'(t: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    !$1_Vector_$is_empty'$1_ValidatorConfig_Config'($vec#$1_Option_Option'$1_ValidatorConfig_Config'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:63:5+96
function {:inline} $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'(t: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    !$1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:63:5+96
function {:inline} $1_Option_$is_some'$1_DiemAccount_WithdrawCapability'(t: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    !$1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(t))
}

// struct Option::Option<address> at /home/ying/diem/language/move-stdlib/modules/Option.move:10:5+81
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

// struct Option::Option<ValidatorConfig::Config> at /home/ying/diem/language/move-stdlib/modules/Option.move:10:5+81
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

// struct Option::Option<DiemAccount::KeyRotationCapability> at /home/ying/diem/language/move-stdlib/modules/Option.move:10:5+81
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

// struct Option::Option<DiemAccount::WithdrawCapability> at /home/ying/diem/language/move-stdlib/modules/Option.move:10:5+81
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

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:85:5+84
function {:inline} $1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): bool {
    $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:231:5+176
function {:inline} $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): bool {
    ($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, addr) && $1_Option_$is_some'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr))))
}

// struct ValidatorConfig::Config at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:18:5+178
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

// struct ValidatorConfig::ValidatorConfig at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:24:5+260
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

// spec fun at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:48:5+150
function {:inline} $1_TransactionFee_$is_coin_initialized'$1_XUS_XUS'($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory: $Memory $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    $ResourceExists($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())
}

// spec fun at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:52:5+69
function {:inline} $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory: $Memory $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    $1_TransactionFee_$is_coin_initialized'$1_XUS_XUS'($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory)
}

// struct TransactionFee::TransactionFee<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:17:5+116
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

// fun TransactionFee::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:5+253
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
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:5+1
    assume {:print "$at(31,844,845)"} true;
    assume {:print "$track_local(21,2,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(31,912,943)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:9+31

    // assume Identical($t2, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:9+31
    assume ($t2 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t2) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:9+31
    if ($t2) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t3)) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:9+31
    assume {:print "$at(31,912,943)"} true;
    assume {:print "$track_abort(21,2):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:31:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(31,953,998)"} true;

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:31:9+45
    assume {:print "$at(31,953,998)"} true;

    // assume Identical($t5, Or(Or(Not(exists<Roles::RoleId>($t4)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:31:9+45
    assume ($t5 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t4) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:31:9+45
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:31:9+45
L6:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t3)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1), Eq(3, $t3))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(2, $t3))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:31:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'u8'(5, $t3)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1) && $IsEqual'u8'(3, $t3))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(2, $t3)));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:31:9+45
    assume {:print "$at(31,953,998)"} true;
    assume {:print "$track_abort(21,2):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:31:9+45
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:31:9+45
L5:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:31:9+45

    // TransactionFee::add_txn_fee_currency<XUS::XUS>($t0) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:33:9+37
    assume {:print "$at(31,1053,1090)"} true;
    call $1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'($t0);
    if ($abort_flag) {
        assume {:print "$at(31,1053,1090)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(21,2):", $t3} $t3 == $t3;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:34:5+1
    assume {:print "$at(31,1096,1097)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:34:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:34:5+1
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:34:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TransactionFee::add_txn_fee_currency<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:59:5+508
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
    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:59:5+1
    assume {:print "$at(31,2117,2118)"} true;
    assume {:print "$track_local(21,0,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:9+45
    // >> opaque call: Roles::assert_treasury_compliance($t0)
    assume {:print "$at(31,2197,2242)"} true;

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:9+45
    assume {:print "$at(31,2197,2242)"} true;

    // assume Identical($t4, Or(Or(Not(exists<Roles::RoleId>($t3)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:9+45
    assume ($t4 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t3) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())));

    // if ($t4) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:9+45
    if ($t4) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t3)), Eq(5, $t5)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t3) && $IsEqual'u8'(5, $t5)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1) && $IsEqual'u8'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:9+45
    assume {:print "$at(31,2197,2242)"} true;
    assume {:print "$track_abort(21,0):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:9+45

    // nop at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:61:9+36
    // >> opaque call: Diem::assert_is_currency<#0>()
    assume {:print "$at(31,2252,2288)"} true;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:61:9+36

    // assume Identical($t6, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:61:9+36
    assume ($t6 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t6) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:61:9+36
    if ($t6) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:61:9+36
L7:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t5)) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:61:9+36
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'u8'(5, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:61:9+36
    assume {:print "$at(31,2252,2288)"} true;
    assume {:print "$track_abort(21,0):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:61:9+36
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:61:9+36
L6:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:61:9+36

    // $t7 := TransactionFee::is_coin_initialized<#0>() on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:63:14+31
    assume {:print "$at(31,2319,2350)"} true;
    call $t7 := $1_TransactionFee_is_coin_initialized'$1_XUS_XUS'();
    if ($abort_flag) {
        assume {:print "$at(31,2319,2350)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(21,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t8 := !($t7) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:63:13+1
    call $t8 := $Not($t7);

    // $t9 := 0 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:64:39+16
    assume {:print "$at(31,2390,2406)"} true;
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // nop at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:64:13+43
    // >> opaque call: $t6 := Errors::already_published($t5)

    // $t10 := opaque begin: Errors::already_published($t9) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:64:13+43

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:64:13+43
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 6) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:64:13+43
    assume $IsEqual'u64'($t10, 6);

    // $t10 := opaque end: Errors::already_published($t9) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:64:13+43

    // trace_local[tmp#$2]($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:62:9+119
    assume {:print "$at(31,2298,2417)"} true;
    assume {:print "$track_local(21,0,2):", $t10} $t10 == $t10;

    // trace_local[tmp#$1]($t8) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:62:9+119
    assume {:print "$track_local(21,0,1):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:62:9+119
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:62:9+119
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:62:9+119

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:62:9+119
    assume {:print "$at(31,2298,2417)"} true;
    assume {:print "$track_abort(21,0):", $t10} $t10 == $t10;

    // $t5 := move($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:62:9+119
    $t5 := $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:62:9+119
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:67:13+10
    assume {:print "$at(31,2448,2458)"} true;
L0:

    // $t11 := Diem::zero<#0>() on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:69:26+12
    assume {:print "$at(31,2524,2536)"} true;
    call $t11 := $1_Diem_zero'$1_XUS_XUS'();
    if ($abort_flag) {
        assume {:print "$at(31,2524,2536)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(21,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // $t13 := Diem::create_preburn<#0>($t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:70:26+32
    assume {:print "$at(31,2563,2595)"} true;
    call $t13 := $1_Diem_create_preburn'$1_XUS_XUS'($t0);
    if ($abort_flag) {
        assume {:print "$at(31,2563,2595)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(21,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t14 := pack TransactionFee::TransactionFee<#0>($t11, $t13) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:68:13+137
    assume {:print "$at(31,2472,2609)"} true;
    $t14 := $1_TransactionFee_TransactionFee'$1_XUS_XUS'($t11, $t13);

    // move_to<TransactionFee::TransactionFee<#0>>($t14, $t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:66:9+7
    assume {:print "$at(31,2427,2434)"} true;
    if ($ResourceExists($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory := $ResourceUpdate($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $t0, $t14);
    }
    if ($abort_flag) {
        assume {:print "$at(31,2427,2434)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(21,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:73:5+1
    assume {:print "$at(31,2624,2625)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:73:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:73:5+1
L3:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:73:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TransactionFee::is_coin_initialized<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:48:5+150
procedure {:inline 1} $1_TransactionFee_is_coin_initialized'$1_XUS_XUS'() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := CoreAddresses::TREASURY_COMPLIANCE_ADDRESS() on_abort goto L2 with $t1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:49:42+44
    assume {:print "$at(31,1755,1799)"} true;
    call $t0 := $1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(31,1755,1799)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(21,3):", $t1} $t1 == $t1;
        goto L2;
    }

    // $t2 := exists<TransactionFee::TransactionFee<#0>>($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:49:9+6
    $t2 := $ResourceExists($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $t0);

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:49:9+78
    assume {:print "$track_return(21,3,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:50:5+1
    assume {:print "$at(31,1805,1806)"} true;
L1:

    // return $t2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:50:5+1
    $ret0 := $t2;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:50:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:50:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:122:10+85
function {:inline} $1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential, addr: int): bool {
    $ResourceExists($1_DualAttestation_Credential_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:546:9+103
function {:inline} $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory: $Memory $1_DualAttestation_Limit): bool {
    $ResourceExists($1_DualAttestation_Limit_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// struct DualAttestation::BaseUrlRotationEvent at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:58:5+257
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

// struct DualAttestation::ComplianceKeyRotationEvent at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:50:5+303
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

// struct DualAttestation::Credential at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:20:5+1467
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

// struct DualAttestation::Limit at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:45:5+58
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

// fun DualAttestation::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:5+599
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
    // assume Identical($t6, Mul(1000, Diem::spec_scaling_factor<XDX::XDX>())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:501:9+86
    assume {:print "$at(21,22219,22305)"} true;
    assume ($t6 == (1000 * $1_Diem_spec_scaling_factor'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:5+1
    assume {:print "$at(21,21365,21366)"} true;
    assume {:print "$track_local(23,10,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(21,21418,21449)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+31

    // assume Identical($t7, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+31
    assume ($t7 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t7) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+31
    if ($t7) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+31
L7:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t8)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+31
    assume {:print "$at(21,21418,21449)"} true;
    assume {:print "$track_abort(23,10):", $t8} $t8 == $t8;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+31
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+31
L6:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+43
    // >> opaque call: CoreAddresses::assert_diem_root($t0)
    assume {:print "$at(21,21459,21502)"} true;

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+43

    // assume Identical($t9, Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+43
    assume ($t9 == !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // if ($t9) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+43
    if ($t9) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+43
L9:

    // assume And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t8)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+43
    assume {:print "$at(21,21459,21502)"} true;
    assume {:print "$track_abort(23,10):", $t8} $t8 == $t8;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+43
    goto L5;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+43
L8:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+43

    // $t10 := CoreAddresses::DIEM_ROOT_ADDRESS() on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:31+34
    assume {:print "$at(21,21561,21595)"} true;
    call $t10 := $1_CoreAddresses_DIEM_ROOT_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(21,21561,21595)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(23,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t11 := exists<DualAttestation::Limit>($t10) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:17+6
    $t11 := $ResourceExists($1_DualAttestation_Limit_$memory, $t10);

    // $t12 := !($t11) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:16+1
    call $t12 := $Not($t11);

    // $t13 := 1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:94+6
    $t13 := 1;
    assume $IsValid'u64'($t13);

    // nop at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:68+33
    // >> opaque call: $t10 := Errors::already_published($t9)

    // $t14 := opaque begin: Errors::already_published($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:68+33

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:68+33
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 6) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:68+33
    assume $IsEqual'u64'($t14, 6);

    // $t14 := opaque end: Errors::already_published($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:68+33

    // trace_local[tmp#$3]($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+93
    assume {:print "$track_local(23,10,3):", $t14} $t14 == $t14;

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+93
    assume {:print "$track_local(23,10,2):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+93
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+93
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+93

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+93
    assume {:print "$at(21,21539,21632)"} true;
    assume {:print "$track_abort(23,10):", $t14} $t14 == $t14;

    // $t8 := move($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+93
    $t8 := $t14;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:9+93
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:30+30
    assume {:print "$at(21,21663,21693)"} true;
L0:

    // $t15 := 1000 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:30+30
    $t15 := 1000;
    assume $IsValid'u64'($t15);

    // $t16 := (u128)($t15) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:29+40
    call $t16 := $CastU128($t15);
    if ($abort_flag) {
        assume {:print "$at(21,21662,21702)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(23,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t17 := Diem::scaling_factor<XDX::XDX>() on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:73+27
    call $t17 := $1_Diem_scaling_factor'$1_XDX_XDX'();
    if ($abort_flag) {
        assume {:print "$at(21,21706,21733)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(23,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t18 := (u128)($t17) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:72+37
    call $t18 := $CastU128($t17);
    if ($abort_flag) {
        assume {:print "$at(21,21705,21742)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(23,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t19 := *($t16, $t18) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:70+1
    call $t19 := $MulU128($t16, $t18);
    if ($abort_flag) {
        assume {:print "$at(21,21703,21704)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(23,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // trace_local[initial_limit]($t19) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:13+13
    assume {:print "$track_local(23,10,1):", $t19} $t19 == $t19;

    // $t20 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:33+7
    assume {:print "$at(21,21776,21783)"} true;
    $t20 := 18446744073709551615;
    assume $IsValid'u128'($t20);

    // $t21 := <=($t19, $t20) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:30+2
    call $t21 := $Le($t19, $t20);

    // $t22 := 1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:65+6
    $t22 := 1;
    assume $IsValid'u64'($t22);

    // nop at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:42+30
    // >> opaque call: $t19 := Errors::limit_exceeded($t18)

    // $t23 := opaque begin: Errors::limit_exceeded($t22) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:42+30

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:42+30
    assume $IsValid'u64'($t23);

    // assume Eq<u64>($t23, 8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:42+30
    assume $IsEqual'u64'($t23, 8);

    // $t23 := opaque end: Errors::limit_exceeded($t22) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:42+30

    // trace_local[tmp#$5]($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:9+64
    assume {:print "$track_local(23,10,5):", $t23} $t23 == $t23;

    // trace_local[tmp#$4]($t21) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:9+64
    assume {:print "$track_local(23,10,4):", $t21} $t21 == $t21;

    // if ($t21) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:9+64
    if ($t21) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:9+64
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:9+64

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:9+64
    assume {:print "$at(21,21752,21816)"} true;
    assume {:print "$track_abort(23,10):", $t23} $t23 == $t23;

    // $t8 := move($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:9+64
    $t8 := $t23;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:9+64
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:491:13+10
    assume {:print "$at(21,21847,21857)"} true;
L2:

    // $t24 := (u64)($t19) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:493:34+22
    assume {:print "$at(21,21912,21934)"} true;
    call $t24 := $CastU64($t19);
    if ($abort_flag) {
        assume {:print "$at(21,21912,21934)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(23,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t25 := pack DualAttestation::Limit($t24) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:492:13+77
    assume {:print "$at(21,21871,21948)"} true;
    $t25 := $1_DualAttestation_Limit($t24);

    // move_to<DualAttestation::Limit>($t25, $t0) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:490:9+7
    assume {:print "$at(21,21826,21833)"} true;
    if ($ResourceExists($1_DualAttestation_Limit_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_DualAttestation_Limit_$memory := $ResourceUpdate($1_DualAttestation_Limit_$memory, $t0, $t25);
    }
    if ($abort_flag) {
        assume {:print "$at(21,21826,21833)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(23,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:496:5+1
    assume {:print "$at(21,21963,21964)"} true;
L4:

    // return () at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:496:5+1
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:496:5+1
L5:

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:496:5+1
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// struct DiemTransactionPublishingOption::DiemTransactionPublishingOption at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:27:5+381
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

// fun DiemTransactionPublishingOption::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:38:5+436
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
    var $1_DiemConfig_Configuration_$memory#161: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // bytecode translation starts here
    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:38:5+1
    assume {:print "$at(18,1558,1559)"} true;
    assume {:print "$track_local(24,1,0):", $t0} $t0 == $t0;

    // trace_local[script_allow_list]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:38:5+1
    assume {:print "$track_local(24,1,1):", $t1} $t1 == $t1;

    // trace_local[module_publishing_allowed]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:38:5+1
    assume {:print "$track_local(24,1,2):", $t2} $t2 == $t2;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(18,1714,1745)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+31

    // assume Identical($t5, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+31
    assume ($t5 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+31
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t6)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t6));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+31
    assume {:print "$at(18,1714,1745)"} true;
    assume {:print "$track_abort(24,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:44:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(18,1755,1790)"} true;

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:44:9+35
    assume {:print "$at(18,1755,1790)"} true;

    // assume Identical($t8, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Not(exists<Roles::RoleId>($t7))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t7)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:44:9+35
    assume ($t8 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) || !$ResourceExists($1_Roles_RoleId_$memory, $t7)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t7)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t8) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:44:9+35
    if ($t8) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:44:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t6)), And(Not(exists<Roles::RoleId>($t7)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t7)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:44:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t6)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t7) && $IsEqual'u8'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t7)), 0) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:44:9+35
    assume {:print "$at(18,1755,1790)"} true;
    assume {:print "$track_abort(24,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:44:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:44:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:44:9+35

    // $t9 := pack DiemTransactionPublishingOption::DiemTransactionPublishingOption($t1, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:48:13+108
    assume {:print "$at(18,1869,1977)"} true;
    $t9 := $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($t1, $t2);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    // >> opaque call: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t3)
    assume {:print "$at(18,1801,1987)"} true;

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    assume {:print "$at(18,1801,1987)"} true;

    // assume Identical($t11, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t10))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    assume ($t11 == (((($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t10)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t11) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    if ($t11) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t10)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    assume (((($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t10) && $IsEqual'u8'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 0) && $IsEqual'u8'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    assume {:print "$at(18,1801,1987)"} true;
    assume {:print "$track_abort(24,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
L7:

    // @161 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    $1_DiemConfig_Configuration_$memory#161 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'';
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    assume $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory);

    // assume Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    assume $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory), $t9);

    // assume Eq<bool>(DiemConfig::spec_has_config[@161](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#161), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:46:9+186

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:52:5+1
    assume {:print "$at(18,1993,1994)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:52:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:52:5+1
L2:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:52:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemId.move:300:5+133
function {:inline} $1_DiemId_$tc_domain_manager_exists($1_DiemId_DiemIdDomainManager_$memory: $Memory $1_DiemId_DiemIdDomainManager): bool {
    $ResourceExists($1_DiemId_DiemIdDomainManager_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())
}

// struct DiemId::DiemIdDomain at /home/ying/diem/language/diem-framework/modules/DiemId.move:27:5+112
type {:datatype} $1_DiemId_DiemIdDomain;
function {:constructor} $1_DiemId_DiemIdDomain($domain: Vec (int)): $1_DiemId_DiemIdDomain;
function {:inline} $Update'$1_DiemId_DiemIdDomain'_domain(s: $1_DiemId_DiemIdDomain, x: Vec (int)): $1_DiemId_DiemIdDomain {
    $1_DiemId_DiemIdDomain(x)
}
function $IsValid'$1_DiemId_DiemIdDomain'(s: $1_DiemId_DiemIdDomain): bool {
    $IsValid'vec'u8''($domain#$1_DiemId_DiemIdDomain(s))
}
function {:inline} $IsEqual'$1_DiemId_DiemIdDomain'(s1: $1_DiemId_DiemIdDomain, s2: $1_DiemId_DiemIdDomain): bool {
    s1 == s2
}

// struct DiemId::DiemIdDomainEvent at /home/ying/diem/language/diem-framework/modules/DiemId.move:41:5+263
type {:datatype} $1_DiemId_DiemIdDomainEvent;
function {:constructor} $1_DiemId_DiemIdDomainEvent($removed: bool, $domain: $1_DiemId_DiemIdDomain, $address: int): $1_DiemId_DiemIdDomainEvent;
function {:inline} $Update'$1_DiemId_DiemIdDomainEvent'_removed(s: $1_DiemId_DiemIdDomainEvent, x: bool): $1_DiemId_DiemIdDomainEvent {
    $1_DiemId_DiemIdDomainEvent(x, $domain#$1_DiemId_DiemIdDomainEvent(s), $address#$1_DiemId_DiemIdDomainEvent(s))
}
function {:inline} $Update'$1_DiemId_DiemIdDomainEvent'_domain(s: $1_DiemId_DiemIdDomainEvent, x: $1_DiemId_DiemIdDomain): $1_DiemId_DiemIdDomainEvent {
    $1_DiemId_DiemIdDomainEvent($removed#$1_DiemId_DiemIdDomainEvent(s), x, $address#$1_DiemId_DiemIdDomainEvent(s))
}
function {:inline} $Update'$1_DiemId_DiemIdDomainEvent'_address(s: $1_DiemId_DiemIdDomainEvent, x: int): $1_DiemId_DiemIdDomainEvent {
    $1_DiemId_DiemIdDomainEvent($removed#$1_DiemId_DiemIdDomainEvent(s), $domain#$1_DiemId_DiemIdDomainEvent(s), x)
}
function $IsValid'$1_DiemId_DiemIdDomainEvent'(s: $1_DiemId_DiemIdDomainEvent): bool {
    $IsValid'bool'($removed#$1_DiemId_DiemIdDomainEvent(s))
      && $IsValid'$1_DiemId_DiemIdDomain'($domain#$1_DiemId_DiemIdDomainEvent(s))
      && $IsValid'address'($address#$1_DiemId_DiemIdDomainEvent(s))
}
function {:inline} $IsEqual'$1_DiemId_DiemIdDomainEvent'(s1: $1_DiemId_DiemIdDomainEvent, s2: $1_DiemId_DiemIdDomainEvent): bool {
    s1 == s2
}

// struct DiemId::DiemIdDomainManager at /home/ying/diem/language/diem-framework/modules/DiemId.move:35:5+242
type {:datatype} $1_DiemId_DiemIdDomainManager;
function {:constructor} $1_DiemId_DiemIdDomainManager($diem_id_domain_events: $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent'): $1_DiemId_DiemIdDomainManager;
function {:inline} $Update'$1_DiemId_DiemIdDomainManager'_diem_id_domain_events(s: $1_DiemId_DiemIdDomainManager, x: $1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent'): $1_DiemId_DiemIdDomainManager {
    $1_DiemId_DiemIdDomainManager(x)
}
function $IsValid'$1_DiemId_DiemIdDomainManager'(s: $1_DiemId_DiemIdDomainManager): bool {
    $IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''($diem_id_domain_events#$1_DiemId_DiemIdDomainManager(s))
}
function {:inline} $IsEqual'$1_DiemId_DiemIdDomainManager'(s1: $1_DiemId_DiemIdDomainManager, s2: $1_DiemId_DiemIdDomainManager): bool {
    s1 == s2
}
var $1_DiemId_DiemIdDomainManager_$memory: $Memory $1_DiemId_DiemIdDomainManager;

// struct DesignatedDealer::Dealer at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:15:5+130
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

// struct DesignatedDealer::ReceivedMintEvent at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:39:5+286
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

// struct ChainId::ChainId at /home/ying/diem/language/diem-framework/modules/ChainId.move:11:5+45
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

// spec fun at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:234:9+141
function {:inline} $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory: $Memory $1_AccountFreezing_FreezingBit, addr: int): bool {
    ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr) && !$is_frozen#$1_AccountFreezing_FreezingBit($ResourceValue($1_AccountFreezing_FreezingBit_$memory, addr)))
}

// struct AccountFreezing::FreezeAccountEvent at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:23:5+208
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

// struct AccountFreezing::FreezeEventsHolder at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:17:5+169
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

// struct AccountFreezing::FreezingBit at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:12:5+164
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

// struct AccountFreezing::UnfreezeAccountEvent at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:31:5+216
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

// fun AccountFreezing::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:5+508
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
    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:64:9+47
    assume {:print "$at(4,2284,2331)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:5+1
    assume {:print "$at(4,1621,1622)"} true;
    assume {:print "$track_local(28,4,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(4,1674,1705)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+31

    // assume Identical($t4, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+31
    assume ($t4 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t4) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+31
    if ($t4) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t5)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+31
    assume {:print "$at(4,1674,1705)"} true;
    assume {:print "$track_abort(28,4):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+43
    // >> opaque call: CoreAddresses::assert_diem_root($t0)
    assume {:print "$at(4,1715,1758)"} true;

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+43

    // assume Identical($t6, Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+43
    assume ($t6 == !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // if ($t6) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+43
    if ($t6) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+43
L7:

    // assume And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t5)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+43
    assume {:print "$at(4,1715,1758)"} true;
    assume {:print "$track_abort(28,4):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+43
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+43
L6:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+43

    // nop at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:41+30
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(4,1816,1846)"} true;

    // $t7 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:41+30

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:41+30
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:41+30
    assume $IsEqual'address'($t7, $1_Signer_spec_address_of($t0));

    // $t7 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:41+30

    // $t8 := exists<AccountFreezing::FreezeEventsHolder>($t7) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:14+6
    $t8 := $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, $t7);

    // $t9 := !($t8) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:13+1
    call $t9 := $Not($t8);

    // $t10 := 1 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:54:39+21
    assume {:print "$at(4,1887,1908)"} true;
    $t10 := 1;
    assume $IsValid'u64'($t10);

    // nop at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:54:13+48
    // >> opaque call: $t7 := Errors::already_published($t6)

    // $t11 := opaque begin: Errors::already_published($t10) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:54:13+48

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:54:13+48
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 6) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:54:13+48
    assume $IsEqual'u64'($t11, 6);

    // $t11 := opaque end: Errors::already_published($t10) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:54:13+48

    // trace_local[tmp#$2]($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:9+151
    assume {:print "$at(4,1768,1919)"} true;
    assume {:print "$track_local(28,4,2):", $t11} $t11 == $t11;

    // trace_local[tmp#$1]($t9) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:9+151
    assume {:print "$track_local(28,4,1):", $t9} $t9 == $t9;

    // if ($t9) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:9+151
    if ($t9) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:9+151
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:9+151

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:9+151
    assume {:print "$at(4,1768,1919)"} true;
    assume {:print "$track_abort(28,4):", $t11} $t11 == $t11;

    // $t5 := move($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:9+151
    $t5 := $t11;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:9+151
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:56:17+10
    assume {:print "$at(4,1937,1947)"} true;
L0:

    // $t12 := Event::new_event_handle<AccountFreezing::FreezeAccountEvent>($t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:57:34+35
    assume {:print "$at(4,2003,2038)"} true;
    call $t12 := $1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(4,2003,2038)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(28,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t13 := Event::new_event_handle<AccountFreezing::UnfreezeAccountEvent>($t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:58:36+35
    assume {:print "$at(4,2075,2110)"} true;
    call $t13 := $1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(4,2075,2110)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(28,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t14 := pack AccountFreezing::FreezeEventsHolder($t12, $t13) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:56:29+172
    assume {:print "$at(4,1949,2121)"} true;
    $t14 := $1_AccountFreezing_FreezeEventsHolder($t12, $t13);

    // move_to<AccountFreezing::FreezeEventsHolder>($t14, $t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:56:9+7
    if ($ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_AccountFreezing_FreezeEventsHolder_$memory := $ResourceUpdate($1_AccountFreezing_FreezeEventsHolder_$memory, $t0, $t14);
    }
    if ($abort_flag) {
        assume {:print "$at(4,1929,1936)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(28,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:60:5+1
    assume {:print "$at(4,2128,2129)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:60:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:60:5+1
L3:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:60:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:5+247
function {:inline} $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1595:5+95
function {:inline} $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, check_addr: int): bool {
    $ResourceExists($1_DiemAccount_DiemAccount_$memory, check_addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2342:9+155
function {:inline} $1_DiemAccount_spec_get_key_rotation_cap_field($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_Option_Option'$1_DiemAccount_KeyRotationCapability' {
    $key_rotation_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2347:9+145
function {:inline} $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_DiemAccount_KeyRotationCapability {
    $1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'($1_DiemAccount_spec_get_key_rotation_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2352:9+129
function {:inline} $1_DiemAccount_spec_has_key_rotation_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($1_DiemAccount_spec_get_key_rotation_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2358:9+183
function {:inline} $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    ($1_DiemAccount_spec_has_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr) && $IsEqual'address'(addr, $account_address#$1_DiemAccount_KeyRotationCapability($1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2369:9+144
function {:inline} $1_DiemAccount_spec_get_withdraw_cap_field($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_Option_Option'$1_DiemAccount_WithdrawCapability' {
    $withdraw_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2374:9+134
function {:inline} $1_DiemAccount_spec_get_withdraw_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_DiemAccount_WithdrawCapability {
    $1_Option_$borrow'$1_DiemAccount_WithdrawCapability'($1_DiemAccount_spec_get_withdraw_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+121
function {:inline} $1_DiemAccount_spec_has_withdraw_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    $1_Option_$is_some'$1_DiemAccount_WithdrawCapability'($1_DiemAccount_spec_get_withdraw_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2384:9+171
function {:inline} $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    ($1_DiemAccount_spec_has_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr) && $IsEqual'address'(addr, $account_address#$1_DiemAccount_WithdrawCapability($1_DiemAccount_spec_get_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2390:9+171
function {:inline} $1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) && $1_Option_$is_none'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr))))
}

// struct DiemAccount::DiemAccount at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:36:5+1558
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

// struct DiemAccount::AccountOperationsCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:93:5+167
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

// struct DiemAccount::AdminTransactionEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:129:5+150
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

// struct DiemAccount::CreateAccountEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:135:5+179
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

// struct DiemAccount::DiemWriteSetManager at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:99:5+115
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

// struct DiemAccount::KeyRotationCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:85:5+208
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

// struct DiemAccount::ReceivedPaymentEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:117:5+363
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

// struct DiemAccount::SentPaymentEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:105:5+346
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

// struct DiemAccount::WithdrawCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:76:5+202
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

// fun DiemAccount::exists_at [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1595:5+95
procedure {:inline 1} $1_DiemAccount_exists_at(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[check_addr]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1595:5+1
    assume {:print "$at(11,73921,73922)"} true;
    assume {:print "$track_local(29,21,0):", $t0} $t0 == $t0;

    // $t1 := exists<DiemAccount::DiemAccount>($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1596:9+6
    assume {:print "$at(11,73979,73985)"} true;
    $t1 := $ResourceExists($1_DiemAccount_DiemAccount_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1596:9+31
    assume {:print "$track_return(29,21,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1597:5+1
    assume {:print "$at(11,74015,74016)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1597:5+1
    $ret0 := $t1;
    return;

}

// fun DiemAccount::delegated_key_rotation_capability [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:5+247
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
    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1571:5+1
    assume {:print "$at(11,72867,72868)"} true;
    assume {:print "$track_local(29,16,0):", $t0} $t0 == $t0;

    // $t3 := DiemAccount::exists_at($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:16+15
    assume {:print "$at(11,72975,72990)"} true;
    call $t3 := $1_DiemAccount_exists_at($t0);
    if ($abort_flag) {
        assume {:print "$at(11,72975,72990)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(29,16):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t5 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:55+8
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:33+31
    // >> opaque call: $t5 := Errors::not_published($t4)

    // $t6 := opaque begin: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:33+31

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:33+31
    assume $IsValid'u64'($t6);

    // assume Eq<u64>($t6, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:33+31
    assume $IsEqual'u64'($t6, 5);

    // $t6 := opaque end: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:33+31

    // trace_local[tmp#$2]($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:9+56
    assume {:print "$track_local(29,16,2):", $t6} $t6 == $t6;

    // trace_local[tmp#$1]($t3) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:9+56
    assume {:print "$track_local(29,16,1):", $t3} $t3 == $t3;

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:9+56
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:9+56
L1:

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:9+56
    assume {:print "$at(11,72968,73024)"} true;
    assume {:print "$track_abort(29,16):", $t6} $t6 == $t6;

    // $t4 := move($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:9+56
    $t4 := $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:9+56
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:53+4
    assume {:print "$at(11,73078,73082)"} true;
L0:

    // $t7 := get_global<DiemAccount::DiemAccount>($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:26+13
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t7 := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(11,73051,73064)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(29,16):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t8 := get_field<DiemAccount::DiemAccount>.key_rotation_capability($t7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:25+57
    $t8 := $key_rotation_capability#$1_DiemAccount_DiemAccount($t7);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+74
    // >> opaque call: $t8 := Option::is_none<DiemAccount::KeyRotationCapability>($t7)

    // $t9 := opaque begin: Option::is_none<DiemAccount::KeyRotationCapability>($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+74

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+74
    assume $IsValid'bool'($t9);

    // assume Eq<bool>($t9, Option::$is_none<DiemAccount::KeyRotationCapability>($t8)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+74
    assume $IsEqual'bool'($t9, $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($t8));

    // $t9 := opaque end: Option::is_none<DiemAccount::KeyRotationCapability>($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+74

    // trace_return[0]($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+74
    assume {:print "$track_return(29,16,0):", $t9} $t9 == $t9;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1575:5+1
    assume {:print "$at(11,73113,73114)"} true;
L2:

    // return $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1575:5+1
    $ret0 := $t9;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1575:5+1
L3:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1575:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun DiemAccount::extract_key_rotation_capability [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:948:5+649
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
    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:966:9+52
    assume {:print "$at(11,43116,43168)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:948:5+1
    assume {:print "$at(11,42222,42223)"} true;
    assume {:print "$track_local(29,22,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:31+27
    // >> opaque call: $t7 := Signer::address_of($t0)
    assume {:print "$at(11,42363,42390)"} true;

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:31+27

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:31+27
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:31+27
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:31+27

    // trace_local[account_address]($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:950:13+15
    assume {:print "$track_local(29,22,2):", $t8} $t8 == $t8;

    // $t9 := DiemAccount::delegated_key_rotation_capability($t8) on_abort goto L5 with $t10 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:953:14+50
    assume {:print "$at(11,42515,42565)"} true;
    call $t9 := $1_DiemAccount_delegated_key_rotation_capability($t8);
    if ($abort_flag) {
        assume {:print "$at(11,42515,42565)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(29,22):", $t10} $t10 == $t10;
        goto L5;
    }

    // $t11 := !($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:953:13+1
    call $t11 := $Not($t9);

    // $t12 := 9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:35+42
    assume {:print "$at(11,42601,42643)"} true;
    $t12 := 9;
    assume $IsValid'u64'($t12);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:13+65
    // >> opaque call: $t11 := Errors::invalid_state($t10)

    // $t13 := opaque begin: Errors::invalid_state($t12) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:13+65

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:13+65
    assume $IsValid'u64'($t13);

    // assume Eq<u64>($t13, 1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:13+65
    assume $IsEqual'u64'($t13, 1);

    // $t13 := opaque end: Errors::invalid_state($t12) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:13+65

    // trace_local[tmp#$4]($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:9+160
    assume {:print "$at(11,42494,42654)"} true;
    assume {:print "$track_local(29,22,4):", $t13} $t13 == $t13;

    // trace_local[tmp#$3]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:9+160
    assume {:print "$track_local(29,22,3):", $t11} $t11 == $t11;

    // if ($t11) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:9+160
    if ($t11) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:9+160
L1:

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:9+160
    assume {:print "$at(11,42494,42654)"} true;
    assume {:print "$track_abort(29,22):", $t13} $t13 == $t13;

    // $t10 := move($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:9+160
    $t10 := $t13;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:952:9+160
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:26+15
    assume {:print "$at(11,42681,42696)"} true;
L0:

    // $t14 := DiemAccount::exists_at($t8) on_abort goto L5 with $t10 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:16+26
    call $t14 := $1_DiemAccount_exists_at($t8);
    if ($abort_flag) {
        assume {:print "$at(11,42671,42697)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(29,22):", $t10} $t10 == $t10;
        goto L5;
    }

    // $t15 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:66+8
    $t15 := 0;
    assume $IsValid'u64'($t15);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:44+31
    // >> opaque call: $t14 := Errors::not_published($t13)

    // $t16 := opaque begin: Errors::not_published($t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:44+31

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:44+31
    assume $IsValid'u64'($t16);

    // assume Eq<u64>($t16, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:44+31
    assume $IsEqual'u64'($t16, 5);

    // $t16 := opaque end: Errors::not_published($t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:44+31

    // trace_local[tmp#$6]($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+67
    assume {:print "$track_local(29,22,6):", $t16} $t16 == $t16;

    // trace_local[tmp#$5]($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+67
    assume {:print "$track_local(29,22,5):", $t14} $t14 == $t14;

    // if ($t14) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+67
    if ($t14) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+67
L3:

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+67
    assume {:print "$at(11,42664,42731)"} true;
    assume {:print "$track_abort(29,22):", $t16} $t16 == $t16;

    // $t10 := move($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+67
    $t10 := $t16;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:9+67
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:957:54+15
    assume {:print "$at(11,42786,42801)"} true;
L2:

    // $t17 := borrow_global<DiemAccount::DiemAccount>($t8) on_abort goto L5 with $t10 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:957:23+17
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t8)) {
        call $ExecFailureAbort();
    } else {
        $t17 := $Mutation($Global($t8), EmptyVec(), $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t8));
    }
    if ($abort_flag) {
        assume {:print "$at(11,42755,42772)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(29,22):", $t10} $t10 == $t10;
        goto L5;
    }

    // trace_local[account#1797]($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:957:13+7
    $temp_0'$1_DiemAccount_DiemAccount' := $Dereference($t17);
    assume {:print "$track_local(29,22,1):", $temp_0'$1_DiemAccount_DiemAccount'} $temp_0'$1_DiemAccount_DiemAccount' == $temp_0'$1_DiemAccount_DiemAccount';

    // $t18 := borrow_field<DiemAccount::DiemAccount>.key_rotation_capability($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:25+36
    assume {:print "$at(11,42828,42864)"} true;
    $t18 := $ChildMutation($t17, 2, $key_rotation_capability#$1_DiemAccount_DiemAccount($Dereference($t17)));

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    // >> opaque call: $t17 := Option::extract<DiemAccount::KeyRotationCapability>($t16)

    // $t19 := opaque begin: Option::extract<DiemAccount::KeyRotationCapability>($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53

    // $t20 := read_ref($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    $t20 := $Dereference($t18);

    // assume Identical($t21, Option::$is_none<DiemAccount::KeyRotationCapability>($t18)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    assume ($t21 == $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($Dereference($t18)));

    // if ($t21) goto L8 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    if ($t21) { goto L8; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
L7:

    // assume And(Option::$is_none<DiemAccount::KeyRotationCapability>($t18), Eq(7, $t10)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    assume ($1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($Dereference($t18)) && $IsEqual'u8'(7, $t10));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    assume {:print "$at(11,42812,42865)"} true;
    assume {:print "$track_abort(29,22):", $t10} $t10 == $t10;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
L6:

    // havoc[mut]($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    havoc $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'';
    $t18 := $UpdateMutation($t18, $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'');
    assume $IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t18));

    // assume And(WellFormed($t18), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec($t18)), 1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    assume ($IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t18)) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($Dereference($t18))) <= 1));

    // assume WellFormed($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    assume $IsValid'$1_DiemAccount_KeyRotationCapability'($t19);

    // assume Eq<DiemAccount::KeyRotationCapability>($t19, Option::$borrow<DiemAccount::KeyRotationCapability>($t20)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    assume $IsEqual'$1_DiemAccount_KeyRotationCapability'($t19, $1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'($t20));

    // assume Option::$is_none<DiemAccount::KeyRotationCapability>($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    assume $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($Dereference($t18));

    // $t19 := opaque end: Option::extract<DiemAccount::KeyRotationCapability>($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53

    // write_back[Reference($t17).key_rotation_capability]($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    $t17 := $UpdateMutation($t17, $Update'$1_DiemAccount_DiemAccount'_key_rotation_capability($Dereference($t17), $Dereference($t18)));

    // pack_ref_deep($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53

    // write_back[DiemAccount::DiemAccount@]($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $GlobalLocationAddress($t17),
        $Dereference($t17));

    // trace_return[0]($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+53
    assume {:print "$track_return(29,22,0):", $t19} $t19 == $t19;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:959:5+1
    assume {:print "$at(11,42870,42871)"} true;
L4:

    // return $t19 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:959:5+1
    $ret0 := $t19;
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:959:5+1
L5:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:959:5+1
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

// fun DiemAccount::restore_key_rotation_capability [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:5+323
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
    // trace_local[cap]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:980:5+1
    assume {:print "$at(11,43761,43762)"} true;
    assume {:print "$track_local(29,34,0):", $t0} $t0 == $t0;

    // $t4 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:26+19
    assume {:print "$at(11,43884,43903)"} true;
    $t4 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t5 := DiemAccount::exists_at($t4) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:16+30
    call $t5 := $1_DiemAccount_exists_at($t4);
    if ($abort_flag) {
        assume {:print "$at(11,43874,43904)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(29,34):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t7 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:70+8
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:48+31
    // >> opaque call: $t7 := Errors::not_published($t6)

    // $t8 := opaque begin: Errors::not_published($t7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:48+31

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:48+31
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:48+31
    assume $IsEqual'u64'($t8, 5);

    // $t8 := opaque end: Errors::not_published($t7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:48+31

    // trace_local[tmp#$3]($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+71
    assume {:print "$track_local(29,34,3):", $t8} $t8 == $t8;

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+71
    assume {:print "$track_local(29,34,2):", $t5} $t5 == $t5;

    // if ($t5) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+71
    if ($t5) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+71
L1:

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+71
    assume {:print "$at(11,43867,43938)"} true;
    assume {:print "$track_abort(29,34):", $t8} $t8 == $t8;

    // $t6 := move($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+71
    $t6 := $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+71
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:983:54+3
    assume {:print "$at(11,43993,43996)"} true;
L0:

    // $t9 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:983:54+19
    $t9 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t10 := borrow_global<DiemAccount::DiemAccount>($t9) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:983:23+17
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t9)) {
        call $ExecFailureAbort();
    } else {
        $t10 := $Mutation($Global($t9), EmptyVec(), $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t9));
    }
    if ($abort_flag) {
        assume {:print "$at(11,43962,43979)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(29,34):", $t6} $t6 == $t6;
        goto L3;
    }

    // trace_local[account]($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:983:13+7
    $temp_0'$1_DiemAccount_DiemAccount' := $Dereference($t10);
    assume {:print "$track_local(29,34,1):", $temp_0'$1_DiemAccount_DiemAccount'} $temp_0'$1_DiemAccount_DiemAccount' == $temp_0'$1_DiemAccount_DiemAccount';

    // $t11 := borrow_field<DiemAccount::DiemAccount>.key_rotation_capability($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:22+36
    assume {:print "$at(11,44036,44072)"} true;
    $t11 := $ChildMutation($t10, 2, $key_rotation_capability#$1_DiemAccount_DiemAccount($Dereference($t10)));

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    // >> opaque call: Option::fill<DiemAccount::KeyRotationCapability>($t10, $t0)

    // opaque begin: Option::fill<DiemAccount::KeyRotationCapability>($t11, $t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55

    // assume Identical($t12, Option::$is_some<DiemAccount::KeyRotationCapability>($t11)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    assume ($t12 == $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($Dereference($t11)));

    // if ($t12) goto L6 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    if ($t12) { goto L6; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
L5:

    // assume And(Option::$is_some<DiemAccount::KeyRotationCapability>($t11), Eq(7, $t6)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    assume ($1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($Dereference($t11)) && $IsEqual'u8'(7, $t6));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    assume {:print "$at(11,44023,44078)"} true;
    assume {:print "$track_abort(29,34):", $t6} $t6 == $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
L4:

    // havoc[mut]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    havoc $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'';
    $t11 := $UpdateMutation($t11, $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'');
    assume $IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t11));

    // assume And(WellFormed($t11), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec($t11)), 1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    assume ($IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t11)) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($Dereference($t11))) <= 1));

    // assume Option::$is_some<DiemAccount::KeyRotationCapability>($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    assume $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($Dereference($t11));

    // assume Eq<DiemAccount::KeyRotationCapability>(Option::$borrow<DiemAccount::KeyRotationCapability>($t11), $t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    assume $IsEqual'$1_DiemAccount_KeyRotationCapability'($1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'($Dereference($t11)), $t0);

    // opaque end: Option::fill<DiemAccount::KeyRotationCapability>($t11, $t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55

    // write_back[Reference($t10).key_rotation_capability]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    $t10 := $UpdateMutation($t10, $Update'$1_DiemAccount_DiemAccount'_key_rotation_capability($Dereference($t10), $Dereference($t11)));

    // pack_ref_deep($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55

    // write_back[DiemAccount::DiemAccount@]($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:984:9+55
    $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $GlobalLocationAddress($t10),
        $Dereference($t10));

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:985:5+1
    assume {:print "$at(11,44083,44084)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:985:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:985:5+1
L3:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:985:5+1
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

// fun DiemAccount::rotate_authentication_key [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:909:5+612
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
    // trace_local[cap]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:909:5+1
    assume {:print "$at(11,40375,40376)"} true;
    assume {:print "$track_local(29,36,0):", $t0} $t0 == $t0;

    // trace_local[new_authentication_key]($t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:909:5+1
    assume {:print "$track_local(29,36,1):", $t1} $t1 == $t1;

    // $t7 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:26+19
    assume {:print "$at(11,40549,40568)"} true;
    $t7 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t8 := DiemAccount::exists_at($t7) on_abort goto L5 with $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:16+30
    call $t8 := $1_DiemAccount_exists_at($t7);
    if ($abort_flag) {
        assume {:print "$at(11,40539,40569)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(29,36):", $t9} $t9 == $t9;
        goto L5;
    }

    // $t10 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:70+8
    $t10 := 0;
    assume $IsValid'u64'($t10);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:48+31
    // >> opaque call: $t10 := Errors::not_published($t9)

    // $t11 := opaque begin: Errors::not_published($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:48+31

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:48+31
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:48+31
    assume $IsEqual'u64'($t11, 5);

    // $t11 := opaque end: Errors::not_published($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:48+31

    // trace_local[tmp#$4]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:9+71
    assume {:print "$track_local(29,36,4):", $t11} $t11 == $t11;

    // trace_local[tmp#$3]($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:9+71
    assume {:print "$track_local(29,36,3):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:9+71
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:9+71
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:9+71

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:9+71
    assume {:print "$at(11,40532,40603)"} true;
    assume {:print "$track_abort(29,36):", $t11} $t11 == $t11;

    // $t9 := move($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:9+71
    $t9 := $t11;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:913:9+71
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:70+3
    assume {:print "$at(11,40674,40677)"} true;
L0:

    // $t12 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:70+19
    $t12 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t13 := borrow_global<DiemAccount::DiemAccount>($t12) on_abort goto L5 with $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:39+17
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t12)) {
        call $ExecFailureAbort();
    } else {
        $t13 := $Mutation($Global($t12), EmptyVec(), $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t12));
    }
    if ($abort_flag) {
        assume {:print "$at(11,40643,40660)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(29,36):", $t9} $t9 == $t9;
        goto L5;
    }

    // trace_local[sender_account_resource]($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:914:13+23
    $temp_0'$1_DiemAccount_DiemAccount' := $Dereference($t13);
    assume {:print "$track_local(29,36,2):", $temp_0'$1_DiemAccount_DiemAccount'} $temp_0'$1_DiemAccount_DiemAccount' == $temp_0'$1_DiemAccount_DiemAccount';

    // $t14 := Vector::length<u8>($t1) on_abort goto L5 with $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:917:13+39
    assume {:print "$at(11,40779,40818)"} true;
    call $t14 := $1_Vector_length'u8'($t1);
    if ($abort_flag) {
        assume {:print "$at(11,40779,40818)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(29,36):", $t9} $t9 == $t9;
        goto L5;
    }

    // $t15 := 32 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:917:56+2
    $t15 := 32;
    assume $IsValid'u64'($t15);

    // $t16 := ==($t14, $t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:917:53+2
    $t16 := $IsEqual'u64'($t14, $t15);

    // $t17 := 8 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:38+29
    assume {:print "$at(11,40863,40892)"} true;
    $t17 := 8;
    assume $IsValid'u64'($t17);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:13+55
    // >> opaque call: $t17 := Errors::invalid_argument($t16)

    // $t18 := opaque begin: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:13+55

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:13+55
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:13+55
    assume $IsEqual'u64'($t18, 7);

    // $t18 := opaque end: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:918:13+55

    // trace_local[tmp#$6]($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:9+144
    assume {:print "$at(11,40759,40903)"} true;
    assume {:print "$track_local(29,36,6):", $t18} $t18 == $t18;

    // trace_local[tmp#$5]($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:9+144
    assume {:print "$track_local(29,36,5):", $t16} $t16 == $t16;

    // if ($t16) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:9+144
    if ($t16) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:9+144
L3:

    // pack_ref_deep($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:9+144

    // destroy($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:9+144

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:9+144
    assume {:print "$at(11,40759,40903)"} true;
    assume {:print "$track_abort(29,36):", $t18} $t18 == $t18;

    // $t9 := move($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:9+144
    $t9 := $t18;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:916:9+144
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:920:54+22
    assume {:print "$at(11,40958,40980)"} true;
L2:

    // $t19 := borrow_field<DiemAccount::DiemAccount>.authentication_key($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:920:9+42
    $t19 := $ChildMutation($t13, 0, $authentication_key#$1_DiemAccount_DiemAccount($Dereference($t13)));

    // write_ref($t19, $t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:920:9+67
    $t19 := $UpdateMutation($t19, $t1);

    // write_back[Reference($t13).authentication_key]($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:920:9+67
    $t13 := $UpdateMutation($t13, $Update'$1_DiemAccount_DiemAccount'_authentication_key($Dereference($t13), $Dereference($t19)));

    // pack_ref_deep($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:920:9+67

    // write_back[DiemAccount::DiemAccount@]($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:920:9+67
    $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $GlobalLocationAddress($t13),
        $Dereference($t13));

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:921:5+1
    assume {:print "$at(11,40986,40987)"} true;
L4:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:921:5+1
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:921:5+1
L5:

    // abort($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:921:5+1
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:600:10+105
function {:inline} $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): Vec ($1_DiemSystem_ValidatorInfo) {
    $validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))
}

// struct DiemSystem::DiemSystem at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:51:5+198
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

// struct DiemSystem::CapabilityHolder at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:42:5+242
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

// struct DiemSystem::ValidatorInfo at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:21:5+600
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

// fun DiemSystem::initialize_validator_set [baseline] at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:5+608
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
    var $1_DiemConfig_Configuration_$memory#137: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:120:9+50
    assume {:print "$at(16,5288,5338)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:97:5+1
    assume {:print "$at(16,4422,4423)"} true;
    assume {:print "$track_local(30,5,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(16,4504,4535)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:9+31

    // assume Identical($t6, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:9+31
    assume ($t6 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:9+31
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t7)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:9+31
    assume {:print "$at(16,4504,4535)"} true;
    assume {:print "$track_abort(30,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:100:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:101:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(16,4545,4580)"} true;

    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:101:9+35
    assume {:print "$at(16,4545,4580)"} true;

    // assume Identical($t9, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Not(exists<Roles::RoleId>($t8))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:101:9+35
    assume ($t9 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) || !$ResourceExists($1_Roles_RoleId_$memory, $t8)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t9) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:101:9+35
    if ($t9) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:101:9+35
L7:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t7)), And(Not(exists<Roles::RoleId>($t8)), Eq(5, $t7))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 0), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:101:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t7)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t8) && $IsEqual'u8'(5, $t7))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 0) && $IsEqual'u8'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:101:9+35
    assume {:print "$at(16,4545,4580)"} true;
    assume {:print "$track_abort(30,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:101:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:101:9+35
L6:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:101:9+35

    // $t10 := 0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:106:25+1
    assume {:print "$at(16,4737,4738)"} true;
    $t10 := 0;
    assume $IsValid'u8'($t10);

    // $t11 := Vector::empty<DiemSystem::ValidatorInfo>() on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:107:29+15
    assume {:print "$at(16,4768,4783)"} true;
    call $t11 := $1_Vector_empty'$1_DiemSystem_ValidatorInfo'();
    if ($abort_flag) {
        assume {:print "$at(16,4768,4783)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(30,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // $t12 := pack DiemSystem::DiemSystem($t10, $t11) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:13+98
    assume {:print "$at(16,4700,4798)"} true;
    $t12 := $1_DiemSystem_DiemSystem($t10, $t11);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    // >> opaque call: $t7 := DiemConfig::publish_new_config_and_get_capability<DiemSystem::DiemSystem>($t0, $t6)
    assume {:print "$at(16,4601,4809)"} true;

    // assume Identical($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t13 == $1_Signer_spec_address_of($t0));

    // $t14 := opaque begin: DiemConfig::publish_new_config_and_get_capability<DiemSystem::DiemSystem>($t0, $t12) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    assume {:print "$at(16,4601,4809)"} true;

    // assume Identical($t15, Or(Or(Or(Not(exists<Roles::RoleId>($t13)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS())), exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    assume ($t15 == (((!$ResourceExists($1_Roles_RoleId_$memory, $t13) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())) || $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t15) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    if ($t15) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
L9:

    // assume Or(Or(Or(And(Not(exists<Roles::RoleId>($t13)), Eq(5, $t7)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t7))), And(exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(6, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    assume ((((!$ResourceExists($1_Roles_RoleId_$memory, $t13) && $IsEqual'u8'(5, $t7)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0) && $IsEqual'u8'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t7))) || ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(6, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    assume {:print "$at(16,4601,4809)"} true;
    assume {:print "$track_abort(30,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
L8:

    // @137 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    $1_DiemConfig_Configuration_$memory#137 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'';
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    assume $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''($t14);

    // assume DiemConfig::spec_is_published<DiemSystem::DiemSystem>() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    assume $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory);

    // assume Eq<DiemSystem::DiemSystem>(DiemConfig::$get<DiemSystem::DiemSystem>(), $t12) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    assume $IsEqual'$1_DiemSystem_DiemSystem'($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), $t12);

    // assume Eq<bool>(DiemConfig::spec_has_config[@137](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#137), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // $t14 := opaque end: DiemConfig::publish_new_config_and_get_capability<DiemSystem::DiemSystem>($t0, $t12) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:19+208

    // trace_local[cap]($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:13+3
    assume {:print "$track_local(30,5,1):", $t14} $t14 == $t14;

    // $t16 := CoreAddresses::DIEM_ROOT_ADDRESS() on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:111:39+34
    assume {:print "$at(16,4865,4899)"} true;
    call $t16 := $1_CoreAddresses_DIEM_ROOT_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(16,4865,4899)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(30,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // $t17 := exists<DiemSystem::CapabilityHolder>($t16) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:111:14+6
    $t17 := $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, $t16);

    // $t18 := !($t17) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:111:13+1
    call $t18 := $Not($t17);

    // $t19 := 0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:39+18
    assume {:print "$at(16,4940,4958)"} true;
    $t19 := 0;
    assume $IsValid'u64'($t19);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:13+45
    // >> opaque call: $t12 := Errors::already_published($t11)

    // $t20 := opaque begin: Errors::already_published($t19) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:13+45

    // assume WellFormed($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:13+45
    assume $IsValid'u64'($t20);

    // assume Eq<u64>($t20, 6) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:13+45
    assume $IsEqual'u64'($t20, 6);

    // $t20 := opaque end: Errors::already_published($t19) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:13+45

    // trace_local[tmp#$3]($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:110:9+150
    assume {:print "$at(16,4819,4969)"} true;
    assume {:print "$track_local(30,5,3):", $t20} $t20 == $t20;

    // trace_local[tmp#$2]($t18) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:110:9+150
    assume {:print "$track_local(30,5,2):", $t18} $t18 == $t18;

    // if ($t18) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:110:9+150
    if ($t18) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:110:9+150
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:110:9+150

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:110:9+150
    assume {:print "$at(16,4819,4969)"} true;
    assume {:print "$track_abort(30,5):", $t20} $t20 == $t20;

    // $t7 := move($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:110:9+150
    $t7 := $t20;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:110:9+150
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:114:17+10
    assume {:print "$at(16,4987,4997)"} true;
L0:

    // $t21 := pack DiemSystem::CapabilityHolder($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:114:29+24
    $t21 := $1_DiemSystem_CapabilityHolder($t14);

    // move_to<DiemSystem::CapabilityHolder>($t21, $t0) on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:114:9+7
    if ($ResourceExists($1_DiemSystem_CapabilityHolder_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_DiemSystem_CapabilityHolder_$memory := $ResourceUpdate($1_DiemSystem_CapabilityHolder_$memory, $t0, $t21);
    }
    if ($abort_flag) {
        assume {:print "$at(16,4979,4986)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(30,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:115:5+1
    assume {:print "$at(16,5029,5030)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:115:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:115:5+1
L3:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:115:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:57:5+100
function {:inline} $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory: $Memory $1_DiemBlock_BlockMetadata): bool {
    $ResourceExists($1_DiemBlock_BlockMetadata_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())
}

// struct DiemBlock::BlockMetadata at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:11:5+236
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

// struct DiemBlock::NewBlockEvent at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:18:5+234
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

// fun DiemBlock::is_initialized [baseline] at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:57:5+100
procedure {:inline 1} $1_DiemBlock_is_initialized() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := CoreAddresses::DIEM_ROOT_ADDRESS() on_abort goto L2 with $t1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:58:31+34
    assume {:print "$at(12,2071,2105)"} true;
    call $t0 := $1_CoreAddresses_DIEM_ROOT_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(12,2071,2105)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(31,3):", $t1} $t1 == $t1;
        goto L2;
    }

    // $t2 := exists<DiemBlock::BlockMetadata>($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:58:9+6
    $t2 := $ResourceExists($1_DiemBlock_BlockMetadata_$memory, $t0);

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:58:9+57
    assume {:print "$track_return(31,3,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:59:5+1
    assume {:print "$at(12,2111,2112)"} true;
L1:

    // return $t2 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:59:5+1
    $ret0 := $t2;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:59:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:59:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun DiemBlock::initialize_block_metadata [baseline] at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:34:5+531
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
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:34:5+1
    assume {:print "$at(12,1100,1101)"} true;
    assume {:print "$track_local(31,2,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(12,1165,1196)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+31

    // assume Identical($t3, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+31
    assume ($t3 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t3) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+31
    if ($t3) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t4)) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+31
    assume {:print "$at(12,1165,1196)"} true;
    assume {:print "$track_abort(31,2):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+40
    // >> opaque call: CoreAddresses::assert_diem_root($t0)
    assume {:print "$at(12,1282,1322)"} true;

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+40

    // assume Identical($t5, Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+40
    assume ($t5 == !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // if ($t5) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+40
    if ($t5) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+40
L7:

    // assume And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t4)) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+40
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+40
    assume {:print "$at(12,1282,1322)"} true;
    assume {:print "$track_abort(31,2):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+40
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+40
L6:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+40

    // $t6 := DiemBlock::is_initialized() on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:17+16
    assume {:print "$at(12,1341,1357)"} true;
    call $t6 := $1_DiemBlock_is_initialized();
    if ($abort_flag) {
        assume {:print "$at(12,1341,1357)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(31,2):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t7 := !($t6) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:16+1
    call $t7 := $Not($t6);

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:61+15
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:35+42
    // >> opaque call: $t6 := Errors::already_published($t5)

    // $t9 := opaque begin: Errors::already_published($t8) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:35+42

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:35+42
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 6) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:35+42
    assume $IsEqual'u64'($t9, 6);

    // $t9 := opaque end: Errors::already_published($t8) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:35+42

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:9+69
    assume {:print "$track_local(31,2,2):", $t9} $t9 == $t9;

    // trace_local[tmp#$1]($t7) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:9+69
    assume {:print "$track_local(31,2,1):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:9+69
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:9+69
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:9+69

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:9+69
    assume {:print "$at(12,1333,1402)"} true;
    assume {:print "$track_abort(31,2):", $t9} $t9 == $t9;

    // $t4 := move($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:9+69
    $t4 := $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:9+69
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:41:13+7
    assume {:print "$at(12,1448,1455)"} true;
L0:

    // $t10 := 0 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:43:25+1
    assume {:print "$at(12,1509,1510)"} true;
    $t10 := 0;
    assume $IsValid'u64'($t10);

    // $t11 := Event::new_event_handle<DiemBlock::NewBlockEvent>($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:44:35+53
    assume {:print "$at(12,1546,1599)"} true;
    call $t11 := $1_Event_new_event_handle'$1_DiemBlock_NewBlockEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(12,1546,1599)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(31,2):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t12 := pack DiemBlock::BlockMetadata($t10, $t11) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:42:13+145
    assume {:print "$at(12,1469,1614)"} true;
    $t12 := $1_DiemBlock_BlockMetadata($t10, $t11);

    // move_to<DiemBlock::BlockMetadata>($t12, $t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:40:9+7
    assume {:print "$at(12,1412,1419)"} true;
    if ($ResourceExists($1_DiemBlock_BlockMetadata_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $1_DiemBlock_BlockMetadata_$memory := $ResourceUpdate($1_DiemBlock_BlockMetadata_$memory, $t0, $t12);
    }
    if ($abort_flag) {
        assume {:print "$at(12,1412,1419)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(31,2):", $t4} $t4 == $t4;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:47:5+1
    assume {:print "$at(12,1630,1631)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:47:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:47:5+1
L3:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:47:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// struct DiemVMConfig::DiemVMConfig at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:16:5+120
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

// struct DiemVMConfig::GasConstants at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:38:5+1690
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

// struct DiemVMConfig::GasSchedule at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:32:5+164
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

// fun DiemVMConfig::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:76:5+1150
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
    var $1_DiemConfig_Configuration_$memory#155: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // bytecode translation starts here
    // assume Identical($t4, pack DiemVMConfig::GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:112:9+528
    assume {:print "$at(19,4597,5125)"} true;
    assume ($t4 == $1_DiemVMConfig_GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:76:5+1
    assume {:print "$at(19,3416,3417)"} true;
    assume {:print "$track_local(32,0,0):", $t0} $t0 == $t0;

    // trace_local[instruction_schedule]($t1) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:76:5+1
    assume {:print "$track_local(32,0,1):", $t1} $t1 == $t1;

    // trace_local[native_schedule]($t2) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:76:5+1
    assume {:print "$track_local(32,0,2):", $t2} $t2 == $t2;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(19,3563,3594)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+31

    // assume Identical($t7, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+31
    assume ($t7 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t7) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+31
    if ($t7) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t8)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+31
    assume {:print "$at(19,3563,3594)"} true;
    assume {:print "$track_abort(32,0):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(19,3692,3727)"} true;

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:9+35
    assume {:print "$at(19,3692,3727)"} true;

    // assume Identical($t10, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Not(exists<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:9+35
    assume ($t10 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) || !$ResourceExists($1_Roles_RoleId_$memory, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t10) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:9+35
    if ($t10) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t8)), And(Not(exists<Roles::RoleId>($t9)), Eq(5, $t8))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0), Eq(3, $t8))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t8))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t8)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t9) && $IsEqual'u8'(5, $t8))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0) && $IsEqual'u8'(3, $t8))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:9+35
    assume {:print "$at(19,3692,3727)"} true;
    assume {:print "$track_abort(32,0):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:9+35

    // $t11 := 4 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:87:42+1
    assume {:print "$at(19,3814,3815)"} true;
    $t11 := 4;
    assume $IsValid'u64'($t11);

    // $t12 := 9 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:88:48+1
    assume {:print "$at(19,3864,3865)"} true;
    $t12 := 9;
    assume $IsValid'u64'($t12);

    // $t13 := 600 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:89:40+3
    assume {:print "$at(19,3906,3909)"} true;
    $t13 := 600;
    assume $IsValid'u64'($t13);

    // $t14 := 600 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:90:39+3
    assume {:print "$at(19,3949,3952)"} true;
    $t14 := 600;
    assume $IsValid'u64'($t14);

    // $t15 := 8 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:91:37+1
    assume {:print "$at(19,3990,3991)"} true;
    $t15 := 8;
    assume $IsValid'u64'($t15);

    // $t16 := 4000000 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:92:42+7
    assume {:print "$at(19,4034,4041)"} true;
    $t16 := 4000000;
    assume $IsValid'u64'($t16);

    // $t17 := 0 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:93:37+1
    assume {:print "$at(19,4079,4080)"} true;
    $t17 := 0;
    assume $IsValid'u64'($t17);

    // $t18 := 10000 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:94:37+5
    assume {:print "$at(19,4118,4123)"} true;
    $t18 := 10000;
    assume $IsValid'u64'($t18);

    // $t19 := 4096 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:95:44+4
    assume {:print "$at(19,4168,4172)"} true;
    $t19 := 4096;
    assume $IsValid'u64'($t19);

    // $t20 := 1000 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:96:38+4
    assume {:print "$at(19,4211,4215)"} true;
    $t20 := 1000;
    assume $IsValid'u64'($t20);

    // $t21 := 800 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:35+3
    assume {:print "$at(19,4251,4254)"} true;
    $t21 := 800;
    assume $IsValid'u64'($t21);

    // $t22 := pack DiemVMConfig::GasConstants($t11, $t12, $t13, $t14, $t15, $t16, $t17, $t18, $t19, $t20, $t21) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:86:29+507
    assume {:print "$at(19,3758,4265)"} true;
    $t22 := $1_DiemVMConfig_GasConstants($t11, $t12, $t13, $t14, $t15, $t16, $t17, $t18, $t19, $t20, $t21);

    // $t23 := pack DiemVMConfig::GasSchedule($t1, $t2, $t22) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:103:31+145
    assume {:print "$at(19,4389,4534)"} true;
    $t23 := $1_DiemVMConfig_GasSchedule($t1, $t2, $t22);

    // $t24 := pack DiemVMConfig::DiemVMConfig($t23) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:102:13+204
    assume {:print "$at(19,4344,4548)"} true;
    $t24 := $1_DiemVMConfig_DiemVMConfig($t23);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    // >> opaque call: DiemConfig::publish_new_config<DiemVMConfig::DiemVMConfig>($t0, $t17)
    assume {:print "$at(19,4276,4559)"} true;

    // assume Identical($t25, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t25 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemVMConfig::DiemVMConfig>($t0, $t24) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    assume {:print "$at(19,4276,4559)"} true;

    // assume Identical($t26, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>(), exists<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t25))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t25)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    assume ($t26 == (((($1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t25)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t25)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t26) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    if ($t26) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>(), exists<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t25)), Eq(5, $t8))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t25)), 0), Eq(3, $t8))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t8))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    assume (((($1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t25) && $IsEqual'u8'(5, $t8))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t25)), 0) && $IsEqual'u8'(3, $t8))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    assume {:print "$at(19,4276,4559)"} true;
    assume {:print "$track_abort(32,0):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
L7:

    // @155 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    $1_DiemConfig_Configuration_$memory#155 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig>>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'';
        $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>() at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    assume $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory);

    // assume Eq<DiemVMConfig::DiemVMConfig>(DiemConfig::$get<DiemVMConfig::DiemVMConfig>(), $t24) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    assume $IsEqual'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_$get'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory), $t24);

    // assume Eq<bool>(DiemConfig::spec_has_config[@155](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#155), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemVMConfig::DiemVMConfig>($t0, $t24) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:9+283

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:110:5+1
    assume {:print "$at(19,4565,4566)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:110:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:110:5+1
L2:

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:110:5+1
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// struct DiemVersion::DiemVersion at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:11:5+68
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

// fun DiemVersion::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:5+298
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
    var $1_DiemConfig_Configuration_$memory#149: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:5+1
    assume {:print "$at(20,615,616)"} true;
    assume {:print "$track_local(33,0,0):", $t0} $t0 == $t0;

    // trace_local[initial_version]($t1) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:5+1
    assume {:print "$track_local(33,0,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+31
    // >> opaque call: DiemTimestamp::assert_genesis()
    assume {:print "$at(20,690,721)"} true;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+31

    // assume Identical($t4, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+31
    assume ($t4 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t4) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+31
    if ($t4) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t5)) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+31
    assume {:print "$at(20,690,721)"} true;
    assume {:print "$track_abort(33,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+31

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:21:9+35
    // >> opaque call: Roles::assert_diem_root($t0)
    assume {:print "$at(20,731,766)"} true;

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:21:9+35
    assume {:print "$at(20,731,766)"} true;

    // assume Identical($t7, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Not(exists<Roles::RoleId>($t6))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t6)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:21:9+35
    assume ($t7 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) || !$ResourceExists($1_Roles_RoleId_$memory, $t6)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t6)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t7) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:21:9+35
    if ($t7) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:21:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t5)), And(Not(exists<Roles::RoleId>($t6)), Eq(5, $t5))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t6)), 0), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:21:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t5)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t6) && $IsEqual'u8'(5, $t5))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t6)), 0) && $IsEqual'u8'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:21:9+35
    assume {:print "$at(20,731,766)"} true;
    assume {:print "$track_abort(33,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:21:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:21:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:21:9+35

    // $t8 := pack DiemVersion::DiemVersion($t1) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:24:13+38
    assume {:print "$at(20,857,895)"} true;
    $t8 := $1_DiemVersion_DiemVersion($t1);

    // nop at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    // >> opaque call: DiemConfig::publish_new_config<DiemVersion::DiemVersion>($t0, $t2)
    assume {:print "$at(20,776,906)"} true;

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemVersion::DiemVersion>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    assume {:print "$at(20,776,906)"} true;

    // assume Identical($t10, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVersion::DiemVersion>(), exists<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0)), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    assume ($t10 == (((($1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t10) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    if ($t10) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVersion::DiemVersion>(), exists<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t9)), Eq(5, $t5))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    assume (((($1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t9) && $IsEqual'u8'(5, $t5))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0) && $IsEqual'u8'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    assume {:print "$at(20,776,906)"} true;
    assume {:print "$track_abort(33,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
L7:

    // @149 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    $1_DiemConfig_Configuration_$memory#149 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemVersion::DiemVersion>>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'';
        $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemVersion::DiemVersion>() at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    assume $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory);

    // assume Eq<DiemVersion::DiemVersion>(DiemConfig::$get<DiemVersion::DiemVersion>(), $t8) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    assume $IsEqual'$1_DiemVersion_DiemVersion'($1_DiemConfig_$get'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory), $t8);

    // assume Eq<bool>(DiemConfig::spec_has_config[@149](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#149), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemVersion::DiemVersion>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:9+130

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:26:5+1
    assume {:print "$at(20,912,913)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:26:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:26:5+1
L2:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:26:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun Genesis::initialize [verification] at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
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
    var $temp_0'$1_DiemId_DiemIdDomainManager': $1_DiemId_DiemIdDomainManager;
    var $temp_0'$1_Event_EventHandleGenerator': $1_Event_EventHandleGenerator;
    var $temp_0'$1_Roles_RoleId': $1_Roles_RoleId;
    var $temp_0'$1_SlidingNonce_SlidingNonce': $1_SlidingNonce_SlidingNonce;
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
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:171:9+97
    assume {:print "$at(22,873,3238)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:284:9+113
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:287:9+123
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:412:9+62
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:93:9+98
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assume And(forall mint_cap_owner: TypeDomain<address>() where exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner): Roles::spec_has_treasury_compliance_role_addr(mint_cap_owner), forall mint_cap_owner: TypeDomain<address>() where exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner): Roles::spec_has_treasury_compliance_role_addr(mint_cap_owner)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1584:9+212
    assume ((forall mint_cap_owner: int :: $IsValid'address'(mint_cap_owner) ==> ($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner))  ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, mint_cap_owner))) && (forall mint_cap_owner: int :: $IsValid'address'(mint_cap_owner) ==> ($ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner))  ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, mint_cap_owner))));

    // assume And(forall addr1: TypeDomain<address>(): Implies(exists<Diem::BurnCapability<XUS::XUS>>(addr1), Roles::spec_has_treasury_compliance_role_addr(addr1)), forall addr1: TypeDomain<address>(): Implies(exists<Diem::BurnCapability<XDX::XDX>>(addr1), Roles::spec_has_treasury_compliance_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1662:9+203
    assume ((forall addr1: int :: $IsValid'address'(addr1) ==> (($ResourceExists($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, addr1) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr1)))) && (forall addr1: int :: $IsValid'address'(addr1) ==> (($ResourceExists($1_Diem_BurnCapability'$1_XDX_XDX'_$memory, addr1) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume And(forall addr1: TypeDomain<address>(): Implies(Or(exists<Diem::PreburnQueue<XUS::XUS>>(addr1), exists<Diem::Preburn<XUS::XUS>>(addr1)), Roles::spec_has_designated_dealer_role_addr(addr1)), forall addr1: TypeDomain<address>(): Implies(Or(exists<Diem::PreburnQueue<XDX::XDX>>(addr1), exists<Diem::Preburn<XDX::XDX>>(addr1)), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1729:9+236
    assume ((forall addr1: int :: $IsValid'address'(addr1) ==> ((($ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, addr1) || $ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, addr1)) ==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))) && (forall addr1: int :: $IsValid'address'(addr1) ==> ((($ResourceExists($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, addr1) || $ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, addr1)) ==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume true at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:552:9+318
    assume true;

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:60:9+69
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:65:9+137
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume forall addr: TypeDomain<address>() where exists<AccountLimits::LimitsDefinition<XUS::XUS>>(addr): Eq<address>(addr, CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:69:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, addr))  ==> ($IsEqual'address'(addr, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // assume Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:125:9+61
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:128:9+69
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:141:9+137
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume forall addr: TypeDomain<address>() where exists<AccountLimits::LimitsDefinition<XDX::XDX>>(addr): Eq<address>(addr, CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:145:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, addr))  ==> ($IsEqual'address'(addr, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:77:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:345:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:350:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:357:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:165:9+61
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:540:9+64
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:578:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:165:9+121
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:51:9+96
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:193:9+119
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:201:9+119
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:206:9+129
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2205:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2235:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2284:9+128
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2288:9+120
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): exists<Roles::RoleId>(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2310:9+82
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> ($ResourceExists($1_Roles_RoleId_$memory, addr)));

    // assume true at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2313:9+139
    assume true;

    // assume forall addr: TypeDomain<address>() where exists<DesignatedDealer::Dealer>(addr): Roles::spec_has_designated_dealer_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2319:9+139
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr))  ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where exists<DualAttestation::Credential>(addr): Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2324:9+201
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DualAttestation_Credential_$memory, addr))  ==> (($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): exists<AccountFreezing::FreezingBit>(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2329:9+97
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr)));

    // assume true at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2332:9+115
    assume true;

    // assume Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:562:9+176
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:621:8+133
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Eq<u64>(select DiemSystem::ValidatorInfo.consensus_voting_power(Index(DiemSystem::spec_get_validators(), i1)), 1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:629:8+119
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($IsEqual'u64'($consensus_voting_power#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)), 1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:131:9+61
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:219:9+90
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:72:9+89
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume $IsValid'vec'u8''($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume $IsValid'vec'u8''($t3);

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume $IsValid'vec'vec'u8'''($t4);

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume $IsValid'bool'($t5);

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume $IsValid'vec'u8''($t6);

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume $IsValid'vec'u8''($t7);

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume $IsValid'u8'($t8);

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume $IsValid'u64'($t9);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<SlidingNonce::SlidingNonce>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0)}(var $rsc := $ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0);
    ($IsValid'$1_SlidingNonce_SlidingNonce'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::Configuration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_Configuration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_Configuration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_Configuration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DisableReconfiguration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DisableReconfiguration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(): And(WellFormed($rsc), forall i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))), j: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))): Implies(Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), i)), select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), j))), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0);
    (($IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''($rsc) && (var $range_1 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (var $range_2 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (forall $i_3: int, $i_4: int :: $InRange($range_1, $i_3) ==> $InRange($range_2, $i_4) ==> (var i := $i_3;
    (var j := $i_4;
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), i)), $addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), j))) ==> $IsEqual'num'(i, j))))))))))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemVersion::DiemVersion>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::BurnCapability<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XUS::XUS>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::MintCapability<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_Diem_MintCapability'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XDX::XDX>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<AccountLimits::LimitsDefinition<XUS::XUS>>(): And(WellFormed($rsc), And(And(And(Gt(select AccountLimits::LimitsDefinition.max_inflow($rsc), 0), Gt(select AccountLimits::LimitsDefinition.max_outflow($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.time_period($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.max_holding($rsc), 0))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''($rsc) && (((($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0) && ($max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0)) && ($time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0)) && ($max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0))))));

    // assume forall $rsc: ResourceDomain<AccountLimits::LimitsDefinition<XDX::XDX>>(): And(WellFormed($rsc), And(And(And(Gt(select AccountLimits::LimitsDefinition.max_inflow($rsc), 0), Gt(select AccountLimits::LimitsDefinition.max_outflow($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.time_period($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.max_holding($rsc), 0))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $a_0);
    (($IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''($rsc) && (((($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0) && ($max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0)) && ($time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0)) && ($max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0))))));

    // assume forall $rsc: ResourceDomain<XDX::Reserve>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_XDX_Reserve_$memory, $a_0)}(var $rsc := $ResourceValue($1_XDX_Reserve_$memory, $a_0);
    ($IsValid'$1_XDX_Reserve'($rsc))));

    // assume forall $rsc: ResourceDomain<TransactionFee::TransactionFee<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<DualAttestation::Limit>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DualAttestation_Limit_$memory, $a_0)}(var $rsc := $ResourceValue($1_DualAttestation_Limit_$memory, $a_0);
    ($IsValid'$1_DualAttestation_Limit'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemId::DiemIdDomainManager>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemId_DiemIdDomainManager_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemId_DiemIdDomainManager_$memory, $a_0);
    ($IsValid'$1_DiemId_DiemIdDomainManager'($rsc))));

    // assume forall $rsc: ResourceDomain<ChainId::ChainId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_ChainId_ChainId_$memory, $a_0)}(var $rsc := $ResourceValue($1_ChainId_ChainId_$memory, $a_0);
    ($IsValid'$1_ChainId_ChainId'($rsc))));

    // assume forall $rsc: ResourceDomain<AccountFreezing::FreezeEventsHolder>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_AccountFreezing_FreezeEventsHolder_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountFreezing_FreezeEventsHolder_$memory, $a_0);
    ($IsValid'$1_AccountFreezing_FreezeEventsHolder'($rsc))));

    // assume forall $rsc: ResourceDomain<AccountFreezing::FreezingBit>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_AccountFreezing_FreezingBit_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountFreezing_FreezingBit_$memory, $a_0);
    ($IsValid'$1_AccountFreezing_FreezingBit'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<DiemAccount::AccountOperationsCapability>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_AccountOperationsCapability_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_AccountOperationsCapability_$memory, $a_0);
    ($IsValid'$1_DiemAccount_AccountOperationsCapability'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemWriteSetManager>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemWriteSetManager_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemWriteSetManager_$memory, $a_0);
    ($IsValid'$1_DiemAccount_DiemWriteSetManager'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemSystem::CapabilityHolder>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0);
    ($IsValid'$1_DiemSystem_CapabilityHolder'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemBlock::BlockMetadata>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+2365
    assume (forall $a_0: int :: {$ResourceValue($1_DiemBlock_BlockMetadata_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemBlock_BlockMetadata_$memory, $a_0);
    ($IsValid'$1_DiemBlock_BlockMetadata'($rsc))));

    // assume DiemTimestamp::$is_genesis() at /home/ying/diem/language/diem-framework/modules/Genesis.move:197:9+37
    assume {:print "$at(22,8942,8979)"} true;
    assume $1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory);

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+1
    assume {:print "$at(22,873,874)"} true;
    assume {:print "$track_local(34,1,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+1
    assume {:print "$track_local(34,1,1):", $t1} $t1 == $t1;

    // trace_local[dr_auth_key]($t2) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+1
    assume {:print "$track_local(34,1,2):", $t2} $t2 == $t2;

    // trace_local[tc_auth_key]($t3) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+1
    assume {:print "$track_local(34,1,3):", $t3} $t3 == $t3;

    // trace_local[initial_script_allow_list]($t4) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+1
    assume {:print "$track_local(34,1,4):", $t4} $t4 == $t4;

    // trace_local[is_open_module]($t5) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+1
    assume {:print "$track_local(34,1,5):", $t5} $t5 == $t5;

    // trace_local[instruction_schedule]($t6) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+1
    assume {:print "$track_local(34,1,6):", $t6} $t6 == $t6;

    // trace_local[native_schedule]($t7) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+1
    assume {:print "$track_local(34,1,7):", $t7} $t7 == $t7;

    // trace_local[chain_id]($t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+1
    assume {:print "$track_local(34,1,8):", $t8} $t8 == $t8;

    // trace_local[initial_diem_version]($t9) at /home/ying/diem/language/diem-framework/modules/Genesis.move:30:5+1
    assume {:print "$track_local(34,1,9):", $t9} $t9 == $t9;

    // trace_local[dr_account#2055]($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:42:13+10
    assume {:print "$at(22,1252,1262)"} true;
    assume {:print "$track_local(34,1,10):", $t0} $t0 == $t0;

    // trace_local[tc_account#2056]($t1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:43:13+10
    assume {:print "$at(22,1290,1300)"} true;
    assume {:print "$track_local(34,1,12):", $t1} $t1 == $t1;

    // $t14 := [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:45+35
    assume {:print "$at(22,1361,1396)"} true;
    $t14 := ConcatVec(ConcatVec(ConcatVec(MakeVec4(0, 0, 0, 0), MakeVec4(0, 0, 0, 0)), MakeVec4(0, 0, 0, 0)), MakeVec4(0, 0, 0, 0));
    assume $IsValid'vec'u8''($t14);

    // nop at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    // >> opaque call: DiemAccount::initialize($t0, $t14)

    // assume Identical($t15, CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1227:9+49
    assume {:print "$at(11,55369,55418)"} true;
    assume ($t15 == $1_CoreAddresses_$DIEM_ROOT_ADDRESS());

    // assume Identical($t16, CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1251:9+49
    assume {:print "$at(11,56713,56762)"} true;
    assume ($t16 == $1_CoreAddresses_$DIEM_ROOT_ADDRESS());

    // assume Identical($t17, CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1295:9+59
    assume {:print "$at(11,59274,59333)"} true;
    assume ($t17 == $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS());

    // assume Identical($t18, CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1315:9+59
    assume {:print "$at(11,60508,60567)"} true;
    assume ($t18 == $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS());

    // opaque begin: DiemAccount::initialize($t0, $t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume {:print "$at(22,1325,1397)"} true;

    // assume Identical($t19, Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), exists<SlidingNonce::SlidingNonce>(CoreAddresses::$DIEM_ROOT_ADDRESS())), exists<DiemAccount::AccountOperationsCapability>(CoreAddresses::$DIEM_ROOT_ADDRESS())), exists<DiemAccount::DiemWriteSetManager>(CoreAddresses::$DIEM_ROOT_ADDRESS())), exists<AccountFreezing::FreezingBit>(CoreAddresses::$DIEM_ROOT_ADDRESS())), Not(DiemTimestamp::$is_genesis())), exists<Roles::RoleId>(CoreAddresses::$DIEM_ROOT_ADDRESS())), Neq<num>(Add(16, Len<u8>($t14)), 32)), exists<SlidingNonce::SlidingNonce>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS())), DiemId::$tc_domain_manager_exists()), Not(DiemTimestamp::$is_genesis())), exists<Roles::RoleId>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS())), exists<AccountFreezing::FreezingBit>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume ($t19 == ((((((((((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) || $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())) || $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())) || $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())) || $ResourceExists($1_AccountFreezing_FreezingBit_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())) || !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)) || $ResourceExists($1_Roles_RoleId_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())) || !$IsEqual'num'((16 + LenVec($t14)), 32)) || $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())) || $1_DiemId_$tc_domain_manager_exists($1_DiemId_DiemIdDomainManager_$memory)) || !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)) || $ResourceExists($1_Roles_RoleId_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())) || $ResourceExists($1_AccountFreezing_FreezingBit_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())));

    // if ($t19) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    if ($t19) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
L4:

    // assume Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t20)), And(exists<SlidingNonce::SlidingNonce>(CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(6, $t20))), And(exists<DiemAccount::AccountOperationsCapability>(CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(6, $t20))), And(exists<DiemAccount::DiemWriteSetManager>(CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(6, $t20))), And(exists<AccountFreezing::FreezingBit>(CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(6, $t20))), And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t20))), And(exists<Roles::RoleId>(CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(6, $t20))), And(Neq<num>(Add(16, Len<u8>($t14)), 32), Eq(7, $t20))), And(exists<SlidingNonce::SlidingNonce>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(6, $t20))), And(DiemId::$tc_domain_manager_exists(), Eq(6, $t20))), And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t20))), And(exists<Roles::RoleId>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(6, $t20))), And(exists<AccountFreezing::FreezingBit>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()), Eq(6, $t20))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume (((((((((((((!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t20)) || ($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(6, $t20))) || ($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(6, $t20))) || ($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(6, $t20))) || ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(6, $t20))) || (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t20))) || ($ResourceExists($1_Roles_RoleId_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(6, $t20))) || (!$IsEqual'num'((16 + LenVec($t14)), 32) && $IsEqual'u8'(7, $t20))) || ($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(6, $t20))) || ($1_DiemId_$tc_domain_manager_exists($1_DiemId_DiemIdDomainManager_$memory) && $IsEqual'u8'(6, $t20))) || (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t20))) || ($ResourceExists($1_Roles_RoleId_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(6, $t20))) || ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(6, $t20)));

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume {:print "$at(22,1325,1397)"} true;
    assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
L3:

    // modifies global<Roles::RoleId>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // modifies global<Roles::RoleId>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS(), $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS());
    }

    // modifies global<Event::EventHandleGenerator>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Event_EventHandleGenerator';
        $1_Event_EventHandleGenerator_$memory := $ResourceUpdate($1_Event_EventHandleGenerator_$memory, $t15, $temp_0'$1_Event_EventHandleGenerator');
    } else {
        $1_Event_EventHandleGenerator_$memory := $ResourceRemove($1_Event_EventHandleGenerator_$memory, $t15);
    }

    // modifies global<DiemAccount::DiemAccount>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_DiemAccount';
        $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $t15, $temp_0'$1_DiemAccount_DiemAccount');
    } else {
        $1_DiemAccount_DiemAccount_$memory := $ResourceRemove($1_DiemAccount_DiemAccount_$memory, $t15);
    }

    // modifies global<DiemAccount::AccountOperationsCapability>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_AccountOperationsCapability';
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceUpdate($1_DiemAccount_AccountOperationsCapability_$memory, $t15, $temp_0'$1_DiemAccount_AccountOperationsCapability');
    } else {
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceRemove($1_DiemAccount_AccountOperationsCapability_$memory, $t15);
    }

    // modifies global<DiemAccount::DiemWriteSetManager>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_DiemWriteSetManager';
        $1_DiemAccount_DiemWriteSetManager_$memory := $ResourceUpdate($1_DiemAccount_DiemWriteSetManager_$memory, $t15, $temp_0'$1_DiemAccount_DiemWriteSetManager');
    } else {
        $1_DiemAccount_DiemWriteSetManager_$memory := $ResourceRemove($1_DiemAccount_DiemWriteSetManager_$memory, $t15);
    }

    // modifies global<SlidingNonce::SlidingNonce>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_SlidingNonce_SlidingNonce';
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceUpdate($1_SlidingNonce_SlidingNonce_$memory, $t15, $temp_0'$1_SlidingNonce_SlidingNonce');
    } else {
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceRemove($1_SlidingNonce_SlidingNonce_$memory, $t15);
    }

    // modifies global<Roles::RoleId>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, $t15, $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, $t15);
    }

    // modifies global<AccountFreezing::FreezingBit>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_AccountFreezing_FreezingBit';
        $1_AccountFreezing_FreezingBit_$memory := $ResourceUpdate($1_AccountFreezing_FreezingBit_$memory, $t15, $temp_0'$1_AccountFreezing_FreezingBit');
    } else {
        $1_AccountFreezing_FreezingBit_$memory := $ResourceRemove($1_AccountFreezing_FreezingBit_$memory, $t15);
    }

    // modifies global<DiemAccount::DiemAccount>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_DiemAccount';
        $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $t17, $temp_0'$1_DiemAccount_DiemAccount');
    } else {
        $1_DiemAccount_DiemAccount_$memory := $ResourceRemove($1_DiemAccount_DiemAccount_$memory, $t17);
    }

    // modifies global<SlidingNonce::SlidingNonce>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_SlidingNonce_SlidingNonce';
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceUpdate($1_SlidingNonce_SlidingNonce_$memory, $t17, $temp_0'$1_SlidingNonce_SlidingNonce');
    } else {
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceRemove($1_SlidingNonce_SlidingNonce_$memory, $t17);
    }

    // modifies global<Roles::RoleId>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, $t17, $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, $t17);
    }

    // modifies global<AccountFreezing::FreezingBit>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_AccountFreezing_FreezingBit';
        $1_AccountFreezing_FreezingBit_$memory := $ResourceUpdate($1_AccountFreezing_FreezingBit_$memory, $t17, $temp_0'$1_AccountFreezing_FreezingBit');
    } else {
        $1_AccountFreezing_FreezingBit_$memory := $ResourceRemove($1_AccountFreezing_FreezingBit_$memory, $t17);
    }

    // modifies global<DiemAccount::AccountOperationsCapability>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_AccountOperationsCapability';
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceUpdate($1_DiemAccount_AccountOperationsCapability_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemAccount_AccountOperationsCapability');
    } else {
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceRemove($1_DiemAccount_AccountOperationsCapability_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // modifies global<Event::EventHandleGenerator>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Event_EventHandleGenerator';
        $1_Event_EventHandleGenerator_$memory := $ResourceUpdate($1_Event_EventHandleGenerator_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS(), $temp_0'$1_Event_EventHandleGenerator');
    } else {
        $1_Event_EventHandleGenerator_$memory := $ResourceRemove($1_Event_EventHandleGenerator_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS());
    }

    // modifies global<DiemId::DiemIdDomainManager>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemId_DiemIdDomainManager';
        $1_DiemId_DiemIdDomainManager_$memory := $ResourceUpdate($1_DiemId_DiemIdDomainManager_$memory, $t17, $temp_0'$1_DiemId_DiemIdDomainManager');
    } else {
        $1_DiemId_DiemIdDomainManager_$memory := $ResourceRemove($1_DiemId_DiemIdDomainManager_$memory, $t17);
    }

    // assume exists<Roles::RoleId>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $ResourceExists($1_Roles_RoleId_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());

    // assume Eq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(CoreAddresses::$DIEM_ROOT_ADDRESS())), 0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS())), 0);

    // assume exists<Roles::RoleId>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $ResourceExists($1_Roles_RoleId_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS());

    // assume Eq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS())), 1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS())), 1);

    // assume exists<DiemAccount::AccountOperationsCapability>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, $t16);

    // assume exists<DiemAccount::DiemWriteSetManager>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, $t16);

    // assume exists<SlidingNonce::SlidingNonce>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $t16);

    // assume Roles::spec_has_diem_root_role_addr($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, $t16);

    // assume DiemAccount::$exists_at($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, $t16);

    // assume AccountFreezing::spec_account_is_not_frozen($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, $t16);

    // assume DiemAccount::spec_holds_own_key_rotation_cap($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t16);

    // assume DiemAccount::spec_holds_own_withdraw_cap($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, $t16);

    // assume exists<DiemAccount::AccountOperationsCapability>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());

    // assume Roles::spec_has_treasury_compliance_role_addr($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, $t18);

    // assume DiemAccount::$exists_at($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, $t18);

    // assume exists<SlidingNonce::SlidingNonce>($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $t18);

    // assume AccountFreezing::spec_account_is_not_frozen($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, $t18);

    // assume DiemAccount::spec_holds_own_key_rotation_cap($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t18);

    // assume DiemAccount::spec_holds_own_withdraw_cap($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, $t18);

    // assume exists<DiemId::DiemIdDomainManager>($t18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72
    assume $ResourceExists($1_DiemId_DiemIdDomainManager_$memory, $t18);

    // opaque end: DiemAccount::initialize($t0, $t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:45:9+72

    // nop at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
    // >> opaque call: ChainId::initialize($t0, $t8)
    assume {:print "$at(22,1408,1449)"} true;

    // assume Identical($t21, Signer::$address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ChainId.move:28:9+45
    assume {:print "$at(7,1017,1062)"} true;
    assume ($t21 == $1_Signer_$address_of($t0));

    // opaque begin: ChainId::initialize($t0, $t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
    assume {:print "$at(22,1408,1449)"} true;

    // assume Identical($t22, Or(Or(Not(DiemTimestamp::$is_genesis()), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS())), exists<ChainId::ChainId>($t21))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
    assume ($t22 == ((!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())) || $ResourceExists($1_ChainId_ChainId_$memory, $t21)));

    // if ($t22) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
    if ($t22) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
L6:

    // assume Or(Or(And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t20)), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t20))), And(exists<ChainId::ChainId>($t21), Eq(6, $t20))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
    assume (((!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t20)) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t20))) || ($ResourceExists($1_ChainId_ChainId_$memory, $t21) && $IsEqual'u8'(6, $t20)));

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
    assume {:print "$at(22,1408,1449)"} true;
    assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
L5:

    // modifies global<ChainId::ChainId>($t21) at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_ChainId_ChainId';
        $1_ChainId_ChainId_$memory := $ResourceUpdate($1_ChainId_ChainId_$memory, $t21, $temp_0'$1_ChainId_ChainId');
    } else {
        $1_ChainId_ChainId_$memory := $ResourceRemove($1_ChainId_ChainId_$memory, $t21);
    }

    // assume exists<ChainId::ChainId>($t21) at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41
    assume $ResourceExists($1_ChainId_ChainId_$memory, $t21);

    // opaque end: ChainId::initialize($t0, $t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:47:9+41

    // nop at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34
    // >> opaque call: DiemConfig::initialize($t0)
    assume {:print "$at(22,1493,1527)"} true;

    // opaque begin: DiemConfig::initialize($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34

    // assume Identical($t23, Or(Or(DiemConfig::spec_has_config(), Not(DiemTimestamp::$is_genesis())), Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34
    assume ($t23 == (($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory) || !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS())));

    // if ($t23) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34
    if ($t23) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34
L8:

    // assume Or(Or(And(DiemConfig::spec_has_config(), Eq(6, $t20)), And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t20))), And(Neq<address>(Signer::spec_address_of($t0), CoreAddresses::$DIEM_ROOT_ADDRESS()), Eq(2, $t20))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34
    assume ((($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory) && $IsEqual'u8'(6, $t20)) || (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'u8'(1, $t20))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t20)));

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34
    assume {:print "$at(22,1493,1527)"} true;
    assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34
L7:

    // modifies global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS(), $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS());
    }

    // modifies global<Event::EventHandleGenerator>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:50:9+34
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Event_EventHandleGenerator';
        $1_Event_EventHandleGenerator_$memory := $ResourceUpdate($1_Event_EventHandleGenerator_$memory, $1_Signer_spec_address_of($t0), $temp_0'$1_Event_EventHandleGenerator');
    } else {
        $1_Event_EventHandleGenerator_$memory := $ResourceRemove($1_Event_EventHandleGenerator_$memory, $1_Signer_spec_address_of($t0));
    }

    // assume Identical($t24, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:85:9+81
    assume {:print "$at(13,3202,3283)"} true;
    assume ($t24 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume DiemConfig::spec_has_config() at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:85:9+81
    assume $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory);

    // assume Eq<u64>(select DiemConfig::Configuration.epoch($t24), 0) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:85:9+81
    assume $IsEqual'u64'($epoch#$1_DiemConfig_Configuration($t24), 0);

    // assume Eq<u64>(select DiemConfig::Configuration.last_reconfiguration_time($t24), 0) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:85:9+81
    assume $IsEqual'u64'($last_reconfiguration_time#$1_DiemConfig_Configuration($t24), 0);

    // opaque end: DiemConfig::initialize($t0) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:85:9+81

    // assume Identical($t25, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t25 == $1_Signer_spec_address_of($t0));

    // assume Identical($t26, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume ($t26 == $1_Signer_spec_address_of($t0));

    // Diem::initialize($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:53:9+28
    assume {:print "$at(22,1564,1592)"} true;
    call $1_Diem_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(22,1564,1592)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t27, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t27 == $1_Signer_spec_address_of($t1));

    // assume Identical($t28, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t28 == $1_Signer_spec_address_of($t0));

    // assume Identical($t29, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t29 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t30, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t30 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t31, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t31 == $1_Signer_spec_address_of($t1));

    // assume Identical($t32, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t32 == $1_Signer_spec_address_of($t0));

    // assume Identical($t33, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t33 == $1_Signer_spec_address_of($t1));

    // XUS::initialize($t0, $t1) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:56:9+39
    assume {:print "$at(22,1629,1668)"} true;
    call $1_XUS_initialize($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(22,1629,1668)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t34, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t34 == $1_Signer_spec_address_of($t0));

    // assume Identical($t35, global<DiemConfig::Configuration>(CoreAddresses::$DIEM_ROOT_ADDRESS())) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:360:9+71
    assume {:print "$at(13,15945,16016)"} true;
    assume ($t35 == $ResourceValue($1_DiemConfig_Configuration_$memory, $1_CoreAddresses_$DIEM_ROOT_ADDRESS()));

    // assume Identical($t36, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:361:9+58
    assume {:print "$at(13,16025,16083)"} true;
    assume ($t36 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t37, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t37 == $1_Signer_spec_address_of($t0));

    // assume Identical($t38, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t38 == $1_Signer_spec_address_of($t1));

    // XDX::initialize($t0, $t1) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:9+39
    assume {:print "$at(22,1679,1718)"} true;
    call $1_XDX_initialize($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(22,1679,1718)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t39, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:64:9+47
    assume {:print "$at(4,2284,2331)"} true;
    assume ($t39 == $1_Signer_spec_address_of($t0));

    // AccountFreezing::initialize($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:60:9+39
    assume {:print "$at(22,1729,1768)"} true;
    call $1_AccountFreezing_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(22,1729,1768)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t40, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:535:9+44
    assume {:print "$at(26,24010,24054)"} true;
    assume ($t40 == $1_Signer_spec_address_of($t1));

    // TransactionFee::initialize($t1) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:61:9+38
    assume {:print "$at(22,1778,1816)"} true;
    call $1_TransactionFee_initialize($t1);
    if ($abort_flag) {
        assume {:print "$at(22,1778,1816)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t41, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:120:9+50
    assume {:print "$at(16,5288,5338)"} true;
    assume ($t41 == $1_Signer_spec_address_of($t0));

    // assume Identical($t42, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t42 == $1_Signer_spec_address_of($t0));

    // DiemSystem::initialize_validator_set($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:63:9+48
    assume {:print "$at(22,1827,1875)"} true;
    call $1_DiemSystem_initialize_validator_set($t0);
    if ($abort_flag) {
        assume {:print "$at(22,1827,1875)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t43, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t43 == $1_Signer_spec_address_of($t0));

    // assume Identical($t44, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume ($t44 == $1_Signer_spec_address_of($t0));

    // DiemVersion::initialize($t0, $t9) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:64:9+57
    assume {:print "$at(22,1885,1942)"} true;
    call $1_DiemVersion_initialize($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(22,1885,1942)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t45, Mul(1000, Diem::spec_scaling_factor<XDX::XDX>())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:501:9+86
    assume {:print "$at(21,22219,22305)"} true;
    assume ($t45 == (1000 * $1_Diem_spec_scaling_factor'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // DualAttestation::initialize($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:65:9+39
    assume {:print "$at(22,1952,1991)"} true;
    call $1_DualAttestation_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(22,1952,1991)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // DiemBlock::initialize_block_metadata($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:66:9+48
    assume {:print "$at(22,2001,2049)"} true;
    call $1_DiemBlock_initialize_block_metadata($t0);
    if ($abort_flag) {
        assume {:print "$at(22,2001,2049)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t46, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:966:9+52
    assume {:print "$at(11,43116,43168)"} true;
    assume ($t46 == $1_Signer_spec_address_of($t0));

    // $t47 := DiemAccount::extract_key_rotation_capability($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:70:33+56
    assume {:print "$at(22,2188,2244)"} true;
    call $t47 := $1_DiemAccount_extract_key_rotation_capability($t0);
    if ($abort_flag) {
        assume {:print "$at(22,2188,2244)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // trace_local[dr_rotate_key_cap]($t47) at /home/ying/diem/language/diem-framework/modules/Genesis.move:70:13+17
    assume {:print "$track_local(34,1,11):", $t47} $t47 == $t47;

    // DiemAccount::rotate_authentication_key($t47, $t2) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+71
    assume {:print "$at(22,2254,2325)"} true;
    call $1_DiemAccount_rotate_authentication_key($t47, $t2);
    if ($abort_flag) {
        assume {:print "$at(22,2254,2325)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // DiemAccount::restore_key_rotation_capability($t47) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:72:9+63
    assume {:print "$at(22,2335,2398)"} true;
    call $1_DiemAccount_restore_key_rotation_capability($t47);
    if ($abort_flag) {
        assume {:print "$at(22,2335,2398)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t48, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:966:9+52
    assume {:print "$at(11,43116,43168)"} true;
    assume ($t48 == $1_Signer_spec_address_of($t1));

    // $t49 := DiemAccount::extract_key_rotation_capability($t1) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:74:33+56
    assume {:print "$at(22,2433,2489)"} true;
    call $t49 := $1_DiemAccount_extract_key_rotation_capability($t1);
    if ($abort_flag) {
        assume {:print "$at(22,2433,2489)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // trace_local[tc_rotate_key_cap]($t49) at /home/ying/diem/language/diem-framework/modules/Genesis.move:74:13+17
    assume {:print "$track_local(34,1,13):", $t49} $t49 == $t49;

    // DiemAccount::rotate_authentication_key($t49, $t3) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:75:9+71
    assume {:print "$at(22,2499,2570)"} true;
    call $1_DiemAccount_rotate_authentication_key($t49, $t3);
    if ($abort_flag) {
        assume {:print "$at(22,2499,2570)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // DiemAccount::restore_key_rotation_capability($t49) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+63
    assume {:print "$at(22,2580,2643)"} true;
    call $1_DiemAccount_restore_key_rotation_capability($t49);
    if ($abort_flag) {
        assume {:print "$at(22,2580,2643)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t50, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t50 == $1_Signer_spec_address_of($t0));

    // assume Identical($t51, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume ($t51 == $1_Signer_spec_address_of($t0));

    // DiemTransactionPublishingOption::initialize($t0, $t4, $t5) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:78:9+145
    assume {:print "$at(22,2654,2799)"} true;
    call $1_DiemTransactionPublishingOption_initialize($t0, $t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(22,2654,2799)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // assume Identical($t52, pack DiemVMConfig::GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:112:9+528
    assume {:print "$at(19,4597,5125)"} true;
    assume ($t52 == $1_DiemVMConfig_GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800));

    // assume Identical($t53, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume {:print "$at(26,23651,23695)"} true;
    assume ($t53 == $1_Signer_spec_address_of($t0));

    // assume Identical($t54, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:527:9+44
    assume ($t54 == $1_Signer_spec_address_of($t0));

    // DiemVMConfig::initialize($t0, $t6, $t7) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:84:9+122
    assume {:print "$at(22,2810,2932)"} true;
    call $1_DiemVMConfig_initialize($t0, $t6, $t7);
    if ($abort_flag) {
        assume {:print "$at(22,2810,2932)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // DiemTimestamp::set_time_has_started($t0) on_abort goto L2 with $t20 at /home/ying/diem/language/diem-framework/modules/Genesis.move:93:9+47
    assume {:print "$at(22,3184,3231)"} true;
    call $1_DiemTimestamp_set_time_has_started($t0);
    if ($abort_flag) {
        assume {:print "$at(22,3184,3231)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(34,1):", $t20} $t20 == $t20;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Genesis.move:94:5+1
    assume {:print "$at(22,3237,3238)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/Genesis.move:94:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:94:5+1
L2:

    // abort($t20) at /home/ying/diem/language/diem-framework/modules/Genesis.move:94:5+1
    $abort_code := $t20;
    $abort_flag := true;
    return;

}
