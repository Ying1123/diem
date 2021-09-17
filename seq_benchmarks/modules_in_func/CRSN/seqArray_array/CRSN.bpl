
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
// Native Vector implementation for element type `bool`

// Not inlined. It appears faster this way.
function $IsEqual'vec'bool''(v1: Vec (bool), v2: Vec (bool)): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'bool'(ReadVec(v1, i), ReadVec(v2, i)))
}

// Not inlined.
function $IsValid'vec'bool''(v: Vec (bool)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'bool'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'bool'(v: Vec (bool), e: bool): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'bool'(ReadVec(v, i), e))
}

function $IndexOfVec'bool'(v: Vec (bool), e: bool): int;
axiom (forall v: Vec (bool), e: bool:: {$IndexOfVec'bool'(v, e)}
    (var i := $IndexOfVec'bool'(v, e);
     if (!$ContainsVec'bool'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'bool'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'bool'(ReadVec(v, j), e))));


function {:inline} $RangeVec'bool'(v: Vec (bool)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'bool'(): Vec (bool) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'bool'() returns (v: Vec (bool)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'bool'(): Vec (bool) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'bool'(v: Vec (bool)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'bool'(m: $Mutation (Vec (bool)), val: bool) returns (m': $Mutation (Vec (bool))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'bool'(v: Vec (bool), val: bool): Vec (bool) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'bool'(m: $Mutation (Vec (bool))) returns (e: bool, m': $Mutation (Vec (bool))) {
    var v: Vec (bool);
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

procedure {:inline 1} $1_Vector_append'bool'(m: $Mutation (Vec (bool)), other: Vec (bool)) returns (m': $Mutation (Vec (bool))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'bool'(m: $Mutation (Vec (bool))) returns (m': $Mutation (Vec (bool))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'bool'(v: Vec (bool)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'bool'(v: Vec (bool)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'bool'(v: Vec (bool), i: int) returns (dst: bool) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'bool'(v: Vec (bool), i: int): bool {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'bool'(m: $Mutation (Vec (bool)), index: int)
returns (dst: $Mutation (bool), m': $Mutation (Vec (bool)))
{
    var v: Vec (bool);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'bool'(v: Vec (bool), i: int): bool {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'bool'(v: Vec (bool)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'bool'(m: $Mutation (Vec (bool)), i: int, j: int) returns (m': $Mutation (Vec (bool)))
{
    var v: Vec (bool);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'bool'(v: Vec (bool), i: int, j: int): Vec (bool) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'bool'(m: $Mutation (Vec (bool)), i: int) returns (e: bool, m': $Mutation (Vec (bool)))
{
    var v: Vec (bool);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'bool'(m: $Mutation (Vec (bool)), i: int) returns (e: bool, m': $Mutation (Vec (bool)))
{
    var len: int;
    var v: Vec (bool);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'bool'(v: Vec (bool), e: bool) returns (res: bool)  {
    res := $ContainsVec'bool'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'bool'(v: Vec (bool), e: bool) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'bool'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
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

function {:inline} $1_Signer_is_txn_signer(s: $signer): bool;

function {:inline} $1_Signer_is_txn_signer_addr(a: int): bool;


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


// spec fun at /home/ying/diem/language/move-stdlib/modules/BitVector.move:138:5+98
function {:inline} $1_BitVector_$length(bitvector: $1_BitVector_BitVector): int {
    $1_Vector_$length'bool'($bit_field#$1_BitVector_BitVector(bitvector))
}

// struct BitVector::BitVector at /home/ying/diem/language/move-stdlib/modules/BitVector.move:14:5+100
type {:datatype} $1_BitVector_BitVector;
function {:constructor} $1_BitVector_BitVector($length: int, $bit_field: Vec (bool)): $1_BitVector_BitVector;
function {:inline} $Update'$1_BitVector_BitVector'_length(s: $1_BitVector_BitVector, x: int): $1_BitVector_BitVector {
    $1_BitVector_BitVector(x, $bit_field#$1_BitVector_BitVector(s))
}
function {:inline} $Update'$1_BitVector_BitVector'_bit_field(s: $1_BitVector_BitVector, x: Vec (bool)): $1_BitVector_BitVector {
    $1_BitVector_BitVector($length#$1_BitVector_BitVector(s), x)
}
function $IsValid'$1_BitVector_BitVector'(s: $1_BitVector_BitVector): bool {
    $IsValid'u64'($length#$1_BitVector_BitVector(s))
      && $IsValid'vec'bool''($bit_field#$1_BitVector_BitVector(s))
}
function {:inline} $IsEqual'$1_BitVector_BitVector'(s1: $1_BitVector_BitVector, s2: $1_BitVector_BitVector): bool {
    $IsEqual'u64'($length#$1_BitVector_BitVector(s1), $length#$1_BitVector_BitVector(s2))
    && $IsEqual'vec'bool''($bit_field#$1_BitVector_BitVector(s1), $bit_field#$1_BitVector_BitVector(s2))}

// fun BitVector::length [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:138:5+98
procedure {:inline 1} $1_BitVector_length(_$t0: $1_BitVector_BitVector) returns ($ret0: int)
{
    // declare local variables
    var $t1: Vec (bool);
    var $t2: int;
    var $t3: int;
    var $t0: $1_BitVector_BitVector;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:138:5+1
    assume {:print "$at(43,4598,4599)"} true;
    assume {:print "$track_local(29,1,0):", $t0} $t0 == $t0;

    // $t1 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:139:24+20
    assume {:print "$at(43,4669,4689)"} true;
    $t1 := $bit_field#$1_BitVector_BitVector($t0);

    // $t2 := Vector::length<bool>($t1) on_abort goto L2 with $t3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:139:9+36
    call $t2 := $1_Vector_length'bool'($t1);
    if ($abort_flag) {
        assume {:print "$at(43,4654,4690)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(29,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:139:9+36
    assume {:print "$track_return(29,1,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:140:5+1
    assume {:print "$at(43,4695,4696)"} true;
L1:

    // return $t2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:140:5+1
    $ret0 := $t2;
    return;

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:140:5+1
L2:

    // abort($t3) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:140:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun BitVector::set [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:54:5+257
procedure {:inline 1} $1_BitVector_set(_$t0: $Mutation ($1_BitVector_BitVector), _$t1: int) returns ($ret0: $Mutation ($1_BitVector_BitVector))
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $Mutation (bool);
    var $t5: Vec (bool);
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: $Mutation (Vec (bool));
    var $t12: $Mutation (bool);
    var $t13: bool;
    var $t0: $Mutation ($1_BitVector_BitVector);
    var $t1: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t11));
    assume IsEmptyVec(p#$Mutation($t12));

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:54:5+1
    assume {:print "$at(43,1539,1540)"} true;
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,4,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // trace_local[bit_index]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:54:5+1
    assume {:print "$track_local(29,4,1):", $t1} $t1 == $t1;

    // $t5 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:43+20
    assume {:print "$at(43,1641,1661)"} true;
    $t5 := $bit_field#$1_BitVector_BitVector($Dereference($t0));

    // $t6 := Vector::length<bool>($t5) on_abort goto L3 with $t7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:28+36
    call $t6 := $1_Vector_length'bool'($t5);
    if ($abort_flag) {
        assume {:print "$at(43,1626,1662)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(29,4):", $t7} $t7 == $t7;
        goto L3;
    }

    // $t8 := <($t1, $t6) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:26+1
    call $t8 := $Lt($t1, $t6);

    // $t9 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:91+6
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // $t10 := opaque begin: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:66+32

    // assume WellFormed($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:66+32
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:66+32
    assume $IsEqual'u64'($t10, 7);

    // $t10 := opaque end: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:66+32

    // trace_local[tmp#$3]($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    assume {:print "$track_local(29,4,3):", $t10} $t10 == $t10;

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    assume {:print "$track_local(29,4,2):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
L1:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90

    // trace_abort($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    assume {:print "$at(43,1607,1697)"} true;
    assume {:print "$track_abort(29,4):", $t10} $t10 == $t10;

    // $t7 := move($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    $t7 := $t10;

    // goto L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    goto L3;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:56:41+9
    assume {:print "$at(43,1739,1748)"} true;
L0:

    // $t11 := borrow_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:56:36+24
    $t11 := $ChildMutation($t0, 1, $bit_field#$1_BitVector_BitVector($Dereference($t0)));

    // $t12 := Vector::borrow_mut<bool>($t11, $t1) on_abort goto L3 with $t7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:56:17+55
    call $t12,$t11 := $1_Vector_borrow_mut'bool'($t11, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,1715,1770)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(29,4):", $t7} $t7 == $t7;
        goto L3;
    }

    // trace_local[x]($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:56:13+1
    $temp_0'bool' := $Dereference($t12);
    assume {:print "$track_local(29,4,4):", $temp_0'bool'} $temp_0'bool' == $temp_0'bool';

    // $t13 := true at /home/ying/diem/language/move-stdlib/modules/BitVector.move:57:14+4
    assume {:print "$at(43,1785,1789)"} true;
    $t13 := true;
    assume $IsValid'bool'($t13);

    // write_ref($t12, $t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:57:9+9
    $t12 := $UpdateMutation($t12, $t13);

    // write_back[Reference($t11)[]]($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:57:9+9
    $t11 := $UpdateMutation($t11, UpdateVec($Dereference($t11), ReadVec(p#$Mutation($t12), LenVec(p#$Mutation($t11))), $Dereference($t12)));

    // write_back[Reference($t0).bit_field]($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:57:9+9
    $t0 := $UpdateMutation($t0, $Update'$1_BitVector_BitVector'_bit_field($Dereference($t0), $Dereference($t11)));

    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:57:18+1
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,4,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:58:5+1
    assume {:print "$at(43,1795,1796)"} true;
L2:

    // return () at /home/ying/diem/language/move-stdlib/modules/BitVector.move:58:5+1
    $ret0 := $t0;
    return;

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:58:5+1
L3:

    // abort($t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:58:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun BitVector::is_index_set [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:116:5+233
procedure {:inline 1} $1_BitVector_is_index_set(_$t0: $1_BitVector_BitVector, _$t1: int) returns ($ret0: bool)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: Vec (bool);
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: Vec (bool);
    var $t11: bool;
    var $t0: $1_BitVector_BitVector;
    var $t1: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:116:5+1
    assume {:print "$at(43,3773,3774)"} true;
    assume {:print "$track_local(29,0,0):", $t0} $t0 == $t0;

    // trace_local[bit_index]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:116:5+1
    assume {:print "$track_local(29,0,1):", $t1} $t1 == $t1;

    // $t4 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:43+20
    assume {:print "$at(43,3886,3906)"} true;
    $t4 := $bit_field#$1_BitVector_BitVector($t0);

    // $t5 := Vector::length<bool>($t4) on_abort goto L3 with $t6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:28+36
    call $t5 := $1_Vector_length'bool'($t4);
    if ($abort_flag) {
        assume {:print "$at(43,3871,3907)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(29,0):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t7 := <($t1, $t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:26+1
    call $t7 := $Lt($t1, $t5);

    // $t8 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:91+6
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := opaque begin: Errors::invalid_argument($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:66+32

    // assume WellFormed($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:66+32
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:66+32
    assume $IsEqual'u64'($t9, 7);

    // $t9 := opaque end: Errors::invalid_argument($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:66+32

    // trace_local[tmp#$3]($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    assume {:print "$track_local(29,0,3):", $t9} $t9 == $t9;

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    assume {:print "$track_local(29,0,2):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
L1:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90

    // trace_abort($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    assume {:print "$at(43,3852,3942)"} true;
    assume {:print "$track_abort(29,0):", $t9} $t9 == $t9;

    // $t6 := move($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    $t6 := $t9;

    // goto L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    goto L3;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:118:26+9
    assume {:print "$at(43,3969,3978)"} true;
L0:

    // $t10 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:118:25+20
    $t10 := $bit_field#$1_BitVector_BitVector($t0);

    // $t11 := Vector::borrow<bool>($t10, $t1) on_abort goto L3 with $t6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:118:10+47
    call $t11 := $1_Vector_borrow'bool'($t10, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,3953,4000)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(29,0):", $t6} $t6 == $t6;
        goto L3;
    }

    // trace_return[0]($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:118:9+48
    assume {:print "$track_return(29,0,0):", $t11} $t11 == $t11;

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:119:5+1
    assume {:print "$at(43,4005,4006)"} true;
L2:

    // return $t11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:119:5+1
    $ret0 := $t11;
    return;

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:119:5+1
L3:

    // abort($t6) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:119:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun BitVector::longest_set_sequence_starting_at [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:145:5+476
procedure {:inline 1} $1_BitVector_longest_set_sequence_starting_at(_$t0: $1_BitVector_BitVector, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: bool;
    var $t12: bool;
    var $t13: bool;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t0: $1_BitVector_BitVector;
    var $t1: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:145:5+1
    assume {:print "$at(43,4895,4896)"} true;
    assume {:print "$track_local(29,2,0):", $t0} $t0 == $t0;

    // trace_local[start_index]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:145:5+1
    assume {:print "$track_local(29,2,1):", $t1} $t1 == $t1;

    // $t5 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:30+16
    assume {:print "$at(43,5016,5032)"} true;
    $t5 := $length#$1_BitVector_BitVector($t0);

    // $t6 := <($t1, $t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:28+1
    call $t6 := $Lt($t1, $t5);

    // $t7 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:73+6
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := opaque begin: Errors::invalid_argument($t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:48+32

    // assume WellFormed($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:48+32
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:48+32
    assume $IsEqual'u64'($t8, 7);

    // $t8 := opaque end: Errors::invalid_argument($t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:48+32

    // trace_local[tmp#$3]($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    assume {:print "$track_local(29,2,3):", $t8} $t8 == $t8;

    // trace_local[tmp#$2]($t6) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    assume {:print "$track_local(29,2,2):", $t6} $t6 == $t6;

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
L1:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72

    // trace_abort($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    assume {:print "$at(43,4995,5067)"} true;
    assume {:print "$track_abort(29,2):", $t8} $t8 == $t8;

    // $t9 := move($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    $t9 := $t8;

    // goto L11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    goto L11;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:147:21+11
    assume {:print "$at(43,5089,5100)"} true;
L0:

    // trace_local[index]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:147:13+5
    assume {:print "$track_local(29,2,4):", $t1} $t1 == $t1;

    // label L8 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    assume {:print "$at(43,5211,5216)"} true;
L8:

    // havoc[val]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t10;
    assume $IsValid'u64'($t10);

    // havoc[val]($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t11;
    assume $IsValid'bool'($t11);

    // havoc[val]($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t12;
    assume $IsValid'bool'($t12);

    // havoc[val]($t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t13;
    assume $IsValid'bool'($t13);

    // havoc[val]($t14) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t14;
    assume $IsValid'u64'($t14);

    // havoc[val]($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t15;
    assume $IsValid'u64'($t15);

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    assume !$abort_flag;

    // $t10 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:24+16
    $t10 := $length#$1_BitVector_BitVector($t0);

    // $t11 := <($t1, $t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:22+1
    call $t11 := $Lt($t1, $t10);

    // if ($t11) goto L2 else goto L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:9+131
    if ($t11) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:9+131
L3:

    // goto L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:9+131
    goto L4;

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:31+9
    assume {:print "$at(43,5269,5278)"} true;
L2:

    // $t12 := BitVector::is_index_set($t0, $t1) on_abort goto L11 with $t9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:18+30
    call $t12 := $1_BitVector_is_index_set($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,5256,5286)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(29,2):", $t9} $t9 == $t9;
        goto L11;
    }

    // $t13 := !($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:17+1
    call $t13 := $Not($t12);

    // if ($t13) goto L5 else goto L6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:13+42
    if ($t13) { goto L5; } else { goto L6; }

    // label L6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:13+42
L6:

    // goto L7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:13+42
    goto L7;

    // label L5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:50+5
L5:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:50+5

    // goto L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:50+5
    goto L4;

    // label L7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:152:21+5
    assume {:print "$at(43,5315,5320)"} true;
L7:

    // $t14 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:152:29+1
    $t14 := 1;
    assume $IsValid'u64'($t14);

    // $t15 := +($t1, $t14) on_abort goto L11 with $t9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:152:27+1
    call $t15 := $AddU64($t1, $t14);
    if ($abort_flag) {
        assume {:print "$at(43,5321,5322)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(29,2):", $t9} $t9 == $t9;
        goto L11;
    }

    // trace_local[index]($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:152:13+5
    assume {:print "$track_local(29,2,4):", $t15} $t15 == $t15;

    // goto L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:152:30+1
    goto L9;

    // label L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:9+5
    assume {:print "$at(43,5346,5351)"} true;
L4:

    // $t16 := -($t1, $t1) on_abort goto L11 with $t9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:15+1
    call $t16 := $Sub($t1, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,5352,5353)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(29,2):", $t9} $t9 == $t9;
        goto L11;
    }

    // trace_return[0]($t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:9+19
    assume {:print "$track_return(29,2,0):", $t16} $t16 == $t16;

    // goto L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:9+19
    goto L10;

    // label L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:9+5
    // Loop invariant checking block for the loop started with header: L8
L9:

    // stop() at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:9+5
    assume false;
    return;

    // label L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:156:5+1
    assume {:print "$at(43,5370,5371)"} true;
L10:

    // return $t16 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:156:5+1
    $ret0 := $t16;
    return;

    // label L11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:156:5+1
L11:

    // abort($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:156:5+1
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// fun BitVector::new [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:19:5+687
procedure {:inline 1} $1_BitVector_new(_$t0: int) returns ($ret0: $1_BitVector_BitVector)
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: Vec (bool);
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: bool;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: bool;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: $Mutation (Vec (bool));
    var $t22: Vec (bool);
    var $t23: $1_BitVector_BitVector;
    var $t0: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'bool'': Vec (bool);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t21));

    // bytecode translation starts here
    // trace_local[length]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:19:5+1
    assume {:print "$at(43,432,433)"} true;
    assume {:print "$track_local(29,3,0):", $t0} $t0 == $t0;

    // $t7 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:25+1
    assume {:print "$at(43,497,498)"} true;
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := >($t0, $t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:23+1
    call $t8 := $Gt($t0, $t7);

    // $t9 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:53+7
    $t9 := 1;
    assume $IsValid'u64'($t9);

    // $t10 := opaque begin: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:28+33

    // assume WellFormed($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:28+33
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:28+33
    assume $IsEqual'u64'($t10, 7);

    // $t10 := opaque end: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:28+33

    // trace_local[tmp#$2]($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    assume {:print "$track_local(29,3,2):", $t10} $t10 == $t10;

    // trace_local[tmp#$1]($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    assume {:print "$track_local(29,3,1):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    if ($t8) { goto L0; } else { goto L11; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
L1:

    // trace_abort($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    assume {:print "$at(43,481,534)"} true;
    assume {:print "$track_abort(29,3):", $t10} $t10 == $t10;

    // $t11 := move($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    $t11 := $t10;

    // goto L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    goto L10;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:16+6
    assume {:print "$at(43,551,557)"} true;
L0:

    // $t12 := 1024 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:25+8
    $t12 := 1024;
    assume $IsValid'u64'($t12);

    // $t13 := <($t0, $t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:23+1
    call $t13 := $Lt($t0, $t12);

    // $t14 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:60+7
    $t14 := 1;
    assume $IsValid'u64'($t14);

    // $t15 := opaque begin: Errors::invalid_argument($t14) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:35+33

    // assume WellFormed($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:35+33
    assume $IsValid'u64'($t15);

    // assume Eq<u64>($t15, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:35+33
    assume $IsEqual'u64'($t15, 7);

    // $t15 := opaque end: Errors::invalid_argument($t14) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:35+33

    // trace_local[tmp#$4]($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    assume {:print "$track_local(29,3,4):", $t15} $t15 == $t15;

    // trace_local[tmp#$3]($t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    assume {:print "$track_local(29,3,3):", $t13} $t13 == $t13;

    // if ($t13) goto L2 else goto L12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    if ($t13) { goto L2; } else { goto L12; }

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
L3:

    // trace_abort($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    assume {:print "$at(43,544,604)"} true;
    assume {:print "$track_abort(29,3):", $t15} $t15 == $t15;

    // $t11 := move($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    $t11 := $t15;

    // goto L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    goto L10;

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:22:23+1
    assume {:print "$at(43,628,629)"} true;
L2:

    // $t16 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:22:23+1
    $t16 := 0;
    assume $IsValid'u64'($t16);

    // trace_local[counter]($t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:22:13+7
    assume {:print "$track_local(29,3,6):", $t16} $t16 == $t16;

    // $t5 := Vector::empty<bool>() on_abort goto L10 with $t11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:23:25+15
    assume {:print "$at(43,655,670)"} true;
    call $t5 := $1_Vector_empty'bool'();
    if ($abort_flag) {
        assume {:print "$at(43,655,670)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(29,3):", $t11} $t11 == $t11;
        goto L10;
    }

    // trace_local[bit_field]($t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:23:13+9
    assume {:print "$track_local(29,3,5):", $t5} $t5 == $t5;

    // label L7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:24:17+106
    assume {:print "$at(43,688,794)"} true;
L7:

    // assert Le($t16, $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:25:13+28
    assume {:print "$at(43,707,735)"} true;
    assert {:msg "assert_failed(43,707,735): base case of the loop invariant does not hold"}
      ($t16 <= $t0);

    // assert Eq<num>(Len<bool>($t5), $t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    assume {:print "$at(43,748,784)"} true;
    assert {:msg "assert_failed(43,748,784): base case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($t5), $t16);

    // havoc[val]($t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t5;
    assume $IsValid'vec'bool''($t5);

    // havoc[val]($t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[val]($t17) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t17;
    assume $IsValid'bool'($t17);

    // havoc[val]($t18) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t18;
    assume $IsValid'bool'($t18);

    // havoc[val]($t19) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t19;
    assume $IsValid'u64'($t19);

    // havoc[val]($t20) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t20;
    assume $IsValid'u64'($t20);

    // havoc[mut_all]($t21) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t21;
    assume $IsValid'vec'bool''($Dereference($t21));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    assume !$abort_flag;

    // assume Le($t16, $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:25:13+28
    assume {:print "$at(43,707,735)"} true;
    assume ($t16 <= $t0);

    // assume Eq<num>(Len<bool>($t5), $t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    assume {:print "$at(43,748,784)"} true;
    assume $IsEqual'num'(LenVec($t5), $t16);

    // $t17 := <($t16, $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:28:22+1
    assume {:print "$at(43,817,818)"} true;
    call $t17 := $Lt($t16, $t0);

    // if ($t17) goto L4 else goto L5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:24:9+249
    assume {:print "$at(43,680,929)"} true;
    if ($t17) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:24:9+249
L5:

    // goto L6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:24:9+249
    goto L6;

    // label L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:29:31+14
    assume {:print "$at(43,861,875)"} true;
L4:

    // $t21 := borrow_local($t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:29:31+14
    $t21 := $Mutation($Local(5), EmptyVec(), $t5);

    // $t18 := false at /home/ying/diem/language/move-stdlib/modules/BitVector.move:29:47+5
    $t18 := false;
    assume $IsValid'bool'($t18);

    // Vector::push_back<bool>($t21, $t18) on_abort goto L10 with $t11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:29:13+40
    call $t21 := $1_Vector_push_back'bool'($t21, $t18);
    if ($abort_flag) {
        assume {:print "$at(43,843,883)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(29,3):", $t11} $t11 == $t11;
        goto L10;
    }

    // write_back[LocalRoot($t5)@]($t21) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:29:13+40
    $t5 := $Dereference($t21);

    // $t19 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:30:33+1
    assume {:print "$at(43,917,918)"} true;
    $t19 := 1;
    assume $IsValid'u64'($t19);

    // $t20 := +($t16, $t19) on_abort goto L10 with $t11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:30:31+1
    call $t20 := $AddU64($t16, $t19);
    if ($abort_flag) {
        assume {:print "$at(43,915,916)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(29,3):", $t11} $t11 == $t11;
        goto L10;
    }

    // trace_local[counter]($t20) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:30:13+7
    assume {:print "$track_local(29,3,6):", $t20} $t20 == $t20;

    // goto L8 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:30:34+1
    goto L8;

    // label L6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:32:9+99
    assume {:print "$at(43,939,1038)"} true;
L6:

    // assert Eq<u64>($t16, $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:33:13+25
    assume {:print "$at(43,958,983)"} true;
    assert {:msg "assert_failed(43,958,983): unknown assertion failed"}
      $IsEqual'u64'($t16, $t0);

    // assert Eq<num>(Len<bool>($t5), $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:34:13+32
    assume {:print "$at(43,996,1028)"} true;
    assert {:msg "assert_failed(43,996,1028): unknown assertion failed"}
      $IsEqual'num'(LenVec($t5), $t0);

    // $t22 := move($t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:39:13+9
    assume {:print "$at(43,1093,1102)"} true;
    $t22 := $t5;

    // $t23 := pack BitVector::BitVector($t0, $t22) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:37:9+64
    assume {:print "$at(43,1049,1113)"} true;
    $t23 := $1_BitVector_BitVector($t0, $t22);

    // trace_return[0]($t23) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:37:9+64
    assume {:print "$track_return(29,3,0):", $t23} $t23 == $t23;

    // goto L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:37:9+64
    goto L9;

    // label L8 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:32:9+99
    // Loop invariant checking block for the loop started with header: L7
    assume {:print "$at(43,939,1038)"} true;
L8:

    // assert Le($t20, $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:25:13+28
    assume {:print "$at(43,707,735)"} true;
    assert {:msg "assert_failed(43,707,735): induction case of the loop invariant does not hold"}
      ($t20 <= $t0);

    // assert Eq<num>(Len<bool>($t5), $t20) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    assume {:print "$at(43,748,784)"} true;
    assert {:msg "assert_failed(43,748,784): induction case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($t5), $t20);

    // stop() at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    assume false;
    return;

    // label L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:41:5+1
    assume {:print "$at(43,1118,1119)"} true;
L9:

    // return $t23 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:41:5+1
    $ret0 := $t23;
    return;

    // label L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:41:5+1
L10:

    // abort($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:41:5+1
    $abort_code := $t11;
    $abort_flag := true;
    return;

    // label L11 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L11:

    // destroy($t21) at <internal>:1:1+10

    // goto L1 at <internal>:1:1+10
    goto L1;

    // label L12 at <internal>:1:1+10
L12:

    // destroy($t21) at <internal>:1:1+10

    // goto L3 at <internal>:1:1+10
    goto L3;

}

// fun BitVector::shift_left [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:87:5+800
procedure {:inline 1} $1_BitVector_shift_left(_$t0: $Mutation ($1_BitVector_BitVector), _$t1: int) returns ($ret0: $Mutation ($1_BitVector_BitVector))
{
    // declare local variables
    var $t2: $Mutation ($1_BitVector_BitVector);
    var $t3: int;
    var $t4: $Mutation (bool);
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: Vec (bool);
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: bool;
    var $t15: bool;
    var $t16: int;
    var $t17: int;
    var $t18: $Mutation (Vec (bool));
    var $t19: $Mutation (bool);
    var $t20: int;
    var $t21: bool;
    var $t22: $1_BitVector_BitVector;
    var $t23: bool;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t27: int;
    var $t28: int;
    var $t29: int;
    var $t30: int;
    var $t31: bool;
    var $t32: int;
    var $t33: int;
    var $t0: $Mutation ($1_BitVector_BitVector);
    var $t1: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t18));
    assume IsEmptyVec(p#$Mutation($t19));

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:87:5+1
    assume {:print "$at(43,2839,2840)"} true;
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,5,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // trace_local[amount]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:87:5+1
    assume {:print "$track_local(29,5,1):", $t1} $t1 == $t1;

    // $t8 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:23+16
    assume {:print "$at(43,2925,2941)"} true;
    $t8 := $length#$1_BitVector_BitVector($Dereference($t0));

    // $t9 := >=($t1, $t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:20+2
    call $t9 := $Ge($t1, $t8);

    // if ($t9) goto L0 else goto L25 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    if ($t9) { goto L0; } else { goto L25; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
L1:

    // goto L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    goto L2;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:89:38+9
    assume {:print "$at(43,2982,2991)"} true;
L0:

    // $t10 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:89:37+20
    $t10 := $bit_field#$1_BitVector_BitVector($Dereference($t0));

    // $t11 := Vector::length<bool>($t10) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:89:22+36
    call $t11 := $1_Vector_length'bool'($t10);
    if ($abort_flag) {
        assume {:print "$at(43,2966,3002)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[len]($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:89:16+3
    assume {:print "$track_local(29,5,7):", $t11} $t11 == $t11;

    // $t13 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:90:20+1
    assume {:print "$at(43,3023,3024)"} true;
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // trace_local[i]($t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:90:16+1
    assume {:print "$track_local(29,5,5):", $t13} $t13 == $t13;

    // label L6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    assume {:print "$at(43,3044,3045)"} true;
L6:

    // havoc[val]($t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t13;
    assume $IsValid'u64'($t13);

    // havoc[val]($t14) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t14;
    assume $IsValid'bool'($t14);

    // havoc[val]($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t15;
    assume $IsValid'bool'($t15);

    // havoc[val]($t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[val]($t17) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t17;
    assume $IsValid'u64'($t17);

    // havoc[mut]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $temp_0'$1_BitVector_BitVector';
    $t0 := $UpdateMutation($t0, $temp_0'$1_BitVector_BitVector');
    assume $IsValid'$1_BitVector_BitVector'($Dereference($t0));

    // havoc[mut_all]($t18) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t18;
    assume $IsValid'vec'bool''($Dereference($t18));

    // havoc[mut_all]($t19) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t19;
    assume $IsValid'bool'($Dereference($t19));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    assume !$abort_flag;

    // $t14 := <($t13, $t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:21+1
    call $t14 := $Lt($t13, $t11);

    // if ($t14) goto L3 else goto L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:12+161
    if ($t14) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:12+161
L4:

    // goto L5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:12+161
    goto L5;

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:92:51+9
    assume {:print "$at(43,3105,3114)"} true;
L3:

    // $t18 := borrow_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:92:46+24
    $t18 := $ChildMutation($t0, 1, $bit_field#$1_BitVector_BitVector($Dereference($t0)));

    // $t19 := Vector::borrow_mut<bool>($t18, $t13) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:92:27+47
    call $t19,$t18 := $1_Vector_borrow_mut'bool'($t18, $t13);
    if ($abort_flag) {
        assume {:print "$at(43,3081,3128)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[elem]($t19) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:92:20+4
    $temp_0'bool' := $Dereference($t19);
    assume {:print "$track_local(29,5,4):", $temp_0'bool'} $temp_0'bool' == $temp_0'bool';

    // $t15 := false at /home/ying/diem/language/move-stdlib/modules/BitVector.move:93:24+5
    assume {:print "$at(43,3153,3158)"} true;
    $t15 := false;
    assume $IsValid'bool'($t15);

    // write_ref($t19, $t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:93:16+13
    $t19 := $UpdateMutation($t19, $t15);

    // write_back[Reference($t18)[]]($t19) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:93:16+13
    $t18 := $UpdateMutation($t18, UpdateVec($Dereference($t18), ReadVec(p#$Mutation($t19), LenVec(p#$Mutation($t18))), $Dereference($t19)));

    // write_back[Reference($t0).bit_field]($t18) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:93:16+13
    $t0 := $UpdateMutation($t0, $Update'$1_BitVector_BitVector'_bit_field($Dereference($t0), $Dereference($t18)));

    // $t16 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:94:24+1
    assume {:print "$at(43,3183,3184)"} true;
    $t16 := 1;
    assume $IsValid'u64'($t16);

    // $t17 := +($t13, $t16) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:94:22+1
    call $t17 := $AddU64($t13, $t16);
    if ($abort_flag) {
        assume {:print "$at(43,3181,3182)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[i]($t17) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:94:16+1
    assume {:print "$track_local(29,5,5):", $t17} $t17 == $t17;

    // goto L20 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:94:25+1
    goto L20;

    // label L5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    assume {:print "$at(43,2911,3633)"} true;
L5:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722

    // goto L7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    goto L7;

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:97:21+6
    assume {:print "$at(43,3237,3243)"} true;
L2:

    // trace_local[i#1]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:97:17+1
    assume {:print "$track_local(29,5,6):", $t1} $t1 == $t1;

    // label L15 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    assume {:print "$at(43,3265,3266)"} true;
L15:

    // havoc[val]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t20) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t20;
    assume $IsValid'u64'($t20);

    // havoc[val]($t21) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t21;
    assume $IsValid'bool'($t21);

    // havoc[val]($t22) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t22;
    assume $IsValid'$1_BitVector_BitVector'($t22);

    // havoc[val]($t23) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t23;
    assume $IsValid'bool'($t23);

    // havoc[val]($t24) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t24;
    assume $IsValid'u64'($t24);

    // havoc[val]($t25) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t25;
    assume $IsValid'u64'($t25);

    // havoc[val]($t26) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t26;
    assume $IsValid'u64'($t26);

    // havoc[val]($t27) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t27;
    assume $IsValid'u64'($t27);

    // havoc[mut]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $temp_0'$1_BitVector_BitVector';
    $t0 := $UpdateMutation($t0, $temp_0'$1_BitVector_BitVector');
    assume $IsValid'$1_BitVector_BitVector'($Dereference($t0));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    assume !$abort_flag;

    // $t20 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:24+16
    $t20 := $length#$1_BitVector_BitVector($Dereference($t0));

    // $t21 := <($t1, $t20) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:22+1
    call $t21 := $Lt($t1, $t20);

    // if ($t21) goto L8 else goto L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:13+197
    if ($t21) { goto L8; } else { goto L9; }

    // label L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:13+197
L9:

    // goto L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:13+197
    goto L10;

    // label L8 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:34+9
    assume {:print "$at(43,3322,3331)"} true;
L8:

    // trace_local[tmp#$3]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:33+14
    assume {:print "$track_local(29,5,3):", $t1} $t1 == $t1;

    // trace_local[tmp#$2]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:33+14
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,5,2):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // $t22 := read_ref($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:33+14
    $t22 := $Dereference($t0);

    // $t23 := BitVector::is_index_set($t22, $t1) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:21+26
    call $t23 := $1_BitVector_is_index_set($t22, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,3309,3335)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // if ($t23) goto L11 else goto L12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:17+108
    if ($t23) { goto L11; } else { goto L12; }

    // label L12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:17+108
L12:

    // goto L13 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:17+108
    goto L13;

    // label L11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:53+9
L11:

    // $t24 := -($t1, $t1) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:66+1
    call $t24 := $Sub($t1, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,3354,3355)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // BitVector::set($t0, $t24) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:49+26
    call $t0 := $1_BitVector_set($t0, $t24);
    if ($abort_flag) {
        assume {:print "$at(43,3337,3363)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // goto L14 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:49+26
    goto L14;

    // label L13 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:101:28+9
    assume {:print "$at(43,3391,3400)"} true;
L13:

    // $t25 := -($t1, $t1) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:101:41+1
    call $t25 := $Sub($t1, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,3404,3405)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // BitVector::unset($t0, $t25) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:101:22+28
    call $t0 := $1_BitVector_unset($t0, $t25);
    if ($abort_flag) {
        assume {:print "$at(43,3385,3413)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // label L14 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:102:21+1
    assume {:print "$at(43,3435,3436)"} true;
L14:

    // $t26 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:102:25+1
    $t26 := 1;
    assume $IsValid'u64'($t26);

    // $t27 := +($t1, $t26) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:102:23+1
    call $t27 := $AddU64($t1, $t26);
    if ($abort_flag) {
        assume {:print "$at(43,3437,3438)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[i#1]($t27) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:102:17+1
    assume {:print "$track_local(29,5,6):", $t27} $t27 == $t27;

    // goto L21 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:102:26+1
    goto L21;

    // label L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:105:17+9
    assume {:print "$at(43,3474,3483)"} true;
L10:

    // $t28 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:105:17+16
    $t28 := $length#$1_BitVector_BitVector($Dereference($t0));

    // $t29 := -($t28, $t1) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:105:34+1
    call $t29 := $Sub($t28, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,3491,3492)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[i#1]($t29) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:105:13+1
    assume {:print "$track_local(29,5,6):", $t29} $t29 == $t29;

    // label L19 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    assume {:print "$at(43,3521,3522)"} true;
L19:

    // havoc[val]($t29) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $t29;
    assume $IsValid'u64'($t29);

    // havoc[val]($t30) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $t30;
    assume $IsValid'u64'($t30);

    // havoc[val]($t31) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $t31;
    assume $IsValid'bool'($t31);

    // havoc[val]($t32) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $t32;
    assume $IsValid'u64'($t32);

    // havoc[val]($t33) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $t33;
    assume $IsValid'u64'($t33);

    // havoc[mut]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $temp_0'$1_BitVector_BitVector';
    $t0 := $UpdateMutation($t0, $temp_0'$1_BitVector_BitVector');
    assume $IsValid'$1_BitVector_BitVector'($Dereference($t0));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    assume !$abort_flag;

    // $t30 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:24+16
    $t30 := $length#$1_BitVector_BitVector($Dereference($t0));

    // $t31 := <($t29, $t30) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:22+1
    call $t31 := $Lt($t29, $t30);

    // if ($t31) goto L16 else goto L17 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:13+108
    if ($t31) { goto L16; } else { goto L17; }

    // label L17 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:13+108
L17:

    // goto L18 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:13+108
    goto L18;

    // label L16 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:108:23+9
    assume {:print "$at(43,3567,3576)"} true;
L16:

    // BitVector::unset($t0, $t29) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:108:17+19
    call $t0 := $1_BitVector_unset($t0, $t29);
    if ($abort_flag) {
        assume {:print "$at(43,3561,3580)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // $t32 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:109:25+1
    assume {:print "$at(43,3606,3607)"} true;
    $t32 := 1;
    assume $IsValid'u64'($t32);

    // $t33 := +($t29, $t32) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:109:23+1
    call $t33 := $AddU64($t29, $t32);
    if ($abort_flag) {
        assume {:print "$at(43,3604,3605)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[i#1]($t33) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:109:17+1
    assume {:print "$track_local(29,5,6):", $t33} $t33 == $t33;

    // goto L22 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:109:26+1
    goto L22;

    // label L18 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    assume {:print "$at(43,2911,3633)"} true;
L18:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722

    // label L7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
L7:

    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,5,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // goto L23 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    goto L23;

    // label L20 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    // Loop invariant checking block for the loop started with header: L6
L20:

    // stop() at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    assume false;
    return;

    // label L21 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    // Loop invariant checking block for the loop started with header: L15
L21:

    // stop() at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    assume false;
    return;

    // label L22 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    // Loop invariant checking block for the loop started with header: L19
L22:

    // stop() at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    assume false;
    return;

    // label L23 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:112:5+1
    assume {:print "$at(43,3638,3639)"} true;
L23:

    // return () at /home/ying/diem/language/move-stdlib/modules/BitVector.move:112:5+1
    $ret0 := $t0;
    return;

    // label L24 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:112:5+1
L24:

    // abort($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:112:5+1
    $abort_code := $t12;
    $abort_flag := true;
    return;

    // label L25 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L25:

    // destroy($t18) at <internal>:1:1+10

    // destroy($t19) at <internal>:1:1+10

    // goto L1 at <internal>:1:1+10
    goto L1;

}

// fun BitVector::unset [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:70:5+260
procedure {:inline 1} $1_BitVector_unset(_$t0: $Mutation ($1_BitVector_BitVector), _$t1: int) returns ($ret0: $Mutation ($1_BitVector_BitVector))
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $Mutation (bool);
    var $t5: Vec (bool);
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: $Mutation (Vec (bool));
    var $t12: $Mutation (bool);
    var $t13: bool;
    var $t0: $Mutation ($1_BitVector_BitVector);
    var $t1: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t11));
    assume IsEmptyVec(p#$Mutation($t12));

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:70:5+1
    assume {:print "$at(43,2160,2161)"} true;
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,6,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // trace_local[bit_index]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:70:5+1
    assume {:print "$track_local(29,6,1):", $t1} $t1 == $t1;

    // $t5 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:43+20
    assume {:print "$at(43,2264,2284)"} true;
    $t5 := $bit_field#$1_BitVector_BitVector($Dereference($t0));

    // $t6 := Vector::length<bool>($t5) on_abort goto L3 with $t7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:28+36
    call $t6 := $1_Vector_length'bool'($t5);
    if ($abort_flag) {
        assume {:print "$at(43,2249,2285)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(29,6):", $t7} $t7 == $t7;
        goto L3;
    }

    // $t8 := <($t1, $t6) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:26+1
    call $t8 := $Lt($t1, $t6);

    // $t9 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:91+6
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // $t10 := opaque begin: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:66+32

    // assume WellFormed($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:66+32
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:66+32
    assume $IsEqual'u64'($t10, 7);

    // $t10 := opaque end: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:66+32

    // trace_local[tmp#$3]($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    assume {:print "$track_local(29,6,3):", $t10} $t10 == $t10;

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    assume {:print "$track_local(29,6,2):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
L1:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90

    // trace_abort($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    assume {:print "$at(43,2230,2320)"} true;
    assume {:print "$track_abort(29,6):", $t10} $t10 == $t10;

    // $t7 := move($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    $t7 := $t10;

    // goto L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    goto L3;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:72:41+9
    assume {:print "$at(43,2362,2371)"} true;
L0:

    // $t11 := borrow_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:72:36+24
    $t11 := $ChildMutation($t0, 1, $bit_field#$1_BitVector_BitVector($Dereference($t0)));

    // $t12 := Vector::borrow_mut<bool>($t11, $t1) on_abort goto L3 with $t7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:72:17+55
    call $t12,$t11 := $1_Vector_borrow_mut'bool'($t11, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,2338,2393)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(29,6):", $t7} $t7 == $t7;
        goto L3;
    }

    // trace_local[x]($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:72:13+1
    $temp_0'bool' := $Dereference($t12);
    assume {:print "$track_local(29,6,4):", $temp_0'bool'} $temp_0'bool' == $temp_0'bool';

    // $t13 := false at /home/ying/diem/language/move-stdlib/modules/BitVector.move:73:14+5
    assume {:print "$at(43,2408,2413)"} true;
    $t13 := false;
    assume $IsValid'bool'($t13);

    // write_ref($t12, $t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:73:9+10
    $t12 := $UpdateMutation($t12, $t13);

    // write_back[Reference($t11)[]]($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:73:9+10
    $t11 := $UpdateMutation($t11, UpdateVec($Dereference($t11), ReadVec(p#$Mutation($t12), LenVec(p#$Mutation($t11))), $Dereference($t12)));

    // write_back[Reference($t0).bit_field]($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:73:9+10
    $t0 := $UpdateMutation($t0, $Update'$1_BitVector_BitVector'_bit_field($Dereference($t0), $Dereference($t11)));

    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:73:19+1
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,6,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:74:5+1
    assume {:print "$at(43,2419,2420)"} true;
L2:

    // return () at /home/ying/diem/language/move-stdlib/modules/BitVector.move:74:5+1
    $ret0 := $t0;
    return;

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:74:5+1
L3:

    // abort($t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:74:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/CRSN.move:146:5+75
function {:inline} $1_CRSN_$has_crsn($1_CRSN_CRSN_$memory: $Memory $1_CRSN_CRSN, addr: int): bool {
    $ResourceExists($1_CRSN_CRSN_$memory, addr)
}

// struct CRSN::CRSN at /home/ying/diem/language/diem-framework/modules/CRSN.move:23:5+96
type {:datatype} $1_CRSN_CRSN;
function {:constructor} $1_CRSN_CRSN($min_nonce: int, $size: int, $slots: $1_BitVector_BitVector): $1_CRSN_CRSN;
function {:inline} $Update'$1_CRSN_CRSN'_min_nonce(s: $1_CRSN_CRSN, x: int): $1_CRSN_CRSN {
    $1_CRSN_CRSN(x, $size#$1_CRSN_CRSN(s), $slots#$1_CRSN_CRSN(s))
}
function {:inline} $Update'$1_CRSN_CRSN'_size(s: $1_CRSN_CRSN, x: int): $1_CRSN_CRSN {
    $1_CRSN_CRSN($min_nonce#$1_CRSN_CRSN(s), x, $slots#$1_CRSN_CRSN(s))
}
function {:inline} $Update'$1_CRSN_CRSN'_slots(s: $1_CRSN_CRSN, x: $1_BitVector_BitVector): $1_CRSN_CRSN {
    $1_CRSN_CRSN($min_nonce#$1_CRSN_CRSN(s), $size#$1_CRSN_CRSN(s), x)
}
function $IsValid'$1_CRSN_CRSN'(s: $1_CRSN_CRSN): bool {
    $IsValid'u64'($min_nonce#$1_CRSN_CRSN(s))
      && $IsValid'u64'($size#$1_CRSN_CRSN(s))
      && $IsValid'$1_BitVector_BitVector'($slots#$1_CRSN_CRSN(s))
}
function {:inline} $IsEqual'$1_CRSN_CRSN'(s1: $1_CRSN_CRSN, s2: $1_CRSN_CRSN): bool {
    $IsEqual'u64'($min_nonce#$1_CRSN_CRSN(s1), $min_nonce#$1_CRSN_CRSN(s2))
    && $IsEqual'u64'($size#$1_CRSN_CRSN(s1), $size#$1_CRSN_CRSN(s2))
    && $IsEqual'$1_BitVector_BitVector'($slots#$1_CRSN_CRSN(s1), $slots#$1_CRSN_CRSN(s2))}
var $1_CRSN_CRSN_$memory: $Memory $1_CRSN_CRSN;

// fun CRSN::publish [verification] at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+450
procedure {:timeLimit 40} $1_CRSN_publish$verify(_$t0: $signer, _$t1: int, _$t2: int) returns ()
{
    // declare local variables
    var $t3: bool;
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
    var $t14: int;
    var $t15: int;
    var $t16: bool;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: bool;
    var $t21: int;
    var $t22: int;
    var $t23: $1_BitVector_BitVector;
    var $t24: $1_CRSN_CRSN;
    var $t0: $signer;
    var $t1: int;
    var $t2: int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_CRSN_CRSN_$memory#122: $Memory $1_CRSN_CRSN;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+450
    assume {:print "$at(7,1719,2169)"} true;
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+450
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+450
    assume $IsValid'u64'($t2);

    // assume forall $rsc: ResourceDomain<CRSN::CRSN>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+450
    assume (forall $a_0: int :: {$ResourceValue($1_CRSN_CRSN_$memory, $a_0)}(var $rsc := $ResourceValue($1_CRSN_CRSN_$memory, $a_0);
    ($IsValid'$1_CRSN_CRSN'($rsc))));

    // @122 := save_mem(CRSN::CRSN) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+1
    $1_CRSN_CRSN_$memory#122 := $1_CRSN_CRSN_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+1
    assume {:print "$track_local(30,3,0):", $t0} $t0 == $t0;

    // trace_local[min_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+1
    assume {:print "$track_local(30,3,1):", $t1} $t1 == $t1;

    // trace_local[size]($t2) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+1
    assume {:print "$track_local(30,3,2):", $t2} $t2 == $t2;

    // $t9 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:26+27
    assume {:print "$at(7,1818,1845)"} true;

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:26+27
    assume $IsValid'address'($t9);

    // assume Eq<address>($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:26+27
    assume $IsEqual'address'($t9, $1_Signer_spec_address_of($t0));

    // $t9 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:26+27

    // $t10 := CRSN::has_crsn($t9) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:17+37
    call $t10 := $1_CRSN_has_crsn($t9);
    if ($abort_flag) {
        assume {:print "$at(7,1809,1846)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(30,3):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t12 := !($t10) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:16+1
    call $t12 := $Not($t10);

    // $t13 := 1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:78+9
    $t13 := 1;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::invalid_state($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:56+32

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:56+32
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:56+32
    assume $IsEqual'u64'($t14, 1);

    // $t14 := opaque end: Errors::invalid_state($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:56+32

    // trace_local[tmp#$4]($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    assume {:print "$track_local(30,3,4):", $t14} $t14 == $t14;

    // trace_local[tmp#$3]($t12) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    assume {:print "$track_local(30,3,3):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    assume {:print "$at(7,1801,1881)"} true;
    assume {:print "$track_abort(30,3):", $t14} $t14 == $t14;

    // $t11 := move($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    $t11 := $t14;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:16+4
    assume {:print "$at(7,1898,1902)"} true;
L0:

    // $t15 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:23+1
    $t15 := 0;
    assume $IsValid'u64'($t15);

    // $t16 := >($t2, $t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:21+1
    call $t16 := $Gt($t2, $t15);

    // $t17 := 2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:51+15
    $t17 := 2;
    assume $IsValid'u64'($t17);

    // $t18 := opaque begin: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:26+41

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:26+41
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 7) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:26+41
    assume $IsEqual'u64'($t18, 7);

    // $t18 := opaque end: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:26+41

    // trace_local[tmp#$6]($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    assume {:print "$track_local(30,3,6):", $t18} $t18 == $t18;

    // trace_local[tmp#$5]($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    assume {:print "$track_local(30,3,5):", $t16} $t16 == $t16;

    // if ($t16) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    if ($t16) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    assume {:print "$at(7,1891,1950)"} true;
    assume {:print "$track_abort(30,3):", $t18} $t18 == $t18;

    // $t11 := move($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    $t11 := $t18;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:16+4
    assume {:print "$at(7,1967,1971)"} true;
L2:

    // $t19 := 256 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:24+13
    $t19 := 256;
    assume $IsValid'u64'($t19);

    // $t20 := <=($t2, $t19) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:21+2
    call $t20 := $Le($t2, $t19);

    // $t21 := 3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:64+20
    $t21 := 3;
    assume $IsValid'u64'($t21);

    // $t22 := opaque begin: Errors::invalid_argument($t21) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:39+46

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:39+46
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 7) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:39+46
    assume $IsEqual'u64'($t22, 7);

    // $t22 := opaque end: Errors::invalid_argument($t21) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:39+46

    // trace_local[tmp#$8]($t22) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    assume {:print "$track_local(30,3,8):", $t22} $t22 == $t22;

    // trace_local[tmp#$7]($t20) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    assume {:print "$track_local(30,3,7):", $t20} $t20 == $t20;

    // if ($t20) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    if ($t20) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
L5:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    assume {:print "$at(7,1960,2037)"} true;
    assume {:print "$track_abort(30,3):", $t22} $t22 == $t22;

    // $t11 := move($t22) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    $t11 := $t22;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:48:17+7
    assume {:print "$at(7,2055,2062)"} true;
L4:

    // $t23 := BitVector::new($t2) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/CRSN.move:51:20+20
    assume {:print "$at(7,2131,2151)"} true;
    call $t23 := $1_BitVector_new($t2);
    if ($abort_flag) {
        assume {:print "$at(7,2131,2151)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(30,3):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t24 := pack CRSN::CRSN($t1, $t2, $t23) at /home/ying/diem/language/diem-framework/modules/CRSN.move:48:26+98
    assume {:print "$at(7,2064,2162)"} true;
    $t24 := $1_CRSN_CRSN($t1, $t2, $t23);

    // move_to<CRSN::CRSN>($t24, $t0) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/CRSN.move:48:9+7
    if ($ResourceExists($1_CRSN_CRSN_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_CRSN_CRSN_$memory := $ResourceUpdate($1_CRSN_CRSN_$memory, $1_Signer_spec_address_of($t0), $t24);
    }
    if ($abort_flag) {
        assume {:print "$at(7,2047,2054)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(30,3):", $t11} $t11 == $t11;
        goto L7;
    }

    // label L6 at /home/ying/diem/language/diem-framework/modules/CRSN.move:53:5+1
    assume {:print "$at(7,2168,2169)"} true;
L6:

    // assert Not(Le($t2, 0)) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:49:9+52
    assume {:print "$at(43,1319,1371)"} true;
    assert {:msg "assert_failed(43,1319,1371): function does not abort under this condition"}
      !($t2 <= 0);

    // assert Not(Ge($t2, 1024)) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:50:9+59
    assume {:print "$at(43,1380,1439)"} true;
    assert {:msg "assert_failed(43,1380,1439): function does not abort under this condition"}
      !($t2 >= 1024);

    // assert Not(CRSN::$has_crsn[@122](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:56:9+80
    assume {:print "$at(7,2251,2331)"} true;
    assert {:msg "assert_failed(7,2251,2331): function does not abort under this condition"}
      !$1_CRSN_$has_crsn($1_CRSN_CRSN_$memory#122, $1_Signer_spec_address_of($t0));

    // assert Not(Eq<u64>($t2, 0)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:57:9+50
    assume {:print "$at(7,2340,2390)"} true;
    assert {:msg "assert_failed(7,2340,2390): function does not abort under this condition"}
      !$IsEqual'u64'($t2, 0);

    // assert Not(Gt($t2, 256)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:58:9+61
    assume {:print "$at(7,2399,2460)"} true;
    assert {:msg "assert_failed(7,2399,2460): function does not abort under this condition"}
      !($t2 > 256);

    // assert exists<CRSN::CRSN>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:59:9+55
    assume {:print "$at(7,2469,2524)"} true;
    assert {:msg "assert_failed(7,2469,2524): post-condition does not hold"}
      $ResourceExists($1_CRSN_CRSN_$memory, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/diem-framework/modules/CRSN.move:59:9+55
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:53:5+1
    assume {:print "$at(7,2168,2169)"} true;
L7:

    // assert Or(Or(Or(Or(Le($t2, 0), Ge($t2, 1024)), CRSN::$has_crsn[@122](Signer::spec_address_of[]($t0))), Eq<u64>($t2, 0)), Gt($t2, 256)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:54:5+356
    assume {:print "$at(7,2174,2530)"} true;
    assert {:msg "assert_failed(7,2174,2530): abort not covered by any of the `aborts_if` clauses"}
      ((((($t2 <= 0) || ($t2 >= 1024)) || $1_CRSN_$has_crsn($1_CRSN_CRSN_$memory#122, $1_Signer_spec_address_of($t0))) || $IsEqual'u64'($t2, 0)) || ($t2 > 256));

    // assert Or(Or(Or(Or(And(Le($t2, 0), Eq(7, $t11)), And(Ge($t2, 1024), Eq(7, $t11))), And(CRSN::$has_crsn[@122](Signer::spec_address_of[]($t0)), Eq(1, $t11))), And(Eq<u64>($t2, 0), Eq(7, $t11))), And(Gt($t2, 256), Eq(7, $t11))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:54:5+356
    assert {:msg "assert_failed(7,2174,2530): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((($t2 <= 0) && $IsEqual'num'(7, $t11)) || (($t2 >= 1024) && $IsEqual'num'(7, $t11))) || ($1_CRSN_$has_crsn($1_CRSN_CRSN_$memory#122, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(1, $t11))) || ($IsEqual'u64'($t2, 0) && $IsEqual'num'(7, $t11))) || (($t2 > 256) && $IsEqual'num'(7, $t11)));

    // abort($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:54:5+356
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

// fun CRSN::check [baseline] at /home/ying/diem/language/diem-framework/modules/CRSN.move:85:5+761
procedure {:inline 1} $1_CRSN_check(_$t0: $signer, _$t1: int) returns ($ret0: bool)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: bool;
    var $t6: int;
    var $t7: $Mutation ($1_CRSN_CRSN);
    var $t8: int;
    var $t9: $1_CRSN_CRSN;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: $Mutation ($1_CRSN_CRSN);
    var $t17: int;
    var $t18: bool;
    var $t19: bool;
    var $t20: int;
    var $t21: int;
    var $t22: int;
    var $t23: $1_BitVector_BitVector;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t27: bool;
    var $t28: bool;
    var $t29: int;
    var $t30: int;
    var $t31: $1_BitVector_BitVector;
    var $t32: bool;
    var $t33: bool;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'$1_CRSN_CRSN': $1_CRSN_CRSN;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t16));

    // bytecode translation starts here
    // assume Identical($t9, global<CRSN::CRSN>(Signer::spec_address_of($t0))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:109:9+30
    assume {:print "$at(7,4499,4529)"} true;
    assume ($t9 == $ResourceValue($1_CRSN_CRSN_$memory, $1_Signer_spec_address_of($t0)));

    // assume Identical($t10, Sub($t1, select CRSN::CRSN.min_nonce($t9))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:110:9+51
    assume {:print "$at(7,4538,4589)"} true;
    assume ($t10 == ($t1 - $min_nonce#$1_CRSN_CRSN($t9)));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:85:5+1
    assume {:print "$at(7,3551,3552)"} true;
    assume {:print "$track_local(30,0,0):", $t0} $t0 == $t0;

    // trace_local[sequence_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:85:5+1
    assume {:print "$track_local(30,0,1):", $t1} $t1 == $t1;

    // $t11 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:87:20+27
    assume {:print "$at(7,3660,3687)"} true;

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:87:20+27
    assume $IsValid'address'($t11);

    // assume Eq<address>($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:87:20+27
    assume $IsEqual'address'($t11, $1_Signer_spec_address_of($t0));

    // $t11 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:87:20+27

    // trace_local[addr]($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:87:13+4
    assume {:print "$track_local(30,0,6):", $t11} $t11 == $t11;

    // $t12 := CRSN::has_crsn($t11) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:16+14
    assume {:print "$at(7,3704,3718)"} true;
    call $t12 := $1_CRSN_has_crsn($t11);
    if ($abort_flag) {
        assume {:print "$at(7,3704,3718)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t14 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:54+8
    $t14 := 0;
    assume $IsValid'u64'($t14);

    // $t15 := opaque begin: Errors::invalid_state($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:32+31

    // assume WellFormed($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:32+31
    assume $IsValid'u64'($t15);

    // assume Eq<u64>($t15, 1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:32+31
    assume $IsEqual'u64'($t15, 1);

    // $t15 := opaque end: Errors::invalid_state($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:32+31

    // trace_local[tmp#$3]($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    assume {:print "$track_local(30,0,3):", $t15} $t15 == $t15;

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    assume {:print "$track_local(30,0,2):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
L1:

    // trace_abort($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    assume {:print "$at(7,3697,3752)"} true;
    assume {:print "$track_abort(30,0):", $t15} $t15 == $t15;

    // $t13 := move($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    $t13 := $t15;

    // goto L11 at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    goto L11;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:89:44+4
    assume {:print "$at(7,3797,3801)"} true;
L0:

    // $t16 := borrow_global<CRSN::CRSN>($t11) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:89:20+17
    if (!$ResourceExists($1_CRSN_CRSN_$memory, $t11)) {
        call $ExecFailureAbort();
    } else {
        $t16 := $Mutation($Global($t11), EmptyVec(), $ResourceValue($1_CRSN_CRSN_$memory, $t11));
    }
    if ($abort_flag) {
        assume {:print "$at(7,3773,3790)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // trace_local[crsn]($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:89:13+4
    $temp_0'$1_CRSN_CRSN' := $Dereference($t16);
    assume {:print "$track_local(30,0,7):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // $t17 := get_field<CRSN::CRSN>.min_nonce($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:31+14
    assume {:print "$at(7,3889,3903)"} true;
    $t17 := $min_nonce#$1_CRSN_CRSN($Dereference($t16));

    // $t18 := <($t1, $t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:29+1
    call $t18 := $Lt($t1, $t17);

    // if ($t18) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    if ($t18) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
L3:

    // goto L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
L2:

    // $t19 := true at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    $t19 := true;
    assume $IsValid'bool'($t19);

    // $t4 := $t19 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    $t4 := $t19;

    // trace_local[tmp#$4]($t19) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    assume {:print "$track_local(30,0,4):", $t19} $t19 == $t19;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:15+14
    assume {:print "$at(7,3922,3936)"} true;
L4:

    // $t20 := (u128)($t1) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:14+24
    call $t20 := $CastU128($t1);
    if ($abort_flag) {
        assume {:print "$at(7,3921,3945)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t21 := get_field<CRSN::CRSN>.min_nonce($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:43+14
    $t21 := $min_nonce#$1_CRSN_CRSN($Dereference($t16));

    // $t22 := (u128)($t21) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:42+24
    call $t22 := $CastU128($t21);
    if ($abort_flag) {
        assume {:print "$at(7,3949,3973)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t23 := get_field<CRSN::CRSN>.slots($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:88+11
    $t23 := $slots#$1_CRSN_CRSN($Dereference($t16));

    // $t24 := BitVector::length($t23) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:70+30
    call $t24 := $1_BitVector_length($t23);
    if ($abort_flag) {
        assume {:print "$at(7,3977,4007)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t25 := (u128)($t24) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:69+40
    call $t25 := $CastU128($t24);
    if ($abort_flag) {
        assume {:print "$at(7,3976,4016)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t26 := +($t22, $t25) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:67+1
    call $t26 := $AddU128($t22, $t25);
    if ($abort_flag) {
        assume {:print "$at(7,3974,3975)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t27 := >=($t20, $t26) at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:39+2
    call $t27 := $Ge($t20, $t26);

    // $t4 := $t27 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    assume {:print "$at(7,3871,4017)"} true;
    $t4 := $t27;

    // trace_local[tmp#$4]($t27) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    assume {:print "$track_local(30,0,4):", $t27} $t27 == $t27;

    // label L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
L5:

    // if ($t4) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    if ($t4) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
L7:

    // goto L8 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    goto L8;

    // label L6 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
L6:

    // destroy($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439

    // $t28 := false at /home/ying/diem/language/diem-framework/modules/CRSN.move:94:13+5
    assume {:print "$at(7,4033,4038)"} true;
    $t28 := false;
    assume $IsValid'bool'($t28);

    // $t5 := $t28 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    assume {:print "$at(7,3867,4306)"} true;
    $t5 := $t28;

    // trace_local[tmp#$5]($t28) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    assume {:print "$track_local(30,0,5):", $t28} $t28 == $t28;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    goto L9;

    // label L8 at /home/ying/diem/language/diem-framework/modules/CRSN.move:97:32+14
    assume {:print "$at(7,4142,4156)"} true;
L8:

    // $t29 := get_field<CRSN::CRSN>.min_nonce($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:97:49+14
    $t29 := $min_nonce#$1_CRSN_CRSN($Dereference($t16));

    // $t30 := -($t1, $t29) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:97:47+1
    call $t30 := $Sub($t1, $t29);
    if ($abort_flag) {
        assume {:print "$at(7,4157,4158)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // trace_local[scaled_nonce]($t30) at /home/ying/diem/language/diem-framework/modules/CRSN.move:97:17+12
    assume {:print "$track_local(30,0,8):", $t30} $t30 == $t30;

    // $t31 := get_field<CRSN::CRSN>.slots($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:100:38+11
    assume {:print "$at(7,4270,4281)"} true;
    $t31 := $slots#$1_CRSN_CRSN($Dereference($t16));

    // $t32 := BitVector::is_index_set($t31, $t30) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:100:14+50
    call $t32 := $1_BitVector_is_index_set($t31, $t30);
    if ($abort_flag) {
        assume {:print "$at(7,4246,4296)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t33 := !($t32) at /home/ying/diem/language/diem-framework/modules/CRSN.move:100:13+1
    call $t33 := $Not($t32);

    // $t5 := $t33 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    assume {:print "$at(7,3867,4306)"} true;
    $t5 := $t33;

    // trace_local[tmp#$5]($t33) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    assume {:print "$track_local(30,0,5):", $t33} $t33 == $t33;

    // label L9 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
L9:

    // trace_return[0]($t5) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    assume {:print "$track_return(30,0,0):", $t5} $t5 == $t5;

    // label L10 at /home/ying/diem/language/diem-framework/modules/CRSN.move:102:5+1
    assume {:print "$at(7,4311,4312)"} true;
L10:

    // return $t5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:102:5+1
    $ret0 := $t5;
    return;

    // label L11 at /home/ying/diem/language/diem-framework/modules/CRSN.move:102:5+1
L11:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:102:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// fun CRSN::check [verification] at /home/ying/diem/language/diem-framework/modules/CRSN.move:85:5+761
procedure {:timeLimit 40} $1_CRSN_check$verify(_$t0: $signer, _$t1: int) returns ($ret0: bool)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: bool;
    var $t6: int;
    var $t7: $Mutation ($1_CRSN_CRSN);
    var $t8: int;
    var $t9: $1_CRSN_CRSN;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: $Mutation ($1_CRSN_CRSN);
    var $t17: int;
    var $t18: bool;
    var $t19: bool;
    var $t20: int;
    var $t21: int;
    var $t22: int;
    var $t23: $1_BitVector_BitVector;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t27: bool;
    var $t28: bool;
    var $t29: int;
    var $t30: int;
    var $t31: $1_BitVector_BitVector;
    var $t32: bool;
    var $t33: bool;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'$1_CRSN_CRSN': $1_CRSN_CRSN;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_CRSN_CRSN_$memory#120: $Memory $1_CRSN_CRSN;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t16));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:85:5+761
    assume {:print "$at(7,3551,4312)"} true;
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:85:5+761
    assume $IsValid'u64'($t1);

    // assume forall $rsc: ResourceDomain<CRSN::CRSN>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/CRSN.move:85:5+761
    assume (forall $a_0: int :: {$ResourceValue($1_CRSN_CRSN_$memory, $a_0)}(var $rsc := $ResourceValue($1_CRSN_CRSN_$memory, $a_0);
    ($IsValid'$1_CRSN_CRSN'($rsc))));

    // assume Identical($t9, global<CRSN::CRSN>(Signer::spec_address_of($t0))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:109:9+30
    assume {:print "$at(7,4499,4529)"} true;
    assume ($t9 == $ResourceValue($1_CRSN_CRSN_$memory, $1_Signer_spec_address_of($t0)));

    // assume Identical($t10, Sub($t1, select CRSN::CRSN.min_nonce($t9))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:110:9+51
    assume {:print "$at(7,4538,4589)"} true;
    assume ($t10 == ($t1 - $min_nonce#$1_CRSN_CRSN($t9)));

    // @120 := save_mem(CRSN::CRSN) at /home/ying/diem/language/diem-framework/modules/CRSN.move:85:5+1
    assume {:print "$at(7,3551,3552)"} true;
    $1_CRSN_CRSN_$memory#120 := $1_CRSN_CRSN_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:85:5+1
    assume {:print "$track_local(30,0,0):", $t0} $t0 == $t0;

    // trace_local[sequence_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:85:5+1
    assume {:print "$track_local(30,0,1):", $t1} $t1 == $t1;

    // $t11 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:87:20+27
    assume {:print "$at(7,3660,3687)"} true;

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:87:20+27
    assume $IsValid'address'($t11);

    // assume Eq<address>($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:87:20+27
    assume $IsEqual'address'($t11, $1_Signer_spec_address_of($t0));

    // $t11 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:87:20+27

    // trace_local[addr]($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:87:13+4
    assume {:print "$track_local(30,0,6):", $t11} $t11 == $t11;

    // $t12 := CRSN::has_crsn($t11) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:16+14
    assume {:print "$at(7,3704,3718)"} true;
    call $t12 := $1_CRSN_has_crsn($t11);
    if ($abort_flag) {
        assume {:print "$at(7,3704,3718)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t14 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:54+8
    $t14 := 0;
    assume $IsValid'u64'($t14);

    // $t15 := opaque begin: Errors::invalid_state($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:32+31

    // assume WellFormed($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:32+31
    assume $IsValid'u64'($t15);

    // assume Eq<u64>($t15, 1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:32+31
    assume $IsEqual'u64'($t15, 1);

    // $t15 := opaque end: Errors::invalid_state($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:32+31

    // trace_local[tmp#$3]($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    assume {:print "$track_local(30,0,3):", $t15} $t15 == $t15;

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    assume {:print "$track_local(30,0,2):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
L1:

    // trace_abort($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    assume {:print "$at(7,3697,3752)"} true;
    assume {:print "$track_abort(30,0):", $t15} $t15 == $t15;

    // $t13 := move($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    $t13 := $t15;

    // goto L11 at /home/ying/diem/language/diem-framework/modules/CRSN.move:88:9+55
    goto L11;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:89:44+4
    assume {:print "$at(7,3797,3801)"} true;
L0:

    // $t16 := borrow_global<CRSN::CRSN>($t11) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:89:20+17
    if (!$ResourceExists($1_CRSN_CRSN_$memory, $t11)) {
        call $ExecFailureAbort();
    } else {
        $t16 := $Mutation($Global($t11), EmptyVec(), $ResourceValue($1_CRSN_CRSN_$memory, $t11));
    }
    if ($abort_flag) {
        assume {:print "$at(7,3773,3790)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // trace_local[crsn]($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:89:13+4
    $temp_0'$1_CRSN_CRSN' := $Dereference($t16);
    assume {:print "$track_local(30,0,7):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // $t17 := get_field<CRSN::CRSN>.min_nonce($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:31+14
    assume {:print "$at(7,3889,3903)"} true;
    $t17 := $min_nonce#$1_CRSN_CRSN($Dereference($t16));

    // $t18 := <($t1, $t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:29+1
    call $t18 := $Lt($t1, $t17);

    // if ($t18) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    if ($t18) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
L3:

    // goto L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
L2:

    // $t19 := true at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    $t19 := true;
    assume $IsValid'bool'($t19);

    // $t4 := $t19 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    $t4 := $t19;

    // trace_local[tmp#$4]($t19) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    assume {:print "$track_local(30,0,4):", $t19} $t19 == $t19;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:15+14
    assume {:print "$at(7,3922,3936)"} true;
L4:

    // $t20 := (u128)($t1) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:14+24
    call $t20 := $CastU128($t1);
    if ($abort_flag) {
        assume {:print "$at(7,3921,3945)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t21 := get_field<CRSN::CRSN>.min_nonce($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:43+14
    $t21 := $min_nonce#$1_CRSN_CRSN($Dereference($t16));

    // $t22 := (u128)($t21) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:42+24
    call $t22 := $CastU128($t21);
    if ($abort_flag) {
        assume {:print "$at(7,3949,3973)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t23 := get_field<CRSN::CRSN>.slots($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:88+11
    $t23 := $slots#$1_CRSN_CRSN($Dereference($t16));

    // $t24 := BitVector::length($t23) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:70+30
    call $t24 := $1_BitVector_length($t23);
    if ($abort_flag) {
        assume {:print "$at(7,3977,4007)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t25 := (u128)($t24) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:69+40
    call $t25 := $CastU128($t24);
    if ($abort_flag) {
        assume {:print "$at(7,3976,4016)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t26 := +($t22, $t25) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:67+1
    call $t26 := $AddU128($t22, $t25);
    if ($abort_flag) {
        assume {:print "$at(7,3974,3975)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t27 := >=($t20, $t26) at /home/ying/diem/language/diem-framework/modules/CRSN.move:93:39+2
    call $t27 := $Ge($t20, $t26);

    // $t4 := $t27 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    assume {:print "$at(7,3871,4017)"} true;
    $t4 := $t27;

    // trace_local[tmp#$4]($t27) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
    assume {:print "$track_local(30,0,4):", $t27} $t27 == $t27;

    // label L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:13+146
L5:

    // if ($t4) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    if ($t4) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
L7:

    // goto L8 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    goto L8;

    // label L6 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
L6:

    // destroy($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439

    // $t28 := false at /home/ying/diem/language/diem-framework/modules/CRSN.move:94:13+5
    assume {:print "$at(7,4033,4038)"} true;
    $t28 := false;
    assume $IsValid'bool'($t28);

    // $t5 := $t28 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    assume {:print "$at(7,3867,4306)"} true;
    $t5 := $t28;

    // trace_local[tmp#$5]($t28) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    assume {:print "$track_local(30,0,5):", $t28} $t28 == $t28;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    goto L9;

    // label L8 at /home/ying/diem/language/diem-framework/modules/CRSN.move:97:32+14
    assume {:print "$at(7,4142,4156)"} true;
L8:

    // $t29 := get_field<CRSN::CRSN>.min_nonce($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:97:49+14
    $t29 := $min_nonce#$1_CRSN_CRSN($Dereference($t16));

    // $t30 := -($t1, $t29) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:97:47+1
    call $t30 := $Sub($t1, $t29);
    if ($abort_flag) {
        assume {:print "$at(7,4157,4158)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // trace_local[scaled_nonce]($t30) at /home/ying/diem/language/diem-framework/modules/CRSN.move:97:17+12
    assume {:print "$track_local(30,0,8):", $t30} $t30 == $t30;

    // $t31 := get_field<CRSN::CRSN>.slots($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:100:38+11
    assume {:print "$at(7,4270,4281)"} true;
    $t31 := $slots#$1_CRSN_CRSN($Dereference($t16));

    // $t32 := BitVector::is_index_set($t31, $t30) on_abort goto L11 with $t13 at /home/ying/diem/language/diem-framework/modules/CRSN.move:100:14+50
    call $t32 := $1_BitVector_is_index_set($t31, $t30);
    if ($abort_flag) {
        assume {:print "$at(7,4246,4296)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(30,0):", $t13} $t13 == $t13;
        goto L11;
    }

    // $t33 := !($t32) at /home/ying/diem/language/diem-framework/modules/CRSN.move:100:13+1
    call $t33 := $Not($t32);

    // $t5 := $t33 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    assume {:print "$at(7,3867,4306)"} true;
    $t5 := $t33;

    // trace_local[tmp#$5]($t33) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    assume {:print "$track_local(30,0,5):", $t33} $t33 == $t33;

    // label L9 at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
L9:

    // trace_return[0]($t5) at /home/ying/diem/language/diem-framework/modules/CRSN.move:92:9+439
    assume {:print "$track_return(30,0,0):", $t5} $t5 == $t5;

    // label L10 at /home/ying/diem/language/diem-framework/modules/CRSN.move:102:5+1
    assume {:print "$at(7,4311,4312)"} true;
L10:

    // assert Not(Not(CRSN::$has_crsn[@120](Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:111:9+53
    assume {:print "$at(7,4598,4651)"} true;
    assert {:msg "assert_failed(7,4598,4651): function does not abort under this condition"}
      !!$1_CRSN_$has_crsn($1_CRSN_CRSN_$memory#120, $1_Signer_spec_address_of($t0));

    // assert Not(And(And(And(CRSN::$has_crsn[@120](Signer::spec_address_of[]($t0)), Ge($t1, select CRSN::CRSN.min_nonce($t9))), Lt(Add($t1, select CRSN::CRSN.min_nonce($t9)), BitVector::$length[](select CRSN::CRSN.slots($t9)))), Ge($t10, BitVector::$length[](select CRSN::CRSN.slots($t9))))) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:127:9+71
    assume {:print "$at(43,4230,4301)"} true;
    assert {:msg "assert_failed(43,4230,4301): function does not abort under this condition"}
      !((($1_CRSN_$has_crsn($1_CRSN_CRSN_$memory#120, $1_Signer_spec_address_of($t0)) && ($t1 >= $min_nonce#$1_CRSN_CRSN($t9))) && (($t1 + $min_nonce#$1_CRSN_CRSN($t9)) < $1_BitVector_$length($slots#$1_CRSN_CRSN($t9)))) && ($t10 >= $1_BitVector_$length($slots#$1_CRSN_CRSN($t9))));

    // return $t5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:127:9+71
    $ret0 := $t5;
    return;

    // label L11 at /home/ying/diem/language/diem-framework/modules/CRSN.move:102:5+1
    assume {:print "$at(7,4311,4312)"} true;
L11:

    // assert Or(Not(CRSN::$has_crsn[@120](Signer::spec_address_of[]($t0))), And(And(And(CRSN::$has_crsn[@120](Signer::spec_address_of[]($t0)), Ge($t1, select CRSN::CRSN.min_nonce($t9))), Lt(Add($t1, select CRSN::CRSN.min_nonce($t9)), BitVector::$length[](select CRSN::CRSN.slots($t9)))), Ge($t10, BitVector::$length[](select CRSN::CRSN.slots($t9))))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:103:5+89
    assume {:print "$at(7,4317,4406)"} true;
    assert {:msg "assert_failed(7,4317,4406): abort not covered by any of the `aborts_if` clauses"}
      (!$1_CRSN_$has_crsn($1_CRSN_CRSN_$memory#120, $1_Signer_spec_address_of($t0)) || ((($1_CRSN_$has_crsn($1_CRSN_CRSN_$memory#120, $1_Signer_spec_address_of($t0)) && ($t1 >= $min_nonce#$1_CRSN_CRSN($t9))) && (($t1 + $min_nonce#$1_CRSN_CRSN($t9)) < $1_BitVector_$length($slots#$1_CRSN_CRSN($t9)))) && ($t10 >= $1_BitVector_$length($slots#$1_CRSN_CRSN($t9)))));

    // assert Or(And(Not(CRSN::$has_crsn[@120](Signer::spec_address_of[]($t0))), Eq(1, $t13)), And(And(And(And(CRSN::$has_crsn[@120](Signer::spec_address_of[]($t0)), Ge($t1, select CRSN::CRSN.min_nonce($t9))), Lt(Add($t1, select CRSN::CRSN.min_nonce($t9)), BitVector::$length[](select CRSN::CRSN.slots($t9)))), Ge($t10, BitVector::$length[](select CRSN::CRSN.slots($t9)))), Eq(7, $t13))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:103:5+89
    assert {:msg "assert_failed(7,4317,4406): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((!$1_CRSN_$has_crsn($1_CRSN_CRSN_$memory#120, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(1, $t13)) || (((($1_CRSN_$has_crsn($1_CRSN_CRSN_$memory#120, $1_Signer_spec_address_of($t0)) && ($t1 >= $min_nonce#$1_CRSN_CRSN($t9))) && (($t1 + $min_nonce#$1_CRSN_CRSN($t9)) < $1_BitVector_$length($slots#$1_CRSN_CRSN($t9)))) && ($t10 >= $1_BitVector_$length($slots#$1_CRSN_CRSN($t9)))) && $IsEqual'num'(7, $t13)));

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:103:5+89
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// fun CRSN::force_expire [verification] at /home/ying/diem/language/diem-framework/modules/CRSN.move:131:5+514
procedure {:timeLimit 40} $1_CRSN_force_expire$verify(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: $Mutation ($1_CRSN_CRSN);
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: $Mutation ($1_CRSN_CRSN);
    var $t18: $Mutation ($1_BitVector_BitVector);
    var $t19: int;
    var $t20: int;
    var $t21: $Mutation (int);
    var $t0: $signer;
    var $t1: int;
    var $temp_0'$1_CRSN_CRSN': $1_CRSN_CRSN;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t17));
    assume IsEmptyVec(p#$Mutation($t18));
    assume IsEmptyVec(p#$Mutation($t21));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:131:5+514
    assume {:print "$at(7,5580,6094)"} true;
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:131:5+514
    assume $IsValid'u64'($t1);

    // assume forall $rsc: ResourceDomain<CRSN::CRSN>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/CRSN.move:131:5+514
    assume (forall $a_0: int :: {$ResourceValue($1_CRSN_CRSN_$memory, $a_0)}(var $rsc := $ResourceValue($1_CRSN_CRSN_$memory, $a_0);
    ($IsValid'$1_CRSN_CRSN'($rsc))));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:131:5+1
    assume {:print "$track_local(30,1,0):", $t0} $t0 == $t0;

    // trace_local[shift_amount]($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:131:5+1
    assume {:print "$track_local(30,1,1):", $t1} $t1 == $t1;

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:31+1
    assume {:print "$at(7,5691,5692)"} true;
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := >($t1, $t8) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:29+1
    call $t9 := $Gt($t1, $t8);

    // $t10 := 4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:59+14
    $t10 := 4;
    assume $IsValid'u64'($t10);

    // $t11 := opaque begin: Errors::invalid_argument($t10) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:34+40

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:34+40
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 7) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:34+40
    assume $IsEqual'u64'($t11, 7);

    // $t11 := opaque end: Errors::invalid_argument($t10) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:34+40

    // trace_local[tmp#$3]($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    assume {:print "$track_local(30,1,3):", $t11} $t11 == $t11;

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    assume {:print "$track_local(30,1,2):", $t9} $t9 == $t9;

    // if ($t9) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    if ($t9) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    assume {:print "$at(7,5669,5735)"} true;
    assume {:print "$track_abort(30,1):", $t11} $t11 == $t11;

    // $t12 := move($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    $t12 := $t11;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:39+7
    assume {:print "$at(7,5775,5782)"} true;
L0:

    // $t13 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:20+27

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:20+27
    assume $IsValid'address'($t13);

    // assume Eq<address>($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:20+27
    assume $IsEqual'address'($t13, $1_Signer_spec_address_of($t0));

    // $t13 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:20+27

    // trace_local[addr]($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:13+4
    assume {:print "$track_local(30,1,6):", $t13} $t13 == $t13;

    // $t14 := CRSN::has_crsn($t13) on_abort goto L5 with $t12 at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:16+14
    assume {:print "$at(7,5800,5814)"} true;
    call $t14 := $1_CRSN_has_crsn($t13);
    if ($abort_flag) {
        assume {:print "$at(7,5800,5814)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(30,1):", $t12} $t12 == $t12;
        goto L5;
    }

    // $t15 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:54+8
    $t15 := 0;
    assume $IsValid'u64'($t15);

    // $t16 := opaque begin: Errors::invalid_state($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:32+31

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:32+31
    assume $IsValid'u64'($t16);

    // assume Eq<u64>($t16, 1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:32+31
    assume $IsEqual'u64'($t16, 1);

    // $t16 := opaque end: Errors::invalid_state($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:32+31

    // trace_local[tmp#$5]($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    assume {:print "$track_local(30,1,5):", $t16} $t16 == $t16;

    // trace_local[tmp#$4]($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    assume {:print "$track_local(30,1,4):", $t14} $t14 == $t14;

    // if ($t14) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    if ($t14) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
L3:

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    assume {:print "$at(7,5793,5848)"} true;
    assume {:print "$track_abort(30,1):", $t16} $t16 == $t16;

    // $t12 := move($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    $t12 := $t16;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:136:44+4
    assume {:print "$at(7,5893,5897)"} true;
L2:

    // $t17 := borrow_global<CRSN::CRSN>($t13) on_abort goto L5 with $t12 at /home/ying/diem/language/diem-framework/modules/CRSN.move:136:20+17
    if (!$ResourceExists($1_CRSN_CRSN_$memory, $t13)) {
        call $ExecFailureAbort();
    } else {
        $t17 := $Mutation($Global($t13), EmptyVec(), $ResourceValue($1_CRSN_CRSN_$memory, $t13));
    }
    if ($abort_flag) {
        assume {:print "$at(7,5869,5886)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(30,1):", $t12} $t12 == $t12;
        goto L5;
    }

    // trace_local[crsn]($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:136:13+4
    $temp_0'$1_CRSN_CRSN' := $Dereference($t17);
    assume {:print "$track_local(30,1,7):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // $t18 := borrow_field<CRSN::CRSN>.slots($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:138:31+15
    assume {:print "$at(7,5931,5946)"} true;
    $t18 := $ChildMutation($t17, 2, $slots#$1_CRSN_CRSN($Dereference($t17)));

    // BitVector::shift_left($t18, $t1) on_abort goto L5 with $t12 at /home/ying/diem/language/diem-framework/modules/CRSN.move:138:9+52
    call $t18 := $1_BitVector_shift_left($t18, $t1);
    if ($abort_flag) {
        assume {:print "$at(7,5909,5961)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(30,1):", $t12} $t12 == $t12;
        goto L5;
    }

    // write_back[Reference($t17).slots]($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:138:9+52
    $t17 := $UpdateMutation($t17, $Update'$1_CRSN_CRSN'_slots($Dereference($t17), $Dereference($t18)));

    // $t19 := get_field<CRSN::CRSN>.min_nonce($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:140:26+14
    assume {:print "$at(7,5989,6003)"} true;
    $t19 := $min_nonce#$1_CRSN_CRSN($Dereference($t17));

    // $t20 := +($t19, $t1) on_abort goto L5 with $t12 at /home/ying/diem/language/diem-framework/modules/CRSN.move:140:41+1
    call $t20 := $AddU64($t19, $t1);
    if ($abort_flag) {
        assume {:print "$at(7,6004,6005)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(30,1):", $t12} $t12 == $t12;
        goto L5;
    }

    // $t21 := borrow_field<CRSN::CRSN>.min_nonce($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:140:9+14
    $t21 := $ChildMutation($t17, 0, $min_nonce#$1_CRSN_CRSN($Dereference($t17)));

    // write_ref($t21, $t20) at /home/ying/diem/language/diem-framework/modules/CRSN.move:140:9+46
    $t21 := $UpdateMutation($t21, $t20);

    // write_back[Reference($t17).min_nonce]($t21) at /home/ying/diem/language/diem-framework/modules/CRSN.move:140:9+46
    $t17 := $UpdateMutation($t17, $Update'$1_CRSN_CRSN'_min_nonce($Dereference($t17), $Dereference($t21)));

    // CRSN::shift_window_right($t17) on_abort goto L5 with $t12 at /home/ying/diem/language/diem-framework/modules/CRSN.move:142:9+24
    assume {:print "$at(7,6063,6087)"} true;
    call $t17 := $1_CRSN_shift_window_right($t17);
    if ($abort_flag) {
        assume {:print "$at(7,6063,6087)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(30,1):", $t12} $t12 == $t12;
        goto L5;
    }

    // write_back[CRSN::CRSN@]($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:142:9+24
    $1_CRSN_CRSN_$memory := $ResourceUpdate($1_CRSN_CRSN_$memory, $GlobalLocationAddress($t17),
        $Dereference($t17));

    // label L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:143:5+1
    assume {:print "$at(7,6093,6094)"} true;
L4:

    // return () at /home/ying/diem/language/diem-framework/modules/CRSN.move:143:5+1
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:143:5+1
L5:

    // abort($t12) at /home/ying/diem/language/diem-framework/modules/CRSN.move:143:5+1
    $abort_code := $t12;
    $abort_flag := true;
    return;

}

// fun CRSN::has_crsn [baseline] at /home/ying/diem/language/diem-framework/modules/CRSN.move:146:5+75
procedure {:inline 1} $1_CRSN_has_crsn(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:146:5+1
    assume {:print "$at(7,6176,6177)"} true;
    assume {:print "$track_local(30,2,0):", $t0} $t0 == $t0;

    // $t1 := exists<CRSN::CRSN>($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:147:9+6
    assume {:print "$at(7,6227,6233)"} true;
    $t1 := $ResourceExists($1_CRSN_CRSN_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:147:9+18
    assume {:print "$track_return(30,2,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:148:5+1
    assume {:print "$at(7,6250,6251)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:148:5+1
    $ret0 := $t1;
    return;

}

// fun CRSN::has_crsn [verification] at /home/ying/diem/language/diem-framework/modules/CRSN.move:146:5+75
procedure {:timeLimit 40} $1_CRSN_has_crsn$verify(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:146:5+75
    assume {:print "$at(7,6176,6251)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<CRSN::CRSN>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/CRSN.move:146:5+75
    assume (forall $a_0: int :: {$ResourceValue($1_CRSN_CRSN_$memory, $a_0)}(var $rsc := $ResourceValue($1_CRSN_CRSN_$memory, $a_0);
    ($IsValid'$1_CRSN_CRSN'($rsc))));

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:146:5+1
    assume {:print "$track_local(30,2,0):", $t0} $t0 == $t0;

    // $t1 := exists<CRSN::CRSN>($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:147:9+6
    assume {:print "$at(7,6227,6233)"} true;
    $t1 := $ResourceExists($1_CRSN_CRSN_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:147:9+18
    assume {:print "$track_return(30,2,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:148:5+1
    assume {:print "$at(7,6250,6251)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:148:5+1
    $ret0 := $t1;
    return;

}

// fun CRSN::record [verification] at /home/ying/diem/language/diem-framework/modules/CRSN.move:64:5+722
procedure {:timeLimit 40} $1_CRSN_record$verify(_$t0: $signer, _$t1: int) returns ($ret0: bool)
{
    // declare local variables
    var $t2: int;
    var $t3: $Mutation ($1_CRSN_CRSN);
    var $t4: $1_CRSN_CRSN;
    var $t5: int;
    var $t6: int;
    var $t7: $1_CRSN_CRSN;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: $Mutation ($1_CRSN_CRSN);
    var $t12: int;
    var $t13: int;
    var $t14: $Mutation ($1_BitVector_BitVector);
    var $t15: bool;
    var $t16: bool;
    var $t17: bool;
    var $t18: $1_CRSN_CRSN;
    var $t19: int;
    var $t20: bool;
    var $t21: bool;
    var $t22: bool;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'$1_CRSN_CRSN': $1_CRSN_CRSN;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t11));
    assume IsEmptyVec(p#$Mutation($t14));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:64:5+722
    assume {:print "$at(7,2694,3416)"} true;
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:64:5+722
    assume $IsValid'u64'($t1);

    // assume forall $rsc: ResourceDomain<CRSN::CRSN>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/CRSN.move:64:5+722
    assume (forall $a_0: int :: {$ResourceValue($1_CRSN_CRSN_$memory, $a_0)}(var $rsc := $ResourceValue($1_CRSN_CRSN_$memory, $a_0);
    ($IsValid'$1_CRSN_CRSN'($rsc))));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:64:5+1
    assume {:print "$track_local(30,4,0):", $t0} $t0 == $t0;

    // trace_local[sequence_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:64:5+1
    assume {:print "$track_local(30,4,1):", $t1} $t1 == $t1;

    // $t6 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:66:20+27
    assume {:print "$at(7,2804,2831)"} true;

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/CRSN.move:66:20+27
    assume $IsValid'address'($t6);

    // assume Eq<address>($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:66:20+27
    assume $IsEqual'address'($t6, $1_Signer_spec_address_of($t0));

    // $t6 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:66:20+27

    // trace_local[addr]($t6) at /home/ying/diem/language/diem-framework/modules/CRSN.move:66:13+4
    assume {:print "$track_local(30,4,2):", $t6} $t6 == $t6;

    // assume Identical($t7, global<CRSN::CRSN>(Signer::spec_address_of($t0))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:109:9+30
    assume {:print "$at(7,4499,4529)"} true;
    assume ($t7 == $ResourceValue($1_CRSN_CRSN_$memory, $1_Signer_spec_address_of($t0)));

    // assume Identical($t8, Sub($t1, select CRSN::CRSN.min_nonce($t7))) at /home/ying/diem/language/diem-framework/modules/CRSN.move:110:9+51
    assume {:print "$at(7,4538,4589)"} true;
    assume ($t8 == ($t1 - $min_nonce#$1_CRSN_CRSN($t7)));

    // $t9 := CRSN::check($t0, $t1) on_abort goto L9 with $t10 at /home/ying/diem/language/diem-framework/modules/CRSN.move:67:13+30
    assume {:print "$at(7,2845,2875)"} true;
    call $t9 := $1_CRSN_check($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(7,2845,2875)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(30,4):", $t10} $t10 == $t10;
        goto L9;
    }

    // if ($t9) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:67:9+553
    if ($t9) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:67:9+553
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:67:9+553
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:69:48+4
    assume {:print "$at(7,2965,2969)"} true;
L0:

    // $t11 := borrow_global<CRSN::CRSN>($t6) on_abort goto L9 with $t10 at /home/ying/diem/language/diem-framework/modules/CRSN.move:69:24+17
    if (!$ResourceExists($1_CRSN_CRSN_$memory, $t6)) {
        call $ExecFailureAbort();
    } else {
        $t11 := $Mutation($Global($t6), EmptyVec(), $ResourceValue($1_CRSN_CRSN_$memory, $t6));
    }
    if ($abort_flag) {
        assume {:print "$at(7,2941,2958)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(30,4):", $t10} $t10 == $t10;
        goto L9;
    }

    // trace_local[crsn]($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:69:17+4
    $temp_0'$1_CRSN_CRSN' := $Dereference($t11);
    assume {:print "$track_local(30,4,3):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // $t12 := get_field<CRSN::CRSN>.min_nonce($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:71:49+14
    assume {:print "$at(7,3048,3062)"} true;
    $t12 := $min_nonce#$1_CRSN_CRSN($Dereference($t11));

    // $t13 := -($t1, $t12) on_abort goto L9 with $t10 at /home/ying/diem/language/diem-framework/modules/CRSN.move:71:47+1
    call $t13 := $Sub($t1, $t12);
    if ($abort_flag) {
        assume {:print "$at(7,3046,3047)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(30,4):", $t10} $t10 == $t10;
        goto L9;
    }

    // trace_local[scaled_nonce]($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:71:17+12
    assume {:print "$track_local(30,4,5):", $t13} $t13 == $t13;

    // $t14 := borrow_field<CRSN::CRSN>.slots($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:72:28+15
    assume {:print "$at(7,3091,3106)"} true;
    $t14 := $ChildMutation($t11, 2, $slots#$1_CRSN_CRSN($Dereference($t11)));

    // BitVector::set($t14, $t13) on_abort goto L9 with $t10 at /home/ying/diem/language/diem-framework/modules/CRSN.move:72:13+45
    call $t14 := $1_BitVector_set($t14, $t13);
    if ($abort_flag) {
        assume {:print "$at(7,3076,3121)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(30,4):", $t10} $t10 == $t10;
        goto L9;
    }

    // write_back[Reference($t11).slots]($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:72:13+45
    $t11 := $UpdateMutation($t11, $Update'$1_CRSN_CRSN'_slots($Dereference($t11), $Dereference($t14)));

    // CRSN::shift_window_right($t11) on_abort goto L9 with $t10 at /home/ying/diem/language/diem-framework/modules/CRSN.move:73:13+24
    assume {:print "$at(7,3135,3159)"} true;
    call $t11 := $1_CRSN_shift_window_right($t11);
    if ($abort_flag) {
        assume {:print "$at(7,3135,3159)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(30,4):", $t10} $t10 == $t10;
        goto L9;
    }

    // write_back[CRSN::CRSN@]($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:73:13+24
    $1_CRSN_CRSN_$memory := $ResourceUpdate($1_CRSN_CRSN_$memory, $GlobalLocationAddress($t11),
        $Dereference($t11));

    // $t15 := true at /home/ying/diem/language/diem-framework/modules/CRSN.move:74:20+4
    assume {:print "$at(7,3180,3184)"} true;
    $t15 := true;
    assume $IsValid'bool'($t15);

    // trace_return[0]($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:74:13+11
    assume {:print "$track_return(30,4,0):", $t15} $t15 == $t15;

    // $t16 := move($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:74:13+11
    $t16 := $t15;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/CRSN.move:74:13+11
    goto L8;

    // label L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:75:33+4
    assume {:print "$at(7,3217,3221)"} true;
L2:

    // $t17 := exists<CRSN::CRSN>($t6) at /home/ying/diem/language/diem-framework/modules/CRSN.move:75:20+6
    $t17 := $ResourceExists($1_CRSN_CRSN_$memory, $t6);

    // if ($t17) goto L3 else goto L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:75:16+194
    if ($t17) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:75:16+194
L4:

    // goto L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:75:16+194
    goto L5;

    // label L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:76:44+4
    assume {:print "$at(7,3317,3321)"} true;
L3:

    // $t18 := get_global<CRSN::CRSN>($t6) on_abort goto L9 with $t10 at /home/ying/diem/language/diem-framework/modules/CRSN.move:76:24+13
    if (!$ResourceExists($1_CRSN_CRSN_$memory, $t6)) {
        call $ExecFailureAbort();
    } else {
        $t18 := $ResourceValue($1_CRSN_CRSN_$memory, $t6);
    }
    if ($abort_flag) {
        assume {:print "$at(7,3297,3310)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(30,4):", $t10} $t10 == $t10;
        goto L9;
    }

    // trace_local[crsn#1]($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:76:17+4
    assume {:print "$track_local(30,4,4):", $t18} $t18 == $t18;

    // $t19 := get_field<CRSN::CRSN>.min_nonce($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:77:17+14
    assume {:print "$at(7,3340,3354)"} true;
    $t19 := $min_nonce#$1_CRSN_CRSN($t18);

    // $t20 := >($t19, $t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:77:32+1
    call $t20 := $Gt($t19, $t1);

    // if ($t20) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:77:13+48
    if ($t20) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:77:13+48
L7:

    // goto L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:77:13+48
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/CRSN.move:77:57+4
L6:

    // $t21 := true at /home/ying/diem/language/diem-framework/modules/CRSN.move:77:57+4
    $t21 := true;
    assume $IsValid'bool'($t21);

    // trace_return[0]($t21) at /home/ying/diem/language/diem-framework/modules/CRSN.move:77:50+11
    assume {:print "$track_return(30,4,0):", $t21} $t21 == $t21;

    // $t16 := move($t21) at /home/ying/diem/language/diem-framework/modules/CRSN.move:77:50+11
    $t16 := $t21;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/CRSN.move:77:50+11
    goto L8;

    // label L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:80:9+5
    assume {:print "$at(7,3405,3410)"} true;
L5:

    // $t22 := false at /home/ying/diem/language/diem-framework/modules/CRSN.move:80:9+5
    $t22 := false;
    assume $IsValid'bool'($t22);

    // trace_return[0]($t22) at /home/ying/diem/language/diem-framework/modules/CRSN.move:80:9+5
    assume {:print "$track_return(30,4,0):", $t22} $t22 == $t22;

    // $t16 := move($t22) at /home/ying/diem/language/diem-framework/modules/CRSN.move:80:9+5
    $t16 := $t22;

    // label L8 at /home/ying/diem/language/diem-framework/modules/CRSN.move:81:5+1
    assume {:print "$at(7,3415,3416)"} true;
L8:

    // return $t16 at /home/ying/diem/language/diem-framework/modules/CRSN.move:81:5+1
    $ret0 := $t16;
    return;

    // label L9 at /home/ying/diem/language/diem-framework/modules/CRSN.move:81:5+1
L9:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/CRSN.move:81:5+1
    $abort_code := $t10;
    $abort_flag := true;
    return;

}

// fun CRSN::shift_window_right [baseline] at /home/ying/diem/language/diem-framework/modules/CRSN.move:150:5+320
procedure {:inline 1} $1_CRSN_shift_window_right(_$t0: $Mutation ($1_CRSN_CRSN)) returns ($ret0: $Mutation ($1_CRSN_CRSN))
{
    // declare local variables
    var $t1: int;
    var $t2: $1_BitVector_BitVector;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: $Mutation ($1_BitVector_BitVector);
    var $t9: int;
    var $t10: int;
    var $t11: $Mutation (int);
    var $t0: $Mutation ($1_CRSN_CRSN);
    var $temp_0'$1_CRSN_CRSN': $1_CRSN_CRSN;
    var $temp_0'u64': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t11));

    // bytecode translation starts here
    // trace_local[crsn]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:150:5+1
    assume {:print "$at(7,6257,6258)"} true;
    $temp_0'$1_CRSN_CRSN' := $Dereference($t0);
    assume {:print "$track_local(30,5,0):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // $t2 := get_field<CRSN::CRSN>.slots($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:65+11
    assume {:print "$at(7,6363,6374)"} true;
    $t2 := $slots#$1_CRSN_CRSN($Dereference($t0));

    // $t3 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:78+1
    $t3 := 0;
    assume $IsValid'u64'($t3);

    // $t4 := BitVector::longest_set_sequence_starting_at($t2, $t3) on_abort goto L4 with $t5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:21+59
    call $t4 := $1_BitVector_longest_set_sequence_starting_at($t2, $t3);
    if ($abort_flag) {
        assume {:print "$at(7,6319,6378)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(30,5):", $t5} $t5 == $t5;
        goto L4;
    }

    // trace_local[index]($t4) at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:13+5
    assume {:print "$track_local(30,5,1):", $t4} $t4 == $t4;

    // $t6 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:22+1
    assume {:print "$at(7,6457,6458)"} true;
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // $t7 := ==($t4, $t6) at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:19+2
    $t7 := $IsEqual'u64'($t4, $t6);

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:9+22
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:9+22
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:9+22
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6
L0:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6

    // trace_local[crsn]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6
    $temp_0'$1_CRSN_CRSN' := $Dereference($t0);
    assume {:print "$track_local(30,5,0):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // goto L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:36+4
    assume {:print "$at(7,6503,6507)"} true;
L2:

    // $t8 := borrow_field<CRSN::CRSN>.slots($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:31+15
    $t8 := $ChildMutation($t0, 2, $slots#$1_CRSN_CRSN($Dereference($t0)));

    // BitVector::shift_left($t8, $t4) on_abort goto L4 with $t5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:9+45
    call $t8 := $1_BitVector_shift_left($t8, $t4);
    if ($abort_flag) {
        assume {:print "$at(7,6476,6521)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(30,5):", $t5} $t5 == $t5;
        goto L4;
    }

    // write_back[Reference($t0).slots]($t8) at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:9+45
    $t0 := $UpdateMutation($t0, $Update'$1_CRSN_CRSN'_slots($Dereference($t0), $Dereference($t8)));

    // $t9 := get_field<CRSN::CRSN>.min_nonce($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:26+14
    assume {:print "$at(7,6548,6562)"} true;
    $t9 := $min_nonce#$1_CRSN_CRSN($Dereference($t0));

    // $t10 := +($t9, $t4) on_abort goto L4 with $t5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:41+1
    call $t10 := $AddU64($t9, $t4);
    if ($abort_flag) {
        assume {:print "$at(7,6563,6564)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(30,5):", $t5} $t5 == $t5;
        goto L4;
    }

    // $t11 := borrow_field<CRSN::CRSN>.min_nonce($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:9+14
    $t11 := $ChildMutation($t0, 0, $min_nonce#$1_CRSN_CRSN($Dereference($t0)));

    // write_ref($t11, $t10) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:9+39
    $t11 := $UpdateMutation($t11, $t10);

    // write_back[Reference($t0).min_nonce]($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:9+39
    $t0 := $UpdateMutation($t0, $Update'$1_CRSN_CRSN'_min_nonce($Dereference($t0), $Dereference($t11)));

    // trace_local[crsn]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:48+1
    $temp_0'$1_CRSN_CRSN' := $Dereference($t0);
    assume {:print "$track_local(30,5,0):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // label L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
    assume {:print "$at(7,6576,6577)"} true;
L3:

    // return () at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
    $ret0 := $t0;
    return;

    // label L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
L4:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun CRSN::shift_window_right [verification] at /home/ying/diem/language/diem-framework/modules/CRSN.move:150:5+320
procedure {:timeLimit 40} $1_CRSN_shift_window_right$verify(_$t0: $Mutation ($1_CRSN_CRSN)) returns ($ret0: $Mutation ($1_CRSN_CRSN))
{
    // declare local variables
    var $t1: int;
    var $t2: $1_BitVector_BitVector;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: $Mutation ($1_BitVector_BitVector);
    var $t9: int;
    var $t10: int;
    var $t11: $Mutation (int);
    var $t0: $Mutation ($1_CRSN_CRSN);
    var $temp_0'$1_CRSN_CRSN': $1_CRSN_CRSN;
    var $temp_0'u64': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t11));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:150:5+320
    assume {:print "$at(7,6257,6577)"} true;
    assume $IsValid'$1_CRSN_CRSN'($Dereference($t0));

    // trace_local[crsn]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:150:5+1
    $temp_0'$1_CRSN_CRSN' := $Dereference($t0);
    assume {:print "$track_local(30,5,0):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // $t2 := get_field<CRSN::CRSN>.slots($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:65+11
    assume {:print "$at(7,6363,6374)"} true;
    $t2 := $slots#$1_CRSN_CRSN($Dereference($t0));

    // $t3 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:78+1
    $t3 := 0;
    assume $IsValid'u64'($t3);

    // $t4 := BitVector::longest_set_sequence_starting_at($t2, $t3) on_abort goto L4 with $t5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:21+59
    call $t4 := $1_BitVector_longest_set_sequence_starting_at($t2, $t3);
    if ($abort_flag) {
        assume {:print "$at(7,6319,6378)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(30,5):", $t5} $t5 == $t5;
        goto L4;
    }

    // trace_local[index]($t4) at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:13+5
    assume {:print "$track_local(30,5,1):", $t4} $t4 == $t4;

    // $t6 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:22+1
    assume {:print "$at(7,6457,6458)"} true;
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // $t7 := ==($t4, $t6) at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:19+2
    $t7 := $IsEqual'u64'($t4, $t6);

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:9+22
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:9+22
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:9+22
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6
L0:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6

    // trace_local[crsn]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6
    $temp_0'$1_CRSN_CRSN' := $Dereference($t0);
    assume {:print "$track_local(30,5,0):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // goto L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:36+4
    assume {:print "$at(7,6503,6507)"} true;
L2:

    // $t8 := borrow_field<CRSN::CRSN>.slots($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:31+15
    $t8 := $ChildMutation($t0, 2, $slots#$1_CRSN_CRSN($Dereference($t0)));

    // BitVector::shift_left($t8, $t4) on_abort goto L4 with $t5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:9+45
    call $t8 := $1_BitVector_shift_left($t8, $t4);
    if ($abort_flag) {
        assume {:print "$at(7,6476,6521)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(30,5):", $t5} $t5 == $t5;
        goto L4;
    }

    // write_back[Reference($t0).slots]($t8) at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:9+45
    $t0 := $UpdateMutation($t0, $Update'$1_CRSN_CRSN'_slots($Dereference($t0), $Dereference($t8)));

    // $t9 := get_field<CRSN::CRSN>.min_nonce($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:26+14
    assume {:print "$at(7,6548,6562)"} true;
    $t9 := $min_nonce#$1_CRSN_CRSN($Dereference($t0));

    // $t10 := +($t9, $t4) on_abort goto L4 with $t5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:41+1
    call $t10 := $AddU64($t9, $t4);
    if ($abort_flag) {
        assume {:print "$at(7,6563,6564)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(30,5):", $t5} $t5 == $t5;
        goto L4;
    }

    // $t11 := borrow_field<CRSN::CRSN>.min_nonce($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:9+14
    $t11 := $ChildMutation($t0, 0, $min_nonce#$1_CRSN_CRSN($Dereference($t0)));

    // write_ref($t11, $t10) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:9+39
    $t11 := $UpdateMutation($t11, $t10);

    // write_back[Reference($t0).min_nonce]($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:9+39
    $t0 := $UpdateMutation($t0, $Update'$1_CRSN_CRSN'_min_nonce($Dereference($t0), $Dereference($t11)));

    // trace_local[crsn]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:48+1
    $temp_0'$1_CRSN_CRSN' := $Dereference($t0);
    assume {:print "$track_local(30,5,0):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // label L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
    assume {:print "$at(7,6576,6577)"} true;
L3:

    // return () at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
    $ret0 := $t0;
    return;

    // label L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
L4:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}
