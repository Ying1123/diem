
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
// Native Vector implementation for element type `$1_Diem_PreburnWithMetadata'#0'`

// Not inlined. It appears faster this way.
function $IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''(v1: Vec ($1_Diem_PreburnWithMetadata'#0'), v2: Vec ($1_Diem_PreburnWithMetadata'#0')): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'$1_Diem_PreburnWithMetadata'#0''(ReadVec(v1, i), ReadVec(v2, i)))
}

// Not inlined.
function $IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''(v: Vec ($1_Diem_PreburnWithMetadata'#0')): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_Diem_PreburnWithMetadata'#0''(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0'), e: $1_Diem_PreburnWithMetadata'#0'): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_Diem_PreburnWithMetadata'#0''(ReadVec(v, i), e))
}

function $IndexOfVec'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0'), e: $1_Diem_PreburnWithMetadata'#0'): int;
axiom (forall v: Vec ($1_Diem_PreburnWithMetadata'#0'), e: $1_Diem_PreburnWithMetadata'#0':: {$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''(v, e)}
    (var i := $IndexOfVec'$1_Diem_PreburnWithMetadata'#0''(v, e);
     if (!$ContainsVec'$1_Diem_PreburnWithMetadata'#0''(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_Diem_PreburnWithMetadata'#0''(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_Diem_PreburnWithMetadata'#0''(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0')): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_Diem_PreburnWithMetadata'#0''(): Vec ($1_Diem_PreburnWithMetadata'#0') {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_Diem_PreburnWithMetadata'#0''() returns (v: Vec ($1_Diem_PreburnWithMetadata'#0')) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_Diem_PreburnWithMetadata'#0''(): Vec ($1_Diem_PreburnWithMetadata'#0') {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0')) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0')), val: $1_Diem_PreburnWithMetadata'#0') returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0'))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0'), val: $1_Diem_PreburnWithMetadata'#0'): Vec ($1_Diem_PreburnWithMetadata'#0') {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_Diem_PreburnWithMetadata'#0''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0'))) returns (e: $1_Diem_PreburnWithMetadata'#0', m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0'))) {
    var v: Vec ($1_Diem_PreburnWithMetadata'#0');
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

procedure {:inline 1} $1_Vector_append'$1_Diem_PreburnWithMetadata'#0''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0')), other: Vec ($1_Diem_PreburnWithMetadata'#0')) returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0'))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_Diem_PreburnWithMetadata'#0''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0'))) returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0'))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0')) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0')): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0'), i: int) returns (dst: $1_Diem_PreburnWithMetadata'#0') {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0'), i: int): $1_Diem_PreburnWithMetadata'#0' {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_Diem_PreburnWithMetadata'#0''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0')), index: int)
returns (dst: $Mutation ($1_Diem_PreburnWithMetadata'#0'), m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0')))
{
    var v: Vec ($1_Diem_PreburnWithMetadata'#0');
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0'), i: int): $1_Diem_PreburnWithMetadata'#0' {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0')) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_Diem_PreburnWithMetadata'#0''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0')), i: int, j: int) returns (m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0')))
{
    var v: Vec ($1_Diem_PreburnWithMetadata'#0');
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0'), i: int, j: int): Vec ($1_Diem_PreburnWithMetadata'#0') {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_Diem_PreburnWithMetadata'#0''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0')), i: int) returns (e: $1_Diem_PreburnWithMetadata'#0', m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0')))
{
    var v: Vec ($1_Diem_PreburnWithMetadata'#0');

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_Diem_PreburnWithMetadata'#0''(m: $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0')), i: int) returns (e: $1_Diem_PreburnWithMetadata'#0', m': $Mutation (Vec ($1_Diem_PreburnWithMetadata'#0')))
{
    var len: int;
    var v: Vec ($1_Diem_PreburnWithMetadata'#0');

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0'), e: $1_Diem_PreburnWithMetadata'#0') returns (res: bool)  {
    res := $ContainsVec'$1_Diem_PreburnWithMetadata'#0''(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_Diem_PreburnWithMetadata'#0''(v: Vec ($1_Diem_PreburnWithMetadata'#0'), e: $1_Diem_PreburnWithMetadata'#0') returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_Diem_PreburnWithMetadata'#0''(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_Diem_PreburnWithMetadata'$1_XDX_XDX'`

// Not inlined. It appears faster this way.
function $IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''(v1: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX'), v2: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''(ReadVec(v1, i), ReadVec(v2, i)))
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

// Not inlined. It appears faster this way.
function $IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''(v1: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS'), v2: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')): bool {
    LenVec(v1) == LenVec(v2) &&
    (forall i: int:: InRangeVec(v1, i) ==> $IsEqual'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''(ReadVec(v1, i), ReadVec(v2, i)))
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

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_ValidatorConfig_Config'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_ValidatorConfig_Config'(t: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    !$1_Vector_$is_empty'$1_ValidatorConfig_Config'($vec#$1_Option_Option'$1_ValidatorConfig_Config'(t))
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

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:229:5+176
function {:inline} $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): bool {
    ($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, addr) && $1_Option_$is_some'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr))))
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

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1408:5+184
function {:inline} $1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    ($1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && !$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'($ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1408:5+184
function {:inline} $1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    ($1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && !$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'($ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1408:5+184
function {:inline} $1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0'): bool {
    ($1_Diem_$is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && !$is_synthetic#$1_Diem_CurrencyInfo'#0'($ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'#0'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1416:5+235
function {:inline} $1_Diem_$is_synthetic_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    (var addr := 173345816; ($ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, addr) && $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'($ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1416:5+235
function {:inline} $1_Diem_$is_synthetic_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    (var addr := 173345816; ($ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, addr) && $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'($ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1416:5+235
function {:inline} $1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0'): bool {
    (var addr := 173345816; ($ResourceExists($1_Diem_CurrencyInfo'#0'_$memory, addr) && $is_synthetic#$1_Diem_CurrencyInfo'#0'($ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1454:10+107
function {:inline} $1_Diem_spec_currency_code'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): Vec (int) {
    $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1454:10+107
function {:inline} $1_Diem_spec_currency_code'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): Vec (int) {
    $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1454:10+107
function {:inline} $1_Diem_spec_currency_code'#0'($1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0'): Vec (int) {
    $currency_code#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1826:9+108
function {:inline} $1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1826:9+108
function {:inline} $1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1826:9+108
function {:inline} $1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'#0'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1831:9+128
function {:inline} $1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1831:9+128
function {:inline} $1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1831:9+128
function {:inline} $1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0'): $1_Diem_CurrencyInfo'#0' {
    $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1852:9+122
function {:inline} $1_Diem_spec_has_mint_capability'$1_XUS_XUS'($1_Diem_MintCapability'$1_XUS_XUS'_$memory: $Memory $1_Diem_MintCapability'$1_XUS_XUS', addr: int): bool {
    $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1852:9+122
function {:inline} $1_Diem_spec_has_mint_capability'$1_XDX_XDX'($1_Diem_MintCapability'$1_XDX_XDX'_$memory: $Memory $1_Diem_MintCapability'$1_XDX_XDX', addr: int): bool {
    $ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1852:9+122
function {:inline} $1_Diem_spec_has_mint_capability'#0'($1_Diem_MintCapability'#0'_$memory: $Memory $1_Diem_MintCapability'#0', addr: int): bool {
    $ResourceExists($1_Diem_MintCapability'#0'_$memory, addr)
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

// struct Diem::Diem<#0> at /home/ying/diem/language/diem-framework/modules/Diem.move:24:5+134
type {:datatype} $1_Diem_Diem'#0';
function {:constructor} $1_Diem_Diem'#0'($value: int): $1_Diem_Diem'#0';
function {:inline} $Update'$1_Diem_Diem'#0''_value(s: $1_Diem_Diem'#0', x: int): $1_Diem_Diem'#0' {
    $1_Diem_Diem'#0'(x)
}
function $IsValid'$1_Diem_Diem'#0''(s: $1_Diem_Diem'#0'): bool {
    $IsValid'u64'($value#$1_Diem_Diem'#0'(s))
}
function {:inline} $IsEqual'$1_Diem_Diem'#0''(s1: $1_Diem_Diem'#0', s2: $1_Diem_Diem'#0'): bool {
    s1 == s2
}

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

// struct Diem::CurrencyInfo<#0> at /home/ying/diem/language/diem-framework/modules/Diem.move:111:5+2308
type {:datatype} $1_Diem_CurrencyInfo'#0';
function {:constructor} $1_Diem_CurrencyInfo'#0'($total_value: int, $preburn_value: int, $to_xdx_exchange_rate: $1_FixedPoint32_FixedPoint32, $is_synthetic: bool, $scaling_factor: int, $fractional_part: int, $currency_code: Vec (int), $can_mint: bool, $mint_events: $1_Event_EventHandle'$1_Diem_MintEvent', $burn_events: $1_Event_EventHandle'$1_Diem_BurnEvent', $preburn_events: $1_Event_EventHandle'$1_Diem_PreburnEvent', $cancel_burn_events: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', $exchange_rate_update_events: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'#0';
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_total_value(s: $1_Diem_CurrencyInfo'#0', x: int): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'(x, $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_preburn_value(s: $1_Diem_CurrencyInfo'#0', x: int): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), x, $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_to_xdx_exchange_rate(s: $1_Diem_CurrencyInfo'#0', x: $1_FixedPoint32_FixedPoint32): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), x, $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_is_synthetic(s: $1_Diem_CurrencyInfo'#0', x: bool): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), x, $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_scaling_factor(s: $1_Diem_CurrencyInfo'#0', x: int): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), x, $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_fractional_part(s: $1_Diem_CurrencyInfo'#0', x: int): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), x, $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_currency_code(s: $1_Diem_CurrencyInfo'#0', x: Vec (int)): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), x, $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_can_mint(s: $1_Diem_CurrencyInfo'#0', x: bool): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), x, $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_mint_events(s: $1_Diem_CurrencyInfo'#0', x: $1_Event_EventHandle'$1_Diem_MintEvent'): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), x, $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_burn_events(s: $1_Diem_CurrencyInfo'#0', x: $1_Event_EventHandle'$1_Diem_BurnEvent'): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), x, $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_preburn_events(s: $1_Diem_CurrencyInfo'#0', x: $1_Event_EventHandle'$1_Diem_PreburnEvent'): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), x, $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_cancel_burn_events(s: $1_Diem_CurrencyInfo'#0', x: $1_Event_EventHandle'$1_Diem_CancelBurnEvent'): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), x, $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_exchange_rate_update_events(s: $1_Diem_CurrencyInfo'#0', x: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), x)
}
function $IsValid'$1_Diem_CurrencyInfo'#0''(s: $1_Diem_CurrencyInfo'#0'): bool {
    $IsValid'u128'($total_value#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'u64'($preburn_value#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_FixedPoint32_FixedPoint32'($to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'bool'($is_synthetic#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'u64'($scaling_factor#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'u64'($fractional_part#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'bool'($can_mint#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''($mint_events#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''($burn_events#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''($preburn_events#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''($cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''($exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $IsEqual'$1_Diem_CurrencyInfo'#0''(s1: $1_Diem_CurrencyInfo'#0', s2: $1_Diem_CurrencyInfo'#0'): bool {
    $IsEqual'u128'($total_value#$1_Diem_CurrencyInfo'#0'(s1), $total_value#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'u64'($preburn_value#$1_Diem_CurrencyInfo'#0'(s1), $preburn_value#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'$1_FixedPoint32_FixedPoint32'($to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s1), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'bool'($is_synthetic#$1_Diem_CurrencyInfo'#0'(s1), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'u64'($scaling_factor#$1_Diem_CurrencyInfo'#0'(s1), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'u64'($fractional_part#$1_Diem_CurrencyInfo'#0'(s1), $fractional_part#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'vec'u8''($currency_code#$1_Diem_CurrencyInfo'#0'(s1), $currency_code#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'bool'($can_mint#$1_Diem_CurrencyInfo'#0'(s1), $can_mint#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_MintEvent''($mint_events#$1_Diem_CurrencyInfo'#0'(s1), $mint_events#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_BurnEvent''($burn_events#$1_Diem_CurrencyInfo'#0'(s1), $burn_events#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_PreburnEvent''($preburn_events#$1_Diem_CurrencyInfo'#0'(s1), $preburn_events#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''($cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s1), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s2))
    && $IsEqual'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''($exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s1), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s2))}
var $1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0';

// struct Diem::MintCapability<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:33:5+58
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

// struct Diem::MintCapability<#0> at /home/ying/diem/language/diem-framework/modules/Diem.move:33:5+58
type {:datatype} $1_Diem_MintCapability'#0';
function {:constructor} $1_Diem_MintCapability'#0'($dummy_field: bool): $1_Diem_MintCapability'#0';
function {:inline} $Update'$1_Diem_MintCapability'#0''_dummy_field(s: $1_Diem_MintCapability'#0', x: bool): $1_Diem_MintCapability'#0' {
    $1_Diem_MintCapability'#0'(x)
}
function $IsValid'$1_Diem_MintCapability'#0''(s: $1_Diem_MintCapability'#0'): bool {
    $IsValid'bool'($dummy_field#$1_Diem_MintCapability'#0'(s))
}
function {:inline} $IsEqual'$1_Diem_MintCapability'#0''(s1: $1_Diem_MintCapability'#0', s2: $1_Diem_MintCapability'#0'): bool {
    s1 == s2
}
var $1_Diem_MintCapability'#0'_$memory: $Memory $1_Diem_MintCapability'#0';

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

// struct Diem::Preburn<#0> at /home/ying/diem/language/diem-framework/modules/Diem.move:170:5+240
type {:datatype} $1_Diem_Preburn'#0';
function {:constructor} $1_Diem_Preburn'#0'($to_burn: $1_Diem_Diem'#0'): $1_Diem_Preburn'#0';
function {:inline} $Update'$1_Diem_Preburn'#0''_to_burn(s: $1_Diem_Preburn'#0', x: $1_Diem_Diem'#0'): $1_Diem_Preburn'#0' {
    $1_Diem_Preburn'#0'(x)
}
function $IsValid'$1_Diem_Preburn'#0''(s: $1_Diem_Preburn'#0'): bool {
    $IsValid'$1_Diem_Diem'#0''($to_burn#$1_Diem_Preburn'#0'(s))
}
function {:inline} $IsEqual'$1_Diem_Preburn'#0''(s1: $1_Diem_Preburn'#0', s2: $1_Diem_Preburn'#0'): bool {
    s1 == s2
}
var $1_Diem_Preburn'#0'_$memory: $Memory $1_Diem_Preburn'#0';

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

// struct Diem::PreburnQueue<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:194:5+152
type {:datatype} $1_Diem_PreburnQueue'$1_XUS_XUS';
function {:constructor} $1_Diem_PreburnQueue'$1_XUS_XUS'($preburns: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')): $1_Diem_PreburnQueue'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_PreburnQueue'$1_XUS_XUS''_preburns(s: $1_Diem_PreburnQueue'$1_XUS_XUS', x: Vec ($1_Diem_PreburnWithMetadata'$1_XUS_XUS')): $1_Diem_PreburnQueue'$1_XUS_XUS' {
    $1_Diem_PreburnQueue'$1_XUS_XUS'(x)
}
function $IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''(s: $1_Diem_PreburnQueue'$1_XUS_XUS'): bool {
    $IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''($preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_PreburnQueue'$1_XUS_XUS''(s1: $1_Diem_PreburnQueue'$1_XUS_XUS', s2: $1_Diem_PreburnQueue'$1_XUS_XUS'): bool {
    $IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''($preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'(s1), $preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'(s2))}
var $1_Diem_PreburnQueue'$1_XUS_XUS'_$memory: $Memory $1_Diem_PreburnQueue'$1_XUS_XUS';

// struct Diem::PreburnQueue<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:194:5+152
type {:datatype} $1_Diem_PreburnQueue'$1_XDX_XDX';
function {:constructor} $1_Diem_PreburnQueue'$1_XDX_XDX'($preburns: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')): $1_Diem_PreburnQueue'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_PreburnQueue'$1_XDX_XDX''_preburns(s: $1_Diem_PreburnQueue'$1_XDX_XDX', x: Vec ($1_Diem_PreburnWithMetadata'$1_XDX_XDX')): $1_Diem_PreburnQueue'$1_XDX_XDX' {
    $1_Diem_PreburnQueue'$1_XDX_XDX'(x)
}
function $IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''(s: $1_Diem_PreburnQueue'$1_XDX_XDX'): bool {
    $IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''($preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_PreburnQueue'$1_XDX_XDX''(s1: $1_Diem_PreburnQueue'$1_XDX_XDX', s2: $1_Diem_PreburnQueue'$1_XDX_XDX'): bool {
    $IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''($preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'(s1), $preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'(s2))}
var $1_Diem_PreburnQueue'$1_XDX_XDX'_$memory: $Memory $1_Diem_PreburnQueue'$1_XDX_XDX';

// struct Diem::PreburnQueue<#0> at /home/ying/diem/language/diem-framework/modules/Diem.move:194:5+152
type {:datatype} $1_Diem_PreburnQueue'#0';
function {:constructor} $1_Diem_PreburnQueue'#0'($preburns: Vec ($1_Diem_PreburnWithMetadata'#0')): $1_Diem_PreburnQueue'#0';
function {:inline} $Update'$1_Diem_PreburnQueue'#0''_preburns(s: $1_Diem_PreburnQueue'#0', x: Vec ($1_Diem_PreburnWithMetadata'#0')): $1_Diem_PreburnQueue'#0' {
    $1_Diem_PreburnQueue'#0'(x)
}
function $IsValid'$1_Diem_PreburnQueue'#0''(s: $1_Diem_PreburnQueue'#0'): bool {
    $IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''($preburns#$1_Diem_PreburnQueue'#0'(s))
}
function {:inline} $IsEqual'$1_Diem_PreburnQueue'#0''(s1: $1_Diem_PreburnQueue'#0', s2: $1_Diem_PreburnQueue'#0'): bool {
    $IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''($preburns#$1_Diem_PreburnQueue'#0'(s1), $preburns#$1_Diem_PreburnQueue'#0'(s2))}
var $1_Diem_PreburnQueue'#0'_$memory: $Memory $1_Diem_PreburnQueue'#0';

// struct Diem::PreburnWithMetadata<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:178:5+128
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
    $IsEqual'$1_Diem_Preburn'$1_XUS_XUS''($preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'(s1), $preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'(s2))
    && $IsEqual'vec'u8''($metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'(s1), $metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'(s2))}

// struct Diem::PreburnWithMetadata<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:178:5+128
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
    $IsEqual'$1_Diem_Preburn'$1_XDX_XDX''($preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'(s1), $preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'(s2))
    && $IsEqual'vec'u8''($metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'(s1), $metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'(s2))}

// struct Diem::PreburnWithMetadata<#0> at /home/ying/diem/language/diem-framework/modules/Diem.move:178:5+128
type {:datatype} $1_Diem_PreburnWithMetadata'#0';
function {:constructor} $1_Diem_PreburnWithMetadata'#0'($preburn: $1_Diem_Preburn'#0', $metadata: Vec (int)): $1_Diem_PreburnWithMetadata'#0';
function {:inline} $Update'$1_Diem_PreburnWithMetadata'#0''_preburn(s: $1_Diem_PreburnWithMetadata'#0', x: $1_Diem_Preburn'#0'): $1_Diem_PreburnWithMetadata'#0' {
    $1_Diem_PreburnWithMetadata'#0'(x, $metadata#$1_Diem_PreburnWithMetadata'#0'(s))
}
function {:inline} $Update'$1_Diem_PreburnWithMetadata'#0''_metadata(s: $1_Diem_PreburnWithMetadata'#0', x: Vec (int)): $1_Diem_PreburnWithMetadata'#0' {
    $1_Diem_PreburnWithMetadata'#0'($preburn#$1_Diem_PreburnWithMetadata'#0'(s), x)
}
function $IsValid'$1_Diem_PreburnWithMetadata'#0''(s: $1_Diem_PreburnWithMetadata'#0'): bool {
    $IsValid'$1_Diem_Preburn'#0''($preburn#$1_Diem_PreburnWithMetadata'#0'(s))
      && $IsValid'vec'u8''($metadata#$1_Diem_PreburnWithMetadata'#0'(s))
}
function {:inline} $IsEqual'$1_Diem_PreburnWithMetadata'#0''(s1: $1_Diem_PreburnWithMetadata'#0', s2: $1_Diem_PreburnWithMetadata'#0'): bool {
    $IsEqual'$1_Diem_Preburn'#0''($preburn#$1_Diem_PreburnWithMetadata'#0'(s1), $preburn#$1_Diem_PreburnWithMetadata'#0'(s2))
    && $IsEqual'vec'u8''($metadata#$1_Diem_PreburnWithMetadata'#0'(s1), $metadata#$1_Diem_PreburnWithMetadata'#0'(s2))}

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

// fun Diem::mint<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:296:5+389
procedure {:inline 1} $1_Diem_mint'$1_XUS_XUS'(_$t0: $signer, _$t1: int) returns ($ret0: $1_Diem_Diem'$1_XUS_XUS')
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $1_Diem_MintCapability'$1_XUS_XUS';
    var $t12: $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $t13: $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $t14: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t15: $1_Diem_MintEvent;
    var $t16: $1_Diem_Diem'$1_XUS_XUS';
    var $t17: bool;
    var $t18: $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $t19: $1_Diem_MintEvent;
    var $t20: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t21: bool;
    var $t0: $signer;
    var $t1: int;
    var $1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies: [int]bool;
    var $temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS'': $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $temp_0'$1_Diem_Diem'$1_XUS_XUS'': $1_Diem_Diem'$1_XUS_XUS';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t5, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:452:9+66
    assume {:print "$at(11,21634,21700)"} true;
    assume ($t5 == $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:296:5+1
    assume {:print "$at(11,14773,14774)"} true;
    assume {:print "$track_local(18,22,0):", $t0} $t0 == $t0;

    // trace_local[value]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:296:5+1
    assume {:print "$track_local(18,22,1):", $t1} $t1 == $t1;

    // $t6 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27
    assume {:print "$at(11,14908,14935)"} true;

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27
    assume $IsValid'address'($t6);

    // assume Eq<address>($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27
    assume $IsEqual'address'($t6, $1_Signer_spec_address_of($t0));

    // $t6 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27

    // trace_local[addr]($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:13+4
    assume {:print "$track_local(18,22,4):", $t6} $t6 == $t6;

    // $t7 := exists<Diem::MintCapability<#0>>($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:16+6
    assume {:print "$at(11,14952,14958)"} true;
    $t7 := $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $t6);

    // $t8 := 9 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:84+16
    $t8 := 9;
    assume $IsValid'u64'($t8);

    // $t9 := opaque begin: Errors::requires_capability($t8) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 4) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45
    assume $IsEqual'u64'($t9, 4);

    // $t9 := opaque end: Errors::requires_capability($t8) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45

    // trace_local[tmp#$3]($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    assume {:print "$track_local(18,22,3):", $t9} $t9 == $t9;

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    assume {:print "$track_local(18,22,2):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
L1:

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    assume {:print "$at(11,14945,15038)"} true;
    assume {:print "$track_abort(18,22):", $t9} $t9 == $t9;

    // $t10 := move($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    $t10 := $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:301:13+5
    assume {:print "$at(11,15082,15087)"} true;
L0:

    // $t11 := get_global<Diem::MintCapability<#0>>($t6) on_abort goto L3 with $t10 at /home/ying/diem/language/diem-framework/modules/Diem.move:302:13+13
    assume {:print "$at(11,15101,15114)"} true;
    if (!$ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $t6)) {
        call $ExecFailureAbort();
    } else {
        $t11 := $ResourceValue($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $t6);
    }
    if ($abort_flag) {
        assume {:print "$at(11,15101,15114)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(18,22):", $t10} $t10 == $t10;
        goto L3;
    }

    // assume Identical($t12, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:452:9+66
    assume {:print "$at(11,21634,21700)"} true;
    assume ($t12 == $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816));

    // assume Identical($t13, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:460:9+66
    assume {:print "$at(11,22075,22141)"} true;
    assume ($t13 == $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816));

    // assume Identical($t14, select Diem::CurrencyInfo.mint_events($t13)) at /home/ying/diem/language/diem-framework/modules/Diem.move:461:9+39
    assume {:print "$at(11,22150,22189)"} true;
    assume ($t14 == $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'($t13));

    // assume Identical($t15, pack Diem::MintEvent($t1, select Diem::CurrencyInfo.currency_code($t13))) at /home/ying/diem/language/diem-framework/modules/Diem.move:462:9+114
    assume {:print "$at(11,22198,22312)"} true;
    assume ($t15 == $1_Diem_MintEvent($t1, $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'($t13)));

    // $t16 := opaque begin: Diem::mint_with_capability<#0>($t1, $t11) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;

    // assume Identical($t17, Or(Or(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info<#0>())), Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info<#0>()), $t1), MaxU128())), Not(Diem::spec_is_currency<#0>()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume ($t17 == ((!$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)) || (($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)) + $t1) > $MAX_U128)) || !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // if ($t17) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    if ($t17) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
L5:

    // assume Or(Or(And(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info<#0>())), Eq(1, $t10)), And(Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info<#0>()), $t1), MaxU128()), Eq(8, $t10))), And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t10))) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume (((!$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)) && $IsEqual'num'(1, $t10)) || ((($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)) + $t1) > $MAX_U128) && $IsEqual'num'(8, $t10))) || (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(5, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;
    assume {:print "$track_abort(18,22):", $t10} $t10 == $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
L4:

    // modifies global<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS'';
        $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816, $temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS'');
    } else {
        $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory := $ResourceRemove($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816);
    }

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume $IsValid'$1_Diem_Diem'$1_XUS_XUS''($t16);

    // assume Identical($t18, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume {:print "$at(11,21709,21785)"} true;
    assume ($t18 == $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816));

    // assume exists<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816);

    // assume exists<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816);

    // assume Eq<Diem::CurrencyInfo<#0>>($t18, update Diem::CurrencyInfo.total_value<Diem::CurrencyInfo<#0>>($t12, Add(select Diem::CurrencyInfo.total_value($t12), $t1))) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $IsEqual'$1_Diem_CurrencyInfo'$1_XUS_XUS''($t18, $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_total_value($t12, ($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'($t12) + $t1)));

    // assume Eq<u64>(select Diem::Diem.value($t16), $t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $IsEqual'u64'($value#$1_Diem_Diem'$1_XUS_XUS'($t16), $t1);

    // assume Identical($t19, $t15) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume ($t19 == $t15);

    // assume Identical($t20, $t14) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume ($t20 == $t14);

    // assume Identical($t21, Not(select Diem::CurrencyInfo.is_synthetic($t13))) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume ($t21 == !$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'($t13));

    // emit_event($t19, $t20, $t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;
    $es := $CondExtendEventStore'$1_Diem_MintEvent'($es, $t20, $t19, $t21);

    // $t16 := opaque end: Diem::mint_with_capability<#0>($t1, $t11) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume {:print "$at(11,21709,21785)"} true;

    // trace_return[0]($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;
    assume {:print "$track_return(18,22,0):", $t16} $t16 == $t16;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
    assume {:print "$at(11,15161,15162)"} true;
L2:

    // return $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
    $ret0 := $t16;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
L3:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
    $abort_code := $t10;
    $abort_flag := true;
    return;

}

// fun Diem::mint<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:296:5+389
procedure {:inline 1} $1_Diem_mint'$1_XDX_XDX'(_$t0: $signer, _$t1: int) returns ($ret0: $1_Diem_Diem'$1_XDX_XDX')
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $1_Diem_MintCapability'$1_XDX_XDX';
    var $t12: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t13: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t14: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t15: $1_Diem_MintEvent;
    var $t16: $1_Diem_Diem'$1_XDX_XDX';
    var $t17: bool;
    var $t18: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t19: $1_Diem_MintEvent;
    var $t20: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t21: bool;
    var $t0: $signer;
    var $t1: int;
    var $1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies: [int]bool;
    var $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'': $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $temp_0'$1_Diem_Diem'$1_XDX_XDX'': $1_Diem_Diem'$1_XDX_XDX';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t5, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:452:9+66
    assume {:print "$at(11,21634,21700)"} true;
    assume ($t5 == $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:296:5+1
    assume {:print "$at(11,14773,14774)"} true;
    assume {:print "$track_local(18,22,0):", $t0} $t0 == $t0;

    // trace_local[value]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:296:5+1
    assume {:print "$track_local(18,22,1):", $t1} $t1 == $t1;

    // $t6 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27
    assume {:print "$at(11,14908,14935)"} true;

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27
    assume $IsValid'address'($t6);

    // assume Eq<address>($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27
    assume $IsEqual'address'($t6, $1_Signer_spec_address_of($t0));

    // $t6 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27

    // trace_local[addr]($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:13+4
    assume {:print "$track_local(18,22,4):", $t6} $t6 == $t6;

    // $t7 := exists<Diem::MintCapability<#0>>($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:16+6
    assume {:print "$at(11,14952,14958)"} true;
    $t7 := $ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, $t6);

    // $t8 := 9 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:84+16
    $t8 := 9;
    assume $IsValid'u64'($t8);

    // $t9 := opaque begin: Errors::requires_capability($t8) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 4) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45
    assume $IsEqual'u64'($t9, 4);

    // $t9 := opaque end: Errors::requires_capability($t8) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45

    // trace_local[tmp#$3]($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    assume {:print "$track_local(18,22,3):", $t9} $t9 == $t9;

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    assume {:print "$track_local(18,22,2):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
L1:

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    assume {:print "$at(11,14945,15038)"} true;
    assume {:print "$track_abort(18,22):", $t9} $t9 == $t9;

    // $t10 := move($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    $t10 := $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:301:13+5
    assume {:print "$at(11,15082,15087)"} true;
L0:

    // $t11 := get_global<Diem::MintCapability<#0>>($t6) on_abort goto L3 with $t10 at /home/ying/diem/language/diem-framework/modules/Diem.move:302:13+13
    assume {:print "$at(11,15101,15114)"} true;
    if (!$ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, $t6)) {
        call $ExecFailureAbort();
    } else {
        $t11 := $ResourceValue($1_Diem_MintCapability'$1_XDX_XDX'_$memory, $t6);
    }
    if ($abort_flag) {
        assume {:print "$at(11,15101,15114)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(18,22):", $t10} $t10 == $t10;
        goto L3;
    }

    // assume Identical($t12, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:452:9+66
    assume {:print "$at(11,21634,21700)"} true;
    assume ($t12 == $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816));

    // assume Identical($t13, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:460:9+66
    assume {:print "$at(11,22075,22141)"} true;
    assume ($t13 == $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816));

    // assume Identical($t14, select Diem::CurrencyInfo.mint_events($t13)) at /home/ying/diem/language/diem-framework/modules/Diem.move:461:9+39
    assume {:print "$at(11,22150,22189)"} true;
    assume ($t14 == $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t13));

    // assume Identical($t15, pack Diem::MintEvent($t1, select Diem::CurrencyInfo.currency_code($t13))) at /home/ying/diem/language/diem-framework/modules/Diem.move:462:9+114
    assume {:print "$at(11,22198,22312)"} true;
    assume ($t15 == $1_Diem_MintEvent($t1, $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t13)));

    // $t16 := opaque begin: Diem::mint_with_capability<#0>($t1, $t11) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;

    // assume Identical($t17, Or(Or(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info<#0>())), Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info<#0>()), $t1), MaxU128())), Not(Diem::spec_is_currency<#0>()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume ($t17 == ((!$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)) || (($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)) + $t1) > $MAX_U128)) || !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // if ($t17) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    if ($t17) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
L5:

    // assume Or(Or(And(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info<#0>())), Eq(1, $t10)), And(Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info<#0>()), $t1), MaxU128()), Eq(8, $t10))), And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t10))) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume (((!$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)) && $IsEqual'num'(1, $t10)) || ((($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)) + $t1) > $MAX_U128) && $IsEqual'num'(8, $t10))) || (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'num'(5, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;
    assume {:print "$track_abort(18,22):", $t10} $t10 == $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
L4:

    // modifies global<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'';
        $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816, $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'');
    } else {
        $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory := $ResourceRemove($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816);
    }

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume $IsValid'$1_Diem_Diem'$1_XDX_XDX''($t16);

    // assume Identical($t18, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume {:print "$at(11,21709,21785)"} true;
    assume ($t18 == $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816));

    // assume exists<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816);

    // assume exists<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816);

    // assume Eq<Diem::CurrencyInfo<#0>>($t18, update Diem::CurrencyInfo.total_value<Diem::CurrencyInfo<#0>>($t12, Add(select Diem::CurrencyInfo.total_value($t12), $t1))) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $IsEqual'$1_Diem_CurrencyInfo'$1_XDX_XDX''($t18, $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_total_value($t12, ($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t12) + $t1)));

    // assume Eq<u64>(select Diem::Diem.value($t16), $t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $IsEqual'u64'($value#$1_Diem_Diem'$1_XDX_XDX'($t16), $t1);

    // assume Identical($t19, $t15) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume ($t19 == $t15);

    // assume Identical($t20, $t14) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume ($t20 == $t14);

    // assume Identical($t21, Not(select Diem::CurrencyInfo.is_synthetic($t13))) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume ($t21 == !$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t13));

    // emit_event($t19, $t20, $t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;
    $es := $CondExtendEventStore'$1_Diem_MintEvent'($es, $t20, $t19, $t21);

    // $t16 := opaque end: Diem::mint_with_capability<#0>($t1, $t11) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume {:print "$at(11,21709,21785)"} true;

    // trace_return[0]($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;
    assume {:print "$track_return(18,22,0):", $t16} $t16 == $t16;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
    assume {:print "$at(11,15161,15162)"} true;
L2:

    // return $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
    $ret0 := $t16;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
L3:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
    $abort_code := $t10;
    $abort_flag := true;
    return;

}

// fun Diem::mint<#0> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:296:5+389
procedure {:inline 1} $1_Diem_mint'#0'(_$t0: $signer, _$t1: int) returns ($ret0: $1_Diem_Diem'#0')
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: $1_Diem_CurrencyInfo'#0';
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $1_Diem_MintCapability'#0';
    var $t12: $1_Diem_CurrencyInfo'#0';
    var $t13: $1_Diem_CurrencyInfo'#0';
    var $t14: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t15: $1_Diem_MintEvent;
    var $t16: $1_Diem_Diem'#0';
    var $t17: bool;
    var $t18: $1_Diem_CurrencyInfo'#0';
    var $t19: $1_Diem_MintEvent;
    var $t20: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t21: bool;
    var $t0: $signer;
    var $t1: int;
    var $1_Diem_CurrencyInfo'#0'_$modifies: [int]bool;
    var $temp_0'$1_Diem_CurrencyInfo'#0'': $1_Diem_CurrencyInfo'#0';
    var $temp_0'$1_Diem_Diem'#0'': $1_Diem_Diem'#0';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t5, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:452:9+66
    assume {:print "$at(11,21634,21700)"} true;
    assume ($t5 == $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:296:5+1
    assume {:print "$at(11,14773,14774)"} true;
    assume {:print "$track_local(18,22,0):", $t0} $t0 == $t0;

    // trace_local[value]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:296:5+1
    assume {:print "$track_local(18,22,1):", $t1} $t1 == $t1;

    // $t6 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27
    assume {:print "$at(11,14908,14935)"} true;

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27
    assume $IsValid'address'($t6);

    // assume Eq<address>($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27
    assume $IsEqual'address'($t6, $1_Signer_spec_address_of($t0));

    // $t6 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:20+27

    // trace_local[addr]($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:298:13+4
    assume {:print "$track_local(18,22,4):", $t6} $t6 == $t6;

    // $t7 := exists<Diem::MintCapability<#0>>($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:16+6
    assume {:print "$at(11,14952,14958)"} true;
    $t7 := $ResourceExists($1_Diem_MintCapability'#0'_$memory, $t6);

    // $t8 := 9 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:84+16
    $t8 := 9;
    assume $IsValid'u64'($t8);

    // $t9 := opaque begin: Errors::requires_capability($t8) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 4) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45
    assume $IsEqual'u64'($t9, 4);

    // $t9 := opaque end: Errors::requires_capability($t8) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:56+45

    // trace_local[tmp#$3]($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    assume {:print "$track_local(18,22,3):", $t9} $t9 == $t9;

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    assume {:print "$track_local(18,22,2):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
L1:

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    assume {:print "$at(11,14945,15038)"} true;
    assume {:print "$track_abort(18,22):", $t9} $t9 == $t9;

    // $t10 := move($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    $t10 := $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:299:9+93
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:301:13+5
    assume {:print "$at(11,15082,15087)"} true;
L0:

    // $t11 := get_global<Diem::MintCapability<#0>>($t6) on_abort goto L3 with $t10 at /home/ying/diem/language/diem-framework/modules/Diem.move:302:13+13
    assume {:print "$at(11,15101,15114)"} true;
    if (!$ResourceExists($1_Diem_MintCapability'#0'_$memory, $t6)) {
        call $ExecFailureAbort();
    } else {
        $t11 := $ResourceValue($1_Diem_MintCapability'#0'_$memory, $t6);
    }
    if ($abort_flag) {
        assume {:print "$at(11,15101,15114)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(18,22):", $t10} $t10 == $t10;
        goto L3;
    }

    // assume Identical($t12, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:452:9+66
    assume {:print "$at(11,21634,21700)"} true;
    assume ($t12 == $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816));

    // assume Identical($t13, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:460:9+66
    assume {:print "$at(11,22075,22141)"} true;
    assume ($t13 == $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816));

    // assume Identical($t14, select Diem::CurrencyInfo.mint_events($t13)) at /home/ying/diem/language/diem-framework/modules/Diem.move:461:9+39
    assume {:print "$at(11,22150,22189)"} true;
    assume ($t14 == $mint_events#$1_Diem_CurrencyInfo'#0'($t13));

    // assume Identical($t15, pack Diem::MintEvent($t1, select Diem::CurrencyInfo.currency_code($t13))) at /home/ying/diem/language/diem-framework/modules/Diem.move:462:9+114
    assume {:print "$at(11,22198,22312)"} true;
    assume ($t15 == $1_Diem_MintEvent($t1, $currency_code#$1_Diem_CurrencyInfo'#0'($t13)));

    // $t16 := opaque begin: Diem::mint_with_capability<#0>($t1, $t11) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;

    // assume Identical($t17, Or(Or(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info<#0>())), Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info<#0>()), $t1), MaxU128())), Not(Diem::spec_is_currency<#0>()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume ($t17 == ((!$can_mint#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory)) || (($total_value#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory)) + $t1) > $MAX_U128)) || !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // if ($t17) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    if ($t17) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
L5:

    // assume Or(Or(And(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info<#0>())), Eq(1, $t10)), And(Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info<#0>()), $t1), MaxU128()), Eq(8, $t10))), And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t10))) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume (((!$can_mint#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory)) && $IsEqual'num'(1, $t10)) || ((($total_value#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory)) + $t1) > $MAX_U128) && $IsEqual'num'(8, $t10))) || (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(5, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;
    assume {:print "$track_abort(18,22):", $t10} $t10 == $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
L4:

    // modifies global<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Diem_CurrencyInfo'#0'';
        $1_Diem_CurrencyInfo'#0'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'#0'_$memory, 173345816, $temp_0'$1_Diem_CurrencyInfo'#0'');
    } else {
        $1_Diem_CurrencyInfo'#0'_$memory := $ResourceRemove($1_Diem_CurrencyInfo'#0'_$memory, 173345816);
    }

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume $IsValid'$1_Diem_Diem'#0''($t16);

    // assume Identical($t18, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume {:print "$at(11,21709,21785)"} true;
    assume ($t18 == $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816));

    // assume exists<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $ResourceExists($1_Diem_CurrencyInfo'#0'_$memory, 173345816);

    // assume exists<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $ResourceExists($1_Diem_CurrencyInfo'#0'_$memory, 173345816);

    // assume Eq<Diem::CurrencyInfo<#0>>($t18, update Diem::CurrencyInfo.total_value<Diem::CurrencyInfo<#0>>($t12, Add(select Diem::CurrencyInfo.total_value($t12), $t1))) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $IsEqual'$1_Diem_CurrencyInfo'#0''($t18, $Update'$1_Diem_CurrencyInfo'#0''_total_value($t12, ($total_value#$1_Diem_CurrencyInfo'#0'($t12) + $t1)));

    // assume Eq<u64>(select Diem::Diem.value($t16), $t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume $IsEqual'u64'($value#$1_Diem_Diem'#0'($t16), $t1);

    // assume Identical($t19, $t15) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume ($t19 == $t15);

    // assume Identical($t20, $t14) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume ($t20 == $t14);

    // assume Identical($t21, Not(select Diem::CurrencyInfo.is_synthetic($t13))) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume ($t21 == !$is_synthetic#$1_Diem_CurrencyInfo'#0'($t13));

    // emit_event($t19, $t20, $t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;
    $es := $CondExtendEventStore'$1_Diem_MintEvent'($es, $t20, $t19, $t21);

    // $t16 := opaque end: Diem::mint_with_capability<#0>($t1, $t11) at /home/ying/diem/language/diem-framework/modules/Diem.move:453:9+76
    assume {:print "$at(11,21709,21785)"} true;

    // trace_return[0]($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:300:9+108
    assume {:print "$at(11,15048,15156)"} true;
    assume {:print "$track_return(18,22,0):", $t16} $t16 == $t16;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
    assume {:print "$at(11,15161,15162)"} true;
L2:

    // return $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
    $ret0 := $t16;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
L3:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:304:5+1
    $abort_code := $t10;
    $abort_flag := true;
    return;

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

// struct DesignatedDealer::TierInfo<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:28:5+280
type {:datatype} $1_DesignatedDealer_TierInfo'$1_XUS_XUS';
function {:constructor} $1_DesignatedDealer_TierInfo'$1_XUS_XUS'($window_start: int, $window_inflow: int, $tiers: Vec (int)): $1_DesignatedDealer_TierInfo'$1_XUS_XUS';
function {:inline} $Update'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''_window_start(s: $1_DesignatedDealer_TierInfo'$1_XUS_XUS', x: int): $1_DesignatedDealer_TierInfo'$1_XUS_XUS' {
    $1_DesignatedDealer_TierInfo'$1_XUS_XUS'(x, $window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s), $tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''_window_inflow(s: $1_DesignatedDealer_TierInfo'$1_XUS_XUS', x: int): $1_DesignatedDealer_TierInfo'$1_XUS_XUS' {
    $1_DesignatedDealer_TierInfo'$1_XUS_XUS'($window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s), x, $tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''_tiers(s: $1_DesignatedDealer_TierInfo'$1_XUS_XUS', x: Vec (int)): $1_DesignatedDealer_TierInfo'$1_XUS_XUS' {
    $1_DesignatedDealer_TierInfo'$1_XUS_XUS'($window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s), $window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s), x)
}
function $IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''(s: $1_DesignatedDealer_TierInfo'$1_XUS_XUS'): bool {
    $IsValid'u64'($window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s))
      && $IsValid'u64'($window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s))
      && $IsValid'vec'u64''($tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''(s1: $1_DesignatedDealer_TierInfo'$1_XUS_XUS', s2: $1_DesignatedDealer_TierInfo'$1_XUS_XUS'): bool {
    $IsEqual'u64'($window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s1), $window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s2))
    && $IsEqual'u64'($window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s1), $window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s2))
    && $IsEqual'vec'u64''($tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s1), $tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'(s2))}
var $1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory: $Memory $1_DesignatedDealer_TierInfo'$1_XUS_XUS';

// struct DesignatedDealer::TierInfo<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:28:5+280
type {:datatype} $1_DesignatedDealer_TierInfo'$1_XDX_XDX';
function {:constructor} $1_DesignatedDealer_TierInfo'$1_XDX_XDX'($window_start: int, $window_inflow: int, $tiers: Vec (int)): $1_DesignatedDealer_TierInfo'$1_XDX_XDX';
function {:inline} $Update'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''_window_start(s: $1_DesignatedDealer_TierInfo'$1_XDX_XDX', x: int): $1_DesignatedDealer_TierInfo'$1_XDX_XDX' {
    $1_DesignatedDealer_TierInfo'$1_XDX_XDX'(x, $window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s), $tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''_window_inflow(s: $1_DesignatedDealer_TierInfo'$1_XDX_XDX', x: int): $1_DesignatedDealer_TierInfo'$1_XDX_XDX' {
    $1_DesignatedDealer_TierInfo'$1_XDX_XDX'($window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s), x, $tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''_tiers(s: $1_DesignatedDealer_TierInfo'$1_XDX_XDX', x: Vec (int)): $1_DesignatedDealer_TierInfo'$1_XDX_XDX' {
    $1_DesignatedDealer_TierInfo'$1_XDX_XDX'($window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s), $window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s), x)
}
function $IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''(s: $1_DesignatedDealer_TierInfo'$1_XDX_XDX'): bool {
    $IsValid'u64'($window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s))
      && $IsValid'u64'($window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s))
      && $IsValid'vec'u64''($tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''(s1: $1_DesignatedDealer_TierInfo'$1_XDX_XDX', s2: $1_DesignatedDealer_TierInfo'$1_XDX_XDX'): bool {
    $IsEqual'u64'($window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s1), $window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s2))
    && $IsEqual'u64'($window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s1), $window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s2))
    && $IsEqual'vec'u64''($tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s1), $tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'(s2))}
var $1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory: $Memory $1_DesignatedDealer_TierInfo'$1_XDX_XDX';

// struct DesignatedDealer::TierInfo<#0> at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:28:5+280
type {:datatype} $1_DesignatedDealer_TierInfo'#0';
function {:constructor} $1_DesignatedDealer_TierInfo'#0'($window_start: int, $window_inflow: int, $tiers: Vec (int)): $1_DesignatedDealer_TierInfo'#0';
function {:inline} $Update'$1_DesignatedDealer_TierInfo'#0''_window_start(s: $1_DesignatedDealer_TierInfo'#0', x: int): $1_DesignatedDealer_TierInfo'#0' {
    $1_DesignatedDealer_TierInfo'#0'(x, $window_inflow#$1_DesignatedDealer_TierInfo'#0'(s), $tiers#$1_DesignatedDealer_TierInfo'#0'(s))
}
function {:inline} $Update'$1_DesignatedDealer_TierInfo'#0''_window_inflow(s: $1_DesignatedDealer_TierInfo'#0', x: int): $1_DesignatedDealer_TierInfo'#0' {
    $1_DesignatedDealer_TierInfo'#0'($window_start#$1_DesignatedDealer_TierInfo'#0'(s), x, $tiers#$1_DesignatedDealer_TierInfo'#0'(s))
}
function {:inline} $Update'$1_DesignatedDealer_TierInfo'#0''_tiers(s: $1_DesignatedDealer_TierInfo'#0', x: Vec (int)): $1_DesignatedDealer_TierInfo'#0' {
    $1_DesignatedDealer_TierInfo'#0'($window_start#$1_DesignatedDealer_TierInfo'#0'(s), $window_inflow#$1_DesignatedDealer_TierInfo'#0'(s), x)
}
function $IsValid'$1_DesignatedDealer_TierInfo'#0''(s: $1_DesignatedDealer_TierInfo'#0'): bool {
    $IsValid'u64'($window_start#$1_DesignatedDealer_TierInfo'#0'(s))
      && $IsValid'u64'($window_inflow#$1_DesignatedDealer_TierInfo'#0'(s))
      && $IsValid'vec'u64''($tiers#$1_DesignatedDealer_TierInfo'#0'(s))
}
function {:inline} $IsEqual'$1_DesignatedDealer_TierInfo'#0''(s1: $1_DesignatedDealer_TierInfo'#0', s2: $1_DesignatedDealer_TierInfo'#0'): bool {
    $IsEqual'u64'($window_start#$1_DesignatedDealer_TierInfo'#0'(s1), $window_start#$1_DesignatedDealer_TierInfo'#0'(s2))
    && $IsEqual'u64'($window_inflow#$1_DesignatedDealer_TierInfo'#0'(s1), $window_inflow#$1_DesignatedDealer_TierInfo'#0'(s2))
    && $IsEqual'vec'u64''($tiers#$1_DesignatedDealer_TierInfo'#0'(s1), $tiers#$1_DesignatedDealer_TierInfo'#0'(s2))}
var $1_DesignatedDealer_TierInfo'#0'_$memory: $Memory $1_DesignatedDealer_TierInfo'#0';

// fun DesignatedDealer::add_currency [verification] at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
procedure {:timeLimit 40} $1_DesignatedDealer_add_currency$verify(_$t0: $signer, _$t1: $signer) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
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
    var $t0: $signer;
    var $t1: $signer;
    var $1_Diem_PreburnQueue'#0'_$modifies: [int]bool;
    var $temp_0'$1_Diem_PreburnQueue'#0'': $1_Diem_PreburnQueue'#0';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_Roles_RoleId_$memory#125: $Memory $1_Roles_RoleId;
    var $1_DesignatedDealer_Dealer_$memory#126: $Memory $1_DesignatedDealer_Dealer;
    var $1_Diem_CurrencyInfo'#0'_$memory#127: $Memory $1_Diem_CurrencyInfo'#0';
    var $1_Diem_PreburnQueue'#0'_$memory#128: $Memory $1_Diem_PreburnQueue'#0';
    var $1_Diem_Preburn'#0'_$memory#129: $Memory $1_Diem_Preburn'#0';
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(10,4320,4646)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume Implies(Diem::$is_SCS_currency<#0>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<#0>>(mint_cap_owner1), exists<Diem::MintCapability<#0>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<#0>(addr3): Diem::$is_SCS_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'#0'($1_Diem_MintCapability'#0'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(Or(exists<Diem::PreburnQueue<#0>>(addr1), exists<Diem::Preburn<#0>>(addr1)), Roles::spec_has_designated_dealer_role_addr(addr1)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1742:9+220
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> ((($ResourceExists($1_Diem_PreburnQueue'#0'_$memory, addr1) || $ResourceExists($1_Diem_Preburn'#0'_$memory, addr1)) ==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::Preburn<#0>>(dd_addr): And(Eq<u64>(select Diem::Diem.value(select Diem::Preburn.to_burn(global<Diem::Preburn<#0>>(dd_addr))), 0), Not(exists<Diem::PreburnQueue<#0>>(dd_addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1754:9+228
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_Preburn'#0'_$memory, dd_addr))  ==> (($IsEqual'u64'($value#$1_Diem_Diem'#0'($to_burn#$1_Diem_Preburn'#0'($ResourceValue($1_Diem_Preburn'#0'_$memory, dd_addr))), 0) && !$ResourceExists($1_Diem_PreburnQueue'#0'_$memory, dd_addr))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::PreburnQueue<#0>>(dd_addr): Not(exists<Diem::Preburn<#0>>(dd_addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1762:9+155
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_PreburnQueue'#0'_$memory, dd_addr))  ==> (!$ResourceExists($1_Diem_Preburn'#0'_$memory, dd_addr)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<#0>>(addr): Diem::spec_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'#0'_$memory, addr))  ==> ($1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<#0>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'#0''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'#0'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'#0'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::Preburn<#0>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_Preburn'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_Preburn'#0'_$memory, $a_0);
    ($IsValid'$1_Diem_Preburn'#0''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::PreburnQueue<#0>>(): And(WellFormed($rsc), And(Le(Len<Diem::PreburnWithMetadata<#0>>(select Diem::PreburnQueue.preburns($rsc)), 256), forall i: Range(0, Len<Diem::PreburnWithMetadata<#0>>(select Diem::PreburnQueue.preburns($rsc))): Gt(select Diem::Diem.value(select Diem::Preburn.to_burn(select Diem::PreburnWithMetadata.preburn(Index(select Diem::PreburnQueue.preburns($rsc), i)))), 0))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_PreburnQueue'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_PreburnQueue'#0'_$memory, $a_0);
    (($IsValid'$1_Diem_PreburnQueue'#0''($rsc) && ((LenVec($preburns#$1_Diem_PreburnQueue'#0'($rsc)) <= 256) && (var $range_1 := $Range(0, LenVec($preburns#$1_Diem_PreburnQueue'#0'($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    (($value#$1_Diem_Diem'#0'($to_burn#$1_Diem_Preburn'#0'($preburn#$1_Diem_PreburnWithMetadata'#0'(ReadVec($preburns#$1_Diem_PreburnQueue'#0'($rsc), i)))) > 0))))))))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::Dealer>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+326
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_Dealer'($rsc))));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:116:9+42
    assume {:print "$at(10,4910,4952)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t1));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume {:print "$at(28,25113,25157)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume CanModify<Diem::PreburnQueue<#0>>($t5) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:123:9+55
    assume {:print "$at(10,5220,5275)"} true;
    assume $1_Diem_PreburnQueue'#0'_$modifies[$t5];

    // @125 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:123:9+55
    $1_Roles_RoleId_$memory#125 := $1_Roles_RoleId_$memory;

    // @127 := save_mem(Diem::CurrencyInfo<#0>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:123:9+55
    $1_Diem_CurrencyInfo'#0'_$memory#127 := $1_Diem_CurrencyInfo'#0'_$memory;

    // @129 := save_mem(Diem::Preburn<#0>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:123:9+55
    $1_Diem_Preburn'#0'_$memory#129 := $1_Diem_Preburn'#0'_$memory;

    // @128 := save_mem(Diem::PreburnQueue<#0>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:123:9+55
    $1_Diem_PreburnQueue'#0'_$memory#128 := $1_Diem_PreburnQueue'#0'_$memory;

    // @126 := save_mem(DesignatedDealer::Dealer) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:123:9+55
    $1_DesignatedDealer_Dealer_$memory#126 := $1_DesignatedDealer_Dealer_$memory;

    // trace_local[dd]($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+1
    assume {:print "$at(10,4320,4321)"} true;
    assume {:print "$track_local(27,0,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:103:5+1
    assume {:print "$track_local(27,0,1):", $t1} $t1 == $t1;

    // assume Identical($t8, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:104:9+45
    assume {:print "$at(10,4406,4451)"} true;

    // assume Identical($t9, Or(Or(Not(exists<Roles::RoleId>($t8)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:104:9+45
    assume ($t9 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t8) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)));

    // if ($t9) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:104:9+45
    if ($t9) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:104:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t8)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 1), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t10))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:104:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t8) && $IsEqual'num'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 1) && $IsEqual'num'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:104:9+45
    assume {:print "$at(10,4406,4451)"} true;
    assume {:print "$track_abort(27,0):", $t10} $t10 == $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:104:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:104:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:104:9+45

    // $t11 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:105:23+22
    assume {:print "$at(10,4475,4497)"} true;

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:105:23+22
    assume $IsValid'address'($t11);

    // assume Eq<address>($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:105:23+22
    assume $IsEqual'address'($t11, $1_Signer_spec_address_of($t0));

    // $t11 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:105:23+22

    // trace_local[dd_addr]($t11) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:105:13+7
    assume {:print "$track_local(27,0,4):", $t11} $t11 == $t11;

    // $t12 := opaque begin: DesignatedDealer::exists_at($t11) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:16+18
    assume {:print "$at(10,4514,4532)"} true;

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:16+18
    assume $IsValid'bool'($t12);

    // assume Eq<bool>($t12, exists<DesignatedDealer::Dealer>($t11)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:16+18
    assume $IsEqual'bool'($t12, $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t11));

    // $t12 := opaque end: DesignatedDealer::exists_at($t11) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:16+18

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:58+7
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::not_published($t13) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:36+30

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:36+30
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 5) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:36+30
    assume $IsEqual'u64'($t14, 5);

    // $t14 := opaque end: Errors::not_published($t13) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:36+30

    // trace_local[tmp#$3]($t14) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:9+58
    assume {:print "$track_local(27,0,3):", $t14} $t14 == $t14;

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:9+58
    assume {:print "$track_local(27,0,2):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:9+58
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:9+58
L1:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:9+58

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:9+58

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:9+58
    assume {:print "$at(10,4507,4565)"} true;
    assume {:print "$track_abort(27,0):", $t14} $t14 == $t14;

    // $t10 := move($t14) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:9+58
    $t10 := $t14;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:106:9+58
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:58+2
    assume {:print "$at(10,4624,4626)"} true;
L0:

    // assume Identical($t15, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:629:9+52
    assume {:print "$at(11,29538,29590)"} true;
    assume ($t15 == $1_Signer_spec_address_of($t0));

    // assume Identical($t16, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume {:print "$at(28,25113,25157)"} true;
    assume ($t16 == $1_Signer_spec_address_of($t0));

    // assume Identical($t17, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume ($t17 == $1_Signer_spec_address_of($t0));

    // assume Identical($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:605:9+52
    assume {:print "$at(11,28281,28333)"} true;
    assume ($t18 == $1_Signer_spec_address_of($t0));

    // assume Identical($t19, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t19 == $1_Signer_spec_address_of($t1));

    // assume Identical($t20, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume {:print "$at(28,25113,25157)"} true;
    assume ($t20 == $1_Signer_spec_address_of($t0));

    // assert CanModify<Diem::PreburnQueue<#0>>($t15) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    assume {:print "$at(10,4575,4639)"} true;
    assert {:msg "assert_failed(10,4575,4639): caller does not have permission to modify `Diem::PreburnQueue<#0>` at given address"}
      $1_Diem_PreburnQueue'#0'_$modifies[$t15];

    // opaque begin: Diem::publish_preburn_queue_to_account<#0>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64

    // assume Identical($t21, Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists<Roles::RoleId>($t16)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t16)), 2)), Not(exists<Roles::RoleId>($t17))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t17)), 2)), Not(Diem::spec_is_currency<#0>())), Not(exists<Roles::RoleId>($t19))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t19)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed)), Not(Diem::spec_is_currency<#0>())), Diem::$is_synthetic_currency<#0>()), exists<Diem::PreburnQueue<#0>>($t15)), exists<Diem::Preburn<#0>>($t15))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    assume ($t21 == (((((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t16) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t16)), 2)) || !$ResourceExists($1_Roles_RoleId_$memory, $t17)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t17)), 2)) || !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)) || !$ResourceExists($1_Roles_RoleId_$memory, $t19)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t19)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)) || !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)) || $1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)) || $ResourceExists($1_Diem_PreburnQueue'#0'_$memory, $t15)) || $ResourceExists($1_Diem_Preburn'#0'_$memory, $t15)));

    // if ($t21) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    if ($t21) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
L7:

    // assume Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists<Roles::RoleId>($t16)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t16)), 2), Eq(3, $t10))), And(Not(exists<Roles::RoleId>($t17)), Eq(5, $t10))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t17)), 2), Eq(3, $t10))), And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t10))), And(Not(exists<Roles::RoleId>($t19)), Eq(5, $t10))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t19)), 1), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t10))), And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t10))), And(Diem::$is_synthetic_currency<#0>(), Eq(7, $t10))), And(exists<Diem::PreburnQueue<#0>>($t15), Eq(6, $t10))), And(exists<Diem::Preburn<#0>>($t15), Eq(1, $t10))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    assume ((((((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t16) && $IsEqual'num'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t16)), 2) && $IsEqual'num'(3, $t10))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t17) && $IsEqual'num'(5, $t10))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t17)), 2) && $IsEqual'num'(3, $t10))) || (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(5, $t10))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t19) && $IsEqual'num'(5, $t10))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t19)), 1) && $IsEqual'num'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t10))) || (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(5, $t10))) || ($1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(7, $t10))) || ($ResourceExists($1_Diem_PreburnQueue'#0'_$memory, $t15) && $IsEqual'num'(6, $t10))) || ($ResourceExists($1_Diem_Preburn'#0'_$memory, $t15) && $IsEqual'num'(1, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    assume {:print "$at(10,4575,4639)"} true;
    assume {:print "$track_abort(27,0):", $t10} $t10 == $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
L6:

    // modifies global<Diem::PreburnQueue<#0>>($t15) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Diem_PreburnQueue'#0'';
        $1_Diem_PreburnQueue'#0'_$memory := $ResourceUpdate($1_Diem_PreburnQueue'#0'_$memory, $t15, $temp_0'$1_Diem_PreburnQueue'#0'');
    } else {
        $1_Diem_PreburnQueue'#0'_$memory := $ResourceRemove($1_Diem_PreburnQueue'#0'_$memory, $t15);
    }

    // assume exists<Diem::PreburnQueue<#0>>($t18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    assume $ResourceExists($1_Diem_PreburnQueue'#0'_$memory, $t18);

    // assume Not(exists<Diem::Preburn<#0>>($t18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    assume !$ResourceExists($1_Diem_Preburn'#0'_$memory, $t18);

    // assume Eq<u64>(Vector::$length<Diem::PreburnWithMetadata<#0>>(select Diem::PreburnQueue.preburns(global<Diem::PreburnQueue<#0>>($t18))), 0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    assume $IsEqual'u64'($1_Vector_$length'$1_Diem_PreburnWithMetadata'#0''($preburns#$1_Diem_PreburnQueue'#0'($ResourceValue($1_Diem_PreburnQueue'#0'_$memory, $t18))), 0);

    // assume exists<Diem::PreburnQueue<#0>>($t15) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64
    assume $ResourceExists($1_Diem_PreburnQueue'#0'_$memory, $t15);

    // opaque end: Diem::publish_preburn_queue_to_account<#0>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:107:9+64

    // label L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:108:5+1
    assume {:print "$at(10,4645,4646)"} true;
L2:

    // assert Not(Not(exists[@125]<Roles::RoleId>($t6))) at /home/ying/diem/language/diem-framework/modules/Roles.move:546:9+59
    assume {:print "$at(28,24327,24386)"} true;
    assert {:msg "assert_failed(28,24327,24386): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#125, $t6);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@125]<Roles::RoleId>($t6)), 1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:547:9+97
    assume {:print "$at(28,24395,24492)"} true;
    assert {:msg "assert_failed(28,24395,24492): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#125, $t6)), 1);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t1), b1e55ed)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:49:9+108
    assume {:print "$at(9,2057,2165)"} true;
    assert {:msg "assert_failed(9,2057,2165): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453);

    // assert Not(Not(exists[@125]<Roles::RoleId>($t7))) at /home/ying/diem/language/diem-framework/modules/Roles.move:566:9+59
    assume {:print "$at(28,25166,25225)"} true;
    assert {:msg "assert_failed(28,25166,25225): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#125, $t7);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@125]<Roles::RoleId>($t7)), 2)) at /home/ying/diem/language/diem-framework/modules/Roles.move:567:9+95
    assume {:print "$at(28,25234,25329)"} true;
    assert {:msg "assert_failed(28,25234,25329): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#125, $t7)), 2);

    // assert Not(Not(exists[@126]<DesignatedDealer::Dealer>($t5))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:21:9+62
    assume {:print "$at(10,712,774)"} true;
    assert {:msg "assert_failed(10,712,774): function does not abort under this condition"}
      !!$ResourceExists($1_DesignatedDealer_Dealer_$memory#126, $t5);

    // assert Not(Diem::$is_synthetic_currency[@127]<#0>()) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:128:9+80
    assume {:print "$at(10,5416,5496)"} true;
    assert {:msg "assert_failed(10,5416,5496): function does not abort under this condition"}
      !$1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#127);

    // assert Not(exists[@128]<Diem::PreburnQueue<#0>>($t5)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:129:9+87
    assume {:print "$at(10,5505,5592)"} true;
    assert {:msg "assert_failed(10,5505,5592): function does not abort under this condition"}
      !$ResourceExists($1_Diem_PreburnQueue'#0'_$memory#128, $t5);

    // assert Not(exists[@129]<Diem::Preburn<#0>>($t5)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:130:9+78
    assume {:print "$at(10,5601,5679)"} true;
    assert {:msg "assert_failed(10,5601,5679): function does not abort under this condition"}
      !$ResourceExists($1_Diem_Preburn'#0'_$memory#129, $t5);

    // assert Not(Not(Diem::spec_is_currency[@127]<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1563:9+67
    assume {:print "$at(11,72689,72756)"} true;
    assert {:msg "assert_failed(11,72689,72756): function does not abort under this condition"}
      !!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#127);

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:1563:9+67
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:108:5+1
    assume {:print "$at(10,4645,4646)"} true;
L3:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists[@125]<Roles::RoleId>($t6)), Neq<u64>(select Roles::RoleId.role_id(global[@125]<Roles::RoleId>($t6)), 1)), Neq<address>(Signer::spec_address_of[]($t1), b1e55ed)), Not(exists[@125]<Roles::RoleId>($t7))), Neq<u64>(select Roles::RoleId.role_id(global[@125]<Roles::RoleId>($t7)), 2)), Not(exists[@126]<DesignatedDealer::Dealer>($t5))), Diem::$is_synthetic_currency[@127]<#0>()), exists[@128]<Diem::PreburnQueue<#0>>($t5)), exists[@129]<Diem::Preburn<#0>>($t5)), Not(Diem::spec_is_currency[@127]<#0>())) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:113:5+423
    assume {:print "$at(10,4858,5281)"} true;
    assert {:msg "assert_failed(10,4858,5281): abort not covered by any of the `aborts_if` clauses"}
      (((((((((!$ResourceExists($1_Roles_RoleId_$memory#125, $t6) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#125, $t6)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)) || !$ResourceExists($1_Roles_RoleId_$memory#125, $t7)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#125, $t7)), 2)) || !$ResourceExists($1_DesignatedDealer_Dealer_$memory#126, $t5)) || $1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#127)) || $ResourceExists($1_Diem_PreburnQueue'#0'_$memory#128, $t5)) || $ResourceExists($1_Diem_Preburn'#0'_$memory#129, $t5)) || !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#127));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists[@125]<Roles::RoleId>($t6)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global[@125]<Roles::RoleId>($t6)), 1), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of[]($t1), b1e55ed), Eq(2, $t10))), And(Not(exists[@125]<Roles::RoleId>($t7)), Eq(5, $t10))), And(Neq<u64>(select Roles::RoleId.role_id(global[@125]<Roles::RoleId>($t7)), 2), Eq(3, $t10))), And(Not(exists[@126]<DesignatedDealer::Dealer>($t5)), Eq(5, $t10))), And(Diem::$is_synthetic_currency[@127]<#0>(), Eq(7, $t10))), And(exists[@128]<Diem::PreburnQueue<#0>>($t5), Eq(6, $t10))), And(exists[@129]<Diem::Preburn<#0>>($t5), Eq(1, $t10))), And(Not(Diem::spec_is_currency[@127]<#0>()), Eq(5, $t10))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:113:5+423
    assert {:msg "assert_failed(10,4858,5281): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((((!$ResourceExists($1_Roles_RoleId_$memory#125, $t6) && $IsEqual'num'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#125, $t6)), 1) && $IsEqual'num'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t10))) || (!$ResourceExists($1_Roles_RoleId_$memory#125, $t7) && $IsEqual'num'(5, $t10))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#125, $t7)), 2) && $IsEqual'num'(3, $t10))) || (!$ResourceExists($1_DesignatedDealer_Dealer_$memory#126, $t5) && $IsEqual'num'(5, $t10))) || ($1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#127) && $IsEqual'num'(7, $t10))) || ($ResourceExists($1_Diem_PreburnQueue'#0'_$memory#128, $t5) && $IsEqual'num'(6, $t10))) || ($ResourceExists($1_Diem_Preburn'#0'_$memory#129, $t5) && $IsEqual'num'(1, $t10))) || (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#127) && $IsEqual'num'(5, $t10)));

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:113:5+423
    $abort_code := $t10;
    $abort_flag := true;
    return;

}

// fun DesignatedDealer::add_currency_for_test [verification] at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
procedure {:timeLimit 40} $1_DesignatedDealer_add_currency_for_test$verify(_$t0: $signer, _$t1: $signer) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t0: $signer;
    var $t1: $signer;
    var $temp_0'$1_Diem_PreburnQueue'#0'': $1_Diem_PreburnQueue'#0';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(10,4722,4853)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume Implies(Diem::$is_SCS_currency<#0>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<#0>>(mint_cap_owner1), exists<Diem::MintCapability<#0>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<#0>(addr3): Diem::$is_SCS_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'#0'($1_Diem_MintCapability'#0'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(Or(exists<Diem::PreburnQueue<#0>>(addr1), exists<Diem::Preburn<#0>>(addr1)), Roles::spec_has_designated_dealer_role_addr(addr1)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1742:9+220
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> ((($ResourceExists($1_Diem_PreburnQueue'#0'_$memory, addr1) || $ResourceExists($1_Diem_Preburn'#0'_$memory, addr1)) ==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::Preburn<#0>>(dd_addr): And(Eq<u64>(select Diem::Diem.value(select Diem::Preburn.to_burn(global<Diem::Preburn<#0>>(dd_addr))), 0), Not(exists<Diem::PreburnQueue<#0>>(dd_addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1754:9+228
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_Preburn'#0'_$memory, dd_addr))  ==> (($IsEqual'u64'($value#$1_Diem_Diem'#0'($to_burn#$1_Diem_Preburn'#0'($ResourceValue($1_Diem_Preburn'#0'_$memory, dd_addr))), 0) && !$ResourceExists($1_Diem_PreburnQueue'#0'_$memory, dd_addr))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::PreburnQueue<#0>>(dd_addr): Not(exists<Diem::Preburn<#0>>(dd_addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1762:9+155
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_PreburnQueue'#0'_$memory, dd_addr))  ==> (!$ResourceExists($1_Diem_Preburn'#0'_$memory, dd_addr)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<#0>>(addr): Diem::spec_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'#0'_$memory, addr))  ==> ($1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<#0>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'#0''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'#0'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'#0'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::Preburn<#0>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_Preburn'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_Preburn'#0'_$memory, $a_0);
    ($IsValid'$1_Diem_Preburn'#0''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::PreburnQueue<#0>>(): And(WellFormed($rsc), And(Le(Len<Diem::PreburnWithMetadata<#0>>(select Diem::PreburnQueue.preburns($rsc)), 256), forall i: Range(0, Len<Diem::PreburnWithMetadata<#0>>(select Diem::PreburnQueue.preburns($rsc))): Gt(select Diem::Diem.value(select Diem::Preburn.to_burn(select Diem::PreburnWithMetadata.preburn(Index(select Diem::PreburnQueue.preburns($rsc), i)))), 0))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_PreburnQueue'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_PreburnQueue'#0'_$memory, $a_0);
    (($IsValid'$1_Diem_PreburnQueue'#0''($rsc) && ((LenVec($preburns#$1_Diem_PreburnQueue'#0'($rsc)) <= 256) && (var $range_1 := $Range(0, LenVec($preburns#$1_Diem_PreburnQueue'#0'($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    (($value#$1_Diem_Diem'#0'($to_burn#$1_Diem_Preburn'#0'($preburn#$1_Diem_PreburnWithMetadata'#0'(ReadVec($preburns#$1_Diem_PreburnQueue'#0'($rsc), i)))) > 0))))))))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::Dealer>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_Dealer'($rsc))));

    // trace_local[dd]($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+1
    assume {:print "$track_local(27,1,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+1
    assume {:print "$track_local(27,1,1):", $t1} $t1 == $t1;

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:116:9+42
    assume {:print "$at(10,4910,4952)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t1));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume {:print "$at(28,25113,25157)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: DesignatedDealer::add_currency<#0>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume {:print "$at(10,4809,4847)"} true;

    // assume Identical($t5, Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists<Roles::RoleId>($t3)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed)), Not(exists<Roles::RoleId>($t4))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 2)), Not(exists<DesignatedDealer::Dealer>($t2))), Diem::$is_synthetic_currency<#0>()), exists<Diem::PreburnQueue<#0>>($t2)), exists<Diem::Preburn<#0>>($t2)), Not(Diem::spec_is_currency<#0>()))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume ($t5 == (((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t3) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)) || !$ResourceExists($1_Roles_RoleId_$memory, $t4)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 2)) || !$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2)) || $1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)) || $ResourceExists($1_Diem_PreburnQueue'#0'_$memory, $t2)) || $ResourceExists($1_Diem_Preburn'#0'_$memory, $t2)) || !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
L4:

    // assume Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists<Roles::RoleId>($t3)), Eq(5, $t6)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t6))), And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 2), Eq(3, $t6))), And(Not(exists<DesignatedDealer::Dealer>($t2)), Eq(5, $t6))), And(Diem::$is_synthetic_currency<#0>(), Eq(7, $t6))), And(exists<Diem::PreburnQueue<#0>>($t2), Eq(6, $t6))), And(exists<Diem::Preburn<#0>>($t2), Eq(1, $t6))), And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t6))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume ((((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t3) && $IsEqual'num'(5, $t6)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1) && $IsEqual'num'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t6))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'num'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 2) && $IsEqual'num'(3, $t6))) || (!$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2) && $IsEqual'num'(5, $t6))) || ($1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(7, $t6))) || ($ResourceExists($1_Diem_PreburnQueue'#0'_$memory, $t2) && $IsEqual'num'(6, $t6))) || ($ResourceExists($1_Diem_Preburn'#0'_$memory, $t2) && $IsEqual'num'(1, $t6))) || (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(5, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume {:print "$at(10,4809,4847)"} true;
    assume {:print "$track_abort(27,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
L3:

    // modifies global<Diem::PreburnQueue<#0>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Diem_PreburnQueue'#0'';
        $1_Diem_PreburnQueue'#0'_$memory := $ResourceUpdate($1_Diem_PreburnQueue'#0'_$memory, $t2, $temp_0'$1_Diem_PreburnQueue'#0'');
    } else {
        $1_Diem_PreburnQueue'#0'_$memory := $ResourceRemove($1_Diem_PreburnQueue'#0'_$memory, $t2);
    }

    // opaque end: DesignatedDealer::add_currency<#0>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38

    // label L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
    assume {:print "$at(10,4852,4853)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
L2:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun DesignatedDealer::add_currency_for_test [verification[instantiated_0]] at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
procedure {:timeLimit 40} $1_DesignatedDealer_add_currency_for_test$verify_instantiated_0(_$t0: $signer, _$t1: $signer) returns ()
{
    // function instantiation <XUS::XUS>

    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t0: $signer;
    var $t1: $signer;
    var $temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS'': $1_Diem_PreburnQueue'$1_XUS_XUS';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(10,4722,4853)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume Implies(Diem::$is_SCS_currency<XUS::XUS>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner1), exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<XUS::XUS>(addr3): Diem::$is_SCS_currency<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'$1_XUS_XUS'($1_Diem_MintCapability'$1_XUS_XUS'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(Or(exists<Diem::PreburnQueue<XUS::XUS>>(addr1), exists<Diem::Preburn<XUS::XUS>>(addr1)), Roles::spec_has_designated_dealer_role_addr(addr1)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1742:9+220
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> ((($ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, addr1) || $ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, addr1)) ==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::Preburn<XUS::XUS>>(dd_addr): And(Eq<u64>(select Diem::Diem.value(select Diem::Preburn.to_burn(global<Diem::Preburn<XUS::XUS>>(dd_addr))), 0), Not(exists<Diem::PreburnQueue<XUS::XUS>>(dd_addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1754:9+228
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, dd_addr))  ==> (($IsEqual'u64'($value#$1_Diem_Diem'$1_XUS_XUS'($to_burn#$1_Diem_Preburn'$1_XUS_XUS'($ResourceValue($1_Diem_Preburn'$1_XUS_XUS'_$memory, dd_addr))), 0) && !$ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, dd_addr))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::PreburnQueue<XUS::XUS>>(dd_addr): Not(exists<Diem::Preburn<XUS::XUS>>(dd_addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1762:9+155
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, dd_addr))  ==> (!$ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, dd_addr)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<XUS::XUS>>(addr): Diem::spec_is_currency<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, addr))  ==> ($1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XUS::XUS>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::Preburn<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_Preburn'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_Preburn'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_Diem_Preburn'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::PreburnQueue<XUS::XUS>>(): And(WellFormed($rsc), And(Le(Len<Diem::PreburnWithMetadata<XUS::XUS>>(select Diem::PreburnQueue.preburns($rsc)), 256), forall i: Range(0, Len<Diem::PreburnWithMetadata<XUS::XUS>>(select Diem::PreburnQueue.preburns($rsc))): Gt(select Diem::Diem.value(select Diem::Preburn.to_burn(select Diem::PreburnWithMetadata.preburn(Index(select Diem::PreburnQueue.preburns($rsc), i)))), 0))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''($rsc) && ((LenVec($preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'($rsc)) <= 256) && (var $range_1 := $Range(0, LenVec($preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    (($value#$1_Diem_Diem'$1_XUS_XUS'($to_burn#$1_Diem_Preburn'$1_XUS_XUS'($preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'(ReadVec($preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'($rsc), i)))) > 0))))))))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::Dealer>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_Dealer'($rsc))));

    // trace_local[dd]($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+1
    assume {:print "$track_local(27,1,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+1
    assume {:print "$track_local(27,1,1):", $t1} $t1 == $t1;

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:116:9+42
    assume {:print "$at(10,4910,4952)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t1));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume {:print "$at(28,25113,25157)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: DesignatedDealer::add_currency<XUS::XUS>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume {:print "$at(10,4809,4847)"} true;

    // assume Identical($t5, Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists<Roles::RoleId>($t3)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed)), Not(exists<Roles::RoleId>($t4))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 2)), Not(exists<DesignatedDealer::Dealer>($t2))), Diem::$is_synthetic_currency<XUS::XUS>()), exists<Diem::PreburnQueue<XUS::XUS>>($t2)), exists<Diem::Preburn<XUS::XUS>>($t2)), Not(Diem::spec_is_currency<XUS::XUS>()))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume ($t5 == (((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t3) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)) || !$ResourceExists($1_Roles_RoleId_$memory, $t4)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 2)) || !$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2)) || $1_Diem_$is_synthetic_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)) || $ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $t2)) || $ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, $t2)) || !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
L4:

    // assume Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists<Roles::RoleId>($t3)), Eq(5, $t6)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t6))), And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 2), Eq(3, $t6))), And(Not(exists<DesignatedDealer::Dealer>($t2)), Eq(5, $t6))), And(Diem::$is_synthetic_currency<XUS::XUS>(), Eq(7, $t6))), And(exists<Diem::PreburnQueue<XUS::XUS>>($t2), Eq(6, $t6))), And(exists<Diem::Preburn<XUS::XUS>>($t2), Eq(1, $t6))), And(Not(Diem::spec_is_currency<XUS::XUS>()), Eq(5, $t6))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume ((((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t3) && $IsEqual'num'(5, $t6)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1) && $IsEqual'num'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t6))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'num'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 2) && $IsEqual'num'(3, $t6))) || (!$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2) && $IsEqual'num'(5, $t6))) || ($1_Diem_$is_synthetic_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(7, $t6))) || ($ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $t2) && $IsEqual'num'(6, $t6))) || ($ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, $t2) && $IsEqual'num'(1, $t6))) || (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(5, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume {:print "$at(10,4809,4847)"} true;
    assume {:print "$track_abort(27,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
L3:

    // modifies global<Diem::PreburnQueue<XUS::XUS>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS'';
        $1_Diem_PreburnQueue'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $t2, $temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS'');
    } else {
        $1_Diem_PreburnQueue'$1_XUS_XUS'_$memory := $ResourceRemove($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $t2);
    }

    // opaque end: DesignatedDealer::add_currency<XUS::XUS>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38

    // label L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
    assume {:print "$at(10,4852,4853)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
L2:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun DesignatedDealer::add_currency_for_test [verification[instantiated_1]] at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
procedure {:timeLimit 40} $1_DesignatedDealer_add_currency_for_test$verify_instantiated_1(_$t0: $signer, _$t1: $signer) returns ()
{
    // function instantiation <XDX::XDX>

    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t0: $signer;
    var $t1: $signer;
    var $temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX'': $1_Diem_PreburnQueue'$1_XDX_XDX';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(10,4722,4853)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume Implies(Diem::$is_SCS_currency<XDX::XDX>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner1), exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<XDX::XDX>(addr3): Diem::$is_SCS_currency<XDX::XDX>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'$1_XDX_XDX'($1_Diem_MintCapability'$1_XDX_XDX'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(Or(exists<Diem::PreburnQueue<XDX::XDX>>(addr1), exists<Diem::Preburn<XDX::XDX>>(addr1)), Roles::spec_has_designated_dealer_role_addr(addr1)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1742:9+220
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> ((($ResourceExists($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, addr1) || $ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, addr1)) ==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::Preburn<XDX::XDX>>(dd_addr): And(Eq<u64>(select Diem::Diem.value(select Diem::Preburn.to_burn(global<Diem::Preburn<XDX::XDX>>(dd_addr))), 0), Not(exists<Diem::PreburnQueue<XDX::XDX>>(dd_addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1754:9+228
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, dd_addr))  ==> (($IsEqual'u64'($value#$1_Diem_Diem'$1_XDX_XDX'($to_burn#$1_Diem_Preburn'$1_XDX_XDX'($ResourceValue($1_Diem_Preburn'$1_XDX_XDX'_$memory, dd_addr))), 0) && !$ResourceExists($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, dd_addr))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::PreburnQueue<XDX::XDX>>(dd_addr): Not(exists<Diem::Preburn<XDX::XDX>>(dd_addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1762:9+155
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, dd_addr))  ==> (!$ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, dd_addr)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<XDX::XDX>>(addr): Diem::spec_is_currency<XDX::XDX>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, addr))  ==> ($1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XDX::XDX>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::Preburn<XDX::XDX>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_Preburn'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_Preburn'$1_XDX_XDX'_$memory, $a_0);
    ($IsValid'$1_Diem_Preburn'$1_XDX_XDX''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::PreburnQueue<XDX::XDX>>(): And(WellFormed($rsc), And(Le(Len<Diem::PreburnWithMetadata<XDX::XDX>>(select Diem::PreburnQueue.preburns($rsc)), 256), forall i: Range(0, Len<Diem::PreburnWithMetadata<XDX::XDX>>(select Diem::PreburnQueue.preburns($rsc))): Gt(select Diem::Diem.value(select Diem::Preburn.to_burn(select Diem::PreburnWithMetadata.preburn(Index(select Diem::PreburnQueue.preburns($rsc), i)))), 0))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, $a_0);
    (($IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''($rsc) && ((LenVec($preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'($rsc)) <= 256) && (var $range_1 := $Range(0, LenVec($preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    (($value#$1_Diem_Diem'$1_XDX_XDX'($to_burn#$1_Diem_Preburn'$1_XDX_XDX'($preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'(ReadVec($preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'($rsc), i)))) > 0))))))))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::Dealer>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+131
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_Dealer'($rsc))));

    // trace_local[dd]($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+1
    assume {:print "$track_local(27,1,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:110:5+1
    assume {:print "$track_local(27,1,1):", $t1} $t1 == $t1;

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:116:9+42
    assume {:print "$at(10,4910,4952)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t1));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume {:print "$at(28,25113,25157)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: DesignatedDealer::add_currency<XDX::XDX>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume {:print "$at(10,4809,4847)"} true;

    // assume Identical($t5, Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists<Roles::RoleId>($t3)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed)), Not(exists<Roles::RoleId>($t4))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 2)), Not(exists<DesignatedDealer::Dealer>($t2))), Diem::$is_synthetic_currency<XDX::XDX>()), exists<Diem::PreburnQueue<XDX::XDX>>($t2)), exists<Diem::Preburn<XDX::XDX>>($t2)), Not(Diem::spec_is_currency<XDX::XDX>()))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume ($t5 == (((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t3) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)) || !$ResourceExists($1_Roles_RoleId_$memory, $t4)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 2)) || !$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2)) || $1_Diem_$is_synthetic_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)) || $ResourceExists($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, $t2)) || $ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, $t2)) || !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
L4:

    // assume Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists<Roles::RoleId>($t3)), Eq(5, $t6)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t6))), And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 2), Eq(3, $t6))), And(Not(exists<DesignatedDealer::Dealer>($t2)), Eq(5, $t6))), And(Diem::$is_synthetic_currency<XDX::XDX>(), Eq(7, $t6))), And(exists<Diem::PreburnQueue<XDX::XDX>>($t2), Eq(6, $t6))), And(exists<Diem::Preburn<XDX::XDX>>($t2), Eq(1, $t6))), And(Not(Diem::spec_is_currency<XDX::XDX>()), Eq(5, $t6))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume ((((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t3) && $IsEqual'num'(5, $t6)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1) && $IsEqual'num'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t6))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'num'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 2) && $IsEqual'num'(3, $t6))) || (!$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2) && $IsEqual'num'(5, $t6))) || ($1_Diem_$is_synthetic_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'num'(7, $t6))) || ($ResourceExists($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, $t2) && $IsEqual'num'(6, $t6))) || ($ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, $t2) && $IsEqual'num'(1, $t6))) || (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'num'(5, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    assume {:print "$at(10,4809,4847)"} true;
    assume {:print "$track_abort(27,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
L3:

    // modifies global<Diem::PreburnQueue<XDX::XDX>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX'';
        $1_Diem_PreburnQueue'$1_XDX_XDX'_$memory := $ResourceUpdate($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, $t2, $temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX'');
    } else {
        $1_Diem_PreburnQueue'$1_XDX_XDX'_$memory := $ResourceRemove($1_Diem_PreburnQueue'$1_XDX_XDX'_$memory, $t2);
    }

    // opaque end: DesignatedDealer::add_currency<XDX::XDX>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:111:9+38

    // label L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
    assume {:print "$at(10,4852,4853)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
L2:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:112:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun DesignatedDealer::exists_at [verification] at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:202:5+84
procedure {:timeLimit 40} $1_DesignatedDealer_exists_at$verify(_$t0: int) returns ($ret0: bool)
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
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:208:17+6
    assume {:print "$at(10,8819,8825)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<DesignatedDealer::Dealer>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:208:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_Dealer'($rsc))));

    // trace_local[dd_addr]($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:202:5+1
    assume {:print "$at(10,8649,8650)"} true;
    assume {:print "$track_local(27,2,0):", $t0} $t0 == $t0;

    // $t1 := exists<DesignatedDealer::Dealer>($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:203:9+6
    assume {:print "$at(10,8704,8710)"} true;
    $t1 := $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:203:9+23
    assume {:print "$track_return(27,2,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:204:5+1
    assume {:print "$at(10,8732,8733)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:207:9+16
    assume {:print "$at(10,8786,8802)"} true;
    assert {:msg "assert_failed(10,8786,8802): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t1, exists<DesignatedDealer::Dealer>($t0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:208:9+42
    assume {:print "$at(10,8811,8853)"} true;
    assert {:msg "assert_failed(10,8811,8853): post-condition does not hold"}
      $IsEqual'bool'($t1, $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t0));

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:208:9+42
    $ret0 := $t1;
    return;

}

// fun DesignatedDealer::publish_designated_dealer_credential [verification] at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
procedure {:timeLimit 40} $1_DesignatedDealer_publish_designated_dealer_credential$verify(_$t0: $signer, _$t1: $signer, _$t2: bool) returns ()
{
    // declare local variables
    var $t3: bool;
    var $t4: int;
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
    var $t15: bool;
    var $t16: int;
    var $t17: int;
    var $t18: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent';
    var $t19: $1_DesignatedDealer_Dealer;
    var $t20: int;
    var $t21: int;
    var $t22: int;
    var $t23: bool;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t27: bool;
    var $t0: $signer;
    var $t1: $signer;
    var $t2: bool;
    var $1_Event_EventHandleGenerator_$modifies: [int]bool;
    var $1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies: [int]bool;
    var $1_Diem_PreburnQueue'#0'_$modifies: [int]bool;
    var $1_DesignatedDealer_Dealer_$modifies: [int]bool;
    var $temp_0'$1_Diem_PreburnQueue'#0'': $1_Diem_PreburnQueue'#0';
    var $temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS'': $1_Diem_PreburnQueue'$1_XUS_XUS';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_Roles_RoleId_$memory#134: $Memory $1_Roles_RoleId;
    var $1_DesignatedDealer_Dealer_$memory#135: $Memory $1_DesignatedDealer_Dealer;
    var $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#136: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $1_Diem_PreburnQueue'$1_XUS_XUS'_$memory#137: $Memory $1_Diem_PreburnQueue'$1_XUS_XUS';
    var $1_Diem_Preburn'$1_XUS_XUS'_$memory#138: $Memory $1_Diem_Preburn'$1_XUS_XUS';
    var $1_Diem_CurrencyInfo'#0'_$memory#139: $Memory $1_Diem_CurrencyInfo'#0';
    var $1_Diem_PreburnQueue'#0'_$memory#140: $Memory $1_Diem_PreburnQueue'#0';
    var $1_Diem_Preburn'#0'_$memory#141: $Memory $1_Diem_Preburn'#0';
    var $1_DesignatedDealer_Dealer_$memory#142: $Memory $1_DesignatedDealer_Dealer;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(10,2456,3072)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume Implies(Diem::$is_SCS_currency<XUS::XUS>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner1), exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume Implies(Diem::$is_SCS_currency<#0>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<#0>>(mint_cap_owner1), exists<Diem::MintCapability<#0>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<XUS::XUS>(addr3): Diem::$is_SCS_currency<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'$1_XUS_XUS'($1_Diem_MintCapability'$1_XUS_XUS'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<#0>(addr3): Diem::$is_SCS_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'#0'($1_Diem_MintCapability'#0'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(Or(exists<Diem::PreburnQueue<XUS::XUS>>(addr1), exists<Diem::Preburn<XUS::XUS>>(addr1)), Roles::spec_has_designated_dealer_role_addr(addr1)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1742:9+220
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> ((($ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, addr1) || $ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, addr1)) ==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1))));

    // assume forall addr1: TypeDomain<address>(): Implies(Or(exists<Diem::PreburnQueue<#0>>(addr1), exists<Diem::Preburn<#0>>(addr1)), Roles::spec_has_designated_dealer_role_addr(addr1)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1742:9+220
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> ((($ResourceExists($1_Diem_PreburnQueue'#0'_$memory, addr1) || $ResourceExists($1_Diem_Preburn'#0'_$memory, addr1)) ==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::Preburn<XUS::XUS>>(dd_addr): And(Eq<u64>(select Diem::Diem.value(select Diem::Preburn.to_burn(global<Diem::Preburn<XUS::XUS>>(dd_addr))), 0), Not(exists<Diem::PreburnQueue<XUS::XUS>>(dd_addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1754:9+228
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, dd_addr))  ==> (($IsEqual'u64'($value#$1_Diem_Diem'$1_XUS_XUS'($to_burn#$1_Diem_Preburn'$1_XUS_XUS'($ResourceValue($1_Diem_Preburn'$1_XUS_XUS'_$memory, dd_addr))), 0) && !$ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, dd_addr))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::Preburn<#0>>(dd_addr): And(Eq<u64>(select Diem::Diem.value(select Diem::Preburn.to_burn(global<Diem::Preburn<#0>>(dd_addr))), 0), Not(exists<Diem::PreburnQueue<#0>>(dd_addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1754:9+228
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_Preburn'#0'_$memory, dd_addr))  ==> (($IsEqual'u64'($value#$1_Diem_Diem'#0'($to_burn#$1_Diem_Preburn'#0'($ResourceValue($1_Diem_Preburn'#0'_$memory, dd_addr))), 0) && !$ResourceExists($1_Diem_PreburnQueue'#0'_$memory, dd_addr))));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::PreburnQueue<XUS::XUS>>(dd_addr): Not(exists<Diem::Preburn<XUS::XUS>>(dd_addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1762:9+155
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, dd_addr))  ==> (!$ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, dd_addr)));

    // assume forall dd_addr: TypeDomain<address>() where exists<Diem::PreburnQueue<#0>>(dd_addr): Not(exists<Diem::Preburn<#0>>(dd_addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1762:9+155
    assume (forall dd_addr: int :: $IsValid'address'(dd_addr) ==> ($ResourceExists($1_Diem_PreburnQueue'#0'_$memory, dd_addr))  ==> (!$ResourceExists($1_Diem_Preburn'#0'_$memory, dd_addr)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<XUS::XUS>>(addr): Diem::spec_is_currency<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, addr))  ==> ($1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<#0>>(addr): Diem::spec_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'#0'_$memory, addr))  ==> ($1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume $IsValid'bool'($t2);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XUS::XUS>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::Preburn<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_Preburn'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_Preburn'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_Diem_Preburn'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::PreburnQueue<XUS::XUS>>(): And(WellFormed($rsc), And(Le(Len<Diem::PreburnWithMetadata<XUS::XUS>>(select Diem::PreburnQueue.preburns($rsc)), 256), forall i: Range(0, Len<Diem::PreburnWithMetadata<XUS::XUS>>(select Diem::PreburnQueue.preburns($rsc))): Gt(select Diem::Diem.value(select Diem::Preburn.to_burn(select Diem::PreburnWithMetadata.preburn(Index(select Diem::PreburnQueue.preburns($rsc), i)))), 0))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''($rsc) && ((LenVec($preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'($rsc)) <= 256) && (var $range_1 := $Range(0, LenVec($preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    (($value#$1_Diem_Diem'$1_XUS_XUS'($to_burn#$1_Diem_Preburn'$1_XUS_XUS'($preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'(ReadVec($preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'($rsc), i)))) > 0))))))))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<#0>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'#0''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'#0'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'#0'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::Preburn<#0>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_Preburn'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_Preburn'#0'_$memory, $a_0);
    ($IsValid'$1_Diem_Preburn'#0''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::PreburnQueue<#0>>(): And(WellFormed($rsc), And(Le(Len<Diem::PreburnWithMetadata<#0>>(select Diem::PreburnQueue.preburns($rsc)), 256), forall i: Range(0, Len<Diem::PreburnWithMetadata<#0>>(select Diem::PreburnQueue.preburns($rsc))): Gt(select Diem::Diem.value(select Diem::Preburn.to_burn(select Diem::PreburnWithMetadata.preburn(Index(select Diem::PreburnQueue.preburns($rsc), i)))), 0))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_PreburnQueue'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_PreburnQueue'#0'_$memory, $a_0);
    (($IsValid'$1_Diem_PreburnQueue'#0''($rsc) && ((LenVec($preburns#$1_Diem_PreburnQueue'#0'($rsc)) <= 256) && (var $range_1 := $Range(0, LenVec($preburns#$1_Diem_PreburnQueue'#0'($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    (($value#$1_Diem_Diem'#0'($to_burn#$1_Diem_Preburn'#0'($preburn#$1_Diem_PreburnWithMetadata'#0'(ReadVec($preburns#$1_Diem_PreburnQueue'#0'($rsc), i)))) > 0))))))))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::Dealer>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_Dealer'($rsc))));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:81:9+42
    assume {:print "$at(10,3153,3195)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t1));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume {:print "$at(28,25113,25157)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume CanModify<DesignatedDealer::Dealer>($t5) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:89:9+33
    assume {:print "$at(10,3573,3606)"} true;
    assume $1_DesignatedDealer_Dealer_$modifies[$t5];

    // assume CanModify<Event::EventHandleGenerator>($t5) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:91:9+54
    assume {:print "$at(10,3656,3710)"} true;
    assume $1_Event_EventHandleGenerator_$modifies[$t5];

    // assume CanModify<Diem::PreburnQueue<#0>>($t5) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:92:9+55
    assume {:print "$at(10,3719,3774)"} true;
    assume $1_Diem_PreburnQueue'#0'_$modifies[$t5];

    // assume CanModify<Diem::PreburnQueue<XUS::XUS>>($t5) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:93:9+50
    assume {:print "$at(10,3783,3833)"} true;
    assume $1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies[$t5];

    // @134 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:93:9+50
    $1_Roles_RoleId_$memory#134 := $1_Roles_RoleId_$memory;

    // @136 := save_mem(Diem::CurrencyInfo<XUS::XUS>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:93:9+50
    $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#136 := $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory;

    // @138 := save_mem(Diem::Preburn<XUS::XUS>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:93:9+50
    $1_Diem_Preburn'$1_XUS_XUS'_$memory#138 := $1_Diem_Preburn'$1_XUS_XUS'_$memory;

    // @137 := save_mem(Diem::PreburnQueue<XUS::XUS>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:93:9+50
    $1_Diem_PreburnQueue'$1_XUS_XUS'_$memory#137 := $1_Diem_PreburnQueue'$1_XUS_XUS'_$memory;

    // @139 := save_mem(Diem::CurrencyInfo<#0>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:93:9+50
    $1_Diem_CurrencyInfo'#0'_$memory#139 := $1_Diem_CurrencyInfo'#0'_$memory;

    // @141 := save_mem(Diem::Preburn<#0>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:93:9+50
    $1_Diem_Preburn'#0'_$memory#141 := $1_Diem_Preburn'#0'_$memory;

    // @140 := save_mem(Diem::PreburnQueue<#0>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:93:9+50
    $1_Diem_PreburnQueue'#0'_$memory#140 := $1_Diem_PreburnQueue'#0'_$memory;

    // @135 := save_mem(DesignatedDealer::Dealer) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:93:9+50
    $1_DesignatedDealer_Dealer_$memory#135 := $1_DesignatedDealer_Dealer_$memory;

    // trace_local[dd]($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+1
    assume {:print "$at(10,2456,2457)"} true;
    assume {:print "$track_local(27,3,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+1
    assume {:print "$track_local(27,3,1):", $t1} $t1 == $t1;

    // trace_local[add_all_currencies]($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+1
    assume {:print "$track_local(27,3,2):", $t2} $t2 == $t2;

    // assume Identical($t8, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:68:9+45
    assume {:print "$at(10,2622,2667)"} true;

    // assume Identical($t9, Or(Or(Not(exists<Roles::RoleId>($t8)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:68:9+45
    assume ($t9 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t8) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)));

    // if ($t9) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:68:9+45
    if ($t9) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:68:9+45
L9:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t8)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 1), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t10))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:68:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t8) && $IsEqual'num'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 1) && $IsEqual'num'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:68:9+45
    assume {:print "$at(10,2622,2667)"} true;
    assume {:print "$track_abort(27,3):", $t10} $t10 == $t10;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:68:9+45
    goto L7;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:68:9+45
L8:

    // opaque end: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:68:9+45

    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume {:print "$at(28,25113,25157)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_designated_dealer($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:69:9+35
    assume {:print "$at(10,2677,2712)"} true;

    // assume Identical($t12, Or(Not(exists<Roles::RoleId>($t11)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t11)), 2))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:69:9+35
    assume ($t12 == (!$ResourceExists($1_Roles_RoleId_$memory, $t11) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t11)), 2)));

    // if ($t12) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:69:9+35
    if ($t12) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:69:9+35
L11:

    // assume Or(And(Not(exists<Roles::RoleId>($t11)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t11)), 2), Eq(3, $t10))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:69:9+35
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t11) && $IsEqual'num'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t11)), 2) && $IsEqual'num'(3, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:69:9+35
    assume {:print "$at(10,2677,2712)"} true;
    assume {:print "$track_abort(27,3):", $t10} $t10 == $t10;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:69:9+35
    goto L7;

    // label L10 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:69:9+35
L10:

    // opaque end: Roles::assert_designated_dealer($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:69:9+35

    // $t13 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:32+22
    assume {:print "$at(10,2745,2767)"} true;

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:32+22
    assume $IsValid'address'($t13);

    // assume Eq<address>($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:32+22
    assume $IsEqual'address'($t13, $1_Signer_spec_address_of($t0));

    // $t13 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:32+22

    // $t14 := exists<DesignatedDealer::Dealer>($t13) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:17+6
    $t14 := $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t13);

    // $t15 := !($t14) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:16+1
    call $t15 := $Not($t14);

    // $t16 := 0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:83+7
    $t16 := 0;
    assume $IsValid'u64'($t16);

    // $t17 := opaque begin: Errors::already_published($t16) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:57+34

    // assume WellFormed($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:57+34
    assume $IsValid'u64'($t17);

    // assume Eq<u64>($t17, 6) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:57+34
    assume $IsEqual'u64'($t17, 6);

    // $t17 := opaque end: Errors::already_published($t16) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:57+34

    // trace_local[tmp#$4]($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:9+83
    assume {:print "$track_local(27,3,4):", $t17} $t17 == $t17;

    // trace_local[tmp#$3]($t15) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:9+83
    assume {:print "$track_local(27,3,3):", $t15} $t15 == $t15;

    // if ($t15) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:9+83
    if ($t15) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:9+83
L1:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:9+83

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:9+83

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:9+83
    assume {:print "$at(10,2722,2805)"} true;
    assume {:print "$track_abort(27,3):", $t17} $t17 == $t17;

    // $t10 := move($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:9+83
    $t10 := $t17;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:70:9+83
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:71:17+2
    assume {:print "$at(10,2823,2825)"} true;
L0:

    // $t18 := Event::new_event_handle<DesignatedDealer::ReceivedMintEvent>($t0) on_abort goto L7 with $t10 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:71:49+46
    call $t18 := $1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(10,2855,2901)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(27,3):", $t10} $t10 == $t10;
        goto L7;
    }

    // $t19 := pack DesignatedDealer::Dealer($t18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:71:21+76
    $t19 := $1_DesignatedDealer_Dealer($t18);

    // assert CanModify<DesignatedDealer::Dealer>($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:71:9+7
    assert {:msg "assert_failed(10,2815,2822): caller does not have permission to modify `DesignatedDealer::Dealer` at given address"}
      $1_DesignatedDealer_Dealer_$modifies[$1_Signer_spec_address_of($t0)];

    // @142 := save_mem(DesignatedDealer::Dealer) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:63:5+616
    // state save for global update invariants
    assume {:print "$at(10,2456,3072)"} true;
    $1_DesignatedDealer_Dealer_$memory#142 := $1_DesignatedDealer_Dealer_$memory;

    // move_to<DesignatedDealer::Dealer>($t19, $t0) on_abort goto L7 with $t10 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:71:9+7
    assume {:print "$at(10,2815,2822)"} true;
    if ($ResourceExists($1_DesignatedDealer_Dealer_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_DesignatedDealer_Dealer_$memory := $ResourceUpdate($1_DesignatedDealer_Dealer_$memory, $1_Signer_spec_address_of($t0), $t19);
    }
    if ($abort_flag) {
        assume {:print "$at(10,2815,2822)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(27,3):", $t10} $t10 == $t10;
        goto L7;
    }

    // assert forall addr: TypeDomain<address>() where exists[@142]<DesignatedDealer::Dealer>(addr): exists<DesignatedDealer::Dealer>(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:218:9+92
    // global invariant at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:218:9+92
    assume {:print "$at(10,9113,9205)"} true;
    assert {:msg "assert_failed(10,9113,9205): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DesignatedDealer_Dealer_$memory#142, addr))  ==> ($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr)));

    // if ($t2) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:72:9+151
    assume {:print "$at(10,2914,3065)"} true;
    if ($t2) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:72:9+151
L3:

    // goto L4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:72:9+151
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:31+2
    assume {:print "$at(10,2970,2972)"} true;
L2:

    // assume Identical($t20, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:116:9+42
    assume {:print "$at(10,4910,4952)"} true;
    assume ($t20 == $1_Signer_spec_address_of($t0));

    // assume Identical($t21, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t21 == $1_Signer_spec_address_of($t1));

    // assume Identical($t22, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume {:print "$at(28,25113,25157)"} true;
    assume ($t22 == $1_Signer_spec_address_of($t0));

    // assert CanModify<Diem::PreburnQueue<XUS::XUS>>($t20) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33
    assume {:print "$at(10,2952,2985)"} true;
    assert {:msg "assert_failed(10,2952,2985): caller does not have permission to modify `Diem::PreburnQueue<XUS::XUS>` at given address"}
      $1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies[$t20];

    // opaque begin: DesignatedDealer::add_currency<XUS::XUS>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33

    // assume Identical($t23, Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists<Roles::RoleId>($t21)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t21)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed)), Not(exists<Roles::RoleId>($t22))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t22)), 2)), Not(exists<DesignatedDealer::Dealer>($t20))), Diem::$is_synthetic_currency<XUS::XUS>()), exists<Diem::PreburnQueue<XUS::XUS>>($t20)), exists<Diem::Preburn<XUS::XUS>>($t20)), Not(Diem::spec_is_currency<XUS::XUS>()))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33
    assume ($t23 == (((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t21) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t21)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)) || !$ResourceExists($1_Roles_RoleId_$memory, $t22)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t22)), 2)) || !$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t20)) || $1_Diem_$is_synthetic_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)) || $ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $t20)) || $ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, $t20)) || !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // if ($t23) goto L13 else goto L12 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33
    if ($t23) { goto L13; } else { goto L12; }

    // label L13 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33
L13:

    // assume Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists<Roles::RoleId>($t21)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t21)), 1), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t10))), And(Not(exists<Roles::RoleId>($t22)), Eq(5, $t10))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t22)), 2), Eq(3, $t10))), And(Not(exists<DesignatedDealer::Dealer>($t20)), Eq(5, $t10))), And(Diem::$is_synthetic_currency<XUS::XUS>(), Eq(7, $t10))), And(exists<Diem::PreburnQueue<XUS::XUS>>($t20), Eq(6, $t10))), And(exists<Diem::Preburn<XUS::XUS>>($t20), Eq(1, $t10))), And(Not(Diem::spec_is_currency<XUS::XUS>()), Eq(5, $t10))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33
    assume ((((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t21) && $IsEqual'num'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t21)), 1) && $IsEqual'num'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t10))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t22) && $IsEqual'num'(5, $t10))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t22)), 2) && $IsEqual'num'(3, $t10))) || (!$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t20) && $IsEqual'num'(5, $t10))) || ($1_Diem_$is_synthetic_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(7, $t10))) || ($ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $t20) && $IsEqual'num'(6, $t10))) || ($ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, $t20) && $IsEqual'num'(1, $t10))) || (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(5, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33
    assume {:print "$at(10,2952,2985)"} true;
    assume {:print "$track_abort(27,3):", $t10} $t10 == $t10;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33
    goto L7;

    // label L12 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33
L12:

    // modifies global<Diem::PreburnQueue<XUS::XUS>>($t20) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS'';
        $1_Diem_PreburnQueue'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $t20, $temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS'');
    } else {
        $1_Diem_PreburnQueue'$1_XUS_XUS'_$memory := $ResourceRemove($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory, $t20);
    }

    // opaque end: DesignatedDealer::add_currency<XUS::XUS>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:13+33

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:73:46+1
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:36+2
    assume {:print "$at(10,3039,3041)"} true;
L4:

    // assume Identical($t24, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:116:9+42
    assume {:print "$at(10,4910,4952)"} true;
    assume ($t24 == $1_Signer_spec_address_of($t0));

    // assume Identical($t25, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t25 == $1_Signer_spec_address_of($t1));

    // assume Identical($t26, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:565:9+44
    assume {:print "$at(28,25113,25157)"} true;
    assume ($t26 == $1_Signer_spec_address_of($t0));

    // assert CanModify<Diem::PreburnQueue<#0>>($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38
    assume {:print "$at(10,3016,3054)"} true;
    assert {:msg "assert_failed(10,3016,3054): caller does not have permission to modify `Diem::PreburnQueue<#0>` at given address"}
      $1_Diem_PreburnQueue'#0'_$modifies[$t24];

    // opaque begin: DesignatedDealer::add_currency<#0>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38

    // assume Identical($t27, Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists<Roles::RoleId>($t25)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t25)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed)), Not(exists<Roles::RoleId>($t26))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t26)), 2)), Not(exists<DesignatedDealer::Dealer>($t24))), Diem::$is_synthetic_currency<#0>()), exists<Diem::PreburnQueue<#0>>($t24)), exists<Diem::Preburn<#0>>($t24)), Not(Diem::spec_is_currency<#0>()))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38
    assume ($t27 == (((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t25) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t25)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)) || !$ResourceExists($1_Roles_RoleId_$memory, $t26)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t26)), 2)) || !$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t24)) || $1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)) || $ResourceExists($1_Diem_PreburnQueue'#0'_$memory, $t24)) || $ResourceExists($1_Diem_Preburn'#0'_$memory, $t24)) || !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // if ($t27) goto L15 else goto L14 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38
    if ($t27) { goto L15; } else { goto L14; }

    // label L15 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38
L15:

    // assume Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists<Roles::RoleId>($t25)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t25)), 1), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t10))), And(Not(exists<Roles::RoleId>($t26)), Eq(5, $t10))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t26)), 2), Eq(3, $t10))), And(Not(exists<DesignatedDealer::Dealer>($t24)), Eq(5, $t10))), And(Diem::$is_synthetic_currency<#0>(), Eq(7, $t10))), And(exists<Diem::PreburnQueue<#0>>($t24), Eq(6, $t10))), And(exists<Diem::Preburn<#0>>($t24), Eq(1, $t10))), And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t10))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38
    assume ((((((((((!$ResourceExists($1_Roles_RoleId_$memory, $t25) && $IsEqual'num'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t25)), 1) && $IsEqual'num'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t10))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t26) && $IsEqual'num'(5, $t10))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t26)), 2) && $IsEqual'num'(3, $t10))) || (!$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t24) && $IsEqual'num'(5, $t10))) || ($1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(7, $t10))) || ($ResourceExists($1_Diem_PreburnQueue'#0'_$memory, $t24) && $IsEqual'num'(6, $t10))) || ($ResourceExists($1_Diem_Preburn'#0'_$memory, $t24) && $IsEqual'num'(1, $t10))) || (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(5, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38
    assume {:print "$at(10,3016,3054)"} true;
    assume {:print "$track_abort(27,3):", $t10} $t10 == $t10;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38
    goto L7;

    // label L14 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38
L14:

    // modifies global<Diem::PreburnQueue<#0>>($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Diem_PreburnQueue'#0'';
        $1_Diem_PreburnQueue'#0'_$memory := $ResourceUpdate($1_Diem_PreburnQueue'#0'_$memory, $t24, $temp_0'$1_Diem_PreburnQueue'#0'');
    } else {
        $1_Diem_PreburnQueue'#0'_$memory := $ResourceRemove($1_Diem_PreburnQueue'#0'_$memory, $t24);
    }

    // opaque end: DesignatedDealer::add_currency<#0>($t0, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:75:13+38

    // label L5 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:76:10+1
    assume {:print "$at(10,3065,3066)"} true;
L5:

    // label L6 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:77:5+1
    assume {:print "$at(10,3071,3072)"} true;
L6:

    // assert Not(Not(exists[@134]<Roles::RoleId>($t6))) at /home/ying/diem/language/diem-framework/modules/Roles.move:546:9+59
    assume {:print "$at(28,24327,24386)"} true;
    assert {:msg "assert_failed(28,24327,24386): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#134, $t6);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@134]<Roles::RoleId>($t6)), 1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:547:9+97
    assume {:print "$at(28,24395,24492)"} true;
    assert {:msg "assert_failed(28,24395,24492): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#134, $t6)), 1);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t1), b1e55ed)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:49:9+108
    assume {:print "$at(9,2057,2165)"} true;
    assert {:msg "assert_failed(9,2057,2165): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453);

    // assert Not(Not(exists[@134]<Roles::RoleId>($t7))) at /home/ying/diem/language/diem-framework/modules/Roles.move:566:9+59
    assume {:print "$at(28,25166,25225)"} true;
    assert {:msg "assert_failed(28,25166,25225): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#134, $t7);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@134]<Roles::RoleId>($t7)), 2)) at /home/ying/diem/language/diem-framework/modules/Roles.move:567:9+95
    assume {:print "$at(28,25234,25329)"} true;
    assert {:msg "assert_failed(28,25234,25329): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#134, $t7)), 2);

    // assert Not(exists[@135]<DesignatedDealer::Dealer>($t5)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:85:9+65
    assume {:print "$at(10,3345,3410)"} true;
    assert {:msg "assert_failed(10,3345,3410): function does not abort under this condition"}
      !$ResourceExists($1_DesignatedDealer_Dealer_$memory#135, $t5);

    // assert Not(And($t2, Diem::$is_synthetic_currency[@136]<XUS::XUS>())) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:128:9+80
    assume {:print "$at(10,5416,5496)"} true;
    assert {:msg "assert_failed(10,5416,5496): function does not abort under this condition"}
      !($t2 && $1_Diem_$is_synthetic_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#136));

    // assert Not(And($t2, exists[@137]<Diem::PreburnQueue<XUS::XUS>>($t5))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:129:9+87
    assume {:print "$at(10,5505,5592)"} true;
    assert {:msg "assert_failed(10,5505,5592): function does not abort under this condition"}
      !($t2 && $ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory#137, $t5));

    // assert Not(And($t2, exists[@138]<Diem::Preburn<XUS::XUS>>($t5))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:130:9+78
    assume {:print "$at(10,5601,5679)"} true;
    assert {:msg "assert_failed(10,5601,5679): function does not abort under this condition"}
      !($t2 && $ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory#138, $t5));

    // assert Not(And($t2, Not(Diem::spec_is_currency[@136]<XUS::XUS>()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1563:9+67
    assume {:print "$at(11,72689,72756)"} true;
    assert {:msg "assert_failed(11,72689,72756): function does not abort under this condition"}
      !($t2 && !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#136));

    // assert Not(And(Not($t2), Diem::$is_synthetic_currency[@139]<#0>())) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:128:9+80
    assume {:print "$at(10,5416,5496)"} true;
    assert {:msg "assert_failed(10,5416,5496): function does not abort under this condition"}
      !(!$t2 && $1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#139));

    // assert Not(And(Not($t2), exists[@140]<Diem::PreburnQueue<#0>>($t5))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:129:9+87
    assume {:print "$at(10,5505,5592)"} true;
    assert {:msg "assert_failed(10,5505,5592): function does not abort under this condition"}
      !(!$t2 && $ResourceExists($1_Diem_PreburnQueue'#0'_$memory#140, $t5));

    // assert Not(And(Not($t2), exists[@141]<Diem::Preburn<#0>>($t5))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:130:9+78
    assume {:print "$at(10,5601,5679)"} true;
    assert {:msg "assert_failed(10,5601,5679): function does not abort under this condition"}
      !(!$t2 && $ResourceExists($1_Diem_Preburn'#0'_$memory#141, $t5));

    // assert Not(And(Not($t2), Not(Diem::spec_is_currency[@139]<#0>()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1563:9+67
    assume {:print "$at(11,72689,72756)"} true;
    assert {:msg "assert_failed(11,72689,72756): function does not abort under this condition"}
      !(!$t2 && !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#139));

    // assert exists<DesignatedDealer::Dealer>($t5) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:90:9+32
    assume {:print "$at(10,3615,3647)"} true;
    assert {:msg "assert_failed(10,3615,3647): post-condition does not hold"}
      $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t5);

    // return () at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:90:9+32
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:77:5+1
    assume {:print "$at(10,3071,3072)"} true;
L7:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists[@134]<Roles::RoleId>($t6)), Neq<u64>(select Roles::RoleId.role_id(global[@134]<Roles::RoleId>($t6)), 1)), Neq<address>(Signer::spec_address_of[]($t1), b1e55ed)), Not(exists[@134]<Roles::RoleId>($t7))), Neq<u64>(select Roles::RoleId.role_id(global[@134]<Roles::RoleId>($t7)), 2)), exists[@135]<DesignatedDealer::Dealer>($t5)), And($t2, Diem::$is_synthetic_currency[@136]<XUS::XUS>())), And($t2, exists[@137]<Diem::PreburnQueue<XUS::XUS>>($t5))), And($t2, exists[@138]<Diem::Preburn<XUS::XUS>>($t5))), And($t2, Not(Diem::spec_is_currency[@136]<XUS::XUS>()))), And(Not($t2), Diem::$is_synthetic_currency[@139]<#0>())), And(Not($t2), exists[@140]<Diem::PreburnQueue<#0>>($t5))), And(Not($t2), exists[@141]<Diem::Preburn<#0>>($t5))), And(Not($t2), Not(Diem::spec_is_currency[@139]<#0>()))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:78:5+762
    assume {:print "$at(10,3077,3839)"} true;
    assert {:msg "assert_failed(10,3077,3839): abort not covered by any of the `aborts_if` clauses"}
      (((((((((((((!$ResourceExists($1_Roles_RoleId_$memory#134, $t6) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#134, $t6)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)) || !$ResourceExists($1_Roles_RoleId_$memory#134, $t7)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#134, $t7)), 2)) || $ResourceExists($1_DesignatedDealer_Dealer_$memory#135, $t5)) || ($t2 && $1_Diem_$is_synthetic_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#136))) || ($t2 && $ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory#137, $t5))) || ($t2 && $ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory#138, $t5))) || ($t2 && !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#136))) || (!$t2 && $1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#139))) || (!$t2 && $ResourceExists($1_Diem_PreburnQueue'#0'_$memory#140, $t5))) || (!$t2 && $ResourceExists($1_Diem_Preburn'#0'_$memory#141, $t5))) || (!$t2 && !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#139)));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists[@134]<Roles::RoleId>($t6)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global[@134]<Roles::RoleId>($t6)), 1), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of[]($t1), b1e55ed), Eq(2, $t10))), And(Not(exists[@134]<Roles::RoleId>($t7)), Eq(5, $t10))), And(Neq<u64>(select Roles::RoleId.role_id(global[@134]<Roles::RoleId>($t7)), 2), Eq(3, $t10))), And(exists[@135]<DesignatedDealer::Dealer>($t5), Eq(6, $t10))), And(And($t2, Diem::$is_synthetic_currency[@136]<XUS::XUS>()), Eq(7, $t10))), And(And($t2, exists[@137]<Diem::PreburnQueue<XUS::XUS>>($t5)), Eq(6, $t10))), And(And($t2, exists[@138]<Diem::Preburn<XUS::XUS>>($t5)), Eq(1, $t10))), And(And($t2, Not(Diem::spec_is_currency[@136]<XUS::XUS>())), Eq(5, $t10))), And(And(Not($t2), Diem::$is_synthetic_currency[@139]<#0>()), Eq(7, $t10))), And(And(Not($t2), exists[@140]<Diem::PreburnQueue<#0>>($t5)), Eq(6, $t10))), And(And(Not($t2), exists[@141]<Diem::Preburn<#0>>($t5)), Eq(1, $t10))), And(And(Not($t2), Not(Diem::spec_is_currency[@139]<#0>())), Eq(5, $t10))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:78:5+762
    assert {:msg "assert_failed(10,3077,3839): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((((((((!$ResourceExists($1_Roles_RoleId_$memory#134, $t6) && $IsEqual'num'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#134, $t6)), 1) && $IsEqual'num'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t10))) || (!$ResourceExists($1_Roles_RoleId_$memory#134, $t7) && $IsEqual'num'(5, $t10))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#134, $t7)), 2) && $IsEqual'num'(3, $t10))) || ($ResourceExists($1_DesignatedDealer_Dealer_$memory#135, $t5) && $IsEqual'num'(6, $t10))) || (($t2 && $1_Diem_$is_synthetic_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#136)) && $IsEqual'num'(7, $t10))) || (($t2 && $ResourceExists($1_Diem_PreburnQueue'$1_XUS_XUS'_$memory#137, $t5)) && $IsEqual'num'(6, $t10))) || (($t2 && $ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory#138, $t5)) && $IsEqual'num'(1, $t10))) || (($t2 && !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#136)) && $IsEqual'num'(5, $t10))) || ((!$t2 && $1_Diem_$is_synthetic_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#139)) && $IsEqual'num'(7, $t10))) || ((!$t2 && $ResourceExists($1_Diem_PreburnQueue'#0'_$memory#140, $t5)) && $IsEqual'num'(6, $t10))) || ((!$t2 && $ResourceExists($1_Diem_Preburn'#0'_$memory#141, $t5)) && $IsEqual'num'(1, $t10))) || ((!$t2 && !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#139)) && $IsEqual'num'(5, $t10)));

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:78:5+762
    $abort_code := $t10;
    $abort_flag := true;
    return;

}

// fun DesignatedDealer::tiered_mint [verification] at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
procedure {:timeLimit 40} $1_DesignatedDealer_tiered_mint$verify(_$t0: $signer, _$t1: int, _$t2: int, _$t3: int) returns ($ret0: $1_Diem_Diem'#0')
{
    // declare local variables
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: $1_Diem_CurrencyInfo'#0';
    var $t9: int;
    var $t10: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent';
    var $t11: $1_DesignatedDealer_ReceivedMintEvent;
    var $t12: $1_Diem_CurrencyInfo'#0';
    var $t13: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t14: $1_Diem_MintEvent;
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
    var $t25: bool;
    var $t26: $1_DesignatedDealer_TierInfo'#0';
    var $t27: int;
    var $t28: int;
    var $t29: Vec (int);
    var $t30: $Mutation ($1_DesignatedDealer_Dealer);
    var $t31: $Mutation ($1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent');
    var $t32: Vec (int);
    var $t33: bool;
    var $t34: $1_DesignatedDealer_ReceivedMintEvent;
    var $t35: $1_Diem_CurrencyInfo'#0';
    var $t36: $1_Diem_Diem'#0';
    var $t37: $1_Diem_CurrencyInfo'#0';
    var $t0: $signer;
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $1_Diem_CurrencyInfo'#0'_$modifies: [int]bool;
    var $1_DesignatedDealer_Dealer_$modifies: [int]bool;
    var $1_DesignatedDealer_TierInfo'#0'_$modifies: [int]bool;
    var $temp_0'$1_Diem_Diem'#0'': $1_Diem_Diem'#0';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_Diem_MintCapability'#0'_$memory#130: $Memory $1_Diem_MintCapability'#0';
    var $1_Roles_RoleId_$memory#131: $Memory $1_Roles_RoleId;
    var $1_DesignatedDealer_Dealer_$memory#132: $Memory $1_DesignatedDealer_Dealer;
    var $1_Diem_CurrencyInfo'#0'_$memory#133: $Memory $1_Diem_CurrencyInfo'#0';
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    assume IsEmptyVec(p#$Mutation($t30));
    assume IsEmptyVec(p#$Mutation($t31));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(10,5691,6930)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall mint_cap_owner: TypeDomain<address>() where exists<Diem::MintCapability<#0>>(mint_cap_owner): Roles::spec_has_treasury_compliance_role_addr(mint_cap_owner) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1596:9+197
    assume (forall mint_cap_owner: int :: $IsValid'address'(mint_cap_owner) ==> ($ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner))  ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, mint_cap_owner)));

    // assume Implies(Diem::$is_SCS_currency<#0>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<#0>>(mint_cap_owner1), exists<Diem::MintCapability<#0>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<#0>(addr3): Diem::$is_SCS_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'#0'($1_Diem_MintCapability'#0'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<#0>>(addr): Diem::spec_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'#0'_$memory, addr))  ==> ($1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume {:print "$at(10,7586,7592)"} true;
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume $IsValid'address'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume $IsValid'u64'($t3);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<#0>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'#0''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'#0'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'#0'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::MintCapability<#0>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_MintCapability'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_MintCapability'#0'_$memory, $a_0);
    ($IsValid'$1_Diem_MintCapability'#0''($rsc))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::Dealer>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_Dealer'($rsc))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::TierInfo<#0>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_TierInfo'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_TierInfo'#0'_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_TierInfo'#0''($rsc))));

    // assume Identical($t8, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:174:9+72
    assume {:print "$at(10,7406,7478)"} true;
    assume ($t8 == $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816));

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // assume Identical($t10, select DesignatedDealer::Dealer.mint_event_handle(global<DesignatedDealer::Dealer>($t2))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:192:9+55
    assume {:print "$at(10,8319,8374)"} true;
    assume ($t10 == $mint_event_handle#$1_DesignatedDealer_Dealer($ResourceValue($1_DesignatedDealer_Dealer_$memory, $t2)));

    // assume Identical($t11, pack DesignatedDealer::ReceivedMintEvent(Diem::spec_currency_code<#0>(), $t2, $t1)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:193:9+167
    assume {:print "$at(10,8383,8550)"} true;
    assume ($t11 == $1_DesignatedDealer_ReceivedMintEvent($1_Diem_spec_currency_code'#0'($1_Diem_CurrencyInfo'#0'_$memory), $t2, $t1));

    // assume Identical($t12, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:460:9+66
    assume {:print "$at(11,22075,22141)"} true;
    assume ($t12 == $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816));

    // assume Identical($t13, select Diem::CurrencyInfo.mint_events($t12)) at /home/ying/diem/language/diem-framework/modules/Diem.move:461:9+39
    assume {:print "$at(11,22150,22189)"} true;
    assume ($t13 == $mint_events#$1_Diem_CurrencyInfo'#0'($t12));

    // assume Identical($t14, pack Diem::MintEvent($t1, select Diem::CurrencyInfo.currency_code($t12))) at /home/ying/diem/language/diem-framework/modules/Diem.move:462:9+114
    assume {:print "$at(11,22198,22312)"} true;
    assume ($t14 == $1_Diem_MintEvent($t1, $currency_code#$1_Diem_CurrencyInfo'#0'($t12)));

    // assume CanModify<DesignatedDealer::Dealer>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:168:9+33
    assume {:print "$at(10,7076,7109)"} true;
    assume $1_DesignatedDealer_Dealer_$modifies[$t2];

    // assume CanModify<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:170:9+61
    assume {:print "$at(10,7159,7220)"} true;
    assume $1_Diem_CurrencyInfo'#0'_$modifies[173345816];

    // assume CanModify<DesignatedDealer::TierInfo<#0>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    assume {:print "$at(10,7298,7343)"} true;
    assume $1_DesignatedDealer_TierInfo'#0'_$modifies[$t2];

    // @131 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_Roles_RoleId_$memory#131 := $1_Roles_RoleId_$memory;

    // @133 := save_mem(Diem::CurrencyInfo<#0>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_Diem_CurrencyInfo'#0'_$memory#133 := $1_Diem_CurrencyInfo'#0'_$memory;

    // @130 := save_mem(Diem::MintCapability<#0>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_Diem_MintCapability'#0'_$memory#130 := $1_Diem_MintCapability'#0'_$memory;

    // @132 := save_mem(DesignatedDealer::Dealer) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_DesignatedDealer_Dealer_$memory#132 := $1_DesignatedDealer_Dealer_$memory;

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$at(10,5691,5692)"} true;
    assume {:print "$track_local(27,4,0):", $t0} $t0 == $t0;

    // trace_local[amount]($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$track_local(27,4,1):", $t1} $t1 == $t1;

    // trace_local[dd_addr]($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$track_local(27,4,2):", $t2} $t2 == $t2;

    // trace_local[_tier_index]($t3) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$track_local(27,4,3):", $t3} $t3 == $t3;

    // assume Identical($t15, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t15 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume {:print "$at(10,6023,6068)"} true;

    // assume Identical($t16, Or(Or(Not(exists<Roles::RoleId>($t15)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t15)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume ($t16 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t15) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t15)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t16) goto L10 else goto L9 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    if ($t16) { goto L10; } else { goto L9; }

    // label L10 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
L10:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t15)), Eq(5, $t17)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t15)), 1), Eq(3, $t17))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t17))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t15) && $IsEqual'num'(5, $t17)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t15)), 1) && $IsEqual'num'(3, $t17))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t17)));

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume {:print "$at(10,6023,6068)"} true;
    assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    goto L8;

    // label L9 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
L9:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45

    // $t18 := 0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:25+1
    assume {:print "$at(10,6094,6095)"} true;
    $t18 := 0;
    assume $IsValid'u64'($t18);

    // $t19 := >($t1, $t18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:23+1
    call $t19 := $Gt($t1, $t18);

    // $t20 := 4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:53+20
    $t20 := 4;
    assume $IsValid'u64'($t20);

    // $t21 := opaque begin: Errors::invalid_argument($t20) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46

    // assume WellFormed($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46
    assume $IsValid'u64'($t21);

    // assume Eq<u64>($t21, 7) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46
    assume $IsEqual'u64'($t21, 7);

    // $t21 := opaque end: Errors::invalid_argument($t20) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46

    // trace_local[tmp#$5]($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    assume {:print "$track_local(27,4,5):", $t21} $t21 == $t21;

    // trace_local[tmp#$4]($t19) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    assume {:print "$track_local(27,4,4):", $t19} $t19 == $t19;

    // if ($t19) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    if ($t19) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66

    // trace_abort($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    assume {:print "$at(10,6078,6144)"} true;
    assume {:print "$track_abort(27,4):", $t21} $t21 == $t21;

    // $t17 := move($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    $t17 := $t21;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    goto L8;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:26+7
    assume {:print "$at(10,6171,6178)"} true;
L0:

    // $t22 := opaque begin: DesignatedDealer::exists_at($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18
    assume $IsValid'bool'($t22);

    // assume Eq<bool>($t22, exists<DesignatedDealer::Dealer>($t2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18
    assume $IsEqual'bool'($t22, $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2));

    // $t22 := opaque end: DesignatedDealer::exists_at($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:58+7
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := opaque begin: Errors::not_published($t23) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30

    // assume WellFormed($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30
    assume $IsValid'u64'($t24);

    // assume Eq<u64>($t24, 5) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30
    assume $IsEqual'u64'($t24, 5);

    // $t24 := opaque end: Errors::not_published($t23) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30

    // trace_local[tmp#$7]($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    assume {:print "$track_local(27,4,7):", $t24} $t24 == $t24;

    // trace_local[tmp#$6]($t22) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    assume {:print "$track_local(27,4,6):", $t22} $t22 == $t22;

    // if ($t22) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    if ($t22) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58

    // trace_abort($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    assume {:print "$at(10,6154,6212)"} true;
    assume {:print "$track_abort(27,4):", $t24} $t24 == $t24;

    // $t17 := move($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    $t17 := $t24;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    goto L8;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:40+7
    assume {:print "$at(10,6395,6402)"} true;
L2:

    // $t25 := exists<DesignatedDealer::TierInfo<#0>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:13+6
    $t25 := $ResourceExists($1_DesignatedDealer_TierInfo'#0'_$memory, $t2);

    // if ($t25) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:9+167
    if ($t25) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:9+167
L5:

    // goto L6 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:9+167
    goto L6;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:106+7
    assume {:print "$at(10,6512,6519)"} true;
L4:

    // assert CanModify<DesignatedDealer::TierInfo<#0>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:76+9
    assert {:msg "assert_failed(10,6482,6491): caller does not have permission to modify `DesignatedDealer::TierInfo<#0>` at given address"}
      $1_DesignatedDealer_TierInfo'#0'_$modifies[$t2];

    // $t26 := move_from<DesignatedDealer::TierInfo<#0>>($t2) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:76+9
    if (!$ResourceExists($1_DesignatedDealer_TierInfo'#0'_$memory, $t2)) {
        call $ExecFailureAbort();
    } else {
        $t26 := $ResourceValue($1_DesignatedDealer_TierInfo'#0'_$memory, $t2);
        $1_DesignatedDealer_TierInfo'#0'_$memory := $ResourceRemove($1_DesignatedDealer_TierInfo'#0'_$memory, $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(10,6482,6491)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // ($t27, $t28, $t29) := unpack DesignatedDealer::TierInfo<#0>($t26) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:17+56
    $t27 := $window_start#$1_DesignatedDealer_TierInfo'#0'($t26);
    $t28 := $window_inflow#$1_DesignatedDealer_TierInfo'#0'($t26);
    $t29 := $tiers#$1_DesignatedDealer_TierInfo'#0'($t26);

    // destroy($t29) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:70+1

    // destroy($t28) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:60+1

    // destroy($t27) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:42+1

    // label L6 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:44+7
    assume {:print "$at(10,6657,6664)"} true;
L6:

    // assert CanModify<DesignatedDealer::Dealer>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:18+17
    assert {:msg "assert_failed(10,6631,6648): caller does not have permission to modify `DesignatedDealer::Dealer` at given address"}
      $1_DesignatedDealer_Dealer_$modifies[$t2];

    // $t30 := borrow_global<DesignatedDealer::Dealer>($t2) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:18+17
    if (!$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2)) {
        call $ExecFailureAbort();
    } else {
        $t30 := $Mutation($Global($t2), EmptyVec(), $ResourceValue($1_DesignatedDealer_Dealer_$memory, $t2));
    }
    if ($abort_flag) {
        assume {:print "$at(10,6631,6648)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // $t31 := borrow_field<DesignatedDealer::Dealer>.mint_event_handle($t30) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:13+57
    $t31 := $ChildMutation($t30, 0, $mint_event_handle#$1_DesignatedDealer_Dealer($Dereference($t30)));

    // $t32 := opaque begin: Diem::currency_code<#0>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume {:print "$at(10,6748,6779)"} true;

    // assume Identical($t33, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume ($t33 == !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory));

    // if ($t33) goto L13 else goto L11 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    if ($t33) { goto L13; } else { goto L11; }

    // label L12 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
L12:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t17)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(5, $t17));

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume {:print "$at(10,6748,6779)"} true;
    assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    goto L8;

    // label L11 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
L11:

    // assume WellFormed($t32) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume $IsValid'vec'u8''($t32);

    // assume Eq<vector<u8>>($t32, Diem::spec_currency_code<#0>()) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume $IsEqual'vec'u8''($t32, $1_Diem_spec_currency_code'#0'($1_Diem_CurrencyInfo'#0'_$memory));

    // $t32 := opaque end: Diem::currency_code<#0>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31

    // $t34 := pack DesignatedDealer::ReceivedMintEvent($t32, $t2, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:154:13+166
    assume {:print "$at(10,6697,6863)"} true;
    $t34 := $1_DesignatedDealer_ReceivedMintEvent($t32, $t2, $t1);

    // Event::emit_event<DesignatedDealer::ReceivedMintEvent>($t31, $t34) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:152:9+298
    assume {:print "$at(10,6576,6874)"} true;
    call $t31 := $1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'($t31, $t34);
    if ($abort_flag) {
        assume {:print "$at(10,6576,6874)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // assume Identical($t35, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:452:9+66
    assume {:print "$at(11,21634,21700)"} true;
    assume ($t35 == $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816));

    // assert CanModify<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:160:9+40
    assume {:print "$at(10,6884,6924)"} true;
    assert {:msg "assert_failed(10,6884,6924): caller does not have permission to modify `Diem::CurrencyInfo<#0>` at given address"}
      $1_Diem_CurrencyInfo'#0'_$modifies[173345816];

    // $t36 := Diem::mint<#0>($t0, $t1) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:160:9+40
    call $t36 := $1_Diem_mint'#0'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(10,6884,6924)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // trace_return[0]($t36) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:160:9+40
    assume {:print "$track_return(27,4,0):", $t36} $t36 == $t36;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:161:5+1
    assume {:print "$at(10,6929,6930)"} true;
L7:

    // assume Identical($t37, global<Diem::CurrencyInfo<#0>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:175:9+82
    assume {:print "$at(10,7487,7569)"} true;
    assume ($t37 == $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816));

    // assert Not(Eq<u64>($t1, 0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:184:9+52
    assume {:print "$at(10,7937,7989)"} true;
    assert {:msg "assert_failed(10,7937,7989): function does not abort under this condition"}
      !$IsEqual'u64'($t1, 0);

    // assert Not(Not(exists[@130]<Diem::MintCapability<#0>>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:186:9+120
    assume {:print "$at(10,8032,8152)"} true;
    assert {:msg "assert_failed(10,8032,8152): function does not abort under this condition"}
      !!$ResourceExists($1_Diem_MintCapability'#0'_$memory#130, $1_Signer_spec_address_of($t0));

    // assert Not(Not(exists[@131]<Roles::RoleId>($t9))) at /home/ying/diem/language/diem-framework/modules/Roles.move:546:9+59
    assume {:print "$at(28,24327,24386)"} true;
    assert {:msg "assert_failed(28,24327,24386): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#131, $t9);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:547:9+97
    assume {:print "$at(28,24395,24492)"} true;
    assert {:msg "assert_failed(28,24395,24492): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 1);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:49:9+108
    assume {:print "$at(9,2057,2165)"} true;
    assert {:msg "assert_failed(9,2057,2165): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453);

    // assert Not(Not(exists[@132]<DesignatedDealer::Dealer>($t2))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:21:9+62
    assume {:print "$at(10,712,774)"} true;
    assert {:msg "assert_failed(10,712,774): function does not abort under this condition"}
      !!$ResourceExists($1_DesignatedDealer_Dealer_$memory#132, $t2);

    // assert Not(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info[@133]<#0>()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:446:9+78
    assume {:print "$at(11,21338,21416)"} true;
    assert {:msg "assert_failed(11,21338,21416): function does not abort under this condition"}
      !!$can_mint#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory#133));

    // assert Not(Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info[@133]<#0>()), $t1), MaxU128())) at /home/ying/diem/language/diem-framework/modules/Diem.move:447:9+102
    assume {:print "$at(11,21425,21527)"} true;
    assert {:msg "assert_failed(11,21425,21527): function does not abort under this condition"}
      !(($total_value#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory#133)) + $t1) > $MAX_U128);

    // assert Not(Not(Diem::spec_is_currency[@133]<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1563:9+67
    assume {:print "$at(11,72689,72756)"} true;
    assert {:msg "assert_failed(11,72689,72756): function does not abort under this condition"}
      !!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#133);

    // assert exists<DesignatedDealer::Dealer>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:169:9+32
    assume {:print "$at(10,7118,7150)"} true;
    assert {:msg "assert_failed(10,7118,7150): post-condition does not hold"}
      $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2);

    // assert exists<Diem::CurrencyInfo<#0>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:171:9+60
    assume {:print "$at(10,7229,7289)"} true;
    assert {:msg "assert_failed(10,7229,7289): post-condition does not hold"}
      $ResourceExists($1_Diem_CurrencyInfo'#0'_$memory, 173345816);

    // assert Not(exists<DesignatedDealer::TierInfo<#0>>($t2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:173:9+45
    assume {:print "$at(10,7352,7397)"} true;
    assert {:msg "assert_failed(10,7352,7397): post-condition does not hold"}
      !$ResourceExists($1_DesignatedDealer_TierInfo'#0'_$memory, $t2);

    // assert Eq<u64>(select Diem::Diem.value($t36), $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:9+31
    assume {:print "$at(10,7578,7609)"} true;
    assert {:msg "assert_failed(10,7578,7609): post-condition does not hold"}
      $IsEqual'u64'($value#$1_Diem_Diem'#0'($t36), $t1);

    // assert Eq<Diem::CurrencyInfo<#0>>($t37, update Diem::CurrencyInfo.total_value<Diem::CurrencyInfo<#0>>($t8, Add(select Diem::CurrencyInfo.total_value($t8), $t1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:177:9+107
    assume {:print "$at(10,7618,7725)"} true;
    assert {:msg "assert_failed(10,7618,7725): post-condition does not hold"}
      $IsEqual'$1_Diem_CurrencyInfo'#0''($t37, $Update'$1_Diem_CurrencyInfo'#0''_total_value($t8, ($total_value#$1_Diem_CurrencyInfo'#0'($t8) + $t1)));

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), $t11, $t10)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:198:9+20
    assume {:print "$at(10,8559,8579)"} true;
    assert {:msg "assert_failed(10,8559,8579): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($EmptyEventStore, $t10, $t11); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), $t11, $t10), $t14, $t13, Not(select Diem::CurrencyInfo.is_synthetic($t12)))) at /home/ying/diem/language/diem-framework/modules/Diem.move:466:9+51
    assume {:print "$at(11,22321,22372)"} true;
    assert {:msg "assert_failed(11,22321,22372): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_Diem_MintEvent'($ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($EmptyEventStore, $t10, $t11), $t13, $t14, !$is_synthetic#$1_Diem_CurrencyInfo'#0'($t12)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), $t11, $t10), $t14, $t13, Not(select Diem::CurrencyInfo.is_synthetic($t12)))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    assume {:print "$at(10,6935,7731)"} true;
    assert {:msg "assert_failed(10,6935,7731): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_Diem_MintEvent'($ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($EmptyEventStore, $t10, $t11), $t13, $t14, !$is_synthetic#$1_Diem_CurrencyInfo'#0'($t12)); $EventStore__is_subset(actual, expected)));

    // return $t36 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    $ret0 := $t36;
    return;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:161:5+1
    assume {:print "$at(10,6929,6930)"} true;
L8:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Eq<u64>($t1, 0), Not(exists[@130]<Diem::MintCapability<#0>>(Signer::spec_address_of[]($t0)))), Not(exists[@131]<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 1)), Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)), Not(exists[@132]<DesignatedDealer::Dealer>($t2))), Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info[@133]<#0>()))), Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info[@133]<#0>()), $t1), MaxU128())), Not(Diem::spec_is_currency[@133]<#0>())) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    assume {:print "$at(10,6935,7731)"} true;
    assert {:msg "assert_failed(10,6935,7731): abort not covered by any of the `aborts_if` clauses"}
      (((((((($IsEqual'u64'($t1, 0) || !$ResourceExists($1_Diem_MintCapability'#0'_$memory#130, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory#131, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)) || !$ResourceExists($1_DesignatedDealer_Dealer_$memory#132, $t2)) || !$can_mint#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory#133))) || (($total_value#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory#133)) + $t1) > $MAX_U128)) || !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#133));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(And(Eq<u64>($t1, 0), Eq(7, $t17)), And(Not(exists[@130]<Diem::MintCapability<#0>>(Signer::spec_address_of[]($t0))), Eq(4, $t17))), And(Not(exists[@131]<Roles::RoleId>($t9)), Eq(5, $t17))), And(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 1), Eq(3, $t17))), And(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed), Eq(2, $t17))), And(Not(exists[@132]<DesignatedDealer::Dealer>($t2)), Eq(5, $t17))), And(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info[@133]<#0>())), Eq(1, $t17))), And(Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info[@133]<#0>()), $t1), MaxU128()), Eq(8, $t17))), And(Not(Diem::spec_is_currency[@133]<#0>()), Eq(5, $t17))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    assert {:msg "assert_failed(10,6935,7731): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((($IsEqual'u64'($t1, 0) && $IsEqual'num'(7, $t17)) || (!$ResourceExists($1_Diem_MintCapability'#0'_$memory#130, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(4, $t17))) || (!$ResourceExists($1_Roles_RoleId_$memory#131, $t9) && $IsEqual'num'(5, $t17))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 1) && $IsEqual'num'(3, $t17))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t17))) || (!$ResourceExists($1_DesignatedDealer_Dealer_$memory#132, $t2) && $IsEqual'num'(5, $t17))) || (!$can_mint#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory#133)) && $IsEqual'num'(1, $t17))) || ((($total_value#$1_Diem_CurrencyInfo'#0'($1_Diem_spec_currency_info'#0'($1_Diem_CurrencyInfo'#0'_$memory#133)) + $t1) > $MAX_U128) && $IsEqual'num'(8, $t17))) || (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#133) && $IsEqual'num'(5, $t17)));

    // abort($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    $abort_code := $t17;
    $abort_flag := true;
    return;

    // label L13 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L13:

    // destroy($t31) at <internal>:1:1+10

    // goto L12 at <internal>:1:1+10
    goto L12;

}

// fun DesignatedDealer::tiered_mint [verification[instantiated_0]] at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
procedure {:timeLimit 40} $1_DesignatedDealer_tiered_mint$verify_instantiated_0(_$t0: $signer, _$t1: int, _$t2: int, _$t3: int) returns ($ret0: $1_Diem_Diem'$1_XUS_XUS')
{
    // function instantiation <XUS::XUS>

    // declare local variables
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $t9: int;
    var $t10: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent';
    var $t11: $1_DesignatedDealer_ReceivedMintEvent;
    var $t12: $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $t13: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t14: $1_Diem_MintEvent;
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
    var $t25: bool;
    var $t26: $1_DesignatedDealer_TierInfo'$1_XUS_XUS';
    var $t27: int;
    var $t28: int;
    var $t29: Vec (int);
    var $t30: $Mutation ($1_DesignatedDealer_Dealer);
    var $t31: $Mutation ($1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent');
    var $t32: Vec (int);
    var $t33: bool;
    var $t34: $1_DesignatedDealer_ReceivedMintEvent;
    var $t35: $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $t36: $1_Diem_Diem'$1_XUS_XUS';
    var $t37: $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $t0: $signer;
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies: [int]bool;
    var $1_DesignatedDealer_Dealer_$modifies: [int]bool;
    var $1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies: [int]bool;
    var $temp_0'$1_Diem_Diem'$1_XUS_XUS'': $1_Diem_Diem'$1_XUS_XUS';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_Diem_MintCapability'$1_XUS_XUS'_$memory#130: $Memory $1_Diem_MintCapability'$1_XUS_XUS';
    var $1_Roles_RoleId_$memory#131: $Memory $1_Roles_RoleId;
    var $1_DesignatedDealer_Dealer_$memory#132: $Memory $1_DesignatedDealer_Dealer;
    var $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS';
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    assume IsEmptyVec(p#$Mutation($t30));
    assume IsEmptyVec(p#$Mutation($t31));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(10,5691,6930)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall mint_cap_owner: TypeDomain<address>() where exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner): Roles::spec_has_treasury_compliance_role_addr(mint_cap_owner) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1596:9+197
    assume (forall mint_cap_owner: int :: $IsValid'address'(mint_cap_owner) ==> ($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner))  ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, mint_cap_owner)));

    // assume Implies(Diem::$is_SCS_currency<XUS::XUS>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner1), exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<XUS::XUS>(addr3): Diem::$is_SCS_currency<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'$1_XUS_XUS'($1_Diem_MintCapability'$1_XUS_XUS'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<XUS::XUS>>(addr): Diem::spec_is_currency<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, addr))  ==> ($1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume {:print "$at(10,7586,7592)"} true;
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume $IsValid'address'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume $IsValid'u64'($t3);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XUS::XUS>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::MintCapability<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_Diem_MintCapability'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::Dealer>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_Dealer'($rsc))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::TierInfo<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''($rsc))));

    // assume Identical($t8, global<Diem::CurrencyInfo<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:174:9+72
    assume {:print "$at(10,7406,7478)"} true;
    assume ($t8 == $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816));

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // assume Identical($t10, select DesignatedDealer::Dealer.mint_event_handle(global<DesignatedDealer::Dealer>($t2))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:192:9+55
    assume {:print "$at(10,8319,8374)"} true;
    assume ($t10 == $mint_event_handle#$1_DesignatedDealer_Dealer($ResourceValue($1_DesignatedDealer_Dealer_$memory, $t2)));

    // assume Identical($t11, pack DesignatedDealer::ReceivedMintEvent(Diem::spec_currency_code<XUS::XUS>(), $t2, $t1)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:193:9+167
    assume {:print "$at(10,8383,8550)"} true;
    assume ($t11 == $1_DesignatedDealer_ReceivedMintEvent($1_Diem_spec_currency_code'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory), $t2, $t1));

    // assume Identical($t12, global<Diem::CurrencyInfo<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:460:9+66
    assume {:print "$at(11,22075,22141)"} true;
    assume ($t12 == $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816));

    // assume Identical($t13, select Diem::CurrencyInfo.mint_events($t12)) at /home/ying/diem/language/diem-framework/modules/Diem.move:461:9+39
    assume {:print "$at(11,22150,22189)"} true;
    assume ($t13 == $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'($t12));

    // assume Identical($t14, pack Diem::MintEvent($t1, select Diem::CurrencyInfo.currency_code($t12))) at /home/ying/diem/language/diem-framework/modules/Diem.move:462:9+114
    assume {:print "$at(11,22198,22312)"} true;
    assume ($t14 == $1_Diem_MintEvent($t1, $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'($t12)));

    // assume CanModify<DesignatedDealer::Dealer>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:168:9+33
    assume {:print "$at(10,7076,7109)"} true;
    assume $1_DesignatedDealer_Dealer_$modifies[$t2];

    // assume CanModify<Diem::CurrencyInfo<XUS::XUS>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:170:9+61
    assume {:print "$at(10,7159,7220)"} true;
    assume $1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies[173345816];

    // assume CanModify<DesignatedDealer::TierInfo<XUS::XUS>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    assume {:print "$at(10,7298,7343)"} true;
    assume $1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies[$t2];

    // @131 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_Roles_RoleId_$memory#131 := $1_Roles_RoleId_$memory;

    // @133 := save_mem(Diem::CurrencyInfo<XUS::XUS>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133 := $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory;

    // @130 := save_mem(Diem::MintCapability<XUS::XUS>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_Diem_MintCapability'$1_XUS_XUS'_$memory#130 := $1_Diem_MintCapability'$1_XUS_XUS'_$memory;

    // @132 := save_mem(DesignatedDealer::Dealer) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_DesignatedDealer_Dealer_$memory#132 := $1_DesignatedDealer_Dealer_$memory;

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$at(10,5691,5692)"} true;
    assume {:print "$track_local(27,4,0):", $t0} $t0 == $t0;

    // trace_local[amount]($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$track_local(27,4,1):", $t1} $t1 == $t1;

    // trace_local[dd_addr]($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$track_local(27,4,2):", $t2} $t2 == $t2;

    // trace_local[_tier_index]($t3) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$track_local(27,4,3):", $t3} $t3 == $t3;

    // assume Identical($t15, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t15 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume {:print "$at(10,6023,6068)"} true;

    // assume Identical($t16, Or(Or(Not(exists<Roles::RoleId>($t15)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t15)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume ($t16 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t15) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t15)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t16) goto L10 else goto L9 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    if ($t16) { goto L10; } else { goto L9; }

    // label L10 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
L10:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t15)), Eq(5, $t17)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t15)), 1), Eq(3, $t17))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t17))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t15) && $IsEqual'num'(5, $t17)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t15)), 1) && $IsEqual'num'(3, $t17))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t17)));

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume {:print "$at(10,6023,6068)"} true;
    assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    goto L8;

    // label L9 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
L9:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45

    // $t18 := 0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:25+1
    assume {:print "$at(10,6094,6095)"} true;
    $t18 := 0;
    assume $IsValid'u64'($t18);

    // $t19 := >($t1, $t18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:23+1
    call $t19 := $Gt($t1, $t18);

    // $t20 := 4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:53+20
    $t20 := 4;
    assume $IsValid'u64'($t20);

    // $t21 := opaque begin: Errors::invalid_argument($t20) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46

    // assume WellFormed($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46
    assume $IsValid'u64'($t21);

    // assume Eq<u64>($t21, 7) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46
    assume $IsEqual'u64'($t21, 7);

    // $t21 := opaque end: Errors::invalid_argument($t20) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46

    // trace_local[tmp#$5]($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    assume {:print "$track_local(27,4,5):", $t21} $t21 == $t21;

    // trace_local[tmp#$4]($t19) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    assume {:print "$track_local(27,4,4):", $t19} $t19 == $t19;

    // if ($t19) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    if ($t19) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66

    // trace_abort($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    assume {:print "$at(10,6078,6144)"} true;
    assume {:print "$track_abort(27,4):", $t21} $t21 == $t21;

    // $t17 := move($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    $t17 := $t21;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    goto L8;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:26+7
    assume {:print "$at(10,6171,6178)"} true;
L0:

    // $t22 := opaque begin: DesignatedDealer::exists_at($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18
    assume $IsValid'bool'($t22);

    // assume Eq<bool>($t22, exists<DesignatedDealer::Dealer>($t2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18
    assume $IsEqual'bool'($t22, $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2));

    // $t22 := opaque end: DesignatedDealer::exists_at($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:58+7
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := opaque begin: Errors::not_published($t23) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30

    // assume WellFormed($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30
    assume $IsValid'u64'($t24);

    // assume Eq<u64>($t24, 5) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30
    assume $IsEqual'u64'($t24, 5);

    // $t24 := opaque end: Errors::not_published($t23) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30

    // trace_local[tmp#$7]($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    assume {:print "$track_local(27,4,7):", $t24} $t24 == $t24;

    // trace_local[tmp#$6]($t22) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    assume {:print "$track_local(27,4,6):", $t22} $t22 == $t22;

    // if ($t22) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    if ($t22) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58

    // trace_abort($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    assume {:print "$at(10,6154,6212)"} true;
    assume {:print "$track_abort(27,4):", $t24} $t24 == $t24;

    // $t17 := move($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    $t17 := $t24;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    goto L8;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:40+7
    assume {:print "$at(10,6395,6402)"} true;
L2:

    // $t25 := exists<DesignatedDealer::TierInfo<XUS::XUS>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:13+6
    $t25 := $ResourceExists($1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory, $t2);

    // if ($t25) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:9+167
    if ($t25) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:9+167
L5:

    // goto L6 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:9+167
    goto L6;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:106+7
    assume {:print "$at(10,6512,6519)"} true;
L4:

    // assert CanModify<DesignatedDealer::TierInfo<XUS::XUS>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:76+9
    assert {:msg "assert_failed(10,6482,6491): caller does not have permission to modify `DesignatedDealer::TierInfo<#0>` at given address"}
      $1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$modifies[$t2];

    // $t26 := move_from<DesignatedDealer::TierInfo<XUS::XUS>>($t2) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:76+9
    if (!$ResourceExists($1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory, $t2)) {
        call $ExecFailureAbort();
    } else {
        $t26 := $ResourceValue($1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory, $t2);
        $1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory := $ResourceRemove($1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory, $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(10,6482,6491)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // ($t27, $t28, $t29) := unpack DesignatedDealer::TierInfo<XUS::XUS>($t26) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:17+56
    $t27 := $window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'($t26);
    $t28 := $window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'($t26);
    $t29 := $tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'($t26);

    // destroy($t29) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:70+1

    // destroy($t28) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:60+1

    // destroy($t27) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:42+1

    // label L6 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:44+7
    assume {:print "$at(10,6657,6664)"} true;
L6:

    // assert CanModify<DesignatedDealer::Dealer>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:18+17
    assert {:msg "assert_failed(10,6631,6648): caller does not have permission to modify `DesignatedDealer::Dealer` at given address"}
      $1_DesignatedDealer_Dealer_$modifies[$t2];

    // $t30 := borrow_global<DesignatedDealer::Dealer>($t2) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:18+17
    if (!$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2)) {
        call $ExecFailureAbort();
    } else {
        $t30 := $Mutation($Global($t2), EmptyVec(), $ResourceValue($1_DesignatedDealer_Dealer_$memory, $t2));
    }
    if ($abort_flag) {
        assume {:print "$at(10,6631,6648)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // $t31 := borrow_field<DesignatedDealer::Dealer>.mint_event_handle($t30) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:13+57
    $t31 := $ChildMutation($t30, 0, $mint_event_handle#$1_DesignatedDealer_Dealer($Dereference($t30)));

    // $t32 := opaque begin: Diem::currency_code<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume {:print "$at(10,6748,6779)"} true;

    // assume Identical($t33, Not(Diem::spec_is_currency<XUS::XUS>())) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume ($t33 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t33) goto L13 else goto L11 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    if ($t33) { goto L13; } else { goto L11; }

    // label L12 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
L12:

    // assume And(Not(Diem::spec_is_currency<XUS::XUS>()), Eq(5, $t17)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(5, $t17));

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume {:print "$at(10,6748,6779)"} true;
    assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    goto L8;

    // label L11 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
L11:

    // assume WellFormed($t32) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume $IsValid'vec'u8''($t32);

    // assume Eq<vector<u8>>($t32, Diem::spec_currency_code<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume $IsEqual'vec'u8''($t32, $1_Diem_spec_currency_code'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // $t32 := opaque end: Diem::currency_code<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31

    // $t34 := pack DesignatedDealer::ReceivedMintEvent($t32, $t2, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:154:13+166
    assume {:print "$at(10,6697,6863)"} true;
    $t34 := $1_DesignatedDealer_ReceivedMintEvent($t32, $t2, $t1);

    // Event::emit_event<DesignatedDealer::ReceivedMintEvent>($t31, $t34) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:152:9+298
    assume {:print "$at(10,6576,6874)"} true;
    call $t31 := $1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'($t31, $t34);
    if ($abort_flag) {
        assume {:print "$at(10,6576,6874)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // assume Identical($t35, global<Diem::CurrencyInfo<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:452:9+66
    assume {:print "$at(11,21634,21700)"} true;
    assume ($t35 == $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816));

    // assert CanModify<Diem::CurrencyInfo<XUS::XUS>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:160:9+40
    assume {:print "$at(10,6884,6924)"} true;
    assert {:msg "assert_failed(10,6884,6924): caller does not have permission to modify `Diem::CurrencyInfo<#0>` at given address"}
      $1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies[173345816];

    // $t36 := Diem::mint<XUS::XUS>($t0, $t1) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:160:9+40
    call $t36 := $1_Diem_mint'$1_XUS_XUS'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(10,6884,6924)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // trace_return[0]($t36) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:160:9+40
    assume {:print "$track_return(27,4,0):", $t36} $t36 == $t36;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:161:5+1
    assume {:print "$at(10,6929,6930)"} true;
L7:

    // assume Identical($t37, global<Diem::CurrencyInfo<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:175:9+82
    assume {:print "$at(10,7487,7569)"} true;
    assume ($t37 == $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816));

    // assert Not(Eq<u64>($t1, 0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:184:9+52
    assume {:print "$at(10,7937,7989)"} true;
    assert {:msg "assert_failed(10,7937,7989): function does not abort under this condition"}
      !$IsEqual'u64'($t1, 0);

    // assert Not(Not(exists[@130]<Diem::MintCapability<XUS::XUS>>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:186:9+120
    assume {:print "$at(10,8032,8152)"} true;
    assert {:msg "assert_failed(10,8032,8152): function does not abort under this condition"}
      !!$ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory#130, $1_Signer_spec_address_of($t0));

    // assert Not(Not(exists[@131]<Roles::RoleId>($t9))) at /home/ying/diem/language/diem-framework/modules/Roles.move:546:9+59
    assume {:print "$at(28,24327,24386)"} true;
    assert {:msg "assert_failed(28,24327,24386): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#131, $t9);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:547:9+97
    assume {:print "$at(28,24395,24492)"} true;
    assert {:msg "assert_failed(28,24395,24492): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 1);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:49:9+108
    assume {:print "$at(9,2057,2165)"} true;
    assert {:msg "assert_failed(9,2057,2165): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453);

    // assert Not(Not(exists[@132]<DesignatedDealer::Dealer>($t2))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:21:9+62
    assume {:print "$at(10,712,774)"} true;
    assert {:msg "assert_failed(10,712,774): function does not abort under this condition"}
      !!$ResourceExists($1_DesignatedDealer_Dealer_$memory#132, $t2);

    // assert Not(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info[@133]<XUS::XUS>()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:446:9+78
    assume {:print "$at(11,21338,21416)"} true;
    assert {:msg "assert_failed(11,21338,21416): function does not abort under this condition"}
      !!$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133));

    // assert Not(Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info[@133]<XUS::XUS>()), $t1), MaxU128())) at /home/ying/diem/language/diem-framework/modules/Diem.move:447:9+102
    assume {:print "$at(11,21425,21527)"} true;
    assert {:msg "assert_failed(11,21425,21527): function does not abort under this condition"}
      !(($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133)) + $t1) > $MAX_U128);

    // assert Not(Not(Diem::spec_is_currency[@133]<XUS::XUS>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1563:9+67
    assume {:print "$at(11,72689,72756)"} true;
    assert {:msg "assert_failed(11,72689,72756): function does not abort under this condition"}
      !!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133);

    // assert exists<DesignatedDealer::Dealer>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:169:9+32
    assume {:print "$at(10,7118,7150)"} true;
    assert {:msg "assert_failed(10,7118,7150): post-condition does not hold"}
      $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2);

    // assert exists<Diem::CurrencyInfo<XUS::XUS>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:171:9+60
    assume {:print "$at(10,7229,7289)"} true;
    assert {:msg "assert_failed(10,7229,7289): post-condition does not hold"}
      $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816);

    // assert Not(exists<DesignatedDealer::TierInfo<XUS::XUS>>($t2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:173:9+45
    assume {:print "$at(10,7352,7397)"} true;
    assert {:msg "assert_failed(10,7352,7397): post-condition does not hold"}
      !$ResourceExists($1_DesignatedDealer_TierInfo'$1_XUS_XUS'_$memory, $t2);

    // assert Eq<u64>(select Diem::Diem.value($t36), $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:9+31
    assume {:print "$at(10,7578,7609)"} true;
    assert {:msg "assert_failed(10,7578,7609): post-condition does not hold"}
      $IsEqual'u64'($value#$1_Diem_Diem'$1_XUS_XUS'($t36), $t1);

    // assert Eq<Diem::CurrencyInfo<XUS::XUS>>($t37, update Diem::CurrencyInfo.total_value<Diem::CurrencyInfo<XUS::XUS>>($t8, Add(select Diem::CurrencyInfo.total_value($t8), $t1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:177:9+107
    assume {:print "$at(10,7618,7725)"} true;
    assert {:msg "assert_failed(10,7618,7725): post-condition does not hold"}
      $IsEqual'$1_Diem_CurrencyInfo'$1_XUS_XUS''($t37, $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_total_value($t8, ($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'($t8) + $t1)));

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), $t11, $t10)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:198:9+20
    assume {:print "$at(10,8559,8579)"} true;
    assert {:msg "assert_failed(10,8559,8579): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($EmptyEventStore, $t10, $t11); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), $t11, $t10), $t14, $t13, Not(select Diem::CurrencyInfo.is_synthetic($t12)))) at /home/ying/diem/language/diem-framework/modules/Diem.move:466:9+51
    assume {:print "$at(11,22321,22372)"} true;
    assert {:msg "assert_failed(11,22321,22372): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_Diem_MintEvent'($ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($EmptyEventStore, $t10, $t11), $t13, $t14, !$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'($t12)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), $t11, $t10), $t14, $t13, Not(select Diem::CurrencyInfo.is_synthetic($t12)))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    assume {:print "$at(10,6935,7731)"} true;
    assert {:msg "assert_failed(10,6935,7731): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_Diem_MintEvent'($ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($EmptyEventStore, $t10, $t11), $t13, $t14, !$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'($t12)); $EventStore__is_subset(actual, expected)));

    // return $t36 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    $ret0 := $t36;
    return;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:161:5+1
    assume {:print "$at(10,6929,6930)"} true;
L8:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Eq<u64>($t1, 0), Not(exists[@130]<Diem::MintCapability<XUS::XUS>>(Signer::spec_address_of[]($t0)))), Not(exists[@131]<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 1)), Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)), Not(exists[@132]<DesignatedDealer::Dealer>($t2))), Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info[@133]<XUS::XUS>()))), Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info[@133]<XUS::XUS>()), $t1), MaxU128())), Not(Diem::spec_is_currency[@133]<XUS::XUS>())) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    assume {:print "$at(10,6935,7731)"} true;
    assert {:msg "assert_failed(10,6935,7731): abort not covered by any of the `aborts_if` clauses"}
      (((((((($IsEqual'u64'($t1, 0) || !$ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory#130, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory#131, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)) || !$ResourceExists($1_DesignatedDealer_Dealer_$memory#132, $t2)) || !$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133))) || (($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133)) + $t1) > $MAX_U128)) || !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(And(Eq<u64>($t1, 0), Eq(7, $t17)), And(Not(exists[@130]<Diem::MintCapability<XUS::XUS>>(Signer::spec_address_of[]($t0))), Eq(4, $t17))), And(Not(exists[@131]<Roles::RoleId>($t9)), Eq(5, $t17))), And(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 1), Eq(3, $t17))), And(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed), Eq(2, $t17))), And(Not(exists[@132]<DesignatedDealer::Dealer>($t2)), Eq(5, $t17))), And(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info[@133]<XUS::XUS>())), Eq(1, $t17))), And(Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info[@133]<XUS::XUS>()), $t1), MaxU128()), Eq(8, $t17))), And(Not(Diem::spec_is_currency[@133]<XUS::XUS>()), Eq(5, $t17))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    assert {:msg "assert_failed(10,6935,7731): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((($IsEqual'u64'($t1, 0) && $IsEqual'num'(7, $t17)) || (!$ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory#130, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(4, $t17))) || (!$ResourceExists($1_Roles_RoleId_$memory#131, $t9) && $IsEqual'num'(5, $t17))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 1) && $IsEqual'num'(3, $t17))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t17))) || (!$ResourceExists($1_DesignatedDealer_Dealer_$memory#132, $t2) && $IsEqual'num'(5, $t17))) || (!$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133)) && $IsEqual'num'(1, $t17))) || ((($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'($1_Diem_spec_currency_info'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133)) + $t1) > $MAX_U128) && $IsEqual'num'(8, $t17))) || (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#133) && $IsEqual'num'(5, $t17)));

    // abort($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    $abort_code := $t17;
    $abort_flag := true;
    return;

    // label L13 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L13:

    // destroy($t31) at <internal>:1:1+10

    // goto L12 at <internal>:1:1+10
    goto L12;

}

// fun DesignatedDealer::tiered_mint [verification[instantiated_1]] at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
procedure {:timeLimit 40} $1_DesignatedDealer_tiered_mint$verify_instantiated_1(_$t0: $signer, _$t1: int, _$t2: int, _$t3: int) returns ($ret0: $1_Diem_Diem'$1_XDX_XDX')
{
    // function instantiation <XDX::XDX>

    // declare local variables
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t9: int;
    var $t10: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent';
    var $t11: $1_DesignatedDealer_ReceivedMintEvent;
    var $t12: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t13: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t14: $1_Diem_MintEvent;
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
    var $t25: bool;
    var $t26: $1_DesignatedDealer_TierInfo'$1_XDX_XDX';
    var $t27: int;
    var $t28: int;
    var $t29: Vec (int);
    var $t30: $Mutation ($1_DesignatedDealer_Dealer);
    var $t31: $Mutation ($1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent');
    var $t32: Vec (int);
    var $t33: bool;
    var $t34: $1_DesignatedDealer_ReceivedMintEvent;
    var $t35: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t36: $1_Diem_Diem'$1_XDX_XDX';
    var $t37: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t0: $signer;
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies: [int]bool;
    var $1_DesignatedDealer_Dealer_$modifies: [int]bool;
    var $1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies: [int]bool;
    var $temp_0'$1_Diem_Diem'$1_XDX_XDX'': $1_Diem_Diem'$1_XDX_XDX';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_Diem_MintCapability'$1_XDX_XDX'_$memory#130: $Memory $1_Diem_MintCapability'$1_XDX_XDX';
    var $1_Roles_RoleId_$memory#131: $Memory $1_Roles_RoleId;
    var $1_DesignatedDealer_Dealer_$memory#132: $Memory $1_DesignatedDealer_Dealer;
    var $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX';
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    assume IsEmptyVec(p#$Mutation($t30));
    assume IsEmptyVec(p#$Mutation($t31));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(10,5691,6930)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall mint_cap_owner: TypeDomain<address>() where exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner): Roles::spec_has_treasury_compliance_role_addr(mint_cap_owner) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1596:9+197
    assume (forall mint_cap_owner: int :: $IsValid'address'(mint_cap_owner) ==> ($ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner))  ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, mint_cap_owner)));

    // assume Implies(Diem::$is_SCS_currency<XDX::XDX>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner1), exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<XDX::XDX>(addr3): Diem::$is_SCS_currency<XDX::XDX>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'$1_XDX_XDX'($1_Diem_MintCapability'$1_XDX_XDX'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<XDX::XDX>>(addr): Diem::spec_is_currency<XDX::XDX>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, addr))  ==> ($1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1239
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume {:print "$at(10,7586,7592)"} true;
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume $IsValid'address'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume $IsValid'u64'($t3);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XDX::XDX>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::MintCapability<XDX::XDX>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_MintCapability'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_MintCapability'$1_XDX_XDX'_$memory, $a_0);
    ($IsValid'$1_Diem_MintCapability'$1_XDX_XDX''($rsc))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::Dealer>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_Dealer_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_Dealer'($rsc))));

    // assume forall $rsc: ResourceDomain<DesignatedDealer::TierInfo<XDX::XDX>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory, $a_0);
    ($IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''($rsc))));

    // assume Identical($t8, global<Diem::CurrencyInfo<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:174:9+72
    assume {:print "$at(10,7406,7478)"} true;
    assume ($t8 == $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816));

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // assume Identical($t10, select DesignatedDealer::Dealer.mint_event_handle(global<DesignatedDealer::Dealer>($t2))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:192:9+55
    assume {:print "$at(10,8319,8374)"} true;
    assume ($t10 == $mint_event_handle#$1_DesignatedDealer_Dealer($ResourceValue($1_DesignatedDealer_Dealer_$memory, $t2)));

    // assume Identical($t11, pack DesignatedDealer::ReceivedMintEvent(Diem::spec_currency_code<XDX::XDX>(), $t2, $t1)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:193:9+167
    assume {:print "$at(10,8383,8550)"} true;
    assume ($t11 == $1_DesignatedDealer_ReceivedMintEvent($1_Diem_spec_currency_code'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory), $t2, $t1));

    // assume Identical($t12, global<Diem::CurrencyInfo<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:460:9+66
    assume {:print "$at(11,22075,22141)"} true;
    assume ($t12 == $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816));

    // assume Identical($t13, select Diem::CurrencyInfo.mint_events($t12)) at /home/ying/diem/language/diem-framework/modules/Diem.move:461:9+39
    assume {:print "$at(11,22150,22189)"} true;
    assume ($t13 == $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t12));

    // assume Identical($t14, pack Diem::MintEvent($t1, select Diem::CurrencyInfo.currency_code($t12))) at /home/ying/diem/language/diem-framework/modules/Diem.move:462:9+114
    assume {:print "$at(11,22198,22312)"} true;
    assume ($t14 == $1_Diem_MintEvent($t1, $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t12)));

    // assume CanModify<DesignatedDealer::Dealer>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:168:9+33
    assume {:print "$at(10,7076,7109)"} true;
    assume $1_DesignatedDealer_Dealer_$modifies[$t2];

    // assume CanModify<Diem::CurrencyInfo<XDX::XDX>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:170:9+61
    assume {:print "$at(10,7159,7220)"} true;
    assume $1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies[173345816];

    // assume CanModify<DesignatedDealer::TierInfo<XDX::XDX>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    assume {:print "$at(10,7298,7343)"} true;
    assume $1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies[$t2];

    // @131 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_Roles_RoleId_$memory#131 := $1_Roles_RoleId_$memory;

    // @133 := save_mem(Diem::CurrencyInfo<XDX::XDX>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133 := $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory;

    // @130 := save_mem(Diem::MintCapability<XDX::XDX>) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_Diem_MintCapability'$1_XDX_XDX'_$memory#130 := $1_Diem_MintCapability'$1_XDX_XDX'_$memory;

    // @132 := save_mem(DesignatedDealer::Dealer) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:172:9+45
    $1_DesignatedDealer_Dealer_$memory#132 := $1_DesignatedDealer_Dealer_$memory;

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$at(10,5691,5692)"} true;
    assume {:print "$track_local(27,4,0):", $t0} $t0 == $t0;

    // trace_local[amount]($t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$track_local(27,4,1):", $t1} $t1 == $t1;

    // trace_local[dd_addr]($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$track_local(27,4,2):", $t2} $t2 == $t2;

    // trace_local[_tier_index]($t3) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:133:5+1
    assume {:print "$track_local(27,4,3):", $t3} $t3 == $t3;

    // assume Identical($t15, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t15 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume {:print "$at(10,6023,6068)"} true;

    // assume Identical($t16, Or(Or(Not(exists<Roles::RoleId>($t15)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t15)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume ($t16 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t15) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t15)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t16) goto L10 else goto L9 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    if ($t16) { goto L10; } else { goto L9; }

    // label L10 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
L10:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t15)), Eq(5, $t17)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t15)), 1), Eq(3, $t17))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t17))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t15) && $IsEqual'num'(5, $t17)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t15)), 1) && $IsEqual'num'(3, $t17))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t17)));

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    assume {:print "$at(10,6023,6068)"} true;
    assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
    goto L8;

    // label L9 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45
L9:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:141:9+45

    // $t18 := 0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:25+1
    assume {:print "$at(10,6094,6095)"} true;
    $t18 := 0;
    assume $IsValid'u64'($t18);

    // $t19 := >($t1, $t18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:23+1
    call $t19 := $Gt($t1, $t18);

    // $t20 := 4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:53+20
    $t20 := 4;
    assume $IsValid'u64'($t20);

    // $t21 := opaque begin: Errors::invalid_argument($t20) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46

    // assume WellFormed($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46
    assume $IsValid'u64'($t21);

    // assume Eq<u64>($t21, 7) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46
    assume $IsEqual'u64'($t21, 7);

    // $t21 := opaque end: Errors::invalid_argument($t20) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:28+46

    // trace_local[tmp#$5]($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    assume {:print "$track_local(27,4,5):", $t21} $t21 == $t21;

    // trace_local[tmp#$4]($t19) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    assume {:print "$track_local(27,4,4):", $t19} $t19 == $t19;

    // if ($t19) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    if ($t19) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66

    // trace_abort($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    assume {:print "$at(10,6078,6144)"} true;
    assume {:print "$track_abort(27,4):", $t21} $t21 == $t21;

    // $t17 := move($t21) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    $t17 := $t21;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:142:9+66
    goto L8;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:26+7
    assume {:print "$at(10,6171,6178)"} true;
L0:

    // $t22 := opaque begin: DesignatedDealer::exists_at($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18
    assume $IsValid'bool'($t22);

    // assume Eq<bool>($t22, exists<DesignatedDealer::Dealer>($t2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18
    assume $IsEqual'bool'($t22, $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2));

    // $t22 := opaque end: DesignatedDealer::exists_at($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:16+18

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:58+7
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := opaque begin: Errors::not_published($t23) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30

    // assume WellFormed($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30
    assume $IsValid'u64'($t24);

    // assume Eq<u64>($t24, 5) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30
    assume $IsEqual'u64'($t24, 5);

    // $t24 := opaque end: Errors::not_published($t23) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:36+30

    // trace_local[tmp#$7]($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    assume {:print "$track_local(27,4,7):", $t24} $t24 == $t24;

    // trace_local[tmp#$6]($t22) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    assume {:print "$track_local(27,4,6):", $t22} $t22 == $t22;

    // if ($t22) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    if ($t22) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58

    // trace_abort($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    assume {:print "$at(10,6154,6212)"} true;
    assume {:print "$track_abort(27,4):", $t24} $t24 == $t24;

    // $t17 := move($t24) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    $t17 := $t24;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:143:9+58
    goto L8;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:40+7
    assume {:print "$at(10,6395,6402)"} true;
L2:

    // $t25 := exists<DesignatedDealer::TierInfo<XDX::XDX>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:13+6
    $t25 := $ResourceExists($1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory, $t2);

    // if ($t25) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:9+167
    if ($t25) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:9+167
L5:

    // goto L6 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:147:9+167
    goto L6;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:106+7
    assume {:print "$at(10,6512,6519)"} true;
L4:

    // assert CanModify<DesignatedDealer::TierInfo<XDX::XDX>>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:76+9
    assert {:msg "assert_failed(10,6482,6491): caller does not have permission to modify `DesignatedDealer::TierInfo<#0>` at given address"}
      $1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$modifies[$t2];

    // $t26 := move_from<DesignatedDealer::TierInfo<XDX::XDX>>($t2) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:76+9
    if (!$ResourceExists($1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory, $t2)) {
        call $ExecFailureAbort();
    } else {
        $t26 := $ResourceValue($1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory, $t2);
        $1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory := $ResourceRemove($1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory, $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(10,6482,6491)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // ($t27, $t28, $t29) := unpack DesignatedDealer::TierInfo<XDX::XDX>($t26) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:17+56
    $t27 := $window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'($t26);
    $t28 := $window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'($t26);
    $t29 := $tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'($t26);

    // destroy($t29) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:70+1

    // destroy($t28) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:60+1

    // destroy($t27) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:148:42+1

    // label L6 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:44+7
    assume {:print "$at(10,6657,6664)"} true;
L6:

    // assert CanModify<DesignatedDealer::Dealer>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:18+17
    assert {:msg "assert_failed(10,6631,6648): caller does not have permission to modify `DesignatedDealer::Dealer` at given address"}
      $1_DesignatedDealer_Dealer_$modifies[$t2];

    // $t30 := borrow_global<DesignatedDealer::Dealer>($t2) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:18+17
    if (!$ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2)) {
        call $ExecFailureAbort();
    } else {
        $t30 := $Mutation($Global($t2), EmptyVec(), $ResourceValue($1_DesignatedDealer_Dealer_$memory, $t2));
    }
    if ($abort_flag) {
        assume {:print "$at(10,6631,6648)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // $t31 := borrow_field<DesignatedDealer::Dealer>.mint_event_handle($t30) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:153:13+57
    $t31 := $ChildMutation($t30, 0, $mint_event_handle#$1_DesignatedDealer_Dealer($Dereference($t30)));

    // $t32 := opaque begin: Diem::currency_code<XDX::XDX>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume {:print "$at(10,6748,6779)"} true;

    // assume Identical($t33, Not(Diem::spec_is_currency<XDX::XDX>())) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume ($t33 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t33) goto L13 else goto L11 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    if ($t33) { goto L13; } else { goto L11; }

    // label L12 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
L12:

    // assume And(Not(Diem::spec_is_currency<XDX::XDX>()), Eq(5, $t17)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'num'(5, $t17));

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume {:print "$at(10,6748,6779)"} true;
    assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    goto L8;

    // label L11 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
L11:

    // assume WellFormed($t32) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume $IsValid'vec'u8''($t32);

    // assume Eq<vector<u8>>($t32, Diem::spec_currency_code<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31
    assume $IsEqual'vec'u8''($t32, $1_Diem_spec_currency_code'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // $t32 := opaque end: Diem::currency_code<XDX::XDX>() at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:155:32+31

    // $t34 := pack DesignatedDealer::ReceivedMintEvent($t32, $t2, $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:154:13+166
    assume {:print "$at(10,6697,6863)"} true;
    $t34 := $1_DesignatedDealer_ReceivedMintEvent($t32, $t2, $t1);

    // Event::emit_event<DesignatedDealer::ReceivedMintEvent>($t31, $t34) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:152:9+298
    assume {:print "$at(10,6576,6874)"} true;
    call $t31 := $1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'($t31, $t34);
    if ($abort_flag) {
        assume {:print "$at(10,6576,6874)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // assume Identical($t35, global<Diem::CurrencyInfo<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:452:9+66
    assume {:print "$at(11,21634,21700)"} true;
    assume ($t35 == $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816));

    // assert CanModify<Diem::CurrencyInfo<XDX::XDX>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:160:9+40
    assume {:print "$at(10,6884,6924)"} true;
    assert {:msg "assert_failed(10,6884,6924): caller does not have permission to modify `Diem::CurrencyInfo<#0>` at given address"}
      $1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies[173345816];

    // $t36 := Diem::mint<XDX::XDX>($t0, $t1) on_abort goto L8 with $t17 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:160:9+40
    call $t36 := $1_Diem_mint'$1_XDX_XDX'($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(10,6884,6924)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(27,4):", $t17} $t17 == $t17;
        goto L8;
    }

    // trace_return[0]($t36) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:160:9+40
    assume {:print "$track_return(27,4,0):", $t36} $t36 == $t36;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:161:5+1
    assume {:print "$at(10,6929,6930)"} true;
L7:

    // assume Identical($t37, global<Diem::CurrencyInfo<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:175:9+82
    assume {:print "$at(10,7487,7569)"} true;
    assume ($t37 == $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816));

    // assert Not(Eq<u64>($t1, 0)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:184:9+52
    assume {:print "$at(10,7937,7989)"} true;
    assert {:msg "assert_failed(10,7937,7989): function does not abort under this condition"}
      !$IsEqual'u64'($t1, 0);

    // assert Not(Not(exists[@130]<Diem::MintCapability<XDX::XDX>>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:186:9+120
    assume {:print "$at(10,8032,8152)"} true;
    assert {:msg "assert_failed(10,8032,8152): function does not abort under this condition"}
      !!$ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory#130, $1_Signer_spec_address_of($t0));

    // assert Not(Not(exists[@131]<Roles::RoleId>($t9))) at /home/ying/diem/language/diem-framework/modules/Roles.move:546:9+59
    assume {:print "$at(28,24327,24386)"} true;
    assert {:msg "assert_failed(28,24327,24386): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#131, $t9);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:547:9+97
    assume {:print "$at(28,24395,24492)"} true;
    assert {:msg "assert_failed(28,24395,24492): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 1);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:49:9+108
    assume {:print "$at(9,2057,2165)"} true;
    assert {:msg "assert_failed(9,2057,2165): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453);

    // assert Not(Not(exists[@132]<DesignatedDealer::Dealer>($t2))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:21:9+62
    assume {:print "$at(10,712,774)"} true;
    assert {:msg "assert_failed(10,712,774): function does not abort under this condition"}
      !!$ResourceExists($1_DesignatedDealer_Dealer_$memory#132, $t2);

    // assert Not(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info[@133]<XDX::XDX>()))) at /home/ying/diem/language/diem-framework/modules/Diem.move:446:9+78
    assume {:print "$at(11,21338,21416)"} true;
    assert {:msg "assert_failed(11,21338,21416): function does not abort under this condition"}
      !!$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133));

    // assert Not(Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info[@133]<XDX::XDX>()), $t1), MaxU128())) at /home/ying/diem/language/diem-framework/modules/Diem.move:447:9+102
    assume {:print "$at(11,21425,21527)"} true;
    assert {:msg "assert_failed(11,21425,21527): function does not abort under this condition"}
      !(($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133)) + $t1) > $MAX_U128);

    // assert Not(Not(Diem::spec_is_currency[@133]<XDX::XDX>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1563:9+67
    assume {:print "$at(11,72689,72756)"} true;
    assert {:msg "assert_failed(11,72689,72756): function does not abort under this condition"}
      !!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133);

    // assert exists<DesignatedDealer::Dealer>($t2) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:169:9+32
    assume {:print "$at(10,7118,7150)"} true;
    assert {:msg "assert_failed(10,7118,7150): post-condition does not hold"}
      $ResourceExists($1_DesignatedDealer_Dealer_$memory, $t2);

    // assert exists<Diem::CurrencyInfo<XDX::XDX>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:171:9+60
    assume {:print "$at(10,7229,7289)"} true;
    assert {:msg "assert_failed(10,7229,7289): post-condition does not hold"}
      $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816);

    // assert Not(exists<DesignatedDealer::TierInfo<XDX::XDX>>($t2)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:173:9+45
    assume {:print "$at(10,7352,7397)"} true;
    assert {:msg "assert_failed(10,7352,7397): post-condition does not hold"}
      !$ResourceExists($1_DesignatedDealer_TierInfo'$1_XDX_XDX'_$memory, $t2);

    // assert Eq<u64>(select Diem::Diem.value($t36), $t1) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:176:9+31
    assume {:print "$at(10,7578,7609)"} true;
    assert {:msg "assert_failed(10,7578,7609): post-condition does not hold"}
      $IsEqual'u64'($value#$1_Diem_Diem'$1_XDX_XDX'($t36), $t1);

    // assert Eq<Diem::CurrencyInfo<XDX::XDX>>($t37, update Diem::CurrencyInfo.total_value<Diem::CurrencyInfo<XDX::XDX>>($t8, Add(select Diem::CurrencyInfo.total_value($t8), $t1))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:177:9+107
    assume {:print "$at(10,7618,7725)"} true;
    assert {:msg "assert_failed(10,7618,7725): post-condition does not hold"}
      $IsEqual'$1_Diem_CurrencyInfo'$1_XDX_XDX''($t37, $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_total_value($t8, ($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t8) + $t1)));

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), $t11, $t10)) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:198:9+20
    assume {:print "$at(10,8559,8579)"} true;
    assert {:msg "assert_failed(10,8559,8579): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($EmptyEventStore, $t10, $t11); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), $t11, $t10), $t14, $t13, Not(select Diem::CurrencyInfo.is_synthetic($t12)))) at /home/ying/diem/language/diem-framework/modules/Diem.move:466:9+51
    assume {:print "$at(11,22321,22372)"} true;
    assert {:msg "assert_failed(11,22321,22372): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_Diem_MintEvent'($ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($EmptyEventStore, $t10, $t11), $t13, $t14, !$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t12)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), $t11, $t10), $t14, $t13, Not(select Diem::CurrencyInfo.is_synthetic($t12)))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    assume {:print "$at(10,6935,7731)"} true;
    assert {:msg "assert_failed(10,6935,7731): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_Diem_MintEvent'($ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($EmptyEventStore, $t10, $t11), $t13, $t14, !$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t12)); $EventStore__is_subset(actual, expected)));

    // return $t36 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    $ret0 := $t36;
    return;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:161:5+1
    assume {:print "$at(10,6929,6930)"} true;
L8:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Eq<u64>($t1, 0), Not(exists[@130]<Diem::MintCapability<XDX::XDX>>(Signer::spec_address_of[]($t0)))), Not(exists[@131]<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 1)), Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)), Not(exists[@132]<DesignatedDealer::Dealer>($t2))), Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info[@133]<XDX::XDX>()))), Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info[@133]<XDX::XDX>()), $t1), MaxU128())), Not(Diem::spec_is_currency[@133]<XDX::XDX>())) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    assume {:print "$at(10,6935,7731)"} true;
    assert {:msg "assert_failed(10,6935,7731): abort not covered by any of the `aborts_if` clauses"}
      (((((((($IsEqual'u64'($t1, 0) || !$ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory#130, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory#131, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)) || !$ResourceExists($1_DesignatedDealer_Dealer_$memory#132, $t2)) || !$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133))) || (($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133)) + $t1) > $MAX_U128)) || !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(And(Eq<u64>($t1, 0), Eq(7, $t17)), And(Not(exists[@130]<Diem::MintCapability<XDX::XDX>>(Signer::spec_address_of[]($t0))), Eq(4, $t17))), And(Not(exists[@131]<Roles::RoleId>($t9)), Eq(5, $t17))), And(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t9)), 1), Eq(3, $t17))), And(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed), Eq(2, $t17))), And(Not(exists[@132]<DesignatedDealer::Dealer>($t2)), Eq(5, $t17))), And(Not(select Diem::CurrencyInfo.can_mint(Diem::spec_currency_info[@133]<XDX::XDX>())), Eq(1, $t17))), And(Gt(Add(select Diem::CurrencyInfo.total_value(Diem::spec_currency_info[@133]<XDX::XDX>()), $t1), MaxU128()), Eq(8, $t17))), And(Not(Diem::spec_is_currency[@133]<XDX::XDX>()), Eq(5, $t17))) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    assert {:msg "assert_failed(10,6935,7731): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((($IsEqual'u64'($t1, 0) && $IsEqual'num'(7, $t17)) || (!$ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory#130, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(4, $t17))) || (!$ResourceExists($1_Roles_RoleId_$memory#131, $t9) && $IsEqual'num'(5, $t17))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t9)), 1) && $IsEqual'num'(3, $t17))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t17))) || (!$ResourceExists($1_DesignatedDealer_Dealer_$memory#132, $t2) && $IsEqual'num'(5, $t17))) || (!$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133)) && $IsEqual'num'(1, $t17))) || ((($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'($1_Diem_spec_currency_info'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133)) + $t1) > $MAX_U128) && $IsEqual'num'(8, $t17))) || (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#133) && $IsEqual'num'(5, $t17)));

    // abort($t17) at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:162:5+796
    $abort_code := $t17;
    $abort_flag := true;
    return;

    // label L13 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L13:

    // destroy($t31) at <internal>:1:1+10

    // goto L12 at <internal>:1:1+10
    goto L12;

}

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
