
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
// Native Vector implementation for element type `$42_TestMonomorphization_R'address'`


function {:inline} $IsEqual'vec'$42_TestMonomorphization_R'address'''(v1: Vec ($42_TestMonomorphization_R'address'), v2: Vec ($42_TestMonomorphization_R'address')): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$42_TestMonomorphization_R'address'''(v: Vec ($42_TestMonomorphization_R'address')): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$42_TestMonomorphization_R'address''(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address'), e: $42_TestMonomorphization_R'address'): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$42_TestMonomorphization_R'address''(ReadVec(v, i), e))
}

function $IndexOfVec'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address'), e: $42_TestMonomorphization_R'address'): int;
axiom (forall v: Vec ($42_TestMonomorphization_R'address'), e: $42_TestMonomorphization_R'address':: {$IndexOfVec'$42_TestMonomorphization_R'address''(v, e)}
    (var i := $IndexOfVec'$42_TestMonomorphization_R'address''(v, e);
     if (!$ContainsVec'$42_TestMonomorphization_R'address''(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$42_TestMonomorphization_R'address''(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$42_TestMonomorphization_R'address''(ReadVec(v, j), e))));


function {:inline} $RangeVec'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address')): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$42_TestMonomorphization_R'address''(): Vec ($42_TestMonomorphization_R'address') {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$42_TestMonomorphization_R'address''() returns (v: Vec ($42_TestMonomorphization_R'address')) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$42_TestMonomorphization_R'address''(): Vec ($42_TestMonomorphization_R'address') {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address')) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$42_TestMonomorphization_R'address''(m: $Mutation (Vec ($42_TestMonomorphization_R'address')), val: $42_TestMonomorphization_R'address') returns (m': $Mutation (Vec ($42_TestMonomorphization_R'address'))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address'), val: $42_TestMonomorphization_R'address'): Vec ($42_TestMonomorphization_R'address') {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$42_TestMonomorphization_R'address''(m: $Mutation (Vec ($42_TestMonomorphization_R'address'))) returns (e: $42_TestMonomorphization_R'address', m': $Mutation (Vec ($42_TestMonomorphization_R'address'))) {
    var v: Vec ($42_TestMonomorphization_R'address');
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

procedure {:inline 1} $1_Vector_append'$42_TestMonomorphization_R'address''(m: $Mutation (Vec ($42_TestMonomorphization_R'address')), other: Vec ($42_TestMonomorphization_R'address')) returns (m': $Mutation (Vec ($42_TestMonomorphization_R'address'))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$42_TestMonomorphization_R'address''(m: $Mutation (Vec ($42_TestMonomorphization_R'address'))) returns (m': $Mutation (Vec ($42_TestMonomorphization_R'address'))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address')) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address')): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address'), i: int) returns (dst: $42_TestMonomorphization_R'address') {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address'), i: int): $42_TestMonomorphization_R'address' {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$42_TestMonomorphization_R'address''(m: $Mutation (Vec ($42_TestMonomorphization_R'address')), index: int)
returns (dst: $Mutation ($42_TestMonomorphization_R'address'), m': $Mutation (Vec ($42_TestMonomorphization_R'address')))
{
    var v: Vec ($42_TestMonomorphization_R'address');
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address'), i: int): $42_TestMonomorphization_R'address' {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address')) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$42_TestMonomorphization_R'address''(m: $Mutation (Vec ($42_TestMonomorphization_R'address')), i: int, j: int) returns (m': $Mutation (Vec ($42_TestMonomorphization_R'address')))
{
    var v: Vec ($42_TestMonomorphization_R'address');
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address'), i: int, j: int): Vec ($42_TestMonomorphization_R'address') {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$42_TestMonomorphization_R'address''(m: $Mutation (Vec ($42_TestMonomorphization_R'address')), i: int) returns (e: $42_TestMonomorphization_R'address', m': $Mutation (Vec ($42_TestMonomorphization_R'address')))
{
    var v: Vec ($42_TestMonomorphization_R'address');

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$42_TestMonomorphization_R'address''(m: $Mutation (Vec ($42_TestMonomorphization_R'address')), i: int) returns (e: $42_TestMonomorphization_R'address', m': $Mutation (Vec ($42_TestMonomorphization_R'address')))
{
    var len: int;
    var v: Vec ($42_TestMonomorphization_R'address');

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address'), e: $42_TestMonomorphization_R'address') returns (res: bool)  {
    res := $ContainsVec'$42_TestMonomorphization_R'address''(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$42_TestMonomorphization_R'address''(v: Vec ($42_TestMonomorphization_R'address'), e: $42_TestMonomorphization_R'address') returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$42_TestMonomorphization_R'address''(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$42_TestMonomorphization_R'u64'`


function {:inline} $IsEqual'vec'$42_TestMonomorphization_R'u64'''(v1: Vec ($42_TestMonomorphization_R'u64'), v2: Vec ($42_TestMonomorphization_R'u64')): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$42_TestMonomorphization_R'u64'''(v: Vec ($42_TestMonomorphization_R'u64')): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$42_TestMonomorphization_R'u64''(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64'), e: $42_TestMonomorphization_R'u64'): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$42_TestMonomorphization_R'u64''(ReadVec(v, i), e))
}

function $IndexOfVec'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64'), e: $42_TestMonomorphization_R'u64'): int;
axiom (forall v: Vec ($42_TestMonomorphization_R'u64'), e: $42_TestMonomorphization_R'u64':: {$IndexOfVec'$42_TestMonomorphization_R'u64''(v, e)}
    (var i := $IndexOfVec'$42_TestMonomorphization_R'u64''(v, e);
     if (!$ContainsVec'$42_TestMonomorphization_R'u64''(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$42_TestMonomorphization_R'u64''(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$42_TestMonomorphization_R'u64''(ReadVec(v, j), e))));


function {:inline} $RangeVec'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64')): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$42_TestMonomorphization_R'u64''(): Vec ($42_TestMonomorphization_R'u64') {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$42_TestMonomorphization_R'u64''() returns (v: Vec ($42_TestMonomorphization_R'u64')) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$42_TestMonomorphization_R'u64''(): Vec ($42_TestMonomorphization_R'u64') {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64')) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$42_TestMonomorphization_R'u64''(m: $Mutation (Vec ($42_TestMonomorphization_R'u64')), val: $42_TestMonomorphization_R'u64') returns (m': $Mutation (Vec ($42_TestMonomorphization_R'u64'))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64'), val: $42_TestMonomorphization_R'u64'): Vec ($42_TestMonomorphization_R'u64') {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$42_TestMonomorphization_R'u64''(m: $Mutation (Vec ($42_TestMonomorphization_R'u64'))) returns (e: $42_TestMonomorphization_R'u64', m': $Mutation (Vec ($42_TestMonomorphization_R'u64'))) {
    var v: Vec ($42_TestMonomorphization_R'u64');
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

procedure {:inline 1} $1_Vector_append'$42_TestMonomorphization_R'u64''(m: $Mutation (Vec ($42_TestMonomorphization_R'u64')), other: Vec ($42_TestMonomorphization_R'u64')) returns (m': $Mutation (Vec ($42_TestMonomorphization_R'u64'))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$42_TestMonomorphization_R'u64''(m: $Mutation (Vec ($42_TestMonomorphization_R'u64'))) returns (m': $Mutation (Vec ($42_TestMonomorphization_R'u64'))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64')) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64')): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64'), i: int) returns (dst: $42_TestMonomorphization_R'u64') {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64'), i: int): $42_TestMonomorphization_R'u64' {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$42_TestMonomorphization_R'u64''(m: $Mutation (Vec ($42_TestMonomorphization_R'u64')), index: int)
returns (dst: $Mutation ($42_TestMonomorphization_R'u64'), m': $Mutation (Vec ($42_TestMonomorphization_R'u64')))
{
    var v: Vec ($42_TestMonomorphization_R'u64');
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64'), i: int): $42_TestMonomorphization_R'u64' {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64')) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$42_TestMonomorphization_R'u64''(m: $Mutation (Vec ($42_TestMonomorphization_R'u64')), i: int, j: int) returns (m': $Mutation (Vec ($42_TestMonomorphization_R'u64')))
{
    var v: Vec ($42_TestMonomorphization_R'u64');
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64'), i: int, j: int): Vec ($42_TestMonomorphization_R'u64') {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$42_TestMonomorphization_R'u64''(m: $Mutation (Vec ($42_TestMonomorphization_R'u64')), i: int) returns (e: $42_TestMonomorphization_R'u64', m': $Mutation (Vec ($42_TestMonomorphization_R'u64')))
{
    var v: Vec ($42_TestMonomorphization_R'u64');

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$42_TestMonomorphization_R'u64''(m: $Mutation (Vec ($42_TestMonomorphization_R'u64')), i: int) returns (e: $42_TestMonomorphization_R'u64', m': $Mutation (Vec ($42_TestMonomorphization_R'u64')))
{
    var len: int;
    var v: Vec ($42_TestMonomorphization_R'u64');

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64'), e: $42_TestMonomorphization_R'u64') returns (res: bool)  {
    res := $ContainsVec'$42_TestMonomorphization_R'u64''(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$42_TestMonomorphization_R'u64''(v: Vec ($42_TestMonomorphization_R'u64'), e: $42_TestMonomorphization_R'u64') returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$42_TestMonomorphization_R'u64''(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `vec'u64'`


function {:inline} $IsEqual'vec'vec'u64'''(v1: Vec (Vec (int)), v2: Vec (Vec (int))): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'vec'u64'''(v: Vec (Vec (int))): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'vec'u64''(ReadVec(v, i)))
}


function {:inline} $ContainsVec'vec'u64''(v: Vec (Vec (int)), e: Vec (int)): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'vec'u64''(ReadVec(v, i), e))
}

function $IndexOfVec'vec'u64''(v: Vec (Vec (int)), e: Vec (int)): int;
axiom (forall v: Vec (Vec (int)), e: Vec (int):: {$IndexOfVec'vec'u64''(v, e)}
    (var i := $IndexOfVec'vec'u64''(v, e);
     if (!$ContainsVec'vec'u64''(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'vec'u64''(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'vec'u64''(ReadVec(v, j), e))));


function {:inline} $RangeVec'vec'u64''(v: Vec (Vec (int))): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'vec'u64''(): Vec (Vec (int)) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'vec'u64''() returns (v: Vec (Vec (int))) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'vec'u64''(): Vec (Vec (int)) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'vec'u64''(v: Vec (Vec (int))) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'vec'u64''(m: $Mutation (Vec (Vec (int))), val: Vec (int)) returns (m': $Mutation (Vec (Vec (int)))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'vec'u64''(v: Vec (Vec (int)), val: Vec (int)): Vec (Vec (int)) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'vec'u64''(m: $Mutation (Vec (Vec (int)))) returns (e: Vec (int), m': $Mutation (Vec (Vec (int)))) {
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

procedure {:inline 1} $1_Vector_append'vec'u64''(m: $Mutation (Vec (Vec (int))), other: Vec (Vec (int))) returns (m': $Mutation (Vec (Vec (int)))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'vec'u64''(m: $Mutation (Vec (Vec (int)))) returns (m': $Mutation (Vec (Vec (int)))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'vec'u64''(v: Vec (Vec (int))) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'vec'u64''(v: Vec (Vec (int))): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'vec'u64''(v: Vec (Vec (int)), i: int) returns (dst: Vec (int)) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'vec'u64''(v: Vec (Vec (int)), i: int): Vec (int) {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'vec'u64''(m: $Mutation (Vec (Vec (int))), index: int)
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

function {:inline} $1_Vector_$borrow_mut'vec'u64''(v: Vec (Vec (int)), i: int): Vec (int) {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'vec'u64''(v: Vec (Vec (int))) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'vec'u64''(m: $Mutation (Vec (Vec (int))), i: int, j: int) returns (m': $Mutation (Vec (Vec (int))))
{
    var v: Vec (Vec (int));
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'vec'u64''(v: Vec (Vec (int)), i: int, j: int): Vec (Vec (int)) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'vec'u64''(m: $Mutation (Vec (Vec (int))), i: int) returns (e: Vec (int), m': $Mutation (Vec (Vec (int))))
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

procedure {:inline 1} $1_Vector_swap_remove'vec'u64''(m: $Mutation (Vec (Vec (int))), i: int) returns (e: Vec (int), m': $Mutation (Vec (Vec (int))))
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

procedure {:inline 1} $1_Vector_contains'vec'u64''(v: Vec (Vec (int)), e: Vec (int)) returns (res: bool)  {
    res := $ContainsVec'vec'u64''(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'vec'u64''(v: Vec (Vec (int)), e: Vec (int)) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'vec'u64''(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `bool`


function {:inline} $IsEqual'vec'bool''(v1: Vec (bool), v2: Vec (bool)): bool {
    v1 == v2
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
// Native Vector implementation for element type `u64`


function {:inline} $IsEqual'vec'u64''(v1: Vec (int), v2: Vec (int)): bool {
    v1 == v2
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

// ----------------------------------------------------------------------------------
// Native BCS implementation for element type `#0`

// Serialize is modeled as an uninterpreted function, with an additional
// axiom to say it's an injection.

function {:inline} $1_BCS_serialize'#0'(v: #0): Vec int;

axiom (forall v1, v2: #0 :: {$1_BCS_serialize'#0'(v1), $1_BCS_serialize'#0'(v2)}
   $IsEqual'#0'(v1, v2) <==> $IsEqual'vec'u8''($1_BCS_serialize'#0'(v1), $1_BCS_serialize'#0'(v2)));

// This says that serialize returns a non-empty vec<u8>

axiom (forall v: #0 :: {$1_BCS_serialize'#0'(v)}
     ( var r := $1_BCS_serialize'#0'(v); $IsValid'vec'u8''(r) && LenVec(r) > 0 ));


procedure $1_BCS_to_bytes'#0'(v: #0) returns (res: Vec int);
ensures res == $1_BCS_serialize'#0'(v);

function {:inline} $1_BCS_$to_bytes'#0'(v: #0): Vec int {
    $1_BCS_serialize'#0'(v)
}




// ----------------------------------------------------------------------------------
// Native BCS implementation for element type `address`

// Serialize is modeled as an uninterpreted function, with an additional
// axiom to say it's an injection.

function {:inline} $1_BCS_serialize'address'(v: int): Vec int;

axiom (forall v1, v2: int :: {$1_BCS_serialize'address'(v1), $1_BCS_serialize'address'(v2)}
   $IsEqual'address'(v1, v2) <==> $IsEqual'vec'u8''($1_BCS_serialize'address'(v1), $1_BCS_serialize'address'(v2)));

// This says that serialize returns a non-empty vec<u8>

axiom (forall v: int :: {$1_BCS_serialize'address'(v)}
     ( var r := $1_BCS_serialize'address'(v); $IsValid'vec'u8''(r) && LenVec(r) > 0 ));


procedure $1_BCS_to_bytes'address'(v: int) returns (res: Vec int);
ensures res == $1_BCS_serialize'address'(v);

function {:inline} $1_BCS_$to_bytes'address'(v: int): Vec int {
    $1_BCS_serialize'address'(v)
}

// Serialized addresses should have the same length.
const $serialized_address_len: int;
// Serialized addresses should have the same length
axiom (forall v: int :: {$1_BCS_serialize'address'(v)}
     ( var r := $1_BCS_serialize'address'(v); LenVec(r) == $serialized_address_len));




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
// Native Event implementation for element type `$42_TestMonomorphization_E`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$42_TestMonomorphization_E' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$42_TestMonomorphization_E''(a: $1_Event_EventHandle'$42_TestMonomorphization_E', b: $1_Event_EventHandle'$42_TestMonomorphization_E'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''(h: $1_Event_EventHandle'$42_TestMonomorphization_E'): bool {
    true
}

// Embed event `$42_TestMonomorphization_E` into universal $EventRep
function {:constructor} $ToEventRep'$42_TestMonomorphization_E'(e: $42_TestMonomorphization_E): $EventRep;
axiom (forall v1, v2: $42_TestMonomorphization_E :: {$ToEventRep'$42_TestMonomorphization_E'(v1), $ToEventRep'$42_TestMonomorphization_E'(v2)}
    $IsEqual'$42_TestMonomorphization_E'(v1, v2) <==> $ToEventRep'$42_TestMonomorphization_E'(v1) == $ToEventRep'$42_TestMonomorphization_E'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$42_TestMonomorphization_E'(signer: int) returns (res: $1_Event_EventHandle'$42_TestMonomorphization_E') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$42_TestMonomorphization_E'(handle_mut: $Mutation $1_Event_EventHandle'$42_TestMonomorphization_E', msg: $42_TestMonomorphization_E)
returns (res: $Mutation $1_Event_EventHandle'$42_TestMonomorphization_E') {
    var handle: $1_Event_EventHandle'$42_TestMonomorphization_E';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$42_TestMonomorphization_E'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$42_TestMonomorphization_E'(handle: $1_Event_EventHandle'$42_TestMonomorphization_E') {
}

function {:inline} $ExtendEventStore'$42_TestMonomorphization_E'(
        es: $EventStore, handle: $1_Event_EventHandle'$42_TestMonomorphization_E', msg: $42_TestMonomorphization_E): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$42_TestMonomorphization_E'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$42_TestMonomorphization_E'(
        es: $EventStore, handle: $1_Event_EventHandle'$42_TestMonomorphization_E', msg: $42_TestMonomorphization_E, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$42_TestMonomorphization_E'(es, handle, msg)
    else
        es
}




//==================================
// Begin Translation



// Given Types for Type Parameters

type #0;
function {:inline} $IsEqual'#0'(x1: #0, x2: #0): bool { x1 == x2 }
function {:inline} $IsValid'#0'(x: #0): bool { true }

// spec fun at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:18:10+45
function {:inline} $42_TestMonomorphization_spec_pack_R(): $42_TestMonomorphization_R'u64' {
    $42_TestMonomorphization_R'u64'(1, 2)
}

// struct TestMonomorphization::E at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:54:5+55
type {:datatype} $42_TestMonomorphization_E;
function {:constructor} $42_TestMonomorphization_E($msg: int): $42_TestMonomorphization_E;
function {:inline} $Update'$42_TestMonomorphization_E'_msg(s: $42_TestMonomorphization_E, x: int): $42_TestMonomorphization_E {
    $42_TestMonomorphization_E(x)
}
function $IsValid'$42_TestMonomorphization_E'(s: $42_TestMonomorphization_E): bool {
    $IsValid'u64'($msg#$42_TestMonomorphization_E(s))
}
function {:inline} $IsEqual'$42_TestMonomorphization_E'(s1: $42_TestMonomorphization_E, s2: $42_TestMonomorphization_E): bool {
    s1 == s2
}

// struct TestMonomorphization::R<bool> at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:9:5+41
type {:datatype} $42_TestMonomorphization_R'bool';
function {:constructor} $42_TestMonomorphization_R'bool'($x: bool, $y: bool): $42_TestMonomorphization_R'bool';
function {:inline} $Update'$42_TestMonomorphization_R'bool''_x(s: $42_TestMonomorphization_R'bool', x: bool): $42_TestMonomorphization_R'bool' {
    $42_TestMonomorphization_R'bool'(x, $y#$42_TestMonomorphization_R'bool'(s))
}
function {:inline} $Update'$42_TestMonomorphization_R'bool''_y(s: $42_TestMonomorphization_R'bool', x: bool): $42_TestMonomorphization_R'bool' {
    $42_TestMonomorphization_R'bool'($x#$42_TestMonomorphization_R'bool'(s), x)
}
function $IsValid'$42_TestMonomorphization_R'bool''(s: $42_TestMonomorphization_R'bool'): bool {
    $IsValid'bool'($x#$42_TestMonomorphization_R'bool'(s))
      && $IsValid'bool'($y#$42_TestMonomorphization_R'bool'(s))
}
function {:inline} $IsEqual'$42_TestMonomorphization_R'bool''(s1: $42_TestMonomorphization_R'bool', s2: $42_TestMonomorphization_R'bool'): bool {
    s1 == s2
}
var $42_TestMonomorphization_R'bool'_$memory: $Memory $42_TestMonomorphization_R'bool';

// struct TestMonomorphization::R<u64> at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:9:5+41
type {:datatype} $42_TestMonomorphization_R'u64';
function {:constructor} $42_TestMonomorphization_R'u64'($x: int, $y: int): $42_TestMonomorphization_R'u64';
function {:inline} $Update'$42_TestMonomorphization_R'u64''_x(s: $42_TestMonomorphization_R'u64', x: int): $42_TestMonomorphization_R'u64' {
    $42_TestMonomorphization_R'u64'(x, $y#$42_TestMonomorphization_R'u64'(s))
}
function {:inline} $Update'$42_TestMonomorphization_R'u64''_y(s: $42_TestMonomorphization_R'u64', x: int): $42_TestMonomorphization_R'u64' {
    $42_TestMonomorphization_R'u64'($x#$42_TestMonomorphization_R'u64'(s), x)
}
function $IsValid'$42_TestMonomorphization_R'u64''(s: $42_TestMonomorphization_R'u64'): bool {
    $IsValid'u64'($x#$42_TestMonomorphization_R'u64'(s))
      && $IsValid'u64'($y#$42_TestMonomorphization_R'u64'(s))
}
function {:inline} $IsEqual'$42_TestMonomorphization_R'u64''(s1: $42_TestMonomorphization_R'u64', s2: $42_TestMonomorphization_R'u64'): bool {
    s1 == s2
}
var $42_TestMonomorphization_R'u64'_$memory: $Memory $42_TestMonomorphization_R'u64';

// struct TestMonomorphization::R<address> at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:9:5+41
type {:datatype} $42_TestMonomorphization_R'address';
function {:constructor} $42_TestMonomorphization_R'address'($x: int, $y: int): $42_TestMonomorphization_R'address';
function {:inline} $Update'$42_TestMonomorphization_R'address''_x(s: $42_TestMonomorphization_R'address', x: int): $42_TestMonomorphization_R'address' {
    $42_TestMonomorphization_R'address'(x, $y#$42_TestMonomorphization_R'address'(s))
}
function {:inline} $Update'$42_TestMonomorphization_R'address''_y(s: $42_TestMonomorphization_R'address', x: int): $42_TestMonomorphization_R'address' {
    $42_TestMonomorphization_R'address'($x#$42_TestMonomorphization_R'address'(s), x)
}
function $IsValid'$42_TestMonomorphization_R'address''(s: $42_TestMonomorphization_R'address'): bool {
    $IsValid'address'($x#$42_TestMonomorphization_R'address'(s))
      && $IsValid'address'($y#$42_TestMonomorphization_R'address'(s))
}
function {:inline} $IsEqual'$42_TestMonomorphization_R'address''(s1: $42_TestMonomorphization_R'address', s2: $42_TestMonomorphization_R'address'): bool {
    s1 == s2
}
var $42_TestMonomorphization_R'address'_$memory: $Memory $42_TestMonomorphization_R'address';

// struct TestMonomorphization::R<#0> at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:9:5+41
type {:datatype} $42_TestMonomorphization_R'#0';
function {:constructor} $42_TestMonomorphization_R'#0'($x: #0, $y: #0): $42_TestMonomorphization_R'#0';
function {:inline} $Update'$42_TestMonomorphization_R'#0''_x(s: $42_TestMonomorphization_R'#0', x: #0): $42_TestMonomorphization_R'#0' {
    $42_TestMonomorphization_R'#0'(x, $y#$42_TestMonomorphization_R'#0'(s))
}
function {:inline} $Update'$42_TestMonomorphization_R'#0''_y(s: $42_TestMonomorphization_R'#0', x: #0): $42_TestMonomorphization_R'#0' {
    $42_TestMonomorphization_R'#0'($x#$42_TestMonomorphization_R'#0'(s), x)
}
function $IsValid'$42_TestMonomorphization_R'#0''(s: $42_TestMonomorphization_R'#0'): bool {
    $IsValid'#0'($x#$42_TestMonomorphization_R'#0'(s))
      && $IsValid'#0'($y#$42_TestMonomorphization_R'#0'(s))
}
function {:inline} $IsEqual'$42_TestMonomorphization_R'#0''(s1: $42_TestMonomorphization_R'#0', s2: $42_TestMonomorphization_R'#0'): bool {
    s1 == s2
}
var $42_TestMonomorphization_R'#0'_$memory: $Memory $42_TestMonomorphization_R'#0';

// fun TestMonomorphization::create_R [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:20:5+93
procedure {:timeLimit 40} $42_TestMonomorphization_create_R$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: $42_TestMonomorphization_R'u64';
    var $t4: int;
    var $t0: int;
    var $temp_0'address': int;
    var $42_TestMonomorphization_R'u64'_$memory#2: $Memory $42_TestMonomorphization_R'u64';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:20:5+93
    assume {:print "$at(2,480,573)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<TestMonomorphization::R<u64>>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:20:5+93
    assume (forall $a_0: int :: {$ResourceValue($42_TestMonomorphization_R'u64'_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestMonomorphization_R'u64'_$memory, $a_0);
    ($IsValid'$42_TestMonomorphization_R'u64''($rsc))));

    // @2 := save_mem(TestMonomorphization::R<u64>) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:20:5+1
    $42_TestMonomorphization_R'u64'_$memory#2 := $42_TestMonomorphization_R'u64'_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:20:5+1
    assume {:print "$track_local(5,0,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:21:38+1
    assume {:print "$at(2,557,558)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:21:43+1
    $t2 := 2;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestMonomorphization::R<u64>($t1, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:21:34+11
    $t3 := $42_TestMonomorphization_R'u64'($t1, $t2);

    // move_to<TestMonomorphization::R<u64>>($t3, $t0) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:21:9+7
    if ($ResourceExists($42_TestMonomorphization_R'u64'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $42_TestMonomorphization_R'u64'_$memory := $ResourceUpdate($42_TestMonomorphization_R'u64'_$memory, $t0, $t3);
    }
    if ($abort_flag) {
        assume {:print "$at(2,528,535)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,0):", $t4} $t4 == $t4;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:22:5+1
    assume {:print "$at(2,572,573)"} true;
L1:

    // assert Not(exists[@2]<TestMonomorphization::R<u64>>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:24:9+59
    assume {:print "$at(2,602,661)"} true;
    assert {:msg "assert_failed(2,602,661): function does not abort under this condition"}
      !$ResourceExists($42_TestMonomorphization_R'u64'_$memory#2, $1_Signer_spec_address_of($t0));

    // assert exists<TestMonomorphization::R<u64>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:25:9+57
    assume {:print "$at(2,670,727)"} true;
    assert {:msg "assert_failed(2,670,727): post-condition does not hold"}
      $ResourceExists($42_TestMonomorphization_R'u64'_$memory, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:25:9+57
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:22:5+1
    assume {:print "$at(2,572,573)"} true;
L2:

    // assert exists[@2]<TestMonomorphization::R<u64>>(Signer::spec_address_of[]($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:23:5+155
    assume {:print "$at(2,578,733)"} true;
    assert {:msg "assert_failed(2,578,733): abort not covered by any of the `aborts_if` clauses"}
      $ResourceExists($42_TestMonomorphization_R'u64'_$memory#2, $1_Signer_spec_address_of($t0));

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:23:5+155
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestMonomorphization::create_R_generic [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:35:5+116
procedure {:timeLimit 40} $42_TestMonomorphization_create_R_generic$verify(_$t0: int, _$t1: #0, _$t2: #0) returns ()
{
    // declare local variables
    var $t3: $42_TestMonomorphization_R'#0';
    var $t4: int;
    var $t0: int;
    var $t1: #0;
    var $t2: #0;
    var $temp_0'#0': #0;
    var $temp_0'address': int;
    var $42_TestMonomorphization_R'#0'_$memory#1: $Memory $42_TestMonomorphization_R'#0';
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:35:5+116
    assume {:print "$at(2,969,1085)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:35:5+116
    assume $IsValid'#0'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:35:5+116
    assume $IsValid'#0'($t2);

    // assume forall $rsc: ResourceDomain<TestMonomorphization::R<#0>>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:35:5+116
    assume (forall $a_0: int :: {$ResourceValue($42_TestMonomorphization_R'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestMonomorphization_R'#0'_$memory, $a_0);
    ($IsValid'$42_TestMonomorphization_R'#0''($rsc))));

    // @1 := save_mem(TestMonomorphization::R<#0>) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:35:5+1
    $42_TestMonomorphization_R'#0'_$memory#1 := $42_TestMonomorphization_R'#0'_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:35:5+1
    assume {:print "$track_local(5,1,0):", $t0} $t0 == $t0;

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:35:5+1
    assume {:print "$track_local(5,1,1):", $t1} $t1 == $t1;

    // trace_local[y]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:35:5+1
    assume {:print "$track_local(5,1,2):", $t2} $t2 == $t2;

    // $t3 := pack TestMonomorphization::R<#0>($t1, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:36:32+7
    assume {:print "$at(2,1070,1077)"} true;
    $t3 := $42_TestMonomorphization_R'#0'($t1, $t2);

    // move_to<TestMonomorphization::R<#0>>($t3, $t0) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:36:9+7
    if ($ResourceExists($42_TestMonomorphization_R'#0'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $42_TestMonomorphization_R'#0'_$memory := $ResourceUpdate($42_TestMonomorphization_R'#0'_$memory, $t0, $t3);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1047,1054)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,1):", $t4} $t4 == $t4;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:37:5+1
    assume {:print "$at(2,1084,1085)"} true;
L1:

    // assert Not(exists[@1]<TestMonomorphization::R<#0>>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:39:9+57
    assume {:print "$at(2,1122,1179)"} true;
    assert {:msg "assert_failed(2,1122,1179): function does not abort under this condition"}
      !$ResourceExists($42_TestMonomorphization_R'#0'_$memory#1, $1_Signer_spec_address_of($t0));

    // assert exists<TestMonomorphization::R<#0>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:40:9+55
    assume {:print "$at(2,1188,1243)"} true;
    assert {:msg "assert_failed(2,1188,1243): post-condition does not hold"}
      $ResourceExists($42_TestMonomorphization_R'#0'_$memory, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:40:9+55
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:37:5+1
    assume {:print "$at(2,1084,1085)"} true;
L2:

    // assert exists[@1]<TestMonomorphization::R<#0>>(Signer::spec_address_of[]($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:38:5+159
    assume {:print "$at(2,1090,1249)"} true;
    assert {:msg "assert_failed(2,1090,1249): abort not covered by any of the `aborts_if` clauses"}
      $ResourceExists($42_TestMonomorphization_R'#0'_$memory#1, $1_Signer_spec_address_of($t0));

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:38:5+159
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestMonomorphization::mutate_R [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:28:5+105
procedure {:timeLimit 40} $42_TestMonomorphization_mutate_R$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: $Mutation ($42_TestMonomorphization_R'bool');
    var $t3: int;
    var $t4: $Mutation (bool);
    var $t0: int;
    var $temp_0'address': int;
    var $42_TestMonomorphization_R'bool'_$memory#0: $Memory $42_TestMonomorphization_R'bool';
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t4));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:28:5+105
    assume {:print "$at(2,739,844)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<TestMonomorphization::R<bool>>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:28:5+105
    assume (forall $a_0: int :: {$ResourceValue($42_TestMonomorphization_R'bool'_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestMonomorphization_R'bool'_$memory, $a_0);
    ($IsValid'$42_TestMonomorphization_R'bool''($rsc))));

    // @0 := save_mem(TestMonomorphization::R<bool>) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:28:5+1
    $42_TestMonomorphization_R'bool'_$memory#0 := $42_TestMonomorphization_R'bool'_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:28:5+1
    assume {:print "$track_local(5,2,0):", $t0} $t0 == $t0;

    // $t1 := false at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:29:46+5
    assume {:print "$at(2,832,837)"} true;
    $t1 := false;
    assume $IsValid'bool'($t1);

    // $t2 := borrow_global<TestMonomorphization::R<bool>>($t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:29:9+17
    if (!$ResourceExists($42_TestMonomorphization_R'bool'_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t2 := $Mutation($Global($t0), EmptyVec(), $ResourceValue($42_TestMonomorphization_R'bool'_$memory, $t0));
    }
    if ($abort_flag) {
        assume {:print "$at(2,795,812)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,2):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := borrow_field<TestMonomorphization::R<bool>>.y($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:29:9+34
    $t4 := $ChildMutation($t2, 1, $y#$42_TestMonomorphization_R'bool'($Dereference($t2)));

    // write_ref($t4, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:29:9+42
    $t4 := $UpdateMutation($t4, $t1);

    // write_back[Reference($t2).y]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:29:9+42
    $t2 := $UpdateMutation($t2, $Update'$42_TestMonomorphization_R'bool''_y($Dereference($t2), $Dereference($t4)));

    // write_back[TestMonomorphization::R<bool>@]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:29:9+42
    $42_TestMonomorphization_R'bool'_$memory := $ResourceUpdate($42_TestMonomorphization_R'bool'_$memory, $GlobalLocationAddress($t2),
        $Dereference($t2));

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:30:5+1
    assume {:print "$at(2,843,844)"} true;
L1:

    // assert Eq<TestMonomorphization::R<bool>>(global<TestMonomorphization::R<bool>>($t0), update TestMonomorphization::R.y<TestMonomorphization::R<bool>>(global[@0]<TestMonomorphization::R<bool>>($t0), false)) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:32:9+84
    assume {:print "$at(2,873,957)"} true;
    assert {:msg "assert_failed(2,873,957): post-condition does not hold"}
      $IsEqual'$42_TestMonomorphization_R'bool''($ResourceValue($42_TestMonomorphization_R'bool'_$memory, $t0), $Update'$42_TestMonomorphization_R'bool''_y($ResourceValue($42_TestMonomorphization_R'bool'_$memory#0, $t0), false));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:32:9+84
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:30:5+1
    assume {:print "$at(2,843,844)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:30:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestMonomorphization::pack_R [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:12:5+57
procedure {:timeLimit 40} $42_TestMonomorphization_pack_R$verify() returns ($ret0: $42_TestMonomorphization_R'u64')
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: $42_TestMonomorphization_R'u64';
    var $temp_0'$42_TestMonomorphization_R'u64'': $42_TestMonomorphization_R'u64';

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:13:14+1
    assume {:print "$at(2,340,341)"} true;
    $t0 := 1;
    assume $IsValid'u64'($t0);

    // $t1 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:13:20+1
    $t1 := 2;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestMonomorphization::R<u64>($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:13:9+13
    $t2 := $42_TestMonomorphization_R'u64'($t0, $t1);

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:13:9+13
    assume {:print "$track_return(5,3,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:14:5+1
    assume {:print "$at(2,353,354)"} true;
L1:

    // assert Eq<TestMonomorphization::R<u64>>($t2, TestMonomorphization::spec_pack_R()) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:16:9+32
    assume {:print "$at(2,381,413)"} true;
    assert {:msg "assert_failed(2,381,413): post-condition does not hold"}
      $IsEqual'$42_TestMonomorphization_R'u64''($t2, $42_TestMonomorphization_spec_pack_R());

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:16:9+32
    $ret0 := $t2;
    return;

}

// fun TestMonomorphization::use_bcs [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:46:5+111
procedure {:timeLimit 40} $42_TestMonomorphization_use_bcs$verify(_$t0: #0) returns ($ret0: Vec (int), $ret1: Vec (int))
{
    // declare local variables
    var $t1: int;
    var $t2: Vec (int);
    var $t3: Vec (int);
    var $t4: int;
    var $t5: int;
    var $t6: Vec (int);
    var $t0: #0;
    var $temp_0'#0': #0;
    var $temp_0'address': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:51:17+8
    assume {:print "$at(2,1498,1506)"} true;
    assume $IsValid'#0'($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:46:5+1
    assume {:print "$at(2,1304,1305)"} true;
    assume {:print "$track_local(5,4,0):", $t0} $t0 == $t0;

    // $t3 := BCS::to_bytes<#0>($t0) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:47:10+16
    assume {:print "$at(2,1370,1386)"} true;
    call $t3 := $1_BCS_to_bytes'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,1370,1386)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,4):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[tmp#$2]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:47:10+16
    assume {:print "$track_local(5,4,2):", $t3} $t3 == $t3;

    // $t5 := 0x2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:47:43+4
    $t5 := 2;
    assume $IsValid'address'($t5);

    // trace_local[tmp#$1]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:47:43+4
    assume {:print "$track_local(5,4,1):", $t5} $t5 == $t5;

    // $t6 := BCS::to_bytes<address>($t5) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:47:28+20
    call $t6 := $1_BCS_to_bytes'address'($t5);
    if ($abort_flag) {
        assume {:print "$at(2,1388,1408)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,4):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_return[0]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:47:9+40
    assume {:print "$track_return(5,4,0):", $t3} $t3 == $t3;

    // trace_return[1]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:47:9+40
    assume {:print "$track_return(5,4,1):", $t6} $t6 == $t6;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:48:5+1
    assume {:print "$at(2,1414,1415)"} true;
L1:

    // assert Eq<vector<u8>>($t3, BCS::serialize<#0>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:50:9+38
    assume {:print "$at(2,1443,1481)"} true;
    assert {:msg "assert_failed(2,1443,1481): post-condition does not hold"}
      $IsEqual'vec'u8''($t3, $1_BCS_serialize'#0'($t0));

    // assert Eq<vector<u8>>($t6, BCS::serialize<address>(2)) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:51:9+41
    assume {:print "$at(2,1490,1531)"} true;
    assert {:msg "assert_failed(2,1490,1531): post-condition does not hold"}
      $IsEqual'vec'u8''($t6, $1_BCS_serialize'address'(2));

    // return ($t3, $t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:51:9+41
    $ret0 := $t3;
    $ret1 := $t6;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:48:5+1
    assume {:print "$at(2,1414,1415)"} true;
L2:

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:48:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestMonomorphization::use_event [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:58:5+110
procedure {:timeLimit 40} $42_TestMonomorphization_use_event$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestMonomorphization_E')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestMonomorphization_E'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestMonomorphization_E;
    var $t3: int;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestMonomorphization_E');
    var $temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E'': $1_Event_EventHandle'$42_TestMonomorphization_E';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:58:5+110
    assume {:print "$at(2,1604,1714)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestMonomorphization_E''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:58:5+1
    $temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E'' := $Dereference($t0);
    assume {:print "$track_local(5,5,0):", $temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''} $temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E'' == $temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:59:42+1
    assume {:print "$at(2,1704,1705)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestMonomorphization::E($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:59:35+9
    $t2 := $42_TestMonomorphization_E($t1);

    // Event::emit_event<TestMonomorphization::E>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:59:9+36
    call $t0 := $1_Event_emit_event'$42_TestMonomorphization_E'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,1671,1707)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,5):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:59:45+1
    $temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E'' := $Dereference($t0);
    assume {:print "$track_local(5,5,0):", $temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E''} $temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E'' == $temp_0'$1_Event_EventHandle'$42_TestMonomorphization_E'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:60:5+1
    assume {:print "$at(2,1713,1714)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestMonomorphization::E(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:62:9+26
    assume {:print "$at(2,1744,1770)"} true;
    assert {:msg "assert_failed(2,1744,1770): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestMonomorphization_E'($EmptyEventStore, $Dereference($t0), $42_TestMonomorphization_E(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestMonomorphization::E(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:61:5+57
    assume {:print "$at(2,1719,1776)"} true;
    assert {:msg "assert_failed(2,1719,1776): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestMonomorphization_E'($EmptyEventStore, $Dereference($t0), $42_TestMonomorphization_E(0)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:61:5+57
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:60:5+1
    assume {:print "$at(2,1713,1714)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:60:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestMonomorphization::use_vec [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:43:5+43
procedure {:timeLimit 40} $42_TestMonomorphization_use_vec$verify(_$t0: Vec (int)) returns ()
{
    // declare local variables
    var $t0: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:43:5+43
    assume {:print "$at(2,1255,1298)"} true;
    assume $IsValid'vec'u64''($t0);

    // trace_local[_x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:43:5+1
    assume {:print "$track_local(5,6,0):", $t0} $t0 == $t0;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:44:5+1
    assume {:print "$at(2,1297,1298)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:44:5+1
    return;

}

// fun TestMonomorphization::vec_addr [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:5+95
procedure {:timeLimit 40} $42_TestMonomorphization_vec_addr$verify(_$t0: Vec (int)) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: $Mutation (Vec (int));
    var $t2: int;
    var $t3: int;
    var $t4: Vec (int);
    var $t0: Vec (int);
    var $temp_0'vec'address'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:71:29+6
    assume {:print "$at(2,2293,2299)"} true;
    assume $IsValid'vec'address''($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:5+1
    assume {:print "$at(2,2169,2170)"} true;
    assume {:print "$track_local(5,7,0):", $t0} $t0 == $t0;

    // $t1 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:82+6
    $t1 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t2 := 0x1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:90+4
    $t2 := 1;
    assume $IsValid'address'($t2);

    // Vector::push_back<address>($t1, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:64+31
    call $t1 := $1_Vector_push_back'address'($t1, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,2228,2259)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,7):", $t3} $t3 == $t3;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:64+31
    $t0 := $Dereference($t1);

    // $t4 := move($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:97+1
    $t4 := $t0;

    // trace_return[0]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:97+1
    assume {:print "$track_return(5,7,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:99+1
L1:

    // assert Neq<address>(Index($t4, 0), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:71:21+26
    assume {:print "$at(2,2285,2311)"} true;
    assert {:msg "assert_failed(2,2285,2311): post-condition does not hold"}
      !$IsEqual'address'(ReadVec($t4, 0), 1);

    // return $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:71:21+26
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:99+1
    assume {:print "$at(2,2263,2264)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:70:99+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestMonomorphization::vec_bool [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:5+89
procedure {:timeLimit 40} $42_TestMonomorphization_vec_bool$verify(_$t0: Vec (bool)) returns ($ret0: Vec (bool))
{
    // declare local variables
    var $t1: $Mutation (Vec (bool));
    var $t2: bool;
    var $t3: int;
    var $t4: Vec (bool);
    var $t0: Vec (bool);
    var $temp_0'vec'bool'': Vec (bool);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:73:29+6
    assume {:print "$at(2,2436,2442)"} true;
    assume $IsValid'vec'bool''($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:5+1
    assume {:print "$at(2,2318,2319)"} true;
    assume {:print "$track_local(5,8,0):", $t0} $t0 == $t0;

    // $t1 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:76+6
    $t1 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t2 := true at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:84+4
    $t2 := true;
    assume $IsValid'bool'($t2);

    // Vector::push_back<bool>($t1, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:58+31
    call $t1 := $1_Vector_push_back'bool'($t1, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,2371,2402)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,8):", $t3} $t3 == $t3;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:58+31
    $t0 := $Dereference($t1);

    // $t4 := move($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:91+1
    $t4 := $t0;

    // trace_return[0]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:91+1
    assume {:print "$track_return(5,8,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:93+1
L1:

    // assert Neq<bool>(Index($t4, 0), true) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:73:21+26
    assume {:print "$at(2,2428,2454)"} true;
    assert {:msg "assert_failed(2,2428,2454): post-condition does not hold"}
      !$IsEqual'bool'(ReadVec($t4, 0), true);

    // return $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:73:21+26
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:93+1
    assume {:print "$at(2,2406,2407)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:72:93+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestMonomorphization::vec_int [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:5+83
procedure {:timeLimit 40} $42_TestMonomorphization_vec_int$verify(_$t0: Vec (int)) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: $Mutation (Vec (int));
    var $t2: int;
    var $t3: int;
    var $t4: Vec (int);
    var $t0: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:69:28+6
    assume {:print "$at(2,2147,2153)"} true;
    assume $IsValid'vec'u64''($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:5+1
    assume {:print "$at(2,2036,2037)"} true;
    assume {:print "$track_local(5,9,0):", $t0} $t0 == $t0;

    // $t1 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:73+6
    $t1 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t2 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:81+1
    $t2 := 1;
    assume $IsValid'u64'($t2);

    // Vector::push_back<u64>($t1, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:55+28
    call $t1 := $1_Vector_push_back'u64'($t1, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,2086,2114)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,9):", $t3} $t3 == $t3;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:55+28
    $t0 := $Dereference($t1);

    // $t4 := move($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:85+1
    $t4 := $t0;

    // trace_return[0]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:85+1
    assume {:print "$track_return(5,9,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:87+1
L1:

    // assert Neq<u64>(Index($t4, 0), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:69:20+23
    assume {:print "$at(2,2139,2162)"} true;
    assert {:msg "assert_failed(2,2139,2162): post-condition does not hold"}
      !$IsEqual'u64'(ReadVec($t4, 0), 1);

    // return $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:69:20+23
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:87+1
    assume {:print "$at(2,2118,2119)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:68:87+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestMonomorphization::vec_struct_addr [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:5+123
procedure {:timeLimit 40} $42_TestMonomorphization_vec_struct_addr$verify(_$t0: Vec ($42_TestMonomorphization_R'address')) returns ($ret0: Vec ($42_TestMonomorphization_R'address'))
{
    // declare local variables
    var $t1: $Mutation (Vec ($42_TestMonomorphization_R'address'));
    var $t2: int;
    var $t3: int;
    var $t4: $42_TestMonomorphization_R'address';
    var $t5: int;
    var $t6: Vec ($42_TestMonomorphization_R'address');
    var $t0: Vec ($42_TestMonomorphization_R'address');
    var $temp_0'vec'$42_TestMonomorphization_R'address''': Vec ($42_TestMonomorphization_R'address');
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:77:36+6
    assume {:print "$at(2,2790,2796)"} true;
    assume $IsValid'vec'$42_TestMonomorphization_R'address'''($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:5+1
    assume {:print "$at(2,2631,2632)"} true;
    assume {:print "$track_local(5,10,0):", $t0} $t0 == $t0;

    // $t1 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:95+6
    $t1 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t2 := 0x1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:108+4
    $t2 := 1;
    assume $IsValid'address'($t2);

    // $t3 := 0x2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:117+4
    $t3 := 2;
    assume $IsValid'address'($t3);

    // $t4 := pack TestMonomorphization::R<address>($t2, $t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:103+19
    $t4 := $42_TestMonomorphization_R'address'($t2, $t3);

    // Vector::push_back<TestMonomorphization::R<address>>($t1, $t4) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:77+46
    call $t1 := $1_Vector_push_back'$42_TestMonomorphization_R'address''($t1, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,2703,2749)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(5,10):", $t5} $t5 == $t5;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:77+46
    $t0 := $Dereference($t1);

    // $t6 := move($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:125+1
    $t6 := $t0;

    // trace_return[0]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:125+1
    assume {:print "$track_return(5,10,0):", $t6} $t6 == $t6;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:127+1
L1:

    // assert Neq<address>(select TestMonomorphization::R.x(Index($t6, 0)), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:77:28+28
    assume {:print "$at(2,2782,2810)"} true;
    assert {:msg "assert_failed(2,2782,2810): post-condition does not hold"}
      !$IsEqual'address'($x#$42_TestMonomorphization_R'address'(ReadVec($t6, 0)), 1);

    // return $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:77:28+28
    $ret0 := $t6;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:127+1
    assume {:print "$at(2,2753,2754)"} true;
L2:

    // abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:76:127+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestMonomorphization::vec_struct_int [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:5+111
procedure {:timeLimit 40} $42_TestMonomorphization_vec_struct_int$verify(_$t0: Vec ($42_TestMonomorphization_R'u64')) returns ($ret0: Vec ($42_TestMonomorphization_R'u64'))
{
    // declare local variables
    var $t1: $Mutation (Vec ($42_TestMonomorphization_R'u64'));
    var $t2: int;
    var $t3: int;
    var $t4: $42_TestMonomorphization_R'u64';
    var $t5: int;
    var $t6: Vec ($42_TestMonomorphization_R'u64');
    var $t0: Vec ($42_TestMonomorphization_R'u64');
    var $temp_0'vec'$42_TestMonomorphization_R'u64''': Vec ($42_TestMonomorphization_R'u64');
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:75:35+6
    assume {:print "$at(2,2607,2613)"} true;
    assume $IsValid'vec'$42_TestMonomorphization_R'u64'''($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:5+1
    assume {:print "$at(2,2461,2462)"} true;
    assume {:print "$track_local(5,11,0):", $t0} $t0 == $t0;

    // $t1 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:86+6
    $t1 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t2 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:99+4
    $t2 := 1;
    assume $IsValid'u64'($t2);

    // $t3 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:108+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // $t4 := pack TestMonomorphization::R<u64>($t2, $t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:94+16
    $t4 := $42_TestMonomorphization_R'u64'($t2, $t3);

    // Vector::push_back<TestMonomorphization::R<u64>>($t1, $t4) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:68+43
    call $t1 := $1_Vector_push_back'$42_TestMonomorphization_R'u64''($t1, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,2524,2567)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(5,11):", $t5} $t5 == $t5;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:68+43
    $t0 := $Dereference($t1);

    // $t6 := move($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:113+1
    $t6 := $t0;

    // trace_return[0]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:113+1
    assume {:print "$track_return(5,11,0):", $t6} $t6 == $t6;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:115+1
L1:

    // assert Neq<u64>(select TestMonomorphization::R.x(Index($t6, 0)), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:75:27+25
    assume {:print "$at(2,2599,2624)"} true;
    assert {:msg "assert_failed(2,2599,2624): post-condition does not hold"}
      !$IsEqual'u64'($x#$42_TestMonomorphization_R'u64'(ReadVec($t6, 0)), 1);

    // return $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:75:27+25
    $ret0 := $t6;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:115+1
    assume {:print "$at(2,2571,2572)"} true;
L2:

    // abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:74:115+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestMonomorphization::vec_vec [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:79:5+130
procedure {:timeLimit 40} $42_TestMonomorphization_vec_vec$verify(_$t0: Vec (Vec (int))) returns ($ret0: Vec (Vec (int)))
{
    // declare local variables
    var $t1: $Mutation (Vec (Vec (int)));
    var $t2: Vec (int);
    var $t3: int;
    var $t4: Vec (Vec (int));
    var $t0: Vec (Vec (int));
    var $temp_0'vec'vec'u64''': Vec (Vec (int));
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:82:32+6
    assume {:print "$at(2,2980,2986)"} true;
    assume $IsValid'vec'vec'u64'''($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:79:5+1
    assume {:print "$at(2,2818,2819)"} true;
    assume {:print "$track_local(5,12,0):", $t0} $t0 == $t0;

    // $t1 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:80:27+6
    assume {:print "$at(2,2910,2916)"} true;
    $t1 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t2 := Vector::empty<u64>() on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:80:35+20
    call $t2 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,2918,2938)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,12):", $t3} $t3 == $t3;
        goto L2;
    }

    // Vector::push_back<vector<u64>>($t1, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:80:9+47
    call $t1 := $1_Vector_push_back'vec'u64''($t1, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,2892,2939)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,12):", $t3} $t3 == $t3;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:80:9+47
    $t0 := $Dereference($t1);

    // $t4 := move($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:80:58+1
    $t4 := $t0;

    // trace_return[0]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:80:58+1
    assume {:print "$track_return(5,12,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:81:5+1
    assume {:print "$at(2,2947,2948)"} true;
L1:

    // assert Neq<num>(Len<u64>(Index($t4, 0)), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:82:20+28
    assume {:print "$at(2,2968,2996)"} true;
    assert {:msg "assert_failed(2,2968,2996): post-condition does not hold"}
      !$IsEqual'num'(LenVec(ReadVec($t4, 0)), 0);

    // return $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:82:20+28
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:81:5+1
    assume {:print "$at(2,2947,2948)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mono.move:81:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}
