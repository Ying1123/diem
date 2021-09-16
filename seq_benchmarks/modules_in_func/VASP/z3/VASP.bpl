
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

//function {:inline} UpdateVec<T>(v: Vec T, i: int, elem: T): Vec T {
//    ConcatVec3(SliceVec(v, 0, i), MakeVec1(elem), SliceVec(v, i + 1, LenVec(v)))
//}
function {:builtin "seq.update"} Vec_Update<T>(v: Vec T, i: int, x: Vec T): Vec T;

function {:inline} UpdateVec<T>(v: Vec T, i: int, elem: T): Vec T {
	Vec_Update(v, i, MakeVec1(elem))
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
    s1 == s2
}
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
    s1 == s2
}
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
    s1 == s2
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

// struct AccountLimits::LimitsDefinition<#0> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:17:5+406
type {:datatype} $1_AccountLimits_LimitsDefinition'#0';
function {:constructor} $1_AccountLimits_LimitsDefinition'#0'($max_inflow: int, $max_outflow: int, $time_period: int, $max_holding: int): $1_AccountLimits_LimitsDefinition'#0';
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'#0''_max_inflow(s: $1_AccountLimits_LimitsDefinition'#0', x: int): $1_AccountLimits_LimitsDefinition'#0' {
    $1_AccountLimits_LimitsDefinition'#0'(x, $max_outflow#$1_AccountLimits_LimitsDefinition'#0'(s), $time_period#$1_AccountLimits_LimitsDefinition'#0'(s), $max_holding#$1_AccountLimits_LimitsDefinition'#0'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'#0''_max_outflow(s: $1_AccountLimits_LimitsDefinition'#0', x: int): $1_AccountLimits_LimitsDefinition'#0' {
    $1_AccountLimits_LimitsDefinition'#0'($max_inflow#$1_AccountLimits_LimitsDefinition'#0'(s), x, $time_period#$1_AccountLimits_LimitsDefinition'#0'(s), $max_holding#$1_AccountLimits_LimitsDefinition'#0'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'#0''_time_period(s: $1_AccountLimits_LimitsDefinition'#0', x: int): $1_AccountLimits_LimitsDefinition'#0' {
    $1_AccountLimits_LimitsDefinition'#0'($max_inflow#$1_AccountLimits_LimitsDefinition'#0'(s), $max_outflow#$1_AccountLimits_LimitsDefinition'#0'(s), x, $max_holding#$1_AccountLimits_LimitsDefinition'#0'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'#0''_max_holding(s: $1_AccountLimits_LimitsDefinition'#0', x: int): $1_AccountLimits_LimitsDefinition'#0' {
    $1_AccountLimits_LimitsDefinition'#0'($max_inflow#$1_AccountLimits_LimitsDefinition'#0'(s), $max_outflow#$1_AccountLimits_LimitsDefinition'#0'(s), $time_period#$1_AccountLimits_LimitsDefinition'#0'(s), x)
}
function $IsValid'$1_AccountLimits_LimitsDefinition'#0''(s: $1_AccountLimits_LimitsDefinition'#0'): bool {
    $IsValid'u64'($max_inflow#$1_AccountLimits_LimitsDefinition'#0'(s))
      && $IsValid'u64'($max_outflow#$1_AccountLimits_LimitsDefinition'#0'(s))
      && $IsValid'u64'($time_period#$1_AccountLimits_LimitsDefinition'#0'(s))
      && $IsValid'u64'($max_holding#$1_AccountLimits_LimitsDefinition'#0'(s))
}
function {:inline} $IsEqual'$1_AccountLimits_LimitsDefinition'#0''(s1: $1_AccountLimits_LimitsDefinition'#0', s2: $1_AccountLimits_LimitsDefinition'#0'): bool {
    s1 == s2
}
var $1_AccountLimits_LimitsDefinition'#0'_$memory: $Memory $1_AccountLimits_LimitsDefinition'#0';

// struct AccountLimits::Window<#0> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:37:5+492
type {:datatype} $1_AccountLimits_Window'#0';
function {:constructor} $1_AccountLimits_Window'#0'($window_start: int, $window_inflow: int, $window_outflow: int, $tracked_balance: int, $limit_address: int): $1_AccountLimits_Window'#0';
function {:inline} $Update'$1_AccountLimits_Window'#0''_window_start(s: $1_AccountLimits_Window'#0', x: int): $1_AccountLimits_Window'#0' {
    $1_AccountLimits_Window'#0'(x, $window_inflow#$1_AccountLimits_Window'#0'(s), $window_outflow#$1_AccountLimits_Window'#0'(s), $tracked_balance#$1_AccountLimits_Window'#0'(s), $limit_address#$1_AccountLimits_Window'#0'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'#0''_window_inflow(s: $1_AccountLimits_Window'#0', x: int): $1_AccountLimits_Window'#0' {
    $1_AccountLimits_Window'#0'($window_start#$1_AccountLimits_Window'#0'(s), x, $window_outflow#$1_AccountLimits_Window'#0'(s), $tracked_balance#$1_AccountLimits_Window'#0'(s), $limit_address#$1_AccountLimits_Window'#0'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'#0''_window_outflow(s: $1_AccountLimits_Window'#0', x: int): $1_AccountLimits_Window'#0' {
    $1_AccountLimits_Window'#0'($window_start#$1_AccountLimits_Window'#0'(s), $window_inflow#$1_AccountLimits_Window'#0'(s), x, $tracked_balance#$1_AccountLimits_Window'#0'(s), $limit_address#$1_AccountLimits_Window'#0'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'#0''_tracked_balance(s: $1_AccountLimits_Window'#0', x: int): $1_AccountLimits_Window'#0' {
    $1_AccountLimits_Window'#0'($window_start#$1_AccountLimits_Window'#0'(s), $window_inflow#$1_AccountLimits_Window'#0'(s), $window_outflow#$1_AccountLimits_Window'#0'(s), x, $limit_address#$1_AccountLimits_Window'#0'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'#0''_limit_address(s: $1_AccountLimits_Window'#0', x: int): $1_AccountLimits_Window'#0' {
    $1_AccountLimits_Window'#0'($window_start#$1_AccountLimits_Window'#0'(s), $window_inflow#$1_AccountLimits_Window'#0'(s), $window_outflow#$1_AccountLimits_Window'#0'(s), $tracked_balance#$1_AccountLimits_Window'#0'(s), x)
}
function $IsValid'$1_AccountLimits_Window'#0''(s: $1_AccountLimits_Window'#0'): bool {
    $IsValid'u64'($window_start#$1_AccountLimits_Window'#0'(s))
      && $IsValid'u64'($window_inflow#$1_AccountLimits_Window'#0'(s))
      && $IsValid'u64'($window_outflow#$1_AccountLimits_Window'#0'(s))
      && $IsValid'u64'($tracked_balance#$1_AccountLimits_Window'#0'(s))
      && $IsValid'address'($limit_address#$1_AccountLimits_Window'#0'(s))
}
function {:inline} $IsEqual'$1_AccountLimits_Window'#0''(s1: $1_AccountLimits_Window'#0', s2: $1_AccountLimits_Window'#0'): bool {
    s1 == s2
}
var $1_AccountLimits_Window'#0'_$memory: $Memory $1_AccountLimits_Window'#0';

// fun AccountLimits::has_window_published<#0> [baseline] at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:511:5+109
procedure {:inline 1} $1_AccountLimits_has_window_published'#0'(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:511:5+1
    assume {:print "$at(5,23868,23869)"} true;
    assume {:print "$track_local(19,5,0):", $t0} $t0 == $t0;

    // $t1 := exists<AccountLimits::Window<#0>>($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:512:9+6
    assume {:print "$at(5,23941,23947)"} true;
    $t1 := $ResourceExists($1_AccountLimits_Window'#0'_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:512:9+30
    assume {:print "$track_return(19,5,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:513:5+1
    assume {:print "$at(5,23976,23977)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:513:5+1
    $ret0 := $t1;
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

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:164:5+80
function {:inline} $1_VASP_$is_child($1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP, addr: int): bool {
    $ResourceExists($1_VASP_ChildVASP_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:154:5+82
function {:inline} $1_VASP_$is_parent($1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, addr: int): bool {
    $ResourceExists($1_VASP_ParentVASP_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:174:5+89
function {:inline} $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP, $1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, addr: int): bool {
    ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) || $1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:141:9+207
function {:inline} $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP, $1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, addr: int): int {
    if ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr)) then (addr) else ($parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:197:10+168
function {:inline} $1_VASP_spec_is_same_vasp($1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP, $1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, addr1: int, addr2: int): bool {
    (($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr1) && $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr2)) && $IsEqual'address'($1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr1), $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr2)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:214:10+99
function {:inline} $1_VASP_spec_num_children($1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, parent: int): int {
    $num_children#$1_VASP_ParentVASP($ResourceValue($1_VASP_ParentVASP_$memory, parent))
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

// fun VASP::has_account_limits [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
procedure {:timeLimit 40} $1_VASP_has_account_limits$verify(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $1_VASP_ChildVASP_$memory#130: $Memory $1_VASP_ChildVASP;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall window_addr: TypeDomain<address>() where exists<AccountLimits::Window<#0>>(window_addr): exists<AccountLimits::LimitsDefinition<#0>>(select AccountLimits::Window.limit_address(global<AccountLimits::Window<#0>>(window_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:544:9+208
    assume {:print "$at(35,5525,5688)"} true;
    assume (forall window_addr: int :: $IsValid'address'(window_addr) ==> ($ResourceExists($1_AccountLimits_Window'#0'_$memory, window_addr))  ==> ($ResourceExists($1_AccountLimits_LimitsDefinition'#0'_$memory, $limit_address#$1_AccountLimits_Window'#0'($ResourceValue($1_AccountLimits_Window'#0'_$memory, window_addr)))));

    // assume forall addr: TypeDomain<address>() where exists<AccountLimits::Window<#0>>(addr): And(exists<Roles::RoleId>(addr), Or(Eq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(addr)), 5), Eq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(addr)), 6))) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:553:9+310
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_AccountLimits_Window'#0'_$memory, addr))  ==> (($ResourceExists($1_Roles_RoleId_$memory, addr) && ($IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr)), 5) || $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr)), 6)))));

    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<AccountLimits::Window<#0>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
    assume (forall $a_0: int :: {$ResourceValue($1_AccountLimits_Window'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountLimits_Window'#0'_$memory, $a_0);
    ($IsValid'$1_AccountLimits_Window'#0''($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+163
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // @130 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+1
    $1_VASP_ChildVASP_$memory#130 := $1_VASP_ChildVASP_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:115:5+1
    assume {:print "$track_local(23,0,0):", $t0} $t0 == $t0;

    // $t1 := opaque begin: VASP::parent_address($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20
    assume {:print "$at(35,5661,5681)"} true;

    // assume Identical($t2, And(Not(VASP::$is_parent($t0)), Not(VASP::$is_child($t0)))) at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20
    assume ($t2 == (!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t0) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t0)));

    // if ($t2) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20
    if ($t2) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20
L4:

    // assume And(And(Not(VASP::$is_parent($t0)), Not(VASP::$is_child($t0))), Eq(7, $t3)) at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20
    assume ((!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t0) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t0)) && $IsEqual'num'(7, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20
    assume {:print "$at(35,5661,5681)"} true;
    assume {:print "$track_abort(23,0):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20
L3:

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20
    assume $IsValid'address'($t1);

    // assume Eq<address>($t1, VASP::spec_parent_address($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20
    assume $IsEqual'address'($t1, $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t0));

    // $t1 := opaque end: VASP::parent_address($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:116:55+20

    // $t4 := AccountLimits::has_window_published<#0>($t1) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/VASP.move:116:9+67
    call $t4 := $1_AccountLimits_has_window_published'#0'($t1);
    if ($abort_flag) {
        assume {:print "$at(35,5615,5682)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(23,0):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t4) at /home/ying/diem/language/diem-framework/modules/VASP.move:116:9+67
    assume {:print "$track_return(23,0,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:117:5+1
    assume {:print "$at(35,5687,5688)"} true;
L1:

    // assert forall a: TypeDomain<address>(): Eq<bool>(exists<VASP::ChildVASP>(a), exists[@130]<VASP::ChildVASP>(a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:252:9+78
    assume {:print "$at(35,10561,10639)"} true;
    assert {:msg "assert_failed(35,10561,10639): post-condition does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($IsEqual'bool'($ResourceExists($1_VASP_ChildVASP_$memory, a), $ResourceExists($1_VASP_ChildVASP_$memory#130, a))));

    // return $t4 at /home/ying/diem/language/diem-framework/modules/VASP.move:252:9+78
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:117:5+1
    assume {:print "$at(35,5687,5688)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/VASP.move:117:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun VASP::is_child [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:164:5+80
procedure {:timeLimit 40} $1_VASP_is_child$verify(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $1_VASP_ChildVASP_$memory#122: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#123: $Memory $1_VASP_ParentVASP;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:164:5+80
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,7300,7380)"} true;
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:164:5+80
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:170:17+6
    assume {:print "$at(35,7472,7478)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:170:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // @122 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:164:5+1
    assume {:print "$at(35,7300,7301)"} true;
    $1_VASP_ChildVASP_$memory#122 := $1_VASP_ChildVASP_$memory;

    // @123 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:164:5+1
    $1_VASP_ParentVASP_$memory#123 := $1_VASP_ParentVASP_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:164:5+1
    assume {:print "$track_local(23,1,0):", $t0} $t0 == $t0;

    // $t1 := exists<VASP::ChildVASP>($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:165:9+6
    assume {:print "$at(35,7351,7357)"} true;
    $t1 := $ResourceExists($1_VASP_ChildVASP_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:165:9+23
    assume {:print "$track_return(23,1,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:166:5+1
    assume {:print "$at(35,7379,7380)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/VASP.move:169:9+16
    assume {:print "$at(35,7439,7455)"} true;
    assert {:msg "assert_failed(35,7439,7455): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t1, VASP::$is_child($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:170:9+33
    assume {:print "$at(35,7464,7497)"} true;
    assert {:msg "assert_failed(35,7464,7497): post-condition does not hold"}
      $IsEqual'bool'($t1, $1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t0));

    // assert forall a: TypeDomain<address>(): Eq<bool>(exists<VASP::ChildVASP>(a), exists[@122]<VASP::ChildVASP>(a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:252:9+78
    assume {:print "$at(35,10561,10639)"} true;
    assert {:msg "assert_failed(35,10561,10639): post-condition does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($IsEqual'bool'($ResourceExists($1_VASP_ChildVASP_$memory, a), $ResourceExists($1_VASP_ChildVASP_$memory#122, a))));

    // assert forall parent: TypeDomain<address>() where VASP::$is_parent[@123](parent): Eq<u64>(VASP::spec_num_children(parent), VASP::spec_num_children[@123](parent)) at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    assume {:print "$at(35,10696,10845)"} true;
    assert {:msg "assert_failed(35,10696,10845): post-condition does not hold"}
      (forall parent: int :: $IsValid'address'(parent) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#123, parent))  ==> ($IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, parent), $1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#123, parent))));

    // return $t1 at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    $ret0 := $t1;
    return;

}

// fun VASP::is_parent [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:154:5+82
procedure {:timeLimit 40} $1_VASP_is_parent$verify(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $1_VASP_ChildVASP_$memory#120: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#121: $Memory $1_VASP_ParentVASP;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:154:5+82
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,7039,7121)"} true;
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:154:5+82
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:160:17+6
    assume {:print "$at(35,7214,7220)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:160:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // @120 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:154:5+1
    assume {:print "$at(35,7039,7040)"} true;
    $1_VASP_ChildVASP_$memory#120 := $1_VASP_ChildVASP_$memory;

    // @121 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:154:5+1
    $1_VASP_ParentVASP_$memory#121 := $1_VASP_ParentVASP_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:154:5+1
    assume {:print "$track_local(23,2,0):", $t0} $t0 == $t0;

    // $t1 := exists<VASP::ParentVASP>($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:155:9+6
    assume {:print "$at(35,7091,7097)"} true;
    $t1 := $ResourceExists($1_VASP_ParentVASP_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:155:9+24
    assume {:print "$track_return(23,2,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:156:5+1
    assume {:print "$at(35,7120,7121)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/VASP.move:159:9+16
    assume {:print "$at(35,7181,7197)"} true;
    assert {:msg "assert_failed(35,7181,7197): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t1, VASP::$is_parent($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:160:9+34
    assume {:print "$at(35,7206,7240)"} true;
    assert {:msg "assert_failed(35,7206,7240): post-condition does not hold"}
      $IsEqual'bool'($t1, $1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t0));

    // assert forall a: TypeDomain<address>(): Eq<bool>(exists<VASP::ChildVASP>(a), exists[@120]<VASP::ChildVASP>(a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:252:9+78
    assume {:print "$at(35,10561,10639)"} true;
    assert {:msg "assert_failed(35,10561,10639): post-condition does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($IsEqual'bool'($ResourceExists($1_VASP_ChildVASP_$memory, a), $ResourceExists($1_VASP_ChildVASP_$memory#120, a))));

    // assert forall parent: TypeDomain<address>() where VASP::$is_parent[@121](parent): Eq<u64>(VASP::spec_num_children(parent), VASP::spec_num_children[@121](parent)) at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    assume {:print "$at(35,10696,10845)"} true;
    assert {:msg "assert_failed(35,10696,10845): post-condition does not hold"}
      (forall parent: int :: $IsValid'address'(parent) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#121, parent))  ==> ($IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, parent), $1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#121, parent))));

    // return $t1 at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    $ret0 := $t1;
    return;

}

// fun VASP::is_same_vasp [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:188:5+179
procedure {:timeLimit 40} $1_VASP_is_same_vasp$verify(_$t0: int, _$t1: int) returns ($ret0: bool)
{
    // declare local variables
    var $t2: bool;
    var $t3: bool;
    var $t4: bool;
    var $t5: bool;
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: bool;
    var $t12: bool;
    var $t13: bool;
    var $t0: int;
    var $t1: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $1_VASP_ChildVASP_$memory#131: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#132: $Memory $1_VASP_ParentVASP;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:188:5+179
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,7952,8131)"} true;
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:188:5+179
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:188:5+179
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:188:5+179
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:194:17+6
    assume {:print "$at(35,8227,8233)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:194:17+6
    assume $IsValid'address'($t1);

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:194:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:194:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // @131 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:188:5+1
    assume {:print "$at(35,7952,7953)"} true;
    $1_VASP_ChildVASP_$memory#131 := $1_VASP_ChildVASP_$memory;

    // @132 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:188:5+1
    $1_VASP_ParentVASP_$memory#132 := $1_VASP_ParentVASP_$memory;

    // trace_local[addr1]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:188:5+1
    assume {:print "$track_local(23,3,0):", $t0} $t0 == $t0;

    // trace_local[addr2]($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:188:5+1
    assume {:print "$track_local(23,3,1):", $t1} $t1 == $t1;

    // $t4 := opaque begin: VASP::is_vasp($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+14
    assume {:print "$at(35,8043,8057)"} true;

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+14
    assume $IsValid'bool'($t4);

    // assume Eq<bool>($t4, VASP::$is_vasp($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+14
    assume $IsEqual'bool'($t4, $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t0));

    // $t4 := opaque end: VASP::is_vasp($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+14

    // if ($t4) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
    if ($t4) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:35+5
L0:

    // $t5 := opaque begin: VASP::is_vasp($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:27+14

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:27+14
    assume $IsValid'bool'($t5);

    // assume Eq<bool>($t5, VASP::$is_vasp($t1)) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:27+14
    assume $IsEqual'bool'($t5, $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t1));

    // $t5 := opaque end: VASP::is_vasp($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:27+14

    // $t2 := $t5 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
    $t2 := $t5;

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
    assume {:print "$track_local(23,3,2):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
L2:

    // $t6 := false at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
    $t6 := false;
    assume $IsValid'bool'($t6);

    // $t2 := $t6 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
    $t2 := $t6;

    // trace_local[tmp#$2]($t6) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
    assume {:print "$track_local(23,3,2):", $t6} $t6 == $t6;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+32
L3:

    // if ($t2) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
    if ($t2) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
L5:

    // goto L6 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
    goto L6;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:60+5
L4:

    // $t7 := opaque begin: VASP::parent_address($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21

    // assume Identical($t8, And(Not(VASP::$is_parent($t0)), Not(VASP::$is_child($t0)))) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21
    assume ($t8 == (!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t0) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t0)));

    // if ($t8) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21
    if ($t8) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21
L11:

    // assume And(And(Not(VASP::$is_parent($t0)), Not(VASP::$is_child($t0))), Eq(7, $t9)) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21
    assume ((!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t0) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t0)) && $IsEqual'num'(7, $t9));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21
    assume {:print "$at(35,8079,8100)"} true;
    assume {:print "$track_abort(23,3):", $t9} $t9 == $t9;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21
    goto L9;

    // label L10 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21
L10:

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, VASP::spec_parent_address($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21
    assume $IsEqual'address'($t7, $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t0));

    // $t7 := opaque end: VASP::parent_address($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:45+21

    // $t10 := opaque begin: VASP::parent_address($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21

    // assume Identical($t11, And(Not(VASP::$is_parent($t1)), Not(VASP::$is_child($t1)))) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21
    assume ($t11 == (!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t1) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t1)));

    // if ($t11) goto L13 else goto L12 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21
    if ($t11) { goto L13; } else { goto L12; }

    // label L13 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21
L13:

    // assume And(And(Not(VASP::$is_parent($t1)), Not(VASP::$is_child($t1))), Eq(7, $t9)) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21
    assume ((!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t1) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t1)) && $IsEqual'num'(7, $t9));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21
    assume {:print "$at(35,8104,8125)"} true;
    assume {:print "$track_abort(23,3):", $t9} $t9 == $t9;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21
    goto L9;

    // label L12 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21
L12:

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21
    assume $IsValid'address'($t10);

    // assume Eq<address>($t10, VASP::spec_parent_address($t1)) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21
    assume $IsEqual'address'($t10, $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t1));

    // $t10 := opaque end: VASP::parent_address($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:70+21

    // $t12 := ==($t7, $t10) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:67+2
    $t12 := $IsEqual'address'($t7, $t10);

    // $t3 := $t12 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
    $t3 := $t12;

    // trace_local[tmp#$3]($t12) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
    assume {:print "$track_local(23,3,3):", $t12} $t12 == $t12;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
    goto L7;

    // label L6 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
L6:

    // $t13 := false at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
    $t13 := false;
    assume $IsValid'bool'($t13);

    // $t3 := $t13 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
    $t3 := $t13;

    // trace_local[tmp#$3]($t13) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
    assume {:print "$track_local(23,3,3):", $t13} $t13 == $t13;

    // label L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
L7:

    // trace_return[0]($t3) at /home/ying/diem/language/diem-framework/modules/VASP.move:189:9+82
    assume {:print "$track_return(23,3,0):", $t3} $t3 == $t3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/VASP.move:190:5+1
    assume {:print "$at(35,8130,8131)"} true;
L8:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/VASP.move:193:9+16
    assume {:print "$at(35,8194,8210)"} true;
    assert {:msg "assert_failed(35,8194,8210): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t3, VASP::spec_is_same_vasp($t0, $t1)) at /home/ying/diem/language/diem-framework/modules/VASP.move:194:9+50
    assume {:print "$at(35,8219,8269)"} true;
    assert {:msg "assert_failed(35,8219,8269): post-condition does not hold"}
      $IsEqual'bool'($t3, $1_VASP_spec_is_same_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t0, $t1));

    // assert forall a: TypeDomain<address>(): Eq<bool>(exists<VASP::ChildVASP>(a), exists[@131]<VASP::ChildVASP>(a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:252:9+78
    assume {:print "$at(35,10561,10639)"} true;
    assert {:msg "assert_failed(35,10561,10639): post-condition does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($IsEqual'bool'($ResourceExists($1_VASP_ChildVASP_$memory, a), $ResourceExists($1_VASP_ChildVASP_$memory#131, a))));

    // assert forall parent: TypeDomain<address>() where VASP::$is_parent[@132](parent): Eq<u64>(VASP::spec_num_children(parent), VASP::spec_num_children[@132](parent)) at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    assume {:print "$at(35,10696,10845)"} true;
    assert {:msg "assert_failed(35,10696,10845): post-condition does not hold"}
      (forall parent: int :: $IsValid'address'(parent) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#132, parent))  ==> ($IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, parent), $1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#132, parent))));

    // return $t3 at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    $ret0 := $t3;
    return;

    // label L9 at /home/ying/diem/language/diem-framework/modules/VASP.move:190:5+1
    assume {:print "$at(35,8130,8131)"} true;
L9:

    // assert false at /home/ying/diem/language/diem-framework/modules/VASP.move:191:5+139
    assume {:print "$at(35,8136,8275)"} true;
    assert {:msg "assert_failed(35,8136,8275): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:191:5+139
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// fun VASP::is_vasp [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:174:5+89
procedure {:timeLimit 40} $1_VASP_is_vasp$verify(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t2: bool;
    var $t3: bool;
    var $t4: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $1_VASP_ChildVASP_$memory#124: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#125: $Memory $1_VASP_ParentVASP;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:174:5+89
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,7551,7640)"} true;
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:174:5+89
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:180:17+6
    assume {:print "$at(35,7731,7737)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:180:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:180:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // @124 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:174:5+1
    assume {:print "$at(35,7551,7552)"} true;
    $1_VASP_ChildVASP_$memory#124 := $1_VASP_ChildVASP_$memory;

    // @125 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:174:5+1
    $1_VASP_ParentVASP_$memory#125 := $1_VASP_ParentVASP_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:174:5+1
    assume {:print "$track_local(23,4,0):", $t0} $t0 == $t0;

    // $t2 := opaque begin: VASP::is_parent($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+15
    assume {:print "$at(35,7601,7616)"} true;

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+15
    assume $IsValid'bool'($t2);

    // assume Eq<bool>($t2, VASP::$is_parent($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+15
    assume $IsEqual'bool'($t2, $1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t0));

    // $t2 := opaque end: VASP::is_parent($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+15

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
L0:

    // $t3 := true at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
    $t3 := true;
    assume $IsValid'bool'($t3);

    // $t1 := $t3 at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
    $t1 := $t3;

    // trace_local[tmp#$1]($t3) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
    assume {:print "$track_local(23,4,1):", $t3} $t3 == $t3;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:175:37+4
L2:

    // $t4 := opaque begin: VASP::is_child($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:28+14

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:28+14
    assume $IsValid'bool'($t4);

    // assume Eq<bool>($t4, VASP::$is_child($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:28+14
    assume $IsEqual'bool'($t4, $1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t0));

    // $t4 := opaque end: VASP::is_child($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:28+14

    // $t1 := $t4 at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
    $t1 := $t4;

    // trace_local[tmp#$1]($t4) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
    assume {:print "$track_local(23,4,1):", $t4} $t4 == $t4;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
L3:

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:175:9+33
    assume {:print "$track_return(23,4,0):", $t1} $t1 == $t1;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:176:5+1
    assume {:print "$at(35,7639,7640)"} true;
L4:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/VASP.move:179:9+16
    assume {:print "$at(35,7698,7714)"} true;
    assert {:msg "assert_failed(35,7698,7714): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t1, VASP::$is_vasp($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:180:9+32
    assume {:print "$at(35,7723,7755)"} true;
    assert {:msg "assert_failed(35,7723,7755): post-condition does not hold"}
      $IsEqual'bool'($t1, $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t0));

    // assert forall a: TypeDomain<address>(): Eq<bool>(exists<VASP::ChildVASP>(a), exists[@124]<VASP::ChildVASP>(a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:252:9+78
    assume {:print "$at(35,10561,10639)"} true;
    assert {:msg "assert_failed(35,10561,10639): post-condition does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($IsEqual'bool'($ResourceExists($1_VASP_ChildVASP_$memory, a), $ResourceExists($1_VASP_ChildVASP_$memory#124, a))));

    // assert forall parent: TypeDomain<address>() where VASP::$is_parent[@125](parent): Eq<u64>(VASP::spec_num_children(parent), VASP::spec_num_children[@125](parent)) at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    assume {:print "$at(35,10696,10845)"} true;
    assert {:msg "assert_failed(35,10696,10845): post-condition does not hold"}
      (forall parent: int :: $IsValid'address'(parent) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#125, parent))  ==> ($IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, parent), $1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#125, parent))));

    // return $t1 at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    $ret0 := $t1;
    return;

}

// fun VASP::num_children [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+225
procedure {:timeLimit 40} $1_VASP_num_children$verify(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: $1_VASP_ParentVASP;
    var $t5: int;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    var $1_VASP_ChildVASP_$memory#128: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#129: $Memory $1_VASP_ParentVASP;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+225
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,8818,9043)"} true;
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+225
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+225
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+225
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+225
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+225
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+225
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // @128 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+1
    $1_VASP_ChildVASP_$memory#128 := $1_VASP_ChildVASP_$memory;

    // @129 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+1
    $1_VASP_ParentVASP_$memory#129 := $1_VASP_ParentVASP_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:206:5+1
    assume {:print "$track_local(23,5,0):", $t0} $t0 == $t0;

    // $t1 := opaque begin: VASP::parent_address($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20
    assume {:print "$at(35,9003,9023)"} true;

    // assume Identical($t2, And(Not(VASP::$is_parent($t0)), Not(VASP::$is_child($t0)))) at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20
    assume ($t2 == (!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t0) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t0)));

    // if ($t2) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20
    if ($t2) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20
L4:

    // assume And(And(Not(VASP::$is_parent($t0)), Not(VASP::$is_child($t0))), Eq(7, $t3)) at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20
    assume ((!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t0) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t0)) && $IsEqual'num'(7, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20
    assume {:print "$at(35,9003,9023)"} true;
    assume {:print "$track_abort(23,5):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20
L3:

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20
    assume $IsValid'address'($t1);

    // assume Eq<address>($t1, VASP::spec_parent_address($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20
    assume $IsEqual'address'($t1, $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t0));

    // $t1 := opaque end: VASP::parent_address($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:208:37+20

    // $t4 := get_global<VASP::ParentVASP>($t1) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/VASP.move:208:11+13
    if (!$ResourceExists($1_VASP_ParentVASP_$memory, $t1)) {
        call $ExecFailureAbort();
    } else {
        $t4 := $ResourceValue($1_VASP_ParentVASP_$memory, $t1);
    }
    if ($abort_flag) {
        assume {:print "$at(35,8977,8990)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(23,5):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t5 := get_field<VASP::ParentVASP>.num_children($t4) at /home/ying/diem/language/diem-framework/modules/VASP.move:208:10+61
    $t5 := $num_children#$1_VASP_ParentVASP($t4);

    // trace_return[0]($t5) at /home/ying/diem/language/diem-framework/modules/VASP.move:208:9+62
    assume {:print "$track_return(23,5,0):", $t5} $t5 == $t5;

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:209:5+1
    assume {:print "$at(35,9042,9043)"} true;
L1:

    // assert Not(Not(VASP::$is_vasp[@128, @129]($t0))) at /home/ying/diem/language/diem-framework/modules/VASP.move:211:9+55
    assume {:print "$at(35,9076,9131)"} true;
    assert {:msg "assert_failed(35,9076,9131): function does not abort under this condition"}
      !!$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#128, $1_VASP_ParentVASP_$memory#129, $t0);

    // assert forall a: TypeDomain<address>(): Eq<bool>(exists<VASP::ChildVASP>(a), exists[@128]<VASP::ChildVASP>(a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:252:9+78
    assume {:print "$at(35,10561,10639)"} true;
    assert {:msg "assert_failed(35,10561,10639): post-condition does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($IsEqual'bool'($ResourceExists($1_VASP_ChildVASP_$memory, a), $ResourceExists($1_VASP_ChildVASP_$memory#128, a))));

    // assert forall parent: TypeDomain<address>() where VASP::$is_parent[@129](parent): Eq<u64>(VASP::spec_num_children(parent), VASP::spec_num_children[@129](parent)) at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    assume {:print "$at(35,10696,10845)"} true;
    assert {:msg "assert_failed(35,10696,10845): post-condition does not hold"}
      (forall parent: int :: $IsValid'address'(parent) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#129, parent))  ==> ($IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, parent), $1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#129, parent))));

    // return $t5 at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    $ret0 := $t5;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:209:5+1
    assume {:print "$at(35,9042,9043)"} true;
L2:

    // assert Not(VASP::$is_vasp[@128, @129]($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:210:5+89
    assume {:print "$at(35,9048,9137)"} true;
    assert {:msg "assert_failed(35,9048,9137): abort not covered by any of the `aborts_if` clauses"}
      !$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#128, $1_VASP_ParentVASP_$memory#129, $t0);

    // assert And(Not(VASP::$is_vasp[@128, @129]($t0)), Eq(7, $t3)) at /home/ying/diem/language/diem-framework/modules/VASP.move:210:5+89
    assert {:msg "assert_failed(35,9048,9137): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#128, $1_VASP_ParentVASP_$memory#129, $t0) && $IsEqual'num'(7, $t3));

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/VASP.move:210:5+89
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun VASP::parent_address [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:125:5+334
procedure {:timeLimit 40} $1_VASP_parent_address$verify(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: $1_VASP_ChildVASP;
    var $t9: int;
    var $t0: int;
    var $temp_0'address': int;
    var $1_VASP_ParentVASP_$memory#126: $Memory $1_VASP_ParentVASP;
    var $1_VASP_ChildVASP_$memory#127: $Memory $1_VASP_ChildVASP;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:125:5+334
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,6007,6341)"} true;
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:125:5+334
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:125:5+334
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:125:5+334
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:137:17+6
    assume {:print "$at(35,6492,6498)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:137:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:137:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // @127 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:125:5+1
    assume {:print "$at(35,6007,6008)"} true;
    $1_VASP_ChildVASP_$memory#127 := $1_VASP_ChildVASP_$memory;

    // @126 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:125:5+1
    $1_VASP_ParentVASP_$memory#126 := $1_VASP_ParentVASP_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:125:5+1
    assume {:print "$track_local(23,6,0):", $t0} $t0 == $t0;

    // $t3 := opaque begin: VASP::is_parent($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:126:13+15
    assume {:print "$at(35,6090,6105)"} true;

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/VASP.move:126:13+15
    assume $IsValid'bool'($t3);

    // assume Eq<bool>($t3, VASP::$is_parent($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:126:13+15
    assume $IsEqual'bool'($t3, $1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t0));

    // $t3 := opaque end: VASP::is_parent($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:126:13+15

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:126:9+249
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:126:9+249
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:126:9+249
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASP.move:127:13+4
    assume {:print "$at(35,6121,6125)"} true;
L0:

    // $t2 := $t0 at /home/ying/diem/language/diem-framework/modules/VASP.move:126:9+249
    assume {:print "$at(35,6086,6335)"} true;
    $t2 := $t0;

    // trace_local[tmp#$2]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:126:9+249
    assume {:print "$track_local(23,6,2):", $t0} $t0 == $t0;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:126:9+249
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:128:29+4
    assume {:print "$at(35,6154,6158)"} true;
L2:

    // $t4 := opaque begin: VASP::is_child($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:128:20+14

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/VASP.move:128:20+14
    assume $IsValid'bool'($t4);

    // assume Eq<bool>($t4, VASP::$is_child($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:128:20+14
    assume $IsEqual'bool'($t4, $1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t0));

    // $t4 := opaque end: VASP::is_child($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:128:20+14

    // if ($t4) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/VASP.move:128:16+194
    if ($t4) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASP.move:131:44+11
    assume {:print "$at(35,6312,6323)"} true;
L5:

    // $t5 := 2 at /home/ying/diem/language/diem-framework/modules/VASP.move:131:44+11
    $t5 := 2;
    assume $IsValid'u64'($t5);

    // $t6 := opaque begin: Errors::invalid_argument($t5) at /home/ying/diem/language/diem-framework/modules/VASP.move:131:18+39

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/VASP.move:131:18+39
    assume $IsValid'u64'($t6);

    // assume Eq<u64>($t6, 7) at /home/ying/diem/language/diem-framework/modules/VASP.move:131:18+39
    assume $IsEqual'u64'($t6, 7);

    // $t6 := opaque end: Errors::invalid_argument($t5) at /home/ying/diem/language/diem-framework/modules/VASP.move:131:18+39

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/VASP.move:131:13+44
    assume {:print "$at(35,6281,6325)"} true;
    assume {:print "$track_abort(23,6):", $t6} $t6 == $t6;

    // $t7 := move($t6) at /home/ying/diem/language/diem-framework/modules/VASP.move:131:13+44
    $t7 := $t6;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:131:13+44
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:129:38+4
    assume {:print "$at(35,6200,6204)"} true;
L4:

    // $t8 := get_global<VASP::ChildVASP>($t0) on_abort goto L7 with $t7 at /home/ying/diem/language/diem-framework/modules/VASP.move:129:13+13
    if (!$ResourceExists($1_VASP_ChildVASP_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t8 := $ResourceValue($1_VASP_ChildVASP_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(35,6175,6188)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(23,6):", $t7} $t7 == $t7;
        goto L7;
    }

    // $t9 := get_field<VASP::ChildVASP>.parent_vasp_addr($t8) at /home/ying/diem/language/diem-framework/modules/VASP.move:129:13+47
    $t9 := $parent_vasp_addr#$1_VASP_ChildVASP($t8);

    // trace_local[tmp#$1]($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:128:16+194
    assume {:print "$at(35,6141,6335)"} true;
    assume {:print "$track_local(23,6,1):", $t9} $t9 == $t9;

    // $t2 := $t9 at /home/ying/diem/language/diem-framework/modules/VASP.move:126:9+249
    assume {:print "$at(35,6086,6335)"} true;
    $t2 := $t9;

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:126:9+249
    assume {:print "$track_local(23,6,2):", $t9} $t9 == $t9;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:126:9+249
L3:

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/VASP.move:126:9+249
    assume {:print "$track_return(23,6,0):", $t2} $t2 == $t2;

    // label L6 at /home/ying/diem/language/diem-framework/modules/VASP.move:133:5+1
    assume {:print "$at(35,6340,6341)"} true;
L6:

    // assert Not(And(Not(VASP::$is_parent[@126]($t0)), Not(VASP::$is_child[@127]($t0)))) at /home/ying/diem/language/diem-framework/modules/VASP.move:136:9+76
    assume {:print "$at(35,6399,6475)"} true;
    assert {:msg "assert_failed(35,6399,6475): function does not abort under this condition"}
      !(!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory#126, $t0) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory#127, $t0));

    // assert Eq<address>($t2, VASP::spec_parent_address($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:137:9+44
    assume {:print "$at(35,6484,6528)"} true;
    assert {:msg "assert_failed(35,6484,6528): post-condition does not hold"}
      $IsEqual'address'($t2, $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t0));

    // assert forall a: TypeDomain<address>(): Eq<bool>(exists<VASP::ChildVASP>(a), exists[@127]<VASP::ChildVASP>(a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:252:9+78
    assume {:print "$at(35,10561,10639)"} true;
    assert {:msg "assert_failed(35,10561,10639): post-condition does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($IsEqual'bool'($ResourceExists($1_VASP_ChildVASP_$memory, a), $ResourceExists($1_VASP_ChildVASP_$memory#127, a))));

    // assert forall parent: TypeDomain<address>() where VASP::$is_parent[@126](parent): Eq<u64>(VASP::spec_num_children(parent), VASP::spec_num_children[@126](parent)) at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    assume {:print "$at(35,10696,10845)"} true;
    assert {:msg "assert_failed(35,10696,10845): post-condition does not hold"}
      (forall parent: int :: $IsValid'address'(parent) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#126, parent))  ==> ($IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, parent), $1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#126, parent))));

    // return $t2 at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    $ret0 := $t2;
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:133:5+1
    assume {:print "$at(35,6340,6341)"} true;
L7:

    // assert And(Not(VASP::$is_parent[@126]($t0)), Not(VASP::$is_child[@127]($t0))) at /home/ying/diem/language/diem-framework/modules/VASP.move:134:5+188
    assume {:print "$at(35,6346,6534)"} true;
    assert {:msg "assert_failed(35,6346,6534): abort not covered by any of the `aborts_if` clauses"}
      (!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory#126, $t0) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory#127, $t0));

    // assert And(And(Not(VASP::$is_parent[@126]($t0)), Not(VASP::$is_child[@127]($t0))), Eq(7, $t7)) at /home/ying/diem/language/diem-framework/modules/VASP.move:134:5+188
    assert {:msg "assert_failed(35,6346,6534): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory#126, $t0) && !$1_VASP_$is_child($1_VASP_ChildVASP_$memory#127, $t0)) && $IsEqual'num'(7, $t7));

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/VASP.move:134:5+188
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun VASP::publish_child_vasp_credential [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
procedure {:timeLimit 40} $1_VASP_publish_child_vasp_credential$verify(_$t0: $signer, _$t1: $signer) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: $Mutation (int);
    var $t10: int;
    var $t11: int;
    var $t12: int;
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
    var $t26: int;
    var $t27: $Mutation ($1_VASP_ParentVASP);
    var $t28: $Mutation (int);
    var $t29: int;
    var $t30: int;
    var $t31: bool;
    var $t32: int;
    var $t33: int;
    var $t34: int;
    var $t35: int;
    var $t36: int;
    var $t37: $1_VASP_ChildVASP;
    var $t0: $signer;
    var $t1: $signer;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_VASP_ChildVASP_$memory#133: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#134: $Memory $1_VASP_ParentVASP;
    var $1_Roles_RoleId_$memory#135: $Memory $1_Roles_RoleId;
    var $1_VASP_ParentVASP_$memory#140: $Memory $1_VASP_ParentVASP;
    var $1_VASP_ChildVASP_$memory#141: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ChildVASP_$memory#142: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#143: $Memory $1_VASP_ParentVASP;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t27));
    assume IsEmptyVec(p#$Mutation($t28));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(35,3108,4012)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // assume Identical($t11, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/VASP.move:86:9+48
    assume {:print "$at(35,4062,4110)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t1));

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:97:9+50
    assume {:print "$at(35,4674,4724)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // assume Identical($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t13 == $1_Signer_spec_address_of($t0));

    // @135 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+1
    assume {:print "$at(35,3108,3109)"} true;
    $1_Roles_RoleId_$memory#135 := $1_Roles_RoleId_$memory;

    // @133 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+1
    $1_VASP_ChildVASP_$memory#133 := $1_VASP_ChildVASP_$memory;

    // @134 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+1
    $1_VASP_ParentVASP_$memory#134 := $1_VASP_ParentVASP_$memory;

    // trace_local[parent]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+1
    assume {:print "$track_local(23,7,0):", $t0} $t0 == $t0;

    // trace_local[child]($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+1
    assume {:print "$track_local(23,7,1):", $t1} $t1 == $t1;

    // assume Identical($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    assume {:print "$at(35,3243,3281)"} true;

    // assume Identical($t15, Or(Not(exists<Roles::RoleId>($t14)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 5))) at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    assume ($t15 == (!$ResourceExists($1_Roles_RoleId_$memory, $t14) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 5)));

    // if ($t15) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    if ($t15) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
L9:

    // assume Or(And(Not(exists<Roles::RoleId>($t14)), Eq(5, $t16)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 5), Eq(3, $t16))) at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t14) && $IsEqual'num'(5, $t16)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 5) && $IsEqual'num'(3, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    assume {:print "$at(35,3243,3281)"} true;
    assume {:print "$track_abort(23,7):", $t16} $t16 == $t16;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    goto L7;

    // label L8 at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
L8:

    // opaque end: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38

    // opaque begin: Roles::assert_child_vasp_role($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    assume {:print "$at(35,3291,3327)"} true;

    // assume Identical($t17, Or(Not(exists<Roles::RoleId>(Signer::$address_of($t1))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(Signer::$address_of($t1))), 6))) at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    assume ($t17 == (!$ResourceExists($1_Roles_RoleId_$memory, $1_Signer_$address_of($t1)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $1_Signer_$address_of($t1))), 6)));

    // if ($t17) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    if ($t17) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
L11:

    // assume Or(And(Not(exists<Roles::RoleId>(Signer::$address_of($t1))), Eq(5, $t16)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(Signer::$address_of($t1))), 6), Eq(3, $t16))) at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $1_Signer_$address_of($t1)) && $IsEqual'num'(5, $t16)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $1_Signer_$address_of($t1))), 6) && $IsEqual'num'(3, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    assume {:print "$at(35,3291,3327)"} true;
    assume {:print "$track_abort(23,7):", $t16} $t16 == $t16;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    goto L7;

    // label L10 at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
L10:

    // opaque end: Roles::assert_child_vasp_role($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36

    // $t18 := opaque begin: Signer::address_of($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:75:31+25
    assume {:print "$at(35,3359,3384)"} true;

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:75:31+25
    assume $IsValid'address'($t18);

    // assume Eq<address>($t18, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/VASP.move:75:31+25
    assume $IsEqual'address'($t18, $1_Signer_spec_address_of($t1));

    // $t18 := opaque end: Signer::address_of($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:75:31+25

    // trace_local[child_vasp_addr]($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:75:13+15
    assume {:print "$track_local(23,7,8):", $t18} $t18 == $t18;

    // $t19 := opaque begin: VASP::is_vasp($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:17+24
    assume {:print "$at(35,3402,3426)"} true;

    // assume WellFormed($t19) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:17+24
    assume $IsValid'bool'($t19);

    // assume Eq<bool>($t19, VASP::$is_vasp($t18)) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:17+24
    assume $IsEqual'bool'($t19, $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t18));

    // $t19 := opaque end: VASP::is_vasp($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:17+24

    // $t20 := !($t19) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:16+1
    call $t20 := $Not($t19);

    // $t21 := 0 at /home/ying/diem/language/diem-framework/modules/VASP.move:76:69+21
    $t21 := 0;
    assume $IsValid'u64'($t21);

    // $t22 := opaque begin: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:43+48

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:43+48
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 6) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:43+48
    assume $IsEqual'u64'($t22, 6);

    // $t22 := opaque end: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:43+48

    // trace_local[tmp#$3]($t22) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    assume {:print "$track_local(23,7,3):", $t22} $t22 == $t22;

    // trace_local[tmp#$2]($t20) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    assume {:print "$track_local(23,7,2):", $t20} $t20 == $t20;

    // if ($t20) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    if ($t20) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    assume {:print "$at(35,3394,3477)"} true;
    assume {:print "$track_abort(23,7):", $t22} $t22 == $t22;

    // $t16 := move($t22) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    $t16 := $t22;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASP.move:77:51+6
    assume {:print "$at(35,3529,3535)"} true;
L0:

    // $t23 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:77:32+26

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/VASP.move:77:32+26
    assume $IsValid'address'($t23);

    // assume Eq<address>($t23, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:77:32+26
    assume $IsEqual'address'($t23, $1_Signer_spec_address_of($t0));

    // $t23 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:77:32+26

    // trace_local[parent_vasp_addr]($t23) at /home/ying/diem/language/diem-framework/modules/VASP.move:77:13+16
    assume {:print "$track_local(23,7,10):", $t23} $t23 == $t23;

    // $t24 := opaque begin: VASP::is_parent($t23) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:16+27
    assume {:print "$at(35,3553,3580)"} true;

    // assume WellFormed($t24) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:16+27
    assume $IsValid'bool'($t24);

    // assume Eq<bool>($t24, VASP::$is_parent($t23)) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:16+27
    assume $IsEqual'bool'($t24, $1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t23));

    // $t24 := opaque end: VASP::is_parent($t23) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:16+27

    // $t25 := 3 at /home/ying/diem/language/diem-framework/modules/VASP.move:78:70+18
    $t25 := 3;
    assume $IsValid'u64'($t25);

    // $t26 := opaque begin: Errors::invalid_argument($t25) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:45+44

    // assume WellFormed($t26) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:45+44
    assume $IsValid'u64'($t26);

    // assume Eq<u64>($t26, 7) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:45+44
    assume $IsEqual'u64'($t26, 7);

    // $t26 := opaque end: Errors::invalid_argument($t25) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:45+44

    // trace_local[tmp#$5]($t26) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    assume {:print "$track_local(23,7,5):", $t26} $t26 == $t26;

    // trace_local[tmp#$4]($t24) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    assume {:print "$track_local(23,7,4):", $t24} $t24 == $t24;

    // if ($t24) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    if ($t24) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
L3:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81

    // trace_abort($t26) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    assume {:print "$at(35,3546,3627)"} true;
    assume {:print "$track_abort(23,7):", $t26} $t26 == $t26;

    // $t16 := move($t26) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    $t16 := $t26;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:79:63+16
    assume {:print "$at(35,3691,3707)"} true;
L2:

    // $t27 := borrow_global<VASP::ParentVASP>($t23) on_abort goto L7 with $t16 at /home/ying/diem/language/diem-framework/modules/VASP.move:79:33+17
    if (!$ResourceExists($1_VASP_ParentVASP_$memory, $t23)) {
        call $ExecFailureAbort();
    } else {
        $t27 := $Mutation($Global($t23), EmptyVec(), $ResourceValue($1_VASP_ParentVASP_$memory, $t23));
    }
    if ($abort_flag) {
        assume {:print "$at(35,3661,3678)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(23,7):", $t16} $t16 == $t16;
        goto L7;
    }

    // $t28 := borrow_field<VASP::ParentVASP>.num_children($t27) at /home/ying/diem/language/diem-framework/modules/VASP.move:79:28+65
    $t28 := $ChildMutation($t27, 0, $num_children#$1_VASP_ParentVASP($Dereference($t27)));

    // trace_local[num_children]($t28) at /home/ying/diem/language/diem-framework/modules/VASP.move:79:13+12
    $temp_0'u64' := $Dereference($t28);
    assume {:print "$track_local(23,7,9):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t29 := read_ref($t28) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:16+13
    assume {:print "$at(35,3827,3840)"} true;
    $t29 := $Dereference($t28);

    // $t30 := 65536 at /home/ying/diem/language/diem-framework/modules/VASP.move:81:32+18
    $t30 := 65536;
    assume $IsValid'u64'($t30);

    // $t31 := <($t29, $t30) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:30+1
    call $t31 := $Lt($t29, $t30);

    // $t32 := 1 at /home/ying/diem/language/diem-framework/modules/VASP.move:81:75+18
    $t32 := 1;
    assume $IsValid'u64'($t32);

    // $t33 := opaque begin: Errors::limit_exceeded($t32) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:52+42

    // assume WellFormed($t33) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:52+42
    assume $IsValid'u64'($t33);

    // assume Eq<u64>($t33, 8) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:52+42
    assume $IsEqual'u64'($t33, 8);

    // $t33 := opaque end: Errors::limit_exceeded($t32) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:52+42

    // trace_local[tmp#$7]($t33) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    assume {:print "$track_local(23,7,7):", $t33} $t33 == $t33;

    // trace_local[tmp#$6]($t31) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    assume {:print "$track_local(23,7,6):", $t31} $t31 == $t31;

    // if ($t31) goto L4 else goto L12 at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    if ($t31) { goto L4; } else { goto L12; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
L5:

    // destroy($t28) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86

    // trace_abort($t33) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    assume {:print "$at(35,3820,3906)"} true;
    assume {:print "$track_abort(23,7):", $t33} $t33 == $t33;

    // $t16 := move($t33) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    $t16 := $t33;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:82:26+12
    assume {:print "$at(35,3933,3945)"} true;
L4:

    // $t34 := read_ref($t28) at /home/ying/diem/language/diem-framework/modules/VASP.move:82:25+13
    $t34 := $Dereference($t28);

    // $t35 := 1 at /home/ying/diem/language/diem-framework/modules/VASP.move:82:41+1
    $t35 := 1;
    assume $IsValid'u64'($t35);

    // $t36 := +($t34, $t35) on_abort goto L7 with $t16 at /home/ying/diem/language/diem-framework/modules/VASP.move:82:39+1
    call $t36 := $AddU64($t34, $t35);
    if ($abort_flag) {
        assume {:print "$at(35,3946,3947)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(23,7):", $t16} $t16 == $t16;
        goto L7;
    }

    // write_ref($t28, $t36) at /home/ying/diem/language/diem-framework/modules/VASP.move:82:9+33
    $t28 := $UpdateMutation($t28, $t36);

    // write_back[Reference($t27).num_children]($t28) at /home/ying/diem/language/diem-framework/modules/VASP.move:82:9+33
    $t27 := $UpdateMutation($t27, $Update'$1_VASP_ParentVASP'_num_children($Dereference($t27), $Dereference($t28)));

    // @141 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // state save for global update invariants
    assume {:print "$at(35,3108,4012)"} true;
    $1_VASP_ChildVASP_$memory#141 := $1_VASP_ChildVASP_$memory;

    // @140 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    $1_VASP_ParentVASP_$memory#140 := $1_VASP_ParentVASP_$memory;

    // write_back[VASP::ParentVASP@]($t27) at /home/ying/diem/language/diem-framework/modules/VASP.move:82:9+33
    assume {:print "$at(35,3916,3949)"} true;
    $1_VASP_ParentVASP_$memory := $ResourceUpdate($1_VASP_ParentVASP_$memory, $GlobalLocationAddress($t27),
        $Dereference($t27));

    // assert forall addr: TypeDomain<address>() where VASP::$is_parent[@140](addr): VASP::$is_parent(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:223:9+94
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:223:9+94
    assume {:print "$at(35,9497,9591)"} true;
    assert {:msg "assert_failed(35,9497,9591): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#140, addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr)));

    // assert forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,9758,9909)"} true;
    assert {:msg "assert_failed(35,9758,9909): global memory invariant does not hold"}
      (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assert forall a: TypeDomain<address>() where VASP::$is_child[@141](a): Eq<address>(VASP::spec_parent_address(a), VASP::spec_parent_address[@141, @140](a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    assume {:print "$at(35,10996,11121)"} true;
    assert {:msg "assert_failed(35,10996,11121): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory#141, a))  ==> ($IsEqual'address'($1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, a), $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory#141, $1_VASP_ParentVASP_$memory#140, a))));

    // assert forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume {:print "$at(26,10909,11010)"} true;
    assert {:msg "assert_failed(26,10909,11010): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // $t37 := pack VASP::ChildVASP($t23) at /home/ying/diem/language/diem-framework/modules/VASP.move:83:24+30
    assume {:print "$at(35,3974,4004)"} true;
    $t37 := $1_VASP_ChildVASP($t23);

    // @142 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    // state save for global update invariants
    assume {:print "$at(26,10909,11010)"} true;
    $1_VASP_ChildVASP_$memory#142 := $1_VASP_ChildVASP_$memory;

    // @143 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    $1_VASP_ParentVASP_$memory#143 := $1_VASP_ParentVASP_$memory;

    // move_to<VASP::ChildVASP>($t37, $t1) on_abort goto L7 with $t16 at /home/ying/diem/language/diem-framework/modules/VASP.move:83:9+7
    assume {:print "$at(35,3959,3966)"} true;
    if ($ResourceExists($1_VASP_ChildVASP_$memory, $1_Signer_spec_address_of($t1))) {
        call $ExecFailureAbort();
    } else {
        $1_VASP_ChildVASP_$memory := $ResourceUpdate($1_VASP_ChildVASP_$memory, $1_Signer_spec_address_of($t1), $t37);
    }
    if ($abort_flag) {
        assume {:print "$at(35,3959,3966)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(23,7):", $t16} $t16 == $t16;
        goto L7;
    }

    // assert forall addr: TypeDomain<address>() where VASP::$is_child[@142](addr): VASP::$is_child(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:226:9+92
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:226:9+92
    assume {:print "$at(35,9601,9693)"} true;
    assert {:msg "assert_failed(35,9601,9693): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory#142, addr))  ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr)));

    // assert forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,9758,9909)"} true;
    assert {:msg "assert_failed(35,9758,9909): global memory invariant does not hold"}
      (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assert forall a: TypeDomain<address>() where VASP::$is_child[@142](a): Eq<address>(VASP::spec_parent_address(a), VASP::spec_parent_address[@142, @143](a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    assume {:print "$at(35,10996,11121)"} true;
    assert {:msg "assert_failed(35,10996,11121): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory#142, a))  ==> ($IsEqual'address'($1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, a), $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory#142, $1_VASP_ParentVASP_$memory#143, a))));

    // assert forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume {:print "$at(26,10909,11010)"} true;
    assert {:msg "assert_failed(26,10909,11010): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // label L6 at /home/ying/diem/language/diem-framework/modules/VASP.move:84:5+1
    assume {:print "$at(35,4011,4012)"} true;
L6:

    // assert Not(VASP::$is_vasp[@133, @134]($t11)) at /home/ying/diem/language/diem-framework/modules/VASP.move:99:9+61
    assume {:print "$at(35,4796,4857)"} true;
    assert {:msg "assert_failed(35,4796,4857): function does not abort under this condition"}
      !$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#133, $1_VASP_ParentVASP_$memory#134, $t11);

    // assert Not(Not(VASP::$is_parent[@134]($t12))) at /home/ying/diem/language/diem-framework/modules/VASP.move:100:9+64
    assume {:print "$at(35,4866,4930)"} true;
    assert {:msg "assert_failed(35,4866,4930): function does not abort under this condition"}
      !!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory#134, $t12);

    // assert Not(Gt(Add(VASP::spec_num_children[@134]($t12), 1), 65536)) at /home/ying/diem/language/diem-framework/modules/VASP.move:101:9+94
    assume {:print "$at(35,4939,5033)"} true;
    assert {:msg "assert_failed(35,4939,5033): function does not abort under this condition"}
      !(($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#134, $t12) + 1) > 65536);

    // assert Not(Not(exists[@135]<Roles::RoleId>($t13))) at /home/ying/diem/language/diem-framework/modules/Roles.move:553:9+59
    assume {:print "$at(28,24626,24685)"} true;
    assert {:msg "assert_failed(28,24626,24685): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#135, $t13);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@135]<Roles::RoleId>($t13)), 5)) at /home/ying/diem/language/diem-framework/modules/Roles.move:554:9+89
    assume {:print "$at(28,24694,24783)"} true;
    assert {:msg "assert_failed(28,24694,24783): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#135, $t13)), 5);

    // assert Not(Not(exists[@135]<Roles::RoleId>($t11))) at /home/ying/diem/language/diem-framework/modules/Roles.move:559:9+62
    assume {:print "$at(28,24864,24926)"} true;
    assert {:msg "assert_failed(28,24864,24926): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#135, $t11);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@135]<Roles::RoleId>($t11)), 6)) at /home/ying/diem/language/diem-framework/modules/Roles.move:560:9+91
    assume {:print "$at(28,24935,25026)"} true;
    assert {:msg "assert_failed(28,24935,25026): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#135, $t11)), 6);

    // assert Eq<u64>(VASP::spec_num_children(Signer::spec_address_of($t0)), Add(VASP::spec_num_children[@134](Signer::spec_address_of[]($t0)), 1)) at /home/ying/diem/language/diem-framework/modules/VASP.move:107:9+82
    assume {:print "$at(35,5150,5232)"} true;
    assert {:msg "assert_failed(35,5150,5232): post-condition does not hold"}
      $IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, $1_Signer_spec_address_of($t0)), ($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#134, $1_Signer_spec_address_of($t0)) + 1));

    // assert VASP::$is_child($t11) at /home/ying/diem/language/diem-framework/modules/VASP.move:108:9+29
    assume {:print "$at(35,5241,5270)"} true;
    assert {:msg "assert_failed(35,5241,5270): post-condition does not hold"}
      $1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t11);

    // assert Eq<address>(VASP::spec_parent_address($t11), Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:109:9+55
    assume {:print "$at(35,5279,5334)"} true;
    assert {:msg "assert_failed(35,5279,5334): post-condition does not hold"}
      $IsEqual'address'($1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t11), $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/diem-framework/modules/VASP.move:109:9+55
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:84:5+1
    assume {:print "$at(35,4011,4012)"} true;
L7:

    // assert Or(Or(Or(Or(Or(Or(VASP::$is_vasp[@133, @134]($t11), Not(VASP::$is_parent[@134]($t12))), Gt(Add(VASP::spec_num_children[@134]($t12), 1), 65536)), Not(exists[@135]<Roles::RoleId>($t13))), Neq<u64>(select Roles::RoleId.role_id(global[@135]<Roles::RoleId>($t13)), 5)), Not(exists[@135]<Roles::RoleId>($t11))), Neq<u64>(select Roles::RoleId.role_id(global[@135]<Roles::RoleId>($t11)), 6)) at /home/ying/diem/language/diem-framework/modules/VASP.move:85:5+551
    assume {:print "$at(35,4017,4568)"} true;
    assert {:msg "assert_failed(35,4017,4568): abort not covered by any of the `aborts_if` clauses"}
      (((((($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#133, $1_VASP_ParentVASP_$memory#134, $t11) || !$1_VASP_$is_parent($1_VASP_ParentVASP_$memory#134, $t12)) || (($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#134, $t12) + 1) > 65536)) || !$ResourceExists($1_Roles_RoleId_$memory#135, $t13)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#135, $t13)), 5)) || !$ResourceExists($1_Roles_RoleId_$memory#135, $t11)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#135, $t11)), 6));

    // assert Or(Or(Or(Or(Or(Or(And(VASP::$is_vasp[@133, @134]($t11), Eq(6, $t16)), And(Not(VASP::$is_parent[@134]($t12)), Eq(7, $t16))), And(Gt(Add(VASP::spec_num_children[@134]($t12), 1), 65536), Eq(8, $t16))), And(Not(exists[@135]<Roles::RoleId>($t13)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global[@135]<Roles::RoleId>($t13)), 5), Eq(3, $t16))), And(Not(exists[@135]<Roles::RoleId>($t11)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global[@135]<Roles::RoleId>($t11)), 6), Eq(3, $t16))) at /home/ying/diem/language/diem-framework/modules/VASP.move:85:5+551
    assert {:msg "assert_failed(35,4017,4568): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#133, $1_VASP_ParentVASP_$memory#134, $t11) && $IsEqual'num'(6, $t16)) || (!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory#134, $t12) && $IsEqual'num'(7, $t16))) || ((($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#134, $t12) + 1) > 65536) && $IsEqual'num'(8, $t16))) || (!$ResourceExists($1_Roles_RoleId_$memory#135, $t13) && $IsEqual'num'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#135, $t13)), 5) && $IsEqual'num'(3, $t16))) || (!$ResourceExists($1_Roles_RoleId_$memory#135, $t11) && $IsEqual'num'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#135, $t11)), 6) && $IsEqual'num'(3, $t16)));

    // abort($t16) at /home/ying/diem/language/diem-framework/modules/VASP.move:85:5+551
    $abort_code := $t16;
    $abort_flag := true;
    return;

    // label L12 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L12:

    // destroy($t27) at <internal>:1:1+10

    // goto L5 at <internal>:1:1+10
    goto L5;

}

// fun VASP::publish_parent_vasp_credential [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
procedure {:timeLimit 40} $1_VASP_publish_parent_vasp_credential$verify(_$t0: $signer, _$t1: $signer) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
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
    var $t19: int;
    var $t20: $1_VASP_ParentVASP;
    var $t0: $signer;
    var $t1: $signer;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#136: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_Roles_RoleId_$memory#137: $Memory $1_Roles_RoleId;
    var $1_VASP_ChildVASP_$memory#138: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#139: $Memory $1_VASP_ParentVASP;
    var $1_VASP_ParentVASP_$memory#144: $Memory $1_VASP_ParentVASP;
    var $1_VASP_ChildVASP_$memory#145: $Memory $1_VASP_ChildVASP;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(35,1979,2408)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:56:9+46
    assume {:print "$at(35,2649,2695)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t1));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // @136 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    assume {:print "$at(35,1979,1980)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#136 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @137 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    $1_Roles_RoleId_$memory#137 := $1_Roles_RoleId_$memory;

    // @138 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    $1_VASP_ChildVASP_$memory#138 := $1_VASP_ChildVASP_$memory;

    // @139 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    $1_VASP_ParentVASP_$memory#139 := $1_VASP_ParentVASP_$memory;

    // trace_local[vasp]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    assume {:print "$track_local(23,8,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    assume {:print "$track_local(23,8,1):", $t1} $t1 == $t1;

    // opaque begin: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    assume {:print "$at(35,2075,2108)"} true;

    // assume Identical($t8, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    assume ($t8 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t8) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    if ($t8) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
L5:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t9)) at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t9));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    assume {:print "$at(35,2075,2108)"} true;
    assume {:print "$track_abort(23,8):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
L4:

    // opaque end: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33

    // assume Identical($t10, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    assume {:print "$at(35,2118,2163)"} true;

    // assume Identical($t11, Or(Or(Not(exists<Roles::RoleId>($t10)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    assume ($t11 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t10) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)));

    // if ($t11) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    if ($t11) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
L7:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t10)), Eq(5, $t9)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 1), Eq(3, $t9))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t9))) at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t10) && $IsEqual'num'(5, $t9)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 1) && $IsEqual'num'(3, $t9))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t9)));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    assume {:print "$at(35,2118,2163)"} true;
    assume {:print "$track_abort(23,8):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
L6:

    // opaque end: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    assume {:print "$at(35,2173,2209)"} true;

    // assume Identical($t13, Or(Not(exists<Roles::RoleId>($t12)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t12)), 5))) at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    assume ($t13 == (!$ResourceExists($1_Roles_RoleId_$memory, $t12) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t12)), 5)));

    // if ($t13) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    if ($t13) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
L9:

    // assume Or(And(Not(exists<Roles::RoleId>($t12)), Eq(5, $t9)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t12)), 5), Eq(3, $t9))) at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t12) && $IsEqual'num'(5, $t9)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t12)), 5) && $IsEqual'num'(3, $t9)));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    assume {:print "$at(35,2173,2209)"} true;
    assume {:print "$track_abort(23,8):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
L8:

    // opaque end: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36

    // $t14 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:47:25+24
    assume {:print "$at(35,2235,2259)"} true;

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/VASP.move:47:25+24
    assume $IsValid'address'($t14);

    // assume Eq<address>($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:47:25+24
    assume $IsEqual'address'($t14, $1_Signer_spec_address_of($t0));

    // $t14 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:47:25+24

    // trace_local[vasp_addr]($t14) at /home/ying/diem/language/diem-framework/modules/VASP.move:47:13+9
    assume {:print "$track_local(23,8,4):", $t14} $t14 == $t14;

    // $t15 := opaque begin: VASP::is_vasp($t14) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:17+18
    assume {:print "$at(35,2277,2295)"} true;

    // assume WellFormed($t15) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:17+18
    assume $IsValid'bool'($t15);

    // assume Eq<bool>($t15, VASP::$is_vasp($t14)) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:17+18
    assume $IsEqual'bool'($t15, $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t14));

    // $t15 := opaque end: VASP::is_vasp($t14) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:17+18

    // $t16 := !($t15) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:16+1
    call $t16 := $Not($t15);

    // $t17 := 0 at /home/ying/diem/language/diem-framework/modules/VASP.move:48:63+21
    $t17 := 0;
    assume $IsValid'u64'($t17);

    // $t18 := opaque begin: Errors::already_published($t17) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:37+48

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:37+48
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 6) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:37+48
    assume $IsEqual'u64'($t18, 6);

    // $t18 := opaque end: Errors::already_published($t17) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:37+48

    // trace_local[tmp#$3]($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    assume {:print "$track_local(23,8,3):", $t18} $t18 == $t18;

    // trace_local[tmp#$2]($t16) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    assume {:print "$track_local(23,8,2):", $t16} $t16 == $t16;

    // if ($t16) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    if ($t16) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    assume {:print "$at(35,2269,2346)"} true;
    assume {:print "$track_abort(23,8):", $t18} $t18 == $t18;

    // $t9 := move($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    $t9 := $t18;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASP.move:49:17+4
    assume {:print "$at(35,2364,2368)"} true;
L0:

    // $t19 := 0 at /home/ying/diem/language/diem-framework/modules/VASP.move:49:50+1
    $t19 := 0;
    assume $IsValid'u64'($t19);

    // $t20 := pack VASP::ParentVASP($t19) at /home/ying/diem/language/diem-framework/modules/VASP.move:49:23+30
    $t20 := $1_VASP_ParentVASP($t19);

    // @145 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // state save for global update invariants
    assume {:print "$at(35,1979,2408)"} true;
    $1_VASP_ChildVASP_$memory#145 := $1_VASP_ChildVASP_$memory;

    // @144 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    $1_VASP_ParentVASP_$memory#144 := $1_VASP_ParentVASP_$memory;

    // move_to<VASP::ParentVASP>($t20, $t0) on_abort goto L3 with $t9 at /home/ying/diem/language/diem-framework/modules/VASP.move:49:9+7
    assume {:print "$at(35,2356,2363)"} true;
    if ($ResourceExists($1_VASP_ParentVASP_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_VASP_ParentVASP_$memory := $ResourceUpdate($1_VASP_ParentVASP_$memory, $1_Signer_spec_address_of($t0), $t20);
    }
    if ($abort_flag) {
        assume {:print "$at(35,2356,2363)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(23,8):", $t9} $t9 == $t9;
        goto L3;
    }

    // assert forall addr: TypeDomain<address>() where VASP::$is_parent[@144](addr): VASP::$is_parent(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:223:9+94
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:223:9+94
    assume {:print "$at(35,9497,9591)"} true;
    assert {:msg "assert_failed(35,9497,9591): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#144, addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr)));

    // assert forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,9758,9909)"} true;
    assert {:msg "assert_failed(35,9758,9909): global memory invariant does not hold"}
      (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assert forall a: TypeDomain<address>() where VASP::$is_child[@145](a): Eq<address>(VASP::spec_parent_address(a), VASP::spec_parent_address[@145, @144](a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    assume {:print "$at(35,10996,11121)"} true;
    assert {:msg "assert_failed(35,10996,11121): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory#145, a))  ==> ($IsEqual'address'($1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, a), $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory#145, $1_VASP_ParentVASP_$memory#144, a))));

    // assert forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume {:print "$at(26,10909,11010)"} true;
    assert {:msg "assert_failed(26,10909,11010): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:50:5+1
    assume {:print "$at(35,2407,2408)"} true;
L2:

    // assert Not(Not(DiemTimestamp::$is_operating[@136]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#136);

    // assert Not(Not(exists[@137]<Roles::RoleId>($t6))) at /home/ying/diem/language/diem-framework/modules/Roles.move:546:9+59
    assume {:print "$at(28,24327,24386)"} true;
    assert {:msg "assert_failed(28,24327,24386): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#137, $t6);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@137]<Roles::RoleId>($t6)), 1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:547:9+97
    assume {:print "$at(28,24395,24492)"} true;
    assert {:msg "assert_failed(28,24395,24492): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#137, $t6)), 1);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t1), b1e55ed)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:49:9+108
    assume {:print "$at(9,2057,2165)"} true;
    assert {:msg "assert_failed(9,2057,2165): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453);

    // assert Not(Not(exists[@137]<Roles::RoleId>($t7))) at /home/ying/diem/language/diem-framework/modules/Roles.move:553:9+59
    assume {:print "$at(28,24626,24685)"} true;
    assert {:msg "assert_failed(28,24626,24685): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#137, $t7);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@137]<Roles::RoleId>($t7)), 5)) at /home/ying/diem/language/diem-framework/modules/Roles.move:554:9+89
    assume {:print "$at(28,24694,24783)"} true;
    assert {:msg "assert_failed(28,24694,24783): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#137, $t7)), 5);

    // assert Not(VASP::$is_vasp[@138, @139]($t5)) at /home/ying/diem/language/diem-framework/modules/VASP.move:57:9+60
    assume {:print "$at(35,2704,2764)"} true;
    assert {:msg "assert_failed(35,2704,2764): function does not abort under this condition"}
      !$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#138, $1_VASP_ParentVASP_$memory#139, $t5);

    // assert VASP::$is_parent($t5) at /home/ying/diem/language/diem-framework/modules/VASP.move:63:9+29
    assume {:print "$at(35,2915,2944)"} true;
    assert {:msg "assert_failed(35,2915,2944): post-condition does not hold"}
      $1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t5);

    // assert Eq<u64>(VASP::spec_num_children($t5), 0) at /home/ying/diem/language/diem-framework/modules/VASP.move:64:9+42
    assume {:print "$at(35,2953,2995)"} true;
    assert {:msg "assert_failed(35,2953,2995): post-condition does not hold"}
      $IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, $t5), 0);

    // assert forall a: TypeDomain<address>(): Eq<bool>(exists<VASP::ChildVASP>(a), exists[@138]<VASP::ChildVASP>(a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:252:9+78
    assume {:print "$at(35,10561,10639)"} true;
    assert {:msg "assert_failed(35,10561,10639): post-condition does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($IsEqual'bool'($ResourceExists($1_VASP_ChildVASP_$memory, a), $ResourceExists($1_VASP_ChildVASP_$memory#138, a))));

    // assert forall parent: TypeDomain<address>() where VASP::$is_parent[@139](parent): Eq<u64>(VASP::spec_num_children(parent), VASP::spec_num_children[@139](parent)) at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    assume {:print "$at(35,10696,10845)"} true;
    assert {:msg "assert_failed(35,10696,10845): post-condition does not hold"}
      (forall parent: int :: $IsValid'address'(parent) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#139, parent))  ==> ($IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, parent), $1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#139, parent))));

    // return () at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:50:5+1
    assume {:print "$at(35,2407,2408)"} true;
L3:

    // assert Or(Or(Or(Or(Or(Or(Not(DiemTimestamp::$is_operating[@136]()), Not(exists[@137]<Roles::RoleId>($t6))), Neq<u64>(select Roles::RoleId.role_id(global[@137]<Roles::RoleId>($t6)), 1)), Neq<address>(Signer::spec_address_of[]($t1), b1e55ed)), Not(exists[@137]<Roles::RoleId>($t7))), Neq<u64>(select Roles::RoleId.role_id(global[@137]<Roles::RoleId>($t7)), 5)), VASP::$is_vasp[@138, @139]($t5)) at /home/ying/diem/language/diem-framework/modules/VASP.move:52:5+420
    assume {:print "$at(35,2414,2834)"} true;
    assert {:msg "assert_failed(35,2414,2834): abort not covered by any of the `aborts_if` clauses"}
      ((((((!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#136) || !$ResourceExists($1_Roles_RoleId_$memory#137, $t6)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#137, $t6)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)) || !$ResourceExists($1_Roles_RoleId_$memory#137, $t7)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#137, $t7)), 5)) || $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#138, $1_VASP_ParentVASP_$memory#139, $t5));

    // assert Or(Or(Or(Or(Or(Or(And(Not(DiemTimestamp::$is_operating[@136]()), Eq(1, $t9)), And(Not(exists[@137]<Roles::RoleId>($t6)), Eq(5, $t9))), And(Neq<u64>(select Roles::RoleId.role_id(global[@137]<Roles::RoleId>($t6)), 1), Eq(3, $t9))), And(Neq<address>(Signer::spec_address_of[]($t1), b1e55ed), Eq(2, $t9))), And(Not(exists[@137]<Roles::RoleId>($t7)), Eq(5, $t9))), And(Neq<u64>(select Roles::RoleId.role_id(global[@137]<Roles::RoleId>($t7)), 5), Eq(3, $t9))), And(VASP::$is_vasp[@138, @139]($t5), Eq(6, $t9))) at /home/ying/diem/language/diem-framework/modules/VASP.move:52:5+420
    assert {:msg "assert_failed(35,2414,2834): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#136) && $IsEqual'num'(1, $t9)) || (!$ResourceExists($1_Roles_RoleId_$memory#137, $t6) && $IsEqual'num'(5, $t9))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#137, $t6)), 1) && $IsEqual'num'(3, $t9))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t9))) || (!$ResourceExists($1_Roles_RoleId_$memory#137, $t7) && $IsEqual'num'(5, $t9))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#137, $t7)), 5) && $IsEqual'num'(3, $t9))) || ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#138, $1_VASP_ParentVASP_$memory#139, $t5) && $IsEqual'num'(6, $t9)));

    // abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:52:5+420
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

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
    s1 == s2
}

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
    s1 == s2
}

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
    s1 == s2
}
var $1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential;

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

// spec fun at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:244:9+111
function {:inline} $1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory: $Memory $1_RecoveryAddress_RecoveryAddress, addr: int): bool {
    $ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory, addr)
}

// struct RecoveryAddress::RecoveryAddress at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:17:5+91
type {:datatype} $1_RecoveryAddress_RecoveryAddress;
function {:constructor} $1_RecoveryAddress_RecoveryAddress($rotation_caps: Vec ($1_DiemAccount_KeyRotationCapability)): $1_RecoveryAddress_RecoveryAddress;
function {:inline} $Update'$1_RecoveryAddress_RecoveryAddress'_rotation_caps(s: $1_RecoveryAddress_RecoveryAddress, x: Vec ($1_DiemAccount_KeyRotationCapability)): $1_RecoveryAddress_RecoveryAddress {
    $1_RecoveryAddress_RecoveryAddress(x)
}
function $IsValid'$1_RecoveryAddress_RecoveryAddress'(s: $1_RecoveryAddress_RecoveryAddress): bool {
    $IsValid'vec'$1_DiemAccount_KeyRotationCapability''($rotation_caps#$1_RecoveryAddress_RecoveryAddress(s))
}
function {:inline} $IsEqual'$1_RecoveryAddress_RecoveryAddress'(s1: $1_RecoveryAddress_RecoveryAddress, s2: $1_RecoveryAddress_RecoveryAddress): bool {
    s1 == s2
}
var $1_RecoveryAddress_RecoveryAddress_$memory: $Memory $1_RecoveryAddress_RecoveryAddress;
