
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

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:158:5+90
function {:inline} $1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816)
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

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:519:9+169
function {:inline} $1_Roles_spec_signed_by_treasury_compliance_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId): bool {
    (exists a: int :: $IsValid'address'(a) && (($1_Signer_is_txn_signer_addr(a) && $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, a))))
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

// fun Roles::grant_role [verification] at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
procedure {:timeLimit 40} $1_Roles_grant_role$verify(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $1_Roles_RoleId;
    var $t0: $signer;
    var $t1: int;
    var $1_Roles_RoleId_$modifies: [int]bool;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_Roles_RoleId_$memory#121: $Memory $1_Roles_RoleId;
    var $1_Roles_RoleId_$memory#133: $Memory $1_Roles_RoleId;
    var $1_ValidatorConfig_ValidatorConfig_$memory#134: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_DualAttestation_Limit_$memory#135: $Memory $1_DualAttestation_Limit;
    var $1_AccountFreezing_FreezingBit_$memory#136: $Memory $1_AccountFreezing_FreezingBit;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(28,7001,7200)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    assume $IsValid'u64'($t1);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:173:9+44
    assume {:print "$at(28,7316,7360)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume Implies(Eq<u64>($t1, 0), Eq<address>($t4, a550c18)) at /home/ying/diem/language/diem-framework/modules/Roles.move:175:9+60
    assume {:print "$at(28,7419,7479)"} true;
    assume ($IsEqual'u64'($t1, 0) ==> $IsEqual'address'($t4, 173345816));

    // assume Implies(Eq<u64>($t1, 1), Eq<address>($t4, b1e55ed)) at /home/ying/diem/language/diem-framework/modules/Roles.move:176:9+80
    assume {:print "$at(28,7488,7568)"} true;
    assume ($IsEqual'u64'($t1, 1) ==> $IsEqual'address'($t4, 186537453));

    // assume CanModify<Roles::RoleId>(Signer::$address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:184:9+30
    assume {:print "$at(28,7822,7852)"} true;
    assume $1_Roles_RoleId_$modifies[$1_Signer_$address_of($t0)];

    // @121 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/Roles.move:184:9+30
    $1_Roles_RoleId_$memory#121 := $1_Roles_RoleId_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+1
    assume {:print "$at(28,7001,7002)"} true;
    assume {:print "$track_local(4,12,0):", $t0} $t0 == $t0;

    // trace_local[role_id]($t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+1
    assume {:print "$track_local(4,12,1):", $t1} $t1 == $t1;

    // $t5 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:32+27
    assume {:print "$at(28,7081,7108)"} true;

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:32+27
    assume $IsValid'address'($t5);

    // assume Eq<address>($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:32+27
    assume $IsEqual'address'($t5, $1_Signer_spec_address_of($t0));

    // $t5 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:32+27

    // $t6 := exists<Roles::RoleId>($t5) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:17+6
    $t6 := $ResourceExists($1_Roles_RoleId_$memory, $t5);

    // $t7 := !($t6) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:16+1
    call $t7 := $Not($t6);

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/Roles.move:167:88+8
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := opaque begin: Errors::already_published($t8) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:62+35

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:62+35
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 6) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:62+35
    assume $IsEqual'u64'($t9, 6);

    // $t9 := opaque end: Errors::already_published($t8) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:62+35

    // trace_local[tmp#$3]($t9) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    assume {:print "$track_local(4,12,3):", $t9} $t9 == $t9;

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    assume {:print "$track_local(4,12,2):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    assume {:print "$at(28,7058,7147)"} true;
    assume {:print "$track_abort(4,12):", $t9} $t9 == $t9;

    // $t10 := move($t9) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    $t10 := $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Roles.move:168:17+7
    assume {:print "$at(28,7165,7172)"} true;
L0:

    // $t11 := pack Roles::RoleId($t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:168:26+18
    $t11 := $1_Roles_RoleId($t1);

    // assert CanModify<Roles::RoleId>($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:168:9+7
    assert {:msg "assert_failed(28,7157,7164): caller does not have permission to modify `Roles::RoleId` at given address"}
      $1_Roles_RoleId_$modifies[$1_Signer_spec_address_of($t0)];

    // @133 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // state save for global update invariants
    assume {:print "$at(28,7001,7200)"} true;
    $1_Roles_RoleId_$memory#133 := $1_Roles_RoleId_$memory;

    // @134 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    $1_ValidatorConfig_ValidatorConfig_$memory#134 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // @135 := save_mem(DualAttestation::Limit) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    $1_DualAttestation_Limit_$memory#135 := $1_DualAttestation_Limit_$memory;

    // @136 := save_mem(AccountFreezing::FreezingBit) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    $1_AccountFreezing_FreezingBit_$memory#136 := $1_AccountFreezing_FreezingBit_$memory;

    // move_to<Roles::RoleId>($t11, $t0) on_abort goto L3 with $t10 at /home/ying/diem/language/diem-framework/modules/Roles.move:168:9+7
    assume {:print "$at(28,7157,7164)"} true;
    if ($ResourceExists($1_Roles_RoleId_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, $1_Signer_spec_address_of($t0), $t11);
    }
    if ($abort_flag) {
        assume {:print "$at(28,7157,7164)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(4,12):", $t10} $t10 == $t10;
        goto L3;
    }

    // assert forall addr: TypeDomain<address>() where exists[@133]<Roles::RoleId>(addr): And(exists<Roles::RoleId>(addr), Eq<u64>(select Roles::RoleId.role_id(global[@133]<Roles::RoleId>(addr)), select Roles::RoleId.role_id(global<Roles::RoleId>(addr)))) at /home/ying/diem/language/diem-framework/modules/Roles.move:378:9+189
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:378:9+189
    assume {:print "$at(28,15262,15451)"} true;
    assert {:msg "assert_failed(28,15262,15451): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Roles_RoleId_$memory#133, addr))  ==> (($ResourceExists($1_Roles_RoleId_$memory, addr) && $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#133, addr)), $role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr))))));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(28,19372,19463)"} true;
    assert {:msg "assert_failed(28,19372,19463): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume {:print "$at(28,19851,19972)"} true;
    assert {:msg "assert_failed(28,19851,19972): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume {:print "$at(28,20357,20476)"} true;
    assert {:msg "assert_failed(28,20357,20476): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume {:print "$at(28,20552,20681)"} true;
    assert {:msg "assert_failed(28,20552,20681): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume {:print "$at(28,20748,20867)"} true;
    assert {:msg "assert_failed(28,20748,20867): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume {:print "$at(28,20942,21070)"} true;
    assert {:msg "assert_failed(28,20942,21070): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume {:print "$at(28,21137,21263)"} true;
    assert {:msg "assert_failed(28,21137,21263): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume {:print "$at(28,21324,21444)"} true;
    assert {:msg "assert_failed(28,21324,21444): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume {:print "$at(28,21504,21623)"} true;
    assert {:msg "assert_failed(28,21504,21623): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume {:print "$at(39,3154,3291)"} true;
    assert {:msg "assert_failed(39,3154,3291): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall a: TypeDomain<address>() where And(exists[@134]<ValidatorConfig::ValidatorConfig>(a), exists<ValidatorConfig::ValidatorConfig>(a)): Implies(Neq<Option::Option<address>>(select ValidatorConfig::ValidatorConfig.operator_account(global[@134]<ValidatorConfig::ValidatorConfig>(a)), select ValidatorConfig::ValidatorConfig.operator_account(global<ValidatorConfig::ValidatorConfig>(a))), And(Signer::is_txn_signer_addr(a), Roles::spec_has_validator_role_addr(a))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    assume {:print "$at(38,13733,14037)"} true;
    assert {:msg "assert_failed(38,13733,14037): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> (($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory#134, a) && $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, a)))  ==> ((!$IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#134, a)), $operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, a))) ==> ($1_Signer_is_txn_signer_addr(a) && $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, a)))));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,14521,14633)"} true;
    assert {:msg "assert_failed(38,14521,14633): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume {:print "$at(38,14862,14974)"} true;
    assert {:msg "assert_failed(38,14862,14974): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume {:print "$at(38,15308,15415)"} true;
    assert {:msg "assert_failed(38,15308,15415): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall a: TypeDomain<address>() where exists[@135]<DualAttestation::Limit>(a550c18): Implies(Neq<u64>(DualAttestation::spec_get_cur_microdiem_limit(), DualAttestation::spec_get_cur_microdiem_limit[@135]()), Roles::spec_signed_by_treasury_compliance_role()) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:558:9+214
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:558:9+214
    assume {:print "$at(22,24708,24922)"} true;
    assert {:msg "assert_failed(22,24708,24922): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($1_DualAttestation_Limit_$memory#135, 173345816))  ==> ((!$IsEqual'u64'($1_DualAttestation_spec_get_cur_microdiem_limit($1_DualAttestation_Limit_$memory), $1_DualAttestation_spec_get_cur_microdiem_limit($1_DualAttestation_Limit_$memory#135)) ==> $1_Roles_spec_signed_by_treasury_compliance_role($1_Roles_RoleId_$memory))));

    // assert forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume {:print "$at(22,25137,25346)"} true;
    assert {:msg "assert_failed(22,25137,25346): global memory invariant does not hold"}
      (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assert forall addr: TypeDomain<address>() where exists[@136]<AccountFreezing::FreezingBit>(addr): Implies(Neq<bool>(select AccountFreezing::FreezingBit.is_frozen(global<AccountFreezing::FreezingBit>(addr)), select AccountFreezing::FreezingBit.is_frozen(global[@136]<AccountFreezing::FreezingBit>(addr))), Roles::spec_signed_by_treasury_compliance_role()) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:219:9+237
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:219:9+237
    assume {:print "$at(4,8702,8939)"} true;
    assert {:msg "assert_failed(4,8702,8939): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_AccountFreezing_FreezingBit_$memory#136, addr))  ==> ((!$IsEqual'bool'($is_frozen#$1_AccountFreezing_FreezingBit($ResourceValue($1_AccountFreezing_FreezingBit_$memory, addr)), $is_frozen#$1_AccountFreezing_FreezingBit($ResourceValue($1_AccountFreezing_FreezingBit_$memory#136, addr))) ==> $1_Roles_spec_signed_by_treasury_compliance_role($1_Roles_RoleId_$memory))));

    // assert forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume {:print "$at(12,109678,109825)"} true;
    assert {:msg "assert_failed(12,109678,109825): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // label L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:169:5+1
    assume {:print "$at(28,7199,7200)"} true;
L2:

    // assert Not(exists[@121]<Roles::RoleId>(Signer::$address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/Roles.move:181:9+62
    assume {:print "$at(28,7656,7718)"} true;
    assert {:msg "assert_failed(28,7656,7718): function does not abort under this condition"}
      !$ResourceExists($1_Roles_RoleId_$memory#121, $1_Signer_$address_of($t0));

    // assert exists<Roles::RoleId>(Signer::$address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:182:9+29
    assume {:print "$at(28,7727,7756)"} true;
    assert {:msg "assert_failed(28,7727,7756): post-condition does not hold"}
      $ResourceExists($1_Roles_RoleId_$memory, $1_Signer_$address_of($t0));

    // assert Eq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(Signer::$address_of($t0))), $t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:183:9+48
    assume {:print "$at(28,7765,7813)"} true;
    assert {:msg "assert_failed(28,7765,7813): post-condition does not hold"}
      $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $1_Signer_$address_of($t0))), $t1);

    // return () at /home/ying/diem/language/diem-framework/modules/Roles.move:183:9+48
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Roles.move:169:5+1
    assume {:print "$at(28,7199,7200)"} true;
L3:

    // assert exists[@121]<Roles::RoleId>(Signer::$address_of[]($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:170:5+369
    assume {:print "$at(28,7205,7574)"} true;
    assert {:msg "assert_failed(28,7205,7574): abort not covered by any of the `aborts_if` clauses"}
      $ResourceExists($1_Roles_RoleId_$memory#121, $1_Signer_$address_of($t0));

    // assert And(exists[@121]<Roles::RoleId>(Signer::$address_of[]($t0)), Eq(6, $t10)) at /home/ying/diem/language/diem-framework/modules/Roles.move:170:5+369
    assert {:msg "assert_failed(28,7205,7574): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ($ResourceExists($1_Roles_RoleId_$memory#121, $1_Signer_$address_of($t0)) && $IsEqual'num'(6, $t10));

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/Roles.move:170:5+369
    $abort_code := $t10;
    $abort_flag := true;
    return;

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
function {:inline} $1_Vector_$is_empty'address'(v: Vec (int)): bool {
    $IsEqual'u64'($1_Vector_$length'address'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_ValidatorConfig_Config'(v), 0)
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
function {:inline} $1_Option_$is_none'address'(t: $1_Option_Option'address'): bool {
    $1_Vector_$is_empty'address'($vec#$1_Option_Option'address'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:51:5+95
function {:inline} $1_Option_$is_none'$1_ValidatorConfig_Config'(t: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    $1_Vector_$is_empty'$1_ValidatorConfig_Config'($vec#$1_Option_Option'$1_ValidatorConfig_Config'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'address'(t: $1_Option_Option'address'): bool {
    !$1_Vector_$is_empty'address'($vec#$1_Option_Option'address'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_ValidatorConfig_Config'(t: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    !$1_Vector_$is_empty'$1_ValidatorConfig_Config'($vec#$1_Option_Option'$1_ValidatorConfig_Config'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:33:10+78
function {:inline} $1_Option_spec_none'address'(): $1_Option_Option'address' {
    $1_Option_Option'address'($EmptyVec'address'())
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:33:10+78
function {:inline} $1_Option_spec_none'$1_ValidatorConfig_Config'(): $1_Option_Option'$1_ValidatorConfig_Config' {
    $1_Option_Option'$1_ValidatorConfig_Config'($EmptyVec'$1_ValidatorConfig_Config'())
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:46:10+89
function {:inline} $1_Option_spec_some'address'(e: int): $1_Option_Option'address' {
    $1_Option_Option'address'(MakeVec1(e))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:46:10+89
function {:inline} $1_Option_spec_some'$1_ValidatorConfig_Config'(e: $1_ValidatorConfig_Config): $1_Option_Option'$1_ValidatorConfig_Config' {
    $1_Option_Option'$1_ValidatorConfig_Config'(MakeVec1(e))
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

// fun ValidatorConfig::get_human_name [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:262:5+259
procedure {:timeLimit 40} $1_ValidatorConfig_get_human_name$verify(_$t0: int) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: $1_ValidatorConfig_ValidatorConfig;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: $1_ValidatorConfig_ValidatorConfig;
    var $t9: Vec (int);
    var $t0: int;
    var $temp_0'$1_ValidatorConfig_ValidatorConfig': $1_ValidatorConfig_ValidatorConfig;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_ValidatorConfig_ValidatorConfig_$memory#120: $Memory $1_ValidatorConfig_ValidatorConfig;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:262:5+259
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,11812,12071)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:262:5+259
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:262:5+259
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:262:5+259
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:271:17+6
    assume {:print "$at(38,12181,12187)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:271:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // @120 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:262:5+1
    assume {:print "$at(38,11812,11813)"} true;
    $1_ValidatorConfig_ValidatorConfig_$memory#120 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:262:5+1
    assume {:print "$track_local(9,3,0):", $t0} $t0 == $t0;

    // $t4 := exists<ValidatorConfig::ValidatorConfig>($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:16+6
    assume {:print "$at(38,11907,11913)"} true;
    $t4 := $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t0);

    // $t5 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:69+17
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := opaque begin: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:47+40

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:47+40
    assume $IsValid'u64'($t6);

    // assume Eq<u64>($t6, 5) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:47+40
    assume $IsEqual'u64'($t6, 5);

    // $t6 := opaque end: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:47+40

    // trace_local[tmp#$2]($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:9+79
    assume {:print "$track_local(9,3,2):", $t6} $t6 == $t6;

    // trace_local[tmp#$1]($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:9+79
    assume {:print "$track_local(9,3,1):", $t4} $t4 == $t4;

    // if ($t4) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:9+79
    if ($t4) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:9+79
L1:

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:9+79
    assume {:print "$at(38,11900,11979)"} true;
    assume {:print "$track_abort(9,3):", $t6} $t6 == $t6;

    // $t7 := move($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:9+79
    $t7 := $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:263:9+79
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:264:52+4
    assume {:print "$at(38,12032,12036)"} true;
L0:

    // $t8 := get_global<ValidatorConfig::ValidatorConfig>($t0) on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:264:21+13
    if (!$ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t8 := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(38,12001,12014)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(9,3):", $t7} $t7 == $t7;
        goto L3;
    }

    // trace_local[t_ref]($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:264:13+5
    assume {:print "$track_local(9,3,3):", $t8} $t8 == $t8;

    // $t9 := get_field<ValidatorConfig::ValidatorConfig>.human_name($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:265:10+17
    assume {:print "$at(38,12048,12065)"} true;
    $t9 := $human_name#$1_ValidatorConfig_ValidatorConfig($t8);

    // trace_return[0]($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:265:9+18
    assume {:print "$track_return(9,3,0):", $t9} $t9 == $t9;

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:266:5+1
    assume {:print "$at(38,12070,12071)"} true;
L2:

    // assert Not(Not(ValidatorConfig::$exists_config[@120]($t0))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#120, $t0);

    // assert Eq<vector<u8>>($t9, ValidatorConfig::$get_human_name($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:271:9+39
    assume {:print "$at(38,12173,12212)"} true;
    assert {:msg "assert_failed(38,12173,12212): post-condition does not hold"}
      $IsEqual'vec'u8''($t9, $1_ValidatorConfig_$get_human_name($1_ValidatorConfig_ValidatorConfig_$memory, $t0));

    // return $t9 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:271:9+39
    $ret0 := $t9;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:266:5+1
    assume {:print "$at(38,12070,12071)"} true;
L3:

    // assert Not(ValidatorConfig::$exists_config[@120]($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:268:5+141
    assume {:print "$at(38,12077,12218)"} true;
    assert {:msg "assert_failed(38,12077,12218): abort not covered by any of the `aborts_if` clauses"}
      !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#120, $t0);

    // assert And(Not(ValidatorConfig::$exists_config[@120]($t0)), Eq(5, $t7)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:268:5+141
    assert {:msg "assert_failed(38,12077,12218): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#120, $t0) && $IsEqual'num'(5, $t7));

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:268:5+141
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun ValidatorConfig::publish [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
procedure {:timeLimit 40} $1_ValidatorConfig_publish$verify(_$t0: $signer, _$t1: $signer, _$t2: Vec (int)) returns ()
{
    // declare local variables
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: bool;
    var $t12: int;
    var $t13: bool;
    var $t14: int;
    var $t15: bool;
    var $t16: bool;
    var $t17: int;
    var $t18: int;
    var $t19: $1_Option_Option'$1_ValidatorConfig_Config';
    var $t20: $1_Option_Option'address';
    var $t21: $1_ValidatorConfig_ValidatorConfig;
    var $t0: $signer;
    var $t1: $signer;
    var $t2: Vec (int);
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_ValidatorConfig_ValidatorConfig_$memory#129: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#130: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_Roles_RoleId_$memory#131: $Memory $1_Roles_RoleId;
    var $1_ValidatorConfig_ValidatorConfig_$memory#141: $Memory $1_ValidatorConfig_ValidatorConfig;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(38,2065,2675)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    assume $IsValid'vec'u8''($t2);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:75:9+64
    assume {:print "$at(38,2916,2980)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t1));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // @130 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+1
    assume {:print "$at(38,2065,2066)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#130 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @131 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+1
    $1_Roles_RoleId_$memory#131 := $1_Roles_RoleId_$memory;

    // @129 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+1
    $1_ValidatorConfig_ValidatorConfig_$memory#129 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // trace_local[validator_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+1
    assume {:print "$track_local(9,7,0):", $t0} $t0 == $t0;

    // trace_local[dr_account]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+1
    assume {:print "$track_local(9,7,1):", $t1} $t1 == $t1;

    // trace_local[human_name]($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+1
    assume {:print "$track_local(9,7,2):", $t2} $t2 == $t2;

    // opaque begin: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:53:9+33
    assume {:print "$at(38,2206,2239)"} true;

    // assume Identical($t8, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:53:9+33
    assume ($t8 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t8) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:53:9+33
    if ($t8) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:53:9+33
L5:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t9)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:53:9+33
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t9));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:53:9+33
    assume {:print "$at(38,2206,2239)"} true;
    assume {:print "$track_abort(9,7):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:53:9+33
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:53:9+33
L4:

    // opaque end: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:53:9+33

    // assume Identical($t10, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_diem_root($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:54:9+35
    assume {:print "$at(38,2249,2284)"} true;

    // assume Identical($t11, Or(Or(Or(Neq<address>(Signer::spec_address_of($t1), a550c18), Not(exists<Roles::RoleId>($t10))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 0)), Neq<address>(Signer::spec_address_of($t1), a550c18))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:54:9+35
    assume ($t11 == (((!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t10)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816)));

    // if ($t11) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:54:9+35
    if ($t11) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:54:9+35
L7:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t1), a550c18), Eq(2, $t9)), And(Not(exists<Roles::RoleId>($t10)), Eq(5, $t9))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 0), Eq(3, $t9))), And(Neq<address>(Signer::spec_address_of($t1), a550c18), Eq(2, $t9))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:54:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816) && $IsEqual'num'(2, $t9)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t10) && $IsEqual'num'(5, $t9))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 0) && $IsEqual'num'(3, $t9))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816) && $IsEqual'num'(2, $t9)));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:54:9+35
    assume {:print "$at(38,2249,2284)"} true;
    assume {:print "$track_abort(9,7):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:54:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:54:9+35
L6:

    // opaque end: Roles::assert_diem_root($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:54:9+35

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_validator($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:55:9+42
    assume {:print "$at(38,2294,2336)"} true;

    // assume Identical($t13, Or(Not(exists<Roles::RoleId>($t12)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t12)), 3))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:55:9+42
    assume ($t13 == (!$ResourceExists($1_Roles_RoleId_$memory, $t12) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t12)), 3)));

    // if ($t13) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:55:9+42
    if ($t13) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:55:9+42
L9:

    // assume Or(And(Not(exists<Roles::RoleId>($t12)), Eq(5, $t9)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t12)), 3), Eq(3, $t9))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:55:9+42
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t12) && $IsEqual'num'(5, $t9)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t12)), 3) && $IsEqual'num'(3, $t9)));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:55:9+42
    assume {:print "$at(38,2294,2336)"} true;
    assume {:print "$track_abort(9,7):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:55:9+42
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:55:9+42
L8:

    // opaque end: Roles::assert_validator($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:55:9+42

    // $t14 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:57:38+37
    assume {:print "$at(38,2391,2428)"} true;

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:57:38+37
    assume $IsValid'address'($t14);

    // assume Eq<address>($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:57:38+37
    assume $IsEqual'address'($t14, $1_Signer_spec_address_of($t0));

    // $t14 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:57:38+37

    // $t15 := exists<ValidatorConfig::ValidatorConfig>($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:57:14+6
    $t15 := $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t14);

    // $t16 := !($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:57:13+1
    call $t16 := $Not($t15);

    // $t17 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:58:39+17
    assume {:print "$at(38,2469,2486)"} true;
    $t17 := 0;
    assume $IsValid'u64'($t17);

    // $t18 := opaque begin: Errors::already_published($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:58:13+44

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:58:13+44
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 6) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:58:13+44
    assume $IsEqual'u64'($t18, 6);

    // $t18 := opaque end: Errors::already_published($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:58:13+44

    // trace_local[tmp#$4]($t18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:56:9+151
    assume {:print "$at(38,2346,2497)"} true;
    assume {:print "$track_local(9,7,4):", $t18} $t18 == $t18;

    // trace_local[tmp#$3]($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:56:9+151
    assume {:print "$track_local(9,7,3):", $t16} $t16 == $t16;

    // if ($t16) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:56:9+151
    if ($t16) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:56:9+151
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:56:9+151

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:56:9+151
    assume {:print "$at(38,2346,2497)"} true;
    assume {:print "$track_abort(9,7):", $t18} $t18 == $t18;

    // $t9 := move($t18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:56:9+151
    $t9 := $t18;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:56:9+151
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:60:17+17
    assume {:print "$at(38,2515,2532)"} true;
L0:

    // $t19 := opaque begin: Option::none<ValidatorConfig::Config>() at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:61:21+14
    assume {:print "$at(38,2572,2586)"} true;

    // assume And(WellFormed($t19), Le(Len<ValidatorConfig::Config>(select Option::Option.vec($t19)), 1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:61:21+14
    assume ($IsValid'$1_Option_Option'$1_ValidatorConfig_Config''($t19) && (LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($t19)) <= 1));

    // assume Eq<Option::Option<ValidatorConfig::Config>>($t19, Option::spec_none<ValidatorConfig::Config>()) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:61:21+14
    assume $IsEqual'$1_Option_Option'$1_ValidatorConfig_Config''($t19, $1_Option_spec_none'$1_ValidatorConfig_Config'());

    // $t19 := opaque end: Option::none<ValidatorConfig::Config>() at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:61:21+14

    // $t20 := opaque begin: Option::none<address>() at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:62:31+14
    assume {:print "$at(38,2618,2632)"} true;

    // assume And(WellFormed($t20), Le(Len<address>(select Option::Option.vec($t20)), 1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:62:31+14
    assume ($IsValid'$1_Option_Option'address''($t20) && (LenVec($vec#$1_Option_Option'address'($t20)) <= 1));

    // assume Eq<Option::Option<address>>($t20, Option::spec_none<address>()) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:62:31+14
    assume $IsEqual'$1_Option_Option'address''($t20, $1_Option_spec_none'address'());

    // $t20 := opaque end: Option::none<address>() at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:62:31+14

    // $t21 := pack ValidatorConfig::ValidatorConfig($t19, $t20, $t2) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:60:36+133
    assume {:print "$at(38,2534,2667)"} true;
    $t21 := $1_ValidatorConfig_ValidatorConfig($t19, $t20, $t2);

    // @141 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:48:5+610
    // state save for global update invariants
    assume {:print "$at(38,2065,2675)"} true;
    $1_ValidatorConfig_ValidatorConfig_$memory#141 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // move_to<ValidatorConfig::ValidatorConfig>($t21, $t0) on_abort goto L3 with $t9 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:60:9+7
    assume {:print "$at(38,2507,2514)"} true;
    if ($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_ValidatorConfig_ValidatorConfig_$memory := $ResourceUpdate($1_ValidatorConfig_ValidatorConfig_$memory, $1_Signer_spec_address_of($t0), $t21);
    }
    if ($abort_flag) {
        assume {:print "$at(38,2507,2514)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(9,7):", $t9} $t9 == $t9;
        goto L3;
    }

    // assert forall a: TypeDomain<address>() where And(exists[@141]<ValidatorConfig::ValidatorConfig>(a), exists<ValidatorConfig::ValidatorConfig>(a)): Implies(Neq<Option::Option<address>>(select ValidatorConfig::ValidatorConfig.operator_account(global[@141]<ValidatorConfig::ValidatorConfig>(a)), select ValidatorConfig::ValidatorConfig.operator_account(global<ValidatorConfig::ValidatorConfig>(a))), And(Signer::is_txn_signer_addr(a), Roles::spec_has_validator_role_addr(a))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    assume {:print "$at(38,13733,14037)"} true;
    assert {:msg "assert_failed(38,13733,14037): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> (($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory#141, a) && $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, a)))  ==> ((!$IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#141, a)), $operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, a))) ==> ($1_Signer_is_txn_signer_addr(a) && $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, a)))));

    // assert forall validator: TypeDomain<address>() where ValidatorConfig::$is_valid[@141](validator): ValidatorConfig::$is_valid(validator) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:328:9+107
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:328:9+107
    assume {:print "$at(38,14248,14355)"} true;
    assert {:msg "assert_failed(38,14248,14355): global memory invariant does not hold"}
      (forall validator: int :: $IsValid'address'(validator) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory#141, validator))  ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, validator)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,14521,14633)"} true;
    assert {:msg "assert_failed(38,14521,14633): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume {:print "$at(38,14862,14974)"} true;
    assert {:msg "assert_failed(38,14862,14974): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume {:print "$at(38,15308,15415)"} true;
    assert {:msg "assert_failed(38,15308,15415): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:65:5+1
    assume {:print "$at(38,2674,2675)"} true;
L2:

    // assert Not(ValidatorConfig::$exists_config[@129]($t5)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:79:9+83
    assume {:print "$at(38,3180,3263)"} true;
    assert {:msg "assert_failed(38,3180,3263): function does not abort under this condition"}
      !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#129, $t5);

    // assert Not(Not(DiemTimestamp::$is_operating[@130]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#130);

    // assert Not(Not(exists[@131]<Roles::RoleId>($t6))) at /home/ying/diem/language/diem-framework/modules/Roles.move:538:9+59
    assume {:print "$at(28,23968,24027)"} true;
    assert {:msg "assert_failed(28,23968,24027): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#131, $t6);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t6)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:539:9+87
    assume {:print "$at(28,24036,24123)"} true;
    assert {:msg "assert_failed(28,24036,24123): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t6)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t1), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:9+86
    assume {:print "$at(9,1379,1465)"} true;
    assert {:msg "assert_failed(9,1379,1465): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816);

    // assert Not(Not(exists[@131]<Roles::RoleId>($t7))) at /home/ying/diem/language/diem-framework/modules/Roles.move:592:9+59
    assume {:print "$at(28,26267,26326)"} true;
    assert {:msg "assert_failed(28,26267,26326): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#131, $t7);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t7)), 3)) at /home/ying/diem/language/diem-framework/modules/Roles.move:593:9+87
    assume {:print "$at(28,26335,26422)"} true;
    assert {:msg "assert_failed(28,26335,26422): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t7)), 3);

    // assert ValidatorConfig::$exists_config(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:69:9+66
    assume {:print "$at(38,2737,2803)"} true;
    assert {:msg "assert_failed(38,2737,2803): post-condition does not hold"}
      $1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:69:9+66
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:65:5+1
    assume {:print "$at(38,2674,2675)"} true;
L3:

    // assert Or(Or(Or(Or(Or(Or(ValidatorConfig::$exists_config[@129]($t5), Not(DiemTimestamp::$is_operating[@130]())), Not(exists[@131]<Roles::RoleId>($t6))), Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t6)), 0)), Neq<address>(Signer::spec_address_of[]($t1), a550c18)), Not(exists[@131]<Roles::RoleId>($t7))), Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t7)), 3)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:67:5+128
    assume {:print "$at(38,2681,2809)"} true;
    assert {:msg "assert_failed(38,2681,2809): abort not covered by any of the `aborts_if` clauses"}
      (((((($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#129, $t5) || !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#130)) || !$ResourceExists($1_Roles_RoleId_$memory#131, $t6)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t6)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816)) || !$ResourceExists($1_Roles_RoleId_$memory#131, $t7)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t7)), 3));

    // assert Or(Or(Or(Or(Or(Or(And(ValidatorConfig::$exists_config[@129]($t5), Eq(6, $t9)), And(Not(DiemTimestamp::$is_operating[@130]()), Eq(1, $t9))), And(Not(exists[@131]<Roles::RoleId>($t6)), Eq(5, $t9))), And(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t6)), 0), Eq(3, $t9))), And(Neq<address>(Signer::spec_address_of[]($t1), a550c18), Eq(2, $t9))), And(Not(exists[@131]<Roles::RoleId>($t7)), Eq(5, $t9))), And(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t7)), 3), Eq(3, $t9))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:67:5+128
    assert {:msg "assert_failed(38,2681,2809): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#129, $t5) && $IsEqual'num'(6, $t9)) || (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#130) && $IsEqual'num'(1, $t9))) || (!$ResourceExists($1_Roles_RoleId_$memory#131, $t6) && $IsEqual'num'(5, $t9))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t6)), 0) && $IsEqual'num'(3, $t9))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816) && $IsEqual'num'(2, $t9))) || (!$ResourceExists($1_Roles_RoleId_$memory#131, $t7) && $IsEqual'num'(5, $t9))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t7)), 3) && $IsEqual'num'(3, $t9)));

    // abort($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:67:5+128
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

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

// fun ValidatorConfig::exists_config [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+84
procedure {:timeLimit 40} $1_ValidatorConfig_exists_config$verify(_$t0: int) returns ($ret0: bool)
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
    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+84
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,3345,3429)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+84
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+84
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+84
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+84
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+84
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+1
    assume {:print "$track_local(9,0,0):", $t0} $t0 == $t0;

    // $t1 := exists<ValidatorConfig::ValidatorConfig>($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:85:9+6
    assume {:print "$at(38,3394,3400)"} true;
    $t1 := $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:85:9+29
    assume {:print "$track_return(9,0,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:86:5+1
    assume {:print "$at(38,3428,3429)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:86:5+1
    assert {:msg "assert_failed(38,3428,3429): function does not abort under this condition"}
      !false;

    // return $t1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:86:5+1
    $ret0 := $t1;
    return;

}

// fun ValidatorConfig::get_config [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:241:5+341
procedure {:timeLimit 40} $1_ValidatorConfig_get_config$verify(_$t0: int) returns ($ret0: $1_ValidatorConfig_Config)
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: $1_Option_Option'$1_ValidatorConfig_Config';
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: $1_ValidatorConfig_ValidatorConfig;
    var $t11: $1_Option_Option'$1_ValidatorConfig_Config';
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: $1_ValidatorConfig_Config;
    var $t16: bool;
    var $t0: int;
    var $temp_0'$1_Option_Option'$1_ValidatorConfig_Config'': $1_Option_Option'$1_ValidatorConfig_Config';
    var $temp_0'$1_ValidatorConfig_Config': $1_ValidatorConfig_Config;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $1_ValidatorConfig_ValidatorConfig_$memory#128: $Memory $1_ValidatorConfig_ValidatorConfig;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:241:5+341
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,10949,11290)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:241:5+341
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:241:5+341
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:241:5+341
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:252:17+6
    assume {:print "$at(38,11499,11505)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:252:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // @128 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:241:5+1
    assume {:print "$at(38,10949,10950)"} true;
    $1_ValidatorConfig_ValidatorConfig_$memory#128 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:241:5+1
    assume {:print "$track_local(9,1,0):", $t0} $t0 == $t0;

    // $t6 := ValidatorConfig::exists_config($t0) on_abort goto L5 with $t7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:16+19
    assume {:print "$at(38,11036,11055)"} true;
    call $t6 := $1_ValidatorConfig_exists_config($t0);
    if ($abort_flag) {
        assume {:print "$at(38,11036,11055)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(9,1):", $t7} $t7 == $t7;
        goto L5;
    }

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:59+17
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := opaque begin: Errors::not_published($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:37+40

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:37+40
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 5) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:37+40
    assume $IsEqual'u64'($t9, 5);

    // $t9 := opaque end: Errors::not_published($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:37+40

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:9+69
    assume {:print "$track_local(9,1,2):", $t9} $t9 == $t9;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:9+69
    assume {:print "$track_local(9,1,1):", $t6} $t6 == $t6;

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:9+69
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:9+69
L1:

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:9+69
    assume {:print "$at(38,11029,11098)"} true;
    assume {:print "$track_abort(9,1):", $t9} $t9 == $t9;

    // $t7 := move($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:9+69
    $t7 := $t9;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:242:9+69
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:243:54+4
    assume {:print "$at(38,11153,11157)"} true;
L0:

    // $t10 := get_global<ValidatorConfig::ValidatorConfig>($t0) on_abort goto L5 with $t7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:243:23+13
    if (!$ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t10 := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(38,11122,11135)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(9,1):", $t7} $t7 == $t7;
        goto L5;
    }

    // $t11 := get_field<ValidatorConfig::ValidatorConfig>.config($t10) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:243:22+44
    $t11 := $config#$1_ValidatorConfig_ValidatorConfig($t10);

    // trace_local[config]($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:243:13+6
    assume {:print "$track_local(9,1,5):", $t11} $t11 == $t11;

    // $t12 := opaque begin: Option::is_some<ValidatorConfig::Config>($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:16+23
    assume {:print "$at(38,11182,11205)"} true;

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:16+23
    assume $IsValid'bool'($t12);

    // assume Eq<bool>($t12, Option::$is_some<ValidatorConfig::Config>($t11)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:16+23
    assume $IsEqual'bool'($t12, $1_Option_$is_some'$1_ValidatorConfig_Config'($t11));

    // $t12 := opaque end: Option::is_some<ValidatorConfig::Config>($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:16+23

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:66+17
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:41+43

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:41+43
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:41+43
    assume $IsEqual'u64'($t14, 7);

    // $t14 := opaque end: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:41+43

    // trace_local[tmp#$4]($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:9+76
    assume {:print "$track_local(9,1,4):", $t14} $t14 == $t14;

    // trace_local[tmp#$3]($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:9+76
    assume {:print "$track_local(9,1,3):", $t12} $t12 == $t12;

    // if ($t12) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:9+76
    if ($t12) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:9+76
L3:

    // destroy($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:9+76

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:9+76
    assume {:print "$at(38,11175,11251)"} true;
    assume {:print "$track_abort(9,1):", $t14} $t14 == $t14;

    // $t7 := move($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:9+76
    $t7 := $t14;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:244:9+76
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:25+6
    assume {:print "$at(38,11277,11283)"} true;
L2:

    // $t15 := opaque begin: Option::borrow<ValidatorConfig::Config>($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22

    // assume Identical($t16, Option::$is_none<ValidatorConfig::Config>($t11)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22
    assume ($t16 == $1_Option_$is_none'$1_ValidatorConfig_Config'($t11));

    // if ($t16) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22
    if ($t16) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22
L7:

    // assume And(Option::$is_none<ValidatorConfig::Config>($t11), Eq(7, $t7)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22
    assume ($1_Option_$is_none'$1_ValidatorConfig_Config'($t11) && $IsEqual'num'(7, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22
    assume {:print "$at(38,11262,11284)"} true;
    assume {:print "$track_abort(9,1):", $t7} $t7 == $t7;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22
L6:

    // assume WellFormed($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22
    assume $IsValid'$1_ValidatorConfig_Config'($t15);

    // assume Eq<ValidatorConfig::Config>($t15, Option::$borrow<ValidatorConfig::Config>($t11)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22
    assume $IsEqual'$1_ValidatorConfig_Config'($t15, $1_Option_$borrow'$1_ValidatorConfig_Config'($t11));

    // $t15 := opaque end: Option::borrow<ValidatorConfig::Config>($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:10+22

    // trace_return[0]($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:245:9+23
    assume {:print "$track_return(9,1,0):", $t15} $t15 == $t15;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:246:5+1
    assume {:print "$at(38,11289,11290)"} true;
L4:

    // assert Not(Not(ValidatorConfig::$exists_config[@128]($t0))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#128, $t0);

    // assert Not(Option::$is_none[]<ValidatorConfig::Config>(select ValidatorConfig::ValidatorConfig.config(global[@128]<ValidatorConfig::ValidatorConfig>($t0)))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:251:9+94
    assume {:print "$at(38,11388,11482)"} true;
    assert {:msg "assert_failed(38,11388,11482): function does not abort under this condition"}
      !$1_Option_$is_none'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#128, $t0)));

    // assert Eq<ValidatorConfig::Config>($t15, ValidatorConfig::spec_get_config($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:252:9+40
    assume {:print "$at(38,11491,11531)"} true;
    assert {:msg "assert_failed(38,11491,11531): post-condition does not hold"}
      $IsEqual'$1_ValidatorConfig_Config'($t15, $1_ValidatorConfig_spec_get_config($1_ValidatorConfig_ValidatorConfig_$memory, $t0));

    // return $t15 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:252:9+40
    $ret0 := $t15;
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:246:5+1
    assume {:print "$at(38,11289,11290)"} true;
L5:

    // assert Or(Not(ValidatorConfig::$exists_config[@128]($t0)), Option::$is_none[]<ValidatorConfig::Config>(select ValidatorConfig::ValidatorConfig.config(global[@128]<ValidatorConfig::ValidatorConfig>($t0)))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:248:5+241
    assume {:print "$at(38,11296,11537)"} true;
    assert {:msg "assert_failed(38,11296,11537): abort not covered by any of the `aborts_if` clauses"}
      (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#128, $t0) || $1_Option_$is_none'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#128, $t0))));

    // assert Or(And(Not(ValidatorConfig::$exists_config[@128]($t0)), Eq(5, $t7)), And(Option::$is_none[]<ValidatorConfig::Config>(select ValidatorConfig::ValidatorConfig.config(global[@128]<ValidatorConfig::ValidatorConfig>($t0))), Eq(7, $t7))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:248:5+241
    assert {:msg "assert_failed(38,11296,11537): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#128, $t0) && $IsEqual'num'(5, $t7)) || ($1_Option_$is_none'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#128, $t0))) && $IsEqual'num'(7, $t7)));

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:248:5+241
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun ValidatorConfig::get_consensus_pubkey [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:298:5+110
procedure {:timeLimit 40} $1_ValidatorConfig_get_consensus_pubkey$verify(_$t0: $1_ValidatorConfig_Config) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: Vec (int);
    var $t0: $1_ValidatorConfig_Config;
    var $temp_0'$1_ValidatorConfig_Config': $1_ValidatorConfig_Config;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:298:5+110
    assume {:print "$at(38,13123,13233)"} true;
    assume $IsValid'$1_ValidatorConfig_Config'($t0);

    // trace_local[config_ref]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:298:5+1
    assume {:print "$track_local(9,2,0):", $t0} $t0 == $t0;

    // $t1 := get_field<ValidatorConfig::Config>.consensus_pubkey($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:299:9+28
    assume {:print "$at(38,13199,13227)"} true;
    $t1 := $consensus_pubkey#$1_ValidatorConfig_Config($t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:299:9+28
    assume {:print "$track_return(9,2,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:300:5+1
    assume {:print "$at(38,13232,13233)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:300:5+1
    assert {:msg "assert_failed(38,13232,13233): function does not abort under this condition"}
      !false;

    // return $t1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:300:5+1
    $ret0 := $t1;
    return;

}

// fun ValidatorConfig::get_operator [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:277:5+379
procedure {:timeLimit 40} $1_ValidatorConfig_get_operator$verify(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: $1_ValidatorConfig_ValidatorConfig;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: $1_ValidatorConfig_ValidatorConfig;
    var $t11: $1_Option_Option'address';
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: $1_Option_Option'address';
    var $t16: int;
    var $t17: bool;
    var $t0: int;
    var $temp_0'$1_ValidatorConfig_ValidatorConfig': $1_ValidatorConfig_ValidatorConfig;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $1_ValidatorConfig_ValidatorConfig_$memory#127: $Memory $1_ValidatorConfig_ValidatorConfig;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:277:5+379
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,12354,12733)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:277:5+379
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:277:5+379
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:277:5+379
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:287:17+6
    assume {:print "$at(38,12835,12841)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:287:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // @127 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:277:5+1
    assume {:print "$at(38,12354,12355)"} true;
    $1_ValidatorConfig_ValidatorConfig_$memory#127 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:277:5+1
    assume {:print "$track_local(9,4,0):", $t0} $t0 == $t0;

    // $t6 := exists<ValidatorConfig::ValidatorConfig>($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:16+6
    assume {:print "$at(38,12444,12450)"} true;
    $t6 := $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t0);

    // $t7 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:69+17
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := opaque begin: Errors::not_published($t7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:47+40

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:47+40
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 5) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:47+40
    assume $IsEqual'u64'($t8, 5);

    // $t8 := opaque end: Errors::not_published($t7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:47+40

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:9+79
    assume {:print "$track_local(9,4,2):", $t8} $t8 == $t8;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:9+79
    assume {:print "$track_local(9,4,1):", $t6} $t6 == $t6;

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:9+79
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:9+79
L1:

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:9+79
    assume {:print "$at(38,12437,12516)"} true;
    assume {:print "$track_abort(9,4):", $t8} $t8 == $t8;

    // $t9 := move($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:9+79
    $t9 := $t8;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:278:9+79
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:279:52+4
    assume {:print "$at(38,12569,12573)"} true;
L0:

    // $t10 := get_global<ValidatorConfig::ValidatorConfig>($t0) on_abort goto L5 with $t9 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:279:21+13
    if (!$ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t10 := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(38,12538,12551)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(9,4):", $t9} $t9 == $t9;
        goto L5;
    }

    // trace_local[t_ref]($t10) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:279:13+5
    assume {:print "$track_local(9,4,5):", $t10} $t10 == $t10;

    // $t11 := get_field<ValidatorConfig::ValidatorConfig>.operator_account($t10) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:32+23
    assume {:print "$at(38,12607,12630)"} true;
    $t11 := $operator_account#$1_ValidatorConfig_ValidatorConfig($t10);

    // $t12 := opaque begin: Option::is_some<address>($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:16+40

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:16+40
    assume $IsValid'bool'($t12);

    // assume Eq<bool>($t12, Option::$is_some<address>($t11)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:16+40
    assume $IsEqual'bool'($t12, $1_Option_$is_some'address'($t11));

    // $t12 := opaque end: Option::is_some<address>($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:16+40

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:83+17
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:58+43

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:58+43
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:58+43
    assume $IsEqual'u64'($t14, 7);

    // $t14 := opaque end: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:58+43

    // trace_local[tmp#$4]($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:9+93
    assume {:print "$track_local(9,4,4):", $t14} $t14 == $t14;

    // trace_local[tmp#$3]($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:9+93
    assume {:print "$track_local(9,4,3):", $t12} $t12 == $t12;

    // if ($t12) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:9+93
    if ($t12) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:9+93
L3:

    // destroy($t10) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:9+93

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:9+93
    assume {:print "$at(38,12584,12677)"} true;
    assume {:print "$track_abort(9,4):", $t14} $t14 == $t14;

    // $t9 := move($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:9+93
    $t9 := $t14;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:280:9+93
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:26+5
    assume {:print "$at(38,12704,12709)"} true;
L2:

    // $t15 := get_field<ValidatorConfig::ValidatorConfig>.operator_account($t10) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:25+23
    $t15 := $operator_account#$1_ValidatorConfig_ValidatorConfig($t10);

    // $t16 := opaque begin: Option::borrow<address>($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39

    // assume Identical($t17, Option::$is_none<address>($t15)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39
    assume ($t17 == $1_Option_$is_none'address'($t15));

    // if ($t17) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39
    if ($t17) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39
L7:

    // assume And(Option::$is_none<address>($t15), Eq(7, $t9)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39
    assume ($1_Option_$is_none'address'($t15) && $IsEqual'num'(7, $t9));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39
    assume {:print "$at(38,12688,12727)"} true;
    assume {:print "$track_abort(9,4):", $t9} $t9 == $t9;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39
L6:

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39
    assume $IsValid'address'($t16);

    // assume Eq<address>($t16, Option::$borrow<address>($t15)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39
    assume $IsEqual'address'($t16, $1_Option_$borrow'address'($t15));

    // $t16 := opaque end: Option::borrow<address>($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:10+39

    // trace_return[0]($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:281:9+40
    assume {:print "$track_return(9,4,0):", $t16} $t16 == $t16;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:282:5+1
    assume {:print "$at(38,12732,12733)"} true;
L4:

    // assert Not(Not(ValidatorConfig::spec_has_operator[@127]($t0))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:293:9+65
    assume {:print "$at(38,12984,13049)"} true;
    assert {:msg "assert_failed(38,12984,13049): function does not abort under this condition"}
      !!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#127, $t0);

    // assert Not(Not(ValidatorConfig::$exists_config[@127]($t0))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#127, $t0);

    // assert Eq<address>($t16, ValidatorConfig::$get_operator($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:287:9+37
    assume {:print "$at(38,12827,12864)"} true;
    assert {:msg "assert_failed(38,12827,12864): post-condition does not hold"}
      $IsEqual'address'($t16, $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t0));

    // return $t16 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:287:9+37
    $ret0 := $t16;
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:282:5+1
    assume {:print "$at(38,12732,12733)"} true;
L5:

    // assert Or(Not(ValidatorConfig::spec_has_operator[@127]($t0)), Not(ValidatorConfig::$exists_config[@127]($t0))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:284:5+131
    assume {:print "$at(38,12739,12870)"} true;
    assert {:msg "assert_failed(38,12739,12870): abort not covered by any of the `aborts_if` clauses"}
      (!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#127, $t0) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#127, $t0));

    // assert Or(And(Not(ValidatorConfig::spec_has_operator[@127]($t0)), Eq(7, $t9)), And(Not(ValidatorConfig::$exists_config[@127]($t0)), Eq(5, $t9))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:284:5+131
    assert {:msg "assert_failed(38,12739,12870): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#127, $t0) && $IsEqual'num'(7, $t9)) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#127, $t0) && $IsEqual'num'(5, $t9)));

    // abort($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:284:5+131
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// fun ValidatorConfig::get_validator_network_addresses [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:304:5+132
procedure {:timeLimit 40} $1_ValidatorConfig_get_validator_network_addresses$verify(_$t0: $1_ValidatorConfig_Config) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: Vec (int);
    var $t0: $1_ValidatorConfig_Config;
    var $temp_0'$1_ValidatorConfig_Config': $1_ValidatorConfig_Config;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:304:5+132
    assume {:print "$at(38,13312,13444)"} true;
    assume $IsValid'$1_ValidatorConfig_Config'($t0);

    // trace_local[config_ref]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:304:5+1
    assume {:print "$track_local(9,5,0):", $t0} $t0 == $t0;

    // $t1 := get_field<ValidatorConfig::Config>.validator_network_addresses($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:305:9+39
    assume {:print "$at(38,13399,13438)"} true;
    $t1 := $validator_network_addresses#$1_ValidatorConfig_Config($t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:305:9+39
    assume {:print "$track_return(9,5,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:306:5+1
    assume {:print "$at(38,13443,13444)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:306:5+1
    assert {:msg "assert_failed(38,13443,13444): function does not abort under this condition"}
      !false;

    // return $t1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:306:5+1
    $ret0 := $t1;
    return;

}

// fun ValidatorConfig::is_valid [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:229:5+176
procedure {:timeLimit 40} $1_ValidatorConfig_is_valid$verify(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t2: bool;
    var $t3: $1_ValidatorConfig_ValidatorConfig;
    var $t4: int;
    var $t5: $1_Option_Option'$1_ValidatorConfig_Config';
    var $t6: bool;
    var $t7: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:229:5+176
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,10550,10726)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:229:5+176
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:229:5+176
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:229:5+176
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:236:17+6
    assume {:print "$at(38,10812,10818)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:236:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:229:5+1
    assume {:print "$at(38,10550,10551)"} true;
    assume {:print "$track_local(9,6,0):", $t0} $t0 == $t0;

    // $t2 := exists<ValidatorConfig::ValidatorConfig>($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+6
    assume {:print "$at(38,10626,10632)"} true;
    $t2 := $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t0);

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:90+4
L0:

    // $t3 := get_global<ValidatorConfig::ValidatorConfig>($t0) on_abort goto L5 with $t4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:59+13
    if (!$ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t3 := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(38,10676,10689)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(9,6):", $t4} $t4 == $t4;
        goto L5;
    }

    // $t5 := get_field<ValidatorConfig::ValidatorConfig>.config($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:58+44
    $t5 := $config#$1_ValidatorConfig_ValidatorConfig($t3);

    // $t6 := opaque begin: Option::is_some<ValidatorConfig::Config>($t5) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:42+61

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:42+61
    assume $IsValid'bool'($t6);

    // assume Eq<bool>($t6, Option::$is_some<ValidatorConfig::Config>($t5)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:42+61
    assume $IsEqual'bool'($t6, $1_Option_$is_some'$1_ValidatorConfig_Config'($t5));

    // $t6 := opaque end: Option::is_some<ValidatorConfig::Config>($t5) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:42+61

    // $t1 := $t6 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
    $t1 := $t6;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
    assume {:print "$track_local(9,6,1):", $t6} $t6 == $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
L2:

    // $t7 := false at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
    $t7 := false;
    assume $IsValid'bool'($t7);

    // $t1 := $t7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
    $t1 := $t7;

    // trace_local[tmp#$1]($t7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
    assume {:print "$track_local(9,6,1):", $t7} $t7 == $t7;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
L3:

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:230:9+94
    assume {:print "$track_return(9,6,0):", $t1} $t1 == $t1;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:231:5+1
    assume {:print "$at(38,10725,10726)"} true;
L4:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:235:9+16
    assume {:print "$at(38,10779,10795)"} true;
    assert {:msg "assert_failed(38,10779,10795): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t1, ValidatorConfig::$is_valid($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:236:9+33
    assume {:print "$at(38,10804,10837)"} true;
    assert {:msg "assert_failed(38,10804,10837): post-condition does not hold"}
      $IsEqual'bool'($t1, $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, $t0));

    // return $t1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:236:9+33
    $ret0 := $t1;
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:231:5+1
    assume {:print "$at(38,10725,10726)"} true;
L5:

    // assert false at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:233:5+111
    assume {:print "$at(38,10732,10843)"} true;
    assert {:msg "assert_failed(38,10732,10843): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:233:5+111
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun ValidatorConfig::remove_operator [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
procedure {:timeLimit 40} $1_ValidatorConfig_remove_operator$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: $1_Option_Option'address';
    var $t14: $Mutation ($1_ValidatorConfig_ValidatorConfig);
    var $t15: $Mutation ($1_Option_Option'address');
    var $t0: $signer;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_Roles_RoleId_$memory#122: $Memory $1_Roles_RoleId;
    var $1_ValidatorConfig_ValidatorConfig_$memory#123: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_ValidatorConfig_ValidatorConfig_$memory#137: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#138: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t14));
    assume IsEmptyVec(p#$Mutation($t15));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(38,6327,6731)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:154:9+56
    assume {:print "$at(38,6859,6915)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // @122 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+1
    assume {:print "$at(38,6327,6328)"} true;
    $1_Roles_RoleId_$memory#122 := $1_Roles_RoleId_$memory;

    // @123 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+1
    $1_ValidatorConfig_ValidatorConfig_$memory#123 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // trace_local[validator_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+1
    assume {:print "$track_local(9,8,0):", $t0} $t0 == $t0;

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:590:9+44
    assume {:print "$at(28,26179,26223)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_validator($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:145:9+42
    assume {:print "$at(38,6417,6459)"} true;

    // assume Identical($t7, Or(Not(exists<Roles::RoleId>($t6)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t6)), 3))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:145:9+42
    assume ($t7 == (!$ResourceExists($1_Roles_RoleId_$memory, $t6) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t6)), 3)));

    // if ($t7) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:145:9+42
    if ($t7) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:145:9+42
L5:

    // assume Or(And(Not(exists<Roles::RoleId>($t6)), Eq(5, $t8)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t6)), 3), Eq(3, $t8))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:145:9+42
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t6) && $IsEqual'num'(5, $t8)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t6)), 3) && $IsEqual'num'(3, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:145:9+42
    assume {:print "$at(38,6417,6459)"} true;
    assume {:print "$track_abort(9,8):", $t8} $t8 == $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:145:9+42
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:145:9+42
L4:

    // opaque end: Roles::assert_validator($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:145:9+42

    // $t9 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:146:22+37
    assume {:print "$at(38,6482,6519)"} true;

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:146:22+37
    assume $IsValid'address'($t9);

    // assume Eq<address>($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:146:22+37
    assume $IsEqual'address'($t9, $1_Signer_spec_address_of($t0));

    // $t9 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:146:22+37

    // trace_local[sender]($t9) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:146:13+6
    assume {:print "$track_local(9,8,3):", $t9} $t9 == $t9;

    // $t10 := ValidatorConfig::exists_config($t9) on_abort goto L3 with $t8 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:16+21
    assume {:print "$at(38,6572,6593)"} true;
    call $t10 := $1_ValidatorConfig_exists_config($t9);
    if ($abort_flag) {
        assume {:print "$at(38,6572,6593)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(9,8):", $t8} $t8 == $t8;
        goto L3;
    }

    // $t11 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:61+17
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // $t12 := opaque begin: Errors::not_published($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:39+40

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:39+40
    assume $IsValid'u64'($t12);

    // assume Eq<u64>($t12, 5) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:39+40
    assume $IsEqual'u64'($t12, 5);

    // $t12 := opaque end: Errors::not_published($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:39+40

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:9+71
    assume {:print "$track_local(9,8,2):", $t12} $t12 == $t12;

    // trace_local[tmp#$1]($t10) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:9+71
    assume {:print "$track_local(9,8,1):", $t10} $t10 == $t10;

    // if ($t10) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:9+71
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:9+71
L1:

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:9+71
    assume {:print "$at(38,6565,6636)"} true;
    assume {:print "$track_abort(9,8):", $t12} $t12 == $t12;

    // $t8 := move($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:9+71
    $t8 := $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:148:9+71
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:149:73+14
    assume {:print "$at(38,6710,6724)"} true;
L0:

    // $t13 := opaque begin: Option::none<address>() at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:149:73+14

    // assume And(WellFormed($t13), Le(Len<address>(select Option::Option.vec($t13)), 1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:149:73+14
    assume ($IsValid'$1_Option_Option'address''($t13) && (LenVec($vec#$1_Option_Option'address'($t13)) <= 1));

    // assume Eq<Option::Option<address>>($t13, Option::spec_none<address>()) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:149:73+14
    assume $IsEqual'$1_Option_Option'address''($t13, $1_Option_spec_none'address'());

    // $t13 := opaque end: Option::none<address>() at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:149:73+14

    // $t14 := borrow_global<ValidatorConfig::ValidatorConfig>($t9) on_abort goto L3 with $t8 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:149:10+17
    if (!$ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t9)) {
        call $ExecFailureAbort();
    } else {
        $t14 := $Mutation($Global($t9), EmptyVec(), $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t9));
    }
    if ($abort_flag) {
        assume {:print "$at(38,6647,6664)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(9,8):", $t8} $t8 == $t8;
        goto L3;
    }

    // $t15 := borrow_field<ValidatorConfig::ValidatorConfig>.operator_account($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:149:9+61
    $t15 := $ChildMutation($t14, 1, $operator_account#$1_ValidatorConfig_ValidatorConfig($Dereference($t14)));

    // write_ref($t15, $t13) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:149:9+78
    $t15 := $UpdateMutation($t15, $t13);

    // write_back[Reference($t14).operator_account]($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:149:9+78
    $t14 := $UpdateMutation($t14, $Update'$1_ValidatorConfig_ValidatorConfig'_operator_account($Dereference($t14), $Dereference($t15)));

    // assert Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($t14))), 1) at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    // data invariant at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    assume {:print "$at(48,551,575)"} true;
    assert {:msg "assert_failed(48,551,575): data invariant does not hold"}
      (LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($Dereference($t14)))) <= 1);

    // assert Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($t14))), 1) at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    // data invariant at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    assert {:msg "assert_failed(48,551,575): data invariant does not hold"}
      (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($Dereference($t14)))) <= 1);

    // @137 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    // state save for global update invariants
    assume {:print "$at(38,6327,6731)"} true;
    $1_ValidatorConfig_ValidatorConfig_$memory#137 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // @138 := save_mem(DiemConfig::DiemConfig<DiemSystem::DiemSystem>) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:144:5+404
    $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#138 := $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory;

    // write_back[ValidatorConfig::ValidatorConfig@]($t14) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:149:9+78
    assume {:print "$at(38,6646,6724)"} true;
    $1_ValidatorConfig_ValidatorConfig_$memory := $ResourceUpdate($1_ValidatorConfig_ValidatorConfig_$memory, $GlobalLocationAddress($t14),
        $Dereference($t14));

    // assert forall a: TypeDomain<address>() where And(exists[@137]<ValidatorConfig::ValidatorConfig>(a), exists<ValidatorConfig::ValidatorConfig>(a)): Implies(Neq<Option::Option<address>>(select ValidatorConfig::ValidatorConfig.operator_account(global[@137]<ValidatorConfig::ValidatorConfig>(a)), select ValidatorConfig::ValidatorConfig.operator_account(global<ValidatorConfig::ValidatorConfig>(a))), And(Signer::is_txn_signer_addr(a), Roles::spec_has_validator_role_addr(a))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    assume {:print "$at(38,13733,14037)"} true;
    assert {:msg "assert_failed(38,13733,14037): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> (($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory#137, a) && $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, a)))  ==> ((!$IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#137, a)), $operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, a))) ==> ($1_Signer_is_txn_signer_addr(a) && $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, a)))));

    // assert forall validator: TypeDomain<address>() where ValidatorConfig::$is_valid[@137](validator): ValidatorConfig::$is_valid(validator) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:328:9+107
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:328:9+107
    assume {:print "$at(38,14248,14355)"} true;
    assert {:msg "assert_failed(38,14248,14355): global memory invariant does not hold"}
      (forall validator: int :: $IsValid'address'(validator) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory#137, validator))  ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, validator)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,14521,14633)"} true;
    assert {:msg "assert_failed(38,14521,14633): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume {:print "$at(38,14862,14974)"} true;
    assert {:msg "assert_failed(38,14862,14974): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume {:print "$at(38,15308,15415)"} true;
    assert {:msg "assert_failed(38,15308,15415): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert Implies(And(And(DiemConfig::spec_is_published[@138]<DiemSystem::DiemSystem>(), DiemConfig::spec_is_published<DiemSystem::DiemSystem>()), Eq<num>(Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(DiemConfig::$get[@138]<DiemSystem::DiemSystem>())), Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(DiemConfig::$get<DiemSystem::DiemSystem>())))), forall addr: TypeDomain<address>(): Implies(exists i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(DiemConfig::$get<DiemSystem::DiemSystem>()))) where Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(DiemConfig::$get[@138]<DiemSystem::DiemSystem>()), i)), addr): Neq<ValidatorConfig::Config>(select DiemSystem::ValidatorInfo.config(Index(select DiemSystem::DiemSystem.validators(DiemConfig::$get[@138]<DiemSystem::DiemSystem>()), i)), select DiemSystem::ValidatorInfo.config(Index(select DiemSystem::DiemSystem.validators(DiemConfig::$get<DiemSystem::DiemSystem>()), i))), exists a: TypeDomain<address>(): And(Signer::is_txn_signer_addr(a), Eq<address>(ValidatorConfig::$get_operator(addr), a)))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:609:9+779
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:609:9+779
    assume {:print "$at(17,28773,29552)"} true;
    assert {:msg "assert_failed(17,28773,29552): global memory invariant does not hold"}
      ((($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#138) && $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)) && $IsEqual'num'(LenVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#138))), LenVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))))) ==> (forall addr: int :: $IsValid'address'(addr) ==> (((var $range_0 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)))); (exists $i_1: int :: $InRange($range_0, $i_1) && (var i := $i_1;
    ($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#138)), i)), addr))  && (!$IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#138)), i)), $config#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)), i))))))) ==> (exists a: int :: $IsValid'address'(a) && (($1_Signer_is_txn_signer_addr(a) && $IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, addr), a))))))));

    // assert forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume {:print "$at(12,111931,112073)"} true;
    assert {:msg "assert_failed(12,111931,112073): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:150:5+1
    assume {:print "$at(38,6730,6731)"} true;
L2:

    // assert Not(Not(exists[@122]<Roles::RoleId>($t5))) at /home/ying/diem/language/diem-framework/modules/Roles.move:592:9+59
    assume {:print "$at(28,26267,26326)"} true;
    assert {:msg "assert_failed(28,26267,26326): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#122, $t5);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t5)), 3)) at /home/ying/diem/language/diem-framework/modules/Roles.move:593:9+87
    assume {:print "$at(28,26335,26422)"} true;
    assert {:msg "assert_failed(28,26335,26422): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t5)), 3);

    // assert Not(Not(ValidatorConfig::$exists_config[@123]($t4))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#123, $t4);

    // assert Not(ValidatorConfig::spec_has_operator(Signer::spec_address_of($t0))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:157:9+71
    assume {:print "$at(38,7054,7125)"} true;
    assert {:msg "assert_failed(38,7054,7125): post-condition does not hold"}
      !$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $1_Signer_spec_address_of($t0));

    // assert forall addr: TypeDomain<address>() where Neq<address>(addr, $t4): Eq<Option::Option<address>>(select ValidatorConfig::ValidatorConfig.operator_account(global<ValidatorConfig::ValidatorConfig>(addr)), select ValidatorConfig::ValidatorConfig.operator_account(global[@123]<ValidatorConfig::ValidatorConfig>(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:160:9+165
    assume {:print "$at(38,7220,7385)"} true;
    assert {:msg "assert_failed(38,7220,7385): post-condition does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (!$IsEqual'address'(addr, $t4))  ==> ($IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr)), $operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#123, addr)))));

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:160:9+165
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:150:5+1
    assume {:print "$at(38,6730,6731)"} true;
L3:

    // assert Or(Or(Not(exists[@122]<Roles::RoleId>($t5)), Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t5)), 3)), Not(ValidatorConfig::$exists_config[@123]($t4))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:152:5+654
    assume {:print "$at(38,6737,7391)"} true;
    assert {:msg "assert_failed(38,6737,7391): abort not covered by any of the `aborts_if` clauses"}
      ((!$ResourceExists($1_Roles_RoleId_$memory#122, $t5) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t5)), 3)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#123, $t4));

    // assert Or(Or(And(Not(exists[@122]<Roles::RoleId>($t5)), Eq(5, $t8)), And(Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t5)), 3), Eq(3, $t8))), And(Not(ValidatorConfig::$exists_config[@123]($t4)), Eq(5, $t8))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:152:5+654
    assert {:msg "assert_failed(38,6737,7391): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((!$ResourceExists($1_Roles_RoleId_$memory#122, $t5) && $IsEqual'num'(5, $t8)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t5)), 3) && $IsEqual'num'(3, $t8))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#123, $t4) && $IsEqual'num'(5, $t8)));

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:152:5+654
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun ValidatorConfig::set_config [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
procedure {:timeLimit 40} $1_ValidatorConfig_set_config$verify(_$t0: $signer, _$t1: int, _$t2: Vec (int), _$t3: Vec (int), _$t4: Vec (int)) returns ()
{
    // declare local variables
    var $t5: bool;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: $Mutation ($1_ValidatorConfig_ValidatorConfig);
    var $t12: int;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: bool;
    var $t17: int;
    var $t18: int;
    var $t19: bool;
    var $t20: int;
    var $t21: int;
    var $t22: bool;
    var $t23: int;
    var $t24: int;
    var $t25: $Mutation ($1_ValidatorConfig_ValidatorConfig);
    var $t26: $1_ValidatorConfig_Config;
    var $t27: $1_Option_Option'$1_ValidatorConfig_Config';
    var $t28: $Mutation ($1_Option_Option'$1_ValidatorConfig_Config');
    var $t0: $signer;
    var $t1: int;
    var $t2: Vec (int);
    var $t3: Vec (int);
    var $t4: Vec (int);
    var $1_ValidatorConfig_ValidatorConfig_$modifies: [int]bool;
    var $temp_0'$1_ValidatorConfig_ValidatorConfig': $1_ValidatorConfig_ValidatorConfig;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_ValidatorConfig_ValidatorConfig_$memory#132: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_ValidatorConfig_ValidatorConfig_$memory#142: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#143: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;
    assume IsEmptyVec(p#$Mutation($t11));
    assume IsEmptyVec(p#$Mutation($t25));
    assume IsEmptyVec(p#$Mutation($t28));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,7813,8838)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    assume $IsValid'vec'u8''($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    assume $IsValid'vec'u8''($t3);

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    assume $IsValid'vec'u8''($t4);

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

    // assume CanModify<ValidatorConfig::ValidatorConfig>($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:197:9+49
    assume {:print "$at(38,8892,8941)"} true;
    assume $1_ValidatorConfig_ValidatorConfig_$modifies[$t1];

    // @132 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:197:9+49
    $1_ValidatorConfig_ValidatorConfig_$memory#132 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // trace_local[validator_operator_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1
    assume {:print "$at(38,7813,7814)"} true;
    assume {:print "$track_local(9,9,0):", $t0} $t0 == $t0;

    // trace_local[validator_addr]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1
    assume {:print "$track_local(9,9,1):", $t1} $t1 == $t1;

    // trace_local[consensus_pubkey]($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1
    assume {:print "$track_local(9,9,2):", $t2} $t2 == $t2;

    // trace_local[validator_network_addresses]($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1
    assume {:print "$track_local(9,9,3):", $t3} $t3 == $t3;

    // trace_local[fullnode_network_addresses]($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1
    assume {:print "$track_local(9,9,4):", $t4} $t4 == $t4;

    // $t12 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:13+46
    assume {:print "$at(38,8110,8156)"} true;

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:13+46
    assume $IsValid'address'($t12);

    // assume Eq<address>($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:13+46
    assume $IsEqual'address'($t12, $1_Signer_spec_address_of($t0));

    // $t12 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:13+46

    // $t13 := opaque begin: ValidatorConfig::get_operator($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28

    // assume Identical($t14, Or(Not(ValidatorConfig::spec_has_operator($t1)), Not(ValidatorConfig::$exists_config($t1)))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28
    assume ($t14 == (!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1)));

    // if ($t14) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28
    if ($t14) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28
L9:

    // assume Or(And(Not(ValidatorConfig::spec_has_operator($t1)), Eq(7, $t15)), And(Not(ValidatorConfig::$exists_config($t1)), Eq(5, $t15))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28
    assume ((!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && $IsEqual'num'(7, $t15)) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, $t1) && $IsEqual'num'(5, $t15)));

    // trace_abort($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28
    assume {:print "$at(38,8160,8188)"} true;
    assume {:print "$track_abort(9,9):", $t15} $t15 == $t15;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28
    goto L7;

    // label L8 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28
L8:

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28
    assume $IsValid'address'($t13);

    // assume Eq<address>($t13, ValidatorConfig::$get_operator($t1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28
    assume $IsEqual'address'($t13, $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t1));

    // $t13 := opaque end: ValidatorConfig::get_operator($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:63+28

    // $t16 := ==($t12, $t13) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:179:60+2
    $t16 := $IsEqual'address'($t12, $t13);

    // $t17 := 1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:180:38+27
    assume {:print "$at(38,8227,8254)"} true;
    $t17 := 1;
    assume $IsValid'u64'($t17);

    // $t18 := opaque begin: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:180:13+53

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:180:13+53
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:180:13+53
    assume $IsEqual'u64'($t18, 7);

    // $t18 := opaque end: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:180:13+53

    // trace_local[tmp#$6]($t18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:178:9+175
    assume {:print "$at(38,8090,8265)"} true;
    assume {:print "$track_local(9,9,6):", $t18} $t18 == $t18;

    // trace_local[tmp#$5]($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:178:9+175
    assume {:print "$track_local(9,9,5):", $t16} $t16 == $t16;

    // if ($t16) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:178:9+175
    if ($t16) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:178:9+175
L1:

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:178:9+175
    assume {:print "$at(38,8090,8265)"} true;
    assume {:print "$track_abort(9,9):", $t18} $t18 == $t18;

    // $t15 := move($t18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:178:9+175
    $t15 := $t18;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:178:9+175
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:183:48+21
    assume {:print "$at(38,8330,8351)"} true;
L0:

    // $t19 := Signature::ed25519_validate_pubkey($t2) on_abort goto L7 with $t15 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:183:13+57
    call $t19 := $1_Signature_ed25519_validate_pubkey($t2);
    if ($abort_flag) {
        assume {:print "$at(38,8295,8352)"} true;
        $t15 := $abort_code;
        assume {:print "$track_abort(9,9):", $t15} $t15 == $t15;
        goto L7;
    }

    // $t20 := 2 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:184:38+22
    assume {:print "$at(38,8391,8413)"} true;
    $t20 := 2;
    assume $IsValid'u64'($t20);

    // $t21 := opaque begin: Errors::invalid_argument($t20) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:184:13+48

    // assume WellFormed($t21) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:184:13+48
    assume $IsValid'u64'($t21);

    // assume Eq<u64>($t21, 7) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:184:13+48
    assume $IsEqual'u64'($t21, 7);

    // $t21 := opaque end: Errors::invalid_argument($t20) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:184:13+48

    // trace_local[tmp#$8]($t21) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:182:9+149
    assume {:print "$at(38,8275,8424)"} true;
    assume {:print "$track_local(9,9,8):", $t21} $t21 == $t21;

    // trace_local[tmp#$7]($t19) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:182:9+149
    assume {:print "$track_local(9,9,7):", $t19} $t19 == $t19;

    // if ($t19) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:182:9+149
    if ($t19) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:182:9+149
L3:

    // trace_abort($t21) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:182:9+149
    assume {:print "$at(38,8275,8424)"} true;
    assume {:print "$track_abort(9,9):", $t21} $t21 == $t21;

    // $t15 := move($t21) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:182:9+149
    $t15 := $t21;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:182:9+149
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:30+14
    assume {:print "$at(38,8533,8547)"} true;
L2:

    // $t22 := ValidatorConfig::exists_config($t1) on_abort goto L7 with $t15 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:16+29
    call $t22 := $1_ValidatorConfig_exists_config($t1);
    if ($abort_flag) {
        assume {:print "$at(38,8519,8548)"} true;
        $t15 := $abort_code;
        assume {:print "$track_abort(9,9):", $t15} $t15 == $t15;
        goto L7;
    }

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:69+17
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := opaque begin: Errors::not_published($t23) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:47+40

    // assume WellFormed($t24) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:47+40
    assume $IsValid'u64'($t24);

    // assume Eq<u64>($t24, 5) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:47+40
    assume $IsEqual'u64'($t24, 5);

    // $t24 := opaque end: Errors::not_published($t23) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:47+40

    // trace_local[tmp#$10]($t24) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:9+79
    assume {:print "$track_local(9,9,10):", $t24} $t24 == $t24;

    // trace_local[tmp#$9]($t22) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:9+79
    assume {:print "$track_local(9,9,9):", $t22} $t22 == $t22;

    // if ($t22) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:9+79
    if ($t22) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:9+79
L5:

    // trace_abort($t24) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:9+79
    assume {:print "$at(38,8512,8591)"} true;
    assume {:print "$track_abort(9,9):", $t24} $t24 == $t24;

    // $t15 := move($t24) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:9+79
    $t15 := $t24;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:187:9+79
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:188:56+14
    assume {:print "$at(38,8648,8662)"} true;
L4:

    // assert CanModify<ValidatorConfig::ValidatorConfig>($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:188:21+17
    assert {:msg "assert_failed(38,8613,8630): caller does not have permission to modify `ValidatorConfig::ValidatorConfig` at given address"}
      $1_ValidatorConfig_ValidatorConfig_$modifies[$t1];

    // $t25 := borrow_global<ValidatorConfig::ValidatorConfig>($t1) on_abort goto L7 with $t15 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:188:21+17
    if (!$ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, $t1)) {
        call $ExecFailureAbort();
    } else {
        $t25 := $Mutation($Global($t1), EmptyVec(), $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t1));
    }
    if ($abort_flag) {
        assume {:print "$at(38,8613,8630)"} true;
        $t15 := $abort_code;
        assume {:print "$track_abort(9,9):", $t15} $t15 == $t15;
        goto L7;
    }

    // trace_local[t_ref]($t25) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:188:13+5
    $temp_0'$1_ValidatorConfig_ValidatorConfig' := $Dereference($t25);
    assume {:print "$track_local(9,9,11):", $temp_0'$1_ValidatorConfig_ValidatorConfig'} $temp_0'$1_ValidatorConfig_ValidatorConfig' == $temp_0'$1_ValidatorConfig_ValidatorConfig';

    // $t26 := pack ValidatorConfig::Config($t2, $t3, $t4) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:189:37+129
    assume {:print "$at(38,8701,8830)"} true;
    $t26 := $1_ValidatorConfig_Config($t2, $t3, $t4);

    // $t27 := opaque begin: Option::some<ValidatorConfig::Config>($t26) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:189:24+143

    // assume And(WellFormed($t27), Le(Len<ValidatorConfig::Config>(select Option::Option.vec($t27)), 1)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:189:24+143
    assume ($IsValid'$1_Option_Option'$1_ValidatorConfig_Config''($t27) && (LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($t27)) <= 1));

    // assume Eq<Option::Option<ValidatorConfig::Config>>($t27, Option::spec_some<ValidatorConfig::Config>($t26)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:189:24+143
    assume $IsEqual'$1_Option_Option'$1_ValidatorConfig_Config''($t27, $1_Option_spec_some'$1_ValidatorConfig_Config'($t26));

    // $t27 := opaque end: Option::some<ValidatorConfig::Config>($t26) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:189:24+143

    // $t28 := borrow_field<ValidatorConfig::ValidatorConfig>.config($t25) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:189:9+12
    $t28 := $ChildMutation($t25, 0, $config#$1_ValidatorConfig_ValidatorConfig($Dereference($t25)));

    // write_ref($t28, $t27) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:189:9+158
    $t28 := $UpdateMutation($t28, $t27);

    // write_back[Reference($t25).config]($t28) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:189:9+158
    $t25 := $UpdateMutation($t25, $Update'$1_ValidatorConfig_ValidatorConfig'_config($Dereference($t25), $Dereference($t28)));

    // assert Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($t25))), 1) at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    // data invariant at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    assume {:print "$at(48,551,575)"} true;
    assert {:msg "assert_failed(48,551,575): data invariant does not hold"}
      (LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($Dereference($t25)))) <= 1);

    // assert Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($t25))), 1) at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    // data invariant at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    assert {:msg "assert_failed(48,551,575): data invariant does not hold"}
      (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($Dereference($t25)))) <= 1);

    // @142 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    // state save for global update invariants
    assume {:print "$at(38,7813,8838)"} true;
    $1_ValidatorConfig_ValidatorConfig_$memory#142 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // @143 := save_mem(DiemConfig::DiemConfig<DiemSystem::DiemSystem>) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:171:5+1025
    $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#143 := $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory;

    // write_back[ValidatorConfig::ValidatorConfig@]($t25) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:189:9+158
    assume {:print "$at(38,8673,8831)"} true;
    $1_ValidatorConfig_ValidatorConfig_$memory := $ResourceUpdate($1_ValidatorConfig_ValidatorConfig_$memory, $GlobalLocationAddress($t25),
        $Dereference($t25));

    // assert forall a: TypeDomain<address>() where And(exists[@142]<ValidatorConfig::ValidatorConfig>(a), exists<ValidatorConfig::ValidatorConfig>(a)): Implies(Neq<Option::Option<address>>(select ValidatorConfig::ValidatorConfig.operator_account(global[@142]<ValidatorConfig::ValidatorConfig>(a)), select ValidatorConfig::ValidatorConfig.operator_account(global<ValidatorConfig::ValidatorConfig>(a))), And(Signer::is_txn_signer_addr(a), Roles::spec_has_validator_role_addr(a))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    assume {:print "$at(38,13733,14037)"} true;
    assert {:msg "assert_failed(38,13733,14037): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> (($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory#142, a) && $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, a)))  ==> ((!$IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#142, a)), $operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, a))) ==> ($1_Signer_is_txn_signer_addr(a) && $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, a)))));

    // assert forall validator: TypeDomain<address>() where ValidatorConfig::$is_valid[@142](validator): ValidatorConfig::$is_valid(validator) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:328:9+107
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:328:9+107
    assume {:print "$at(38,14248,14355)"} true;
    assert {:msg "assert_failed(38,14248,14355): global memory invariant does not hold"}
      (forall validator: int :: $IsValid'address'(validator) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory#142, validator))  ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, validator)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,14521,14633)"} true;
    assert {:msg "assert_failed(38,14521,14633): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume {:print "$at(38,14862,14974)"} true;
    assert {:msg "assert_failed(38,14862,14974): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume {:print "$at(38,15308,15415)"} true;
    assert {:msg "assert_failed(38,15308,15415): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert Implies(And(And(DiemConfig::spec_is_published[@143]<DiemSystem::DiemSystem>(), DiemConfig::spec_is_published<DiemSystem::DiemSystem>()), Eq<num>(Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(DiemConfig::$get[@143]<DiemSystem::DiemSystem>())), Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(DiemConfig::$get<DiemSystem::DiemSystem>())))), forall addr: TypeDomain<address>(): Implies(exists i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(DiemConfig::$get<DiemSystem::DiemSystem>()))) where Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(DiemConfig::$get[@143]<DiemSystem::DiemSystem>()), i)), addr): Neq<ValidatorConfig::Config>(select DiemSystem::ValidatorInfo.config(Index(select DiemSystem::DiemSystem.validators(DiemConfig::$get[@143]<DiemSystem::DiemSystem>()), i)), select DiemSystem::ValidatorInfo.config(Index(select DiemSystem::DiemSystem.validators(DiemConfig::$get<DiemSystem::DiemSystem>()), i))), exists a: TypeDomain<address>(): And(Signer::is_txn_signer_addr(a), Eq<address>(ValidatorConfig::$get_operator(addr), a)))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:609:9+779
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:609:9+779
    assume {:print "$at(17,28773,29552)"} true;
    assert {:msg "assert_failed(17,28773,29552): global memory invariant does not hold"}
      ((($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#143) && $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)) && $IsEqual'num'(LenVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#143))), LenVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))))) ==> (forall addr: int :: $IsValid'address'(addr) ==> (((var $range_0 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)))); (exists $i_1: int :: $InRange($range_0, $i_1) && (var i := $i_1;
    ($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#143)), i)), addr))  && (!$IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#143)), i)), $config#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)), i))))))) ==> (exists a: int :: $IsValid'address'(a) && (($1_Signer_is_txn_signer_addr(a) && $IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, addr), a))))))));

    // assert forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume {:print "$at(12,111931,112073)"} true;
    assert {:msg "assert_failed(12,111931,112073): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // label L6 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:194:5+1
    assume {:print "$at(38,8837,8838)"} true;
L6:

    // assert Not(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@132]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:213:9+131
    assume {:print "$at(38,9689,9820)"} true;
    assert {:msg "assert_failed(38,9689,9820): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#132, $t1));

    // assert Not(Not(Signature::$ed25519_validate_pubkey[]($t2))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:216:9+94
    assume {:print "$at(38,9888,9982)"} true;
    assert {:msg "assert_failed(38,9888,9982): function does not abort under this condition"}
      !!$1_Signature_$ed25519_validate_pubkey($t2);

    // assert Not(Not(ValidatorConfig::spec_has_operator[@132]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:293:9+65
    assume {:print "$at(38,12984,13049)"} true;
    assert {:msg "assert_failed(38,12984,13049): function does not abort under this condition"}
      !!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#132, $t1);

    // assert Not(Not(ValidatorConfig::$exists_config[@132]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#132, $t1);

    // assert ValidatorConfig::$is_valid($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:199:9+33
    assume {:print "$at(38,8985,9018)"} true;
    assert {:msg "assert_failed(38,8985,9018): post-condition does not hold"}
      $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, $t1);

    // assert Eq<ValidatorConfig::ValidatorConfig>(global<ValidatorConfig::ValidatorConfig>($t1), update ValidatorConfig::ValidatorConfig.config<ValidatorConfig::ValidatorConfig>(global[@132]<ValidatorConfig::ValidatorConfig>($t1), Option::spec_some<ValidatorConfig::Config>(pack ValidatorConfig::Config($t2, $t3, $t4)))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:200:9+496
    assume {:print "$at(38,9027,9523)"} true;
    assert {:msg "assert_failed(38,9027,9523): post-condition does not hold"}
      $IsEqual'$1_ValidatorConfig_ValidatorConfig'($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $t1), $Update'$1_ValidatorConfig_ValidatorConfig'_config($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#132, $t1), $1_Option_spec_some'$1_ValidatorConfig_Config'($1_ValidatorConfig_Config($t2, $t3, $t4))));

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:200:9+496
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:194:5+1
    assume {:print "$at(38,8837,8838)"} true;
L7:

    // assert Or(Or(Or(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@132]($t1)), Not(Signature::$ed25519_validate_pubkey[]($t2))), Not(ValidatorConfig::spec_has_operator[@132]($t1))), Not(ValidatorConfig::$exists_config[@132]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:195:5+686
    assume {:print "$at(38,8843,9529)"} true;
    assert {:msg "assert_failed(38,8843,9529): abort not covered by any of the `aborts_if` clauses"}
      (((!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#132, $t1)) || !$1_Signature_$ed25519_validate_pubkey($t2)) || !$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#132, $t1)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#132, $t1));

    // assert Or(Or(Or(And(Neq<address>(Signer::$address_of[]($t0), ValidatorConfig::$get_operator[@132]($t1)), Eq(7, $t15)), And(Not(Signature::$ed25519_validate_pubkey[]($t2)), Eq(7, $t15))), And(Not(ValidatorConfig::spec_has_operator[@132]($t1)), Eq(7, $t15))), And(Not(ValidatorConfig::$exists_config[@132]($t1)), Eq(5, $t15))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:195:5+686
    assert {:msg "assert_failed(38,8843,9529): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((!$IsEqual'address'($1_Signer_$address_of($t0), $1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory#132, $t1)) && $IsEqual'num'(7, $t15)) || (!$1_Signature_$ed25519_validate_pubkey($t2) && $IsEqual'num'(7, $t15))) || (!$1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory#132, $t1) && $IsEqual'num'(7, $t15))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#132, $t1) && $IsEqual'num'(5, $t15)));

    // abort($t15) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:195:5+686
    $abort_code := $t15;
    $abort_flag := true;
    return;

}

// fun ValidatorConfig::set_operator [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
procedure {:timeLimit 40} $1_ValidatorConfig_set_operator$verify(_$t0: $signer, _$t1: int) returns ()
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
    var $1_Roles_RoleId_$memory#124: $Memory $1_Roles_RoleId;
    var $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
    var $1_ValidatorConfig_ValidatorConfig_$memory#126: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_ValidatorConfig_ValidatorConfig_$memory#139: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#140: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t22));
    assume IsEmptyVec(p#$Mutation($t23));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(38,4014,4719)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    assume $IsValid'address'($t1);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorOperatorConfig::ValidatorOperatorConfig>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0);
    ($IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorConfig::ValidatorConfig>(): And(WellFormed($rsc), And(Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($rsc))), 1), Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, $a_0);
    (($IsValid'$1_ValidatorConfig_ValidatorConfig'($rsc) && ((LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($rsc))) <= 1))))));

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

    // @124 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+1
    assume {:print "$at(38,4014,4015)"} true;
    $1_Roles_RoleId_$memory#124 := $1_Roles_RoleId_$memory;

    // @125 := save_mem(ValidatorOperatorConfig::ValidatorOperatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+1
    $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125 := $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory;

    // @126 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+1
    $1_ValidatorConfig_ValidatorConfig_$memory#126 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // trace_local[validator_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+1
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

    // assert Le(Len<ValidatorConfig::Config>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.config($t22))), 1) at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    // data invariant at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    assume {:print "$at(48,551,575)"} true;
    assert {:msg "assert_failed(48,551,575): data invariant does not hold"}
      (LenVec($vec#$1_Option_Option'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($Dereference($t22)))) <= 1);

    // assert Le(Len<address>(select Option::Option.vec(select ValidatorConfig::ValidatorConfig.operator_account($t22))), 1) at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    // data invariant at /home/ying/diem/language/move-stdlib/modules/Option.move:14:9+24
    assert {:msg "assert_failed(48,551,575): data invariant does not hold"}
      (LenVec($vec#$1_Option_Option'address'($operator_account#$1_ValidatorConfig_ValidatorConfig($Dereference($t22)))) <= 1);

    // @139 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    // state save for global update invariants
    assume {:print "$at(38,4014,4719)"} true;
    $1_ValidatorConfig_ValidatorConfig_$memory#139 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // @140 := save_mem(DiemConfig::DiemConfig<DiemSystem::DiemSystem>) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:100:5+705
    $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#140 := $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory;

    // write_back[ValidatorConfig::ValidatorConfig@]($t22) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:110:9+91
    assume {:print "$at(38,4621,4712)"} true;
    $1_ValidatorConfig_ValidatorConfig_$memory := $ResourceUpdate($1_ValidatorConfig_ValidatorConfig_$memory, $GlobalLocationAddress($t22),
        $Dereference($t22));

    // assert forall a: TypeDomain<address>() where And(exists[@139]<ValidatorConfig::ValidatorConfig>(a), exists<ValidatorConfig::ValidatorConfig>(a)): Implies(Neq<Option::Option<address>>(select ValidatorConfig::ValidatorConfig.operator_account(global[@139]<ValidatorConfig::ValidatorConfig>(a)), select ValidatorConfig::ValidatorConfig.operator_account(global<ValidatorConfig::ValidatorConfig>(a))), And(Signer::is_txn_signer_addr(a), Roles::spec_has_validator_role_addr(a))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    assume {:print "$at(38,13733,14037)"} true;
    assert {:msg "assert_failed(38,13733,14037): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> (($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory#139, a) && $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, a)))  ==> ((!$IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#139, a)), $operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, a))) ==> ($1_Signer_is_txn_signer_addr(a) && $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, a)))));

    // assert forall validator: TypeDomain<address>() where ValidatorConfig::$is_valid[@139](validator): ValidatorConfig::$is_valid(validator) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:328:9+107
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:328:9+107
    assume {:print "$at(38,14248,14355)"} true;
    assert {:msg "assert_failed(38,14248,14355): global memory invariant does not hold"}
      (forall validator: int :: $IsValid'address'(validator) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory#139, validator))  ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, validator)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,14521,14633)"} true;
    assert {:msg "assert_failed(38,14521,14633): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume {:print "$at(38,14862,14974)"} true;
    assert {:msg "assert_failed(38,14862,14974): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume {:print "$at(38,15308,15415)"} true;
    assert {:msg "assert_failed(38,15308,15415): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert Implies(And(And(DiemConfig::spec_is_published[@140]<DiemSystem::DiemSystem>(), DiemConfig::spec_is_published<DiemSystem::DiemSystem>()), Eq<num>(Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(DiemConfig::$get[@140]<DiemSystem::DiemSystem>())), Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(DiemConfig::$get<DiemSystem::DiemSystem>())))), forall addr: TypeDomain<address>(): Implies(exists i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(DiemConfig::$get<DiemSystem::DiemSystem>()))) where Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(DiemConfig::$get[@140]<DiemSystem::DiemSystem>()), i)), addr): Neq<ValidatorConfig::Config>(select DiemSystem::ValidatorInfo.config(Index(select DiemSystem::DiemSystem.validators(DiemConfig::$get[@140]<DiemSystem::DiemSystem>()), i)), select DiemSystem::ValidatorInfo.config(Index(select DiemSystem::DiemSystem.validators(DiemConfig::$get<DiemSystem::DiemSystem>()), i))), exists a: TypeDomain<address>(): And(Signer::is_txn_signer_addr(a), Eq<address>(ValidatorConfig::$get_operator(addr), a)))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:609:9+779
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:609:9+779
    assume {:print "$at(17,28773,29552)"} true;
    assert {:msg "assert_failed(17,28773,29552): global memory invariant does not hold"}
      ((($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#140) && $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)) && $IsEqual'num'(LenVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#140))), LenVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))))) ==> (forall addr: int :: $IsValid'address'(addr) ==> (((var $range_0 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)))); (exists $i_1: int :: $InRange($range_0, $i_1) && (var i := $i_1;
    ($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#140)), i)), addr))  && (!$IsEqual'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory#140)), i)), $config#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory)), i))))))) ==> (exists a: int :: $IsValid'address'(a) && (($1_Signer_is_txn_signer_addr(a) && $IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, addr), a))))))));

    // assert forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume {:print "$at(12,111931,112073)"} true;
    assert {:msg "assert_failed(12,111931,112073): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:111:5+1
    assume {:print "$at(38,4718,4719)"} true;
L4:

    // assert Not(Not(exists[@124]<Roles::RoleId>($t7))) at /home/ying/diem/language/diem-framework/modules/Roles.move:592:9+59
    assume {:print "$at(28,26267,26326)"} true;
    assert {:msg "assert_failed(28,26267,26326): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#124, $t7);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@124]<Roles::RoleId>($t7)), 3)) at /home/ying/diem/language/diem-framework/modules/Roles.move:593:9+87
    assume {:print "$at(28,26335,26422)"} true;
    assert {:msg "assert_failed(28,26335,26422): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#124, $t7)), 3);

    // assert Not(Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:125:9+123
    assume {:print "$at(38,5324,5447)"} true;
    assert {:msg "assert_failed(38,5324,5447): function does not abort under this condition"}
      !!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t1);

    // assert Not(Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t1))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:128:9+108
    assume {:print "$at(38,5521,5629)"} true;
    assert {:msg "assert_failed(38,5521,5629): function does not abort under this condition"}
      !!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t1);

    // assert Not(Not(exists[@124]<Roles::RoleId>($t9))) at /home/ying/diem/language/diem-framework/modules/Roles.move:592:9+59
    assume {:print "$at(28,26267,26326)"} true;
    assert {:msg "assert_failed(28,26267,26326): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#124, $t9);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@124]<Roles::RoleId>($t9)), 3)) at /home/ying/diem/language/diem-framework/modules/Roles.move:593:9+87
    assume {:print "$at(28,26335,26422)"} true;
    assert {:msg "assert_failed(28,26335,26422): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#124, $t9)), 3);

    // assert Not(Not(ValidatorConfig::$exists_config[@126]($t8))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:91:9+58
    assume {:print "$at(38,3565,3623)"} true;
    assert {:msg "assert_failed(38,3565,3623): function does not abort under this condition"}
      !!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#126, $t8);

    // assert ValidatorConfig::spec_has_operator($t10) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:135:9+42
    assume {:print "$at(38,5822,5864)"} true;
    assert {:msg "assert_failed(38,5822,5864): post-condition does not hold"}
      $1_ValidatorConfig_spec_has_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t10);

    // assert Eq<address>(ValidatorConfig::$get_operator($t10), $t1) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:136:9+54
    assume {:print "$at(38,5873,5927)"} true;
    assert {:msg "assert_failed(38,5873,5927): post-condition does not hold"}
      $IsEqual'address'($1_ValidatorConfig_$get_operator($1_ValidatorConfig_ValidatorConfig_$memory, $t10), $t1);

    // assert forall addr: TypeDomain<address>() where Neq<address>(addr, $t10): Eq<Option::Option<address>>(select ValidatorConfig::ValidatorConfig.operator_account(global<ValidatorConfig::ValidatorConfig>(addr)), select ValidatorConfig::ValidatorConfig.operator_account(global[@126]<ValidatorConfig::ValidatorConfig>(addr))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:138:9+173
    assume {:print "$at(38,6021,6194)"} true;
    assert {:msg "assert_failed(38,6021,6194): post-condition does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (!$IsEqual'address'(addr, $t10))  ==> ($IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr)), $operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#126, addr)))));

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:138:9+173
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:111:5+1
    assume {:print "$at(38,4718,4719)"} true;
L5:

    // assert Or(Or(Or(Or(Or(Or(Not(exists[@124]<Roles::RoleId>($t7)), Neq<u64>(select Roles::RoleId.role_id(global[@124]<Roles::RoleId>($t7)), 3)), Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t1))), Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t1))), Not(exists[@124]<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global[@124]<Roles::RoleId>($t9)), 3)), Not(ValidatorConfig::$exists_config[@126]($t8))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:112:5+262
    assume {:print "$at(38,4724,4986)"} true;
    assert {:msg "assert_failed(38,4724,4986): abort not covered by any of the `aborts_if` clauses"}
      ((((((!$ResourceExists($1_Roles_RoleId_$memory#124, $t7) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#124, $t7)), 3)) || !$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t1)) || !$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t1)) || !$ResourceExists($1_Roles_RoleId_$memory#124, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#124, $t9)), 3)) || !$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#126, $t8));

    // assert Or(Or(Or(Or(Or(Or(And(Not(exists[@124]<Roles::RoleId>($t7)), Eq(5, $t13)), And(Neq<u64>(select Roles::RoleId.role_id(global[@124]<Roles::RoleId>($t7)), 3), Eq(3, $t13))), And(Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t1)), Eq(7, $t13))), And(Not(ValidatorOperatorConfig::$has_validator_operator_config[@125]($t1)), Eq(5, $t13))), And(Not(exists[@124]<Roles::RoleId>($t9)), Eq(5, $t13))), And(Neq<u64>(select Roles::RoleId.role_id(global[@124]<Roles::RoleId>($t9)), 3), Eq(3, $t13))), And(Not(ValidatorConfig::$exists_config[@126]($t8)), Eq(5, $t13))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:112:5+262
    assert {:msg "assert_failed(38,4724,4986): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((!$ResourceExists($1_Roles_RoleId_$memory#124, $t7) && $IsEqual'num'(5, $t13)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#124, $t7)), 3) && $IsEqual'num'(3, $t13))) || (!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t1) && $IsEqual'num'(7, $t13))) || (!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#125, $t1) && $IsEqual'num'(5, $t13))) || (!$ResourceExists($1_Roles_RoleId_$memory#124, $t9) && $IsEqual'num'(5, $t13))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#124, $t9)), 3) && $IsEqual'num'(3, $t13))) || (!$1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory#126, $t8) && $IsEqual'num'(5, $t13)));

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:112:5+262
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

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

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:95:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): $1_DiemSystem_DiemSystem {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816)
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

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:647:10+105
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
    $IsEqual'u8'($scheme#$1_DiemSystem_DiemSystem(s1), $scheme#$1_DiemSystem_DiemSystem(s2))
    && $IsEqual'vec'$1_DiemSystem_ValidatorInfo''($validators#$1_DiemSystem_DiemSystem(s1), $validators#$1_DiemSystem_DiemSystem(s2))}

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

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:121:10+85
function {:inline} $1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential, addr: int): bool {
    $ResourceExists($1_DualAttestation_Credential_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:550:9+104
function {:inline} $1_DualAttestation_spec_get_cur_microdiem_limit($1_DualAttestation_Limit_$memory: $Memory $1_DualAttestation_Limit): int {
    $micro_xdx_limit#$1_DualAttestation_Limit($ResourceValue($1_DualAttestation_Limit_$memory, 173345816))
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

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1641:5+95
function {:inline} $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, check_addr: int): bool {
    $ResourceExists($1_DiemAccount_DiemAccount_$memory, check_addr)
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
