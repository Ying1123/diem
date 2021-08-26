
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
) returns (signer: $signer) {
    // A signer is currently identical to an address.
    signer := $signer(addr);
}

procedure {:inline 1} $1_DiemAccount_destroy_signer(
  signer: $signer
) {
  return;
}

// ==================================================================================
// Native Signer

type {:datatype} $signer;
function {:constructor} $signer($addr: int): $signer;
function {:inline} $IsValid'signer'(s: $signer): bool {
    $IsValid'address'($addr#$signer(s))
}
function {:inline} $IsEqual'signer'(s1: $signer, s2: $signer): bool {
    s1 == s2
}

procedure {:inline 1} $1_Signer_borrow_address(signer: $signer) returns (res: int) {
    res := $addr#$signer(signer);
}

function {:inline} $1_Signer_$borrow_address(signer: $signer): int
{
    $addr#$signer(signer)
}

function {:inline} $1_Signer_spec_address_of(signer: $signer): int
{
    $addr#$signer(signer)
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
// Native Event module



procedure {:inline 1} $InitEventStore() {
}



//==================================
// Begin Translation



// Given Types for Type Parameters


// axiom at /home/ying/diem/language/move-stdlib/modules/Signer.move:28:9+53
axiom (forall s: $signer :: $IsValid'signer'(s) ==> ($1_Signer_is_signer($1_Signer_spec_address_of(s))));

// spec fun at /home/ying/diem/language/move-stdlib/modules/Signer.move:25:10+35
function {:inline} $1_Signer_is_signer(addr: int): bool;
axiom (forall addr: int ::
(var $$res := $1_Signer_is_signer(addr);
$IsValid'bool'($$res)));

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:145:5+90
function {:inline} $1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816)
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

// spec fun at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:257:10+64
function {:inline} $1_SlidingNonce_spec_try_record_nonce(account: $signer, seq_nonce: int): int;
axiom (forall account: $signer, seq_nonce: int ::
(var $$res := $1_SlidingNonce_spec_try_record_nonce(account, seq_nonce);
$IsValid'u64'($$res)));

// struct SlidingNonce::SlidingNonce at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:11:5+341
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

// fun SlidingNonce::publish [verification] at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:261:5+246
procedure {:timeLimit 40} $1_SlidingNonce_publish$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $1_SlidingNonce_SlidingNonce;
    var $t0: $signer;
    var $1_SlidingNonce_SlidingNonce_$modifies: [int]bool;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_SlidingNonce_SlidingNonce_$memory#102: $Memory $1_SlidingNonce_SlidingNonce;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:261:5+246
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:281:9+88
    assume {:print "$at(30,13066,13312)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:261:5+246
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:284:9+98
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:261:5+246
    assume $IsValid'signer'($t0);

    // assume forall $rsc: ResourceDomain<SlidingNonce::SlidingNonce>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:261:5+246
    assume (forall $a_0: int :: {$ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0)}(var $rsc := $ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0);
    ($IsValid'$1_SlidingNonce_SlidingNonce'($rsc))));

    // assume CanModify<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:267:9+64
    assume {:print "$at(30,13363,13427)"} true;
    assume $1_SlidingNonce_SlidingNonce_$modifies[$1_Signer_spec_address_of($t0)];

    // @102 := save_mem(SlidingNonce::SlidingNonce) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:267:9+64
    $1_SlidingNonce_SlidingNonce_$memory#102 := $1_SlidingNonce_SlidingNonce_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:261:5+1
    assume {:print "$at(30,13066,13067)"} true;
    assume {:print "$track_local(10,0,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:38+27
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(30,13150,13177)"} true;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:38+27

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:38+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:38+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:38+27

    // $t4 := exists<SlidingNonce::SlidingNonce>($t3) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:17+6
    $t4 := $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $t3);

    // $t5 := !($t4) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:16+1
    call $t5 := $Not($t4);

    // $t6 := 4 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:94+24
    $t6 := 4;
    assume $IsValid'u64'($t6);

    // nop at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:68+51
    // >> opaque call: $t7 := Errors::already_published($t6)

    // $t7 := opaque begin: Errors::already_published($t6) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:68+51

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:68+51
    assume $IsValid'u64'($t7);

    // assume Eq<u64>($t7, 6) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:68+51
    assume $IsEqual'u64'($t7, 6);

    // $t7 := opaque end: Errors::already_published($t6) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:68+51

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:9+111
    assume {:print "$track_local(10,0,2):", $t7} $t7 == $t7;

    // trace_local[tmp#$1]($t5) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:9+111
    assume {:print "$track_local(10,0,1):", $t5} $t5 == $t5;

    // if ($t5) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:9+111
    if ($t5) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:9+111
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:9+111

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:9+111
    assume {:print "$at(30,13121,13232)"} true;
    assume {:print "$track_abort(10,0):", $t7} $t7 == $t7;

    // $t8 := move($t7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:9+111
    $t8 := $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:262:9+111
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:263:17+7
    assume {:print "$at(30,13250,13257)"} true;
L0:

    // $t9 := 0 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:263:53+1
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // $t10 := 0 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:263:68+1
    $t10 := 0;
    assume $IsValid'u128'($t10);

    // $t11 := pack SlidingNonce::SlidingNonce($t9, $t10) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:263:26+45
    $t11 := $1_SlidingNonce_SlidingNonce($t9, $t10);

    // assert CanModify<SlidingNonce::SlidingNonce>($t0) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:263:9+7
    assert {:msg "assert_failed(30,13242,13249): caller does not have permission to modify `SlidingNonce::SlidingNonce` at given address"}
      $1_SlidingNonce_SlidingNonce_$modifies[$1_Signer_spec_address_of($t0)];

    // move_to<SlidingNonce::SlidingNonce>($t11, $t0) on_abort goto L3 with $t8 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:263:9+7
    if ($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceUpdate($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0), $t11);
    }
    if ($abort_flag) {
        assume {:print "$at(30,13242,13249)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(10,0):", $t8} $t8 == $t8;
        goto L3;
    }

    // assert Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:281:9+88
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:281:9+88
    assume {:print "$at(30,13935,14023)"} true;
    assert {:msg "assert_failed(30,13935,14023): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:284:9+98
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:284:9+98
    assume {:print "$at(30,14033,14131)"} true;
    assert {:msg "assert_failed(30,14033,14131): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // label L2 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:264:5+1
    assume {:print "$at(30,13311,13312)"} true;
L2:

    // assert Not(exists[@102]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:268:9+96
    assume {:print "$at(30,13436,13532)"} true;
    assert {:msg "assert_failed(30,13436,13532): function does not abort under this condition"}
      !$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#102, $1_Signer_spec_address_of($t0));

    // assert exists<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:269:9+63
    assume {:print "$at(30,13541,13604)"} true;
    assert {:msg "assert_failed(30,13541,13604): post-condition does not hold"}
      $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:269:9+63
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:264:5+1
    assume {:print "$at(30,13311,13312)"} true;
L3:

    // assert exists[@102]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:265:5+293
    assume {:print "$at(30,13317,13610)"} true;
    assert {:msg "assert_failed(30,13317,13610): abort not covered by any of the `aborts_if` clauses"}
      $ResourceExists($1_SlidingNonce_SlidingNonce_$memory#102, $1_Signer_spec_address_of($t0));

    // assert And(exists[@102]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0)), Eq(6, $t8)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:265:5+293
    assert {:msg "assert_failed(30,13317,13610): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ($ResourceExists($1_SlidingNonce_SlidingNonce_$memory#102, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(6, $t8));

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:265:5+293
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun SlidingNonce::record_nonce_or_abort [verification] at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+212
procedure {:timeLimit 40} $1_SlidingNonce_record_nonce_or_abort$verify(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'$1_SlidingNonce_SlidingNonce': $1_SlidingNonce_SlidingNonce;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_SlidingNonce_SlidingNonce_$memory#103: $Memory $1_SlidingNonce_SlidingNonce;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+212
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:281:9+88
    assume {:print "$at(30,1585,1797)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+212
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:284:9+98
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+212
    assume $IsValid'signer'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+212
    assume $IsValid'u64'($t1);

    // assume forall $rsc: ResourceDomain<SlidingNonce::SlidingNonce>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+212
    assume (forall $a_0: int :: {$ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0)}(var $rsc := $ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0);
    ($IsValid'$1_SlidingNonce_SlidingNonce'($rsc))));

    // @103 := save_mem(SlidingNonce::SlidingNonce) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+1
    $1_SlidingNonce_SlidingNonce_$memory#103 := $1_SlidingNonce_SlidingNonce_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+1
    assume {:print "$track_local(10,1,0):", $t0} $t0 == $t0;

    // trace_local[seq_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+1
    assume {:print "$track_local(10,1,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    // >> opaque call: $t5 := SlidingNonce::try_record_nonce($t0, $t1)
    assume {:print "$at(30,1695,1731)"} true;

    // $t5 := opaque begin: SlidingNonce::try_record_nonce($t0, $t1) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36

    // assume Identical($t6, Not(exists<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0)))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume ($t6 == !$ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0)));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
L5:

    // assume And(Not(exists<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0))), Eq(5, $t7)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume (!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(5, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume {:print "$at(30,1695,1731)"} true;
    assume {:print "$track_abort(10,1):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
L4:

    // modifies global<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_SlidingNonce_SlidingNonce';
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceUpdate($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0), $temp_0'$1_SlidingNonce_SlidingNonce');
    } else {
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceRemove($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0));
    }

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume $IsValid'u64'($t5);

    // assume Eq<u64>($t5, SlidingNonce::spec_try_record_nonce($t0, $t1)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume $IsEqual'u64'($t5, $1_SlidingNonce_spec_try_record_nonce($t0, $t1));

    // $t5 := opaque end: SlidingNonce::try_record_nonce($t0, $t1) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36

    // trace_local[code]($t5) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:13+4
    assume {:print "$track_local(10,1,4):", $t5} $t5 == $t5;

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:24+1
    assume {:print "$at(30,1756,1757)"} true;
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := ==($t5, $t8) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:21+2
    $t9 := $IsEqual'u64'($t5, $t8);

    // nop at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:27+30
    // >> opaque call: $t8 := Errors::invalid_argument($t5)

    // $t10 := opaque begin: Errors::invalid_argument($t5) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:27+30

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:27+30
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:27+30
    assume $IsEqual'u64'($t10, 7);

    // $t10 := opaque end: Errors::invalid_argument($t5) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:27+30

    // trace_local[tmp#$3]($t10) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    assume {:print "$track_local(10,1,3):", $t10} $t10 == $t10;

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    assume {:print "$track_local(10,1,2):", $t9} $t9 == $t9;

    // if ($t9) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    if ($t9) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
L1:

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    assume {:print "$at(30,1741,1790)"} true;
    assume {:print "$track_abort(10,1):", $t10} $t10 == $t10;

    // $t7 := move($t10) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    $t7 := $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:58+1
L0:

    // label L2 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:38:5+1
    assume {:print "$at(30,1796,1797)"} true;
L2:

    // assert Not(Not(exists[@103]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:47:9+93
    assume {:print "$at(30,1971,2064)"} true;
    assert {:msg "assert_failed(30,1971,2064): function does not abort under this condition"}
      !!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#103, $1_Signer_spec_address_of($t0));

    // assert Not(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:48:9+87
    assume {:print "$at(30,2073,2160)"} true;
    assert {:msg "assert_failed(30,2073,2160): function does not abort under this condition"}
      !!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0);

    // return () at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:48:9+87
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:38:5+1
    assume {:print "$at(30,1796,1797)"} true;
L3:

    // assert Or(Not(exists[@103]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:40:5+71
    assume {:print "$at(30,1803,1874)"} true;
    assert {:msg "assert_failed(30,1803,1874): abort not covered by any of the `aborts_if` clauses"}
      (!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#103, $1_Signer_spec_address_of($t0)) || !$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0));

    // assert Or(And(Not(exists[@103]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Eq(5, $t7)), And(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0), Eq(7, $t7))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:40:5+71
    assert {:msg "assert_failed(30,1803,1874): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#103, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(5, $t7)) || (!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0) && $IsEqual'num'(7, $t7)));

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:40:5+71
    $abort_code := $t7;
    $abort_flag := true;
    return;

}
