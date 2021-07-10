
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
// Native Vector implementation for element type `#0`

// Not inlined. It appears faster this way.
function $IsEqual'vec'#0''(v1: Vec (#0), v2: Vec (#0)): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'#0'(ReadVec(v1, i), ReadVec(v2, i)))
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

type #0;
function {:inline} $IsEqual'#0'(x1: #0, x2: #0): bool { x1 == x2 }
function {:inline} $IsValid'#0'(x: #0): bool { true }

// fun VerifyVector::verify_append [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+731
procedure {:timeLimit 40} $42_VerifyVector_verify_append$verify(_$t0: $Mutation (Vec (#0)), _$t1: Vec (#0)) returns ($ret0: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t2: $Mutation (Vec (#0));
    var $t3: Vec (#0);
    var $t4: Vec (#0);
    var $t5: Vec (#0);
    var $t6: Vec (#0);
    var $t7: Vec (#0);
    var $t8: Vec (#0);
    var $t9: Vec (#0);
    var $t10: Vec (#0);
    var $t11: Vec (#0);
    var $t12: Vec (#0);
    var $t13: Vec (#0);
    var $t14: Vec (#0);
    var $t15: Vec (#0);
    var $t16: Vec (#0);
    var $t17: $Mutation (Vec (#0));
    var $t18: int;
    var $t19: Vec (#0);
    var $t20: bool;
    var $t21: bool;
    var $t22: #0;
    var $t23: Vec (#0);
    var $t0: $Mutation (Vec (#0));
    var $t1: Vec (#0);
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t17));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+731
    assume {:print "$at(2,5011,5742)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+731
    assume $IsValid'vec'#0''($t1);

    // $t3 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t3 := $Dereference($t0);

    // $t4 := copy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t4 := $t1;

    // $t5 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t5 := $Dereference($t0);

    // $t6 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t6 := $Dereference($t0);

    // $t7 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t7 := $Dereference($t0);

    // $t8 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t8 := $Dereference($t0);

    // $t9 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t9 := $Dereference($t0);

    // $t10 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t10 := $Dereference($t0);

    // $t11 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t11 := $Dereference($t0);

    // $t12 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t12 := $Dereference($t0);

    // $t13 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t13 := $Dereference($t0);

    // $t14 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t14 := $Dereference($t0);

    // $t15 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t15 := $Dereference($t0);

    // $t16 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $t16 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // trace_local[other]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:135:5+1
    assume {:print "$track_local(1,0,1):", $t1} $t1 == $t1;

    // $t17 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:136:17+10
    assume {:print "$at(2,5105,5115)"} true;
    $t17 := $Mutation($Local(1), EmptyVec(), $t1);

    // trace_local[o]($t17) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:136:13+1
    $temp_0'vec'#0'' := $Dereference($t17);
    assume {:print "$track_local(1,0,2):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // Vector::reverse<#0>($t17) on_abort goto L6 with $t18 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:137:9+18
    assume {:print "$at(2,5125,5143)"} true;
    call $t17 := $1_Vector_reverse'#0'($t17);
    if ($abort_flag) {
        assume {:print "$at(2,5125,5143)"} true;
        $t18 := $abort_code;
        assume {:print "$track_abort(1,0):", $t18} $t18 == $t18;
        goto L6;
    }

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:139:13+412
    assume {:print "$at(2,5174,5586)"} true;
L3:

    // assert Ge(Len<#0>($t0), Len<#0>($t9)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:140:17+29
    assume {:print "$at(2,5197,5226)"} true;
    assert {:msg "assert_failed(2,5197,5226): base case of the loop invariant does not hold"}
      (LenVec($Dereference($t0)) >= LenVec($t9));

    // assert Le(Len<#0>($t17), Len<#0>($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:141:17+28
    assume {:print "$at(2,5243,5271)"} true;
    assert {:msg "assert_failed(2,5243,5271): base case of the loop invariant does not hold"}
      (LenVec($Dereference($t17)) <= LenVec($t1));

    // assert Eq<num>(Add(Len<#0>($t0), Len<#0>($t17)), Add(Len<#0>($t10), Len<#0>($t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:142:17+51
    assume {:print "$at(2,5288,5339)"} true;
    assert {:msg "assert_failed(2,5288,5339): base case of the loop invariant does not hold"}
      $IsEqual'num'((LenVec($Dereference($t0)) + LenVec($Dereference($t17))), (LenVec($t10) + LenVec($t1)));

    // assert forall k: Range(0, Len<#0>($t11)): Eq<#0>(Index($t0, k), Index($t11, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:143:17+53
    assume {:print "$at(2,5356,5409)"} true;
    assert {:msg "assert_failed(2,5356,5409): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($t11)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t11, k))))));

    // assert forall k: Range(0, Len<#0>($t17)): Eq<#0>(Index($t17, k), Index($t1, Sub(Sub(Len<#0>($t1), 1), k))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:144:17+60
    assume {:print "$at(2,5426,5486)"} true;
    assert {:msg "assert_failed(2,5426,5486): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t17))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t17), k), ReadVec($t1, ((LenVec($t1) - 1) - k)))))));

    // assert forall k: Range(Len<#0>($t12), Len<#0>($t0)): Eq<#0>(Index($t0, k), Index($t1, Sub(k, Len<#0>($t12)))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    assume {:print "$at(2,5503,5572)"} true;
    assert {:msg "assert_failed(2,5503,5572): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(LenVec($t12), LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t1, (k - LenVec($t12))))))));

    // havoc[val]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    havoc $t19;
    assume $IsValid'vec'#0''($t19);

    // havoc[val]($t20) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    havoc $t20;
    assume $IsValid'bool'($t20);

    // havoc[val]($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    havoc $t21;
    assume $IsValid'bool'($t21);

    // havoc[val]($t22) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    havoc $t22;
    assume $IsValid'#0'($t22);

    // havoc[mut]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    havoc $temp_0'vec'#0'';
    $t0 := $UpdateMutation($t0, $temp_0'vec'#0'');
    assume $IsValid'vec'#0''($Dereference($t0));

    // havoc[mut]($t17) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    havoc $temp_0'vec'#0'';
    $t17 := $UpdateMutation($t17, $temp_0'vec'#0'');
    assume $IsValid'vec'#0''($Dereference($t17));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    assume !$abort_flag;

    // assume Ge(Len<#0>($t0), Len<#0>($t5)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:140:17+29
    assume {:print "$at(2,5197,5226)"} true;
    assume (LenVec($Dereference($t0)) >= LenVec($t5));

    // assume Le(Len<#0>($t17), Len<#0>($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:141:17+28
    assume {:print "$at(2,5243,5271)"} true;
    assume (LenVec($Dereference($t17)) <= LenVec($t1));

    // assume Eq<num>(Add(Len<#0>($t0), Len<#0>($t17)), Add(Len<#0>($t6), Len<#0>($t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:142:17+51
    assume {:print "$at(2,5288,5339)"} true;
    assume $IsEqual'num'((LenVec($Dereference($t0)) + LenVec($Dereference($t17))), (LenVec($t6) + LenVec($t1)));

    // assume forall k: Range(0, Len<#0>($t7)): Eq<#0>(Index($t0, k), Index($t7, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:143:17+53
    assume {:print "$at(2,5356,5409)"} true;
    assume (var $range_0 := $Range(0, LenVec($t7)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t7, k))))));

    // assume forall k: Range(0, Len<#0>($t17)): Eq<#0>(Index($t17, k), Index($t1, Sub(Sub(Len<#0>($t1), 1), k))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:144:17+60
    assume {:print "$at(2,5426,5486)"} true;
    assume (var $range_0 := $Range(0, LenVec($Dereference($t17))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t17), k), ReadVec($t1, ((LenVec($t1) - 1) - k)))))));

    // assume forall k: Range(Len<#0>($t8), Len<#0>($t0)): Eq<#0>(Index($t0, k), Index($t1, Sub(k, Len<#0>($t8)))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    assume {:print "$at(2,5503,5572)"} true;
    assume (var $range_0 := $Range(LenVec($t8), LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t1, (k - LenVec($t8))))))));

    // $t19 := read_ref($t17) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:147:31+1
    assume {:print "$at(2,5618,5619)"} true;
    $t19 := $Dereference($t17);

    // $t20 := Vector::is_empty<#0>($t19) on_abort goto L6 with $t18 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:147:14+19
    call $t20 := $1_Vector_is_empty'#0'($t19);
    if ($abort_flag) {
        assume {:print "$at(2,5601,5620)"} true;
        $t18 := $abort_code;
        assume {:print "$track_abort(1,0):", $t18} $t18 == $t18;
        goto L6;
    }

    // $t21 := !($t20) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:147:13+1
    call $t21 := $Not($t20);

    // if ($t21) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:138:9+544
    assume {:print "$at(2,5153,5697)"} true;
    if ($t21) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:138:9+544
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:138:9+544
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:149:31+1
    assume {:print "$at(2,5664,5665)"} true;
L0:

    // $t22 := Vector::pop_back<#0>($t17) on_abort goto L6 with $t18 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:149:34+19
    call $t22,$t17 := $1_Vector_pop_back'#0'($t17);
    if ($abort_flag) {
        assume {:print "$at(2,5667,5686)"} true;
        $t18 := $abort_code;
        assume {:print "$track_abort(1,0):", $t18} $t18 == $t18;
        goto L6;
    }

    // Vector::push_back<#0>($t0, $t22) on_abort goto L6 with $t18 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:149:13+41
    call $t0 := $1_Vector_push_back'#0'($t0, $t22);
    if ($abort_flag) {
        assume {:print "$at(2,5646,5687)"} true;
        $t18 := $abort_code;
        assume {:print "$track_abort(1,0):", $t18} $t18 == $t18;
        goto L6;
    }

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:149:13+41
    goto L4;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:151:9+28
    assume {:print "$at(2,5707,5735)"} true;
L2:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:151:9+28

    // write_back[LocalRoot($t1)@]($t17) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:151:9+28
    $t1 := $Dereference($t17);

    // destroy($t17) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:151:9+28

    // $t23 := move($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:151:31+5
    $t23 := $t1;

    // Vector::destroy_empty<#0>($t23) on_abort goto L6 with $t18 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:151:9+28
    call $1_Vector_destroy_empty'#0'($t23);
    if ($abort_flag) {
        assume {:print "$at(2,5707,5735)"} true;
        $t18 := $abort_code;
        assume {:print "$track_abort(1,0):", $t18} $t18 == $t18;
        goto L6;
    }

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:151:37+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:151:37+1
    goto L5;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:151:9+28
    // Loop invariant checking block for the loop started with header: L3
L4:

    // assert Ge(Len<#0>($t0), Len<#0>($t13)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:140:17+29
    assume {:print "$at(2,5197,5226)"} true;
    assert {:msg "assert_failed(2,5197,5226): induction case of the loop invariant does not hold"}
      (LenVec($Dereference($t0)) >= LenVec($t13));

    // assert Le(Len<#0>($t17), Len<#0>($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:141:17+28
    assume {:print "$at(2,5243,5271)"} true;
    assert {:msg "assert_failed(2,5243,5271): induction case of the loop invariant does not hold"}
      (LenVec($Dereference($t17)) <= LenVec($t1));

    // assert Eq<num>(Add(Len<#0>($t0), Len<#0>($t17)), Add(Len<#0>($t14), Len<#0>($t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:142:17+51
    assume {:print "$at(2,5288,5339)"} true;
    assert {:msg "assert_failed(2,5288,5339): induction case of the loop invariant does not hold"}
      $IsEqual'num'((LenVec($Dereference($t0)) + LenVec($Dereference($t17))), (LenVec($t14) + LenVec($t1)));

    // assert forall k: Range(0, Len<#0>($t15)): Eq<#0>(Index($t0, k), Index($t15, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:143:17+53
    assume {:print "$at(2,5356,5409)"} true;
    assert {:msg "assert_failed(2,5356,5409): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($t15)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t15, k))))));

    // assert forall k: Range(0, Len<#0>($t17)): Eq<#0>(Index($t17, k), Index($t1, Sub(Sub(Len<#0>($t1), 1), k))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:144:17+60
    assume {:print "$at(2,5426,5486)"} true;
    assert {:msg "assert_failed(2,5426,5486): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t17))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t17), k), ReadVec($t1, ((LenVec($t1) - 1) - k)))))));

    // assert forall k: Range(Len<#0>($t16), Len<#0>($t0)): Eq<#0>(Index($t0, k), Index($t1, Sub(k, Len<#0>($t16)))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    assume {:print "$at(2,5503,5572)"} true;
    assert {:msg "assert_failed(2,5503,5572): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(LenVec($t16), LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t1, (k - LenVec($t16))))))));

    // stop() at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:145:17+69
    assume false;
    return;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:152:5+1
    assume {:print "$at(2,5741,5742)"} true;
L5:

    // assert Eq<num>(Len<#0>($t0), Add(Len<#0>($t3), Len<#0>($t4))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:154:9+43
    assume {:print "$at(2,5776,5819)"} true;
    assert {:msg "assert_failed(2,5776,5819): post-condition does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), (LenVec($t3) + LenVec($t4)));

    // assert Eq<vector<#0>>(Slice($t0, Range(0, Len<#0>($t3))), $t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:155:9+36
    assume {:print "$at(2,5828,5864)"} true;
    assert {:msg "assert_failed(2,5828,5864): post-condition does not hold"}
      $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range(0, LenVec($t3))), $t3);

    // assert Eq<vector<#0>>(Slice($t0, Range(Len<#0>($t3), Len<#0>($t0))), $t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:156:9+40
    assume {:print "$at(2,5873,5913)"} true;
    assert {:msg "assert_failed(2,5873,5913): post-condition does not hold"}
      $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range(LenVec($t3), LenVec($Dereference($t0)))), $t4);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:156:9+40
    $ret0 := $t0;
    return;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:152:5+1
    assume {:print "$at(2,5741,5742)"} true;
L6:

    // abort($t18) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:152:5+1
    $abort_code := $t18;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_contains [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:221:5+440
procedure {:timeLimit 40} $42_VerifyVector_verify_contains$verify(_$t0: Vec (#0), _$t1: #0) returns ($ret0: bool)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: #0;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: bool;
    var $t14: bool;
    var $t0: Vec (#0);
    var $t1: #0;
    var $temp_0'#0': #0;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:240:17+6
    assume {:print "$at(2,8922,8928)"} true;
    assume $IsValid'vec'#0''($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:240:17+6
    assume $IsValid'#0'($t1);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:221:5+1
    assume {:print "$at(2,8413,8414)"} true;
    assume {:print "$track_local(1,1,0):", $t0} $t0 == $t0;

    // trace_local[e]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:221:5+1
    assume {:print "$track_local(1,1,1):", $t1} $t1 == $t1;

    // $t4 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:222:17+1
    assume {:print "$at(2,8500,8501)"} true;
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // trace_local[i]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:222:13+1
    assume {:print "$track_local(1,1,2):", $t4} $t4 == $t4;

    // $t5 := Vector::length<#0>($t0) on_abort goto L9 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:223:19+17
    assume {:print "$at(2,8521,8538)"} true;
    call $t5 := $1_Vector_length'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,8521,8538)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,1):", $t6} $t6 == $t6;
        goto L9;
    }

    // trace_local[len]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:223:13+3
    assume {:print "$track_local(1,1,3):", $t5} $t5 == $t5;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:225:13+72
    assume {:print "$at(2,8569,8641)"} true;
L6:

    // assert Not(exists j: Range(0, $t4): Eq<#0>(Index($t0, j), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    assume {:print "$at(2,8591,8627)"} true;
    assert {:msg "assert_failed(2,8591,8627): base case of the loop invariant does not hold"}
      !(var $range_0 := $Range(0, $t4); (exists $i_1: int :: $InRange($range_0, $i_1) && (var j := $i_1;
    ($IsEqual'#0'(ReadVec($t0, j), $t1)))));

    // havoc[val]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    havoc $t7;
    assume $IsValid'bool'($t7);

    // havoc[val]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    havoc $t8;
    assume $IsValid'#0'($t8);

    // havoc[val]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    havoc $t9;
    assume $IsValid'bool'($t9);

    // havoc[val]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    havoc $t10;
    assume $IsValid'u64'($t10);

    // havoc[val]($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    havoc $t11;
    assume $IsValid'u64'($t11);

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    assume !$abort_flag;

    // assume Not(exists j: Range(0, $t4): Eq<#0>(Index($t0, j), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    assume !(var $range_0 := $Range(0, $t4); (exists $i_1: int :: $InRange($range_0, $i_1) && (var j := $i_1;
    ($IsEqual'#0'(ReadVec($t0, j), $t1)))));

    // $t7 := <($t4, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:228:15+1
    assume {:print "$at(2,8657,8658)"} true;
    call $t7 := $Lt($t4, $t5);

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:224:9+216
    assume {:print "$at(2,8548,8764)"} true;
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:224:9+216
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:224:9+216
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:32+1
    assume {:print "$at(2,8707,8708)"} true;
L0:

    // $t8 := Vector::borrow<#0>($t0, $t4) on_abort goto L9 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:17+20
    call $t8 := $1_Vector_borrow'#0'($t0, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,8692,8712)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,1):", $t6} $t6 == $t6;
        goto L9;
    }

    // $t9 := ==($t8, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:38+2
    $t9 := $IsEqual'#0'($t8, $t1);

    // if ($t9) goto L3 else goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:13+42
    if ($t9) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:13+42
L4:

    // goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:13+42
    goto L5;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:44+11
L3:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:44+11

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:44+11

    // $t12 := true at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:51+4
    $t12 := true;
    assume $IsValid'bool'($t12);

    // trace_return[0]($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:44+11
    assume {:print "$track_return(1,1,0):", $t12} $t12 == $t12;

    // $t13 := move($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:44+11
    $t13 := $t12;

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:230:44+11
    goto L8;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:231:17+1
    assume {:print "$at(2,8748,8749)"} true;
L5:

    // $t10 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:231:21+1
    $t10 := 1;
    assume $IsValid'u64'($t10);

    // $t11 := +($t4, $t10) on_abort goto L9 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:231:19+1
    call $t11 := $AddU64($t4, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,8750,8751)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,1):", $t6} $t6 == $t6;
        goto L9;
    }

    // trace_local[i]($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:231:13+1
    assume {:print "$track_local(1,1,2):", $t11} $t11 == $t11;

    // goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:231:22+1
    goto L7;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:233:9+58
    assume {:print "$at(2,8774,8832)"} true;
L2:

    // assert Not(exists x: $t0: Eq<#0>(x, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:234:12+30
    assume {:print "$at(2,8792,8822)"} true;
    assert {:msg "assert_failed(2,8792,8822): unknown assertion failed"}
      !(var $range_0 := $t0; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var x := ReadVec($range_0, $i_1);
    ($IsEqual'#0'(x, $t1)))));

    // $t14 := false at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:236:9+5
    assume {:print "$at(2,8842,8847)"} true;
    $t14 := false;
    assume $IsValid'bool'($t14);

    // trace_return[0]($t14) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:236:9+5
    assume {:print "$track_return(1,1,0):", $t14} $t14 == $t14;

    // $t13 := move($t14) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:236:9+5
    $t13 := $t14;

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:236:9+5
    goto L8;

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:233:9+58
    // Loop invariant checking block for the loop started with header: L6
    assume {:print "$at(2,8774,8832)"} true;
L7:

    // assert Not(exists j: Range(0, $t11): Eq<#0>(Index($t0, j), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    assume {:print "$at(2,8591,8627)"} true;
    assert {:msg "assert_failed(2,8591,8627): induction case of the loop invariant does not hold"}
      !(var $range_0 := $Range(0, $t11); (exists $i_1: int :: $InRange($range_0, $i_1) && (var j := $i_1;
    ($IsEqual'#0'(ReadVec($t0, j), $t1)))));

    // stop() at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:226:16+36
    assume false;
    return;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:237:5+1
    assume {:print "$at(2,8852,8853)"} true;
L8:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:239:9+16
    assume {:print "$at(2,8889,8905)"} true;
    assert {:msg "assert_failed(2,8889,8905): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t13, exists x: $t0: Eq<#0>(x, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:240:9+40
    assume {:print "$at(2,8914,8954)"} true;
    assert {:msg "assert_failed(2,8914,8954): post-condition does not hold"}
      $IsEqual'bool'($t13, (var $range_0 := $t0; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var x := ReadVec($range_0, $i_1);
    ($IsEqual'#0'(x, $t1))))));

    // return $t13 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:240:9+40
    $ret0 := $t13;
    return;

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:237:5+1
    assume {:print "$at(2,8852,8853)"} true;
L9:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:238:5+102
    assume {:print "$at(2,8858,8960)"} true;
    assert {:msg "assert_failed(2,8858,8960): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:238:5+102
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_index_of [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:187:5+390
procedure {:timeLimit 40} $42_VerifyVector_verify_index_of$verify(_$t0: Vec (#0), _$t1: #0) returns ($ret0: bool, $ret1: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: #0;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: bool;
    var $t14: int;
    var $t15: bool;
    var $t16: int;
    var $t0: Vec (#0);
    var $t1: #0;
    var $temp_0'#0': #0;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:206:31+8
    assume {:print "$at(2,7720,7728)"} true;
    assume $IsValid'vec'#0''($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:206:31+8
    assume $IsValid'#0'($t1);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:187:5+1
    assume {:print "$at(2,6976,6977)"} true;
    assume {:print "$track_local(1,2,0):", $t0} $t0 == $t0;

    // trace_local[e]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:187:5+1
    assume {:print "$track_local(1,2,1):", $t1} $t1 == $t1;

    // $t4 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:188:17+1
    assume {:print "$at(2,7070,7071)"} true;
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // trace_local[i]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:188:13+1
    assume {:print "$track_local(1,2,2):", $t4} $t4 == $t4;

    // $t5 := Vector::length<#0>($t0) on_abort goto L9 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:189:19+17
    assume {:print "$at(2,7091,7108)"} true;
    call $t5 := $1_Vector_length'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,7091,7108)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,2):", $t6} $t6 == $t6;
        goto L9;
    }

    // trace_local[len]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:189:13+3
    assume {:print "$track_local(1,2,3):", $t5} $t5 == $t5;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:191:13+73
    assume {:print "$at(2,7139,7212)"} true;
L6:

    // assert Not(exists j: Range(0, $t4): Eq<#0>(Index($t0, j), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    assume {:print "$at(2,7162,7198)"} true;
    assert {:msg "assert_failed(2,7162,7198): base case of the loop invariant does not hold"}
      !(var $range_0 := $Range(0, $t4); (exists $i_1: int :: $InRange($range_0, $i_1) && (var j := $i_1;
    ($IsEqual'#0'(ReadVec($t0, j), $t1)))));

    // havoc[val]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    havoc $t7;
    assume $IsValid'bool'($t7);

    // havoc[val]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    havoc $t8;
    assume $IsValid'#0'($t8);

    // havoc[val]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    havoc $t9;
    assume $IsValid'bool'($t9);

    // havoc[val]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    havoc $t10;
    assume $IsValid'u64'($t10);

    // havoc[val]($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    havoc $t11;
    assume $IsValid'u64'($t11);

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    assume !$abort_flag;

    // assume Not(exists j: Range(0, $t4): Eq<#0>(Index($t0, j), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    assume !(var $range_0 := $Range(0, $t4); (exists $i_1: int :: $InRange($range_0, $i_1) && (var j := $i_1;
    ($IsEqual'#0'(ReadVec($t0, j), $t1)))));

    // $t7 := <($t4, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:194:15+1
    assume {:print "$at(2,7228,7229)"} true;
    call $t7 := $Lt($t4, $t5);

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:190:9+222
    assume {:print "$at(2,7118,7340)"} true;
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:190:9+222
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:190:9+222
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:32+1
    assume {:print "$at(2,7278,7279)"} true;
L0:

    // $t8 := Vector::borrow<#0>($t0, $t4) on_abort goto L9 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:17+20
    call $t8 := $1_Vector_borrow'#0'($t0, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,7263,7283)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,2):", $t6} $t6 == $t6;
        goto L9;
    }

    // $t9 := ==($t8, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:38+2
    $t9 := $IsEqual'#0'($t8, $t1);

    // if ($t9) goto L3 else goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:13+47
    if ($t9) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:13+47
L4:

    // goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:13+47
    goto L5;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:44+16
L3:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:44+16

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:44+16

    // $t12 := true at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:52+4
    $t12 := true;
    assume $IsValid'bool'($t12);

    // trace_return[0]($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:44+16
    assume {:print "$track_return(1,2,0):", $t12} $t12 == $t12;

    // trace_return[1]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:44+16
    assume {:print "$track_return(1,2,1):", $t4} $t4 == $t4;

    // $t13 := move($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:44+16
    $t13 := $t12;

    // $t14 := move($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:44+16
    $t14 := $t4;

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:196:44+16
    goto L8;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:197:17+1
    assume {:print "$at(2,7324,7325)"} true;
L5:

    // $t10 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:197:21+1
    $t10 := 1;
    assume $IsValid'u64'($t10);

    // $t11 := +($t4, $t10) on_abort goto L9 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:197:19+1
    call $t11 := $AddU64($t4, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,7326,7327)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,2):", $t6} $t6 == $t6;
        goto L9;
    }

    // trace_local[i]($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:197:13+1
    assume {:print "$track_local(1,2,2):", $t11} $t11 == $t11;

    // goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:197:22+1
    goto L7;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:9+10
    assume {:print "$at(2,7350,7360)"} true;
L2:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:9+10

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:9+10

    // $t15 := false at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:10+5
    $t15 := false;
    assume $IsValid'bool'($t15);

    // $t16 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:17+1
    $t16 := 0;
    assume $IsValid'u64'($t16);

    // trace_return[0]($t15) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:9+10
    assume {:print "$track_return(1,2,0):", $t15} $t15 == $t15;

    // trace_return[1]($t16) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:9+10
    assume {:print "$track_return(1,2,1):", $t16} $t16 == $t16;

    // $t13 := move($t15) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:9+10
    $t13 := $t15;

    // $t14 := move($t16) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:9+10
    $t14 := $t16;

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:9+10
    goto L8;

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:199:9+10
    // Loop invariant checking block for the loop started with header: L6
L7:

    // assert Not(exists j: Range(0, $t11): Eq<#0>(Index($t0, j), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    assume {:print "$at(2,7162,7198)"} true;
    assert {:msg "assert_failed(2,7162,7198): induction case of the loop invariant does not hold"}
      !(var $range_0 := $Range(0, $t11); (exists $i_1: int :: $InRange($range_0, $i_1) && (var j := $i_1;
    ($IsEqual'#0'(ReadVec($t0, j), $t1)))));

    // stop() at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:192:17+36
    assume false;
    return;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:200:5+1
    assume {:print "$at(2,7365,7366)"} true;
L8:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:202:9+16
    assume {:print "$at(2,7402,7418)"} true;
    assert {:msg "assert_failed(2,7402,7418): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t13, exists x: $t0: Eq<#0>(x, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:203:9+42
    assume {:print "$at(2,7427,7469)"} true;
    assert {:msg "assert_failed(2,7427,7469): post-condition does not hold"}
      $IsEqual'bool'($t13, (var $range_0 := $t0; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var x := ReadVec($range_0, $i_1);
    ($IsEqual'#0'(x, $t1))))));

    // assert Implies($t13, Eq<#0>(Index($t0, $t14), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:204:9+38
    assume {:print "$at(2,7509,7547)"} true;
    assert {:msg "assert_failed(2,7509,7547): post-condition does not hold"}
      ($t13 ==> $IsEqual'#0'(ReadVec($t0, $t14), $t1));

    // assert Implies($t13, forall i: Range(0, $t14): Neq<#0>(Index($t0, i), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:205:9+56
    assume {:print "$at(2,7604,7660)"} true;
    assert {:msg "assert_failed(2,7604,7660): post-condition does not hold"}
      ($t13 ==> (var $range_0 := $Range(0, $t14); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    (!$IsEqual'#0'(ReadVec($t0, i), $t1))))));

    // assert Implies(Not($t13), Eq<u64>($t14, 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:206:9+36
    assume {:print "$at(2,7698,7734)"} true;
    assert {:msg "assert_failed(2,7698,7734): post-condition does not hold"}
      (!$t13 ==> $IsEqual'u64'($t14, 0));

    // return ($t13, $t14) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:206:9+36
    $ret0 := $t13;
    $ret1 := $t14;
    return;

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:200:5+1
    assume {:print "$at(2,7365,7366)"} true;
L9:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:201:5+405
    assume {:print "$at(2,7371,7776)"} true;
    assert {:msg "assert_failed(2,7371,7776): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:201:5+405
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_is_empty [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:170:5+94
procedure {:timeLimit 40} $42_VerifyVector_verify_is_empty$verify(_$t0: Vec (#0)) returns ($ret0: bool)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t0: Vec (#0);
    var $temp_0'bool': bool;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:174:17+6
    assume {:print "$at(2,6563,6569)"} true;
    assume $IsValid'vec'#0''($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:170:5+1
    assume {:print "$at(2,6425,6426)"} true;
    assume {:print "$track_local(1,3,0):", $t0} $t0 == $t0;

    // $t1 := Vector::length<#0>($t0) on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:171:9+17
    assume {:print "$at(2,6491,6508)"} true;
    call $t1 := $1_Vector_length'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,6491,6508)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,3):", $t2} $t2 == $t2;
        goto L2;
    }

    // $t3 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:171:30+1
    $t3 := 0;
    assume $IsValid'u64'($t3);

    // $t4 := ==($t1, $t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:171:27+2
    $t4 := $IsEqual'u64'($t1, $t3);

    // trace_return[0]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:171:9+22
    assume {:print "$track_return(1,3,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:172:5+1
    assume {:print "$at(2,6518,6519)"} true;
L1:

    // assert Eq<bool>($t4, Eq<num>(Len<#0>($t0), 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:174:9+32
    assume {:print "$at(2,6555,6587)"} true;
    assert {:msg "assert_failed(2,6555,6587): post-condition does not hold"}
      $IsEqual'bool'($t4, $IsEqual'num'(LenVec($t0), 0));

    // return $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:174:9+32
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:172:5+1
    assume {:print "$at(2,6518,6519)"} true;
L2:

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:172:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_append [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:160:5+168
procedure {:timeLimit 40} $42_VerifyVector_verify_model_append$verify(_$t0: $Mutation (Vec (#0)), _$t1: Vec (#0)) returns ($ret0: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t2: Vec (#0);
    var $t3: int;
    var $t0: $Mutation (Vec (#0));
    var $t1: Vec (#0);
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:160:5+168
    assume {:print "$at(2,6003,6171)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:160:5+168
    assume $IsValid'vec'#0''($t1);

    // $t2 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:160:5+1
    $t2 := $Dereference($t0);

    // trace_local[lhs]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:160:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,4,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // trace_local[other]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:160:5+1
    assume {:print "$track_local(1,4,1):", $t1} $t1 == $t1;

    // Vector::append<#0>($t0, $t1) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:161:9+26
    assume {:print "$at(2,6097,6123)"} true;
    call $t0 := $1_Vector_append'#0'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,6097,6123)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,4):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[lhs]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:161:9+26
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,4,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:162:5+1
    assume {:print "$at(2,6170,6171)"} true;
L1:

    // assert Eq<num>(Len<#0>($t0), Add(Len<#0>($t2), Len<#0>($t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:164:9+47
    assume {:print "$at(2,6211,6258)"} true;
    assert {:msg "assert_failed(2,6211,6258): post-condition does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), (LenVec($t2) + LenVec($t1)));

    // assert Eq<vector<#0>>(Slice($t0, Range(0, Len<#0>($t2))), $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:165:9+42
    assume {:print "$at(2,6267,6309)"} true;
    assert {:msg "assert_failed(2,6267,6309): post-condition does not hold"}
      $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range(0, LenVec($t2))), $t2);

    // assert Eq<vector<#0>>(Slice($t0, Range(Len<#0>($t2), Len<#0>($t0))), $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:166:9+46
    assume {:print "$at(2,6318,6364)"} true;
    assert {:msg "assert_failed(2,6318,6364): post-condition does not hold"}
      $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range(LenVec($t2), LenVec($Dereference($t0)))), $t1);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:166:9+46
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:162:5+1
    assume {:print "$at(2,6170,6171)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:162:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_borrow [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:29:5+150
procedure {:timeLimit 40} $42_VerifyVector_verify_model_borrow$verify(_$t0: Vec (#0), _$t1: int) returns ($ret0: #0)
{
    // declare local variables
    var $t2: #0;
    var $t3: int;
    var $t0: Vec (#0);
    var $t1: int;
    var $temp_0'#0': #0;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:34:17+6
    assume {:print "$at(2,1383,1389)"} true;
    assume $IsValid'vec'#0''($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:34:17+6
    assume $IsValid'u64'($t1);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:29:5+1
    assume {:print "$at(2,1154,1155)"} true;
    assume {:print "$track_local(1,5,0):", $t0} $t0 == $t0;

    // trace_local[i]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:29:5+1
    assume {:print "$track_local(1,5,1):", $t1} $t1 == $t1;

    // $t2 := Vector::borrow<#0>($t0, $t1) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:30:9+20
    assume {:print "$at(2,1236,1256)"} true;
    call $t2 := $1_Vector_borrow'#0'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,1236,1256)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,5):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:30:9+20
    assume {:print "$track_return(1,5,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:31:5+1
    assume {:print "$at(2,1303,1304)"} true;
L1:

    // assert Not(Ge($t1, Len<#0>($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:33:9+22
    assume {:print "$at(2,1344,1366)"} true;
    assert {:msg "assert_failed(2,1344,1366): function does not abort under this condition"}
      !($t1 >= LenVec($t0));

    // assert Eq<#0>($t2, Index($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:34:9+23
    assume {:print "$at(2,1375,1398)"} true;
    assert {:msg "assert_failed(2,1375,1398): post-condition does not hold"}
      $IsEqual'#0'($t2, ReadVec($t0, $t1));

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:34:9+23
    $ret0 := $t2;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:31:5+1
    assume {:print "$at(2,1303,1304)"} true;
L2:

    // assert Ge($t1, Len<#0>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:32:5+112
    assume {:print "$at(2,1309,1421)"} true;
    assert {:msg "assert_failed(2,1309,1421): abort not covered by any of the `aborts_if` clauses"}
      ($t1 >= LenVec($t0));

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:32:5+112
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_borrow_mut [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:48:5+166
procedure {:timeLimit 40} $42_VerifyVector_verify_model_borrow_mut$verify(_$t0: $Mutation (Vec (#0)), _$t1: int) returns ($ret0: $Mutation (#0), $ret1: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t2: Vec (#0);
    var $t3: $Mutation (#0);
    var $t4: int;
    var $t0: $Mutation (Vec (#0));
    var $t1: int;
    var $temp_0'#0': #0;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t3));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:53:17+6
    assume {:print "$at(2,2130,2136)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:53:17+6
    assume $IsValid'u64'($t1);

    // $t2 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:48:5+1
    assume {:print "$at(2,1881,1882)"} true;
    $t2 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:48:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,6,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // trace_local[i]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:48:5+1
    assume {:print "$track_local(1,6,1):", $t1} $t1 == $t1;

    // $t3 := Vector::borrow_mut<#0>($t0, $t1) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:49:9+24
    assume {:print "$at(2,1975,1999)"} true;
    call $t3,$t0 := $1_Vector_borrow_mut'#0'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,1975,1999)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(1,6):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_return[0]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:49:9+24
    $temp_0'#0' := $Dereference($t3);
    assume {:print "$track_return(1,6,0):", $temp_0'#0'} $temp_0'#0' == $temp_0'#0';

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:49:9+24
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,6,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:50:5+1
    assume {:print "$at(2,2046,2047)"} true;
L1:

    // assert Not(Ge($t1, Len<#0>($t2))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:52:9+22
    assume {:print "$at(2,2091,2113)"} true;
    assert {:msg "assert_failed(2,2091,2113): function does not abort under this condition"}
      !($t1 >= LenVec($t2));

    // assert Eq<#0>($t3, Index($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:53:9+23
    assume {:print "$at(2,2122,2145)"} true;
    assert {:msg "assert_failed(2,2122,2145): post-condition does not hold"}
      $IsEqual'#0'($Dereference($t3), ReadVec($Dereference($t0), $t1));

    // return $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:53:9+23
    $ret0 := $t3;
    $ret1 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:50:5+1
    assume {:print "$at(2,2046,2047)"} true;
L2:

    // assert Ge($t1, Len<#0>($t2)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:51:5+116
    assume {:print "$at(2,2052,2168)"} true;
    assert {:msg "assert_failed(2,2052,2168): abort not covered by any of the `aborts_if` clauses"}
      ($t1 >= LenVec($t2));

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:51:5+116
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_contains [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:244:5+156
procedure {:timeLimit 40} $42_VerifyVector_verify_model_contains$verify(_$t0: Vec (#0), _$t1: #0) returns ($ret0: bool)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t0: Vec (#0);
    var $t1: #0;
    var $temp_0'#0': #0;
    var $temp_0'bool': bool;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:249:17+6
    assume {:print "$at(2,9244,9250)"} true;
    assume $IsValid'vec'#0''($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:249:17+6
    assume $IsValid'#0'($t1);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:244:5+1
    assume {:print "$at(2,9013,9014)"} true;
    assume {:print "$track_local(1,7,0):", $t0} $t0 == $t0;

    // trace_local[e]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:244:5+1
    assume {:print "$track_local(1,7,1):", $t1} $t1 == $t1;

    // $t2 := Vector::contains<#0>($t0, $t1) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:245:9+22
    assume {:print "$at(2,9098,9120)"} true;
    call $t2 := $1_Vector_contains'#0'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,9098,9120)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,7):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:245:9+22
    assume {:print "$track_return(1,7,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:246:5+1
    assume {:print "$at(2,9168,9169)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:248:9+16
    assume {:print "$at(2,9211,9227)"} true;
    assert {:msg "assert_failed(2,9211,9227): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t2, exists x: $t0: Eq<#0>(x, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:249:9+40
    assume {:print "$at(2,9236,9276)"} true;
    assert {:msg "assert_failed(2,9236,9276): post-condition does not hold"}
      $IsEqual'bool'($t2, (var $range_0 := $t0; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var x := ReadVec($range_0, $i_1);
    ($IsEqual'#0'(x, $t1))))));

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:249:9+40
    $ret0 := $t2;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:246:5+1
    assume {:print "$at(2,9168,9169)"} true;
L2:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:247:5+108
    assume {:print "$at(2,9174,9282)"} true;
    assert {:msg "assert_failed(2,9174,9282): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:247:5+108
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_destroy_empty [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:68:5+143
procedure {:timeLimit 40} $42_VerifyVector_verify_model_destroy_empty$verify(_$t0: Vec (#0)) returns ()
{
    // declare local variables
    var $t1: int;
    var $t0: Vec (#0);
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:68:5+143
    assume {:print "$at(2,2650,2793)"} true;
    assume $IsValid'vec'#0''($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:68:5+1
    assume {:print "$track_local(1,8,0):", $t0} $t0 == $t0;

    // Vector::destroy_empty<#0>($t0) on_abort goto L2 with $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:69:9+24
    assume {:print "$at(2,2720,2744)"} true;
    call $1_Vector_destroy_empty'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,2720,2744)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,8):", $t1} $t1 == $t1;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:70:5+1
    assume {:print "$at(2,2792,2793)"} true;
L1:

    // assert Not(Gt(Len<#0>($t0), 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:72:9+21
    assume {:print "$at(2,2840,2861)"} true;
    assert {:msg "assert_failed(2,2840,2861): function does not abort under this condition"}
      !(LenVec($t0) > 0);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:72:9+21
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:70:5+1
    assume {:print "$at(2,2792,2793)"} true;
L2:

    // assert Gt(Len<#0>($t0), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:71:5+101
    assume {:print "$at(2,2798,2899)"} true;
    assert {:msg "assert_failed(2,2798,2899): abort not covered by any of the `aborts_if` clauses"}
      (LenVec($t0) > 0);

    // abort($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:71:5+101
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_empty [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:13:5+134
procedure {:timeLimit 40} $42_VerifyVector_verify_model_empty$verify() returns ($ret0: Vec (#0))
{
    // declare local variables
    var $t0: Vec (#0);
    var $t1: int;
    var $temp_0'vec'#0'': Vec (#0);

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<#0>() on_abort goto L2 with $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:14:9+24
    assume {:print "$at(2,683,707)"} true;
    call $t0 := $1_Vector_empty'#0'();
    if ($abort_flag) {
        assume {:print "$at(2,683,707)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(1,9):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:14:9+24
    assume {:print "$track_return(1,9,0):", $t0} $t0 == $t0;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:15:5+1
    assume {:print "$at(2,754,755)"} true;
L1:

    // assert Eq<num>(Len<#0>($t0), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:17:9+25
    assume {:print "$at(2,794,819)"} true;
    assert {:msg "assert_failed(2,794,819): post-condition does not hold"}
      $IsEqual'num'(LenVec($t0), 0);

    // return $t0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:17:9+25
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:15:5+1
    assume {:print "$at(2,754,755)"} true;
L2:

    // abort($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:15:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_index_of [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:209:5+162
procedure {:timeLimit 40} $42_VerifyVector_verify_model_index_of$verify(_$t0: Vec (#0), _$t1: #0) returns ($ret0: bool, $ret1: int)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t0: Vec (#0);
    var $t1: #0;
    var $temp_0'#0': #0;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:217:31+8
    assume {:print "$at(2,8304,8312)"} true;
    assume $IsValid'vec'#0''($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:217:31+8
    assume $IsValid'#0'($t1);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:209:5+1
    assume {:print "$at(2,7782,7783)"} true;
    assume {:print "$track_local(1,10,0):", $t0} $t0 == $t0;

    // trace_local[e]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:209:5+1
    assume {:print "$track_local(1,10,1):", $t1} $t1 == $t1;

    // ($t2, $t3) := Vector::index_of<#0>($t0, $t1) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:210:9+22
    assume {:print "$at(2,7874,7896)"} true;
    call $t2,$t3 := $1_Vector_index_of'#0'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,7874,7896)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(1,10):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:210:9+22
    assume {:print "$track_return(1,10,0):", $t2} $t2 == $t2;

    // trace_return[1]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:210:9+22
    assume {:print "$track_return(1,10,1):", $t3} $t3 == $t3;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:211:5+1
    assume {:print "$at(2,7943,7944)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:213:9+16
    assume {:print "$at(2,7986,8002)"} true;
    assert {:msg "assert_failed(2,7986,8002): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t2, exists x: $t0: Eq<#0>(x, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:214:9+42
    assume {:print "$at(2,8011,8053)"} true;
    assert {:msg "assert_failed(2,8011,8053): post-condition does not hold"}
      $IsEqual'bool'($t2, (var $range_0 := $t0; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var x := ReadVec($range_0, $i_1);
    ($IsEqual'#0'(x, $t1))))));

    // assert Implies($t2, Eq<#0>(Index($t0, $t3), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:215:9+38
    assume {:print "$at(2,8093,8131)"} true;
    assert {:msg "assert_failed(2,8093,8131): post-condition does not hold"}
      ($t2 ==> $IsEqual'#0'(ReadVec($t0, $t3), $t1));

    // assert Implies($t2, forall i: Range(0, $t3): Neq<#0>(Index($t0, i), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:216:9+56
    assume {:print "$at(2,8188,8244)"} true;
    assert {:msg "assert_failed(2,8188,8244): post-condition does not hold"}
      ($t2 ==> (var $range_0 := $Range(0, $t3); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    (!$IsEqual'#0'(ReadVec($t0, i), $t1))))));

    // assert Implies(Not($t2), Eq<u64>($t3, 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:217:9+36
    assume {:print "$at(2,8282,8318)"} true;
    assert {:msg "assert_failed(2,8282,8318): post-condition does not hold"}
      (!$t2 ==> $IsEqual'u64'($t3, 0));

    // return ($t2, $t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:217:9+36
    $ret0 := $t2;
    $ret1 := $t3;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:211:5+1
    assume {:print "$at(2,7943,7944)"} true;
L2:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:212:5+411
    assume {:print "$at(2,7949,8360)"} true;
    assert {:msg "assert_failed(2,7949,8360): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:212:5+411
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_is_empty [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:178:5+139
procedure {:timeLimit 40} $42_VerifyVector_verify_model_is_empty$verify(_$t0: Vec (#0)) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t0: Vec (#0);
    var $temp_0'bool': bool;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:182:17+6
    assume {:print "$at(2,6837,6843)"} true;
    assume $IsValid'vec'#0''($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:178:5+1
    assume {:print "$at(2,6648,6649)"} true;
    assume {:print "$track_local(1,11,0):", $t0} $t0 == $t0;

    // $t1 := Vector::is_empty<#0>($t0) on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:179:9+19
    assume {:print "$at(2,6720,6739)"} true;
    call $t1 := $1_Vector_is_empty'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,6720,6739)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,11):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_return[0]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:179:9+19
    assume {:print "$track_return(1,11,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:180:5+1
    assume {:print "$at(2,6786,6787)"} true;
L1:

    // assert Eq<bool>($t1, Eq<num>(Len<#0>($t0), 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:182:9+32
    assume {:print "$at(2,6829,6861)"} true;
    assert {:msg "assert_failed(2,6829,6861): post-condition does not hold"}
      $IsEqual'bool'($t1, $IsEqual'num'(LenVec($t0), 0));

    // return $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:182:9+32
    $ret0 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:180:5+1
    assume {:print "$at(2,6786,6787)"} true;
L2:

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:180:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_length [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:21:5+134
procedure {:timeLimit 40} $42_VerifyVector_verify_model_length$verify(_$t0: Vec (#0)) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t0: Vec (#0);
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:25:17+6
    assume {:print "$at(2,1053,1059)"} true;
    assume $IsValid'vec'#0''($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:21:5+1
    assume {:print "$at(2,871,872)"} true;
    assume {:print "$track_local(1,12,0):", $t0} $t0 == $t0;

    // $t1 := Vector::length<#0>($t0) on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:22:9+17
    assume {:print "$at(2,940,957)"} true;
    call $t1 := $1_Vector_length'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,940,957)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,12):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_return[0]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:22:9+17
    assume {:print "$track_return(1,12,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:23:5+1
    assume {:print "$at(2,1004,1005)"} true;
L1:

    // assert Eq<u64>($t1, Len<#0>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:25:9+25
    assume {:print "$at(2,1045,1070)"} true;
    assert {:msg "assert_failed(2,1045,1070): post-condition does not hold"}
      $IsEqual'u64'($t1, LenVec($t0));

    // return $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:25:9+25
    $ret0 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:23:5+1
    assume {:print "$at(2,1004,1005)"} true;
L2:

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:23:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_pop_back [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:57:5+146
procedure {:timeLimit 40} $42_VerifyVector_verify_model_pop_back$verify(_$t0: $Mutation (Vec (#0))) returns ($ret0: #0, $ret1: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t1: Vec (#0);
    var $t2: #0;
    var $t3: int;
    var $t0: $Mutation (Vec (#0));
    var $temp_0'#0': #0;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:63:17+6
    assume {:print "$at(2,2520,2526)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // $t1 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:57:5+1
    assume {:print "$at(2,2250,2251)"} true;
    $t1 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:57:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,13,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // $t2 := Vector::pop_back<#0>($t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:58:9+19
    assume {:print "$at(2,2329,2348)"} true;
    call $t2,$t0 := $1_Vector_pop_back'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,2329,2348)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,13):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:58:9+19
    assume {:print "$track_return(1,13,0):", $t2} $t2 == $t2;

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:58:9+19
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,13,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:59:5+1
    assume {:print "$at(2,2395,2396)"} true;
L1:

    // assert Not(Eq<num>(Len<#0>($t1), 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:61:9+22
    assume {:print "$at(2,2438,2460)"} true;
    assert {:msg "assert_failed(2,2438,2460): function does not abort under this condition"}
      !$IsEqual'num'(LenVec($t1), 0);

    // assert Eq<num>(Len<#0>($t0), Sub(Len<#0>($t1), 1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:62:9+34
    assume {:print "$at(2,2469,2503)"} true;
    assert {:msg "assert_failed(2,2469,2503): post-condition does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), (LenVec($t1) - 1));

    // assert Eq<#0>($t2, Index($t1, Sub(Len<#0>($t1), 1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:63:9+35
    assume {:print "$at(2,2512,2547)"} true;
    assert {:msg "assert_failed(2,2512,2547): post-condition does not hold"}
      $IsEqual'#0'($t2, ReadVec($t1, (LenVec($t1) - 1)));

    // assert Eq<vector<#0>>($t0, Slice($t1, Range(0, Sub(Len<#0>($t1), 1)))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:64:9+35
    assume {:print "$at(2,2556,2591)"} true;
    assert {:msg "assert_failed(2,2556,2591): post-condition does not hold"}
      $IsEqual'vec'#0''($Dereference($t0), $SliceVecByRange($t1, $Range(0, (LenVec($t1) - 1))));

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:64:9+35
    $ret0 := $t2;
    $ret1 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:59:5+1
    assume {:print "$at(2,2395,2396)"} true;
L2:

    // assert Eq<num>(Len<#0>($t1), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:60:5+196
    assume {:print "$at(2,2401,2597)"} true;
    assert {:msg "assert_failed(2,2401,2597): abort not covered by any of the `aborts_if` clauses"}
      $IsEqual'num'(LenVec($t1), 0);

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:60:5+196
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_push_back [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:38:5+155
procedure {:timeLimit 40} $42_VerifyVector_verify_model_push_back$verify(_$t0: $Mutation (Vec (#0)), _$t1: #0) returns ($ret0: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t2: Vec (#0);
    var $t3: int;
    var $t0: $Mutation (Vec (#0));
    var $t1: #0;
    var $temp_0'#0': #0;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:38:5+155
    assume {:print "$at(2,1475,1630)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:38:5+155
    assume $IsValid'#0'($t1);

    // $t2 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:38:5+1
    $t2 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:38:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,14,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // trace_local[e]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:38:5+1
    assume {:print "$track_local(1,14,1):", $t1} $t1 == $t1;

    // Vector::push_back<#0>($t0, $t1) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:39:9+23
    assume {:print "$at(2,1558,1581)"} true;
    call $t0 := $1_Vector_push_back'#0'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,1558,1581)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,14):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:39:32+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,14,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:40:5+1
    assume {:print "$at(2,1629,1630)"} true;
L1:

    // assert Eq<num>(Len<#0>($t0), Add(Len<#0>($t2), 1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:42:9+34
    assume {:print "$at(2,1673,1707)"} true;
    assert {:msg "assert_failed(2,1673,1707): post-condition does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), (LenVec($t2) + 1));

    // assert Eq<#0>(Index($t0, Sub(Len<#0>($t0), 1)), $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:43:9+25
    assume {:print "$at(2,1716,1741)"} true;
    assert {:msg "assert_failed(2,1716,1741): post-condition does not hold"}
      $IsEqual'#0'(ReadVec($Dereference($t0), (LenVec($Dereference($t0)) - 1)), $t1);

    // assert Eq<vector<#0>>($t2, Slice($t0, Range(0, Sub(Len<#0>($t0), 1)))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:44:9+33
    assume {:print "$at(2,1750,1783)"} true;
    assert {:msg "assert_failed(2,1750,1783): post-condition does not hold"}
      $IsEqual'vec'#0''($t2, $SliceVecByRange($Dereference($t0), $Range(0, (LenVec($Dereference($t0)) - 1))));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:44:9+33
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:40:5+1
    assume {:print "$at(2,1629,1630)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:40:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_remove [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:287:5+154
procedure {:timeLimit 40} $42_VerifyVector_verify_model_remove$verify(_$t0: $Mutation (Vec (#0)), _$t1: int) returns ($ret0: #0, $ret1: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t2: Vec (#0);
    var $t3: #0;
    var $t4: int;
    var $t0: $Mutation (Vec (#0));
    var $t1: int;
    var $temp_0'#0': #0;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:295:30+6
    assume {:print "$at(2,10881,10887)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:295:30+6
    assume $IsValid'u64'($t1);

    // $t2 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:287:5+1
    assume {:print "$at(2,10498,10499)"} true;
    $t2 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:287:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,15,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // trace_local[i]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:287:5+1
    assume {:print "$track_local(1,15,1):", $t1} $t1 == $t1;

    // $t3 := Vector::remove<#0>($t0, $t1) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:288:9+20
    assume {:print "$at(2,10583,10603)"} true;
    call $t3,$t0 := $1_Vector_remove'#0'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,10583,10603)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(1,15):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_return[0]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:288:9+20
    assume {:print "$track_return(1,15,0):", $t3} $t3 == $t3;

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:288:9+20
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,15,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:289:5+1
    assume {:print "$at(2,10651,10652)"} true;
L1:

    // assert Not(Ge($t1, Len<#0>($t2))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:291:9+22
    assume {:print "$at(2,10692,10714)"} true;
    assert {:msg "assert_failed(2,10692,10714): function does not abort under this condition"}
      !($t1 >= LenVec($t2));

    // assert Eq<num>(Len<#0>($t0), Sub(Len<#0>($t2), 1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:292:9+34
    assume {:print "$at(2,10723,10757)"} true;
    assert {:msg "assert_failed(2,10723,10757): post-condition does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), (LenVec($t2) - 1));

    // assert Eq<vector<#0>>(Slice($t0, Range(0, $t1)), Slice($t2, Range(0, $t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:293:9+32
    assume {:print "$at(2,10766,10798)"} true;
    assert {:msg "assert_failed(2,10766,10798): post-condition does not hold"}
      $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range(0, $t1)), $SliceVecByRange($t2, $Range(0, $t1)));

    // assert Eq<vector<#0>>(Slice($t0, Range($t1, Len<#0>($t0))), Slice($t2, Range(Add($t1, 1), Len<#0>($t2)))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:294:9+44
    assume {:print "$at(2,10807,10851)"} true;
    assert {:msg "assert_failed(2,10807,10851): post-condition does not hold"}
      $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range($t1, LenVec($Dereference($t0)))), $SliceVecByRange($t2, $Range(($t1 + 1), LenVec($t2))));

    // assert Eq<#0>(Index($t2, $t1), $t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:295:9+28
    assume {:print "$at(2,10860,10888)"} true;
    assert {:msg "assert_failed(2,10860,10888): post-condition does not hold"}
      $IsEqual'#0'(ReadVec($t2, $t1), $t3);

    // return $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:295:9+28
    $ret0 := $t3;
    $ret1 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:289:5+1
    assume {:print "$at(2,10651,10652)"} true;
L2:

    // assert Ge($t1, Len<#0>($t2)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:290:5+237
    assume {:print "$at(2,10657,10894)"} true;
    assert {:msg "assert_failed(2,10657,10894): abort not covered by any of the `aborts_if` clauses"}
      ($t1 >= LenVec($t2));

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:290:5+237
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_reverse [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:126:5+136
procedure {:timeLimit 40} $42_VerifyVector_verify_model_reverse$verify(_$t0: $Mutation (Vec (#0))) returns ($ret0: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t1: Vec (#0);
    var $t2: int;
    var $t0: $Mutation (Vec (#0));
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:126:5+136
    assume {:print "$at(2,4663,4799)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // $t1 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:126:5+1
    $t1 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:126:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,16,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // Vector::reverse<#0>($t0) on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:127:9+18
    assume {:print "$at(2,4732,4750)"} true;
    call $t0 := $1_Vector_reverse'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,4732,4750)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,16):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:127:27+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,16,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:128:5+1
    assume {:print "$at(2,4798,4799)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:130:9+16
    assume {:print "$at(2,4840,4856)"} true;
    assert {:msg "assert_failed(2,4840,4856): function does not abort under this condition"}
      !false;

    // assert forall i: Range(0, Len<#0>($t0)): Eq<#0>(Index($t1, i), Index($t0, Sub(Sub(Len<#0>($t0), 1), i))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:131:9+58
    assume {:print "$at(2,4865,4923)"} true;
    assert {:msg "assert_failed(2,4865,4923): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ($IsEqual'#0'(ReadVec($t1, i), ReadVec($Dereference($t0), ((LenVec($Dereference($t0)) - 1) - i)))))));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:131:9+58
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:128:5+1
    assume {:print "$at(2,4798,4799)"} true;
L2:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:129:5+125
    assume {:print "$at(2,4804,4929)"} true;
    assert {:msg "assert_failed(2,4804,4929): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:129:5+125
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_swap [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:77:5+152
procedure {:timeLimit 40} $42_VerifyVector_verify_model_swap$verify(_$t0: $Mutation (Vec (#0)), _$t1: int, _$t2: int) returns ($ret0: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t3: Vec (#0);
    var $t4: int;
    var $t0: $Mutation (Vec (#0));
    var $t1: int;
    var $t2: int;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:77:5+152
    assume {:print "$at(2,2975,3127)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:77:5+152
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:77:5+152
    assume $IsValid'u64'($t2);

    // $t3 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:77:5+1
    $t3 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:77:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,17,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // trace_local[i]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:77:5+1
    assume {:print "$track_local(1,17,1):", $t1} $t1 == $t1;

    // trace_local[j]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:77:5+1
    assume {:print "$track_local(1,17,2):", $t2} $t2 == $t2;

    // Vector::swap<#0>($t0, $t1, $t2) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:78:9+21
    assume {:print "$at(2,3057,3078)"} true;
    call $t0 := $1_Vector_swap'#0'($t0, $t1, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,3057,3078)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(1,17):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:78:30+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,17,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:79:5+1
    assume {:print "$at(2,3126,3127)"} true;
L1:

    // assert Not(Ge($t1, Len<#0>($t3))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:81:9+22
    assume {:print "$at(2,3165,3187)"} true;
    assert {:msg "assert_failed(2,3165,3187): function does not abort under this condition"}
      !($t1 >= LenVec($t3));

    // assert Not(Ge($t2, Len<#0>($t3))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:82:9+22
    assume {:print "$at(2,3196,3218)"} true;
    assert {:msg "assert_failed(2,3196,3218): function does not abort under this condition"}
      !($t2 >= LenVec($t3));

    // assert Eq<vector<#0>>($t0, UpdateVec<#0>(UpdateVec<#0>($t3, $t1, Index($t3, $t2)), $t2, Index($t3, $t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:83:9+50
    assume {:print "$at(2,3227,3277)"} true;
    assert {:msg "assert_failed(2,3227,3277): post-condition does not hold"}
      $IsEqual'vec'#0''($Dereference($t0), UpdateVec(UpdateVec($t3, $t1, ReadVec($t3, $t2)), $t2, ReadVec($t3, $t1)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:83:9+50
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:79:5+1
    assume {:print "$at(2,3126,3127)"} true;
L2:

    // assert Or(Ge($t1, Len<#0>($t3)), Ge($t2, Len<#0>($t3))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:80:5+151
    assume {:print "$at(2,3132,3283)"} true;
    assert {:msg "assert_failed(2,3132,3283): abort not covered by any of the `aborts_if` clauses"}
      (($t1 >= LenVec($t3)) || ($t2 >= LenVec($t3)));

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:80:5+151
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_model_swap_remove [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:316:5+164
procedure {:timeLimit 40} $42_VerifyVector_verify_model_swap_remove$verify(_$t0: $Mutation (Vec (#0)), _$t1: int) returns ($ret0: #0, $ret1: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t2: Vec (#0);
    var $t3: #0;
    var $t4: int;
    var $t0: $Mutation (Vec (#0));
    var $t1: int;
    var $temp_0'#0': #0;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:323:30+6
    assume {:print "$at(2,12012,12018)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:323:30+6
    assume $IsValid'u64'($t1);

    // $t2 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:316:5+1
    assume {:print "$at(2,11644,11645)"} true;
    $t2 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:316:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,18,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // trace_local[i]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:316:5+1
    assume {:print "$track_local(1,18,1):", $t1} $t1 == $t1;

    // $t3 := Vector::swap_remove<#0>($t0, $t1) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:317:9+25
    assume {:print "$at(2,11734,11759)"} true;
    call $t3,$t0 := $1_Vector_swap_remove'#0'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,11734,11759)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(1,18):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_return[0]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:317:9+25
    assume {:print "$track_return(1,18,0):", $t3} $t3 == $t3;

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:317:9+25
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,18,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:318:5+1
    assume {:print "$at(2,11807,11808)"} true;
L1:

    // assert Not(Ge($t1, Len<#0>($t2))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:320:9+22
    assume {:print "$at(2,11853,11875)"} true;
    assert {:msg "assert_failed(2,11853,11875): function does not abort under this condition"}
      !($t1 >= LenVec($t2));

    // assert Eq<num>(Len<#0>($t0), Sub(Len<#0>($t2), 1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:321:9+34
    assume {:print "$at(2,11884,11918)"} true;
    assert {:msg "assert_failed(2,11884,11918): post-condition does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), (LenVec($t2) - 1));

    // assert Eq<vector<#0>>($t0, Slice(UpdateVec<#0>($t2, $t1, Index($t2, Sub(Len<#0>($t2), 1))), Range(0, Sub(Len<#0>($t2), 1)))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:322:9+55
    assume {:print "$at(2,11927,11982)"} true;
    assert {:msg "assert_failed(2,11927,11982): post-condition does not hold"}
      $IsEqual'vec'#0''($Dereference($t0), $SliceVecByRange(UpdateVec($t2, $t1, ReadVec($t2, (LenVec($t2) - 1))), $Range(0, (LenVec($t2) - 1))));

    // assert Eq<#0>(Index($t2, $t1), $t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:323:9+28
    assume {:print "$at(2,11991,12019)"} true;
    assert {:msg "assert_failed(2,11991,12019): post-condition does not hold"}
      $IsEqual'#0'(ReadVec($t2, $t1), $t3);

    // return $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:323:9+28
    $ret0 := $t3;
    $ret1 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:318:5+1
    assume {:print "$at(2,11807,11808)"} true;
L2:

    // assert Ge($t1, Len<#0>($t2)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:319:5+212
    assume {:print "$at(2,11813,12025)"} true;
    assert {:msg "assert_failed(2,11813,12025): abort not covered by any of the `aborts_if` clauses"}
      ($t1 >= LenVec($t2));

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:319:5+212
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_remove [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+722
procedure {:timeLimit 40} $42_VerifyVector_verify_remove$verify(_$t0: $Mutation (Vec (#0)), _$t1: int) returns ($ret0: #0, $ret1: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: Vec (#0);
    var $t5: Vec (#0);
    var $t6: Vec (#0);
    var $t7: Vec (#0);
    var $t8: Vec (#0);
    var $t9: Vec (#0);
    var $t10: Vec (#0);
    var $t11: Vec (#0);
    var $t12: Vec (#0);
    var $t13: Vec (#0);
    var $t14: Vec (#0);
    var $t15: Vec (#0);
    var $t16: Vec (#0);
    var $t17: Vec (#0);
    var $t18: int;
    var $t19: int;
    var $t20: bool;
    var $t21: int;
    var $t22: int;
    var $t23: int;
    var $t24: bool;
    var $t25: int;
    var $t26: int;
    var $t27: int;
    var $t28: int;
    var $t29: #0;
    var $t0: $Mutation (Vec (#0));
    var $t1: int;
    var $temp_0'#0': #0;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:282:30+6
    assume {:print "$at(2,10356,10362)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:282:30+6
    assume $IsValid'u64'($t1);

    // $t4 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    assume {:print "$at(2,9411,9412)"} true;
    $t4 := $Dereference($t0);

    // $t5 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t5 := $Dereference($t0);

    // $t6 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t6 := $Dereference($t0);

    // $t7 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t7 := $Dereference($t0);

    // $t8 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t8 := $Dereference($t0);

    // $t9 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t9 := $Dereference($t0);

    // $t10 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t10 := $Dereference($t0);

    // $t11 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t11 := $Dereference($t0);

    // $t12 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t12 := $Dereference($t0);

    // $t13 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t13 := $Dereference($t0);

    // $t14 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t14 := $Dereference($t0);

    // $t15 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t15 := $Dereference($t0);

    // $t16 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $t16 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,19,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // trace_local[j]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:254:5+1
    assume {:print "$track_local(1,19,1):", $t1} $t1 == $t1;

    // $t17 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:255:35+1
    assume {:print "$at(2,9516,9517)"} true;
    $t17 := $Dereference($t0);

    // $t18 := Vector::length<#0>($t17) on_abort goto L9 with $t19 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:255:20+17
    call $t18 := $1_Vector_length'#0'($t17);
    if ($abort_flag) {
        assume {:print "$at(2,9501,9518)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(1,19):", $t19} $t19 == $t19;
        goto L9;
    }

    // trace_local[vlen]($t18) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:255:13+4
    assume {:print "$track_local(1,19,3):", $t18} $t18 == $t18;

    // trace_local[i]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:256:13+1
    assume {:print "$at(2,9532,9533)"} true;
    assume {:print "$track_local(1,19,2):", $t1} $t1 == $t1;

    // $t20 := >=($t1, $t18) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:258:15+2
    assume {:print "$at(2,9587,9589)"} true;
    call $t20 := $Ge($t1, $t18);

    // if ($t20) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:258:9+23
    if ($t20) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:258:9+23
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:258:9+23
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:258:24+8
L0:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:258:24+8

    // $t21 := 10 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:258:30+2
    $t21 := 10;
    assume $IsValid'u64'($t21);

    // trace_abort($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:258:24+8
    assume {:print "$at(2,9596,9604)"} true;
    assume {:print "$track_abort(1,19):", $t21} $t21 == $t21;

    // $t19 := move($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:258:24+8
    $t19 := $t21;

    // goto L9 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:258:24+8
    goto L9;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:260:16+4
    assume {:print "$at(2,9622,9626)"} true;
L2:

    // $t22 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:260:23+1
    $t22 := 1;
    assume $IsValid'u64'($t22);

    // $t23 := -($t18, $t22) on_abort goto L9 with $t19 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:260:21+1
    call $t23 := $Sub($t18, $t22);
    if ($abort_flag) {
        assume {:print "$at(2,9627,9628)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(1,19):", $t19} $t19 == $t19;
        goto L9;
    }

    // trace_local[vlen]($t23) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:260:9+4
    assume {:print "$track_local(1,19,3):", $t23} $t23 == $t23;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:262:13+326
    assume {:print "$at(2,9661,9987)"} true;
L6:

    // assert And(Le($t1, $t1), Le($t1, $t23)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:263:17+27
    assume {:print "$at(2,9684,9711)"} true;
    assert {:msg "assert_failed(2,9684,9711): base case of the loop invariant does not hold"}
      (($t1 <= $t1) && ($t1 <= $t23));

    // assert Eq<num>(Add($t23, 1), Len<#0>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:264:17+26
    assume {:print "$at(2,9728,9754)"} true;
    assert {:msg "assert_failed(2,9728,9754): base case of the loop invariant does not hold"}
      $IsEqual'num'(($t23 + 1), LenVec($Dereference($t0)));

    // assert Eq<vector<#0>>(Slice($t0, Range(0, $t1)), Slice($t9, Range(0, $t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:265:17+31
    assume {:print "$at(2,9771,9802)"} true;
    assert {:msg "assert_failed(2,9771,9802): base case of the loop invariant does not hold"}
      $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range(0, $t1)), $SliceVecByRange($t9, $Range(0, $t1)));

    // assert forall k: Range($t1, $t1): Eq<#0>(Index($t0, k), Index($t10, Add(k, 1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:266:17+45
    assume {:print "$at(2,9819,9864)"} true;
    assert {:msg "assert_failed(2,9819,9864): base case of the loop invariant does not hold"}
      (var $range_0 := $Range($t1, $t1); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t10, (k + 1)))))));

    // assert forall k: Range(Add($t1, 1), Len<#0>($t0)): Eq<#0>(Index($t0, k), Index($t11, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:267:17+50
    assume {:print "$at(2,9881,9931)"} true;
    assert {:msg "assert_failed(2,9881,9931): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(($t1 + 1), LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t11, k))))));

    // assert Eq<#0>(Index($t0, $t1), Index($t12, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    assume {:print "$at(2,9948,9973)"} true;
    assert {:msg "assert_failed(2,9948,9973): base case of the loop invariant does not hold"}
      $IsEqual'#0'(ReadVec($Dereference($t0), $t1), ReadVec($t12, $t1));

    // havoc[val]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t24) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    havoc $t24;
    assume $IsValid'bool'($t24);

    // havoc[val]($t25) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    havoc $t25;
    assume $IsValid'u64'($t25);

    // havoc[val]($t26) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    havoc $t26;
    assume $IsValid'u64'($t26);

    // havoc[val]($t27) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    havoc $t27;
    assume $IsValid'u64'($t27);

    // havoc[val]($t28) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    havoc $t28;
    assume $IsValid'u64'($t28);

    // havoc[mut]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    havoc $temp_0'vec'#0'';
    $t0 := $UpdateMutation($t0, $temp_0'vec'#0'');
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    assume !$abort_flag;

    // assume And(Le($t1, $t1), Le($t1, $t23)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:263:17+27
    assume {:print "$at(2,9684,9711)"} true;
    assume (($t1 <= $t1) && ($t1 <= $t23));

    // assume Eq<num>(Add($t23, 1), Len<#0>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:264:17+26
    assume {:print "$at(2,9728,9754)"} true;
    assume $IsEqual'num'(($t23 + 1), LenVec($Dereference($t0)));

    // assume Eq<vector<#0>>(Slice($t0, Range(0, $t1)), Slice($t5, Range(0, $t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:265:17+31
    assume {:print "$at(2,9771,9802)"} true;
    assume $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range(0, $t1)), $SliceVecByRange($t5, $Range(0, $t1)));

    // assume forall k: Range($t1, $t1): Eq<#0>(Index($t0, k), Index($t6, Add(k, 1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:266:17+45
    assume {:print "$at(2,9819,9864)"} true;
    assume (var $range_0 := $Range($t1, $t1); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t6, (k + 1)))))));

    // assume forall k: Range(Add($t1, 1), Len<#0>($t0)): Eq<#0>(Index($t0, k), Index($t7, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:267:17+50
    assume {:print "$at(2,9881,9931)"} true;
    assume (var $range_0 := $Range(($t1 + 1), LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t7, k))))));

    // assume Eq<#0>(Index($t0, $t1), Index($t8, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    assume {:print "$at(2,9948,9973)"} true;
    assume $IsEqual'#0'(ReadVec($Dereference($t0), $t1), ReadVec($t8, $t1));

    // $t24 := <($t1, $t23) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:270:15+1
    assume {:print "$at(2,10003,10004)"} true;
    call $t24 := $Lt($t1, $t23);

    // if ($t24) goto L3 else goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:261:9+458
    assume {:print "$at(2,9640,10098)"} true;
    if ($t24) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:261:9+458
L4:

    // goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:261:9+458
    goto L5;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:272:26+1
    assume {:print "$at(2,10052,10053)"} true;
L3:

    // $t25 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:272:36+1
    $t25 := 1;
    assume $IsValid'u64'($t25);

    // $t26 := +($t1, $t25) on_abort goto L9 with $t19 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:272:34+1
    call $t26 := $AddU64($t1, $t25);
    if ($abort_flag) {
        assume {:print "$at(2,10060,10061)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(1,19):", $t19} $t19 == $t19;
        goto L9;
    }

    // Vector::swap<#0>($t0, $t1, $t26) on_abort goto L9 with $t19 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:272:13+25
    call $t0 := $1_Vector_swap'#0'($t0, $t1, $t26);
    if ($abort_flag) {
        assume {:print "$at(2,10039,10064)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(1,19):", $t19} $t19 == $t19;
        goto L9;
    }

    // $t27 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:273:21+1
    assume {:print "$at(2,10086,10087)"} true;
    $t27 := 1;
    assume $IsValid'u64'($t27);

    // $t28 := +($t1, $t27) on_abort goto L9 with $t19 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:273:19+1
    call $t28 := $AddU64($t1, $t27);
    if ($abort_flag) {
        assume {:print "$at(2,10084,10085)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(1,19):", $t19} $t19 == $t19;
        goto L9;
    }

    // trace_local[i]($t28) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:273:13+1
    assume {:print "$track_local(1,19,2):", $t28} $t28 == $t28;

    // goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:273:22+1
    goto L7;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:275:26+1
    assume {:print "$at(2,10125,10126)"} true;
L5:

    // $t29 := Vector::pop_back<#0>($t0) on_abort goto L9 with $t19 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:275:9+19
    call $t29,$t0 := $1_Vector_pop_back'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,10108,10127)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(1,19):", $t19} $t19 == $t19;
        goto L9;
    }

    // trace_return[0]($t29) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:275:9+19
    assume {:print "$track_return(1,19,0):", $t29} $t29 == $t29;

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:275:9+19
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,19,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:275:9+19
    goto L8;

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:275:26+1
    // Loop invariant checking block for the loop started with header: L6
L7:

    // assert And(Le($t1, $t28), Le($t28, $t23)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:263:17+27
    assume {:print "$at(2,9684,9711)"} true;
    assert {:msg "assert_failed(2,9684,9711): induction case of the loop invariant does not hold"}
      (($t1 <= $t28) && ($t28 <= $t23));

    // assert Eq<num>(Add($t23, 1), Len<#0>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:264:17+26
    assume {:print "$at(2,9728,9754)"} true;
    assert {:msg "assert_failed(2,9728,9754): induction case of the loop invariant does not hold"}
      $IsEqual'num'(($t23 + 1), LenVec($Dereference($t0)));

    // assert Eq<vector<#0>>(Slice($t0, Range(0, $t1)), Slice($t13, Range(0, $t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:265:17+31
    assume {:print "$at(2,9771,9802)"} true;
    assert {:msg "assert_failed(2,9771,9802): induction case of the loop invariant does not hold"}
      $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range(0, $t1)), $SliceVecByRange($t13, $Range(0, $t1)));

    // assert forall k: Range($t1, $t28): Eq<#0>(Index($t0, k), Index($t14, Add(k, 1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:266:17+45
    assume {:print "$at(2,9819,9864)"} true;
    assert {:msg "assert_failed(2,9819,9864): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range($t1, $t28); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t14, (k + 1)))))));

    // assert forall k: Range(Add($t28, 1), Len<#0>($t0)): Eq<#0>(Index($t0, k), Index($t15, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:267:17+50
    assume {:print "$at(2,9881,9931)"} true;
    assert {:msg "assert_failed(2,9881,9931): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(($t28 + 1), LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), k), ReadVec($t15, k))))));

    // assert Eq<#0>(Index($t0, $t28), Index($t16, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    assume {:print "$at(2,9948,9973)"} true;
    assert {:msg "assert_failed(2,9948,9973): induction case of the loop invariant does not hold"}
      $IsEqual'#0'(ReadVec($Dereference($t0), $t28), ReadVec($t16, $t1));

    // stop() at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:268:17+25
    assume false;
    return;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:276:5+1
    assume {:print "$at(2,10132,10133)"} true;
L8:

    // assert Not(Ge($t1, Len<#0>($t4))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:278:9+22
    assume {:print "$at(2,10167,10189)"} true;
    assert {:msg "assert_failed(2,10167,10189): function does not abort under this condition"}
      !($t1 >= LenVec($t4));

    // assert Eq<num>(Len<#0>($t0), Sub(Len<#0>($t4), 1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:279:9+34
    assume {:print "$at(2,10198,10232)"} true;
    assert {:msg "assert_failed(2,10198,10232): post-condition does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), (LenVec($t4) - 1));

    // assert Eq<vector<#0>>(Slice($t0, Range(0, $t1)), Slice($t4, Range(0, $t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:280:9+32
    assume {:print "$at(2,10241,10273)"} true;
    assert {:msg "assert_failed(2,10241,10273): post-condition does not hold"}
      $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range(0, $t1)), $SliceVecByRange($t4, $Range(0, $t1)));

    // assert Eq<vector<#0>>(Slice($t0, Range($t1, Len<#0>($t0))), Slice($t4, Range(Add($t1, 1), Len<#0>($t4)))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:281:9+44
    assume {:print "$at(2,10282,10326)"} true;
    assert {:msg "assert_failed(2,10282,10326): post-condition does not hold"}
      $IsEqual'vec'#0''($SliceVecByRange($Dereference($t0), $Range($t1, LenVec($Dereference($t0)))), $SliceVecByRange($t4, $Range(($t1 + 1), LenVec($t4))));

    // assert Eq<#0>(Index($t4, $t1), $t29) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:282:9+28
    assume {:print "$at(2,10335,10363)"} true;
    assert {:msg "assert_failed(2,10335,10363): post-condition does not hold"}
      $IsEqual'#0'(ReadVec($t4, $t1), $t29);

    // return $t29 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:282:9+28
    $ret0 := $t29;
    $ret1 := $t0;
    return;

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:276:5+1
    assume {:print "$at(2,10132,10133)"} true;
L9:

    // assert Ge($t1, Len<#0>($t4)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:277:5+231
    assume {:print "$at(2,10138,10369)"} true;
    assert {:msg "assert_failed(2,10138,10369): abort not covered by any of the `aborts_if` clauses"}
      ($t1 >= LenVec($t4));

    // abort($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:277:5+231
    $abort_code := $t19;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_reverse [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+783
procedure {:timeLimit 40} $42_VerifyVector_verify_reverse$verify(_$t0: $Mutation (Vec (#0))) returns ($ret0: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: Vec (#0);
    var $t5: Vec (#0);
    var $t6: Vec (#0);
    var $t7: Vec (#0);
    var $t8: Vec (#0);
    var $t9: Vec (#0);
    var $t10: Vec (#0);
    var $t11: Vec (#0);
    var $t12: Vec (#0);
    var $t13: Vec (#0);
    var $t14: Vec (#0);
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: int;
    var $t22: bool;
    var $t23: int;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t0: $Mutation (Vec (#0));
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+783
    assume {:print "$at(2,3684,4467)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // $t4 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $t4 := $Dereference($t0);

    // $t5 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $t5 := $Dereference($t0);

    // $t6 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $t6 := $Dereference($t0);

    // $t7 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $t7 := $Dereference($t0);

    // $t8 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $t8 := $Dereference($t0);

    // $t9 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $t9 := $Dereference($t0);

    // $t10 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $t10 := $Dereference($t0);

    // $t11 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $t11 := $Dereference($t0);

    // $t12 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $t12 := $Dereference($t0);

    // $t13 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $t13 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:99:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,20,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // $t14 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:100:35+1
    assume {:print "$at(2,3773,3774)"} true;
    $t14 := $Dereference($t0);

    // $t15 := Vector::length<#0>($t14) on_abort goto L9 with $t16 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:100:20+17
    call $t15 := $1_Vector_length'#0'($t14);
    if ($abort_flag) {
        assume {:print "$at(2,3758,3775)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(1,20):", $t16} $t16 == $t16;
        goto L9;
    }

    // trace_local[vlen]($t15) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:100:13+4
    assume {:print "$track_local(1,20,3):", $t15} $t15 == $t15;

    // $t17 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:101:21+1
    assume {:print "$at(2,3797,3798)"} true;
    $t17 := 0;
    assume $IsValid'u64'($t17);

    // $t18 := ==($t15, $t17) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:101:18+2
    $t18 := $IsEqual'u64'($t15, $t17);

    // if ($t18) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:101:9+24
    if ($t18) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:101:9+24
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:101:9+24
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:101:24+9
L0:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:101:24+9

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:101:24+9
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,20,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:101:24+9
    goto L8;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:103:27+1
    assume {:print "$at(2,3838,3839)"} true;
L2:

    // $t19 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:103:27+1
    $t19 := 0;
    assume $IsValid'u64'($t19);

    // trace_local[front_index]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:103:13+11
    assume {:print "$track_local(1,20,2):", $t19} $t19 == $t19;

    // $t20 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:104:32+1
    assume {:print "$at(2,3872,3873)"} true;
    $t20 := 1;
    assume $IsValid'u64'($t20);

    // $t21 := -($t15, $t20) on_abort goto L9 with $t16 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:104:31+1
    call $t21 := $Sub($t15, $t20);
    if ($abort_flag) {
        assume {:print "$at(2,3871,3872)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(1,20):", $t16} $t16 == $t16;
        goto L9;
    }

    // trace_local[back_index]($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:104:13+10
    assume {:print "$track_local(1,20,1):", $t21} $t21 == $t21;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:106:13+355
    assume {:print "$at(2,3904,4259)"} true;
L6:

    // assert Eq<num>(Add($t19, $t21), Sub($t15, 1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:107:17+44
    assume {:print "$at(2,3927,3971)"} true;
    assert {:msg "assert_failed(2,3927,3971): base case of the loop invariant does not hold"}
      $IsEqual'num'(($t19 + $t21), ($t15 - 1));

    // assert forall i: Range(0, $t19): Eq<#0>(Index($t0, i), Index($t8, Sub(Sub($t15, 1), i))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:108:17+60
    assume {:print "$at(2,3988,4048)"} true;
    assert {:msg "assert_failed(2,3988,4048): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), i), ReadVec($t8, (($t15 - 1) - i)))))));

    // assert forall i: Range(0, $t19): Eq<#0>(Index($t0, Sub(Sub($t15, 1), i)), Index($t9, i)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:109:17+60
    assume {:print "$at(2,4065,4125)"} true;
    assert {:msg "assert_failed(2,4065,4125): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), (($t15 - 1) - i)), ReadVec($t9, i))))));

    // assert forall j: Range($t19, Add($t21, 1)): Eq<#0>(Index($t0, j), Index($t10, j)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:110:17+64
    assume {:print "$at(2,4142,4206)"} true;
    assert {:msg "assert_failed(2,4142,4206): base case of the loop invariant does not hold"}
      (var $range_0 := $Range($t19, ($t21 + 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), j), ReadVec($t10, j))))));

    // assert Eq<num>(Len<#0>($t0), $t15) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    assume {:print "$at(2,4223,4245)"} true;
    assert {:msg "assert_failed(2,4223,4245): base case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), $t15);

    // havoc[val]($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    havoc $t21;
    assume $IsValid'u64'($t21);

    // havoc[val]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    havoc $t19;
    assume $IsValid'u64'($t19);

    // havoc[val]($t22) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    havoc $t22;
    assume $IsValid'bool'($t22);

    // havoc[val]($t23) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    havoc $t23;
    assume $IsValid'u64'($t23);

    // havoc[val]($t24) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    havoc $t24;
    assume $IsValid'u64'($t24);

    // havoc[val]($t25) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    havoc $t25;
    assume $IsValid'u64'($t25);

    // havoc[val]($t26) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    havoc $t26;
    assume $IsValid'u64'($t26);

    // havoc[mut]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    havoc $temp_0'vec'#0'';
    $t0 := $UpdateMutation($t0, $temp_0'vec'#0'');
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    assume !$abort_flag;

    // assume Eq<num>(Add($t19, $t21), Sub($t15, 1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:107:17+44
    assume {:print "$at(2,3927,3971)"} true;
    assume $IsEqual'num'(($t19 + $t21), ($t15 - 1));

    // assume forall i: Range(0, $t19): Eq<#0>(Index($t0, i), Index($t5, Sub(Sub($t15, 1), i))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:108:17+60
    assume {:print "$at(2,3988,4048)"} true;
    assume (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), i), ReadVec($t5, (($t15 - 1) - i)))))));

    // assume forall i: Range(0, $t19): Eq<#0>(Index($t0, Sub(Sub($t15, 1), i)), Index($t6, i)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:109:17+60
    assume {:print "$at(2,4065,4125)"} true;
    assume (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), (($t15 - 1) - i)), ReadVec($t6, i))))));

    // assume forall j: Range($t19, Add($t21, 1)): Eq<#0>(Index($t0, j), Index($t7, j)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:110:17+64
    assume {:print "$at(2,4142,4206)"} true;
    assume (var $range_0 := $Range($t19, ($t21 + 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), j), ReadVec($t7, j))))));

    // assume Eq<num>(Len<#0>($t0), $t15) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    assume {:print "$at(2,4223,4245)"} true;
    assume $IsEqual'num'(LenVec($Dereference($t0)), $t15);

    // $t22 := <($t19, $t21) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:113:26+1
    assume {:print "$at(2,4286,4287)"} true;
    call $t22 := $Lt($t19, $t21);

    // if ($t22) goto L3 else goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:105:9+577
    assume {:print "$at(2,3883,4460)"} true;
    if ($t22) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:105:9+577
L4:

    // goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:105:9+577
    goto L5;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:115:26+1
    assume {:print "$at(2,4338,4339)"} true;
L3:

    // Vector::swap<#0>($t0, $t19, $t21) on_abort goto L9 with $t16 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:115:13+40
    call $t0 := $1_Vector_swap'#0'($t0, $t19, $t21);
    if ($abort_flag) {
        assume {:print "$at(2,4325,4365)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(1,20):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t23 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:116:41+1
    assume {:print "$at(2,4407,4408)"} true;
    $t23 := 1;
    assume $IsValid'u64'($t23);

    // $t24 := +($t19, $t23) on_abort goto L9 with $t16 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:116:39+1
    call $t24 := $AddU64($t19, $t23);
    if ($abort_flag) {
        assume {:print "$at(2,4405,4406)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(1,20):", $t16} $t16 == $t16;
        goto L9;
    }

    // trace_local[front_index]($t24) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:116:13+11
    assume {:print "$track_local(1,20,2):", $t24} $t24 == $t24;

    // $t25 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:117:39+1
    assume {:print "$at(2,4448,4449)"} true;
    $t25 := 1;
    assume $IsValid'u64'($t25);

    // $t26 := -($t21, $t25) on_abort goto L9 with $t16 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:117:37+1
    call $t26 := $Sub($t21, $t25);
    if ($abort_flag) {
        assume {:print "$at(2,4446,4447)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(1,20):", $t16} $t16 == $t16;
        goto L9;
    }

    // trace_local[back_index]($t26) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:117:13+10
    assume {:print "$track_local(1,20,1):", $t26} $t26 == $t26;

    // goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:117:40+1
    goto L7;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:118:10+1
    assume {:print "$at(2,4460,4461)"} true;
L5:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:118:10+1

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:118:10+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,20,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:118:10+1
    goto L8;

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:118:10+1
    // Loop invariant checking block for the loop started with header: L6
L7:

    // assert Eq<num>(Add($t24, $t26), Sub($t15, 1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:107:17+44
    assume {:print "$at(2,3927,3971)"} true;
    assert {:msg "assert_failed(2,3927,3971): induction case of the loop invariant does not hold"}
      $IsEqual'num'(($t24 + $t26), ($t15 - 1));

    // assert forall i: Range(0, $t24): Eq<#0>(Index($t0, i), Index($t11, Sub(Sub($t15, 1), i))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:108:17+60
    assume {:print "$at(2,3988,4048)"} true;
    assert {:msg "assert_failed(2,3988,4048): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t24); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), i), ReadVec($t11, (($t15 - 1) - i)))))));

    // assert forall i: Range(0, $t24): Eq<#0>(Index($t0, Sub(Sub($t15, 1), i)), Index($t12, i)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:109:17+60
    assume {:print "$at(2,4065,4125)"} true;
    assert {:msg "assert_failed(2,4065,4125): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t24); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), (($t15 - 1) - i)), ReadVec($t12, i))))));

    // assert forall j: Range($t24, Add($t26, 1)): Eq<#0>(Index($t0, j), Index($t13, j)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:110:17+64
    assume {:print "$at(2,4142,4206)"} true;
    assert {:msg "assert_failed(2,4142,4206): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range($t24, ($t26 + 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), j), ReadVec($t13, j))))));

    // assert Eq<num>(Len<#0>($t0), $t15) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    assume {:print "$at(2,4223,4245)"} true;
    assert {:msg "assert_failed(2,4223,4245): induction case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), $t15);

    // stop() at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:111:17+22
    assume false;
    return;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:119:5+1
    assume {:print "$at(2,4466,4467)"} true;
L8:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:121:9+16
    assume {:print "$at(2,4502,4518)"} true;
    assert {:msg "assert_failed(2,4502,4518): function does not abort under this condition"}
      !false;

    // assert forall i: Range(0, Len<#0>($t0)): Eq<#0>(Index($t0, i), Index($t4, Sub(Sub(Len<#0>($t0), 1), i))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:122:9+58
    assume {:print "$at(2,4527,4585)"} true;
    assert {:msg "assert_failed(2,4527,4585): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), i), ReadVec($t4, ((LenVec($Dereference($t0)) - 1) - i)))))));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:122:9+58
    $ret0 := $t0;
    return;

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:119:5+1
    assume {:print "$at(2,4466,4467)"} true;
L9:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:120:5+119
    assume {:print "$at(2,4472,4591)"} true;
    assert {:msg "assert_failed(2,4472,4591): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t16) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:120:5+119
    $abort_code := $t16;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_singleton [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:87:5+147
procedure {:timeLimit 40} $42_VerifyVector_verify_singleton$verify(_$t0: #0) returns ($ret0: Vec (#0))
{
    // declare local variables
    var $t1: Vec (#0);
    var $t2: int;
    var $t3: $Mutation (Vec (#0));
    var $t4: Vec (#0);
    var $t0: #0;
    var $temp_0'#0': #0;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t3));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:95:17+6
    assume {:print "$at(2,3591,3597)"} true;
    assume $IsValid'#0'($t0);

    // trace_local[e]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:87:5+1
    assume {:print "$at(2,3340,3341)"} true;
    assume {:print "$track_local(1,21,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<#0>() on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:88:17+15
    assume {:print "$at(2,3417,3432)"} true;
    call $t1 := $1_Vector_empty'#0'();
    if ($abort_flag) {
        assume {:print "$at(2,3417,3432)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,21):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[v]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:88:13+1
    assume {:print "$track_local(1,21,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:89:27+6
    assume {:print "$at(2,3460,3466)"} true;
    $t3 := $Mutation($Local(1), EmptyVec(), $t1);

    // Vector::push_back<#0>($t3, $t0) on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:89:9+28
    call $t3 := $1_Vector_push_back'#0'($t3, $t0);
    if ($abort_flag) {
        assume {:print "$at(2,3442,3470)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(1,21):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:89:9+28
    $t1 := $Dereference($t3);

    // $t4 := move($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:90:9+1
    assume {:print "$at(2,3480,3481)"} true;
    $t4 := $t1;

    // trace_return[0]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:90:9+1
    assume {:print "$track_return(1,21,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:91:5+1
    assume {:print "$at(2,3486,3487)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:93:9+16
    assume {:print "$at(2,3524,3540)"} true;
    assert {:msg "assert_failed(2,3524,3540): function does not abort under this condition"}
      !false;

    // assert Eq<num>(Len<#0>($t4), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:94:9+25
    assume {:print "$at(2,3549,3574)"} true;
    assert {:msg "assert_failed(2,3549,3574): post-condition does not hold"}
      $IsEqual'num'(LenVec($t4), 1);

    // assert Eq<#0>(Index($t4, 0), $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:95:9+23
    assume {:print "$at(2,3583,3606)"} true;
    assert {:msg "assert_failed(2,3583,3606): post-condition does not hold"}
      $IsEqual'#0'(ReadVec($t4, 0), $t0);

    // return $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:95:9+23
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:91:5+1
    assume {:print "$at(2,3486,3487)"} true;
L2:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:92:5+120
    assume {:print "$at(2,3492,3612)"} true;
    assert {:msg "assert_failed(2,3492,3612): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:92:5+120
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun VerifyVector::verify_swap_remove [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:301:5+193
procedure {:timeLimit 40} $42_VerifyVector_verify_swap_remove$verify(_$t0: $Mutation (Vec (#0)), _$t1: int) returns ($ret0: #0, $ret1: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t2: int;
    var $t3: Vec (#0);
    var $t4: Vec (#0);
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: #0;
    var $t0: $Mutation (Vec (#0));
    var $t1: int;
    var $temp_0'#0': #0;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:310:30+6
    assume {:print "$at(2,11458,11464)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:310:30+6
    assume $IsValid'u64'($t1);

    // $t3 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:301:5+1
    assume {:print "$at(2,11067,11068)"} true;
    $t3 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:301:5+1
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,22,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // trace_local[i]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:301:5+1
    assume {:print "$track_local(1,22,1):", $t1} $t1 == $t1;

    // $t4 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:302:39+1
    assume {:print "$at(2,11181,11182)"} true;
    $t4 := $Dereference($t0);

    // $t5 := Vector::length<#0>($t4) on_abort goto L2 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:302:24+17
    call $t5 := $1_Vector_length'#0'($t4);
    if ($abort_flag) {
        assume {:print "$at(2,11166,11183)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,22):", $t6} $t6 == $t6;
        goto L2;
    }

    // $t7 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:302:44+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // $t8 := -($t5, $t7) on_abort goto L2 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:302:42+1
    call $t8 := $Sub($t5, $t7);
    if ($abort_flag) {
        assume {:print "$at(2,11184,11185)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,22):", $t6} $t6 == $t6;
        goto L2;
    }

    // trace_local[last_idx]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:302:13+8
    assume {:print "$track_local(1,22,2):", $t8} $t8 == $t8;

    // Vector::swap<#0>($t0, $t1, $t8) on_abort goto L2 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:303:9+28
    assume {:print "$at(2,11197,11225)"} true;
    call $t0 := $1_Vector_swap'#0'($t0, $t1, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,11197,11225)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,22):", $t6} $t6 == $t6;
        goto L2;
    }

    // $t9 := Vector::pop_back<#0>($t0) on_abort goto L2 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:304:9+19
    assume {:print "$at(2,11235,11254)"} true;
    call $t9,$t0 := $1_Vector_pop_back'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,11235,11254)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,22):", $t6} $t6 == $t6;
        goto L2;
    }

    // trace_return[0]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:304:9+19
    assume {:print "$track_return(1,22,0):", $t9} $t9 == $t9;

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:304:9+19
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(1,22,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:305:5+1
    assume {:print "$at(2,11259,11260)"} true;
L1:

    // assert Not(Ge($t1, Len<#0>($t3))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:307:9+22
    assume {:print "$at(2,11299,11321)"} true;
    assert {:msg "assert_failed(2,11299,11321): function does not abort under this condition"}
      !($t1 >= LenVec($t3));

    // assert Eq<num>(Len<#0>($t0), Sub(Len<#0>($t3), 1)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:308:9+34
    assume {:print "$at(2,11330,11364)"} true;
    assert {:msg "assert_failed(2,11330,11364): post-condition does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), (LenVec($t3) - 1));

    // assert Eq<vector<#0>>($t0, Slice(UpdateVec<#0>($t3, $t1, Index($t3, Sub(Len<#0>($t3), 1))), Range(0, Sub(Len<#0>($t3), 1)))) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:309:9+55
    assume {:print "$at(2,11373,11428)"} true;
    assert {:msg "assert_failed(2,11373,11428): post-condition does not hold"}
      $IsEqual'vec'#0''($Dereference($t0), $SliceVecByRange(UpdateVec($t3, $t1, ReadVec($t3, (LenVec($t3) - 1))), $Range(0, (LenVec($t3) - 1))));

    // assert Eq<#0>(Index($t3, $t1), $t9) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:310:9+28
    assume {:print "$at(2,11437,11465)"} true;
    assert {:msg "assert_failed(2,11437,11465): post-condition does not hold"}
      $IsEqual'#0'(ReadVec($t3, $t1), $t9);

    // return $t9 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:310:9+28
    $ret0 := $t9;
    $ret1 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:305:5+1
    assume {:print "$at(2,11259,11260)"} true;
L2:

    // assert Ge($t1, Len<#0>($t3)) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:306:5+206
    assume {:print "$at(2,11265,11471)"} true;
    assert {:msg "assert_failed(2,11265,11471): abort not covered by any of the `aborts_if` clauses"}
      ($t1 >= LenVec($t3));

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/verify_vector.move:306:5+206
    $abort_code := $t6;
    $abort_flag := true;
    return;

}
