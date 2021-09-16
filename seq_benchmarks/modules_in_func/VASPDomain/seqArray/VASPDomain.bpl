
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
// Native Vector implementation for element type `$1_VASPDomain_VASPDomain`


function {:inline} $IsEqual'vec'$1_VASPDomain_VASPDomain''(v1: Vec ($1_VASPDomain_VASPDomain), v2: Vec ($1_VASPDomain_VASPDomain)): bool {
    v1 == v2
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

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_VASPDomain_VASPDomain'(v), 0)
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
    s1 == s2
}
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
    s1 == s2
}

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

// spec fun at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:108:5+90
function {:inline} $1_VASPDomain_$has_vasp_domains($1_VASPDomain_VASPDomains_$memory: $Memory $1_VASPDomain_VASPDomains, addr: int): bool {
    $ResourceExists($1_VASPDomain_VASPDomains_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:298:5+106
function {:inline} $1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory: $Memory $1_VASPDomain_VASPDomainManager): bool {
    $ResourceExists($1_VASPDomain_VASPDomainManager_$memory, 186537453)
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
    s1 == s2
}

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
    s1 == s2
}

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
    s1 == s2
}
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
    s1 == s2
}
var $1_VASPDomain_VASPDomains_$memory: $Memory $1_VASPDomain_VASPDomains;

// fun VASPDomain::add_vasp_domain [verification] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
procedure {:timeLimit 40} $1_VASPDomain_add_vasp_domain$verify(_$t0: $signer, _$t1: int, _$t2: Vec (int)) returns ()
{
    // declare local variables
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: $Mutation ($1_VASPDomain_VASPDomains);
    var $t10: $1_VASPDomain_VASPDomain;
    var $t11: Vec ($1_VASPDomain_VASPDomain);
    var $t12: int;
    var $t13: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent';
    var $t14: $1_VASPDomain_VASPDomainEvent;
    var $t15: int;
    var $t16: bool;
    var $t17: int;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: bool;
    var $t22: int;
    var $t23: int;
    var $t24: $Mutation ($1_VASPDomain_VASPDomains);
    var $t25: $1_VASPDomain_VASPDomain;
    var $t26: Vec ($1_VASPDomain_VASPDomain);
    var $t27: bool;
    var $t28: bool;
    var $t29: int;
    var $t30: int;
    var $t31: $Mutation (Vec ($1_VASPDomain_VASPDomain));
    var $t32: int;
    var $t33: $Mutation ($1_VASPDomain_VASPDomainManager);
    var $t34: $Mutation ($1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent');
    var $t35: bool;
    var $t36: $1_VASPDomain_VASPDomainEvent;
    var $t37: Vec ($1_VASPDomain_VASPDomain);
    var $t0: $signer;
    var $t1: int;
    var $t2: Vec (int);
    var $temp_0'$1_VASPDomain_VASPDomain': $1_VASPDomain_VASPDomain;
    var $temp_0'$1_VASPDomain_VASPDomains': $1_VASPDomain_VASPDomains;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_VASPDomain_VASPDomains_$memory#123: $Memory $1_VASPDomain_VASPDomains;
    var $1_VASPDomain_VASPDomainManager_$memory#124: $Memory $1_VASPDomain_VASPDomainManager;
    var $1_Roles_RoleId_$memory#125: $Memory $1_Roles_RoleId;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t24));
    assume IsEmptyVec(p#$Mutation($t31));
    assume IsEmptyVec(p#$Mutation($t33));
    assume IsEmptyVec(p#$Mutation($t34));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(36,5713,6793)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    assume $IsValid'vec'u8''($t2);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomainManager>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0);
    ($IsValid'$1_VASPDomain_VASPDomainManager'($rsc))));

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomains>(): And(WellFormed($rsc), And(And(forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($rsc), i))), 63), forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($rsc), i), Index(select VASPDomain::VASPDomains.domains($rsc), j))), forall $elem: select VASPDomain::VASPDomains.domains($rsc): Le(Len<u8>(select VASPDomain::VASPDomain.domain($elem)), 63))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1080
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0);
    (($IsValid'$1_VASPDomain_VASPDomains'($rsc) && (((var $range_1 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i))) <= 63))))) && (var $range_3 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_4: int :: $InRange($range_3, $i_4) ==> (var i := $i_4;
    ((var $range_5 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_6: int :: $InRange($range_5, $i_6) ==> (var j := $i_6;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i), ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), j))))))))))) && (var $range_7 := $domains#$1_VASPDomain_VASPDomains($rsc); (forall $i_8: int :: InRangeVec($range_7, $i_8) ==> (var $elem := ReadVec($range_7, $i_8);
    ((LenVec($domain#$1_VASPDomain_VASPDomain($elem)) <= 63))))))))));

    // assume Identical($t11, select VASPDomain::VASPDomains.domains(global<VASPDomain::VASPDomains>($t1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:185:9+51
    assume {:print "$at(36,7070,7121)"} true;
    assume ($t11 == $domains#$1_VASPDomain_VASPDomains($ResourceValue($1_VASPDomain_VASPDomains_$memory, $t1)));

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // assume Identical($t13, select VASPDomain::VASPDomainManager.vasp_domain_events(global<VASPDomain::VASPDomainManager>(b1e55ed))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:201:9+79
    assume {:print "$at(36,7806,7885)"} true;
    assume ($t13 == $vasp_domain_events#$1_VASPDomain_VASPDomainManager($ResourceValue($1_VASPDomain_VASPDomainManager_$memory, 186537453)));

    // assume Identical($t14, pack VASPDomain::VASPDomainEvent(false, pack VASPDomain::VASPDomain($t2), $t1)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:202:9+130
    assume {:print "$at(36,7894,8024)"} true;
    assume ($t14 == $1_VASPDomain_VASPDomainEvent(false, $1_VASPDomain_VASPDomain($t2), $t1));

    // @125 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1
    assume {:print "$at(36,5713,5714)"} true;
    $1_Roles_RoleId_$memory#125 := $1_Roles_RoleId_$memory;

    // @124 := save_mem(VASPDomain::VASPDomainManager) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1
    $1_VASPDomain_VASPDomainManager_$memory#124 := $1_VASPDomain_VASPDomainManager_$memory;

    // @123 := save_mem(VASPDomain::VASPDomains) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1
    $1_VASPDomain_VASPDomains_$memory#123 := $1_VASPDomain_VASPDomains_$memory;

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1
    assume {:print "$track_local(22,0,0):", $t0} $t0 == $t0;

    // trace_local[address]($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1
    assume {:print "$track_local(22,0,1):", $t1} $t1 == $t1;

    // trace_local[domain]($t2) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:145:5+1
    assume {:print "$track_local(22,0,2):", $t2} $t2 == $t2;

    // assume Identical($t15, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t15 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:150:9+45
    assume {:print "$at(36,5880,5925)"} true;

    // assume Identical($t16, Or(Or(Not(exists<Roles::RoleId>($t15)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t15)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:150:9+45
    assume ($t16 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t15) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t15)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t16) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:150:9+45
    if ($t16) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:150:9+45
L9:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t15)), Eq(5, $t17)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t15)), 1), Eq(3, $t17))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t17))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:150:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t15) && $IsEqual'num'(5, $t17)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t15)), 1) && $IsEqual'num'(3, $t17))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t17)));

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:150:9+45
    assume {:print "$at(36,5880,5925)"} true;
    assume {:print "$track_abort(22,0):", $t17} $t17 == $t17;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:150:9+45
    goto L7;

    // label L8 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:150:9+45
L8:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:150:9+45

    // $t18 := VASPDomain::tc_domain_manager_exists() on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:16+26
    assume {:print "$at(36,5942,5968)"} true;
    call $t18 := $1_VASPDomain_tc_domain_manager_exists();
    if ($abort_flag) {
        assume {:print "$at(36,5942,5968)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,0):", $t17} $t17 == $t17;
        goto L7;
    }

    // $t19 := 1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:66+20
    $t19 := 1;
    assume $IsValid'u64'($t19);

    // $t20 := opaque begin: Errors::not_published($t19) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:44+43

    // assume WellFormed($t20) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:44+43
    assume $IsValid'u64'($t20);

    // assume Eq<u64>($t20, 5) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:44+43
    assume $IsEqual'u64'($t20, 5);

    // $t20 := opaque end: Errors::not_published($t19) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:44+43

    // trace_local[tmp#$4]($t20) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:9+79
    assume {:print "$track_local(22,0,4):", $t20} $t20 == $t20;

    // trace_local[tmp#$3]($t18) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:9+79
    assume {:print "$track_local(22,0,3):", $t18} $t18 == $t18;

    // if ($t18) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:9+79
    if ($t18) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:9+79
L1:

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:9+79
    assume {:print "$at(36,5935,6014)"} true;
    assume {:print "$track_abort(22,0):", $t20} $t20 == $t20;

    // $t17 := move($t20) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:9+79
    $t17 := $t20;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:151:9+79
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:153:33+7
    assume {:print "$at(36,6064,6071)"} true;
L0:

    // $t21 := exists<VASPDomain::VASPDomains>($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:153:13+6
    $t21 := $ResourceExists($1_VASPDomain_VASPDomains_$memory, $t1);

    // $t22 := 4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:154:35+27
    assume {:print "$at(36,6108,6135)"} true;
    $t22 := 4;
    assume $IsValid'u64'($t22);

    // $t23 := opaque begin: Errors::not_published($t22) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:154:13+50

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:154:13+50
    assume $IsValid'u64'($t23);

    // assume Eq<u64>($t23, 5) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:154:13+50
    assume $IsEqual'u64'($t23, 5);

    // $t23 := opaque end: Errors::not_published($t22) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:154:13+50

    // trace_local[tmp#$6]($t23) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:152:9+122
    assume {:print "$at(36,6024,6146)"} true;
    assume {:print "$track_local(22,0,6):", $t23} $t23 == $t23;

    // trace_local[tmp#$5]($t21) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:152:9+122
    assume {:print "$track_local(22,0,5):", $t21} $t21 == $t21;

    // if ($t21) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:152:9+122
    if ($t21) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:152:9+122
L3:

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:152:9+122
    assume {:print "$at(36,6024,6146)"} true;
    assume {:print "$track_abort(22,0):", $t23} $t23 == $t23;

    // $t17 := move($t23) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:152:9+122
    $t17 := $t23;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:152:9+122
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:157:62+7
    assume {:print "$at(36,6210,6217)"} true;
L2:

    // $t24 := borrow_global<VASPDomain::VASPDomains>($t1) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:157:31+17
    if (!$ResourceExists($1_VASPDomain_VASPDomains_$memory, $t1)) {
        call $ExecFailureAbort();
    } else {
        $t24 := $Mutation($Global($t1), EmptyVec(), $ResourceValue($1_VASPDomain_VASPDomains_$memory, $t1));
    }
    if ($abort_flag) {
        assume {:print "$at(36,6179,6196)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,0):", $t17} $t17 == $t17;
        goto L7;
    }

    // trace_local[account_domains]($t24) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:157:13+15
    $temp_0'$1_VASPDomain_VASPDomains' := $Dereference($t24);
    assume {:print "$track_local(22,0,9):", $temp_0'$1_VASPDomain_VASPDomains'} $temp_0'$1_VASPDomain_VASPDomains' == $temp_0'$1_VASPDomain_VASPDomains';

    // $t25 := VASPDomain::create_vasp_domain($t2) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:158:27+26
    assume {:print "$at(36,6246,6272)"} true;
    call $t25 := $1_VASPDomain_create_vasp_domain($t2);
    if ($abort_flag) {
        assume {:print "$at(36,6246,6272)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,0):", $t17} $t17 == $t17;
        goto L7;
    }

    // trace_local[vasp_domain]($t25) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:158:13+11
    assume {:print "$track_local(22,0,10):", $t25} $t25 == $t25;

    // $t26 := get_field<VASPDomain::VASPDomains>.domains($t24) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:161:31+24
    assume {:print "$at(36,6321,6345)"} true;
    $t26 := $domains#$1_VASPDomain_VASPDomains($Dereference($t24));

    // $t27 := Vector::contains<VASPDomain::VASPDomain>($t26, $t25) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:161:14+56
    call $t27 := $1_Vector_contains'$1_VASPDomain_VASPDomain'($t26, $t25);
    if ($abort_flag) {
        assume {:print "$at(36,6304,6360)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,0):", $t17} $t17 == $t17;
        goto L7;
    }

    // $t28 := !($t27) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:161:13+1
    call $t28 := $Not($t27);

    // $t29 := 3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:162:38+27
    assume {:print "$at(36,6399,6426)"} true;
    $t29 := 3;
    assume $IsValid'u64'($t29);

    // $t30 := opaque begin: Errors::invalid_argument($t29) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:162:13+53

    // assume WellFormed($t30) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:162:13+53
    assume $IsValid'u64'($t30);

    // assume Eq<u64>($t30, 7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:162:13+53
    assume $IsEqual'u64'($t30, 7);

    // $t30 := opaque end: Errors::invalid_argument($t29) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:162:13+53

    // trace_local[tmp#$8]($t30) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:160:9+154
    assume {:print "$at(36,6283,6437)"} true;
    assume {:print "$track_local(22,0,8):", $t30} $t30 == $t30;

    // trace_local[tmp#$7]($t28) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:160:9+154
    assume {:print "$track_local(22,0,7):", $t28} $t28 == $t28;

    // if ($t28) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:160:9+154
    if ($t28) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:160:9+154
L5:

    // assert forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($t24), i))), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:18:9+79
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:18:9+79
    assume {:print "$at(36,635,714)"} true;
    assert {:msg "assert_failed(36,635,714): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), i))) <= 63)))));

    // assert forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($t24), i), Index(select VASPDomain::VASPDomains.domains($t24), j)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:20:9+105
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:20:9+105
    assume {:print "$at(36,771,876)"} true;
    assert {:msg "assert_failed(36,771,876): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((var $range_2 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var j := $i_3;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), i), ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), j))))))))));

    // assert forall $elem: select VASPDomain::VASPDomains.domains($t24): Le(Len<u8>(select VASPDomain::VASPDomain.domain($elem)), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:30:5+39
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:30:5+39
    assume {:print "$at(36,1135,1174)"} true;
    assert {:msg "assert_failed(36,1135,1174): data invariant does not hold"}
      (var $range_0 := $domains#$1_VASPDomain_VASPDomains($Dereference($t24)); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    ((LenVec($domain#$1_VASPDomain_VASPDomain($elem)) <= 63)))));

    // destroy($t24) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:160:9+154
    assume {:print "$at(36,6283,6437)"} true;

    // trace_abort($t30) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:160:9+154
    assume {:print "$at(36,6283,6437)"} true;
    assume {:print "$track_abort(22,0):", $t30} $t30 == $t30;

    // $t17 := move($t30) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:160:9+154
    $t17 := $t30;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:160:9+154
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:165:32+15
    assume {:print "$at(36,6471,6486)"} true;
L4:

    // $t31 := borrow_field<VASPDomain::VASPDomains>.domains($t24) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:165:27+28
    $t31 := $ChildMutation($t24, 0, $domains#$1_VASPDomain_VASPDomains($Dereference($t24)));

    // Vector::push_back<VASPDomain::VASPDomain>($t31, $t25) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:165:9+65
    call $t31 := $1_Vector_push_back'$1_VASPDomain_VASPDomain'($t31, $t25);
    if ($abort_flag) {
        assume {:print "$at(36,6448,6513)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,0):", $t17} $t17 == $t17;
        goto L7;
    }

    // write_back[Reference($t24).domains]($t31) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:165:9+65
    $t24 := $UpdateMutation($t24, $Update'$1_VASPDomain_VASPDomains'_domains($Dereference($t24), $Dereference($t31)));

    // assert forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($t24), i))), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:18:9+79
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:18:9+79
    assume {:print "$at(36,635,714)"} true;
    assert {:msg "assert_failed(36,635,714): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), i))) <= 63)))));

    // assert forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($t24), i), Index(select VASPDomain::VASPDomains.domains($t24), j)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:20:9+105
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:20:9+105
    assume {:print "$at(36,771,876)"} true;
    assert {:msg "assert_failed(36,771,876): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((var $range_2 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var j := $i_3;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), i), ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), j))))))))));

    // assert forall $elem: select VASPDomain::VASPDomains.domains($t24): Le(Len<u8>(select VASPDomain::VASPDomain.domain($elem)), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:30:5+39
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:30:5+39
    assume {:print "$at(36,1135,1174)"} true;
    assert {:msg "assert_failed(36,1135,1174): data invariant does not hold"}
      (var $range_0 := $domains#$1_VASPDomain_VASPDomains($Dereference($t24)); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    ((LenVec($domain#$1_VASPDomain_VASPDomain($elem)) <= 63)))));

    // write_back[VASPDomain::VASPDomains@]($t24) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:165:9+65
    assume {:print "$at(36,6448,6513)"} true;
    $1_VASPDomain_VASPDomains_$memory := $ResourceUpdate($1_VASPDomain_VASPDomains_$memory, $GlobalLocationAddress($t24),
        $Dereference($t24));

    // assert forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume {:print "$at(12,108890,109035)"} true;
    assert {:msg "assert_failed(12,108890,109035): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // $t32 := 0xb1e55ed at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:168:55+19
    assume {:print "$at(36,6597,6616)"} true;
    $t32 := 186537453;
    assume $IsValid'address'($t32);

    // $t33 := borrow_global<VASPDomain::VASPDomainManager>($t32) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:168:18+17
    if (!$ResourceExists($1_VASPDomain_VASPDomainManager_$memory, $t32)) {
        call $ExecFailureAbort();
    } else {
        $t33 := $Mutation($Global($t32), EmptyVec(), $ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $t32));
    }
    if ($abort_flag) {
        assume {:print "$at(36,6560,6577)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,0):", $t17} $t17 == $t17;
        goto L7;
    }

    // $t34 := borrow_field<VASPDomain::VASPDomainManager>.vasp_domain_events($t33) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:168:13+81
    $t34 := $ChildMutation($t33, 0, $vasp_domain_events#$1_VASPDomain_VASPDomainManager($Dereference($t33)));

    // $t35 := false at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:170:26+5
    assume {:print "$at(36,6693,6698)"} true;
    $t35 := false;
    assume $IsValid'bool'($t35);

    // $t36 := pack VASPDomain::VASPDomainEvent($t35, $t25, $t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:169:13+125
    assume {:print "$at(36,6650,6775)"} true;
    $t36 := $1_VASPDomain_VASPDomainEvent($t35, $t25, $t1);

    // Event::emit_event<VASPDomain::VASPDomainEvent>($t34, $t36) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:167:9+262
    assume {:print "$at(36,6524,6786)"} true;
    call $t34 := $1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'($t34, $t36);
    if ($abort_flag) {
        assume {:print "$at(36,6524,6786)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,0):", $t17} $t17 == $t17;
        goto L7;
    }

    // label L6 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:175:5+1
    assume {:print "$at(36,6792,6793)"} true;
L6:

    // assume Identical($t37, select VASPDomain::VASPDomains.domains(global<VASPDomain::VASPDomains>($t1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:195:9+56
    assume {:print "$at(36,7586,7642)"} true;
    assume ($t37 == $domains#$1_VASPDomain_VASPDomains($ResourceValue($1_VASPDomain_VASPDomains_$memory, $t1)));

    // assert Not(Not(exists[@123]<VASPDomain::VASPDomains>($t1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:188:9+67
    assume {:print "$at(36,7247,7314)"} true;
    assert {:msg "assert_failed(36,7247,7314): function does not abort under this condition"}
      !!$ResourceExists($1_VASPDomain_VASPDomains_$memory#123, $t1);

    // assert Not(Not(VASPDomain::$tc_domain_manager_exists[@124]())) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:189:9+65
    assume {:print "$at(36,7323,7388)"} true;
    assert {:msg "assert_failed(36,7323,7388): function does not abort under this condition"}
      !!$1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory#124);

    // assert Not(ContainsVec<VASPDomain::VASPDomain>($t11, pack VASPDomain::VASPDomain($t2))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:190:9+81
    assume {:print "$at(36,7397,7478)"} true;
    assert {:msg "assert_failed(36,7397,7478): function does not abort under this condition"}
      !$ContainsVec'$1_VASPDomain_VASPDomain'($t11, $1_VASPDomain_VASPDomain($t2));

    // assert Not(Not(exists[@125]<Roles::RoleId>($t12))) at /home/ying/diem/language/diem-framework/modules/Roles.move:546:9+59
    assume {:print "$at(28,24327,24386)"} true;
    assert {:msg "assert_failed(28,24327,24386): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#125, $t12);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@125]<Roles::RoleId>($t12)), 1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:547:9+97
    assume {:print "$at(28,24395,24492)"} true;
    assert {:msg "assert_failed(28,24395,24492): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#125, $t12)), 1);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:49:9+108
    assume {:print "$at(9,2057,2165)"} true;
    assert {:msg "assert_failed(9,2057,2165): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453);

    // assert Not(Gt(Vector::$length[]<u8>($t2), 63)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:74:9+79
    assume {:print "$at(36,2699,2778)"} true;
    assert {:msg "assert_failed(36,2699,2778): function does not abort under this condition"}
      !($1_Vector_$length'u8'($t2) > 63);

    // assert ContainsVec<VASPDomain::VASPDomain>($t37, pack VASPDomain::VASPDomain($t2)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:196:9+49
    assume {:print "$at(36,7651,7700)"} true;
    assert {:msg "assert_failed(36,7651,7700): post-condition does not hold"}
      $ContainsVec'$1_VASPDomain_VASPDomain'($t37, $1_VASPDomain_VASPDomain($t2));

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), $t14, $t13)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:207:9+20
    assume {:print "$at(36,8033,8053)"} true;
    assert {:msg "assert_failed(36,8033,8053): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$1_VASPDomain_VASPDomainEvent'($EmptyEventStore, $t13, $t14); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), $t14, $t13)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:176:5+141
    assume {:print "$at(36,6798,6939)"} true;
    assert {:msg "assert_failed(36,6798,6939): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$1_VASPDomain_VASPDomainEvent'($EmptyEventStore, $t13, $t14); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:176:5+141
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:175:5+1
    assume {:print "$at(36,6792,6793)"} true;
L7:

    // assert Or(Or(Or(Or(Or(Or(Not(exists[@123]<VASPDomain::VASPDomains>($t1)), Not(VASPDomain::$tc_domain_manager_exists[@124]())), ContainsVec<VASPDomain::VASPDomain>($t11, pack VASPDomain::VASPDomain($t2))), Not(exists[@125]<Roles::RoleId>($t12))), Neq<u64>(select Roles::RoleId.role_id(global[@125]<Roles::RoleId>($t12)), 1)), Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)), Gt(Vector::$length[]<u8>($t2), 63)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:176:5+141
    assume {:print "$at(36,6798,6939)"} true;
    assert {:msg "assert_failed(36,6798,6939): abort not covered by any of the `aborts_if` clauses"}
      ((((((!$ResourceExists($1_VASPDomain_VASPDomains_$memory#123, $t1) || !$1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory#124)) || $ContainsVec'$1_VASPDomain_VASPDomain'($t11, $1_VASPDomain_VASPDomain($t2))) || !$ResourceExists($1_Roles_RoleId_$memory#125, $t12)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#125, $t12)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)) || ($1_Vector_$length'u8'($t2) > 63));

    // assert Or(Or(Or(Or(Or(Or(And(Not(exists[@123]<VASPDomain::VASPDomains>($t1)), Eq(5, $t17)), And(Not(VASPDomain::$tc_domain_manager_exists[@124]()), Eq(5, $t17))), And(ContainsVec<VASPDomain::VASPDomain>($t11, pack VASPDomain::VASPDomain($t2)), Eq(7, $t17))), And(Not(exists[@125]<Roles::RoleId>($t12)), Eq(5, $t17))), And(Neq<u64>(select Roles::RoleId.role_id(global[@125]<Roles::RoleId>($t12)), 1), Eq(3, $t17))), And(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed), Eq(2, $t17))), And(Gt(Vector::$length[]<u8>($t2), 63), Eq(7, $t17))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:176:5+141
    assert {:msg "assert_failed(36,6798,6939): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((!$ResourceExists($1_VASPDomain_VASPDomains_$memory#123, $t1) && $IsEqual'num'(5, $t17)) || (!$1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory#124) && $IsEqual'num'(5, $t17))) || ($ContainsVec'$1_VASPDomain_VASPDomain'($t11, $1_VASPDomain_VASPDomain($t2)) && $IsEqual'num'(7, $t17))) || (!$ResourceExists($1_Roles_RoleId_$memory#125, $t12) && $IsEqual'num'(5, $t17))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#125, $t12)), 1) && $IsEqual'num'(3, $t17))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t17))) || (($1_Vector_$length'u8'($t2) > 63) && $IsEqual'num'(7, $t17)));

    // abort($t17) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:176:5+141
    $abort_code := $t17;
    $abort_flag := true;
    return;

}

// fun VASPDomain::create_vasp_domain [baseline] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:64:5+197
procedure {:inline 1} $1_VASPDomain_create_vasp_domain(_$t0: Vec (int)) returns ($ret0: $1_VASPDomain_VASPDomain)
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
    var $t9: $1_VASPDomain_VASPDomain;
    var $t0: Vec (int);
    var $temp_0'$1_VASPDomain_VASPDomain': $1_VASPDomain_VASPDomain;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[domain]($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:64:5+1
    assume {:print "$at(36,2295,2296)"} true;
    assume {:print "$track_local(22,1,0):", $t0} $t0 == $t0;

    // $t3 := Vector::length<u8>($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:16+23
    assume {:print "$at(36,2367,2390)"} true;
    call $t3 := $1_Vector_length'u8'($t0);
    if ($abort_flag) {
        assume {:print "$at(36,2367,2390)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(22,1):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t5 := 63 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:43+13
    $t5 := 63;
    assume $IsValid'u64'($t5);

    // $t6 := <=($t3, $t5) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:40+2
    call $t6 := $Le($t3, $t5);

    // $t7 := 5 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:83+20
    $t7 := 5;
    assume $IsValid'u64'($t7);

    // $t8 := opaque begin: Errors::invalid_argument($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:58+46

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:58+46
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:58+46
    assume $IsEqual'u64'($t8, 7);

    // $t8 := opaque end: Errors::invalid_argument($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:58+46

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    assume {:print "$track_local(22,1,2):", $t8} $t8 == $t8;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    assume {:print "$track_local(22,1,1):", $t6} $t6 == $t6;

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
L1:

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    assume {:print "$at(36,2360,2456)"} true;
    assume {:print "$track_abort(22,1):", $t8} $t8 == $t8;

    // $t4 := move($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    $t4 := $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:66:21+6
    assume {:print "$at(36,2478,2484)"} true;
L0:

    // $t9 := pack VASPDomain::VASPDomain($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:66:9+20
    $t9 := $1_VASPDomain_VASPDomain($t0);

    // trace_return[0]($t9) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:66:9+20
    assume {:print "$track_return(22,1,0):", $t9} $t9 == $t9;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:67:5+1
    assume {:print "$at(36,2491,2492)"} true;
L2:

    // return $t9 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:67:5+1
    $ret0 := $t9;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:67:5+1
L3:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:67:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun VASPDomain::create_vasp_domain [verification] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:64:5+197
procedure {:timeLimit 40} $1_VASPDomain_create_vasp_domain$verify(_$t0: Vec (int)) returns ($ret0: $1_VASPDomain_VASPDomain)
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
    var $t9: $1_VASPDomain_VASPDomain;
    var $t0: Vec (int);
    var $temp_0'$1_VASPDomain_VASPDomain': $1_VASPDomain_VASPDomain;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:70:17+6
    assume {:print "$at(36,2581,2587)"} true;
    assume $IsValid'vec'u8''($t0);

    // trace_local[domain]($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:64:5+1
    assume {:print "$at(36,2295,2296)"} true;
    assume {:print "$track_local(22,1,0):", $t0} $t0 == $t0;

    // $t3 := Vector::length<u8>($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:16+23
    assume {:print "$at(36,2367,2390)"} true;
    call $t3 := $1_Vector_length'u8'($t0);
    if ($abort_flag) {
        assume {:print "$at(36,2367,2390)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(22,1):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t5 := 63 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:43+13
    $t5 := 63;
    assume $IsValid'u64'($t5);

    // $t6 := <=($t3, $t5) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:40+2
    call $t6 := $Le($t3, $t5);

    // $t7 := 5 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:83+20
    $t7 := 5;
    assume $IsValid'u64'($t7);

    // $t8 := opaque begin: Errors::invalid_argument($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:58+46

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:58+46
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:58+46
    assume $IsEqual'u64'($t8, 7);

    // $t8 := opaque end: Errors::invalid_argument($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:58+46

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    assume {:print "$track_local(22,1,2):", $t8} $t8 == $t8;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    assume {:print "$track_local(22,1,1):", $t6} $t6 == $t6;

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
L1:

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    assume {:print "$at(36,2360,2456)"} true;
    assume {:print "$track_abort(22,1):", $t8} $t8 == $t8;

    // $t4 := move($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    $t4 := $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:65:9+96
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:66:21+6
    assume {:print "$at(36,2478,2484)"} true;
L0:

    // $t9 := pack VASPDomain::VASPDomain($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:66:9+20
    $t9 := $1_VASPDomain_VASPDomain($t0);

    // assert Le(Len<u8>(select VASPDomain::VASPDomain.domain($t9)), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:30:5+39
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:30:5+39
    assume {:print "$at(36,1135,1174)"} true;
    assert {:msg "assert_failed(36,1135,1174): data invariant does not hold"}
      (LenVec($domain#$1_VASPDomain_VASPDomain($t9)) <= 63);

    // trace_return[0]($t9) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:66:9+20
    assume {:print "$at(36,2466,2486)"} true;
    assume {:print "$track_return(22,1,0):", $t9} $t9 == $t9;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:67:5+1
    assume {:print "$at(36,2491,2492)"} true;
L2:

    // assert Not(Gt(Vector::$length[]<u8>($t0), 63)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:74:9+79
    assume {:print "$at(36,2699,2778)"} true;
    assert {:msg "assert_failed(36,2699,2778): function does not abort under this condition"}
      !($1_Vector_$length'u8'($t0) > 63);

    // assert Eq<VASPDomain::VASPDomain>($t9, pack VASPDomain::VASPDomain($t0)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:70:9+40
    assume {:print "$at(36,2573,2613)"} true;
    assert {:msg "assert_failed(36,2573,2613): post-condition does not hold"}
      $IsEqual'$1_VASPDomain_VASPDomain'($t9, $1_VASPDomain_VASPDomain($t0));

    // return $t9 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:70:9+40
    $ret0 := $t9;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:67:5+1
    assume {:print "$at(36,2491,2492)"} true;
L3:

    // assert Gt(Vector::$length[]<u8>($t0), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:68:5+122
    assume {:print "$at(36,2497,2619)"} true;
    assert {:msg "assert_failed(36,2497,2619): abort not covered by any of the `aborts_if` clauses"}
      ($1_Vector_$length'u8'($t0) > 63);

    // assert And(Gt(Vector::$length[]<u8>($t0), 63), Eq(7, $t4)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:68:5+122
    assert {:msg "assert_failed(36,2497,2619): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (($1_Vector_$length'u8'($t0) > 63) && $IsEqual'num'(7, $t4));

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:68:5+122
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun VASPDomain::has_vasp_domain [verification] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:277:5+408
procedure {:timeLimit 40} $1_VASPDomain_has_vasp_domain$verify(_$t0: int, _$t1: Vec (int)) returns ($ret0: bool)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $1_VASPDomain_VASPDomains;
    var $t5: $1_VASPDomain_VASPDomain;
    var $t6: $1_VASPDomain_VASPDomain;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $1_VASPDomain_VASPDomains;
    var $t12: $1_VASPDomain_VASPDomain;
    var $t13: Vec ($1_VASPDomain_VASPDomain);
    var $t14: bool;
    var $t0: int;
    var $t1: Vec (int);
    var $temp_0'$1_VASPDomain_VASPDomain': $1_VASPDomain_VASPDomain;
    var $temp_0'$1_VASPDomain_VASPDomains': $1_VASPDomain_VASPDomains;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_VASPDomain_VASPDomains_$memory#120: $Memory $1_VASPDomain_VASPDomains;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:277:5+408
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume {:print "$at(36,10573,10981)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:289:17+6
    assume {:print "$at(36,11111,11117)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:289:17+6
    assume $IsValid'vec'u8''($t1);

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomains>(): And(WellFormed($rsc), And(And(forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($rsc), i))), 63), forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($rsc), i), Index(select VASPDomain::VASPDomains.domains($rsc), j))), forall $elem: select VASPDomain::VASPDomains.domains($rsc): Le(Len<u8>(select VASPDomain::VASPDomain.domain($elem)), 63))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:289:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0);
    (($IsValid'$1_VASPDomain_VASPDomains'($rsc) && (((var $range_1 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i))) <= 63))))) && (var $range_3 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_4: int :: $InRange($range_3, $i_4) ==> (var i := $i_4;
    ((var $range_5 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_6: int :: $InRange($range_5, $i_6) ==> (var j := $i_6;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i), ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), j))))))))))) && (var $range_7 := $domains#$1_VASPDomain_VASPDomains($rsc); (forall $i_8: int :: InRangeVec($range_7, $i_8) ==> (var $elem := ReadVec($range_7, $i_8);
    ((LenVec($domain#$1_VASPDomain_VASPDomain($elem)) <= 63))))))))));

    // assume Identical($t6, pack VASPDomain::VASPDomain($t1)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:288:9+38
    assume {:print "$at(36,11056,11094)"} true;
    assume ($t6 == $1_VASPDomain_VASPDomain($t1));

    // @120 := save_mem(VASPDomain::VASPDomains) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:277:5+1
    assume {:print "$at(36,10573,10574)"} true;
    $1_VASPDomain_VASPDomains_$memory#120 := $1_VASPDomain_VASPDomains_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:277:5+1
    assume {:print "$track_local(22,2,0):", $t0} $t0 == $t0;

    // trace_local[domain]($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:277:5+1
    assume {:print "$track_local(22,2,1):", $t1} $t1 == $t1;

    // $t7 := exists<VASPDomain::VASPDomains>($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:279:13+6
    assume {:print "$at(36,10692,10698)"} true;
    $t7 := $ResourceExists($1_VASPDomain_VASPDomains_$memory, $t0);

    // $t8 := 4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:280:35+27
    assume {:print "$at(36,10753,10780)"} true;
    $t8 := 4;
    assume $IsValid'u64'($t8);

    // $t9 := opaque begin: Errors::not_published($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:280:13+50

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:280:13+50
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 5) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:280:13+50
    assume $IsEqual'u64'($t9, 5);

    // $t9 := opaque end: Errors::not_published($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:280:13+50

    // trace_local[tmp#$3]($t9) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:278:9+119
    assume {:print "$at(36,10672,10791)"} true;
    assume {:print "$track_local(22,2,3):", $t9} $t9 == $t9;

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:278:9+119
    assume {:print "$track_local(22,2,2):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:278:9+119
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:278:9+119
L1:

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:278:9+119
    assume {:print "$at(36,10672,10791)"} true;
    assume {:print "$track_abort(22,2):", $t9} $t9 == $t9;

    // $t10 := move($t9) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:278:9+119
    $t10 := $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:278:9+119
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:282:58+4
    assume {:print "$at(36,10850,10854)"} true;
L0:

    // $t11 := get_global<VASPDomain::VASPDomains>($t0) on_abort goto L3 with $t10 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:282:31+13
    if (!$ResourceExists($1_VASPDomain_VASPDomains_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t11 := $ResourceValue($1_VASPDomain_VASPDomains_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(36,10823,10836)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(22,2):", $t10} $t10 == $t10;
        goto L3;
    }

    // trace_local[account_domains]($t11) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:282:13+15
    assume {:print "$track_local(22,2,4):", $t11} $t11 == $t11;

    // $t12 := VASPDomain::create_vasp_domain($t1) on_abort goto L3 with $t10 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:283:27+26
    assume {:print "$at(36,10883,10909)"} true;
    call $t12 := $1_VASPDomain_create_vasp_domain($t1);
    if ($abort_flag) {
        assume {:print "$at(36,10883,10909)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(22,2):", $t10} $t10 == $t10;
        goto L3;
    }

    // trace_local[vasp_domain]($t12) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:283:13+11
    assume {:print "$track_local(22,2,5):", $t12} $t12 == $t12;

    // $t13 := get_field<VASPDomain::VASPDomains>.domains($t11) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:284:26+24
    assume {:print "$at(36,10936,10960)"} true;
    $t13 := $domains#$1_VASPDomain_VASPDomains($t11);

    // $t14 := Vector::contains<VASPDomain::VASPDomain>($t13, $t12) on_abort goto L3 with $t10 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:284:9+56
    call $t14 := $1_Vector_contains'$1_VASPDomain_VASPDomain'($t13, $t12);
    if ($abort_flag) {
        assume {:print "$at(36,10919,10975)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(22,2):", $t10} $t10 == $t10;
        goto L3;
    }

    // trace_return[0]($t14) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:284:9+56
    assume {:print "$track_return(22,2,0):", $t14} $t14 == $t14;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:285:5+1
    assume {:print "$at(36,10980,10981)"} true;
L2:

    // assert Not(Not(exists[@120]<VASPDomain::VASPDomains>($t0))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:295:9+64
    assume {:print "$at(36,11324,11388)"} true;
    assert {:msg "assert_failed(36,11324,11388): function does not abort under this condition"}
      !!$ResourceExists($1_VASPDomain_VASPDomains_$memory#120, $t0);

    // assert Not(Gt(Vector::$length[]<u8>($t1), 63)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:74:9+79
    assume {:print "$at(36,2699,2778)"} true;
    assert {:msg "assert_failed(36,2699,2778): function does not abort under this condition"}
      !($1_Vector_$length'u8'($t1) > 63);

    // assert Eq<bool>($t14, ContainsVec<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains(global<VASPDomain::VASPDomains>($t0)), $t6)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:289:9+73
    assume {:print "$at(36,11103,11176)"} true;
    assert {:msg "assert_failed(36,11103,11176): post-condition does not hold"}
      $IsEqual'bool'($t14, $ContainsVec'$1_VASPDomain_VASPDomain'($domains#$1_VASPDomain_VASPDomains($ResourceValue($1_VASPDomain_VASPDomains_$memory, $t0)), $t6));

    // return $t14 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:289:9+73
    $ret0 := $t14;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:285:5+1
    assume {:print "$at(36,10980,10981)"} true;
L3:

    // assert Or(Not(exists[@120]<VASPDomain::VASPDomains>($t0)), Gt(Vector::$length[]<u8>($t1), 63)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:286:5+196
    assume {:print "$at(36,10986,11182)"} true;
    assert {:msg "assert_failed(36,10986,11182): abort not covered by any of the `aborts_if` clauses"}
      (!$ResourceExists($1_VASPDomain_VASPDomains_$memory#120, $t0) || ($1_Vector_$length'u8'($t1) > 63));

    // assert Or(And(Not(exists[@120]<VASPDomain::VASPDomains>($t0)), Eq(5, $t10)), And(Gt(Vector::$length[]<u8>($t1), 63), Eq(7, $t10))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:286:5+196
    assert {:msg "assert_failed(36,10986,11182): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((!$ResourceExists($1_VASPDomain_VASPDomains_$memory#120, $t0) && $IsEqual'num'(5, $t10)) || (($1_Vector_$length'u8'($t1) > 63) && $IsEqual'num'(7, $t10)));

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:286:5+196
    $abort_code := $t10;
    $abort_flag := true;
    return;

}

// fun VASPDomain::has_vasp_domains [verification] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:108:5+90
procedure {:timeLimit 40} $1_VASPDomain_has_vasp_domains$verify(_$t0: int) returns ($ret0: bool)
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
    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:108:5+90
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume {:print "$at(36,4043,4133)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:113:17+6
    assume {:print "$at(36,4203,4209)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomains>(): And(WellFormed($rsc), And(And(forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($rsc), i))), 63), forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($rsc), i), Index(select VASPDomain::VASPDomains.domains($rsc), j))), forall $elem: select VASPDomain::VASPDomains.domains($rsc): Le(Len<u8>(select VASPDomain::VASPDomain.domain($elem)), 63))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:113:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0);
    (($IsValid'$1_VASPDomain_VASPDomains'($rsc) && (((var $range_1 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i))) <= 63))))) && (var $range_3 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_4: int :: $InRange($range_3, $i_4) ==> (var i := $i_4;
    ((var $range_5 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_6: int :: $InRange($range_5, $i_6) ==> (var j := $i_6;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i), ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), j))))))))))) && (var $range_7 := $domains#$1_VASPDomain_VASPDomains($rsc); (forall $i_8: int :: InRangeVec($range_7, $i_8) ==> (var $elem := ReadVec($range_7, $i_8);
    ((LenVec($domain#$1_VASPDomain_VASPDomain($elem)) <= 63))))))))));

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:108:5+1
    assume {:print "$at(36,4043,4044)"} true;
    assume {:print "$track_local(22,3,0):", $t0} $t0 == $t0;

    // $t1 := exists<VASPDomain::VASPDomains>($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:109:9+6
    assume {:print "$at(36,4102,4108)"} true;
    $t1 := $ResourceExists($1_VASPDomain_VASPDomains_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:109:9+25
    assume {:print "$track_return(22,3,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:110:5+1
    assume {:print "$at(36,4132,4133)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:112:9+16
    assume {:print "$at(36,4170,4186)"} true;
    assert {:msg "assert_failed(36,4170,4186): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t1, exists<VASPDomain::VASPDomains>($t0)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:113:9+44
    assume {:print "$at(36,4195,4239)"} true;
    assert {:msg "assert_failed(36,4195,4239): post-condition does not hold"}
      $IsEqual'bool'($t1, $ResourceExists($1_VASPDomain_VASPDomains_$memory, $t0));

    // return $t1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:113:9+44
    $ret0 := $t1;
    return;

}

// fun VASPDomain::publish_vasp_domain_manager [verification] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
procedure {:timeLimit 40} $1_VASPDomain_publish_vasp_domain_manager$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
    var $t12: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent';
    var $t13: $1_VASPDomain_VASPDomainManager;
    var $t0: $signer;
    var $1_VASPDomain_VASPDomainManager_$modifies: [int]bool;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_Roles_RoleId_$memory#129: $Memory $1_Roles_RoleId;
    var $1_VASPDomain_VASPDomainManager_$memory#130: $Memory $1_VASPDomain_VASPDomainManager;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(36,4551,5044)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomainManager>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+493
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0);
    ($IsValid'$1_VASPDomain_VASPDomainManager'($rsc))));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume CanModify<VASPDomain::VASPDomainManager>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:138:9+72
    assume {:print "$at(36,5324,5396)"} true;
    assume $1_VASPDomain_VASPDomainManager_$modifies[$1_Signer_spec_address_of($t0)];

    // @129 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:138:9+72
    $1_Roles_RoleId_$memory#129 := $1_Roles_RoleId_$memory;

    // @130 := save_mem(VASPDomain::VASPDomainManager) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:138:9+72
    $1_VASPDomain_VASPDomainManager_$memory#130 := $1_VASPDomain_VASPDomainManager_$memory;

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:119:5+1
    assume {:print "$at(36,4551,4552)"} true;
    assume {:print "$track_local(22,4,0):", $t0} $t0 == $t0;

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:122:9+45
    assume {:print "$at(36,4645,4690)"} true;

    // assume Identical($t5, Or(Or(Not(exists<Roles::RoleId>($t4)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:122:9+45
    assume ($t5 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t4) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t5) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:122:9+45
    if ($t5) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:122:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t6)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:122:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'num'(5, $t6)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1) && $IsEqual'num'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:122:9+45
    assume {:print "$at(36,4645,4690)"} true;
    assume {:print "$track_abort(22,4):", $t6} $t6 == $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:122:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:122:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:122:9+45

    // $t7 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:124:40+30
    assume {:print "$at(36,4747,4777)"} true;

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:124:40+30
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:124:40+30
    assume $IsEqual'address'($t7, $1_Signer_spec_address_of($t0));

    // $t7 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:124:40+30

    // $t8 := exists<VASPDomain::VASPDomainManager>($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:124:14+6
    $t8 := $ResourceExists($1_VASPDomain_VASPDomainManager_$memory, $t7);

    // $t9 := !($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:124:13+1
    call $t9 := $Not($t8);

    // $t10 := 1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:125:39+20
    assume {:print "$at(36,4818,4838)"} true;
    $t10 := 1;
    assume $IsValid'u64'($t10);

    // $t11 := opaque begin: Errors::already_published($t10) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:125:13+47

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:125:13+47
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 6) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:125:13+47
    assume $IsEqual'u64'($t11, 6);

    // $t11 := opaque end: Errors::already_published($t10) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:125:13+47

    // trace_local[tmp#$2]($t11) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:123:9+149
    assume {:print "$at(36,4700,4849)"} true;
    assume {:print "$track_local(22,4,2):", $t11} $t11 == $t11;

    // trace_local[tmp#$1]($t9) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:123:9+149
    assume {:print "$track_local(22,4,1):", $t9} $t9 == $t9;

    // if ($t9) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:123:9+149
    if ($t9) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:123:9+149
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:123:9+149

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:123:9+149
    assume {:print "$at(36,4700,4849)"} true;
    assume {:print "$track_abort(22,4):", $t11} $t11 == $t11;

    // $t6 := move($t11) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:123:9+149
    $t6 := $t11;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:123:9+149
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:128:13+10
    assume {:print "$at(36,4880,4890)"} true;
L0:

    // $t12 := Event::new_event_handle<VASPDomain::VASPDomainEvent>($t0) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:130:37+52
    assume {:print "$at(36,4960,5012)"} true;
    call $t12 := $1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(36,4960,5012)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(22,4):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t13 := pack VASPDomain::VASPDomainManager($t12) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:129:13+123
    assume {:print "$at(36,4904,5027)"} true;
    $t13 := $1_VASPDomain_VASPDomainManager($t12);

    // assert CanModify<VASPDomain::VASPDomainManager>($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:127:9+7
    assume {:print "$at(36,4859,4866)"} true;
    assert {:msg "assert_failed(36,4859,4866): caller does not have permission to modify `VASPDomain::VASPDomainManager` at given address"}
      $1_VASPDomain_VASPDomainManager_$modifies[$1_Signer_spec_address_of($t0)];

    // move_to<VASPDomain::VASPDomainManager>($t13, $t0) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:127:9+7
    if ($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_VASPDomain_VASPDomainManager_$memory := $ResourceUpdate($1_VASPDomain_VASPDomainManager_$memory, $1_Signer_spec_address_of($t0), $t13);
    }
    if ($abort_flag) {
        assume {:print "$at(36,4859,4866)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(22,4):", $t6} $t6 == $t6;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:133:5+1
    assume {:print "$at(36,5043,5044)"} true;
L2:

    // assert Not(Not(exists[@129]<Roles::RoleId>($t3))) at /home/ying/diem/language/diem-framework/modules/Roles.move:546:9+59
    assume {:print "$at(28,24327,24386)"} true;
    assert {:msg "assert_failed(28,24327,24386): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#129, $t3);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@129]<Roles::RoleId>($t3)), 1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:547:9+97
    assume {:print "$at(28,24395,24492)"} true;
    assert {:msg "assert_failed(28,24395,24492): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#129, $t3)), 1);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:49:9+108
    assume {:print "$at(9,2057,2165)"} true;
    assert {:msg "assert_failed(9,2057,2165): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453);

    // assert Not(VASPDomain::$tc_domain_manager_exists[@130]()) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:136:9+68
    assume {:print "$at(36,5167,5235)"} true;
    assert {:msg "assert_failed(36,5167,5235): function does not abort under this condition"}
      !$1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory#130);

    // assert exists<VASPDomain::VASPDomainManager>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:137:9+71
    assume {:print "$at(36,5244,5315)"} true;
    assert {:msg "assert_failed(36,5244,5315): post-condition does not hold"}
      $ResourceExists($1_VASPDomain_VASPDomainManager_$memory, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:137:9+71
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:133:5+1
    assume {:print "$at(36,5043,5044)"} true;
L3:

    // assert Or(Or(Or(Not(exists[@129]<Roles::RoleId>($t3)), Neq<u64>(select Roles::RoleId.role_id(global[@129]<Roles::RoleId>($t3)), 1)), Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)), VASPDomain::$tc_domain_manager_exists[@130]()) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:134:5+353
    assume {:print "$at(36,5049,5402)"} true;
    assert {:msg "assert_failed(36,5049,5402): abort not covered by any of the `aborts_if` clauses"}
      (((!$ResourceExists($1_Roles_RoleId_$memory#129, $t3) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#129, $t3)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)) || $1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory#130));

    // assert Or(Or(Or(And(Not(exists[@129]<Roles::RoleId>($t3)), Eq(5, $t6)), And(Neq<u64>(select Roles::RoleId.role_id(global[@129]<Roles::RoleId>($t3)), 1), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed), Eq(2, $t6))), And(VASPDomain::$tc_domain_manager_exists[@130](), Eq(6, $t6))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:134:5+353
    assert {:msg "assert_failed(36,5049,5402): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((!$ResourceExists($1_Roles_RoleId_$memory#129, $t3) && $IsEqual'num'(5, $t6)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#129, $t3)), 1) && $IsEqual'num'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t6))) || ($1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory#130) && $IsEqual'num'(6, $t6)));

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:134:5+353
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun VASPDomain::publish_vasp_domains [verification] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
procedure {:timeLimit 40} $1_VASPDomain_publish_vasp_domains$verify(_$t0: $signer) returns ()
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
    var $t9: bool;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: Vec ($1_VASPDomain_VASPDomain);
    var $t14: $1_VASPDomain_VASPDomains;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_Roles_RoleId_$memory#121: $Memory $1_Roles_RoleId;
    var $1_VASPDomain_VASPDomains_$memory#122: $Memory $1_VASPDomain_VASPDomains;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(36,3043,3423)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomains>(): And(WellFormed($rsc), And(And(forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($rsc), i))), 63), forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($rsc), i), Index(select VASPDomain::VASPDomains.domains($rsc), j))), forall $elem: select VASPDomain::VASPDomains.domains($rsc): Le(Len<u8>(select VASPDomain::VASPDomain.domain($elem)), 63))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0);
    (($IsValid'$1_VASPDomain_VASPDomains'($rsc) && (((var $range_1 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i))) <= 63))))) && (var $range_3 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_4: int :: $InRange($range_3, $i_4) ==> (var i := $i_4;
    ((var $range_5 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_6: int :: $InRange($range_5, $i_6) ==> (var j := $i_6;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i), ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), j))))))))))) && (var $range_7 := $domains#$1_VASPDomain_VASPDomains($rsc); (forall $i_8: int :: InRangeVec($range_7, $i_8) ==> (var $elem := ReadVec($range_7, $i_8);
    ((LenVec($domain#$1_VASPDomain_VASPDomain($elem)) <= 63))))))))));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:93:9+54
    assume {:print "$at(36,3464,3518)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // @121 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+1
    assume {:print "$at(36,3043,3044)"} true;
    $1_Roles_RoleId_$memory#121 := $1_Roles_RoleId_$memory;

    // @122 := save_mem(VASPDomain::VASPDomains) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+1
    $1_VASPDomain_VASPDomains_$memory#122 := $1_VASPDomain_VASPDomains_$memory;

    // trace_local[vasp_account]($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+1
    assume {:print "$track_local(22,5,0):", $t0} $t0 == $t0;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    assume {:print "$at(36,3131,3175)"} true;

    // assume Identical($t6, Or(Not(exists<Roles::RoleId>($t5)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 5))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    assume ($t6 == (!$ResourceExists($1_Roles_RoleId_$memory, $t5) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 5)));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
L5:

    // assume Or(And(Not(exists<Roles::RoleId>($t5)), Eq(5, $t7)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 5), Eq(3, $t7))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t5) && $IsEqual'num'(5, $t7)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 5) && $IsEqual'num'(3, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    assume {:print "$at(36,3131,3175)"} true;
    assume {:print "$track_abort(22,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
L4:

    // opaque end: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:34+32
    assume {:print "$at(36,3226,3258)"} true;

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:34+32
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:34+32
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:34+32

    // $t9 := exists<VASPDomain::VASPDomains>($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:14+6
    $t9 := $ResourceExists($1_VASPDomain_VASPDomains_$memory, $t8);

    // $t10 := !($t9) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:13+1
    call $t10 := $Not($t9);

    // $t11 := 0 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:86:39+13
    assume {:print "$at(36,3299,3312)"} true;
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // $t12 := opaque begin: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:86:13+40

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:86:13+40
    assume $IsValid'u64'($t12);

    // assume Eq<u64>($t12, 6) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:86:13+40
    assume $IsEqual'u64'($t12, 6);

    // $t12 := opaque end: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:86:13+40

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    assume {:print "$at(36,3185,3323)"} true;
    assume {:print "$track_local(22,5,2):", $t12} $t12 == $t12;

    // trace_local[tmp#$1]($t10) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    assume {:print "$track_local(22,5,1):", $t10} $t10 == $t10;

    // if ($t10) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    assume {:print "$at(36,3185,3323)"} true;
    assume {:print "$track_abort(22,5):", $t12} $t12 == $t12;

    // $t7 := move($t12) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    $t7 := $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:88:17+12
    assume {:print "$at(36,3341,3353)"} true;
L0:

    // $t13 := Vector::empty<VASPDomain::VASPDomain>() on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:89:22+15
    assume {:print "$at(36,3390,3405)"} true;
    call $t13 := $1_Vector_empty'$1_VASPDomain_VASPDomain'();
    if ($abort_flag) {
        assume {:print "$at(36,3390,3405)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(22,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // $t14 := pack VASPDomain::VASPDomains($t13) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:88:31+61
    assume {:print "$at(36,3355,3416)"} true;
    $t14 := $1_VASPDomain_VASPDomains($t13);

    // assert forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t14))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($t14), i))), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:18:9+79
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:18:9+79
    assume {:print "$at(36,635,714)"} true;
    assert {:msg "assert_failed(36,635,714): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($t14))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($t14), i))) <= 63)))));

    // assert forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t14))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t14))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($t14), i), Index(select VASPDomain::VASPDomains.domains($t14), j)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:20:9+105
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:20:9+105
    assume {:print "$at(36,771,876)"} true;
    assert {:msg "assert_failed(36,771,876): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($t14))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((var $range_2 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($t14))); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var j := $i_3;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($t14), i), ReadVec($domains#$1_VASPDomain_VASPDomains($t14), j))))))))));

    // move_to<VASPDomain::VASPDomains>($t14, $t0) on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:88:9+7
    assume {:print "$at(36,3333,3340)"} true;
    if ($ResourceExists($1_VASPDomain_VASPDomains_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_VASPDomain_VASPDomains_$memory := $ResourceUpdate($1_VASPDomain_VASPDomains_$memory, $1_Signer_spec_address_of($t0), $t14);
    }
    if ($abort_flag) {
        assume {:print "$at(36,3333,3340)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(22,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:91:5+1
    assume {:print "$at(36,3422,3423)"} true;
L2:

    // assert Not(Not(exists[@121]<Roles::RoleId>($t4))) at /home/ying/diem/language/diem-framework/modules/Roles.move:553:9+59
    assume {:print "$at(28,24626,24685)"} true;
    assert {:msg "assert_failed(28,24626,24685): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#121, $t4);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@121]<Roles::RoleId>($t4)), 5)) at /home/ying/diem/language/diem-framework/modules/Roles.move:554:9+89
    assume {:print "$at(28,24694,24783)"} true;
    assert {:msg "assert_failed(28,24694,24783): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#121, $t4)), 5);

    // assert Not(VASPDomain::$has_vasp_domains[@122]($t3)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:100:9+69
    assume {:print "$at(36,3762,3831)"} true;
    assert {:msg "assert_failed(36,3762,3831): function does not abort under this condition"}
      !$1_VASPDomain_$has_vasp_domains($1_VASPDomain_VASPDomains_$memory#122, $t3);

    // assert exists<VASPDomain::VASPDomains>($t3) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:104:9+39
    assume {:print "$at(36,3918,3957)"} true;
    assert {:msg "assert_failed(36,3918,3957): post-condition does not hold"}
      $ResourceExists($1_VASPDomain_VASPDomains_$memory, $t3);

    // assert Vector::$is_empty<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains(global<VASPDomain::VASPDomains>($t3))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:105:9+65
    assume {:print "$at(36,3966,4031)"} true;
    assert {:msg "assert_failed(36,3966,4031): post-condition does not hold"}
      $1_Vector_$is_empty'$1_VASPDomain_VASPDomain'($domains#$1_VASPDomain_VASPDomains($ResourceValue($1_VASPDomain_VASPDomains_$memory, $t3)));

    // return () at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:105:9+65
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:91:5+1
    assume {:print "$at(36,3422,3423)"} true;
L3:

    // assert Or(Or(Not(exists[@121]<Roles::RoleId>($t4)), Neq<u64>(select Roles::RoleId.role_id(global[@121]<Roles::RoleId>($t4)), 5)), VASPDomain::$has_vasp_domains[@122]($t3)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:92:5+252
    assume {:print "$at(36,3428,3680)"} true;
    assert {:msg "assert_failed(36,3428,3680): abort not covered by any of the `aborts_if` clauses"}
      ((!$ResourceExists($1_Roles_RoleId_$memory#121, $t4) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#121, $t4)), 5)) || $1_VASPDomain_$has_vasp_domains($1_VASPDomain_VASPDomains_$memory#122, $t3));

    // assert Or(Or(And(Not(exists[@121]<Roles::RoleId>($t4)), Eq(5, $t7)), And(Neq<u64>(select Roles::RoleId.role_id(global[@121]<Roles::RoleId>($t4)), 5), Eq(3, $t7))), And(VASPDomain::$has_vasp_domains[@122]($t3), Eq(6, $t7))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:92:5+252
    assert {:msg "assert_failed(36,3428,3680): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((!$ResourceExists($1_Roles_RoleId_$memory#121, $t4) && $IsEqual'num'(5, $t7)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#121, $t4)), 5) && $IsEqual'num'(3, $t7))) || ($1_VASPDomain_$has_vasp_domains($1_VASPDomain_VASPDomains_$memory#122, $t3) && $IsEqual'num'(6, $t7)));

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:92:5+252
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun VASPDomain::remove_vasp_domain [verification] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
procedure {:timeLimit 40} $1_VASPDomain_remove_vasp_domain$verify(_$t0: $signer, _$t1: int, _$t2: Vec (int)) returns ()
{
    // declare local variables
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: $Mutation ($1_VASPDomain_VASPDomains);
    var $t8: bool;
    var $t9: int;
    var $t10: $1_VASPDomain_VASPDomain;
    var $t11: Vec ($1_VASPDomain_VASPDomain);
    var $t12: int;
    var $t13: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent';
    var $t14: $1_VASPDomain_VASPDomainEvent;
    var $t15: int;
    var $t16: bool;
    var $t17: int;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: bool;
    var $t22: int;
    var $t23: int;
    var $t24: $Mutation ($1_VASPDomain_VASPDomains);
    var $t25: $1_VASPDomain_VASPDomain;
    var $t26: Vec ($1_VASPDomain_VASPDomain);
    var $t27: bool;
    var $t28: int;
    var $t29: int;
    var $t30: int;
    var $t31: $Mutation (Vec ($1_VASPDomain_VASPDomain));
    var $t32: $1_VASPDomain_VASPDomain;
    var $t33: int;
    var $t34: $Mutation ($1_VASPDomain_VASPDomainManager);
    var $t35: $Mutation ($1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent');
    var $t36: bool;
    var $t37: $1_VASPDomain_VASPDomainEvent;
    var $t38: Vec ($1_VASPDomain_VASPDomain);
    var $t0: $signer;
    var $t1: int;
    var $t2: Vec (int);
    var $temp_0'$1_VASPDomain_VASPDomain': $1_VASPDomain_VASPDomain;
    var $temp_0'$1_VASPDomain_VASPDomains': $1_VASPDomain_VASPDomains;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_VASPDomain_VASPDomains_$memory#126: $Memory $1_VASPDomain_VASPDomains;
    var $1_VASPDomain_VASPDomainManager_$memory#127: $Memory $1_VASPDomain_VASPDomainManager;
    var $1_Roles_RoleId_$memory#128: $Memory $1_Roles_RoleId;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t24));
    assume IsEmptyVec(p#$Mutation($t31));
    assume IsEmptyVec(p#$Mutation($t34));
    assume IsEmptyVec(p#$Mutation($t35));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(36,8136,9251)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    assume $IsValid'vec'u8''($t2);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomainManager>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0);
    ($IsValid'$1_VASPDomain_VASPDomainManager'($rsc))));

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomains>(): And(WellFormed($rsc), And(And(forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($rsc), i))), 63), forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($rsc), i), Index(select VASPDomain::VASPDomains.domains($rsc), j))), forall $elem: select VASPDomain::VASPDomains.domains($rsc): Le(Len<u8>(select VASPDomain::VASPDomain.domain($elem)), 63))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1115
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0);
    (($IsValid'$1_VASPDomain_VASPDomains'($rsc) && (((var $range_1 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i))) <= 63))))) && (var $range_3 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_4: int :: $InRange($range_3, $i_4) ==> (var i := $i_4;
    ((var $range_5 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_6: int :: $InRange($range_5, $i_6) ==> (var j := $i_6;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i), ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), j))))))))))) && (var $range_7 := $domains#$1_VASPDomain_VASPDomains($rsc); (forall $i_8: int :: InRangeVec($range_7, $i_8) ==> (var $elem := ReadVec($range_7, $i_8);
    ((LenVec($domain#$1_VASPDomain_VASPDomain($elem)) <= 63))))))))));

    // assume Identical($t11, select VASPDomain::VASPDomains.domains(global<VASPDomain::VASPDomains>($t1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:251:9+51
    assume {:print "$at(36,9543,9594)"} true;
    assume ($t11 == $domains#$1_VASPDomain_VASPDomains($ResourceValue($1_VASPDomain_VASPDomains_$memory, $t1)));

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // assume Identical($t13, select VASPDomain::VASPDomainManager.vasp_domain_events(global<VASPDomain::VASPDomainManager>(b1e55ed))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:268:9+79
    assume {:print "$at(36,10315,10394)"} true;
    assume ($t13 == $vasp_domain_events#$1_VASPDomain_VASPDomainManager($ResourceValue($1_VASPDomain_VASPDomainManager_$memory, 186537453)));

    // assume Identical($t14, pack VASPDomain::VASPDomainEvent(true, pack VASPDomain::VASPDomain($t2), $t1)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:269:9+129
    assume {:print "$at(36,10403,10532)"} true;
    assume ($t14 == $1_VASPDomain_VASPDomainEvent(true, $1_VASPDomain_VASPDomain($t2), $t1));

    // @128 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1
    assume {:print "$at(36,8136,8137)"} true;
    $1_Roles_RoleId_$memory#128 := $1_Roles_RoleId_$memory;

    // @127 := save_mem(VASPDomain::VASPDomainManager) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1
    $1_VASPDomain_VASPDomainManager_$memory#127 := $1_VASPDomain_VASPDomainManager_$memory;

    // @126 := save_mem(VASPDomain::VASPDomains) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1
    $1_VASPDomain_VASPDomains_$memory#126 := $1_VASPDomain_VASPDomains_$memory;

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1
    assume {:print "$track_local(22,6,0):", $t0} $t0 == $t0;

    // trace_local[address]($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1
    assume {:print "$track_local(22,6,1):", $t1} $t1 == $t1;

    // trace_local[domain]($t2) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:211:5+1
    assume {:print "$track_local(22,6,2):", $t2} $t2 == $t2;

    // assume Identical($t15, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t15 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:216:9+45
    assume {:print "$at(36,8306,8351)"} true;

    // assume Identical($t16, Or(Or(Not(exists<Roles::RoleId>($t15)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t15)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:216:9+45
    assume ($t16 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t15) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t15)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t16) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:216:9+45
    if ($t16) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:216:9+45
L9:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t15)), Eq(5, $t17)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t15)), 1), Eq(3, $t17))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t17))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:216:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t15) && $IsEqual'num'(5, $t17)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t15)), 1) && $IsEqual'num'(3, $t17))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t17)));

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:216:9+45
    assume {:print "$at(36,8306,8351)"} true;
    assume {:print "$track_abort(22,6):", $t17} $t17 == $t17;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:216:9+45
    goto L7;

    // label L8 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:216:9+45
L8:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:216:9+45

    // $t18 := VASPDomain::tc_domain_manager_exists() on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:16+26
    assume {:print "$at(36,8368,8394)"} true;
    call $t18 := $1_VASPDomain_tc_domain_manager_exists();
    if ($abort_flag) {
        assume {:print "$at(36,8368,8394)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,6):", $t17} $t17 == $t17;
        goto L7;
    }

    // $t19 := 1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:66+20
    $t19 := 1;
    assume $IsValid'u64'($t19);

    // $t20 := opaque begin: Errors::not_published($t19) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:44+43

    // assume WellFormed($t20) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:44+43
    assume $IsValid'u64'($t20);

    // assume Eq<u64>($t20, 5) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:44+43
    assume $IsEqual'u64'($t20, 5);

    // $t20 := opaque end: Errors::not_published($t19) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:44+43

    // trace_local[tmp#$4]($t20) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:9+79
    assume {:print "$track_local(22,6,4):", $t20} $t20 == $t20;

    // trace_local[tmp#$3]($t18) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:9+79
    assume {:print "$track_local(22,6,3):", $t18} $t18 == $t18;

    // if ($t18) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:9+79
    if ($t18) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:9+79
L1:

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:9+79
    assume {:print "$at(36,8361,8440)"} true;
    assume {:print "$track_abort(22,6):", $t20} $t20 == $t20;

    // $t17 := move($t20) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:9+79
    $t17 := $t20;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:217:9+79
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:219:33+7
    assume {:print "$at(36,8490,8497)"} true;
L0:

    // $t21 := exists<VASPDomain::VASPDomains>($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:219:13+6
    $t21 := $ResourceExists($1_VASPDomain_VASPDomains_$memory, $t1);

    // $t22 := 4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:220:35+27
    assume {:print "$at(36,8534,8561)"} true;
    $t22 := 4;
    assume $IsValid'u64'($t22);

    // $t23 := opaque begin: Errors::not_published($t22) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:220:13+50

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:220:13+50
    assume $IsValid'u64'($t23);

    // assume Eq<u64>($t23, 5) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:220:13+50
    assume $IsEqual'u64'($t23, 5);

    // $t23 := opaque end: Errors::not_published($t22) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:220:13+50

    // trace_local[tmp#$6]($t23) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:218:9+122
    assume {:print "$at(36,8450,8572)"} true;
    assume {:print "$track_local(22,6,6):", $t23} $t23 == $t23;

    // trace_local[tmp#$5]($t21) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:218:9+122
    assume {:print "$track_local(22,6,5):", $t21} $t21 == $t21;

    // if ($t21) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:218:9+122
    if ($t21) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:218:9+122
L3:

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:218:9+122
    assume {:print "$at(36,8450,8572)"} true;
    assume {:print "$track_abort(22,6):", $t23} $t23 == $t23;

    // $t17 := move($t23) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:218:9+122
    $t17 := $t23;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:218:9+122
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:223:62+7
    assume {:print "$at(36,8636,8643)"} true;
L2:

    // $t24 := borrow_global<VASPDomain::VASPDomains>($t1) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:223:31+17
    if (!$ResourceExists($1_VASPDomain_VASPDomains_$memory, $t1)) {
        call $ExecFailureAbort();
    } else {
        $t24 := $Mutation($Global($t1), EmptyVec(), $ResourceValue($1_VASPDomain_VASPDomains_$memory, $t1));
    }
    if ($abort_flag) {
        assume {:print "$at(36,8605,8622)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,6):", $t17} $t17 == $t17;
        goto L7;
    }

    // trace_local[account_domains]($t24) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:223:13+15
    $temp_0'$1_VASPDomain_VASPDomains' := $Dereference($t24);
    assume {:print "$track_local(22,6,7):", $temp_0'$1_VASPDomain_VASPDomains'} $temp_0'$1_VASPDomain_VASPDomains' == $temp_0'$1_VASPDomain_VASPDomains';

    // $t25 := VASPDomain::create_vasp_domain($t2) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:224:27+26
    assume {:print "$at(36,8672,8698)"} true;
    call $t25 := $1_VASPDomain_create_vasp_domain($t2);
    if ($abort_flag) {
        assume {:print "$at(36,8672,8698)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,6):", $t17} $t17 == $t17;
        goto L7;
    }

    // trace_local[vasp_domain]($t25) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:224:13+11
    assume {:print "$track_local(22,6,10):", $t25} $t25 == $t25;

    // $t26 := get_field<VASPDomain::VASPDomains>.domains($t24) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:226:45+24
    assume {:print "$at(36,8745,8769)"} true;
    $t26 := $domains#$1_VASPDomain_VASPDomains($Dereference($t24));

    // ($t27, $t28) := Vector::index_of<VASPDomain::VASPDomain>($t26, $t25) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:226:28+56
    call $t27,$t28 := $1_Vector_index_of'$1_VASPDomain_VASPDomain'($t26, $t25);
    if ($abort_flag) {
        assume {:print "$at(36,8728,8784)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,6):", $t17} $t17 == $t17;
        goto L7;
    }

    // trace_local[index]($t28) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:226:19+5
    assume {:print "$track_local(22,6,9):", $t28} $t28 == $t28;

    // trace_local[has]($t27) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:226:14+3
    assume {:print "$track_local(22,6,8):", $t27} $t27 == $t27;

    // if ($t27) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:227:9+169
    assume {:print "$at(36,8794,8963)"} true;
    if ($t27) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:230:13+54
    assume {:print "$at(36,8899,8953)"} true;
L5:

    // assert forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($t24), i))), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:18:9+79
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:18:9+79
    assume {:print "$at(36,635,714)"} true;
    assert {:msg "assert_failed(36,635,714): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), i))) <= 63)))));

    // assert forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($t24), i), Index(select VASPDomain::VASPDomains.domains($t24), j)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:20:9+105
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:20:9+105
    assume {:print "$at(36,771,876)"} true;
    assert {:msg "assert_failed(36,771,876): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((var $range_2 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var j := $i_3;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), i), ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), j))))))))));

    // assert forall $elem: select VASPDomain::VASPDomains.domains($t24): Le(Len<u8>(select VASPDomain::VASPDomain.domain($elem)), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:30:5+39
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:30:5+39
    assume {:print "$at(36,1135,1174)"} true;
    assert {:msg "assert_failed(36,1135,1174): data invariant does not hold"}
      (var $range_0 := $domains#$1_VASPDomain_VASPDomains($Dereference($t24)); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    ((LenVec($domain#$1_VASPDomain_VASPDomain($elem)) <= 63)))));

    // destroy($t24) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:230:13+54
    assume {:print "$at(36,8899,8953)"} true;

    // $t29 := 2 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:230:44+22
    $t29 := 2;
    assume $IsValid'u64'($t29);

    // $t30 := opaque begin: Errors::invalid_argument($t29) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:230:19+48

    // assume WellFormed($t30) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:230:19+48
    assume $IsValid'u64'($t30);

    // assume Eq<u64>($t30, 7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:230:19+48
    assume $IsEqual'u64'($t30, 7);

    // $t30 := opaque end: Errors::invalid_argument($t29) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:230:19+48

    // trace_abort($t30) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:230:13+54
    assume {:print "$at(36,8899,8953)"} true;
    assume {:print "$track_abort(22,6):", $t30} $t30 == $t30;

    // $t17 := move($t30) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:230:13+54
    $t17 := $t30;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:230:13+54
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:228:33+15
    assume {:print "$at(36,8837,8852)"} true;
L4:

    // $t31 := borrow_field<VASPDomain::VASPDomains>.domains($t24) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:228:28+28
    $t31 := $ChildMutation($t24, 0, $domains#$1_VASPDomain_VASPDomains($Dereference($t24)));

    // $t32 := Vector::remove<VASPDomain::VASPDomain>($t31, $t28) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:228:13+51
    call $t32,$t31 := $1_Vector_remove'$1_VASPDomain_VASPDomain'($t31, $t28);
    if ($abort_flag) {
        assume {:print "$at(36,8817,8868)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,6):", $t17} $t17 == $t17;
        goto L7;
    }

    // write_back[Reference($t24).domains]($t31) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:228:13+51
    $t24 := $UpdateMutation($t24, $Update'$1_VASPDomain_VASPDomains'_domains($Dereference($t24), $Dereference($t31)));

    // assert forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($t24), i))), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:18:9+79
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:18:9+79
    assume {:print "$at(36,635,714)"} true;
    assert {:msg "assert_failed(36,635,714): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), i))) <= 63)))));

    // assert forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($t24))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($t24), i), Index(select VASPDomain::VASPDomains.domains($t24), j)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:20:9+105
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:20:9+105
    assume {:print "$at(36,771,876)"} true;
    assert {:msg "assert_failed(36,771,876): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((var $range_2 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)))); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var j := $i_3;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), i), ReadVec($domains#$1_VASPDomain_VASPDomains($Dereference($t24)), j))))))))));

    // assert forall $elem: select VASPDomain::VASPDomains.domains($t24): Le(Len<u8>(select VASPDomain::VASPDomain.domain($elem)), 63) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:30:5+39
    // data invariant at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:30:5+39
    assume {:print "$at(36,1135,1174)"} true;
    assert {:msg "assert_failed(36,1135,1174): data invariant does not hold"}
      (var $range_0 := $domains#$1_VASPDomain_VASPDomains($Dereference($t24)); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    ((LenVec($domain#$1_VASPDomain_VASPDomain($elem)) <= 63)))));

    // write_back[VASPDomain::VASPDomains@]($t24) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:228:13+51
    assume {:print "$at(36,8817,8868)"} true;
    $1_VASPDomain_VASPDomains_$memory := $ResourceUpdate($1_VASPDomain_VASPDomains_$memory, $GlobalLocationAddress($t24),
        $Dereference($t24));

    // assert forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume {:print "$at(12,108890,109035)"} true;
    assert {:msg "assert_failed(12,108890,109035): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // destroy($t32) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:228:13+51
    assume {:print "$at(36,8817,8868)"} true;

    // $t33 := 0xb1e55ed at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:234:55+19
    assume {:print "$at(36,9047,9066)"} true;
    $t33 := 186537453;
    assume $IsValid'address'($t33);

    // $t34 := borrow_global<VASPDomain::VASPDomainManager>($t33) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:234:18+17
    if (!$ResourceExists($1_VASPDomain_VASPDomainManager_$memory, $t33)) {
        call $ExecFailureAbort();
    } else {
        $t34 := $Mutation($Global($t33), EmptyVec(), $ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $t33));
    }
    if ($abort_flag) {
        assume {:print "$at(36,9010,9027)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,6):", $t17} $t17 == $t17;
        goto L7;
    }

    // $t35 := borrow_field<VASPDomain::VASPDomainManager>.vasp_domain_events($t34) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:234:13+81
    $t35 := $ChildMutation($t34, 0, $vasp_domain_events#$1_VASPDomain_VASPDomainManager($Dereference($t34)));

    // $t36 := true at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:236:26+4
    assume {:print "$at(36,9143,9147)"} true;
    $t36 := true;
    assume $IsValid'bool'($t36);

    // $t37 := pack VASPDomain::VASPDomainEvent($t36, $t25, $t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:235:13+133
    assume {:print "$at(36,9100,9233)"} true;
    $t37 := $1_VASPDomain_VASPDomainEvent($t36, $t25, $t1);

    // Event::emit_event<VASPDomain::VASPDomainEvent>($t35, $t37) on_abort goto L7 with $t17 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:233:9+270
    assume {:print "$at(36,8974,9244)"} true;
    call $t35 := $1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'($t35, $t37);
    if ($abort_flag) {
        assume {:print "$at(36,8974,9244)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(22,6):", $t17} $t17 == $t17;
        goto L7;
    }

    // label L6 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:241:5+1
    assume {:print "$at(36,9250,9251)"} true;
L6:

    // assume Identical($t38, select VASPDomain::VASPDomains.domains(global<VASPDomain::VASPDomains>($t1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:261:9+56
    assume {:print "$at(36,10063,10119)"} true;
    assume ($t38 == $domains#$1_VASPDomain_VASPDomains($ResourceValue($1_VASPDomain_VASPDomains_$memory, $t1)));

    // assert Not(Not(exists[@126]<VASPDomain::VASPDomains>($t1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:254:9+67
    assume {:print "$at(36,9720,9787)"} true;
    assert {:msg "assert_failed(36,9720,9787): function does not abort under this condition"}
      !!$ResourceExists($1_VASPDomain_VASPDomains_$memory#126, $t1);

    // assert Not(Not(VASPDomain::$tc_domain_manager_exists[@127]())) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:255:9+65
    assume {:print "$at(36,9796,9861)"} true;
    assert {:msg "assert_failed(36,9796,9861): function does not abort under this condition"}
      !!$1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory#127);

    // assert Not(Not(ContainsVec<VASPDomain::VASPDomain>($t11, pack VASPDomain::VASPDomain($t2)))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:256:9+82
    assume {:print "$at(36,9870,9952)"} true;
    assert {:msg "assert_failed(36,9870,9952): function does not abort under this condition"}
      !!$ContainsVec'$1_VASPDomain_VASPDomain'($t11, $1_VASPDomain_VASPDomain($t2));

    // assert Not(Not(exists[@128]<Roles::RoleId>($t12))) at /home/ying/diem/language/diem-framework/modules/Roles.move:546:9+59
    assume {:print "$at(28,24327,24386)"} true;
    assert {:msg "assert_failed(28,24327,24386): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#128, $t12);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@128]<Roles::RoleId>($t12)), 1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:547:9+97
    assume {:print "$at(28,24395,24492)"} true;
    assert {:msg "assert_failed(28,24395,24492): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#128, $t12)), 1);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:49:9+108
    assume {:print "$at(9,2057,2165)"} true;
    assert {:msg "assert_failed(9,2057,2165): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453);

    // assert Not(Gt(Vector::$length[]<u8>($t2), 63)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:74:9+79
    assume {:print "$at(36,2699,2778)"} true;
    assert {:msg "assert_failed(36,2699,2778): function does not abort under this condition"}
      !($1_Vector_$length'u8'($t2) > 63);

    // assert Not(ContainsVec<VASPDomain::VASPDomain>($t38, pack VASPDomain::VASPDomain($t2))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:262:9+50
    assume {:print "$at(36,10128,10178)"} true;
    assert {:msg "assert_failed(36,10128,10178): post-condition does not hold"}
      !$ContainsVec'$1_VASPDomain_VASPDomain'($t38, $1_VASPDomain_VASPDomain($t2));

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), $t14, $t13)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:274:9+20
    assume {:print "$at(36,10541,10561)"} true;
    assert {:msg "assert_failed(36,10541,10561): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$1_VASPDomain_VASPDomainEvent'($EmptyEventStore, $t13, $t14); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), $t14, $t13)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:242:5+153
    assume {:print "$at(36,9256,9409)"} true;
    assert {:msg "assert_failed(36,9256,9409): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$1_VASPDomain_VASPDomainEvent'($EmptyEventStore, $t13, $t14); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:242:5+153
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:241:5+1
    assume {:print "$at(36,9250,9251)"} true;
L7:

    // assert Or(Or(Or(Or(Or(Or(Not(exists[@126]<VASPDomain::VASPDomains>($t1)), Not(VASPDomain::$tc_domain_manager_exists[@127]())), Not(ContainsVec<VASPDomain::VASPDomain>($t11, pack VASPDomain::VASPDomain($t2)))), Not(exists[@128]<Roles::RoleId>($t12))), Neq<u64>(select Roles::RoleId.role_id(global[@128]<Roles::RoleId>($t12)), 1)), Neq<address>(Signer::spec_address_of[]($t0), b1e55ed)), Gt(Vector::$length[]<u8>($t2), 63)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:242:5+153
    assume {:print "$at(36,9256,9409)"} true;
    assert {:msg "assert_failed(36,9256,9409): abort not covered by any of the `aborts_if` clauses"}
      ((((((!$ResourceExists($1_VASPDomain_VASPDomains_$memory#126, $t1) || !$1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory#127)) || !$ContainsVec'$1_VASPDomain_VASPDomain'($t11, $1_VASPDomain_VASPDomain($t2))) || !$ResourceExists($1_Roles_RoleId_$memory#128, $t12)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#128, $t12)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)) || ($1_Vector_$length'u8'($t2) > 63));

    // assert Or(Or(Or(Or(Or(Or(And(Not(exists[@126]<VASPDomain::VASPDomains>($t1)), Eq(5, $t17)), And(Not(VASPDomain::$tc_domain_manager_exists[@127]()), Eq(5, $t17))), And(Not(ContainsVec<VASPDomain::VASPDomain>($t11, pack VASPDomain::VASPDomain($t2))), Eq(7, $t17))), And(Not(exists[@128]<Roles::RoleId>($t12)), Eq(5, $t17))), And(Neq<u64>(select Roles::RoleId.role_id(global[@128]<Roles::RoleId>($t12)), 1), Eq(3, $t17))), And(Neq<address>(Signer::spec_address_of[]($t0), b1e55ed), Eq(2, $t17))), And(Gt(Vector::$length[]<u8>($t2), 63), Eq(7, $t17))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:242:5+153
    assert {:msg "assert_failed(36,9256,9409): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((!$ResourceExists($1_VASPDomain_VASPDomains_$memory#126, $t1) && $IsEqual'num'(5, $t17)) || (!$1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory#127) && $IsEqual'num'(5, $t17))) || (!$ContainsVec'$1_VASPDomain_VASPDomain'($t11, $1_VASPDomain_VASPDomain($t2)) && $IsEqual'num'(7, $t17))) || (!$ResourceExists($1_Roles_RoleId_$memory#128, $t12) && $IsEqual'num'(5, $t17))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#128, $t12)), 1) && $IsEqual'num'(3, $t17))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t17))) || (($1_Vector_$length'u8'($t2) > 63) && $IsEqual'num'(7, $t17)));

    // abort($t17) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:242:5+153
    $abort_code := $t17;
    $abort_flag := true;
    return;

}

// fun VASPDomain::tc_domain_manager_exists [baseline] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:298:5+106
procedure {:inline 1} $1_VASPDomain_tc_domain_manager_exists() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := 0xb1e55ed at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:299:35+19
    assume {:print "$at(36,11480,11499)"} true;
    $t0 := 186537453;
    assume $IsValid'address'($t0);

    // $t1 := exists<VASPDomain::VASPDomainManager>($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:299:9+6
    $t1 := $ResourceExists($1_VASPDomain_VASPDomainManager_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:299:9+46
    assume {:print "$track_return(22,7,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:300:5+1
    assume {:print "$at(36,11505,11506)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:300:5+1
    $ret0 := $t1;
    return;

}

// fun VASPDomain::tc_domain_manager_exists [verification] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:298:5+106
procedure {:timeLimit 40} $1_VASPDomain_tc_domain_manager_exists$verify() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:298:5+106
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume {:print "$at(36,11400,11506)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomainManager>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:303:17+6
    assume {:print "$at(36,11584,11590)"} true;
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0);
    ($IsValid'$1_VASPDomain_VASPDomainManager'($rsc))));

    // $t0 := 0xb1e55ed at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:299:35+19
    assume {:print "$at(36,11480,11499)"} true;
    $t0 := 186537453;
    assume $IsValid'address'($t0);

    // $t1 := exists<VASPDomain::VASPDomainManager>($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:299:9+6
    $t1 := $ResourceExists($1_VASPDomain_VASPDomainManager_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:299:9+46
    assume {:print "$track_return(22,7,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:300:5+1
    assume {:print "$at(36,11505,11506)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:302:9+16
    assume {:print "$at(36,11551,11567)"} true;
    assert {:msg "assert_failed(36,11551,11567): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t1, exists<VASPDomain::VASPDomainManager>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:303:9+65
    assume {:print "$at(36,11576,11641)"} true;
    assert {:msg "assert_failed(36,11576,11641): post-condition does not hold"}
      $IsEqual'bool'($t1, $ResourceExists($1_VASPDomain_VASPDomainManager_$memory, 186537453));

    // return $t1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:303:9+65
    $ret0 := $t1;
    return;

}

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
    s1 == s2
}
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
    s1 == s2
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
    s1 == s2
}
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
    s1 == s2
}

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
    s1 == s2
}

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
