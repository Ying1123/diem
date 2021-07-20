
// ** Expanded prelude

// Copyright (c) The Diem Core Contributors
// SPDX-License-Identifier: Apache-2.0

// Basic theory for vectors using arrays. This version of vectors is not extensional.

type {:datatype} Vec _;

function {:constructor} Vec<T>(v: [int]T, l: int): Vec T;

function {:builtin "MapConst"} MapConstVec<T>(T): [int]T;
function DefaultVecElem<T>(): T;
function {:inline} DefaultVecMap<T>(): [int]T { MapConstVec(DefaultVecElem()) }

function {:inline} EmptyVec<T>(): Vec T {
    Vec(DefaultVecMap(), 0)
}

function {:inline} MakeVec1<T>(v: T): Vec T {
    Vec(DefaultVecMap()[0 := v], 1)
}

function {:inline} MakeVec2<T>(v1: T, v2: T): Vec T {
    Vec(DefaultVecMap()[0 := v1][1 := v2], 2)
}

function {:inline} MakeVec3<T>(v1: T, v2: T, v3: T): Vec T {
    Vec(DefaultVecMap()[0 := v1][1 := v2][2 := v3], 3)
}

function {:inline} MakeVec4<T>(v1: T, v2: T, v3: T, v4: T): Vec T {
    Vec(DefaultVecMap()[0 := v1][1 := v2][2 := v3][3 := v4], 4)
}

function {:inline} ExtendVec<T>(v: Vec T, elem: T): Vec T {
    (var l := l#Vec(v);
    Vec(v#Vec(v)[l := elem], l + 1))
}

function {:inline} ReadVec<T>(v: Vec T, i: int): T {
    v#Vec(v)[i]
}

function {:inline} LenVec<T>(v: Vec T): int {
    l#Vec(v)
}

function {:inline} IsEmptyVec<T>(v: Vec T): bool {
    l#Vec(v) == 0
}

function {:inline} RemoveVec<T>(v: Vec T): Vec T {
    (var l := l#Vec(v) - 1;
    Vec(v#Vec(v)[l := DefaultVecElem()], l))
}

function {:inline} RemoveAtVec<T>(v: Vec T, i: int): Vec T {
    (var l := l#Vec(v) - 1;
    Vec(
        (lambda j: int ::
           if j >= 0 && j < l then
               if j < i then v#Vec(v)[j] else v#Vec(v)[j+1]
           else DefaultVecElem()),
        l))
}

function {:inline} ConcatVec<T>(v1: Vec T, v2: Vec T): Vec T {
    (var l1, m1, l2, m2 := l#Vec(v1), v#Vec(v1), l#Vec(v2), v#Vec(v2);
    Vec(
        (lambda i: int ::
          if i >= 0 && i < l1 + l2 then
            if i < l1 then m1[i] else m2[i - l1]
          else DefaultVecElem()),
        l1 + l2))
}

function {:inline} ReverseVec<T>(v: Vec T): Vec T {
    (var l := l#Vec(v);
    Vec(
        (lambda i: int :: if 0 <= i && i < l then v#Vec(v)[l - i - 1] else DefaultVecElem()),
        l))
}

function {:inline} SliceVec<T>(v: Vec T, i: int, j: int): Vec T {
    (var m := v#Vec(v);
    Vec(
        (lambda k:int ::
          if 0 <= k && k < j - i then
            m[i + k]
          else
            DefaultVecElem()),
        (if j - i < 0 then 0 else j - i)))
}


function {:inline} UpdateVec<T>(v: Vec T, i: int, elem: T): Vec T {
    Vec(v#Vec(v)[i := elem], l#Vec(v))
}

function {:inline} SwapVec<T>(v: Vec T, i: int, j: int): Vec T {
    (var m := v#Vec(v);
    Vec(m[i := m[j]][j := m[i]], l#Vec(v)))
}

function {:inline} ContainsVec<T>(v: Vec T, e: T): bool {
    (var l := l#Vec(v);
    (exists i: int :: InRangeVec(v, i) && v#Vec(v)[i] == e))
}

function IndexOfVec<T>(v: Vec T, e: T): int;
axiom {:ctor "Vec"} (forall<T> v: Vec T, e: T :: {IndexOfVec(v, e)}
    (var i := IndexOfVec(v,e);
     if (!ContainsVec(v, e)) then i == -1
     else InRangeVec(v, i) && ReadVec(v, i) == e &&
        (forall j: int :: j >= 0 && j < i ==> ReadVec(v, j) != e)));

// This function should stay non-inlined as it guards many quantifiers
// over vectors. It appears important to have this uninterpreted for
// quantifier triggering.
function InRangeVec<T>(v: Vec T, i: int): bool {
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
// Native Vector implementation for element type `u8`

// Not inlined. It appears faster this way.
function $IsEqual'vec'u8''(v1: Vec (int), v2: Vec (int)): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'u8'(ReadVec(v1, i), ReadVec(v2, i)))
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

// spec fun at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:39:5+62
function {:inline} $1_CoreAddresses_$VM_RESERVED_ADDRESS(): int {
    0
}

// fun CoreAddresses::CORE_CODE_ADDRESS [verification] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:45:5+60
procedure {:timeLimit 40} $1_CoreAddresses_CORE_CODE_ADDRESS$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $temp_0'address': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := 0x1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:46:9+4
    assume {:print "$at(8,1952,1956)"} true;
    $t0 := 1;
    assume $IsValid'address'($t0);

    // trace_return[0]($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:46:9+4
    assume {:print "$track_return(2,0,0):", $t0} $t0 == $t0;

    // label L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:47:5+1
    assume {:print "$at(8,1961,1962)"} true;
L1:

    // return $t0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:47:5+1
    $ret0 := $t0;
    return;

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

// fun CoreAddresses::CURRENCY_INFO_ADDRESS [verification] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:24:5+70
procedure {:timeLimit 40} $1_CoreAddresses_CURRENCY_INFO_ADDRESS$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $temp_0'address': int;

    // verification entrypoint assumptions
    call $InitVerification();

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

// fun CoreAddresses::DIEM_ROOT_ADDRESS [verification] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:16:5+66
procedure {:timeLimit 40} $1_CoreAddresses_DIEM_ROOT_ADDRESS$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $temp_0'address': int;

    // verification entrypoint assumptions
    call $InitVerification();

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

// fun CoreAddresses::TREASURY_COMPLIANCE_ADDRESS [verification] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:5+76
procedure {:timeLimit 40} $1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $temp_0'address': int;

    // verification entrypoint assumptions
    call $InitVerification();

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

// fun CoreAddresses::VM_RESERVED_ADDRESS [baseline] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:39:5+62
procedure {:inline 1} $1_CoreAddresses_VM_RESERVED_ADDRESS() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $temp_0'address': int;

    // bytecode translation starts here
    // $t0 := 0x0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:40:9+4
    assume {:print "$at(8,1768,1772)"} true;
    $t0 := 0;
    assume $IsValid'address'($t0);

    // trace_return[0]($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:40:9+4
    assume {:print "$track_return(2,4,0):", $t0} $t0 == $t0;

    // label L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:41:5+1
    assume {:print "$at(8,1777,1778)"} true;
L1:

    // return $t0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:41:5+1
    $ret0 := $t0;
    return;

}

// fun CoreAddresses::VM_RESERVED_ADDRESS [verification] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:39:5+62
procedure {:timeLimit 40} $1_CoreAddresses_VM_RESERVED_ADDRESS$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $temp_0'address': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := 0x0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:40:9+4
    assume {:print "$at(8,1768,1772)"} true;
    $t0 := 0;
    assume $IsValid'address'($t0);

    // trace_return[0]($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:40:9+4
    assume {:print "$track_return(2,4,0):", $t0} $t0 == $t0;

    // label L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:41:5+1
    assume {:print "$at(8,1777,1778)"} true;
L1:

    // return $t0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:41:5+1
    $ret0 := $t0;
    return;

}

// fun CoreAddresses::assert_currency_info [verification] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:110:5+170
procedure {:timeLimit 40} $1_CoreAddresses_assert_currency_info$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:110:5+170
    assume {:print "$at(8,4374,4544)"} true;
    assume $IsValid'address'($t0);

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:110:5+1
    assume {:print "$track_local(2,5,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:16+27
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(8,4441,4468)"} true;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:16+27

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:16+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:16+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:16+27

    // $t4 := CoreAddresses::CURRENCY_INFO_ADDRESS() on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:47+23
    call $t4 := $1_CoreAddresses_CURRENCY_INFO_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(8,4472,4495)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(2,5):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t6 := ==($t3, $t4) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:44+2
    $t6 := $IsEqual'address'($t3, $t4);

    // $t7 := 3 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:97+14
    $t7 := 3;
    assume $IsValid'u64'($t7);

    // nop at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:72+40
    // >> opaque call: $t7 := Errors::requires_address($t6)

    // $t8 := opaque begin: Errors::requires_address($t7) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:72+40

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:72+40
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 2) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:72+40
    assume $IsEqual'u64'($t8, 2);

    // $t8 := opaque end: Errors::requires_address($t7) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:72+40

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:9+104
    assume {:print "$track_local(2,5,2):", $t8} $t8 == $t8;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:9+104
    assume {:print "$track_local(2,5,1):", $t6} $t6 == $t6;

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:9+104
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:9+104
L1:

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:9+104
    assume {:print "$at(8,4434,4538)"} true;
    assume {:print "$track_abort(2,5):", $t8} $t8 == $t8;

    // $t5 := move($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:9+104
    $t5 := $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:9+104
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:111:9+104
L0:

    // label L2 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:112:5+1
    assume {:print "$at(8,4543,4544)"} true;
L2:

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$CURRENCY_INFO_ADDRESS[]())) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:121:9+112
    assume {:print "$at(8,4814,4926)"} true;
    assert {:msg "assert_failed(8,4814,4926): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$CURRENCY_INFO_ADDRESS());

    // return () at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:121:9+112
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:112:5+1
    assume {:print "$at(8,4543,4544)"} true;
L3:

    // assert Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$CURRENCY_INFO_ADDRESS[]()) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:113:5+97
    assume {:print "$at(8,4549,4646)"} true;
    assert {:msg "assert_failed(8,4549,4646): abort not covered by any of the `aborts_if` clauses"}
      !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$CURRENCY_INFO_ADDRESS());

    // assert And(Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$CURRENCY_INFO_ADDRESS[]()), Eq(2, $t5)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:113:5+97
    assert {:msg "assert_failed(8,4549,4646): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$CURRENCY_INFO_ADDRESS()) && $IsEqual'u8'(2, $t5));

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:113:5+97
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun CoreAddresses::assert_diem_root [verification] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:59:5+158
procedure {:timeLimit 40} $1_CoreAddresses_assert_diem_root$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:59:5+158
    assume {:print "$at(8,2483,2641)"} true;
    assume $IsValid'address'($t0);

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:59:5+1
    assume {:print "$track_local(2,6,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:16+27
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(8,2546,2573)"} true;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:16+27

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:16+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:16+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:16+27

    // $t4 := CoreAddresses::DIEM_ROOT_ADDRESS() on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:47+19
    call $t4 := $1_CoreAddresses_DIEM_ROOT_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(8,2577,2596)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(2,6):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t6 := ==($t3, $t4) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:44+2
    $t6 := $IsEqual'address'($t3, $t4);

    // $t7 := 0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:93+10
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // nop at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:68+36
    // >> opaque call: $t7 := Errors::requires_address($t6)

    // $t8 := opaque begin: Errors::requires_address($t7) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:68+36

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:68+36
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 2) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:68+36
    assume $IsEqual'u64'($t8, 2);

    // $t8 := opaque end: Errors::requires_address($t7) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:68+36

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:9+96
    assume {:print "$track_local(2,6,2):", $t8} $t8 == $t8;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:9+96
    assume {:print "$track_local(2,6,1):", $t6} $t6 == $t6;

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:9+96
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:9+96
L1:

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:9+96
    assume {:print "$at(8,2539,2635)"} true;
    assume {:print "$track_abort(2,6):", $t8} $t8 == $t8;

    // $t5 := move($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:9+96
    $t5 := $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:9+96
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:60:9+96
L0:

    // label L2 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:61:5+1
    assume {:print "$at(8,2640,2641)"} true;
L2:

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$DIEM_ROOT_ADDRESS[]())) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:70:9+108
    assume {:print "$at(8,2901,3009)"} true;
    assert {:msg "assert_failed(8,2901,3009): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS());

    // return () at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:70:9+108
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:61:5+1
    assume {:print "$at(8,2640,2641)"} true;
L3:

    // assert Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$DIEM_ROOT_ADDRESS[]()) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:62:5+89
    assume {:print "$at(8,2646,2735)"} true;
    assert {:msg "assert_failed(8,2646,2735): abort not covered by any of the `aborts_if` clauses"}
      !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS());

    // assert And(Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$DIEM_ROOT_ADDRESS[]()), Eq(2, $t5)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:62:5+89
    assert {:msg "assert_failed(8,2646,2735): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$DIEM_ROOT_ADDRESS()) && $IsEqual'u8'(2, $t5));

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:62:5+89
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun CoreAddresses::assert_treasury_compliance [verification] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:75:5+222
procedure {:timeLimit 40} $1_CoreAddresses_assert_treasury_compliance$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:75:5+222
    assume {:print "$at(8,3089,3311)"} true;
    assume $IsValid'address'($t0);

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:75:5+1
    assume {:print "$track_local(2,7,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:77:13+27
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(8,3175,3202)"} true;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:77:13+27

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:77:13+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:77:13+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:77:13+27

    // $t4 := CoreAddresses::TREASURY_COMPLIANCE_ADDRESS() on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:77:44+29
    call $t4 := $1_CoreAddresses_TREASURY_COMPLIANCE_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(8,3206,3235)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(2,7):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t6 := ==($t3, $t4) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:77:41+2
    $t6 := $IsEqual'address'($t3, $t4);

    // $t7 := 1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:78:38+20
    assume {:print "$at(8,3274,3294)"} true;
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // nop at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:78:13+46
    // >> opaque call: $t7 := Errors::requires_address($t6)

    // $t8 := opaque begin: Errors::requires_address($t7) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:78:13+46

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:78:13+46
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 2) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:78:13+46
    assume $IsEqual'u64'($t8, 2);

    // $t8 := opaque end: Errors::requires_address($t7) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:78:13+46

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:76:9+150
    assume {:print "$at(8,3155,3305)"} true;
    assume {:print "$track_local(2,7,2):", $t8} $t8 == $t8;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:76:9+150
    assume {:print "$track_local(2,7,1):", $t6} $t6 == $t6;

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:76:9+150
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:76:9+150
L1:

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:76:9+150
    assume {:print "$at(8,3155,3305)"} true;
    assume {:print "$track_abort(2,7):", $t8} $t8 == $t8;

    // $t5 := move($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:76:9+150
    $t5 := $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:76:9+150
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:76:9+150
L0:

    // label L2 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:80:5+1
    assume {:print "$at(8,3310,3311)"} true;
L2:

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS[]())) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:89:9+118
    assume {:print "$at(8,3611,3729)"} true;
    assert {:msg "assert_failed(8,3611,3729): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS());

    // return () at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:89:9+118
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:80:5+1
    assume {:print "$at(8,3310,3311)"} true;
L3:

    // assert Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS[]()) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:81:5+109
    assume {:print "$at(8,3316,3425)"} true;
    assert {:msg "assert_failed(8,3316,3425): abort not covered by any of the `aborts_if` clauses"}
      !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS());

    // assert And(Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$TREASURY_COMPLIANCE_ADDRESS[]()), Eq(2, $t5)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:81:5+109
    assert {:msg "assert_failed(8,3316,3425): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$TREASURY_COMPLIANCE_ADDRESS()) && $IsEqual'u8'(2, $t5));

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:81:5+109
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun CoreAddresses::assert_vm [verification] at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:94:5+146
procedure {:timeLimit 40} $1_CoreAddresses_assert_vm$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:94:5+146
    assume {:print "$at(8,3801,3947)"} true;
    assume $IsValid'address'($t0);

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:94:5+1
    assume {:print "$track_local(2,8,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:16+27
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(8,3857,3884)"} true;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:16+27

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:16+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:16+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:16+27

    // $t4 := CoreAddresses::VM_RESERVED_ADDRESS() on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:47+21
    call $t4 := $1_CoreAddresses_VM_RESERVED_ADDRESS();
    if ($abort_flag) {
        assume {:print "$at(8,3888,3909)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(2,8):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t6 := ==($t3, $t4) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:44+2
    $t6 := $IsEqual'address'($t3, $t4);

    // $t7 := 2 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:95+3
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // nop at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:70+29
    // >> opaque call: $t7 := Errors::requires_address($t6)

    // $t8 := opaque begin: Errors::requires_address($t7) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:70+29

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:70+29
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 2) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:70+29
    assume $IsEqual'u64'($t8, 2);

    // $t8 := opaque end: Errors::requires_address($t7) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:70+29

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:9+91
    assume {:print "$track_local(2,8,2):", $t8} $t8 == $t8;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:9+91
    assume {:print "$track_local(2,8,1):", $t6} $t6 == $t6;

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:9+91
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:9+91
L1:

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:9+91
    assume {:print "$at(8,3850,3941)"} true;
    assume {:print "$track_abort(2,8):", $t8} $t8 == $t8;

    // $t5 := move($t8) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:9+91
    $t5 := $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:9+91
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:95:9+91
L0:

    // label L2 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:96:5+1
    assume {:print "$at(8,3946,3947)"} true;
L2:

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$VM_RESERVED_ADDRESS[]())) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:105:9+110
    assume {:print "$at(8,4190,4300)"} true;
    assert {:msg "assert_failed(8,4190,4300): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$VM_RESERVED_ADDRESS());

    // return () at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:105:9+110
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:96:5+1
    assume {:print "$at(8,3946,3947)"} true;
L3:

    // assert Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$VM_RESERVED_ADDRESS[]()) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:97:5+76
    assume {:print "$at(8,3952,4028)"} true;
    assert {:msg "assert_failed(8,3952,4028): abort not covered by any of the `aborts_if` clauses"}
      !$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$VM_RESERVED_ADDRESS());

    // assert And(Neq<address>(Signer::spec_address_of[]($t0), CoreAddresses::$VM_RESERVED_ADDRESS[]()), Eq(2, $t5)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:97:5+76
    assert {:msg "assert_failed(8,3952,4028): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$IsEqual'address'($1_Signer_spec_address_of($t0), $1_CoreAddresses_$VM_RESERVED_ADDRESS()) && $IsEqual'u8'(2, $t5));

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:97:5+76
    $abort_code := $t5;
    $abort_flag := true;
    return;

}
