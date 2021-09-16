
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
// Native Vector implementation for element type `$1_DiemAccount_KeyRotationCapability`

// Not inlined. It appears faster this way.
function $IsEqual'vec'$1_DiemAccount_KeyRotationCapability''(v1: Vec ($1_DiemAccount_KeyRotationCapability), v2: Vec ($1_DiemAccount_KeyRotationCapability)): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec(v1, i), ReadVec(v2, i)))
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

// Not inlined. It appears faster this way.
function $IsEqual'vec'$1_DiemAccount_WithdrawCapability''(v1: Vec ($1_DiemAccount_WithdrawCapability), v2: Vec ($1_DiemAccount_WithdrawCapability)): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'$1_DiemAccount_WithdrawCapability'(ReadVec(v1, i), ReadVec(v2, i)))
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

// Not inlined. It appears faster this way.
function $IsEqual'vec'$1_DiemSystem_ValidatorInfo''(v1: Vec ($1_DiemSystem_ValidatorInfo), v2: Vec ($1_DiemSystem_ValidatorInfo)): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'$1_DiemSystem_ValidatorInfo'(ReadVec(v1, i), ReadVec(v2, i)))
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
// Native Vector implementation for element type `$1_VASPDomain_VASPDomain`

// Not inlined. It appears faster this way.
function $IsEqual'vec'$1_VASPDomain_VASPDomain''(v1: Vec ($1_VASPDomain_VASPDomain), v2: Vec ($1_VASPDomain_VASPDomain)): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'$1_VASPDomain_VASPDomain'(ReadVec(v1, i), ReadVec(v2, i)))
}

// Not inlined.
function $IsValid'vec'$1_VASPDomain_VASPDomain''(v: Vec ($1_VASPDomain_VASPDomain)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_VASPDomain_VASPDomain'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), e: $1_VASPDomain_VASPDomain): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_VASPDomain_VASPDomain'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), e: $1_VASPDomain_VASPDomain): int;
axiom (forall v: Vec ($1_VASPDomain_VASPDomain), e: $1_VASPDomain_VASPDomain:: {$IndexOfVec'$1_VASPDomain_VASPDomain'(v, e)}
    (var i := $IndexOfVec'$1_VASPDomain_VASPDomain'(v, e);
     if (!$ContainsVec'$1_VASPDomain_VASPDomain'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_VASPDomain_VASPDomain'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_VASPDomain_VASPDomain'(): Vec ($1_VASPDomain_VASPDomain) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_VASPDomain_VASPDomain'() returns (v: Vec ($1_VASPDomain_VASPDomain)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_VASPDomain_VASPDomain'(): Vec ($1_VASPDomain_VASPDomain) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), val: $1_VASPDomain_VASPDomain) returns (m': $Mutation (Vec ($1_VASPDomain_VASPDomain))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), val: $1_VASPDomain_VASPDomain): Vec ($1_VASPDomain_VASPDomain) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain))) returns (e: $1_VASPDomain_VASPDomain, m': $Mutation (Vec ($1_VASPDomain_VASPDomain))) {
    var v: Vec ($1_VASPDomain_VASPDomain);
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

procedure {:inline 1} $1_Vector_append'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), other: Vec ($1_VASPDomain_VASPDomain)) returns (m': $Mutation (Vec ($1_VASPDomain_VASPDomain))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain))) returns (m': $Mutation (Vec ($1_VASPDomain_VASPDomain))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), i: int) returns (dst: $1_VASPDomain_VASPDomain) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), i: int): $1_VASPDomain_VASPDomain {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), index: int)
returns (dst: $Mutation ($1_VASPDomain_VASPDomain), m': $Mutation (Vec ($1_VASPDomain_VASPDomain)))
{
    var v: Vec ($1_VASPDomain_VASPDomain);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), i: int): $1_VASPDomain_VASPDomain {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), i: int, j: int) returns (m': $Mutation (Vec ($1_VASPDomain_VASPDomain)))
{
    var v: Vec ($1_VASPDomain_VASPDomain);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), i: int, j: int): Vec ($1_VASPDomain_VASPDomain) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), i: int) returns (e: $1_VASPDomain_VASPDomain, m': $Mutation (Vec ($1_VASPDomain_VASPDomain)))
{
    var v: Vec ($1_VASPDomain_VASPDomain);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), i: int) returns (e: $1_VASPDomain_VASPDomain, m': $Mutation (Vec ($1_VASPDomain_VASPDomain)))
{
    var len: int;
    var v: Vec ($1_VASPDomain_VASPDomain);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), e: $1_VASPDomain_VASPDomain) returns (res: bool)  {
    res := $ContainsVec'$1_VASPDomain_VASPDomain'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), e: $1_VASPDomain_VASPDomain) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_VASPDomain_VASPDomain'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_ValidatorConfig_Config`

// Not inlined. It appears faster this way.
function $IsEqual'vec'$1_ValidatorConfig_Config''(v1: Vec ($1_ValidatorConfig_Config), v2: Vec ($1_ValidatorConfig_Config)): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'$1_ValidatorConfig_Config'(ReadVec(v1, i), ReadVec(v2, i)))
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

// Not inlined. It appears faster this way.
function $IsEqual'vec'vec'u8'''(v1: Vec (Vec (int)), v2: Vec (Vec (int))): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'vec'u8''(ReadVec(v1, i), ReadVec(v2, i)))
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

// Not inlined. It appears faster this way.
function $IsEqual'vec'address''(v1: Vec (int), v2: Vec (int)): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'address'(ReadVec(v1, i), ReadVec(v2, i)))
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
// Native Vector implementation for element type `u64`

// Not inlined. It appears faster this way.
function $IsEqual'vec'u64''(v1: Vec (int), v2: Vec (int)): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'u64'(ReadVec(v1, i), ReadVec(v2, i)))
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




// Publishing a generator does nothing. Currently we just ignore this function and do not represent generators
// at all because they are not publicly exposed by the Event module.
// TODO: we should check (and abort with the right code) if a generator already exists for
// the signer.

procedure {:inline 1} $1_Event_publish_generator(signer: $signer) {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_ReceivedPaymentEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_SentPaymentEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemBlock_NewBlockEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_BurnEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_Diem_BurnEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_CancelBurnEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_Diem_CancelBurnEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_MintEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_Diem_MintEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_PreburnEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_Diem_PreburnEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent') {
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
procedure {:inline 1} $1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent') {
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
function {:inline} $1_Signer_$address_of(s: $signer): int {
    $1_Signer_$borrow_address(s)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:138:5+89
function {:inline} $1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    !$ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:158:5+90
function {:inline} $1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:120:10+104
function {:inline} $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): int {
    $microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816))
}

// struct DiemTimestamp::CurrentTimeMicroseconds at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:20:5+73
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

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:196:5+122
function {:inline} $1_Roles_$has_diem_root_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, account: $signer): bool {
    $1_Roles_$has_role($1_Roles_RoleId_$memory, account, 0)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:190:5+210
function {:inline} $1_Roles_$has_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, account: $signer, role_id: int): bool {
    (var addr := $1_Signer_$address_of(account); ($ResourceExists($1_Roles_RoleId_$memory, addr) && $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr)), role_id)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:481:9+148
function {:inline} $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int, role_id: int): bool {
    ($ResourceExists($1_Roles_RoleId_$memory, addr) && $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr)), role_id))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:485:9+124
function {:inline} $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 0)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:489:9+144
function {:inline} $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 1)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:493:9+140
function {:inline} $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 2)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:497:9+124
function {:inline} $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 3)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:501:9+142
function {:inline} $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 4)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:505:9+128
function {:inline} $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 5)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:509:9+126
function {:inline} $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 6)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:513:9+229
function {:inline} $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    (($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr)) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))
}

// struct Roles::RoleId at /home/ying/diem/language/diem-framework/modules/Roles.move:53:5+51
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

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:54:5+320
function {:inline} $1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig, validator_operator_addr: int): Vec (int) {
    $human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig($ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, validator_operator_addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:63:5+153
function {:inline} $1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig, validator_operator_addr: int): bool {
    $ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, validator_operator_addr)
}

// struct ValidatorOperatorConfig::ValidatorOperatorConfig at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:9:5+141
type {:datatype} $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
function {:constructor} $1_ValidatorOperatorConfig_ValidatorOperatorConfig($human_name: Vec (int)): $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
function {:inline} $Update'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'_human_name(s: $1_ValidatorOperatorConfig_ValidatorOperatorConfig, x: Vec (int)): $1_ValidatorOperatorConfig_ValidatorOperatorConfig {
    $1_ValidatorOperatorConfig_ValidatorOperatorConfig(x)
}
function $IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'(s: $1_ValidatorOperatorConfig_ValidatorOperatorConfig): bool {
    $IsValid'vec'u8''($human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig(s))
}
function {:inline} $IsEqual'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'(s1: $1_ValidatorOperatorConfig_ValidatorOperatorConfig, s2: $1_ValidatorOperatorConfig_ValidatorOperatorConfig): bool {
    $IsEqual'vec'u8''($human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig(s1), $human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig(s2))}
var $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig;

// fun ValidatorOperatorConfig::has_validator_operator_config [baseline] at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:63:5+153
procedure {:inline 1} $1_ValidatorOperatorConfig_has_validator_operator_config(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[validator_operator_addr]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:63:5+1
    assume {:print "$at(39,2624,2625)"} true;
    assume {:print "$track_local(5,1,0):", $t0} $t0 == $t0;

    // $t1 := exists<ValidatorOperatorConfig::ValidatorOperatorConfig>($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:64:9+6
    assume {:print "$at(39,2715,2721)"} true;
    $t1 := $ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:64:9+56
    assume {:print "$track_return(5,1,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:65:5+1
    assume {:print "$at(39,2776,2777)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:65:5+1
    $ret0 := $t1;
    return;

}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'u64'(v: Vec (int)): bool {
    $IsEqual'u64'($1_Vector_$length'u64'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'address'(v: Vec (int)): bool {
    $IsEqual'u64'($1_Vector_$length'address'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_ValidatorConfig_Config'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:162:9+216
function {:inline} $1_Vector_eq_push_back'$1_DiemSystem_ValidatorInfo'(v1: Vec ($1_DiemSystem_ValidatorInfo), v2: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo): bool {
    (($IsEqual'num'(LenVec(v1), (LenVec(v2) + 1)) && $IsEqual'$1_DiemSystem_ValidatorInfo'(ReadVec(v1, (LenVec(v1) - 1)), e)) && $IsEqual'vec'$1_DiemSystem_ValidatorInfo''($SliceVecByRange(v1, $Range(0, (LenVec(v1) - 1))), $SliceVecByRange(v2, $Range(0, LenVec(v2)))))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:86:5+170
function {:inline} $1_Option_$borrow'u64'(t: $1_Option_Option'u64'): int {
    $1_Vector_$borrow'u64'($vec#$1_Option_Option'u64'(t), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:86:5+170
function {:inline} $1_Option_$borrow'address'(t: $1_Option_Option'address'): int {
    $1_Vector_$borrow'address'($vec#$1_Option_Option'address'(t), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:86:5+170
function {:inline} $1_Option_$borrow'$1_ValidatorConfig_Config'(t: $1_Option_Option'$1_ValidatorConfig_Config'): $1_ValidatorConfig_Config {
    $1_Vector_$borrow'$1_ValidatorConfig_Config'($vec#$1_Option_Option'$1_ValidatorConfig_Config'(t), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:51:5+95
function {:inline} $1_Option_$is_none'u64'(t: $1_Option_Option'u64'): bool {
    $1_Vector_$is_empty'u64'($vec#$1_Option_Option'u64'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:51:5+95
function {:inline} $1_Option_$is_none'$1_ValidatorConfig_Config'(t: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    $1_Vector_$is_empty'$1_ValidatorConfig_Config'($vec#$1_Option_Option'$1_ValidatorConfig_Config'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'u64'(t: $1_Option_Option'u64'): bool {
    !$1_Vector_$is_empty'u64'($vec#$1_Option_Option'u64'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'address'(t: $1_Option_Option'address'): bool {
    !$1_Vector_$is_empty'address'($vec#$1_Option_Option'address'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_ValidatorConfig_Config'(t: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    !$1_Vector_$is_empty'$1_ValidatorConfig_Config'($vec#$1_Option_Option'$1_ValidatorConfig_Config'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:46:10+89
function {:inline} $1_Option_spec_some'address'(e: int): $1_Option_Option'address' {
    $1_Option_Option'address'(MakeVec1(e))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:46:10+89
function {:inline} $1_Option_spec_some'$1_ValidatorConfig_Config'(e: $1_ValidatorConfig_Config): $1_Option_Option'$1_ValidatorConfig_Config' {
    $1_Option_Option'$1_ValidatorConfig_Config'(MakeVec1(e))
}

// struct Option::Option<u64> at /home/ying/diem/language/move-stdlib/modules/Option.move:8:5+81
type {:datatype} $1_Option_Option'u64';
function {:constructor} $1_Option_Option'u64'($vec: Vec (int)): $1_Option_Option'u64';
function {:inline} $Update'$1_Option_Option'u64''_vec(s: $1_Option_Option'u64', x: Vec (int)): $1_Option_Option'u64' {
    $1_Option_Option'u64'(x)
}
function $IsValid'$1_Option_Option'u64''(s: $1_Option_Option'u64'): bool {
    $IsValid'vec'u64''($vec#$1_Option_Option'u64'(s))
}
function {:inline} $IsEqual'$1_Option_Option'u64''(s1: $1_Option_Option'u64', s2: $1_Option_Option'u64'): bool {
    $IsEqual'vec'u64''($vec#$1_Option_Option'u64'(s1), $vec#$1_Option_Option'u64'(s2))}

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
    $IsEqual'vec'address''($vec#$1_Option_Option'address'(s1), $vec#$1_Option_Option'address'(s2))}

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
    $IsEqual'vec'$1_ValidatorConfig_Config''($vec#$1_Option_Option'$1_ValidatorConfig_Config'(s1), $vec#$1_Option_Option'$1_ValidatorConfig_Config'(s2))}

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
    $IsEqual'vec'$1_DiemAccount_KeyRotationCapability''($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(s1), $vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(s2))}

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
    $IsEqual'vec'$1_DiemAccount_WithdrawCapability''($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(s1), $vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(s2))}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+84
function {:inline} $1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): bool {
    $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:241:5+341
function {:inline} $1_ValidatorConfig_$get_config($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): $1_ValidatorConfig_Config {
    (var config := $config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr)); $1_Option_$borrow'$1_ValidatorConfig_Config'(config))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:262:5+259
function {:inline} $1_ValidatorConfig_$get_human_name($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): Vec (int) {
    (var t_ref := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr); $human_name#$1_ValidatorConfig_ValidatorConfig(t_ref))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:277:5+379
function {:inline} $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): int {
    (var t_ref := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr); $1_Option_$borrow'address'($operator_account#$1_ValidatorConfig_ValidatorConfig(t_ref)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:229:5+176
function {:inline} $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): bool {
    ($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, addr) && $1_Option_$is_some'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:256:10+111
function {:inline} $1_ValidatorConfig_spec_get_config($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): $1_ValidatorConfig_Config {
    $1_Option_$borrow'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:356:10+122
function {:inline} $1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): bool {
    $1_Option_$is_some'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr)))
}

// struct ValidatorConfig::ValidatorConfig at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:22:5+260
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
    $IsEqual'$1_Option_Option'$1_ValidatorConfig_Config''($config#$1_ValidatorConfig_ValidatorConfig(s1), $config#$1_ValidatorConfig_ValidatorConfig(s2))
    && $IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig(s1), $operator_account#$1_ValidatorConfig_ValidatorConfig(s2))
    && $IsEqual'vec'u8''($human_name#$1_ValidatorConfig_ValidatorConfig(s1), $human_name#$1_ValidatorConfig_ValidatorConfig(s2))}
var $1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig;

// struct ValidatorConfig::Config at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:16:5+178
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
    $IsEqual'vec'u8''($consensus_pubkey#$1_ValidatorConfig_Config(s1), $consensus_pubkey#$1_ValidatorConfig_Config(s2))
    && $IsEqual'vec'u8''($validator_network_addresses#$1_ValidatorConfig_Config(s1), $validator_network_addresses#$1_ValidatorConfig_Config(s2))
    && $IsEqual'vec'u8''($fullnode_network_addresses#$1_ValidatorConfig_Config(s1), $fullnode_network_addresses#$1_ValidatorConfig_Config(s2))}

// fun ValidatorConfig::exists_config [baseline] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+84
procedure {:inline 1} $1_ValidatorConfig_exists_config(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+1
    assume {:print "$at(38,3345,3346)"} true;
    assume {:print "$track_local(9,0,0):", $t0} $t0 == $t0;

    // $t1 := exists<ValidatorConfig::ValidatorConfig>($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:85:9+6
    assume {:print "$at(38,3394,3400)"} true;
    $t1 := $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:85:9+29
    assume {:print "$track_return(9,0,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:86:5+1
    assume {:print "$at(38,3428,3429)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:86:5+1
    $ret0 := $t1;
    return;

}

// fun ValidatorConfig::set_operator [baseline] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
procedure {:inline 1} $1_ValidatorConfig_set_operator(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: $1_Option_Option'address';
    var $t22: $Mutation ($1_ValidatorConfig_ValidatorConfig);
    var $t23: $Mutation ($1_Option_Option'address');
    var $t0: $signer;
    var $t1: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t22));
    assume IsEmptyVec(p#$Mutation($t23));

    // bytecode translation starts here
    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:123:9+64
    assume {:print "$at(38,5178,5242)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:134:9+64
    assume {:print "$at(38,5749,5813)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // trace_local[validator_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+1
    assume {:print "$at(38,4014,4015)"} true;
    assume {:print "$track_local(9,10,0):", $t0} $t0 == $t0;

    // trace_local[operator_addr]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+1
    assume {:print "$track_local(9,10,1):", $t1} $t1 == $t1;

    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_validator($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:101:9+42
    assume {:print "$at(38,4125,4167)"} true;

    // assume Identical($t12, Or(Not(exists<Roles::RoleId>($t11)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t11)), 3))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:101:9+42
    assume ($t12 == (!$ResourceExists($1_Roles_RoleId_$memory, $t11) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t11)), 3)));

    // if ($t12) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:101:9+42
    if ($t12) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:101:9+42
L7:

    // assume Or(And(Not(exists<Roles::RoleId>($t11)), Eq(5, $t13)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t11)), 3), Eq(3, $t13))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:101:9+42
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t11) && $IsEqual'num'(5, $t13)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t11)), 3) && $IsEqual'num'(3, $t13)));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:101:9+42
    assume {:print "$at(38,4125,4167)"} true;
    assume {:print "$track_abort(9,10):", $t13} $t13 == $t13;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:101:9+42
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:101:9+42
L6:

    // opaque end: Roles::assert_validator($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:101:9+42

    // $t14 := ValidatorOperatorConfig::has_validator_operator_config($t1) on_abort goto L5 with $t13 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:105:13+69
    assume {:print "$at(38,4326,4395)"} true;
    call $t14 := $1_ValidatorOperatorConfig_has_validator_operator_config($t1);
    if ($abort_flag) {
        assume {:print "$at(38,4326,4395)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(9,10):", $t13} $t13 == $t13;
        goto L5;
    }

    // $t15 := 3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:106:38+25
    assume {:print "$at(38,4434,4459)"} true;
    $t15 := 3;
    assume $IsValid'u64'($t15);

    // $t16 := opaque begin: Errors::invalid_argument($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:106:13+51

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:106:13+51
    assume $IsValid'u64'($t16);

    // assume Eq<u64>($t16, 7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:106:13+51
    assume $IsEqual'u64'($t16, 7);

    // $t16 := opaque end: Errors::invalid_argument($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:106:13+51

    // trace_local[tmp#$3]($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:104:9+164
    assume {:print "$at(38,4306,4470)"} true;
    assume {:print "$track_local(9,10,3):", $t16} $t16 == $t16;

    // trace_local[tmp#$2]($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:104:9+164
    assume {:print "$track_local(9,10,2):", $t14} $t14 == $t14;

    // if ($t14) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:104:9+164
    if ($t14) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:104:9+164
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:104:9+164

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:104:9+164
    assume {:print "$at(38,4306,4470)"} true;
    assume {:print "$track_abort(9,10):", $t16} $t16 == $t16;

    // $t13 := move($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:104:9+164
    $t13 := $t16;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:104:9+164
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:108:41+17
    assume {:print "$at(38,4512,4529)"} true;
L0:

    // $t17 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:108:22+37

    // assume WellFormed($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:108:22+37
    assume $IsValid'address'($t17);

    // assume Eq<address>($t17, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:108:22+37
    assume $IsEqual'address'($t17, $1_Signer_spec_address_of($t0));

    // $t17 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:108:22+37

    // trace_local[sender]($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:108:13+6
    assume {:print "$track_local(9,10,6):", $t17} $t17 == $t17;

    // $t18 := ValidatorConfig::exists_config($t17) on_abort goto L5 with $t13 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:16+21
    assume {:print "$at(38,4547,4568)"} true;
    call $t18 := $1_ValidatorConfig_exists_config($t17);
    if ($abort_flag) {
        assume {:print "$at(38,4547,4568)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(9,10):", $t13} $t13 == $t13;
        goto L5;
    }

    // $t19 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:61+17
    $t19 := 0;
    assume $IsValid'u64'($t19);

    // $t20 := opaque begin: Errors::not_published($t19) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:39+40

    // assume WellFormed($t20) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:39+40
    assume $IsValid'u64'($t20);

    // assume Eq<u64>($t20, 5) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:39+40
    assume $IsEqual'u64'($t20, 5);

    // $t20 := opaque end: Errors::not_published($t19) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:39+40

    // trace_local[tmp#$5]($t20) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:9+71
    assume {:print "$track_local(9,10,5):", $t20} $t20 == $t20;

    // trace_local[tmp#$4]($t18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:9+71
    assume {:print "$track_local(9,10,4):", $t18} $t18 == $t18;

    // if ($t18) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:9+71
    if ($t18) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:9+71
L3:

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:9+71
    assume {:print "$at(38,4540,4611)"} true;
    assume {:print "$track_abort(9,10):", $t20} $t20 == $t20;

    // $t13 := move($t20) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:9+71
    $t13 := $t20;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:109:9+71
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:86+13
    assume {:print "$at(38,4698,4711)"} true;
L2:

    // $t21 := opaque begin: Option::some<address>($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:73+27

    // assume And(WellFormed($t21), Le(Len<address>(select Option::Option.vec($t21)), 1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:73+27
    assume ($IsValid'$1_Option_Option'address''($t21) && (LenVec($vec#$1_Option_Option'address'($t21)) <= 1));

    // assume Eq<Option::Option<address>>($t21, Option::spec_some<address>($t1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:73+27
    assume $IsEqual'$1_Option_Option'address''($t21, $1_Option_spec_some'address'($t1));

    // $t21 := opaque end: Option::some<address>($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:73+27

    // $t22 := borrow_global<ValidatorConfig::ValidatorConfig>($t17) on_abort goto L5 with $t13 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:10+17
    if (!$ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t17)) {
        call $ExecFailureAbort();
    } else {
        $t22 := $Mutation($Global($t17), EmptyVec(), $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t17));
    }
    if ($abort_flag) {
        assume {:print "$at(38,4622,4639)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(9,10):", $t13} $t13 == $t13;
        goto L5;
    }

    // $t23 := borrow_field<ValidatorConfig::ValidatorConfig>.operator_account($t22) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:9+61
    $t23 := $ChildMutation($t22, 1, $operator_account#$1_ValidatorConfig_ValidatorConfig($Dereference($t22)));

    // write_ref($t23, $t21) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:9+91
    $t23 := $UpdateMutation($t23, $t21);

    // write_back[Reference($t22).operator_account]($t23) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:9+91
    $t22 := $UpdateMutation($t22, $Update'$1_ValidatorConfig_ValidatorConfig'_operator_account($Dereference($t22), $Dereference($t23)));

    // pack_ref_deep($t22) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:9+91

    // write_back[ValidatorConfig::ValidatorConfig@]($t22) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:9+91
    $1_ValidatorConfig_ValidatorConfig_$memory := $ResourceUpdate($1_ValidatorConfig_ValidatorConfig_$memory, $GlobalLocationAddress($t22),
        $Dereference($t22));

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:111:5+1
    assume {:print "$at(38,4718,4719)"} true;
L4:

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:111:5+1
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:111:5+1
L5:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:111:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:258:10+64
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

// fun SlidingNonce::record_nonce_or_abort [baseline] at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+212
procedure {:inline 1} $1_SlidingNonce_record_nonce_or_abort(_$t0: $signer, _$t1: int) returns ()
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
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+1
    assume {:print "$at(31,1585,1586)"} true;
    assume {:print "$track_local(10,1,0):", $t0} $t0 == $t0;

    // trace_local[seq_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+1
    assume {:print "$track_local(10,1,1):", $t1} $t1 == $t1;

    // $t5 := opaque begin: SlidingNonce::try_record_nonce($t0, $t1) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume {:print "$at(31,1695,1731)"} true;

    // assume Identical($t6, Not(exists<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0)))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume ($t6 == !$ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0)));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
L5:

    // assume And(Not(exists<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0))), Eq(5, $t7)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume (!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(5, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume {:print "$at(31,1695,1731)"} true;
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

    // assume exists<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0));

    // $t5 := opaque end: SlidingNonce::try_record_nonce($t0, $t1) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36

    // trace_local[code]($t5) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:13+4
    assume {:print "$track_local(10,1,4):", $t5} $t5 == $t5;

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:24+1
    assume {:print "$at(31,1756,1757)"} true;
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := ==($t5, $t8) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:21+2
    $t9 := $IsEqual'u64'($t5, $t8);

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
    assume {:print "$at(31,1741,1790)"} true;
    assume {:print "$track_abort(10,1):", $t10} $t10 == $t10;

    // $t7 := move($t10) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    $t7 := $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:58+1
L0:

    // label L2 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:38:5+1
    assume {:print "$at(31,1796,1797)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:38:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:38:5+1
L3:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:38:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:95:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): $1_DiemSystem_DiemSystem {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:206:5+94
function {:inline} $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory: $Memory $1_DiemConfig_DisableReconfiguration): bool {
    !$ResourceExists($1_DiemConfig_DisableReconfiguration_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:327:10+156
function {:inline} $1_DiemConfig_spec_reconfigure_omitted($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds, $1_DiemConfig_DisableReconfiguration_$memory: $Memory $1_DiemConfig_DisableReconfiguration): bool {
    (($1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) || $IsEqual'u64'($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory), 0)) || !$1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:457:9+84
function {:inline} $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory: $Memory $1_DiemConfig_Configuration): bool {
    $ResourceExists($1_DiemConfig_Configuration_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, 173345816)
}

// struct DiemConfig::DiemConfig<DiemSystem::DiemSystem> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($payload: $1_DiemSystem_DiemSystem): $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem', x: $1_DiemSystem_DiemSystem): $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem' {
    $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''(s: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    $IsValid'$1_DiemSystem_DiemSystem'($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''(s1: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem', s2: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    $IsEqual'$1_DiemSystem_DiemSystem'($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'(s1), $payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'(s2))}
var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';

// struct DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';
function {:constructor} $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'($payload: $1_RegisteredCurrencies_RegisteredCurrencies): $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''_payload(s: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies', x: $1_RegisteredCurrencies_RegisteredCurrencies): $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies' {
    $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''(s: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    $IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'($payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''(s1: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies', s2: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'($payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'(s1), $payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'(s2))}
var $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';

// struct DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($payload: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption): $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption', x: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption): $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption' {
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''(s: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    $IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''(s1: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption', s2: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s1), $payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s2))}
var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';

// struct DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'($payload: $1_DiemVMConfig_DiemVMConfig): $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig', x: $1_DiemVMConfig_DiemVMConfig): $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig' {
    $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''(s: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): bool {
    $IsValid'$1_DiemVMConfig_DiemVMConfig'($payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''(s1: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig', s2: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): bool {
    $IsEqual'$1_DiemVMConfig_DiemVMConfig'($payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'(s1), $payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'(s2))}
var $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';

// struct DiemConfig::DiemConfig<DiemVersion::DiemVersion> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
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

// struct DiemConfig::Configuration at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:31:5+306
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
    $IsEqual'u64'($epoch#$1_DiemConfig_Configuration(s1), $epoch#$1_DiemConfig_Configuration(s2))
    && $IsEqual'u64'($last_reconfiguration_time#$1_DiemConfig_Configuration(s1), $last_reconfiguration_time#$1_DiemConfig_Configuration(s2))
    && $IsEqual'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''($events#$1_DiemConfig_Configuration(s1), $events#$1_DiemConfig_Configuration(s2))}
var $1_DiemConfig_Configuration_$memory: $Memory $1_DiemConfig_Configuration;

// struct DiemConfig::DisableReconfiguration at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:44:5+40
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

// struct DiemConfig::ModifyConfigCapability<DiemSystem::DiemSystem> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:41:5+65
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

// struct DiemConfig::NewEpochEvent at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:26:5+64
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

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:394:5+93
function {:inline} $1_DiemSystem_$get_diem_system_config($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): $1_DiemSystem_DiemSystem {
    $1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:436:5+105
function {:inline} $1_DiemSystem_$validator_set_size($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): int {
    $1_Vector_$length'$1_DiemSystem_ValidatorInfo'($validators#$1_DiemSystem_DiemSystem($1_DiemSystem_$get_diem_system_config($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:415:10+108
function {:inline} $1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem', addr: int): bool {
    (var $range_0 := $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory); (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var v := ReadVec($range_0, $i_1);
    ($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(v), addr)))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:647:10+105
function {:inline} $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): Vec ($1_DiemSystem_ValidatorInfo) {
    $validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:651:10+165
function {:inline} $1_DiemSystem_spec_index_of_validator(validators: Vec ($1_DiemSystem_ValidatorInfo), addr: int): int {
    $choice_0(validators, addr)
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
    $IsEqual'u8'($scheme#$1_DiemSystem_DiemSystem(s1), $scheme#$1_DiemSystem_DiemSystem(s2))
    && $IsEqual'vec'$1_DiemSystem_ValidatorInfo''($validators#$1_DiemSystem_DiemSystem(s1), $validators#$1_DiemSystem_DiemSystem(s2))}

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
    $IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(s1), $addr#$1_DiemSystem_ValidatorInfo(s2))
    && $IsEqual'u64'($consensus_voting_power#$1_DiemSystem_ValidatorInfo(s1), $consensus_voting_power#$1_DiemSystem_ValidatorInfo(s2))
    && $IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(s1), $config#$1_DiemSystem_ValidatorInfo(s2))
    && $IsEqual'u64'($last_config_update_time#$1_DiemSystem_ValidatorInfo(s1), $last_config_update_time#$1_DiemSystem_ValidatorInfo(s2))}

// fun DiemSystem::add_validator [baseline] at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:169:5+1368
procedure {:inline 1} $1_DiemSystem_add_validator(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $Mutation (Vec ($1_DiemSystem_ValidatorInfo));
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: $1_ValidatorConfig_Config;
    var $t12: int;
    var $t13: $1_ValidatorConfig_Config;
    var $t14: $1_DiemSystem_DiemSystem;
    var $t15: int;
    var $t16: $1_DiemConfig_Configuration;
    var $t17: int;
    var $t18: Vec ($1_DiemSystem_ValidatorInfo);
    var $t19: $1_DiemConfig_Configuration;
    var $t20: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t21: int;
    var $t22: bool;
    var $t23: int;
    var $t24: int;
    var $t25: bool;
    var $t26: bool;
    var $t27: int;
    var $t28: int;
    var $t29: int;
    var $t30: bool;
    var $t31: int;
    var $t32: bool;
    var $t33: int;
    var $t34: int;
    var $t35: bool;
    var $t36: $1_DiemSystem_DiemSystem;
    var $t37: Vec ($1_DiemSystem_ValidatorInfo);
    var $t38: bool;
    var $t39: bool;
    var $t40: int;
    var $t41: int;
    var $t42: $1_ValidatorConfig_Config;
    var $t43: bool;
    var $t44: $Mutation ($1_DiemSystem_DiemSystem);
    var $t45: $Mutation (Vec ($1_DiemSystem_ValidatorInfo));
    var $t46: int;
    var $t47: bool;
    var $t48: int;
    var $t49: $1_DiemSystem_ValidatorInfo;
    var $t50: $1_DiemSystem_DiemSystem;
    var $t51: $1_DiemConfig_Configuration;
    var $t52: int;
    var $t53: $1_DiemConfig_Configuration;
    var $t54: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t55: bool;
    var $t56: $1_DiemConfig_Configuration;
    var $t57: int;
    var $t58: $1_DiemConfig_NewEpochEvent;
    var $t59: $1_DiemConfig_NewEpochEvent;
    var $t60: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t61: bool;
    var $t0: $signer;
    var $t1: int;
    var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies: [int]bool;
    var $temp_0'$1_DiemConfig_Configuration': $1_DiemConfig_Configuration;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'': $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    var $temp_0'$1_DiemSystem_DiemSystem': $1_DiemSystem_DiemSystem;
    var $temp_0'$1_ValidatorConfig_Config': $1_ValidatorConfig_Config;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'$1_DiemSystem_ValidatorInfo'': Vec ($1_DiemSystem_ValidatorInfo);
    var $1_DiemConfig_Configuration_$memory#145: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t44));
    assume IsEmptyVec(p#$Mutation($t45));

    // bytecode translation starts here
    // assume Identical($t15, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t15 == $1_Signer_spec_address_of($t0));

    // assume Identical($t16, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t16 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t17, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t17 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t18, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:232:9+31
    assume {:print "$at(17,10428,10459)"} true;
    assume ($t18 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t19, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:376:9+46
    assume {:print "$at(14,16248,16294)"} true;
    assume ($t19 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t20, select DiemConfig::Configuration.events($t19)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:382:9+27
    assume {:print "$at(14,16519,16546)"} true;
    assume ($t20 == $events#$1_DiemConfig_Configuration($t19));

    // assume Identical($t21, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t21 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:169:5+1
    assume {:print "$at(17,7727,7728)"} true;
    assume {:print "$track_local(14,0,0):", $t0} $t0 == $t0;

    // trace_local[validator_addr]($t1) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:169:5+1
    assume {:print "$track_local(14,0,1):", $t1} $t1 == $t1;

    // opaque begin: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:173:9+33
    assume {:print "$at(17,7856,7889)"} true;

    // assume Identical($t22, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:173:9+33
    assume ($t22 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t22) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:173:9+33
    if ($t22) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:173:9+33
L9:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t23)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:173:9+33
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t23));

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:173:9+33
    assume {:print "$at(17,7856,7889)"} true;
    assume {:print "$track_abort(14,0):", $t23} $t23 == $t23;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:173:9+33
    goto L7;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:173:9+33
L8:

    // opaque end: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:173:9+33

    // assume Identical($t24, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t24 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:174:9+35
    assume {:print "$at(17,7899,7934)"} true;

    // assume Identical($t25, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t24))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t24)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:174:9+35
    assume ($t25 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t24)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t24)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t25) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:174:9+35
    if ($t25) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:174:9+35
L11:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t23)), And(Not(exists<Roles::RoleId>($t24)), Eq(5, $t23))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t24)), 0), Eq(3, $t23))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t23))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:174:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t23)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t24) && $IsEqual'num'(5, $t23))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t24)), 0) && $IsEqual'num'(3, $t23))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t23)));

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:174:9+35
    assume {:print "$at(17,7899,7934)"} true;
    assume {:print "$track_abort(14,0):", $t23} $t23 == $t23;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:174:9+35
    goto L7;

    // label L10 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:174:9+35
L10:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:174:9+35

    // $t26 := opaque begin: ValidatorConfig::is_valid($t1) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:178:13+41
    assume {:print "$at(17,8038,8079)"} true;

    // assume WellFormed($t26) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:178:13+41
    assume $IsValid'bool'($t26);

    // assume Eq<bool>($t26, ValidatorConfig::$is_valid($t1)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:178:13+41
    assume $IsEqual'bool'($t26, $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, $t1));

    // $t26 := opaque end: ValidatorConfig::is_valid($t1) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:178:13+41

    // $t27 := 1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:179:38+30
    assume {:print "$at(17,8118,8148)"} true;
    $t27 := 1;
    assume $IsValid'u64'($t27);

    // $t28 := opaque begin: Errors::invalid_argument($t27) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:179:13+56

    // assume WellFormed($t28) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:179:13+56
    assume $IsValid'u64'($t28);

    // assume Eq<u64>($t28, 7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:179:13+56
    assume $IsEqual'u64'($t28, 7);

    // $t28 := opaque end: Errors::invalid_argument($t27) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:179:13+56

    // trace_local[tmp#$5]($t28) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:177:9+141
    assume {:print "$at(17,8018,8159)"} true;
    assume {:print "$track_local(14,0,5):", $t28} $t28 == $t28;

    // trace_local[tmp#$2]($t26) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:177:9+141
    assume {:print "$track_local(14,0,2):", $t26} $t26 == $t26;

    // if ($t26) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:177:9+141
    if ($t26) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:177:9+141
L1:

    // trace_abort($t28) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:177:9+141
    assume {:print "$at(17,8018,8159)"} true;
    assume {:print "$track_abort(14,0):", $t28} $t28 == $t28;

    // $t23 := move($t28) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:177:9+141
    $t23 := $t28;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:177:9+141
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20
    assume {:print "$at(17,8230,8250)"} true;
L0:

    // $t29 := opaque begin: DiemSystem::validator_set_size() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20

    // assume Identical($t30, Not(exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20
    assume ($t30 == !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816));

    // if ($t30) goto L13 else goto L12 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20
    if ($t30) { goto L13; } else { goto L12; }

    // label L13 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20
L13:

    // assume And(Not(exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18)), Eq(5, $t23)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20
    assume (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816) && $IsEqual'num'(5, $t23));

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20
    assume {:print "$at(17,8230,8250)"} true;
    assume {:print "$track_abort(14,0):", $t23} $t23 == $t23;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20
    goto L7;

    // label L12 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20
L12:

    // assume WellFormed($t29) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20
    assume $IsValid'u64'($t29);

    // assume Eq<u64>($t29, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20
    assume $IsEqual'u64'($t29, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)));

    // $t29 := opaque end: DiemSystem::validator_set_size() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:13+20

    // $t31 := 256 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:36+14
    $t31 := 256;
    assume $IsValid'u64'($t31);

    // $t32 := <($t29, $t31) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:184:34+1
    call $t32 := $Lt($t29, $t31);

    // $t33 := 7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:185:36+15
    assume {:print "$at(17,8304,8319)"} true;
    $t33 := 7;
    assume $IsValid'u64'($t33);

    // $t34 := opaque begin: Errors::limit_exceeded($t33) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:185:13+39

    // assume WellFormed($t34) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:185:13+39
    assume $IsValid'u64'($t34);

    // assume Eq<u64>($t34, 8) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:185:13+39
    assume $IsEqual'u64'($t34, 8);

    // $t34 := opaque end: Errors::limit_exceeded($t33) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:185:13+39

    // trace_local[tmp#$7]($t34) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:183:9+120
    assume {:print "$at(17,8210,8330)"} true;
    assume {:print "$track_local(14,0,7):", $t34} $t34 == $t34;

    // trace_local[tmp#$6]($t32) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:183:9+120
    assume {:print "$track_local(14,0,6):", $t32} $t32 == $t32;

    // if ($t32) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:183:9+120
    if ($t32) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:183:9+120
L3:

    // trace_abort($t34) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:183:9+120
    assume {:print "$at(17,8210,8330)"} true;
    assume {:print "$track_abort(14,0):", $t34} $t34 == $t34;

    // $t23 := move($t34) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:183:9+120
    $t23 := $t34;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:183:9+120
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24
    assume {:print "$at(17,8366,8390)"} true;
L2:

    // $t14 := opaque begin: DiemSystem::get_diem_system_config() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24

    // assume Identical($t35, Not(exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24
    assume ($t35 == !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816));

    // if ($t35) goto L15 else goto L14 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24
    if ($t35) { goto L15; } else { goto L14; }

    // label L15 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24
L15:

    // assume And(Not(exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18)), Eq(5, $t23)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24
    assume (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816) && $IsEqual'num'(5, $t23));

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24
    assume {:print "$at(17,8366,8390)"} true;
    assume {:print "$track_abort(14,0):", $t23} $t23 == $t23;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24
    goto L7;

    // label L14 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24
L14:

    // assume And(WellFormed($t14), forall i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators($t14))), j: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators($t14))): Implies(Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators($t14), i)), select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators($t14), j))), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24
    assume ($IsValid'$1_DiemSystem_DiemSystem'($t14) && (var $range_0 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($t14))); (var $range_1 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($t14))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var i := $i_2;
    (var j := $i_3;
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($t14), i)), $addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($t14), j))) ==> $IsEqual'num'(i, j)))))))));

    // assume Eq<DiemSystem::DiemSystem>($t14, DiemConfig::$get<DiemSystem::DiemSystem>()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24
    assume $IsEqual'$1_DiemSystem_DiemSystem'($t14, $1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // $t14 := opaque end: DiemSystem::get_diem_system_config() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:34+24

    // trace_local[diem_system_config]($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:188:13+18
    assume {:print "$track_local(14,0,14):", $t14} $t14 == $t14;

    // $t36 := copy($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:192:45+18
    assume {:print "$at(17,8516,8534)"} true;
    $t36 := $t14;

    // $t37 := get_field<DiemSystem::DiemSystem>.validators($t36) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:192:44+30
    $t37 := $validators#$1_DiemSystem_DiemSystem($t36);

    // $t38 := opaque begin: DiemSystem::is_validator_($t1, $t37) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:192:14+61

    // assume WellFormed($t38) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:192:14+61
    assume $IsValid'bool'($t38);

    // assume Eq<bool>($t38, exists v: $t37: Eq<address>(select DiemSystem::ValidatorInfo.addr(v), $t1)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:192:14+61
    assume $IsEqual'bool'($t38, (var $range_0 := $t37; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var v := ReadVec($range_0, $i_1);
    ($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(v), $t1))))));

    // $t38 := opaque end: DiemSystem::is_validator_($t1, $t37) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:192:14+61

    // $t39 := !($t38) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:192:13+1
    call $t39 := $Not($t38);

    // $t40 := 2 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:193:38+20
    assume {:print "$at(17,8585,8605)"} true;
    $t40 := 2;
    assume $IsValid'u64'($t40);

    // $t41 := opaque begin: Errors::invalid_argument($t40) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:193:13+46

    // assume WellFormed($t41) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:193:13+46
    assume $IsValid'u64'($t41);

    // assume Eq<u64>($t41, 7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:193:13+46
    assume $IsEqual'u64'($t41, 7);

    // $t41 := opaque end: Errors::invalid_argument($t40) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:193:13+46

    // trace_local[tmp#$9]($t41) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:191:9+152
    assume {:print "$at(17,8464,8616)"} true;
    assume {:print "$track_local(14,0,9):", $t41} $t41 == $t41;

    // trace_local[tmp#$8]($t39) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:191:9+152
    assume {:print "$track_local(14,0,8):", $t39} $t39 == $t39;

    // if ($t39) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:191:9+152
    if ($t39) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:191:9+152
L5:

    // trace_abort($t41) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:191:9+152
    assume {:print "$at(17,8464,8616)"} true;
    assume {:print "$track_abort(14,0):", $t41} $t41 == $t41;

    // $t23 := move($t41) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:191:9+152
    $t23 := $t41;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:191:9+152
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:50+14
    assume {:print "$at(17,8725,8739)"} true;
L4:

    // $t42 := opaque begin: ValidatorConfig::get_config($t1) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43

    // assume Identical($t43, Or(Not(ValidatorConfig::$exists_config($t1)), Option::$is_none<ValidatorConfig::Config>(select ValidatorConfig::ValidatorConfig.config(global<ValidatorConfig::ValidatorConfig>($t1))))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43
    assume ($t43 == (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1) || $1_Option_$is_none'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t1)))));

    // if ($t43) goto L17 else goto L16 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43
    if ($t43) { goto L17; } else { goto L16; }

    // label L17 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43
L17:

    // assume Or(And(Not(ValidatorConfig::$exists_config($t1)), Eq(5, $t23)), And(Option::$is_none<ValidatorConfig::Config>(select ValidatorConfig::ValidatorConfig.config(global<ValidatorConfig::ValidatorConfig>($t1))), Eq(7, $t23))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43
    assume ((!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && $IsEqual'num'(5, $t23)) || ($1_Option_$is_none'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t1))) && $IsEqual'num'(7, $t23)));

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43
    assume {:print "$at(17,8697,8740)"} true;
    assume {:print "$track_abort(14,0):", $t23} $t23 == $t23;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43
    goto L7;

    // label L16 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43
L16:

    // assume WellFormed($t42) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43
    assume $IsValid'$1_ValidatorConfig_Config'($t42);

    // assume Eq<ValidatorConfig::Config>($t42, ValidatorConfig::spec_get_config($t1)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43
    assume $IsEqual'$1_ValidatorConfig_Config'($t42, $1_ValidatorConfig_spec_get_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1));

    // $t42 := opaque end: ValidatorConfig::get_config($t1) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:22+43

    // trace_local[config]($t42) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:197:13+6
    assume {:print "$track_local(14,0,13):", $t42} $t42 == $t42;

    // $t44 := borrow_local($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:198:32+18
    assume {:print "$at(17,8773,8791)"} true;
    $t44 := $Mutation($Local(14), EmptyVec(), $t14);

    // $t45 := borrow_field<DiemSystem::DiemSystem>.validators($t44) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:198:27+34
    $t45 := $ChildMutation($t44, 1, $validators#$1_DiemSystem_DiemSystem($Dereference($t44)));

    // trace_local[tmp#$4]($t45) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:198:27+34
    $temp_0'vec'$1_DiemSystem_ValidatorInfo'' := $Dereference($t45);
    assume {:print "$track_local(14,0,4):", $temp_0'vec'$1_DiemSystem_ValidatorInfo''} $temp_0'vec'$1_DiemSystem_ValidatorInfo'' == $temp_0'vec'$1_DiemSystem_ValidatorInfo'';

    // trace_local[tmp#$10]($t1) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:199:19+14
    assume {:print "$at(17,8838,8852)"} true;
    assume {:print "$track_local(14,0,10):", $t1} $t1 == $t1;

    // trace_local[tmp#$11]($t42) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:200:13+6
    assume {:print "$at(17,8866,8872)"} true;
    assume {:print "$track_local(14,0,11):", $t42} $t42 == $t42;

    // $t46 := opaque begin: DiemTimestamp::now_microseconds() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
    assume {:print "$at(17,8990,9023)"} true;

    // assume Identical($t47, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
    assume ($t47 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t47) goto L22 else goto L18 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
    if ($t47) { goto L22; } else { goto L18; }

    // label L19 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
L19:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t23)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t23));

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
    assume {:print "$at(17,8990,9023)"} true;
    assume {:print "$track_abort(14,0):", $t23} $t23 == $t23;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
    goto L7;

    // label L18 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
L18:

    // assume WellFormed($t46) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
    assume $IsValid'u64'($t46);

    // assume Eq<u64>($t46, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
    assume $IsEqual'u64'($t46, $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // $t46 := opaque end: DiemTimestamp::now_microseconds() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33

    // trace_local[tmp#$3]($t46) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:202:38+33
    assume {:print "$track_local(14,0,3):", $t46} $t46 == $t46;

    // $t48 := 1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:201:37+1
    assume {:print "$at(17,8950,8951)"} true;
    $t48 := 1;
    assume $IsValid'u64'($t48);

    // $t49 := pack DiemSystem::ValidatorInfo($t1, $t48, $t42, $t46) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:198:63+230
    assume {:print "$at(17,8804,9034)"} true;
    $t49 := $1_DiemSystem_ValidatorInfo($t1, $t48, $t42, $t46);

    // Vector::push_back<DiemSystem::ValidatorInfo>($t45, $t49) on_abort goto L7 with $t23 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:198:9+285
    call $t45 := $1_Vector_push_back'$1_DiemSystem_ValidatorInfo'($t45, $t49);
    if ($abort_flag) {
        assume {:print "$at(17,8750,9035)"} true;
        $t23 := $abort_code;
        assume {:print "$track_abort(14,0):", $t23} $t23 == $t23;
        goto L7;
    }

    // write_back[Reference($t44).validators]($t45) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:198:9+285
    $t44 := $UpdateMutation($t44, $Update'$1_DiemSystem_DiemSystem'_validators($Dereference($t44), $Dereference($t45)));

    // pack_ref_deep($t44) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:198:9+285

    // write_back[LocalRoot($t14)@]($t44) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:198:9+285
    $t14 := $Dereference($t44);

    // $t50 := move($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:32+18
    assume {:print "$at(17,9069,9087)"} true;
    $t50 := $t14;

    // assume Identical($t51, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t51 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t52, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t52 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t53, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:376:9+46
    assume {:print "$at(14,16248,16294)"} true;
    assume ($t53 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t54, select DiemConfig::Configuration.events($t53)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:382:9+27
    assume {:print "$at(14,16519,16546)"} true;
    assume ($t54 == $events#$1_DiemConfig_Configuration($t53));

    // assume Implies(DiemTimestamp::$is_operating(), And(And(DiemConfig::spec_has_config(), DiemConfig::spec_is_published<DiemSystem::DiemSystem>()), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
    assume {:print "$at(17,9046,9088)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> (($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory) && $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // opaque begin: DiemSystem::set_diem_system_config($t50) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42

    // assume Identical($t55, Or(Not(DiemTimestamp::$is_operating()), And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t51), 18446744073709551615)), Lt($t52, select DiemConfig::Configuration.last_reconfiguration_time($t51))))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
    assume ($t55 == (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t51) < 18446744073709551615)) && ($t52 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t51)))));

    // if ($t55) goto L21 else goto L20 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
    if ($t55) { goto L21; } else { goto L20; }

    // label L21 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
L21:

    // assume Or(And(Not(DiemTimestamp::$is_operating()), Eq(1, $t23)), And(And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t51), 18446744073709551615)), Lt($t52, select DiemConfig::Configuration.last_reconfiguration_time($t51))), Eq(1, $t23))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
    assume ((!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t23)) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t51) < 18446744073709551615)) && ($t52 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t51))) && $IsEqual'num'(1, $t23)));

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
    assume {:print "$at(17,9046,9088)"} true;
    assume {:print "$track_abort(14,0):", $t23} $t23 == $t23;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
    goto L7;

    // label L20 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
L20:

    // @145 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
    $1_DiemConfig_Configuration_$memory#145 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'';
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816);
    }

    // modifies global<DiemConfig::Configuration>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, 173345816, $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, 173345816);
    }

    // assume Identical($t56, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:377:9+56
    assume {:print "$at(14,16303,16359)"} true;
    assume ($t56 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t57, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:378:9+54
    assume {:print "$at(14,16368,16422)"} true;
    assume ($t57 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t58, pack DiemConfig::NewEpochEvent(select DiemConfig::Configuration.epoch($t56))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume {:print "$at(14,16431,16510)"} true;
    assume ($t58 == $1_DiemConfig_NewEpochEvent($epoch#$1_DiemConfig_Configuration($t56)));

    // assume Eq<DiemSystem::DiemSystem>(select DiemConfig::DiemConfig.payload(global<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18)), $t50) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume $IsEqual'$1_DiemSystem_DiemSystem'($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816)), $t50);

    // assume DiemConfig::spec_is_published<DiemSystem::DiemSystem>() at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory);

    // assume Eq<DiemSystem::DiemSystem>(DiemConfig::$get<DiemSystem::DiemSystem>(), $t50) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume $IsEqual'$1_DiemSystem_DiemSystem'($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), $t50);

    // assume Eq<bool>(DiemConfig::spec_has_config[@145](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#145), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Identical($t59, $t58) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume ($t59 == $t58);

    // assume Identical($t60, $t54) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume ($t60 == $t54);

    // assume Identical($t61, And(Not(DiemConfig::spec_reconfigure_omitted()), Neq<u64>($t57, select DiemConfig::Configuration.last_reconfiguration_time($t53)))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume ($t61 == (!$1_DiemConfig_spec_reconfigure_omitted($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_DiemConfig_DisableReconfiguration_$memory) && !$IsEqual'u64'($t57, $last_reconfiguration_time#$1_DiemConfig_Configuration($t53))));

    // emit_event($t59, $t60, $t61) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:205:9+42
    assume {:print "$at(17,9046,9088)"} true;
    $es := $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'($es, $t60, $t59, $t61);

    // opaque end: DiemSystem::set_diem_system_config($t50) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume {:print "$at(14,16431,16510)"} true;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:206:5+1
    assume {:print "$at(17,9094,9095)"} true;
L6:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:206:5+1
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:206:5+1
L7:

    // abort($t23) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:206:5+1
    $abort_code := $t23;
    $abort_flag := true;
    return;

    // label L22 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L22:

    // destroy($t44) at <internal>:1:1+10

    // destroy($t45) at <internal>:1:1+10

    // goto L19 at <internal>:1:1+10
    goto L19;

}

// fun DiemSystem::remove_validator [baseline] at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:247:5+824
procedure {:inline 1} $1_DiemSystem_remove_validator(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $1_DiemSystem_DiemSystem;
    var $t5: int;
    var $t6: $1_Option_Option'u64';
    var $t7: int;
    var $t8: $1_DiemConfig_Configuration;
    var $t9: int;
    var $t10: Vec ($1_DiemSystem_ValidatorInfo);
    var $t11: $1_DiemConfig_Configuration;
    var $t12: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: bool;
    var $t18: bool;
    var $t19: $1_DiemSystem_DiemSystem;
    var $t20: Vec ($1_DiemSystem_ValidatorInfo);
    var $t21: int;
    var $t22: $1_Option_Option'u64';
    var $t23: bool;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t27: bool;
    var $t28: $Mutation ($1_DiemSystem_DiemSystem);
    var $t29: $Mutation (Vec ($1_DiemSystem_ValidatorInfo));
    var $t30: $1_DiemSystem_ValidatorInfo;
    var $t31: $1_DiemSystem_DiemSystem;
    var $t32: $1_DiemConfig_Configuration;
    var $t33: int;
    var $t34: $1_DiemConfig_Configuration;
    var $t35: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t36: bool;
    var $t37: $1_DiemConfig_Configuration;
    var $t38: int;
    var $t39: $1_DiemConfig_NewEpochEvent;
    var $t40: $1_DiemConfig_NewEpochEvent;
    var $t41: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t42: bool;
    var $t0: $signer;
    var $t1: int;
    var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies: [int]bool;
    var $temp_0'$1_DiemConfig_Configuration': $1_DiemConfig_Configuration;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'': $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    var $temp_0'$1_DiemSystem_DiemSystem': $1_DiemSystem_DiemSystem;
    var $temp_0'$1_Option_Option'u64'': $1_Option_Option'u64';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_DiemConfig_Configuration_$memory#139: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t28));
    assume IsEmptyVec(p#$Mutation($t29));

    // bytecode translation starts here
    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t8 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t9, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t9 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t10, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:279:9+31
    assume {:print "$at(17,12647,12678)"} true;
    assume ($t10 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t11, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:376:9+46
    assume {:print "$at(14,16248,16294)"} true;
    assume ($t11 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t12, select DiemConfig::Configuration.events($t11)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:382:9+27
    assume {:print "$at(14,16519,16546)"} true;
    assume ($t12 == $events#$1_DiemConfig_Configuration($t11));

    // assume Identical($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t13 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:247:5+1
    assume {:print "$at(17,11147,11148)"} true;
    assume {:print "$track_local(14,8,0):", $t0} $t0 == $t0;

    // trace_local[validator_addr]($t1) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:247:5+1
    assume {:print "$track_local(14,8,1):", $t1} $t1 == $t1;

    // opaque begin: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:251:9+33
    assume {:print "$at(17,11279,11312)"} true;

    // assume Identical($t14, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:251:9+33
    assume ($t14 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t14) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:251:9+33
    if ($t14) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:251:9+33
L5:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t15)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:251:9+33
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t15));

    // trace_abort($t15) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:251:9+33
    assume {:print "$at(17,11279,11312)"} true;
    assume {:print "$track_abort(14,8):", $t15} $t15 == $t15;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:251:9+33
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:251:9+33
L4:

    // opaque end: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:251:9+33

    // assume Identical($t16, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t16 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:252:9+35
    assume {:print "$at(17,11322,11357)"} true;

    // assume Identical($t17, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t16))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t16)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:252:9+35
    assume ($t17 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t16)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t16)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t17) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:252:9+35
    if ($t17) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:252:9+35
L7:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t15)), And(Not(exists<Roles::RoleId>($t16)), Eq(5, $t15))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t16)), 0), Eq(3, $t15))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t15))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:252:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t15)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t16) && $IsEqual'num'(5, $t15))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t16)), 0) && $IsEqual'num'(3, $t15))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t15)));

    // trace_abort($t15) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:252:9+35
    assume {:print "$at(17,11322,11357)"} true;
    assume {:print "$track_abort(14,8):", $t15} $t15 == $t15;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:252:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:252:9+35
L6:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:252:9+35

    // $t4 := opaque begin: DiemSystem::get_diem_system_config() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24
    assume {:print "$at(17,11392,11416)"} true;

    // assume Identical($t18, Not(exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24
    assume ($t18 == !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816));

    // if ($t18) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24
    if ($t18) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24
L9:

    // assume And(Not(exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18)), Eq(5, $t15)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24
    assume (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816) && $IsEqual'num'(5, $t15));

    // trace_abort($t15) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24
    assume {:print "$at(17,11392,11416)"} true;
    assume {:print "$track_abort(14,8):", $t15} $t15 == $t15;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24
L8:

    // assume And(WellFormed($t4), forall i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators($t4))), j: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators($t4))): Implies(Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators($t4), i)), select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators($t4), j))), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24
    assume ($IsValid'$1_DiemSystem_DiemSystem'($t4) && (var $range_0 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($t4))); (var $range_1 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($t4))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var i := $i_2;
    (var j := $i_3;
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($t4), i)), $addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($t4), j))) ==> $IsEqual'num'(i, j)))))))));

    // assume Eq<DiemSystem::DiemSystem>($t4, DiemConfig::$get<DiemSystem::DiemSystem>()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24
    assume $IsEqual'$1_DiemSystem_DiemSystem'($t4, $1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // $t4 := opaque end: DiemSystem::get_diem_system_config() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:34+24

    // trace_local[diem_system_config]($t4) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:253:13+18
    assume {:print "$track_local(14,8,4):", $t4} $t4 == $t4;

    // $t19 := copy($t4) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:255:57+18
    assume {:print "$at(17,11533,11551)"} true;
    $t19 := $t4;

    // $t20 := get_field<DiemSystem::DiemSystem>.validators($t19) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:255:56+30
    $t20 := $validators#$1_DiemSystem_DiemSystem($t19);

    // assume Identical($t21, Len<DiemSystem::ValidatorInfo>($t20)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:492:9+27
    assume {:print "$at(17,23314,23341)"} true;
    assume ($t21 == LenVec($t20));

    // $t22 := opaque begin: DiemSystem::get_validator_index_($t20, $t1) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:255:35+68
    assume {:print "$at(17,11511,11579)"} true;

    // assume And(WellFormed($t22), Le(Len<u64>(select Option::Option.vec($t22)), 1)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:255:35+68
    assume ($IsValid'$1_Option_Option'u64''($t22) && (LenVec($vec#$1_Option_Option'u64'($t22)) <= 1));

    // assume Implies(forall i: Range(0, $t21): Neq<address>(select DiemSystem::ValidatorInfo.addr(Index($t20, i)), $t1), Option::$is_none<u64>($t22)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:255:35+68
    assume ((var $range_0 := $Range(0, $t21); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    (!$IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($t20, i)), $t1))))) ==> $1_Option_$is_none'u64'($t22));

    // assume Implies(exists i: Range(0, $t21): Eq<address>(select DiemSystem::ValidatorInfo.addr(Index($t20, i)), $t1), And(Option::$is_some<u64>($t22), {let at = Option::$borrow<u64>($t22); Eq<u64>(at, DiemSystem::spec_index_of_validator($t20, $t1))})) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:255:35+68
    assume ((var $range_0 := $Range(0, $t21); (exists $i_1: int :: $InRange($range_0, $i_1) && (var i := $i_1;
    ($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($t20, i)), $t1))))) ==> ($1_Option_$is_some'u64'($t22) && (var at := $1_Option_$borrow'u64'($t22); $IsEqual'u64'(at, $1_DiemSystem_spec_index_of_validator($t20, $t1)))));

    // $t22 := opaque end: DiemSystem::get_validator_index_($t20, $t1) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:255:35+68

    // trace_local[to_remove_index_vec]($t22) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:255:13+19
    assume {:print "$track_local(14,8,6):", $t22} $t22 == $t22;

    // $t23 := opaque begin: Option::is_some<u64>($t22) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:16+37
    assume {:print "$at(17,11596,11633)"} true;

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:16+37
    assume $IsValid'bool'($t23);

    // assume Eq<bool>($t23, Option::$is_some<u64>($t22)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:16+37
    assume $IsEqual'bool'($t23, $1_Option_$is_some'u64'($t22));

    // $t23 := opaque end: Option::is_some<u64>($t22) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:16+37

    // $t24 := 3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:80+24
    $t24 := 3;
    assume $IsValid'u64'($t24);

    // $t25 := opaque begin: Errors::invalid_argument($t24) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:55+50

    // assume WellFormed($t25) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:55+50
    assume $IsValid'u64'($t25);

    // assume Eq<u64>($t25, 7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:55+50
    assume $IsEqual'u64'($t25, 7);

    // $t25 := opaque end: Errors::invalid_argument($t24) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:55+50

    // trace_local[tmp#$3]($t25) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:9+97
    assume {:print "$track_local(14,8,3):", $t25} $t25 == $t25;

    // trace_local[tmp#$2]($t23) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:9+97
    assume {:print "$track_local(14,8,2):", $t23} $t23 == $t23;

    // if ($t23) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:9+97
    if ($t23) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:9+97
L1:

    // trace_abort($t25) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:9+97
    assume {:print "$at(17,11589,11686)"} true;
    assume {:print "$track_abort(14,8):", $t25} $t25 == $t25;

    // $t15 := move($t25) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:9+97
    $t15 := $t25;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:256:9+97
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:47+20
    assume {:print "$at(17,11734,11754)"} true;
L0:

    // $t26 := opaque begin: Option::borrow<u64>($t22) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36

    // assume Identical($t27, Option::$is_none<u64>($t22)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36
    assume ($t27 == $1_Option_$is_none'u64'($t22));

    // if ($t27) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36
    if ($t27) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36
L11:

    // assume And(Option::$is_none<u64>($t22), Eq(7, $t15)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36
    assume ($1_Option_$is_none'u64'($t22) && $IsEqual'num'(7, $t15));

    // trace_abort($t15) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36
    assume {:print "$at(17,11719,11755)"} true;
    assume {:print "$track_abort(14,8):", $t15} $t15 == $t15;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36
    goto L3;

    // label L10 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36
L10:

    // assume WellFormed($t26) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36
    assume $IsValid'u64'($t26);

    // assume Eq<u64>($t26, Option::$borrow<u64>($t22)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36
    assume $IsEqual'u64'($t26, $1_Option_$borrow'u64'($t22));

    // $t26 := opaque end: Option::borrow<u64>($t22) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:32+36

    // trace_local[to_remove_index]($t26) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:257:13+15
    assume {:print "$track_local(14,8,5):", $t26} $t26 == $t26;

    // $t28 := borrow_local($t4) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:259:39+18
    assume {:print "$at(17,11864,11882)"} true;
    $t28 := $Mutation($Local(4), EmptyVec(), $t4);

    // $t29 := borrow_field<DiemSystem::DiemSystem>.validators($t28) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:259:34+34
    $t29 := $ChildMutation($t28, 1, $validators#$1_DiemSystem_DiemSystem($Dereference($t28)));

    // $t30 := Vector::swap_remove<DiemSystem::ValidatorInfo>($t29, $t26) on_abort goto L3 with $t15 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:259:14+72
    call $t30,$t29 := $1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'($t29, $t26);
    if ($abort_flag) {
        assume {:print "$at(17,11839,11911)"} true;
        $t15 := $abort_code;
        assume {:print "$track_abort(14,8):", $t15} $t15 == $t15;
        goto L3;
    }

    // write_back[Reference($t28).validators]($t29) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:259:14+72
    $t28 := $UpdateMutation($t28, $Update'$1_DiemSystem_DiemSystem'_validators($Dereference($t28), $Dereference($t29)));

    // pack_ref_deep($t28) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:259:14+72

    // write_back[LocalRoot($t4)@]($t28) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:259:14+72
    $t4 := $Dereference($t28);

    // destroy($t30) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:259:9+1

    // $t31 := move($t4) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:32+18
    assume {:print "$at(17,11945,11963)"} true;
    $t31 := $t4;

    // assume Identical($t32, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t32 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t33, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t33 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t34, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:376:9+46
    assume {:print "$at(14,16248,16294)"} true;
    assume ($t34 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t35, select DiemConfig::Configuration.events($t34)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:382:9+27
    assume {:print "$at(14,16519,16546)"} true;
    assume ($t35 == $events#$1_DiemConfig_Configuration($t34));

    // assume Implies(DiemTimestamp::$is_operating(), And(And(DiemConfig::spec_has_config(), DiemConfig::spec_is_published<DiemSystem::DiemSystem>()), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
    assume {:print "$at(17,11922,11964)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> (($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory) && $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // opaque begin: DiemSystem::set_diem_system_config($t31) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42

    // assume Identical($t36, Or(Not(DiemTimestamp::$is_operating()), And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t32), 18446744073709551615)), Lt($t33, select DiemConfig::Configuration.last_reconfiguration_time($t32))))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
    assume ($t36 == (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t32) < 18446744073709551615)) && ($t33 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t32)))));

    // if ($t36) goto L13 else goto L12 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
    if ($t36) { goto L13; } else { goto L12; }

    // label L13 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
L13:

    // assume Or(And(Not(DiemTimestamp::$is_operating()), Eq(1, $t15)), And(And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t32), 18446744073709551615)), Lt($t33, select DiemConfig::Configuration.last_reconfiguration_time($t32))), Eq(1, $t15))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
    assume ((!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t15)) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t32) < 18446744073709551615)) && ($t33 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t32))) && $IsEqual'num'(1, $t15)));

    // trace_abort($t15) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
    assume {:print "$at(17,11922,11964)"} true;
    assume {:print "$track_abort(14,8):", $t15} $t15 == $t15;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
    goto L3;

    // label L12 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
L12:

    // @139 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
    $1_DiemConfig_Configuration_$memory#139 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'';
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816);
    }

    // modifies global<DiemConfig::Configuration>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, 173345816, $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, 173345816);
    }

    // assume Identical($t37, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:377:9+56
    assume {:print "$at(14,16303,16359)"} true;
    assume ($t37 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t38, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:378:9+54
    assume {:print "$at(14,16368,16422)"} true;
    assume ($t38 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t39, pack DiemConfig::NewEpochEvent(select DiemConfig::Configuration.epoch($t37))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume {:print "$at(14,16431,16510)"} true;
    assume ($t39 == $1_DiemConfig_NewEpochEvent($epoch#$1_DiemConfig_Configuration($t37)));

    // assume Eq<DiemSystem::DiemSystem>(select DiemConfig::DiemConfig.payload(global<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18)), $t31) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume $IsEqual'$1_DiemSystem_DiemSystem'($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816)), $t31);

    // assume DiemConfig::spec_is_published<DiemSystem::DiemSystem>() at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory);

    // assume Eq<DiemSystem::DiemSystem>(DiemConfig::$get<DiemSystem::DiemSystem>(), $t31) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume $IsEqual'$1_DiemSystem_DiemSystem'($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), $t31);

    // assume Eq<bool>(DiemConfig::spec_has_config[@139](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#139), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Identical($t40, $t39) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume ($t40 == $t39);

    // assume Identical($t41, $t35) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume ($t41 == $t35);

    // assume Identical($t42, And(Not(DiemConfig::spec_reconfigure_omitted()), Neq<u64>($t38, select DiemConfig::Configuration.last_reconfiguration_time($t34)))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume ($t42 == (!$1_DiemConfig_spec_reconfigure_omitted($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_DiemConfig_DisableReconfiguration_$memory) && !$IsEqual'u64'($t38, $last_reconfiguration_time#$1_DiemConfig_Configuration($t34))));

    // emit_event($t40, $t41, $t42) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:261:9+42
    assume {:print "$at(17,11922,11964)"} true;
    $es := $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'($es, $t41, $t40, $t42);

    // opaque end: DiemSystem::set_diem_system_config($t31) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume {:print "$at(14,16431,16510)"} true;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:262:5+1
    assume {:print "$at(17,11970,11971)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:262:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:262:5+1
L3:

    // abort($t15) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:262:5+1
    $abort_code := $t15;
    $abort_flag := true;
    return;

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
    $IsEqual'vec'vec'u8'''($currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies(s1), $currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies(s2))}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
}

// struct Diem::Diem<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:24:5+134
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

// struct Diem::Diem<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:24:5+134
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

// struct Diem::BurnCapability<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:37:5+58
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
    $IsEqual'u64'($amount#$1_Diem_BurnEvent(s1), $amount#$1_Diem_BurnEvent(s2))
    && $IsEqual'vec'u8''($currency_code#$1_Diem_BurnEvent(s1), $currency_code#$1_Diem_BurnEvent(s2))
    && $IsEqual'address'($preburn_address#$1_Diem_BurnEvent(s1), $preburn_address#$1_Diem_BurnEvent(s2))}

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
    $IsEqual'u64'($amount#$1_Diem_CancelBurnEvent(s1), $amount#$1_Diem_CancelBurnEvent(s2))
    && $IsEqual'vec'u8''($currency_code#$1_Diem_CancelBurnEvent(s1), $currency_code#$1_Diem_CancelBurnEvent(s2))
    && $IsEqual'address'($preburn_address#$1_Diem_CancelBurnEvent(s1), $preburn_address#$1_Diem_CancelBurnEvent(s2))}

// struct Diem::CurrencyInfo<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:111:5+2308
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
    $IsEqual'u128'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'u64'($preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'$1_FixedPoint32_FixedPoint32'($to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'bool'($is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'u64'($scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'u64'($fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'vec'u8''($currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'bool'($can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_MintEvent''($mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_BurnEvent''($burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_PreburnEvent''($preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''($cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''($exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s1), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s2))}
var $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS';

// struct Diem::CurrencyInfo<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:111:5+2308
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
    $IsEqual'u128'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'u64'($preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'$1_FixedPoint32_FixedPoint32'($to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'bool'($is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'u64'($scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'u64'($fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'vec'u8''($currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'bool'($can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_MintEvent''($mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_BurnEvent''($burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_PreburnEvent''($preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''($cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''($exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s1), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s2))}
var $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX';

// struct Diem::MintCapability<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:33:5+58
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
    $IsEqual'u64'($amount#$1_Diem_MintEvent(s1), $amount#$1_Diem_MintEvent(s2))
    && $IsEqual'vec'u8''($currency_code#$1_Diem_MintEvent(s1), $currency_code#$1_Diem_MintEvent(s2))}

// struct Diem::Preburn<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:170:5+240
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

// struct Diem::Preburn<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:170:5+240
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
    $IsEqual'u64'($amount#$1_Diem_PreburnEvent(s1), $amount#$1_Diem_PreburnEvent(s2))
    && $IsEqual'vec'u8''($currency_code#$1_Diem_PreburnEvent(s1), $currency_code#$1_Diem_PreburnEvent(s2))
    && $IsEqual'address'($preburn_address#$1_Diem_PreburnEvent(s1), $preburn_address#$1_Diem_PreburnEvent(s2))}

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
    $IsEqual'vec'u8''($currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent(s1), $currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent(s2))
    && $IsEqual'u64'($new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent(s1), $new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent(s2))}

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

// struct AccountLimits::LimitsDefinition<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:17:5+406
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

// struct AccountLimits::LimitsDefinition<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:17:5+406
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

// struct XUS::XUS at /home/ying/diem/language/diem-framework/modules/XUS.move:10:5+14
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

// spec fun at /home/ying/diem/language/diem-framework/modules/XDX.move:133:9+80
function {:inline} $1_XDX_reserve_exists($1_XDX_Reserve_$memory: $Memory $1_XDX_Reserve): bool {
    $ResourceExists($1_XDX_Reserve_$memory, 173345816)
}

// struct XDX::XDX at /home/ying/diem/language/diem-framework/modules/XDX.move:15:5+14
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

// struct VASPDomain::VASPDomain at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:25:5+110
type {:datatype} $1_VASPDomain_VASPDomain;
function {:constructor} $1_VASPDomain_VASPDomain($domain: Vec (int)): $1_VASPDomain_VASPDomain;
function {:inline} $Update'$1_VASPDomain_VASPDomain'_domain(s: $1_VASPDomain_VASPDomain, x: Vec (int)): $1_VASPDomain_VASPDomain {
    $1_VASPDomain_VASPDomain(x)
}
function $IsValid'$1_VASPDomain_VASPDomain'(s: $1_VASPDomain_VASPDomain): bool {
    $IsValid'vec'u8''($domain#$1_VASPDomain_VASPDomain(s))
}
function {:inline} $IsEqual'$1_VASPDomain_VASPDomain'(s1: $1_VASPDomain_VASPDomain, s2: $1_VASPDomain_VASPDomain): bool {
    $IsEqual'vec'u8''($domain#$1_VASPDomain_VASPDomain(s1), $domain#$1_VASPDomain_VASPDomain(s2))}

// struct VASPDomain::VASPDomainEvent at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:39:5+256
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
    $IsEqual'bool'($removed#$1_VASPDomain_VASPDomainEvent(s1), $removed#$1_VASPDomain_VASPDomainEvent(s2))
    && $IsEqual'$1_VASPDomain_VASPDomain'($domain#$1_VASPDomain_VASPDomainEvent(s1), $domain#$1_VASPDomain_VASPDomainEvent(s2))
    && $IsEqual'address'($address#$1_VASPDomain_VASPDomainEvent(s1), $address#$1_VASPDomain_VASPDomainEvent(s2))}

// struct VASPDomain::VASPDomainManager at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:33:5+235
type {:datatype} $1_VASPDomain_VASPDomainManager;
function {:constructor} $1_VASPDomain_VASPDomainManager($vasp_domain_events: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent'): $1_VASPDomain_VASPDomainManager;
function {:inline} $Update'$1_VASPDomain_VASPDomainManager'_vasp_domain_events(s: $1_VASPDomain_VASPDomainManager, x: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent'): $1_VASPDomain_VASPDomainManager {
    $1_VASPDomain_VASPDomainManager(x)
}
function $IsValid'$1_VASPDomain_VASPDomainManager'(s: $1_VASPDomain_VASPDomainManager): bool {
    $IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''($vasp_domain_events#$1_VASPDomain_VASPDomainManager(s))
}
function {:inline} $IsEqual'$1_VASPDomain_VASPDomainManager'(s1: $1_VASPDomain_VASPDomainManager, s2: $1_VASPDomain_VASPDomainManager): bool {
    $IsEqual'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''($vasp_domain_events#$1_VASPDomain_VASPDomainManager(s1), $vasp_domain_events#$1_VASPDomain_VASPDomainManager(s2))}
var $1_VASPDomain_VASPDomainManager_$memory: $Memory $1_VASPDomain_VASPDomainManager;

// struct VASPDomain::VASPDomains at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:12:5+142
type {:datatype} $1_VASPDomain_VASPDomains;
function {:constructor} $1_VASPDomain_VASPDomains($domains: Vec ($1_VASPDomain_VASPDomain)): $1_VASPDomain_VASPDomains;
function {:inline} $Update'$1_VASPDomain_VASPDomains'_domains(s: $1_VASPDomain_VASPDomains, x: Vec ($1_VASPDomain_VASPDomain)): $1_VASPDomain_VASPDomains {
    $1_VASPDomain_VASPDomains(x)
}
function $IsValid'$1_VASPDomain_VASPDomains'(s: $1_VASPDomain_VASPDomains): bool {
    $IsValid'vec'$1_VASPDomain_VASPDomain''($domains#$1_VASPDomain_VASPDomains(s))
}
function {:inline} $IsEqual'$1_VASPDomain_VASPDomains'(s1: $1_VASPDomain_VASPDomains, s2: $1_VASPDomain_VASPDomains): bool {
    $IsEqual'vec'$1_VASPDomain_VASPDomain''($domains#$1_VASPDomain_VASPDomains(s1), $domains#$1_VASPDomain_VASPDomains(s2))}
var $1_VASPDomain_VASPDomains_$memory: $Memory $1_VASPDomain_VASPDomains;

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:164:5+80
function {:inline} $1_VASP_$is_child($1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP, addr: int): bool {
    $ResourceExists($1_VASP_ChildVASP_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:154:5+82
function {:inline} $1_VASP_$is_parent($1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, addr: int): bool {
    $ResourceExists($1_VASP_ParentVASP_$memory, addr)
}

// struct VASP::ChildVASP at /home/ying/diem/language/diem-framework/modules/VASP.move:21:5+54
type {:datatype} $1_VASP_ChildVASP;
function {:constructor} $1_VASP_ChildVASP($parent_vasp_addr: int): $1_VASP_ChildVASP;
function {:inline} $Update'$1_VASP_ChildVASP'_parent_vasp_addr(s: $1_VASP_ChildVASP, x: int): $1_VASP_ChildVASP {
    $1_VASP_ChildVASP(x)
}
function $IsValid'$1_VASP_ChildVASP'(s: $1_VASP_ChildVASP): bool {
    $IsValid'address'($parent_vasp_addr#$1_VASP_ChildVASP(s))
}
function {:inline} $IsEqual'$1_VASP_ChildVASP'(s1: $1_VASP_ChildVASP, s2: $1_VASP_ChildVASP): bool {
    s1 == s2
}
var $1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP;

// struct VASP::ParentVASP at /home/ying/diem/language/diem-framework/modules/VASP.move:15:5+121
type {:datatype} $1_VASP_ParentVASP;
function {:constructor} $1_VASP_ParentVASP($num_children: int): $1_VASP_ParentVASP;
function {:inline} $Update'$1_VASP_ParentVASP'_num_children(s: $1_VASP_ParentVASP, x: int): $1_VASP_ParentVASP {
    $1_VASP_ParentVASP(x)
}
function $IsValid'$1_VASP_ParentVASP'(s: $1_VASP_ParentVASP): bool {
    $IsValid'u64'($num_children#$1_VASP_ParentVASP(s))
}
function {:inline} $IsEqual'$1_VASP_ParentVASP'(s1: $1_VASP_ParentVASP, s2: $1_VASP_ParentVASP): bool {
    s1 == s2
}
var $1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP;

// spec fun at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:44:5+118
function {:inline} $1_TransactionFee_$is_coin_initialized'$1_XUS_XUS'($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory: $Memory $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    $ResourceExists($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, 186537453)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:48:5+69
function {:inline} $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory: $Memory $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    $1_TransactionFee_$is_coin_initialized'$1_XUS_XUS'($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory)
}

// struct TransactionFee::TransactionFee<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:13:5+124
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

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:121:10+85
function {:inline} $1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential, addr: int): bool {
    $ResourceExists($1_DualAttestation_Credential_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:545:9+78
function {:inline} $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory: $Memory $1_DualAttestation_Limit): bool {
    $ResourceExists($1_DualAttestation_Limit_$memory, 173345816)
}

// struct DualAttestation::BaseUrlRotationEvent at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:57:5+257
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
    $IsEqual'vec'u8''($new_base_url#$1_DualAttestation_BaseUrlRotationEvent(s1), $new_base_url#$1_DualAttestation_BaseUrlRotationEvent(s2))
    && $IsEqual'u64'($time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent(s1), $time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent(s2))}

// struct DualAttestation::ComplianceKeyRotationEvent at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:49:5+303
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
    $IsEqual'vec'u8''($new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent(s1), $new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent(s2))
    && $IsEqual'u64'($time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent(s1), $time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent(s2))}

// struct DualAttestation::Credential at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:19:5+1467
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
    $IsEqual'vec'u8''($human_name#$1_DualAttestation_Credential(s1), $human_name#$1_DualAttestation_Credential(s2))
    && $IsEqual'vec'u8''($base_url#$1_DualAttestation_Credential(s1), $base_url#$1_DualAttestation_Credential(s2))
    && $IsEqual'vec'u8''($compliance_public_key#$1_DualAttestation_Credential(s1), $compliance_public_key#$1_DualAttestation_Credential(s2))
    && $IsEqual'u64'($expiration_date#$1_DualAttestation_Credential(s1), $expiration_date#$1_DualAttestation_Credential(s2))
    && $IsEqual'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''($compliance_key_rotation_events#$1_DualAttestation_Credential(s1), $compliance_key_rotation_events#$1_DualAttestation_Credential(s2))
    && $IsEqual'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''($base_url_rotation_events#$1_DualAttestation_Credential(s1), $base_url_rotation_events#$1_DualAttestation_Credential(s2))}
var $1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential;

// struct DualAttestation::Limit at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:44:5+58
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
    $IsEqual'vec'vec'u8'''($script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s1), $script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s2))
    && $IsEqual'bool'($module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s1), $module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s2))}

// struct DesignatedDealer::Dealer at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:14:5+130
type {:datatype} $1_DesignatedDealer_Dealer;
function {:constructor} $1_DesignatedDealer_Dealer($mint_event_handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent'): $1_DesignatedDealer_Dealer;
function {:inline} $Update'$1_DesignatedDealer_Dealer'_mint_event_handle(s: $1_DesignatedDealer_Dealer, x: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent'): $1_DesignatedDealer_Dealer {
    $1_DesignatedDealer_Dealer(x)
}
function $IsValid'$1_DesignatedDealer_Dealer'(s: $1_DesignatedDealer_Dealer): bool {
    $IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''($mint_event_handle#$1_DesignatedDealer_Dealer(s))
}
function {:inline} $IsEqual'$1_DesignatedDealer_Dealer'(s1: $1_DesignatedDealer_Dealer, s2: $1_DesignatedDealer_Dealer): bool {
    $IsEqual'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''($mint_event_handle#$1_DesignatedDealer_Dealer(s1), $mint_event_handle#$1_DesignatedDealer_Dealer(s2))}
var $1_DesignatedDealer_Dealer_$memory: $Memory $1_DesignatedDealer_Dealer;

// struct DesignatedDealer::ReceivedMintEvent at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:38:5+286
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
    $IsEqual'vec'u8''($currency_code#$1_DesignatedDealer_ReceivedMintEvent(s1), $currency_code#$1_DesignatedDealer_ReceivedMintEvent(s2))
    && $IsEqual'address'($destination_address#$1_DesignatedDealer_ReceivedMintEvent(s1), $destination_address#$1_DesignatedDealer_ReceivedMintEvent(s2))
    && $IsEqual'u64'($amount#$1_DesignatedDealer_ReceivedMintEvent(s1), $amount#$1_DesignatedDealer_ReceivedMintEvent(s2))}

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

// spec fun at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:160:5+163
function {:inline} $1_AccountFreezing_$account_is_frozen($1_AccountFreezing_FreezingBit_$memory: $Memory $1_AccountFreezing_FreezingBit, addr: int): bool {
    ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr) && $is_frozen#$1_AccountFreezing_FreezingBit($ResourceValue($1_AccountFreezing_FreezingBit_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:231:9+141
function {:inline} $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory: $Memory $1_AccountFreezing_FreezingBit, addr: int): bool {
    ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr) && !$is_frozen#$1_AccountFreezing_FreezingBit($ResourceValue($1_AccountFreezing_FreezingBit_$memory, addr)))
}

// struct AccountFreezing::FreezeAccountEvent at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:22:5+208
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

// struct AccountFreezing::FreezeEventsHolder at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:16:5+169
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
    $IsEqual'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''($freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s1), $freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s2))
    && $IsEqual'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''($unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s1), $unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s2))}
var $1_AccountFreezing_FreezeEventsHolder_$memory: $Memory $1_AccountFreezing_FreezeEventsHolder;

// struct AccountFreezing::FreezingBit at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:11:5+164
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

// struct AccountFreezing::UnfreezeAccountEvent at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:30:5+216
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

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1641:5+95
function {:inline} $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, check_addr: int): bool {
    $ResourceExists($1_DiemAccount_DiemAccount_$memory, check_addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2526:10+208
function {:inline} $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds, $1_AccountFreezing_FreezingBit_$memory: $Memory $1_AccountFreezing_FreezingBit, $1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, sender: $signer): bool {
    (var addr := $1_Signer_spec_address_of(sender); (($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)) && !$1_AccountFreezing_$account_is_frozen($1_AccountFreezing_FreezingBit_$memory, addr)))
}

// struct DiemAccount::DiemAccount at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:37:5+1558
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
    $IsEqual'vec'u8''($authentication_key#$1_DiemAccount_DiemAccount(s1), $authentication_key#$1_DiemAccount_DiemAccount(s2))
    && $IsEqual'$1_Option_Option'$1_DiemAccount_WithdrawCapability''($withdraw_capability#$1_DiemAccount_DiemAccount(s1), $withdraw_capability#$1_DiemAccount_DiemAccount(s2))
    && $IsEqual'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($key_rotation_capability#$1_DiemAccount_DiemAccount(s1), $key_rotation_capability#$1_DiemAccount_DiemAccount(s2))
    && $IsEqual'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''($received_events#$1_DiemAccount_DiemAccount(s1), $received_events#$1_DiemAccount_DiemAccount(s2))
    && $IsEqual'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''($sent_events#$1_DiemAccount_DiemAccount(s1), $sent_events#$1_DiemAccount_DiemAccount(s2))
    && $IsEqual'u64'($sequence_number#$1_DiemAccount_DiemAccount(s1), $sequence_number#$1_DiemAccount_DiemAccount(s2))}
var $1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount;

// struct DiemAccount::AccountOperationsCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:94:5+167
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
    $IsEqual'$1_AccountLimits_AccountLimitMutationCapability'($limits_cap#$1_DiemAccount_AccountOperationsCapability(s1), $limits_cap#$1_DiemAccount_AccountOperationsCapability(s2))
    && $IsEqual'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''($creation_events#$1_DiemAccount_AccountOperationsCapability(s1), $creation_events#$1_DiemAccount_AccountOperationsCapability(s2))}
var $1_DiemAccount_AccountOperationsCapability_$memory: $Memory $1_DiemAccount_AccountOperationsCapability;

// struct DiemAccount::AdminTransactionEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:130:5+150
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

// struct DiemAccount::Balance<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:67:5+261
type {:datatype} $1_DiemAccount_Balance'$1_XUS_XUS';
function {:constructor} $1_DiemAccount_Balance'$1_XUS_XUS'($coin: $1_Diem_Diem'$1_XUS_XUS'): $1_DiemAccount_Balance'$1_XUS_XUS';
function {:inline} $Update'$1_DiemAccount_Balance'$1_XUS_XUS''_coin(s: $1_DiemAccount_Balance'$1_XUS_XUS', x: $1_Diem_Diem'$1_XUS_XUS'): $1_DiemAccount_Balance'$1_XUS_XUS' {
    $1_DiemAccount_Balance'$1_XUS_XUS'(x)
}
function $IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''(s: $1_DiemAccount_Balance'$1_XUS_XUS'): bool {
    $IsValid'$1_Diem_Diem'$1_XUS_XUS''($coin#$1_DiemAccount_Balance'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_DiemAccount_Balance'$1_XUS_XUS''(s1: $1_DiemAccount_Balance'$1_XUS_XUS', s2: $1_DiemAccount_Balance'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_DiemAccount_Balance'$1_XUS_XUS'_$memory: $Memory $1_DiemAccount_Balance'$1_XUS_XUS';

// struct DiemAccount::Balance<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:67:5+261
type {:datatype} $1_DiemAccount_Balance'$1_XDX_XDX';
function {:constructor} $1_DiemAccount_Balance'$1_XDX_XDX'($coin: $1_Diem_Diem'$1_XDX_XDX'): $1_DiemAccount_Balance'$1_XDX_XDX';
function {:inline} $Update'$1_DiemAccount_Balance'$1_XDX_XDX''_coin(s: $1_DiemAccount_Balance'$1_XDX_XDX', x: $1_Diem_Diem'$1_XDX_XDX'): $1_DiemAccount_Balance'$1_XDX_XDX' {
    $1_DiemAccount_Balance'$1_XDX_XDX'(x)
}
function $IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''(s: $1_DiemAccount_Balance'$1_XDX_XDX'): bool {
    $IsValid'$1_Diem_Diem'$1_XDX_XDX''($coin#$1_DiemAccount_Balance'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_DiemAccount_Balance'$1_XDX_XDX''(s1: $1_DiemAccount_Balance'$1_XDX_XDX', s2: $1_DiemAccount_Balance'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_DiemAccount_Balance'$1_XDX_XDX'_$memory: $Memory $1_DiemAccount_Balance'$1_XDX_XDX';

// struct DiemAccount::CreateAccountEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:136:5+179
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

// struct DiemAccount::DiemWriteSetManager at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:100:5+115
type {:datatype} $1_DiemAccount_DiemWriteSetManager;
function {:constructor} $1_DiemAccount_DiemWriteSetManager($upgrade_events: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent'): $1_DiemAccount_DiemWriteSetManager;
function {:inline} $Update'$1_DiemAccount_DiemWriteSetManager'_upgrade_events(s: $1_DiemAccount_DiemWriteSetManager, x: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent'): $1_DiemAccount_DiemWriteSetManager {
    $1_DiemAccount_DiemWriteSetManager(x)
}
function $IsValid'$1_DiemAccount_DiemWriteSetManager'(s: $1_DiemAccount_DiemWriteSetManager): bool {
    $IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''($upgrade_events#$1_DiemAccount_DiemWriteSetManager(s))
}
function {:inline} $IsEqual'$1_DiemAccount_DiemWriteSetManager'(s1: $1_DiemAccount_DiemWriteSetManager, s2: $1_DiemAccount_DiemWriteSetManager): bool {
    $IsEqual'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''($upgrade_events#$1_DiemAccount_DiemWriteSetManager(s1), $upgrade_events#$1_DiemAccount_DiemWriteSetManager(s2))}
var $1_DiemAccount_DiemWriteSetManager_$memory: $Memory $1_DiemAccount_DiemWriteSetManager;

// struct DiemAccount::KeyRotationCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:86:5+208
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

// struct DiemAccount::ReceivedPaymentEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:118:5+363
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
    $IsEqual'u64'($amount#$1_DiemAccount_ReceivedPaymentEvent(s1), $amount#$1_DiemAccount_ReceivedPaymentEvent(s2))
    && $IsEqual'vec'u8''($currency_code#$1_DiemAccount_ReceivedPaymentEvent(s1), $currency_code#$1_DiemAccount_ReceivedPaymentEvent(s2))
    && $IsEqual'address'($payer#$1_DiemAccount_ReceivedPaymentEvent(s1), $payer#$1_DiemAccount_ReceivedPaymentEvent(s2))
    && $IsEqual'vec'u8''($metadata#$1_DiemAccount_ReceivedPaymentEvent(s1), $metadata#$1_DiemAccount_ReceivedPaymentEvent(s2))}

// struct DiemAccount::SentPaymentEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:106:5+346
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
    $IsEqual'u64'($amount#$1_DiemAccount_SentPaymentEvent(s1), $amount#$1_DiemAccount_SentPaymentEvent(s2))
    && $IsEqual'vec'u8''($currency_code#$1_DiemAccount_SentPaymentEvent(s1), $currency_code#$1_DiemAccount_SentPaymentEvent(s2))
    && $IsEqual'address'($payee#$1_DiemAccount_SentPaymentEvent(s1), $payee#$1_DiemAccount_SentPaymentEvent(s2))
    && $IsEqual'vec'u8''($metadata#$1_DiemAccount_SentPaymentEvent(s1), $metadata#$1_DiemAccount_SentPaymentEvent(s2))}

// struct DiemAccount::WithdrawCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:77:5+202
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

// fun ValidatorAdministrationScripts::add_validator_and_reconfigure [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
procedure {:timeLimit 40} $1_ValidatorAdministrationScripts_add_validator_and_reconfigure$verify(_$t0: $signer, _$t1: int, _$t2: Vec (int), _$t3: int) returns ()
{
    // declare local variables
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: $1_DiemConfig_Configuration;
    var $t8: int;
    var $t9: Vec ($1_DiemSystem_ValidatorInfo);
    var $t10: $1_DiemConfig_Configuration;
    var $t11: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t12: int;
    var $t13: int;
    var $t14: Vec (int);
    var $t15: bool;
    var $t16: bool;
    var $t17: int;
    var $t18: int;
    var $t19: $1_DiemConfig_Configuration;
    var $t20: int;
    var $t21: Vec ($1_DiemSystem_ValidatorInfo);
    var $t22: $1_DiemConfig_Configuration;
    var $t23: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t24: int;
    var $t25: Vec ($1_DiemSystem_ValidatorInfo);
    var $t26: $1_DiemConfig_Configuration;
    var $t27: int;
    var $t28: $1_DiemConfig_NewEpochEvent;
    var $t0: $signer;
    var $t1: int;
    var $t2: Vec (int);
    var $t3: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_SlidingNonce_SlidingNonce_$memory#152: $Memory $1_SlidingNonce_SlidingNonce;
    var $1_ValidatorConfig_ValidatorConfig_$memory#153: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#154: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_Roles_RoleId_$memory#156: $Memory $1_Roles_RoleId;
    var $1_DiemConfig_DisableReconfiguration_$memory#157: $Memory $1_DiemConfig_DisableReconfiguration;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(37,5750,6169)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume forall config_address: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(config_address): Eq<address>(config_address, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:441:9+163
    assume (forall config_address: int :: $IsValid'address'(config_address) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, config_address))  ==> ($IsEqual'address'(config_address, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assume forall addr: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:600:9+105
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Eq<u64>(select DiemSystem::ValidatorInfo.consensus_voting_power(Index(DiemSystem::spec_get_validators(), i1)), 1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:680:8+133
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($IsEqual'u64'($consensus_voting_power#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)), 1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume $IsValid'vec'u8''($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume $IsValid'address'($t3);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<SlidingNonce::SlidingNonce>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume (forall $a_0: int :: {$ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0)}(var $rsc := $ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0);
    ($IsValid'$1_SlidingNonce_SlidingNonce'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::Configuration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_Configuration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_Configuration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_Configuration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DisableReconfiguration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DisableReconfiguration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(): And(WellFormed($rsc), forall i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))), j: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))): Implies(Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), i)), select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), j))), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0);
    (($IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''($rsc) && (var $range_1 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (var $range_2 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (forall $i_3: int, $i_4: int :: $InRange($range_1, $i_3) ==> $InRange($range_2, $i_4) ==> (var i := $i_3;
    (var j := $i_4;
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), i)), $addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), j))) ==> $IsEqual'num'(i, j))))))))))));

    // assume forall $rsc: ResourceDomain<DiemSystem::CapabilityHolder>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+419
    assume (forall $a_0: int :: {$ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0);
    ($IsValid'$1_DiemSystem_CapabilityHolder'($rsc))));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t7 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t8, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t8 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t9, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:232:9+31
    assume {:print "$at(17,10428,10459)"} true;
    assume ($t9 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t10, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:376:9+46
    assume {:print "$at(14,16248,16294)"} true;
    assume ($t10 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t11, select DiemConfig::Configuration.events($t10)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:382:9+27
    assume {:print "$at(14,16519,16546)"} true;
    assume ($t11 == $events#$1_DiemConfig_Configuration($t10));

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @155 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @156 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Roles_RoleId_$memory#156 := $1_Roles_RoleId_$memory;

    // @153 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_ValidatorConfig_ValidatorConfig_$memory#153 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // @152 := save_mem(SlidingNonce::SlidingNonce) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_SlidingNonce_SlidingNonce_$memory#152 := $1_SlidingNonce_SlidingNonce_$memory;

    // @157 := save_mem(DiemConfig::DisableReconfiguration) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemConfig_DisableReconfiguration_$memory#157 := $1_DiemConfig_DisableReconfiguration_$memory;

    // @154 := save_mem(DiemConfig::DiemConfig<DiemSystem::DiemSystem>) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#154 := $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory;

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+1
    assume {:print "$at(37,5750,5751)"} true;
    assume {:print "$track_local(33,0,0):", $t0} $t0 == $t0;

    // trace_local[sliding_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+1
    assume {:print "$track_local(33,0,1):", $t1} $t1 == $t1;

    // trace_local[validator_name]($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+1
    assume {:print "$track_local(33,0,2):", $t2} $t2 == $t2;

    // trace_local[validator_address]($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:55:5+1
    assume {:print "$track_local(33,0,3):", $t3} $t3 == $t3;

    // SlidingNonce::record_nonce_or_abort($t0, $t1) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:61:9+63
    assume {:print "$at(37,5943,6006)"} true;
    call $1_SlidingNonce_record_nonce_or_abort($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(37,5943,6006)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(33,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // $t14 := opaque begin: ValidatorConfig::get_human_name($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50
    assume {:print "$at(37,6023,6073)"} true;

    // assume Identical($t15, Not(ValidatorConfig::$exists_config($t3))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50
    assume ($t15 == !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t3));

    // if ($t15) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50
    if ($t15) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50
L5:

    // assume And(Not(ValidatorConfig::$exists_config($t3)), Eq(5, $t13)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50
    assume (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t3) && $IsEqual'num'(5, $t13));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50
    assume {:print "$at(37,6023,6073)"} true;
    assume {:print "$track_abort(33,0):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50
L4:

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50
    assume $IsValid'vec'u8''($t14);

    // assume Eq<vector<u8>>($t14, ValidatorConfig::$get_human_name($t3)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50
    assume $IsEqual'vec'u8''($t14, $1_ValidatorConfig_$get_human_name($1_ValidatorConfig_ValidatorConfig_$memory, $t3));

    // $t14 := opaque end: ValidatorConfig::get_human_name($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:16+50

    // $t16 := ==($t14, $t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:67+2
    $t16 := $IsEqual'vec'u8''($t14, $t2);

    // trace_local[tmp#$4]($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:9+79
    assume {:print "$track_local(33,0,4):", $t16} $t16 == $t16;

    // if ($t16) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:9+79
    if ($t16) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:86+1
L1:

    // $t17 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:86+1
    $t17 := 0;
    assume $IsValid'u64'($t17);

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:9+79
    assume {:print "$at(37,6016,6095)"} true;
    assume {:print "$track_abort(33,0):", $t17} $t17 == $t17;

    // $t13 := move($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:9+79
    $t13 := $t17;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:62:9+79
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:63:35+11
    assume {:print "$at(37,6131,6142)"} true;
L0:

    // assume Identical($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t18 == $1_Signer_spec_address_of($t0));

    // assume Identical($t19, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t19 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t20, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t20 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t21, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:232:9+31
    assume {:print "$at(17,10428,10459)"} true;
    assume ($t21 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t22, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:376:9+46
    assume {:print "$at(14,16248,16294)"} true;
    assume ($t22 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t23, select DiemConfig::Configuration.events($t22)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:382:9+27
    assume {:print "$at(14,16519,16546)"} true;
    assume ($t23 == $events#$1_DiemConfig_Configuration($t22));

    // assume Identical($t24, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t24 == $1_Signer_spec_address_of($t0));

    // DiemSystem::add_validator($t0, $t3) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:63:9+57
    assume {:print "$at(37,6105,6162)"} true;
    call $1_DiemSystem_add_validator($t0, $t3);
    if ($abort_flag) {
        assume {:print "$at(37,6105,6162)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(33,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:64:5+1
    assume {:print "$at(37,6168,6169)"} true;
L2:

    // assume Identical($t25, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:233:9+41
    assume {:print "$at(17,10468,10509)"} true;
    assume ($t25 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t26, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:377:9+56
    assume {:print "$at(14,16303,16359)"} true;
    assume ($t26 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t27, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:378:9+54
    assume {:print "$at(14,16368,16422)"} true;
    assume ($t27 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t28, pack DiemConfig::NewEpochEvent(select DiemConfig::Configuration.epoch($t26))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume {:print "$at(14,16431,16510)"} true;
    assume ($t28 == $1_DiemConfig_NewEpochEvent($epoch#$1_DiemConfig_Configuration($t26)));

    // assert Not(Not(exists[@152]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:47:9+93
    assume {:print "$at(31,1971,2064)"} true;
    assert {:msg "assert_failed(31,1971,2064): function does not abort under this condition"}
      !!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#152, $1_Signer_spec_address_of($t0));

    // assert Not(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:48:9+87
    assume {:print "$at(31,2073,2160)"} true;
    assert {:msg "assert_failed(31,2073,2160): function does not abort under this condition"}
      !!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0);

    // assert Not(Not(ValidatorConfig::$exists_config[@153]($t3))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#153, $t3);

    // assert Not(Neq<vector<u8>>(ValidatorConfig::$get_human_name[@153]($t3), $t2)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:78:9+86
    assume {:print "$at(37,6766,6852)"} true;
    assert {:msg "assert_failed(37,6766,6852): function does not abort under this condition"}
      !!$IsEqual'vec'u8''($1_ValidatorConfig_$get_human_name($1_ValidatorConfig_ValidatorConfig_$memory#153, $t3), $t2);

    // assert Not(Ge(DiemSystem::$validator_set_size[@154](), 256)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:216:9+77
    assume {:print "$at(17,9428,9505)"} true;
    assert {:msg "assert_failed(17,9428,9505): function does not abort under this condition"}
      !($1_DiemSystem_$validator_set_size($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#154) >= 256);

    // assert Not(Not(ValidatorConfig::$is_valid[@153]($t3))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:220:9+83
    assume {:print "$at(17,9681,9764)"} true;
    assert {:msg "assert_failed(17,9681,9764): function does not abort under this condition"}
      !!$1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory#153, $t3);

    // assert Not(DiemSystem::spec_is_validator[@154]($t3)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:221:9+74
    assume {:print "$at(17,9773,9847)"} true;
    assert {:msg "assert_failed(17,9773,9847): function does not abort under this condition"}
      !$1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#154, $t3);

    // assert Not(Not(DiemTimestamp::$is_operating[@155]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155);

    // assert Not(Not(exists[@156]<Roles::RoleId>($t6))) at /home/ying/diem/language/diem-framework/modules/Roles.move:538:9+59
    assume {:print "$at(28,23968,24027)"} true;
    assert {:msg "assert_failed(28,23968,24027): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#156, $t6);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@156]<Roles::RoleId>($t6)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:539:9+87
    assume {:print "$at(28,24036,24123)"} true;
    assert {:msg "assert_failed(28,24036,24123): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#156, $t6)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:9+86
    assume {:print "$at(9,1379,1465)"} true;
    assert {:msg "assert_failed(9,1379,1465): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816);

    // assert Not(And(And(And(And(DiemTimestamp::$is_operating[@155](), DiemConfig::$reconfiguration_enabled[@157]()), Gt(DiemTimestamp::spec_now_microseconds[@155](), 0)), Lt(select DiemConfig::Configuration.epoch($t7), 18446744073709551615)), Lt($t8, select DiemConfig::Configuration.last_reconfiguration_time($t7)))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:368:9+283
    assume {:print "$at(14,15915,16198)"} true;
    assert {:msg "assert_failed(14,15915,16198): function does not abort under this condition"}
      !(((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#157)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155) > 0)) && ($epoch#$1_DiemConfig_Configuration($t7) < 18446744073709551615)) && ($t8 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t7)));

    // assert Not(Not(exists[@156]<Roles::RoleId>($t12))) at /home/ying/diem/language/diem-framework/modules/Roles.move:538:9+59
    assume {:print "$at(28,23968,24027)"} true;
    assert {:msg "assert_failed(28,23968,24027): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#156, $t12);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@156]<Roles::RoleId>($t12)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:539:9+87
    assume {:print "$at(28,24036,24123)"} true;
    assert {:msg "assert_failed(28,24036,24123): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#156, $t12)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:9+86
    assume {:print "$at(9,1379,1465)"} true;
    assert {:msg "assert_failed(9,1379,1465): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816);

    // assert Roles::spec_has_validator_role_addr($t3) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:229:9+60
    assume {:print "$at(17,10249,10309)"} true;
    assert {:msg "assert_failed(17,10249,10309): post-condition does not hold"}
      $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $t3);

    // assert ValidatorConfig::$is_valid($t3) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:230:9+50
    assume {:print "$at(17,10318,10368)"} true;
    assert {:msg "assert_failed(17,10318,10368): post-condition does not hold"}
      $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, $t3);

    // assert DiemSystem::spec_is_validator($t3) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:231:9+42
    assume {:print "$at(17,10377,10419)"} true;
    assert {:msg "assert_failed(17,10377,10419): post-condition does not hold"}
      $1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $t3);

    // assert Vector::eq_push_back<DiemSystem::ValidatorInfo>($t25, $t9, pack DiemSystem::ValidatorInfo($t3, 1, ValidatorConfig::spec_get_config($t3), DiemTimestamp::spec_now_microseconds())) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:234:9+545
    assume {:print "$at(17,10518,11063)"} true;
    assert {:msg "assert_failed(17,10518,11063): post-condition does not hold"}
      $1_Vector_eq_push_back'$1_DiemSystem_ValidatorInfo'($t25, $t9, $1_DiemSystem_ValidatorInfo($t3, 1, $1_ValidatorConfig_spec_get_config($1_ValidatorConfig_ValidatorConfig_$memory, $t3), $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), $t28, $t11, And(Not(DiemConfig::spec_reconfigure_omitted()), Neq<u64>($t27, select DiemConfig::Configuration.last_reconfiguration_time($t10))))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:383:9+96
    assume {:print "$at(14,16555,16651)"} true;
    assert {:msg "assert_failed(14,16555,16651): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'($EmptyEventStore, $t11, $t28, (!$1_DiemConfig_spec_reconfigure_omitted($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_DiemConfig_DisableReconfiguration_$memory) && !$IsEqual'u64'($t27, $last_reconfiguration_time#$1_DiemConfig_Configuration($t10)))); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), $t28, $t11, And(Not(DiemConfig::spec_reconfigure_omitted()), Neq<u64>($t27, select DiemConfig::Configuration.last_reconfiguration_time($t10))))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:67:5+1839
    assume {:print "$at(37,6176,8015)"} true;
    assert {:msg "assert_failed(37,6176,8015): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'($EmptyEventStore, $t11, $t28, (!$1_DiemConfig_spec_reconfigure_omitted($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_DiemConfig_DisableReconfiguration_$memory) && !$IsEqual'u64'($t27, $last_reconfiguration_time#$1_DiemConfig_Configuration($t10)))); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:67:5+1839
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:64:5+1
    assume {:print "$at(37,6168,6169)"} true;
L3:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists[@152]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0)), Not(ValidatorConfig::$exists_config[@153]($t3))), Neq<vector<u8>>(ValidatorConfig::$get_human_name[@153]($t3), $t2)), Ge(DiemSystem::$validator_set_size[@154](), 256)), Not(ValidatorConfig::$is_valid[@153]($t3))), DiemSystem::spec_is_validator[@154]($t3)), Not(DiemTimestamp::$is_operating[@155]())), Not(exists[@156]<Roles::RoleId>($t6))), Neq<u64>(select Roles::RoleId.role_id(global[@156]<Roles::RoleId>($t6)), 0)), Neq<address>(Signer::spec_address_of[]($t0), a550c18)), And(And(And(And(DiemTimestamp::$is_operating[@155](), DiemConfig::$reconfiguration_enabled[@157]()), Gt(DiemTimestamp::spec_now_microseconds[@155](), 0)), Lt(select DiemConfig::Configuration.epoch($t7), 18446744073709551615)), Lt($t8, select DiemConfig::Configuration.last_reconfiguration_time($t7)))), Not(exists[@156]<Roles::RoleId>($t12))), Neq<u64>(select Roles::RoleId.role_id(global[@156]<Roles::RoleId>($t12)), 0)), Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:67:5+1839
    assume {:print "$at(37,6176,8015)"} true;
    assert {:msg "assert_failed(37,6176,8015): abort not covered by any of the `aborts_if` clauses"}
      ((((((((((((((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#152, $1_Signer_spec_address_of($t0)) || !$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#153, $t3)) || !$IsEqual'vec'u8''($1_ValidatorConfig_$get_human_name($1_ValidatorConfig_ValidatorConfig_$memory#153, $t3), $t2)) || ($1_DiemSystem_$validator_set_size($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#154) >= 256)) || !$1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory#153, $t3)) || $1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#154, $t3)) || !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155)) || !$ResourceExists($1_Roles_RoleId_$memory#156, $t6)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#156, $t6)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#157)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155) > 0)) && ($epoch#$1_DiemConfig_Configuration($t7) < 18446744073709551615)) && ($t8 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t7)))) || !$ResourceExists($1_Roles_RoleId_$memory#156, $t12)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#156, $t12)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists[@152]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Eq(5, $t13)), And(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0), Eq(7, $t13))), And(Not(ValidatorConfig::$exists_config[@153]($t3)), Eq(5, $t13))), And(Neq<vector<u8>>(ValidatorConfig::$get_human_name[@153]($t3), $t2), Eq(0, $t13))), And(Ge(DiemSystem::$validator_set_size[@154](), 256), Eq(8, $t13))), And(Not(ValidatorConfig::$is_valid[@153]($t3)), Eq(7, $t13))), And(DiemSystem::spec_is_validator[@154]($t3), Eq(7, $t13))), And(Not(DiemTimestamp::$is_operating[@155]()), Eq(1, $t13))), And(Not(exists[@156]<Roles::RoleId>($t6)), Eq(5, $t13))), And(Neq<u64>(select Roles::RoleId.role_id(global[@156]<Roles::RoleId>($t6)), 0), Eq(3, $t13))), And(Neq<address>(Signer::spec_address_of[]($t0), a550c18), Eq(2, $t13))), And(And(And(And(And(DiemTimestamp::$is_operating[@155](), DiemConfig::$reconfiguration_enabled[@157]()), Gt(DiemTimestamp::spec_now_microseconds[@155](), 0)), Lt(select DiemConfig::Configuration.epoch($t7), 18446744073709551615)), Lt($t8, select DiemConfig::Configuration.last_reconfiguration_time($t7))), Eq(1, $t13))), And(Not(exists[@156]<Roles::RoleId>($t12)), Eq(5, $t13))), And(Neq<u64>(select Roles::RoleId.role_id(global[@156]<Roles::RoleId>($t12)), 0), Eq(3, $t13))), And(Neq<address>(Signer::spec_address_of[]($t0), a550c18), Eq(2, $t13))), Eq(0, $t13)), Eq(7, $t13)), Eq(5, $t13)), Eq(2, $t13)), Eq(1, $t13)), Eq(8, $t13)), Eq(3, $t13)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:67:5+1839
    assert {:msg "assert_failed(37,6176,8015): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((((((((((((((((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#152, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(5, $t13)) || (!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0) && $IsEqual'num'(7, $t13))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#153, $t3) && $IsEqual'num'(5, $t13))) || (!$IsEqual'vec'u8''($1_ValidatorConfig_$get_human_name($1_ValidatorConfig_ValidatorConfig_$memory#153, $t3), $t2) && $IsEqual'num'(0, $t13))) || (($1_DiemSystem_$validator_set_size($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#154) >= 256) && $IsEqual'num'(8, $t13))) || (!$1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory#153, $t3) && $IsEqual'num'(7, $t13))) || ($1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#154, $t3) && $IsEqual'num'(7, $t13))) || (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155) && $IsEqual'num'(1, $t13))) || (!$ResourceExists($1_Roles_RoleId_$memory#156, $t6) && $IsEqual'num'(5, $t13))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#156, $t6)), 0) && $IsEqual'num'(3, $t13))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t13))) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#157)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#155) > 0)) && ($epoch#$1_DiemConfig_Configuration($t7) < 18446744073709551615)) && ($t8 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t7))) && $IsEqual'num'(1, $t13))) || (!$ResourceExists($1_Roles_RoleId_$memory#156, $t12) && $IsEqual'num'(5, $t13))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#156, $t12)), 0) && $IsEqual'num'(3, $t13))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t13))) || $IsEqual'num'(0, $t13)) || $IsEqual'num'(7, $t13)) || $IsEqual'num'(5, $t13)) || $IsEqual'num'(2, $t13)) || $IsEqual'num'(1, $t13)) || $IsEqual'num'(8, $t13)) || $IsEqual'num'(3, $t13));

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:67:5+1839
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// fun ValidatorAdministrationScripts::register_validator_config [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
procedure {:timeLimit 40} $1_ValidatorAdministrationScripts_register_validator_config$verify(_$t0: $signer, _$t1: int, _$t2: Vec (int), _$t3: Vec (int), _$t4: Vec (int)) returns ()
{
    // declare local variables
    var $t5: bool;
    var $t6: int;
    var $t0: $signer;
    var $t1: int;
    var $t2: Vec (int);
    var $t3: Vec (int);
    var $t4: Vec (int);
    var $temp_0'$1_ValidatorConfig_ValidatorConfig': $1_ValidatorConfig_ValidatorConfig;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'vec'u8'': Vec (int);
    var $1_ValidatorConfig_ValidatorConfig_$memory#133: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_ValidatorConfig_ValidatorConfig_$memory#134: $Memory $1_ValidatorConfig_ValidatorConfig;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(37,11577,12148)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
    assume $IsValid'vec'u8''($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
    assume $IsValid'vec'u8''($t3);

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
    assume $IsValid'vec'u8''($t4);

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+571
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @133 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_ValidatorConfig_ValidatorConfig_$memory#133 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // trace_local[validator_operator_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+1
    assume {:print "$at(37,11577,11578)"} true;
    assume {:print "$track_local(33,1,0):", $t0} $t0 == $t0;

    // trace_local[validator_account]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+1
    assume {:print "$track_local(33,1,1):", $t1} $t1 == $t1;

    // trace_local[consensus_pubkey]($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+1
    assume {:print "$track_local(33,1,2):", $t2} $t2 == $t2;

    // trace_local[validator_network_addresses]($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+1
    assume {:print "$track_local(33,1,3):", $t3} $t3 == $t3;

    // trace_local[fullnode_network_addresses]($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:140:5+1
    assume {:print "$track_local(33,1,4):", $t4} $t4 == $t4;

    // opaque begin: ValidatorConfig::set_config($t0, $t1, $t2, $t3, $t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
    assume {:print "$at(37,11920,12140)"} true;

    // assume Identical($t5, Or(Or(Or(Neq<address>(Signer::$address_of($t0), ValidatorConfig::$get_operator($t1)), Not(Signature::$ed25519_validate_pubkey($t2))), Not(ValidatorConfig::spec_has_operator($t1))), Not(ValidatorConfig::$exists_config($t1)))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
    assume ($t5 == (((!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1)) || !$1_Signature_$ed25519_validate_pubkey($t2)) || !$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1)));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
L4:

    // assume Or(Or(Or(And(Neq<address>(Signer::$address_of($t0), ValidatorConfig::$get_operator($t1)), Eq(7, $t6)), And(Not(Signature::$ed25519_validate_pubkey($t2)), Eq(7, $t6))), And(Not(ValidatorConfig::spec_has_operator($t1)), Eq(7, $t6))), And(Not(ValidatorConfig::$exists_config($t1)), Eq(5, $t6))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
    assume ((((!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1)) && $IsEqual'num'(7, $t6)) || (!$1_Signature_$ed25519_validate_pubkey($t2) && $IsEqual'num'(7, $t6))) || (!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && $IsEqual'num'(7, $t6))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && $IsEqual'num'(5, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
    assume {:print "$at(37,11920,12140)"} true;
    assume {:print "$track_abort(33,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
L3:

    // @134 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
    $1_ValidatorConfig_ValidatorConfig_$memory#134 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // modifies global<ValidatorConfig::ValidatorConfig>($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_ValidatorConfig_ValidatorConfig';
        $1_ValidatorConfig_ValidatorConfig_$memory := $ResourceUpdate($1_ValidatorConfig_ValidatorConfig_$memory, $t1, $temp_0'$1_ValidatorConfig_ValidatorConfig');
    } else {
        $1_ValidatorConfig_ValidatorConfig_$memory := $ResourceRemove($1_ValidatorConfig_ValidatorConfig_$memory, $t1);
    }

    // assume ValidatorConfig::$is_valid($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
    assume $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, $t1);

    // assume Eq<ValidatorConfig::ValidatorConfig>(global<ValidatorConfig::ValidatorConfig>($t1), update ValidatorConfig::ValidatorConfig.config<ValidatorConfig::ValidatorConfig>(global[@134]<ValidatorConfig::ValidatorConfig>($t1), Option::spec_some<ValidatorConfig::Config>(pack ValidatorConfig::Config($t2, $t3, $t4)))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220
    assume $IsEqual'$1_ValidatorConfig_ValidatorConfig'($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t1), $Update'$1_ValidatorConfig_ValidatorConfig'_config($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#134, $t1), $1_Option_spec_some'$1_ValidatorConfig_Config'($1_ValidatorConfig_Config($t2, $t3, $t4))));

    // opaque end: ValidatorConfig::set_config($t0, $t1, $t2, $t3, $t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:148:9+220

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:155:6+1
    assume {:print "$at(37,12147,12148)"} true;
L1:

    // assert Not(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@133]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:213:9+131
    assume {:print "$at(38,9689,9820)"} true;
    assert {:msg "assert_failed(38,9689,9820): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1));

    // assert Not(Not(Signature::$ed25519_validate_pubkey[]($t2))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:216:9+94
    assume {:print "$at(38,9888,9982)"} true;
    assert {:msg "assert_failed(38,9888,9982): function does not abort under this condition"}
      !!$1_Signature_$ed25519_validate_pubkey($t2);

    // assert Not(Not(ValidatorConfig::spec_has_operator[@133]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:293:9+65
    assume {:print "$at(38,12984,13049)"} true;
    assert {:msg "assert_failed(38,12984,13049): function does not abort under this condition"}
      !!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1);

    // assert Not(Not(ValidatorConfig::$exists_config[@133]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1);

    // assert Not(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@133]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:175:9+183
    assume {:print "$at(37,13041,13224)"} true;
    assert {:msg "assert_failed(37,13041,13224): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1));

    // assert ValidatorConfig::$is_valid($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:166:9+53
    assume {:print "$at(37,12677,12730)"} true;
    assert {:msg "assert_failed(37,12677,12730): post-condition does not hold"}
      $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, $t1);

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:166:9+53
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:155:6+1
    assume {:print "$at(37,12147,12148)"} true;
L2:

    // assert Or(Or(Or(Or(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@133]($t1)), Not(Signature::$ed25519_validate_pubkey[]($t2))), Not(ValidatorConfig::spec_has_operator[@133]($t1))), Not(ValidatorConfig::$exists_config[@133]($t1))), Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@133]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:159:5+896
    assume {:print "$at(37,12334,13230)"} true;
    assert {:msg "assert_failed(37,12334,13230): abort not covered by any of the `aborts_if` clauses"}
      ((((!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1)) || !$1_Signature_$ed25519_validate_pubkey($t2)) || !$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1)) || !$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1)));

    // assert Or(Or(Or(Or(Or(Or(And(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@133]($t1)), Eq(7, $t6)), And(Not(Signature::$ed25519_validate_pubkey[]($t2)), Eq(7, $t6))), And(Not(ValidatorConfig::spec_has_operator[@133]($t1)), Eq(7, $t6))), And(Not(ValidatorConfig::$exists_config[@133]($t1)), Eq(5, $t6))), And(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@133]($t1)), Eq(7, $t6))), Eq(7, $t6)), Eq(5, $t6)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:159:5+896
    assert {:msg "assert_failed(37,12334,13230): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1)) && $IsEqual'num'(7, $t6)) || (!$1_Signature_$ed25519_validate_pubkey($t2) && $IsEqual'num'(7, $t6))) || (!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1) && $IsEqual'num'(7, $t6))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1) && $IsEqual'num'(5, $t6))) || (!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#133, $t1)) && $IsEqual'num'(7, $t6))) || $IsEqual'num'(7, $t6)) || $IsEqual'num'(5, $t6));

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:159:5+896
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun ValidatorAdministrationScripts::remove_validator_and_reconfigure [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
procedure {:timeLimit 40} $1_ValidatorAdministrationScripts_remove_validator_and_reconfigure$verify(_$t0: $signer, _$t1: int, _$t2: Vec (int), _$t3: int) returns ()
{
    // declare local variables
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: $1_DiemConfig_Configuration;
    var $t8: int;
    var $t9: Vec ($1_DiemSystem_ValidatorInfo);
    var $t10: $1_DiemConfig_Configuration;
    var $t11: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t12: int;
    var $t13: int;
    var $t14: Vec (int);
    var $t15: bool;
    var $t16: bool;
    var $t17: int;
    var $t18: int;
    var $t19: $1_DiemConfig_Configuration;
    var $t20: int;
    var $t21: Vec ($1_DiemSystem_ValidatorInfo);
    var $t22: $1_DiemConfig_Configuration;
    var $t23: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t24: int;
    var $t25: Vec ($1_DiemSystem_ValidatorInfo);
    var $t26: $1_DiemConfig_Configuration;
    var $t27: int;
    var $t28: $1_DiemConfig_NewEpochEvent;
    var $t0: $signer;
    var $t1: int;
    var $t2: Vec (int);
    var $t3: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_SlidingNonce_SlidingNonce_$memory#146: $Memory $1_SlidingNonce_SlidingNonce;
    var $1_ValidatorConfig_ValidatorConfig_$memory#147: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#148: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    var $1_Roles_RoleId_$memory#149: $Memory $1_Roles_RoleId;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_DiemConfig_DisableReconfiguration_$memory#151: $Memory $1_DiemConfig_DisableReconfiguration;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(37,17814,18291)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume forall config_address: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(config_address): Eq<address>(config_address, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:441:9+163
    assume (forall config_address: int :: $IsValid'address'(config_address) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, config_address))  ==> ($IsEqual'address'(config_address, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assume forall addr: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:600:9+105
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Eq<u64>(select DiemSystem::ValidatorInfo.consensus_voting_power(Index(DiemSystem::spec_get_validators(), i1)), 1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:680:8+133
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($IsEqual'u64'($consensus_voting_power#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)), 1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume $IsValid'vec'u8''($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume $IsValid'address'($t3);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<SlidingNonce::SlidingNonce>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume (forall $a_0: int :: {$ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0)}(var $rsc := $ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0);
    ($IsValid'$1_SlidingNonce_SlidingNonce'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::Configuration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_Configuration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_Configuration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_Configuration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DisableReconfiguration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DisableReconfiguration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(): And(WellFormed($rsc), forall i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))), j: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))): Implies(Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), i)), select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), j))), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0);
    (($IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''($rsc) && (var $range_1 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (var $range_2 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (forall $i_3: int, $i_4: int :: $InRange($range_1, $i_3) ==> $InRange($range_2, $i_4) ==> (var i := $i_3;
    (var j := $i_4;
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), i)), $addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), j))) ==> $IsEqual'num'(i, j))))))))))));

    // assume forall $rsc: ResourceDomain<DiemSystem::CapabilityHolder>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+477
    assume (forall $a_0: int :: {$ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0);
    ($IsValid'$1_DiemSystem_CapabilityHolder'($rsc))));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t7 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t8, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t8 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t9, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:279:9+31
    assume {:print "$at(17,12647,12678)"} true;
    assume ($t9 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t10, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:376:9+46
    assume {:print "$at(14,16248,16294)"} true;
    assume ($t10 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t11, select DiemConfig::Configuration.events($t10)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:382:9+27
    assume {:print "$at(14,16519,16546)"} true;
    assume ($t11 == $events#$1_DiemConfig_Configuration($t10));

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @150 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @149 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Roles_RoleId_$memory#149 := $1_Roles_RoleId_$memory;

    // @147 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_ValidatorConfig_ValidatorConfig_$memory#147 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // @146 := save_mem(SlidingNonce::SlidingNonce) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_SlidingNonce_SlidingNonce_$memory#146 := $1_SlidingNonce_SlidingNonce_$memory;

    // @151 := save_mem(DiemConfig::DisableReconfiguration) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemConfig_DisableReconfiguration_$memory#151 := $1_DiemConfig_DisableReconfiguration_$memory;

    // @148 := save_mem(DiemConfig::DiemConfig<DiemSystem::DiemSystem>) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#148 := $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory;

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+1
    assume {:print "$at(37,17814,17815)"} true;
    assume {:print "$track_local(33,2,0):", $t0} $t0 == $t0;

    // trace_local[sliding_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+1
    assume {:print "$track_local(33,2,1):", $t1} $t1 == $t1;

    // trace_local[validator_name]($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+1
    assume {:print "$track_local(33,2,2):", $t2} $t2 == $t2;

    // trace_local[validator_address]($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:223:5+1
    assume {:print "$track_local(33,2,3):", $t3} $t3 == $t3;

    // SlidingNonce::record_nonce_or_abort($t0, $t1) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:229:9+63
    assume {:print "$at(37,18010,18073)"} true;
    call $1_SlidingNonce_record_nonce_or_abort($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(37,18010,18073)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(33,2):", $t13} $t13 == $t13;
        goto L3;
    }

    // $t14 := opaque begin: ValidatorConfig::get_human_name($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50
    assume {:print "$at(37,18142,18192)"} true;

    // assume Identical($t15, Not(ValidatorConfig::$exists_config($t3))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50
    assume ($t15 == !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t3));

    // if ($t15) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50
    if ($t15) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50
L5:

    // assume And(Not(ValidatorConfig::$exists_config($t3)), Eq(5, $t13)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50
    assume (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t3) && $IsEqual'num'(5, $t13));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50
    assume {:print "$at(37,18142,18192)"} true;
    assume {:print "$track_abort(33,2):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50
L4:

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50
    assume $IsValid'vec'u8''($t14);

    // assume Eq<vector<u8>>($t14, ValidatorConfig::$get_human_name($t3)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50
    assume $IsEqual'vec'u8''($t14, $1_ValidatorConfig_$get_human_name($1_ValidatorConfig_ValidatorConfig_$memory, $t3));

    // $t14 := opaque end: ValidatorConfig::get_human_name($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:16+50

    // $t16 := ==($t14, $t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:67+2
    $t16 := $IsEqual'vec'u8''($t14, $t2);

    // trace_local[tmp#$4]($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:9+79
    assume {:print "$track_local(33,2,4):", $t16} $t16 == $t16;

    // if ($t16) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:9+79
    if ($t16) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:86+1
L1:

    // $t17 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:86+1
    $t17 := 0;
    assume $IsValid'u64'($t17);

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:9+79
    assume {:print "$at(37,18135,18214)"} true;
    assume {:print "$track_abort(33,2):", $t17} $t17 == $t17;

    // $t13 := move($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:9+79
    $t13 := $t17;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:231:9+79
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:232:38+11
    assume {:print "$at(37,18253,18264)"} true;
L0:

    // assume Identical($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t18 == $1_Signer_spec_address_of($t0));

    // assume Identical($t19, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t19 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t20, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t20 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t21, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:279:9+31
    assume {:print "$at(17,12647,12678)"} true;
    assume ($t21 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t22, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:376:9+46
    assume {:print "$at(14,16248,16294)"} true;
    assume ($t22 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t23, select DiemConfig::Configuration.events($t22)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:382:9+27
    assume {:print "$at(14,16519,16546)"} true;
    assume ($t23 == $events#$1_DiemConfig_Configuration($t22));

    // assume Identical($t24, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t24 == $1_Signer_spec_address_of($t0));

    // DiemSystem::remove_validator($t0, $t3) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:232:9+60
    assume {:print "$at(37,18224,18284)"} true;
    call $1_DiemSystem_remove_validator($t0, $t3);
    if ($abort_flag) {
        assume {:print "$at(37,18224,18284)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(33,2):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:233:5+1
    assume {:print "$at(37,18290,18291)"} true;
L2:

    // assume Identical($t25, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:280:9+41
    assume {:print "$at(17,12687,12728)"} true;
    assume ($t25 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t26, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:377:9+56
    assume {:print "$at(14,16303,16359)"} true;
    assume ($t26 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t27, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:378:9+54
    assume {:print "$at(14,16368,16422)"} true;
    assume ($t27 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t28, pack DiemConfig::NewEpochEvent(select DiemConfig::Configuration.epoch($t26))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume {:print "$at(14,16431,16510)"} true;
    assume ($t28 == $1_DiemConfig_NewEpochEvent($epoch#$1_DiemConfig_Configuration($t26)));

    // assert Not(Not(exists[@146]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:47:9+93
    assume {:print "$at(31,1971,2064)"} true;
    assert {:msg "assert_failed(31,1971,2064): function does not abort under this condition"}
      !!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#146, $1_Signer_spec_address_of($t0));

    // assert Not(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:48:9+87
    assume {:print "$at(31,2073,2160)"} true;
    assert {:msg "assert_failed(31,2073,2160): function does not abort under this condition"}
      !!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0);

    // assert Not(Not(ValidatorConfig::$exists_config[@147]($t3))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#147, $t3);

    // assert Not(Neq<vector<u8>>(ValidatorConfig::$get_human_name[@147]($t3), $t2)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:246:9+86
    assume {:print "$at(37,18890,18976)"} true;
    assert {:msg "assert_failed(37,18890,18976): function does not abort under this condition"}
      !!$IsEqual'vec'u8''($1_ValidatorConfig_$get_human_name($1_ValidatorConfig_ValidatorConfig_$memory#147, $t3), $t2);

    // assert Not(Not(DiemSystem::spec_is_validator[@148]($t3))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:275:9+75
    assume {:print "$at(17,12483,12558)"} true;
    assert {:msg "assert_failed(17,12483,12558): function does not abort under this condition"}
      !!$1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#148, $t3);

    // assert Not(Not(exists[@149]<Roles::RoleId>($t6))) at /home/ying/diem/language/diem-framework/modules/Roles.move:538:9+59
    assume {:print "$at(28,23968,24027)"} true;
    assert {:msg "assert_failed(28,23968,24027): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#149, $t6);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@149]<Roles::RoleId>($t6)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:539:9+87
    assume {:print "$at(28,24036,24123)"} true;
    assert {:msg "assert_failed(28,24036,24123): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#149, $t6)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:9+86
    assume {:print "$at(9,1379,1465)"} true;
    assert {:msg "assert_failed(9,1379,1465): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816);

    // assert Not(Not(DiemTimestamp::$is_operating[@150]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150);

    // assert Not(And(And(And(And(DiemTimestamp::$is_operating[@150](), DiemConfig::$reconfiguration_enabled[@151]()), Gt(DiemTimestamp::spec_now_microseconds[@150](), 0)), Lt(select DiemConfig::Configuration.epoch($t7), 18446744073709551615)), Lt($t8, select DiemConfig::Configuration.last_reconfiguration_time($t7)))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:368:9+283
    assume {:print "$at(14,15915,16198)"} true;
    assert {:msg "assert_failed(14,15915,16198): function does not abort under this condition"}
      !(((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#151)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150) > 0)) && ($epoch#$1_DiemConfig_Configuration($t7) < 18446744073709551615)) && ($t8 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t7)));

    // assert Not(Not(exists[@149]<Roles::RoleId>($t12))) at /home/ying/diem/language/diem-framework/modules/Roles.move:538:9+59
    assume {:print "$at(28,23968,24027)"} true;
    assert {:msg "assert_failed(28,23968,24027): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#149, $t12);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@149]<Roles::RoleId>($t12)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:539:9+87
    assume {:print "$at(28,24036,24123)"} true;
    assert {:msg "assert_failed(28,24036,24123): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#149, $t12)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:9+86
    assume {:print "$at(9,1379,1465)"} true;
    assert {:msg "assert_failed(9,1379,1465): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816);

    // assert forall vi: $t25 where Neq<address>(select DiemSystem::ValidatorInfo.addr(vi), $t3): exists ovi: $t9: Eq<DiemSystem::ValidatorInfo>(vi, ovi) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:281:9+90
    assume {:print "$at(17,12737,12827)"} true;
    assert {:msg "assert_failed(17,12737,12827): post-condition does not hold"}
      (var $range_0 := $t25; (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var vi := ReadVec($range_0, $i_1);
    (!$IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(vi), $t3))  ==> ((var $range_2 := $t9; (exists $i_3: int :: InRangeVec($range_2, $i_3) && (var ovi := ReadVec($range_2, $i_3);
    ($IsEqual'$1_DiemSystem_ValidatorInfo'(vi, ovi)))))))));

    // assert Not(DiemSystem::spec_is_validator($t3)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:284:9+43
    assume {:print "$at(17,12967,13010)"} true;
    assert {:msg "assert_failed(17,12967,13010): post-condition does not hold"}
      !$1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $t3);

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), $t28, $t11, And(Not(DiemConfig::spec_reconfigure_omitted()), Neq<u64>($t27, select DiemConfig::Configuration.last_reconfiguration_time($t10))))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:383:9+96
    assume {:print "$at(14,16555,16651)"} true;
    assert {:msg "assert_failed(14,16555,16651): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'($EmptyEventStore, $t11, $t28, (!$1_DiemConfig_spec_reconfigure_omitted($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_DiemConfig_DisableReconfiguration_$memory) && !$IsEqual'u64'($t27, $last_reconfiguration_time#$1_DiemConfig_Configuration($t10)))); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), $t28, $t11, And(Not(DiemConfig::spec_reconfigure_omitted()), Neq<u64>($t27, select DiemConfig::Configuration.last_reconfiguration_time($t10))))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:235:5+1815
    assume {:print "$at(37,18297,20112)"} true;
    assert {:msg "assert_failed(37,18297,20112): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'($EmptyEventStore, $t11, $t28, (!$1_DiemConfig_spec_reconfigure_omitted($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_DiemConfig_DisableReconfiguration_$memory) && !$IsEqual'u64'($t27, $last_reconfiguration_time#$1_DiemConfig_Configuration($t10)))); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:235:5+1815
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:233:5+1
    assume {:print "$at(37,18290,18291)"} true;
L3:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists[@146]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0)), Not(ValidatorConfig::$exists_config[@147]($t3))), Neq<vector<u8>>(ValidatorConfig::$get_human_name[@147]($t3), $t2)), Not(DiemSystem::spec_is_validator[@148]($t3))), Not(exists[@149]<Roles::RoleId>($t6))), Neq<u64>(select Roles::RoleId.role_id(global[@149]<Roles::RoleId>($t6)), 0)), Neq<address>(Signer::spec_address_of[]($t0), a550c18)), Not(DiemTimestamp::$is_operating[@150]())), And(And(And(And(DiemTimestamp::$is_operating[@150](), DiemConfig::$reconfiguration_enabled[@151]()), Gt(DiemTimestamp::spec_now_microseconds[@150](), 0)), Lt(select DiemConfig::Configuration.epoch($t7), 18446744073709551615)), Lt($t8, select DiemConfig::Configuration.last_reconfiguration_time($t7)))), Not(exists[@149]<Roles::RoleId>($t12))), Neq<u64>(select Roles::RoleId.role_id(global[@149]<Roles::RoleId>($t12)), 0)), Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:235:5+1815
    assume {:print "$at(37,18297,20112)"} true;
    assert {:msg "assert_failed(37,18297,20112): abort not covered by any of the `aborts_if` clauses"}
      ((((((((((((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#146, $1_Signer_spec_address_of($t0)) || !$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#147, $t3)) || !$IsEqual'vec'u8''($1_ValidatorConfig_$get_human_name($1_ValidatorConfig_ValidatorConfig_$memory#147, $t3), $t2)) || !$1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#148, $t3)) || !$ResourceExists($1_Roles_RoleId_$memory#149, $t6)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#149, $t6)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)) || !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150)) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#151)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150) > 0)) && ($epoch#$1_DiemConfig_Configuration($t7) < 18446744073709551615)) && ($t8 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t7)))) || !$ResourceExists($1_Roles_RoleId_$memory#149, $t12)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#149, $t12)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists[@146]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Eq(5, $t13)), And(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0), Eq(7, $t13))), And(Not(ValidatorConfig::$exists_config[@147]($t3)), Eq(5, $t13))), And(Neq<vector<u8>>(ValidatorConfig::$get_human_name[@147]($t3), $t2), Eq(0, $t13))), And(Not(DiemSystem::spec_is_validator[@148]($t3)), Eq(7, $t13))), And(Not(exists[@149]<Roles::RoleId>($t6)), Eq(5, $t13))), And(Neq<u64>(select Roles::RoleId.role_id(global[@149]<Roles::RoleId>($t6)), 0), Eq(3, $t13))), And(Neq<address>(Signer::spec_address_of[]($t0), a550c18), Eq(2, $t13))), And(Not(DiemTimestamp::$is_operating[@150]()), Eq(1, $t13))), And(And(And(And(And(DiemTimestamp::$is_operating[@150](), DiemConfig::$reconfiguration_enabled[@151]()), Gt(DiemTimestamp::spec_now_microseconds[@150](), 0)), Lt(select DiemConfig::Configuration.epoch($t7), 18446744073709551615)), Lt($t8, select DiemConfig::Configuration.last_reconfiguration_time($t7))), Eq(1, $t13))), And(Not(exists[@149]<Roles::RoleId>($t12)), Eq(5, $t13))), And(Neq<u64>(select Roles::RoleId.role_id(global[@149]<Roles::RoleId>($t12)), 0), Eq(3, $t13))), And(Neq<address>(Signer::spec_address_of[]($t0), a550c18), Eq(2, $t13))), Eq(0, $t13)), Eq(7, $t13)), Eq(5, $t13)), Eq(2, $t13)), Eq(1, $t13)), Eq(3, $t13)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:235:5+1815
    assert {:msg "assert_failed(37,18297,20112): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((((((((((((((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#146, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(5, $t13)) || (!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0) && $IsEqual'num'(7, $t13))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#147, $t3) && $IsEqual'num'(5, $t13))) || (!$IsEqual'vec'u8''($1_ValidatorConfig_$get_human_name($1_ValidatorConfig_ValidatorConfig_$memory#147, $t3), $t2) && $IsEqual'num'(0, $t13))) || (!$1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#148, $t3) && $IsEqual'num'(7, $t13))) || (!$ResourceExists($1_Roles_RoleId_$memory#149, $t6) && $IsEqual'num'(5, $t13))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#149, $t6)), 0) && $IsEqual'num'(3, $t13))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t13))) || (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150) && $IsEqual'num'(1, $t13))) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#151)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#150) > 0)) && ($epoch#$1_DiemConfig_Configuration($t7) < 18446744073709551615)) && ($t8 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t7))) && $IsEqual'num'(1, $t13))) || (!$ResourceExists($1_Roles_RoleId_$memory#149, $t12) && $IsEqual'num'(5, $t13))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#149, $t12)), 0) && $IsEqual'num'(3, $t13))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t13))) || $IsEqual'num'(0, $t13)) || $IsEqual'num'(7, $t13)) || $IsEqual'num'(5, $t13)) || $IsEqual'num'(2, $t13)) || $IsEqual'num'(1, $t13)) || $IsEqual'num'(3, $t13));

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:235:5+1815
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// fun ValidatorAdministrationScripts::set_validator_config_and_reconfigure [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
procedure {:timeLimit 40} $1_ValidatorAdministrationScripts_set_validator_config_and_reconfigure$verify(_$t0: $signer, _$t1: int, _$t2: Vec (int), _$t3: Vec (int), _$t4: Vec (int)) returns ()
{
    // declare local variables
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: Vec ($1_DiemSystem_ValidatorInfo);
    var $t9: int;
    var $t10: int;
    var $t11: $1_DiemConfig_Configuration;
    var $t12: int;
    var $t13: $1_DiemConfig_Configuration;
    var $t14: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t15: bool;
    var $t16: int;
    var $t17: bool;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t21: int;
    var $t22: Vec ($1_DiemSystem_ValidatorInfo);
    var $t23: $1_DiemConfig_Configuration;
    var $t24: int;
    var $t25: bool;
    var $t26: $1_DiemConfig_Configuration;
    var $t27: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t28: int;
    var $t29: bool;
    var $t30: Vec ($1_DiemSystem_ValidatorInfo);
    var $t31: $1_DiemConfig_Configuration;
    var $t32: int;
    var $t33: $1_DiemConfig_NewEpochEvent;
    var $t34: $1_DiemConfig_NewEpochEvent;
    var $t35: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    var $t36: bool;
    var $t37: Vec ($1_DiemSystem_ValidatorInfo);
    var $t38: $1_DiemConfig_Configuration;
    var $t39: int;
    var $t40: $1_DiemConfig_NewEpochEvent;
    var $t0: $signer;
    var $t1: int;
    var $t2: Vec (int);
    var $t3: Vec (int);
    var $t4: Vec (int);
    var $temp_0'$1_DiemConfig_Configuration': $1_DiemConfig_Configuration;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'': $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    var $temp_0'$1_ValidatorConfig_ValidatorConfig': $1_ValidatorConfig_ValidatorConfig;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'vec'u8'': Vec (int);
    var $1_ValidatorConfig_ValidatorConfig_$memory#158: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#159: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_Roles_RoleId_$memory#161: $Memory $1_Roles_RoleId;
    var $1_DiemConfig_DisableReconfiguration_$memory#162: $Memory $1_DiemConfig_DisableReconfiguration;
    var $1_ValidatorConfig_ValidatorConfig_$memory#163: $Memory $1_ValidatorConfig_ValidatorConfig;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(37,24005,24620)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume forall config_address: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(config_address): Eq<address>(config_address, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:441:9+163
    assume (forall config_address: int :: $IsValid'address'(config_address) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, config_address))  ==> ($IsEqual'address'(config_address, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assume forall addr: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:600:9+105
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Eq<u64>(select DiemSystem::ValidatorInfo.consensus_voting_power(Index(DiemSystem::spec_get_validators(), i1)), 1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:680:8+133
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($IsEqual'u64'($consensus_voting_power#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)), 1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume $IsValid'vec'u8''($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume $IsValid'vec'u8''($t3);

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume $IsValid'vec'u8''($t4);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<DiemConfig::Configuration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_Configuration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_Configuration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_Configuration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DisableReconfiguration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DisableReconfiguration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(): And(WellFormed($rsc), forall i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))), j: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))): Implies(Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), i)), select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), j))), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0);
    (($IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''($rsc) && (var $range_1 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (var $range_2 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (forall $i_3: int, $i_4: int :: $InRange($range_1, $i_3) ==> $InRange($range_2, $i_4) ==> (var i := $i_3;
    (var j := $i_4;
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), i)), $addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), j))) ==> $IsEqual'num'(i, j))))))))))));

    // assume forall $rsc: ResourceDomain<DiemSystem::CapabilityHolder>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+615
    assume (forall $a_0: int :: {$ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0);
    ($IsValid'$1_DiemSystem_CapabilityHolder'($rsc))));

    // assume Identical($t5, exists v_info: DiemSystem::spec_get_validators(): And(Eq<address>(select DiemSystem::ValidatorInfo.addr(v_info), $t1), Neq<ValidatorConfig::Config>(select DiemSystem::ValidatorInfo.config(v_info), pack ValidatorConfig::Config($t2, $t3, $t4)))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:355:9+377
    assume {:print "$at(37,26277,26654)"} true;
    assume ($t5 == (var $range_0 := $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory); (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var v_info := ReadVec($range_0, $i_1);
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(v_info), $t1) && !$IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(v_info), $1_ValidatorConfig_Config($t2, $t3, $t4))))))));

    // assume Identical($t6, DiemSystem::spec_index_of_validator(DiemSystem::spec_get_validators(), $t1)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:364:9+112
    assume {:print "$at(37,26742,26854)"} true;
    assume ($t6 == $1_DiemSystem_spec_index_of_validator($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), $t1));

    // assume Identical($t7, select DiemSystem::ValidatorInfo.last_config_update_time(Index(DiemSystem::spec_get_validators(), $t6))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:365:9+98
    assume {:print "$at(37,26863,26961)"} true;
    assume ($t7 == $last_config_update_time#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), $t6)));

    // assume Identical($t8, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:364:9+31
    assume {:print "$at(17,17803,17834)"} true;
    assume ($t8 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t9, Signer::$address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:351:9+77
    assume {:print "$at(17,16938,17015)"} true;
    assume ($t9 == $1_Signer_$address_of($t0));

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:598:9+44
    assume {:print "$at(28,26510,26554)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // assume Identical($t11, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t11 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t12, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t12 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t13, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:376:9+46
    assume {:print "$at(14,16248,16294)"} true;
    assume ($t13 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t14, select DiemConfig::Configuration.events($t13)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:382:9+27
    assume {:print "$at(14,16519,16546)"} true;
    assume ($t14 == $events#$1_DiemConfig_Configuration($t13));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @160 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @161 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Roles_RoleId_$memory#161 := $1_Roles_RoleId_$memory;

    // @158 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_ValidatorConfig_ValidatorConfig_$memory#158 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // @162 := save_mem(DiemConfig::DisableReconfiguration) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemConfig_DisableReconfiguration_$memory#162 := $1_DiemConfig_DisableReconfiguration_$memory;

    // @159 := save_mem(DiemConfig::DiemConfig<DiemSystem::DiemSystem>) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#159 := $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory;

    // trace_local[validator_operator_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+1
    assume {:print "$at(37,24005,24006)"} true;
    assume {:print "$track_local(33,3,0):", $t0} $t0 == $t0;

    // trace_local[validator_account]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+1
    assume {:print "$track_local(33,3,1):", $t1} $t1 == $t1;

    // trace_local[consensus_pubkey]($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+1
    assume {:print "$track_local(33,3,2):", $t2} $t2 == $t2;

    // trace_local[validator_network_addresses]($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+1
    assume {:print "$track_local(33,3,3):", $t3} $t3 == $t3;

    // trace_local[fullnode_network_addresses]($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:308:5+1
    assume {:print "$track_local(33,3,4):", $t4} $t4 == $t4;

    // opaque begin: ValidatorConfig::set_config($t0, $t1, $t2, $t3, $t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
    assume {:print "$at(37,24293,24513)"} true;

    // assume Identical($t15, Or(Or(Or(Neq<address>(Signer::$address_of($t0), ValidatorConfig::$get_operator($t1)), Not(Signature::$ed25519_validate_pubkey($t2))), Not(ValidatorConfig::spec_has_operator($t1))), Not(ValidatorConfig::$exists_config($t1)))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
    assume ($t15 == (((!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1)) || !$1_Signature_$ed25519_validate_pubkey($t2)) || !$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1)));

    // if ($t15) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
    if ($t15) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
L4:

    // assume Or(Or(Or(And(Neq<address>(Signer::$address_of($t0), ValidatorConfig::$get_operator($t1)), Eq(7, $t16)), And(Not(Signature::$ed25519_validate_pubkey($t2)), Eq(7, $t16))), And(Not(ValidatorConfig::spec_has_operator($t1)), Eq(7, $t16))), And(Not(ValidatorConfig::$exists_config($t1)), Eq(5, $t16))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
    assume ((((!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1)) && $IsEqual'num'(7, $t16)) || (!$1_Signature_$ed25519_validate_pubkey($t2) && $IsEqual'num'(7, $t16))) || (!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && $IsEqual'num'(7, $t16))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && $IsEqual'num'(5, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
    assume {:print "$at(37,24293,24513)"} true;
    assume {:print "$track_abort(33,3):", $t16} $t16 == $t16;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
L3:

    // @163 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
    $1_ValidatorConfig_ValidatorConfig_$memory#163 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // modifies global<ValidatorConfig::ValidatorConfig>($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_ValidatorConfig_ValidatorConfig';
        $1_ValidatorConfig_ValidatorConfig_$memory := $ResourceUpdate($1_ValidatorConfig_ValidatorConfig_$memory, $t1, $temp_0'$1_ValidatorConfig_ValidatorConfig');
    } else {
        $1_ValidatorConfig_ValidatorConfig_$memory := $ResourceRemove($1_ValidatorConfig_ValidatorConfig_$memory, $t1);
    }

    // assume ValidatorConfig::$is_valid($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
    assume $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, $t1);

    // assume Eq<ValidatorConfig::ValidatorConfig>(global<ValidatorConfig::ValidatorConfig>($t1), update ValidatorConfig::ValidatorConfig.config<ValidatorConfig::ValidatorConfig>(global[@163]<ValidatorConfig::ValidatorConfig>($t1), Option::spec_some<ValidatorConfig::Config>(pack ValidatorConfig::Config($t2, $t3, $t4)))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220
    assume $IsEqual'$1_ValidatorConfig_ValidatorConfig'($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t1), $Update'$1_ValidatorConfig_ValidatorConfig'_config($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#163, $t1), $1_Option_spec_some'$1_ValidatorConfig_Config'($1_ValidatorConfig_Config($t2, $t3, $t4))));

    // opaque end: ValidatorConfig::set_config($t0, $t1, $t2, $t3, $t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:315:9+220

    // assume Identical($t17, And(ValidatorConfig::$is_valid($t1), exists v_info: DiemSystem::spec_get_validators(): And(Eq<address>(select DiemSystem::ValidatorInfo.addr(v_info), $t1), Neq<ValidatorConfig::Config>(select DiemSystem::ValidatorInfo.config(v_info), ValidatorConfig::spec_get_config($t1))))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:333:9+274
    assume {:print "$at(17,15894,16168)"} true;
    assume ($t17 == ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && (var $range_0 := $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory); (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var v_info := ReadVec($range_0, $i_1);
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(v_info), $t1) && !$IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(v_info), $1_ValidatorConfig_spec_get_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1)))))))));

    // assume Identical($t18, DiemSystem::spec_index_of_validator(DiemSystem::spec_get_validators(), $t1)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:339:9+97
    assume {:print "$at(17,16256,16353)"} true;
    assume ($t18 == $1_DiemSystem_spec_index_of_validator($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), $t1));

    // assume Identical($t19, select DiemSystem::ValidatorInfo.last_config_update_time(Index(DiemSystem::spec_get_validators(), $t18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:341:9+86
    assume {:print "$at(17,16362,16448)"} true;
    assume ($t19 == $last_config_update_time#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), $t18)));

    // assume Identical($t20, Signer::$address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:351:9+77
    assume {:print "$at(17,16938,17015)"} true;
    assume ($t20 == $1_Signer_$address_of($t0));

    // assume Identical($t21, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:598:9+44
    assume {:print "$at(28,26510,26554)"} true;
    assume ($t21 == $1_Signer_spec_address_of($t0));

    // assume Identical($t22, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:364:9+31
    assume {:print "$at(17,17803,17834)"} true;
    assume ($t22 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t23, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t23 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t24, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t24 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t25, And(ValidatorConfig::$is_valid($t1), exists v_info: DiemSystem::spec_get_validators(): And(Eq<address>(select DiemSystem::ValidatorInfo.addr(v_info), $t1), Neq<ValidatorConfig::Config>(select DiemSystem::ValidatorInfo.config(v_info), ValidatorConfig::spec_get_config($t1))))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:381:9+274
    assume {:print "$at(17,18742,19016)"} true;
    assume ($t25 == ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && (var $range_0 := $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory); (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var v_info := ReadVec($range_0, $i_1);
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(v_info), $t1) && !$IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(v_info), $1_ValidatorConfig_spec_get_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1)))))))));

    // assume Identical($t26, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:376:9+46
    assume {:print "$at(14,16248,16294)"} true;
    assume ($t26 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t27, select DiemConfig::Configuration.events($t26)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:382:9+27
    assume {:print "$at(14,16519,16546)"} true;
    assume ($t27 == $events#$1_DiemConfig_Configuration($t26));

    // assume Identical($t28, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:598:9+44
    assume {:print "$at(28,26510,26554)"} true;
    assume ($t28 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemSystem::update_config_and_reconfigure($t0, $t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
    assume {:print "$at(37,24523,24612)"} true;

    // assume Identical($t29, Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(ValidatorConfig::spec_has_operator($t1)), Not(ValidatorConfig::$exists_config($t1))), Neq<address>(ValidatorConfig::$get_operator($t1), $t20)), Not(DiemSystem::spec_is_validator($t1))), Not(DiemTimestamp::$is_operating())), Not(exists<Roles::RoleId>($t21))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t21)), 4)), Not(ValidatorConfig::$exists_config($t1))), And($t17, And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t23), 18446744073709551615)), Lt($t24, select DiemConfig::Configuration.last_reconfiguration_time($t23))))), And($t17, Gt($t19, Sub(18446744073709551615, 300000000)))), And($t17, Le(DiemTimestamp::spec_now_microseconds(), Add($t19, 300000000))))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
    assume ($t29 == ((((((((((!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1)) || !$IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1), $t20)) || !$1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $t1)) || !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)) || !$ResourceExists($1_Roles_RoleId_$memory, $t21)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t21)), 4)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1)) || ($t17 && (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t23) < 18446744073709551615)) && ($t24 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t23))))) || ($t17 && ($t19 > (18446744073709551615 - 300000000)))) || ($t17 && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) <= ($t19 + 300000000)))));

    // if ($t29) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
    if ($t29) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
L6:

    // assume Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(ValidatorConfig::spec_has_operator($t1)), Eq(7, $t16)), And(Not(ValidatorConfig::$exists_config($t1)), Eq(5, $t16))), And(Neq<address>(ValidatorConfig::$get_operator($t1), $t20), Eq(7, $t16))), And(Not(DiemSystem::spec_is_validator($t1)), Eq(7, $t16))), And(Not(DiemTimestamp::$is_operating()), Eq(1, $t16))), And(Not(exists<Roles::RoleId>($t21)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t21)), 4), Eq(3, $t16))), And(Not(ValidatorConfig::$exists_config($t1)), Eq(5, $t16))), And(And($t17, And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t23), 18446744073709551615)), Lt($t24, select DiemConfig::Configuration.last_reconfiguration_time($t23)))), Eq(1, $t16))), And(And($t17, Gt($t19, Sub(18446744073709551615, 300000000))), Eq(8, $t16))), And(And($t17, Le(DiemTimestamp::spec_now_microseconds(), Add($t19, 300000000))), Eq(8, $t16))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
    assume (((((((((((!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && $IsEqual'num'(7, $t16)) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && $IsEqual'num'(5, $t16))) || (!$IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1), $t20) && $IsEqual'num'(7, $t16))) || (!$1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $t1) && $IsEqual'num'(7, $t16))) || (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t16))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t21) && $IsEqual'num'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t21)), 4) && $IsEqual'num'(3, $t16))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && $IsEqual'num'(5, $t16))) || (($t17 && (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t23) < 18446744073709551615)) && ($t24 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t23)))) && $IsEqual'num'(1, $t16))) || (($t17 && ($t19 > (18446744073709551615 - 300000000))) && $IsEqual'num'(8, $t16))) || (($t17 && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) <= ($t19 + 300000000))) && $IsEqual'num'(8, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
    assume {:print "$at(37,24523,24612)"} true;
    assume {:print "$track_abort(33,3):", $t16} $t16 == $t16;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
L5:

    // modifies global<DiemConfig::Configuration>(a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, 173345816, $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, 173345816);
    }

    // modifies global<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'';
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816);
    }

    // assume Identical($t30, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:365:9+41
    assume {:print "$at(17,17843,17884)"} true;
    assume ($t30 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t31, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:377:9+56
    assume {:print "$at(14,16303,16359)"} true;
    assume ($t31 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t32, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:378:9+54
    assume {:print "$at(14,16368,16422)"} true;
    assume ($t32 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t33, pack DiemConfig::NewEpochEvent(select DiemConfig::Configuration.epoch($t31))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume {:print "$at(14,16431,16510)"} true;
    assume ($t33 == $1_DiemConfig_NewEpochEvent($epoch#$1_DiemConfig_Configuration($t31)));

    // assume Eq<num>(Len<DiemSystem::ValidatorInfo>($t30), Len<DiemSystem::ValidatorInfo>($t22)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume $IsEqual'num'(LenVec($t30), LenVec($t22));

    // assume forall i: Range(0, Len<DiemSystem::ValidatorInfo>($t22)): Eq<address>(select DiemSystem::ValidatorInfo.addr(Index($t30, i)), select DiemSystem::ValidatorInfo.addr(Index($t22, i))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume (var $range_0 := $Range(0, LenVec($t22)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($t30, i)), $addr#$1_DiemSystem_ValidatorInfo(ReadVec($t22, i)))))));

    // assume forall i: Range(0, Len<DiemSystem::ValidatorInfo>($t22)) where Neq<address>(select DiemSystem::ValidatorInfo.addr(Index($t22, i)), $t1): Eq<DiemSystem::ValidatorInfo>(Index($t30, i), Index($t22, i)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume (var $range_0 := $Range(0, LenVec($t22)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    (!$IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($t22, i)), $t1))  ==> ($IsEqual'$1_DiemSystem_ValidatorInfo'(ReadVec($t30, i), ReadVec($t22, i))))));

    // assume forall i: Range(0, Len<DiemSystem::ValidatorInfo>($t22)): Or(Eq<ValidatorConfig::Config>(select DiemSystem::ValidatorInfo.config(Index($t30, i)), select DiemSystem::ValidatorInfo.config(Index($t22, i))), And(Eq<address>(select DiemSystem::ValidatorInfo.addr(Index($t22, i)), $t1), Eq<ValidatorConfig::Config>(select DiemSystem::ValidatorInfo.config(Index($t30, i)), ValidatorConfig::$get_config($t1)))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume (var $range_0 := $Range(0, LenVec($t22)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    (($IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(ReadVec($t30, i)), $config#$1_DiemSystem_ValidatorInfo(ReadVec($t22, i))) || ($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($t22, i)), $t1) && $IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(ReadVec($t30, i)), $1_ValidatorConfig_$get_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1))))))));

    // assume Roles::spec_has_validator_role_addr($t1) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $t1);

    // assume Identical($t34, $t33) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume ($t34 == $t33);

    // assume Identical($t35, $t27) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume ($t35 == $t27);

    // assume Identical($t36, And($t25, And(Not(DiemConfig::spec_reconfigure_omitted()), Neq<u64>($t32, select DiemConfig::Configuration.last_reconfiguration_time($t26))))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume ($t36 == ($t25 && (!$1_DiemConfig_spec_reconfigure_omitted($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_DiemConfig_DisableReconfiguration_$memory) && !$IsEqual'u64'($t32, $last_reconfiguration_time#$1_DiemConfig_Configuration($t26)))));

    // emit_event($t34, $t35, $t36) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:322:9+89
    assume {:print "$at(37,24523,24612)"} true;
    $es := $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'($es, $t35, $t34, $t36);

    // opaque end: DiemSystem::update_config_and_reconfigure($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume {:print "$at(14,16431,16510)"} true;

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:323:6+1
    assume {:print "$at(37,24619,24620)"} true;
L1:

    // assume Identical($t37, DiemSystem::spec_get_validators()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:365:9+41
    assume {:print "$at(17,17843,17884)"} true;
    assume ($t37 == $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory));

    // assume Identical($t38, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:377:9+56
    assume {:print "$at(14,16303,16359)"} true;
    assume ($t38 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t39, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:378:9+54
    assume {:print "$at(14,16368,16422)"} true;
    assume ($t39 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t40, pack DiemConfig::NewEpochEvent(select DiemConfig::Configuration.epoch($t38))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:379:9+79
    assume {:print "$at(14,16431,16510)"} true;
    assume ($t40 == $1_DiemConfig_NewEpochEvent($epoch#$1_DiemConfig_Configuration($t38)));

    // assert Not(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@158]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:213:9+131
    assume {:print "$at(38,9689,9820)"} true;
    assert {:msg "assert_failed(38,9689,9820): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1));

    // assert Not(Not(Signature::$ed25519_validate_pubkey[]($t2))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:216:9+94
    assume {:print "$at(38,9888,9982)"} true;
    assert {:msg "assert_failed(38,9888,9982): function does not abort under this condition"}
      !!$1_Signature_$ed25519_validate_pubkey($t2);

    // assert Not(Not(ValidatorConfig::spec_has_operator[@158]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:293:9+65
    assume {:print "$at(38,12984,13049)"} true;
    assert {:msg "assert_failed(38,12984,13049): function does not abort under this condition"}
      !!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1);

    // assert Not(Not(ValidatorConfig::$exists_config[@158]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1);

    // assert Not(Neq<address>(ValidatorConfig::$get_operator[@158]($t1), $t9)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:356:9+125
    assume {:print "$at(17,17348,17473)"} true;
    assert {:msg "assert_failed(17,17348,17473): function does not abort under this condition"}
      !!$IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1), $t9);

    // assert Not(Not(DiemSystem::spec_is_validator[@159]($t1))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:358:9+75
    assume {:print "$at(17,17482,17557)"} true;
    assert {:msg "assert_failed(17,17482,17557): function does not abort under this condition"}
      !!$1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#159, $t1);

    // assert Not(Not(DiemTimestamp::$is_operating[@160]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160);

    // assert Not(Not(exists[@161]<Roles::RoleId>($t10))) at /home/ying/diem/language/diem-framework/modules/Roles.move:600:9+59
    assume {:print "$at(28,26607,26666)"} true;
    assert {:msg "assert_failed(28,26607,26666): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#161, $t10);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@161]<Roles::RoleId>($t10)), 4)) at /home/ying/diem/language/diem-framework/modules/Roles.move:601:9+108
    assume {:print "$at(28,26675,26783)"} true;
    assert {:msg "assert_failed(28,26675,26783): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#161, $t10)), 4);

    // assert Not(Not(ValidatorConfig::$exists_config[@158]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1);

    // assert Not(And($t5, And(And(And(And(DiemTimestamp::$is_operating[@160](), DiemConfig::$reconfiguration_enabled[@162]()), Gt(DiemTimestamp::spec_now_microseconds[@160](), 0)), Lt(select DiemConfig::Configuration.epoch($t11), 18446744073709551615)), Lt($t12, select DiemConfig::Configuration.last_reconfiguration_time($t11))))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:368:9+283
    assume {:print "$at(14,15915,16198)"} true;
    assert {:msg "assert_failed(14,15915,16198): function does not abort under this condition"}
      !($t5 && (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#162)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160) > 0)) && ($epoch#$1_DiemConfig_Configuration($t11) < 18446744073709551615)) && ($t12 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t11))));

    // assert Not(And($t5, Gt($t7, Sub(18446744073709551615, 300000000)))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:366:9+145
    assume {:print "$at(37,26970,27115)"} true;
    assert {:msg "assert_failed(37,26970,27115): function does not abort under this condition"}
      !($t5 && ($t7 > (18446744073709551615 - 300000000)));

    // assert Not(And($t5, Le(DiemTimestamp::spec_now_microseconds[@160](), Add($t7, 300000000)))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:368:9+165
    assume {:print "$at(37,27124,27289)"} true;
    assert {:msg "assert_failed(37,27124,27289): function does not abort under this condition"}
      !($t5 && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160) <= ($t7 + 300000000)));

    // assert Not(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@158]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:385:9+183
    assume {:print "$at(37,28052,28235)"} true;
    assert {:msg "assert_failed(37,28052,28235): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1));

    // assert Eq<num>(Len<DiemSystem::ValidatorInfo>($t37), Len<DiemSystem::ValidatorInfo>($t8)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:366:9+32
    assume {:print "$at(17,17893,17925)"} true;
    assert {:msg "assert_failed(17,17893,17925): post-condition does not hold"}
      $IsEqual'num'(LenVec($t37), LenVec($t8));

    // assert forall i: Range(0, Len<DiemSystem::ValidatorInfo>($t8)): Eq<address>(select DiemSystem::ValidatorInfo.addr(Index($t37, i)), select DiemSystem::ValidatorInfo.addr(Index($t8, i))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:368:9+62
    assume {:print "$at(17,17987,18049)"} true;
    assert {:msg "assert_failed(17,17987,18049): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($t8)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($t37, i)), $addr#$1_DiemSystem_ValidatorInfo(ReadVec($t8, i)))))));

    // assert forall i: Range(0, Len<DiemSystem::ValidatorInfo>($t8)) where Neq<address>(select DiemSystem::ValidatorInfo.addr(Index($t8, i)), $t1): Eq<DiemSystem::ValidatorInfo>(Index($t37, i), Index($t8, i)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:370:9+112
    assume {:print "$at(17,18158,18270)"} true;
    assert {:msg "assert_failed(17,18158,18270): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($t8)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    (!$IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($t8, i)), $t1))  ==> ($IsEqual'$1_DiemSystem_ValidatorInfo'(ReadVec($t37, i), ReadVec($t8, i))))));

    // assert forall i: Range(0, Len<DiemSystem::ValidatorInfo>($t8)): Or(Eq<ValidatorConfig::Config>(select DiemSystem::ValidatorInfo.config(Index($t37, i)), select DiemSystem::ValidatorInfo.config(Index($t8, i))), And(Eq<address>(select DiemSystem::ValidatorInfo.addr(Index($t8, i)), $t1), Eq<ValidatorConfig::Config>(select DiemSystem::ValidatorInfo.config(Index($t37, i)), ValidatorConfig::$get_config($t1)))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:373:9+209
    assume {:print "$at(17,18339,18548)"} true;
    assert {:msg "assert_failed(17,18339,18548): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($t8)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    (($IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(ReadVec($t37, i)), $config#$1_DiemSystem_ValidatorInfo(ReadVec($t8, i))) || ($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($t8, i)), $t1) && $IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(ReadVec($t37, i)), $1_ValidatorConfig_$get_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1))))))));

    // assert Roles::spec_has_validator_role_addr($t1) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:377:9+60
    assume {:print "$at(17,18584,18644)"} true;
    assert {:msg "assert_failed(17,18584,18644): post-condition does not hold"}
      $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $t1);

    // assert ValidatorConfig::$is_valid($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:339:9+53
    assume {:print "$at(37,25387,25440)"} true;
    assert {:msg "assert_failed(37,25387,25440): post-condition does not hold"}
      $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, $t1);

    // assert Eq<ValidatorConfig::Config>(ValidatorConfig::spec_get_config($t1), pack ValidatorConfig::Config($t2, $t3, $t4)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:342:9+258
    assume {:print "$at(37,25590,25848)"} true;
    assert {:msg "assert_failed(37,25590,25848): post-condition does not hold"}
      $IsEqual'$1_ValidatorConfig_Config'($1_ValidatorConfig_spec_get_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1), $1_ValidatorConfig_Config($t2, $t3, $t4));

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), $t40, $t14, And($t5, And(Not(DiemConfig::spec_reconfigure_omitted()), Neq<u64>($t39, select DiemConfig::Configuration.last_reconfiguration_time($t13)))))) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:383:9+96
    assume {:print "$at(14,16555,16651)"} true;
    assert {:msg "assert_failed(14,16555,16651): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'($EmptyEventStore, $t14, $t40, ($t5 && (!$1_DiemConfig_spec_reconfigure_omitted($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_DiemConfig_DisableReconfiguration_$memory) && !$IsEqual'u64'($t39, $last_reconfiguration_time#$1_DiemConfig_Configuration($t13))))); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), $t40, $t14, And($t5, And(Not(DiemConfig::spec_reconfigure_omitted()), Neq<u64>($t39, select DiemConfig::Configuration.last_reconfiguration_time($t13)))))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:325:5+3615
    assume {:print "$at(37,24626,28241)"} true;
    assert {:msg "assert_failed(37,24626,28241): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'($EmptyEventStore, $t14, $t40, ($t5 && (!$1_DiemConfig_spec_reconfigure_omitted($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_DiemConfig_DisableReconfiguration_$memory) && !$IsEqual'u64'($t39, $last_reconfiguration_time#$1_DiemConfig_Configuration($t13))))); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:325:5+3615
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:323:6+1
    assume {:print "$at(37,24619,24620)"} true;
L2:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@158]($t1)), Not(Signature::$ed25519_validate_pubkey[]($t2))), Not(ValidatorConfig::spec_has_operator[@158]($t1))), Not(ValidatorConfig::$exists_config[@158]($t1))), Neq<address>(ValidatorConfig::$get_operator[@158]($t1), $t9)), Not(DiemSystem::spec_is_validator[@159]($t1))), Not(DiemTimestamp::$is_operating[@160]())), Not(exists[@161]<Roles::RoleId>($t10))), Neq<u64>(select Roles::RoleId.role_id(global[@161]<Roles::RoleId>($t10)), 4)), Not(ValidatorConfig::$exists_config[@158]($t1))), And($t5, And(And(And(And(DiemTimestamp::$is_operating[@160](), DiemConfig::$reconfiguration_enabled[@162]()), Gt(DiemTimestamp::spec_now_microseconds[@160](), 0)), Lt(select DiemConfig::Configuration.epoch($t11), 18446744073709551615)), Lt($t12, select DiemConfig::Configuration.last_reconfiguration_time($t11))))), And($t5, Gt($t7, Sub(18446744073709551615, 300000000)))), And($t5, Le(DiemTimestamp::spec_now_microseconds[@160](), Add($t7, 300000000)))), Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@158]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:325:5+3615
    assume {:print "$at(37,24626,28241)"} true;
    assert {:msg "assert_failed(37,24626,28241): abort not covered by any of the `aborts_if` clauses"}
      (((((((((((((!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1)) || !$1_Signature_$ed25519_validate_pubkey($t2)) || !$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1)) || !$IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1), $t9)) || !$1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#159, $t1)) || !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160)) || !$ResourceExists($1_Roles_RoleId_$memory#161, $t10)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#161, $t10)), 4)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1)) || ($t5 && (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#162)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160) > 0)) && ($epoch#$1_DiemConfig_Configuration($t11) < 18446744073709551615)) && ($t12 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t11))))) || ($t5 && ($t7 > (18446744073709551615 - 300000000)))) || ($t5 && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160) <= ($t7 + 300000000)))) || !$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1)));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@158]($t1)), Eq(7, $t16)), And(Not(Signature::$ed25519_validate_pubkey[]($t2)), Eq(7, $t16))), And(Not(ValidatorConfig::spec_has_operator[@158]($t1)), Eq(7, $t16))), And(Not(ValidatorConfig::$exists_config[@158]($t1)), Eq(5, $t16))), And(Neq<address>(ValidatorConfig::$get_operator[@158]($t1), $t9), Eq(7, $t16))), And(Not(DiemSystem::spec_is_validator[@159]($t1)), Eq(7, $t16))), And(Not(DiemTimestamp::$is_operating[@160]()), Eq(1, $t16))), And(Not(exists[@161]<Roles::RoleId>($t10)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global[@161]<Roles::RoleId>($t10)), 4), Eq(3, $t16))), And(Not(ValidatorConfig::$exists_config[@158]($t1)), Eq(5, $t16))), And(And($t5, And(And(And(And(DiemTimestamp::$is_operating[@160](), DiemConfig::$reconfiguration_enabled[@162]()), Gt(DiemTimestamp::spec_now_microseconds[@160](), 0)), Lt(select DiemConfig::Configuration.epoch($t11), 18446744073709551615)), Lt($t12, select DiemConfig::Configuration.last_reconfiguration_time($t11)))), Eq(1, $t16))), And(And($t5, Gt($t7, Sub(18446744073709551615, 300000000))), Eq(8, $t16))), And(And($t5, Le(DiemTimestamp::spec_now_microseconds[@160](), Add($t7, 300000000))), Eq(8, $t16))), And(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@158]($t1)), Eq(7, $t16))), Eq(5, $t16)), Eq(3, $t16)), Eq(7, $t16)), Eq(1, $t16)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:325:5+3615
    assert {:msg "assert_failed(37,24626,28241): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((((((((((((!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1)) && $IsEqual'num'(7, $t16)) || (!$1_Signature_$ed25519_validate_pubkey($t2) && $IsEqual'num'(7, $t16))) || (!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1) && $IsEqual'num'(7, $t16))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1) && $IsEqual'num'(5, $t16))) || (!$IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1), $t9) && $IsEqual'num'(7, $t16))) || (!$1_DiemSystem_spec_is_validator($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#159, $t1) && $IsEqual'num'(7, $t16))) || (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160) && $IsEqual'num'(1, $t16))) || (!$ResourceExists($1_Roles_RoleId_$memory#161, $t10) && $IsEqual'num'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#161, $t10)), 4) && $IsEqual'num'(3, $t16))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1) && $IsEqual'num'(5, $t16))) || (($t5 && (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory#162)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160) > 0)) && ($epoch#$1_DiemConfig_Configuration($t11) < 18446744073709551615)) && ($t12 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t11)))) && $IsEqual'num'(1, $t16))) || (($t5 && ($t7 > (18446744073709551615 - 300000000))) && $IsEqual'num'(8, $t16))) || (($t5 && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#160) <= ($t7 + 300000000))) && $IsEqual'num'(8, $t16))) || (!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#158, $t1)) && $IsEqual'num'(7, $t16))) || $IsEqual'num'(5, $t16)) || $IsEqual'num'(3, $t16)) || $IsEqual'num'(7, $t16)) || $IsEqual'num'(1, $t16));

    // abort($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:325:5+3615
    $abort_code := $t16;
    $abort_flag := true;
    return;

}

// fun ValidatorAdministrationScripts::set_validator_operator [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
procedure {:timeLimit 40} $1_ValidatorAdministrationScripts_set_validator_operator$verify(_$t0: $signer, _$t1: Vec (int), _$t2: int) returns ()
{
    // declare local variables
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: Vec (int);
    var $t11: bool;
    var $t12: int;
    var $t13: bool;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t0: $signer;
    var $t1: Vec (int);
    var $t2: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'vec'u8'': Vec (int);
    var $1_ValidatorConfig_ValidatorConfig_$memory#124: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
    var $1_Roles_RoleId_$memory#126: $Memory $1_Roles_RoleId;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(37,32332,32644)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    assume $IsValid'vec'u8''($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    assume $IsValid'address'($t2);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorOperatorConfig::ValidatorOperatorConfig>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0);
    ($IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+312
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // assume Identical($t5, Signer::$address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:444:9+47
    assume {:print "$at(37,32813,32860)"} true;
    assume ($t5 == $1_Signer_$address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:123:9+64
    assume {:print "$at(38,5178,5242)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:134:9+64
    assume {:print "$at(38,5749,5813)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @126 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Roles_RoleId_$memory#126 := $1_Roles_RoleId_$memory;

    // @125 := save_mem(ValidatorOperatorConfig::ValidatorOperatorConfig) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125 := $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory;

    // @124 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_ValidatorConfig_ValidatorConfig_$memory#124 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+1
    assume {:print "$at(37,32332,32333)"} true;
    assume {:print "$track_local(33,4,0):", $t0} $t0 == $t0;

    // trace_local[operator_name]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+1
    assume {:print "$track_local(33,4,1):", $t1} $t1 == $t1;

    // trace_local[operator_account]($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:429:5+1
    assume {:print "$track_local(33,4,2):", $t2} $t2 == $t2;

    // $t10 := opaque begin: ValidatorOperatorConfig::get_human_name($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57
    assume {:print "$at(37,32492,32549)"} true;

    // assume Identical($t11, Not(ValidatorOperatorConfig::$has_validator_operator_config($t2))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57
    assume ($t11 == !$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t2));

    // if ($t11) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57
    if ($t11) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57
L5:

    // assume And(Not(ValidatorOperatorConfig::$has_validator_operator_config($t2)), Eq(5, $t12)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57
    assume (!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t2) && $IsEqual'num'(5, $t12));

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57
    assume {:print "$at(37,32492,32549)"} true;
    assume {:print "$track_abort(33,4):", $t12} $t12 == $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57
L4:

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57
    assume $IsValid'vec'u8''($t10);

    // assume Eq<vector<u8>>($t10, ValidatorOperatorConfig::$get_human_name($t2)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57
    assume $IsEqual'vec'u8''($t10, $1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t2));

    // $t10 := opaque end: ValidatorOperatorConfig::get_human_name($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:16+57

    // $t13 := ==($t10, $t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:74+2
    $t13 := $IsEqual'vec'u8''($t10, $t1);

    // trace_local[tmp#$3]($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:9+85
    assume {:print "$track_local(33,4,3):", $t13} $t13 == $t13;

    // if ($t13) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:9+85
    if ($t13) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:92+1
L1:

    // $t14 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:92+1
    $t14 := 0;
    assume $IsValid'u64'($t14);

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:9+85
    assume {:print "$at(37,32485,32570)"} true;
    assume {:print "$track_abort(33,4):", $t14} $t14 == $t14;

    // $t12 := move($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:9+85
    $t12 := $t14;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:434:9+85
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:435:39+8
    assume {:print "$at(37,32610,32618)"} true;
L0:

    // assume Identical($t15, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t15 == $1_Signer_spec_address_of($t0));

    // assume Identical($t16, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:123:9+64
    assume {:print "$at(38,5178,5242)"} true;
    assume ($t16 == $1_Signer_spec_address_of($t0));

    // assume Identical($t17, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t17 == $1_Signer_spec_address_of($t0));

    // assume Identical($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:134:9+64
    assume {:print "$at(38,5749,5813)"} true;
    assume ($t18 == $1_Signer_spec_address_of($t0));

    // ValidatorConfig::set_operator($t0, $t2) on_abort goto L3 with $t12 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:435:9+57
    assume {:print "$at(37,32580,32637)"} true;
    call $1_ValidatorConfig_set_operator($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(37,32580,32637)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(33,4):", $t12} $t12 == $t12;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:436:5+1
    assume {:print "$at(37,32643,32644)"} true;
L2:

    // assert Not(Not(ValidatorConfig::$exists_config[@124]($t5))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#124, $t5);

    // assert Not(Neq<vector<u8>>(ValidatorOperatorConfig::$get_human_name[@125]($t2), $t1)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:449:9+92
    assume {:print "$at(37,33169,33261)"} true;
    assert {:msg "assert_failed(37,33169,33261): function does not abort under this condition"}
      !!$IsEqual'vec'u8''($1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t2), $t1);

    // assert Not(Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t2))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:125:9+123
    assume {:print "$at(38,5324,5447)"} true;
    assert {:msg "assert_failed(38,5324,5447): function does not abort under this condition"}
      !!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t2);

    // assert Not(Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t2))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:128:9+108
    assume {:print "$at(38,5521,5629)"} true;
    assert {:msg "assert_failed(38,5521,5629): function does not abort under this condition"}
      !!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t2);

    // assert Not(Not(exists[@126]<Roles::RoleId>($t7))) at /home/ying/diem/language/diem-framework/modules/Roles.move:592:9+59
    assume {:print "$at(28,26267,26326)"} true;
    assert {:msg "assert_failed(28,26267,26326): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#126, $t7);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@126]<Roles::RoleId>($t7)), 3)) at /home/ying/diem/language/diem-framework/modules/Roles.move:593:9+87
    assume {:print "$at(28,26335,26422)"} true;
    assert {:msg "assert_failed(28,26335,26422): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#126, $t7)), 3);

    // assert Not(Not(ValidatorConfig::$exists_config[@124]($t6))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#124, $t6);

    // assert Not(Not(exists[@126]<Roles::RoleId>($t9))) at /home/ying/diem/language/diem-framework/modules/Roles.move:592:9+59
    assume {:print "$at(28,26267,26326)"} true;
    assert {:msg "assert_failed(28,26267,26326): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#126, $t9);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@126]<Roles::RoleId>($t9)), 3)) at /home/ying/diem/language/diem-framework/modules/Roles.move:593:9+87
    assume {:print "$at(28,26335,26422)"} true;
    assert {:msg "assert_failed(28,26335,26422): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#126, $t9)), 3);

    // assert ValidatorConfig::spec_has_operator($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:135:9+42
    assume {:print "$at(38,5822,5864)"} true;
    assert {:msg "assert_failed(38,5822,5864): post-condition does not hold"}
      $1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t8);

    // assert Eq<address>(ValidatorConfig::$get_operator($t8), $t2) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:136:9+54
    assume {:print "$at(38,5873,5927)"} true;
    assert {:msg "assert_failed(38,5873,5927): post-condition does not hold"}
      $IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t8), $t2);

    // assert forall addr: TypeDomain<address>() where Neq<address>(addr, $t8): Eq<Option::Option<address>>(select ValidatorConfig::ValidatorConfig.operator_account(global<ValidatorConfig::ValidatorConfig>(addr)), select ValidatorConfig::ValidatorConfig.operator_account(global[@124]<ValidatorConfig::ValidatorConfig>(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:138:9+173
    assume {:print "$at(38,6021,6194)"} true;
    assert {:msg "assert_failed(38,6021,6194): post-condition does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (!$IsEqual'address'(addr, $t8))  ==> ($IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr)), $operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#124, addr)))));

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:138:9+173
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:436:5+1
    assume {:print "$at(37,32643,32644)"} true;
L3:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Not(ValidatorConfig::$exists_config[@124]($t5)), Neq<vector<u8>>(ValidatorOperatorConfig::$get_human_name[@125]($t2), $t1)), Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t2))), Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t2))), Not(exists[@126]<Roles::RoleId>($t7))), Neq<u64>(select Roles::RoleId.role_id(global[@126]<Roles::RoleId>($t7)), 3)), Not(ValidatorConfig::$exists_config[@124]($t6))), Not(exists[@126]<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global[@126]<Roles::RoleId>($t9)), 3)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:438:5+1435
    assume {:print "$at(37,32650,34085)"} true;
    assert {:msg "assert_failed(37,32650,34085): abort not covered by any of the `aborts_if` clauses"}
      ((((((((!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#124, $t5) || !$IsEqual'vec'u8''($1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t2), $t1)) || !$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t2)) || !$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t2)) || !$ResourceExists($1_Roles_RoleId_$memory#126, $t7)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#126, $t7)), 3)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#124, $t6)) || !$ResourceExists($1_Roles_RoleId_$memory#126, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#126, $t9)), 3));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(ValidatorConfig::$exists_config[@124]($t5)), Eq(5, $t12)), And(Neq<vector<u8>>(ValidatorOperatorConfig::$get_human_name[@125]($t2), $t1), Eq(0, $t12))), And(Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t2)), Eq(7, $t12))), And(Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t2)), Eq(5, $t12))), And(Not(exists[@126]<Roles::RoleId>($t7)), Eq(5, $t12))), And(Neq<u64>(select Roles::RoleId.role_id(global[@126]<Roles::RoleId>($t7)), 3), Eq(3, $t12))), And(Not(ValidatorConfig::$exists_config[@124]($t6)), Eq(5, $t12))), And(Not(exists[@126]<Roles::RoleId>($t9)), Eq(5, $t12))), And(Neq<u64>(select Roles::RoleId.role_id(global[@126]<Roles::RoleId>($t9)), 3), Eq(3, $t12))), Eq(0, $t12)), Eq(7, $t12)), Eq(5, $t12)), Eq(3, $t12)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:438:5+1435
    assert {:msg "assert_failed(37,32650,34085): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((((((((!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#124, $t5) && $IsEqual'num'(5, $t12)) || (!$IsEqual'vec'u8''($1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t2), $t1) && $IsEqual'num'(0, $t12))) || (!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t2) && $IsEqual'num'(7, $t12))) || (!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t2) && $IsEqual'num'(5, $t12))) || (!$ResourceExists($1_Roles_RoleId_$memory#126, $t7) && $IsEqual'num'(5, $t12))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#126, $t7)), 3) && $IsEqual'num'(3, $t12))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#124, $t6) && $IsEqual'num'(5, $t12))) || (!$ResourceExists($1_Roles_RoleId_$memory#126, $t9) && $IsEqual'num'(5, $t12))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#126, $t9)), 3) && $IsEqual'num'(3, $t12))) || $IsEqual'num'(0, $t12)) || $IsEqual'num'(7, $t12)) || $IsEqual'num'(5, $t12)) || $IsEqual'num'(3, $t12));

    // abort($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:438:5+1435
    $abort_code := $t12;
    $abort_flag := true;
    return;

}

// fun ValidatorAdministrationScripts::set_validator_operator_with_nonce_admin [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
procedure {:timeLimit 40} $1_ValidatorAdministrationScripts_set_validator_operator_with_nonce_admin$verify(_$t0: $signer, _$t1: $signer, _$t2: int, _$t3: Vec (int), _$t4: int) returns ()
{
    // declare local variables
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: Vec (int);
    var $t14: bool;
    var $t15: bool;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t0: $signer;
    var $t1: $signer;
    var $t2: int;
    var $t3: Vec (int);
    var $t4: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_SlidingNonce_SlidingNonce_$memory#128: $Memory $1_SlidingNonce_SlidingNonce;
    var $1_ValidatorConfig_ValidatorConfig_$memory#129: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
    var $1_Roles_RoleId_$memory#131: $Memory $1_Roles_RoleId;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(37,39695,40153)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    assume $IsValid'u64'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    assume $IsValid'vec'u8''($t3);

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    assume $IsValid'address'($t4);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorOperatorConfig::ValidatorOperatorConfig>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0);
    ($IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<SlidingNonce::SlidingNonce>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+458
    assume (forall $a_0: int :: {$ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0)}(var $rsc := $ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0);
    ($IsValid'$1_SlidingNonce_SlidingNonce'($rsc))));

    // assume Identical($t7, Signer::$address_of($t1)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:530:9+47
    assume {:print "$at(37,40339,40386)"} true;
    assume ($t7 == $1_Signer_$address_of($t1));

    // assume Identical($t8, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:123:9+64
    assume {:print "$at(38,5178,5242)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t1));

    // assume Identical($t9, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t1));

    // assume Identical($t10, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:134:9+64
    assume {:print "$at(38,5749,5813)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t1));

    // assume Identical($t11, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t1));

    // assume DiemAccount::prologue_guarantees($t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t1);

    // assume Roles::$has_diem_root_role($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:548:9+47
    assume {:print "$at(37,41478,41525)"} true;
    assume $1_Roles_$has_diem_root_role($1_Roles_RoleId_$memory, $t0);

    // @131 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:548:9+47
    $1_Roles_RoleId_$memory#131 := $1_Roles_RoleId_$memory;

    // @130 := save_mem(ValidatorOperatorConfig::ValidatorOperatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:548:9+47
    $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130 := $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory;

    // @129 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:548:9+47
    $1_ValidatorConfig_ValidatorConfig_$memory#129 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // @128 := save_mem(SlidingNonce::SlidingNonce) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:548:9+47
    $1_SlidingNonce_SlidingNonce_$memory#128 := $1_SlidingNonce_SlidingNonce_$memory;

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+1
    assume {:print "$at(37,39695,39696)"} true;
    assume {:print "$track_local(33,5,0):", $t0} $t0 == $t0;

    // trace_local[account]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+1
    assume {:print "$track_local(33,5,1):", $t1} $t1 == $t1;

    // trace_local[sliding_nonce]($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+1
    assume {:print "$track_local(33,5,2):", $t2} $t2 == $t2;

    // trace_local[operator_name]($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+1
    assume {:print "$track_local(33,5,3):", $t3} $t3 == $t3;

    // trace_local[operator_account]($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:512:5+1
    assume {:print "$track_local(33,5,4):", $t4} $t4 == $t4;

    // SlidingNonce::record_nonce_or_abort($t0, $t2) on_abort goto L3 with $t12 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:519:9+63
    assume {:print "$at(37,39921,39984)"} true;
    call $1_SlidingNonce_record_nonce_or_abort($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(37,39921,39984)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(33,5):", $t12} $t12 == $t12;
        goto L3;
    }

    // $t13 := opaque begin: ValidatorOperatorConfig::get_human_name($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57
    assume {:print "$at(37,40001,40058)"} true;

    // assume Identical($t14, Not(ValidatorOperatorConfig::$has_validator_operator_config($t4))) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57
    assume ($t14 == !$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t4));

    // if ($t14) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57
    if ($t14) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57
L5:

    // assume And(Not(ValidatorOperatorConfig::$has_validator_operator_config($t4)), Eq(5, $t12)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57
    assume (!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t4) && $IsEqual'num'(5, $t12));

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57
    assume {:print "$at(37,40001,40058)"} true;
    assume {:print "$track_abort(33,5):", $t12} $t12 == $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57
L4:

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57
    assume $IsValid'vec'u8''($t13);

    // assume Eq<vector<u8>>($t13, ValidatorOperatorConfig::$get_human_name($t4)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57
    assume $IsEqual'vec'u8''($t13, $1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t4));

    // $t13 := opaque end: ValidatorOperatorConfig::get_human_name($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:16+57

    // $t15 := ==($t13, $t3) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:74+2
    $t15 := $IsEqual'vec'u8''($t13, $t3);

    // trace_local[tmp#$5]($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:9+85
    assume {:print "$track_local(33,5,5):", $t15} $t15 == $t15;

    // if ($t15) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:9+85
    if ($t15) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:92+1
L1:

    // $t16 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:92+1
    $t16 := 0;
    assume $IsValid'u64'($t16);

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:9+85
    assume {:print "$at(37,39994,40079)"} true;
    assume {:print "$track_abort(33,5):", $t16} $t16 == $t16;

    // $t12 := move($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:9+85
    $t12 := $t16;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:520:9+85
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:521:39+8
    assume {:print "$at(37,40119,40127)"} true;
L0:

    // assume Identical($t17, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t17 == $1_Signer_spec_address_of($t1));

    // assume Identical($t18, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:123:9+64
    assume {:print "$at(38,5178,5242)"} true;
    assume ($t18 == $1_Signer_spec_address_of($t1));

    // assume Identical($t19, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t19 == $1_Signer_spec_address_of($t1));

    // assume Identical($t20, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:134:9+64
    assume {:print "$at(38,5749,5813)"} true;
    assume ($t20 == $1_Signer_spec_address_of($t1));

    // ValidatorConfig::set_operator($t1, $t4) on_abort goto L3 with $t12 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:521:9+57
    assume {:print "$at(37,40089,40146)"} true;
    call $1_ValidatorConfig_set_operator($t1, $t4);
    if ($abort_flag) {
        assume {:print "$at(37,40089,40146)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(33,5):", $t12} $t12 == $t12;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:522:5+1
    assume {:print "$at(37,40152,40153)"} true;
L2:

    // assert Not(Not(exists[@128]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:47:9+93
    assume {:print "$at(31,1971,2064)"} true;
    assert {:msg "assert_failed(31,1971,2064): function does not abort under this condition"}
      !!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#128, $1_Signer_spec_address_of($t0));

    // assert Not(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t2), 0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:48:9+87
    assume {:print "$at(31,2073,2160)"} true;
    assert {:msg "assert_failed(31,2073,2160): function does not abort under this condition"}
      !!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t2), 0);

    // assert Not(Not(ValidatorConfig::$exists_config[@129]($t7))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#129, $t7);

    // assert Not(Neq<vector<u8>>(ValidatorOperatorConfig::$get_human_name[@130]($t4), $t3)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:536:9+92
    assume {:print "$at(37,40793,40885)"} true;
    assert {:msg "assert_failed(37,40793,40885): function does not abort under this condition"}
      !!$IsEqual'vec'u8''($1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130, $t4), $t3);

    // assert Not(Not(ValidatorOperatorConfig::$has_validator_operator_config[@130]($t4))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:125:9+123
    assume {:print "$at(38,5324,5447)"} true;
    assert {:msg "assert_failed(38,5324,5447): function does not abort under this condition"}
      !!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130, $t4);

    // assert Not(Not(ValidatorOperatorConfig::$has_validator_operator_config[@130]($t4))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:128:9+108
    assume {:print "$at(38,5521,5629)"} true;
    assert {:msg "assert_failed(38,5521,5629): function does not abort under this condition"}
      !!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130, $t4);

    // assert Not(Not(exists[@131]<Roles::RoleId>($t9))) at /home/ying/diem/language/diem-framework/modules/Roles.move:592:9+59
    assume {:print "$at(28,26267,26326)"} true;
    assert {:msg "assert_failed(28,26267,26326): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#131, $t9);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 3)) at /home/ying/diem/language/diem-framework/modules/Roles.move:593:9+87
    assume {:print "$at(28,26335,26422)"} true;
    assert {:msg "assert_failed(28,26335,26422): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 3);

    // assert Not(Not(ValidatorConfig::$exists_config[@129]($t8))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#129, $t8);

    // assert Not(Not(exists[@131]<Roles::RoleId>($t11))) at /home/ying/diem/language/diem-framework/modules/Roles.move:592:9+59
    assume {:print "$at(28,26267,26326)"} true;
    assert {:msg "assert_failed(28,26267,26326): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#131, $t11);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t11)), 3)) at /home/ying/diem/language/diem-framework/modules/Roles.move:593:9+87
    assume {:print "$at(28,26335,26422)"} true;
    assert {:msg "assert_failed(28,26335,26422): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t11)), 3);

    // assert ValidatorConfig::spec_has_operator($t10) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:135:9+42
    assume {:print "$at(38,5822,5864)"} true;
    assert {:msg "assert_failed(38,5822,5864): post-condition does not hold"}
      $1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t10);

    // assert Eq<address>(ValidatorConfig::$get_operator($t10), $t4) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:136:9+54
    assume {:print "$at(38,5873,5927)"} true;
    assert {:msg "assert_failed(38,5873,5927): post-condition does not hold"}
      $IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t10), $t4);

    // assert forall addr: TypeDomain<address>() where Neq<address>(addr, $t10): Eq<Option::Option<address>>(select ValidatorConfig::ValidatorConfig.operator_account(global<ValidatorConfig::ValidatorConfig>(addr)), select ValidatorConfig::ValidatorConfig.operator_account(global[@129]<ValidatorConfig::ValidatorConfig>(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:138:9+173
    assume {:print "$at(38,6021,6194)"} true;
    assert {:msg "assert_failed(38,6021,6194): post-condition does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (!$IsEqual'address'(addr, $t10))  ==> ($IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr)), $operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#129, addr)))));

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:138:9+173
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:522:5+1
    assume {:print "$at(37,40152,40153)"} true;
L3:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists[@128]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t2), 0)), Not(ValidatorConfig::$exists_config[@129]($t7))), Neq<vector<u8>>(ValidatorOperatorConfig::$get_human_name[@130]($t4), $t3)), Not(ValidatorOperatorConfig::$has_validator_operator_config[@130]($t4))), Not(ValidatorOperatorConfig::$has_validator_operator_config[@130]($t4))), Not(exists[@131]<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 3)), Not(ValidatorConfig::$exists_config[@129]($t8))), Not(exists[@131]<Roles::RoleId>($t11))), Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t11)), 3)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:524:5+1561
    assume {:print "$at(37,40159,41720)"} true;
    assert {:msg "assert_failed(37,40159,41720): abort not covered by any of the `aborts_if` clauses"}
      ((((((((((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#128, $1_Signer_spec_address_of($t0)) || !$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t2), 0)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#129, $t7)) || !$IsEqual'vec'u8''($1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130, $t4), $t3)) || !$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130, $t4)) || !$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130, $t4)) || !$ResourceExists($1_Roles_RoleId_$memory#131, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 3)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#129, $t8)) || !$ResourceExists($1_Roles_RoleId_$memory#131, $t11)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t11)), 3));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists[@128]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Eq(5, $t12)), And(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t2), 0), Eq(7, $t12))), And(Not(ValidatorConfig::$exists_config[@129]($t7)), Eq(5, $t12))), And(Neq<vector<u8>>(ValidatorOperatorConfig::$get_human_name[@130]($t4), $t3), Eq(0, $t12))), And(Not(ValidatorOperatorConfig::$has_validator_operator_config[@130]($t4)), Eq(7, $t12))), And(Not(ValidatorOperatorConfig::$has_validator_operator_config[@130]($t4)), Eq(5, $t12))), And(Not(exists[@131]<Roles::RoleId>($t9)), Eq(5, $t12))), And(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 3), Eq(3, $t12))), And(Not(ValidatorConfig::$exists_config[@129]($t8)), Eq(5, $t12))), And(Not(exists[@131]<Roles::RoleId>($t11)), Eq(5, $t12))), And(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t11)), 3), Eq(3, $t12))), Eq(0, $t12)), Eq(7, $t12)), Eq(5, $t12)), Eq(3, $t12)) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:524:5+1561
    assert {:msg "assert_failed(37,40159,41720): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((((((((((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#128, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(5, $t12)) || (!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t2), 0) && $IsEqual'num'(7, $t12))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#129, $t7) && $IsEqual'num'(5, $t12))) || (!$IsEqual'vec'u8''($1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130, $t4), $t3) && $IsEqual'num'(0, $t12))) || (!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130, $t4) && $IsEqual'num'(7, $t12))) || (!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#130, $t4) && $IsEqual'num'(5, $t12))) || (!$ResourceExists($1_Roles_RoleId_$memory#131, $t9) && $IsEqual'num'(5, $t12))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 3) && $IsEqual'num'(3, $t12))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#129, $t8) && $IsEqual'num'(5, $t12))) || (!$ResourceExists($1_Roles_RoleId_$memory#131, $t11) && $IsEqual'num'(5, $t12))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t11)), 3) && $IsEqual'num'(3, $t12))) || $IsEqual'num'(0, $t12)) || $IsEqual'num'(7, $t12)) || $IsEqual'num'(5, $t12)) || $IsEqual'num'(3, $t12));

    // abort($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorAdministrationScripts.move:524:5+1561
    $abort_code := $t12;
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
    $IsEqual'u64'($height#$1_DiemBlock_BlockMetadata(s1), $height#$1_DiemBlock_BlockMetadata(s2))
    && $IsEqual'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''($new_block_events#$1_DiemBlock_BlockMetadata(s1), $new_block_events#$1_DiemBlock_BlockMetadata(s2))}
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
    $IsEqual'u64'($round#$1_DiemBlock_NewBlockEvent(s1), $round#$1_DiemBlock_NewBlockEvent(s2))
    && $IsEqual'address'($proposer#$1_DiemBlock_NewBlockEvent(s1), $proposer#$1_DiemBlock_NewBlockEvent(s2))
    && $IsEqual'vec'address''($previous_block_votes#$1_DiemBlock_NewBlockEvent(s1), $previous_block_votes#$1_DiemBlock_NewBlockEvent(s2))
    && $IsEqual'u64'($time_microseconds#$1_DiemBlock_NewBlockEvent(s1), $time_microseconds#$1_DiemBlock_NewBlockEvent(s2))}

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
    $IsEqual'$1_DiemVMConfig_GasSchedule'($gas_schedule#$1_DiemVMConfig_DiemVMConfig(s1), $gas_schedule#$1_DiemVMConfig_DiemVMConfig(s2))}

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
    $IsEqual'vec'u8''($instruction_schedule#$1_DiemVMConfig_GasSchedule(s1), $instruction_schedule#$1_DiemVMConfig_GasSchedule(s2))
    && $IsEqual'vec'u8''($native_schedule#$1_DiemVMConfig_GasSchedule(s1), $native_schedule#$1_DiemVMConfig_GasSchedule(s2))
    && $IsEqual'$1_DiemVMConfig_GasConstants'($gas_constants#$1_DiemVMConfig_GasSchedule(s1), $gas_constants#$1_DiemVMConfig_GasSchedule(s2))}

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

// choice expression at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:652:9+66
function {:inline} $choice_0_pred(i: int, validators: Vec ($1_DiemSystem_ValidatorInfo), addr: int): bool {
    $IsValid'num'(i) && $InRange($RangeVec'$1_DiemSystem_ValidatorInfo'(validators), i) &&
    $IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec(validators, i)), addr)
}
function $choice_0(validators: Vec ($1_DiemSystem_ValidatorInfo), addr: int): int;
axiom (forall validators: Vec ($1_DiemSystem_ValidatorInfo), addr: int:: $IsValid'vec'$1_DiemSystem_ValidatorInfo''(validators) && $IsValid'address'(addr) ==>
    (exists i: int:: $choice_0_pred(i, validators, addr)) ==>
    (var i := $choice_0(validators, addr); $choice_0_pred(i, validators, addr)
     && (var $$c := i; (forall i: int:: i < $$c ==> !$choice_0_pred(i, validators, addr)))));
