
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
// Native Vector implementation for element type `vec'u8'`


function {:inline} $IsEqual'vec'vec'u8'''(v1: Vec (Vec (int)), v2: Vec (Vec (int))): bool {
    v1 == v2
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
// Native BCS implementation for element type `u8`

// Serialize is modeled as an uninterpreted function, with an additional
// axiom to say it's an injection.

function {:inline} $1_BCS_serialize'u8'(v: int): Vec int;

axiom (forall v1, v2: int :: {$1_BCS_serialize'u8'(v1), $1_BCS_serialize'u8'(v2)}
   $IsEqual'u8'(v1, v2) <==> $IsEqual'vec'u8''($1_BCS_serialize'u8'(v1), $1_BCS_serialize'u8'(v2)));

// This says that serialize returns a non-empty vec<u8>

axiom (forall v: int :: {$1_BCS_serialize'u8'(v)}
     ( var r := $1_BCS_serialize'u8'(v); $IsValid'vec'u8''(r) && LenVec(r) > 0 ));


procedure $1_BCS_to_bytes'u8'(v: int) returns (res: Vec int);
ensures res == $1_BCS_serialize'u8'(v);

function {:inline} $1_BCS_$to_bytes'u8'(v: int): Vec int {
    $1_BCS_serialize'u8'(v)
}





// ==================================================================================
// Native Event module



procedure {:inline 1} $InitEventStore() {
}



//==================================
// Begin Translation



// Given Types for Type Parameters


// struct Authenticator::MultiEd25519PublicKey at /home/ying/diem/language/diem-framework/modules/Authenticator.move:10:5+195
type {:datatype} $1_Authenticator_MultiEd25519PublicKey;
function {:constructor} $1_Authenticator_MultiEd25519PublicKey($public_keys: Vec (Vec (int)), $threshold: int): $1_Authenticator_MultiEd25519PublicKey;
function {:inline} $Update'$1_Authenticator_MultiEd25519PublicKey'_public_keys(s: $1_Authenticator_MultiEd25519PublicKey, x: Vec (Vec (int))): $1_Authenticator_MultiEd25519PublicKey {
    $1_Authenticator_MultiEd25519PublicKey(x, $threshold#$1_Authenticator_MultiEd25519PublicKey(s))
}
function {:inline} $Update'$1_Authenticator_MultiEd25519PublicKey'_threshold(s: $1_Authenticator_MultiEd25519PublicKey, x: int): $1_Authenticator_MultiEd25519PublicKey {
    $1_Authenticator_MultiEd25519PublicKey($public_keys#$1_Authenticator_MultiEd25519PublicKey(s), x)
}
function $IsValid'$1_Authenticator_MultiEd25519PublicKey'(s: $1_Authenticator_MultiEd25519PublicKey): bool {
    $IsValid'vec'vec'u8'''($public_keys#$1_Authenticator_MultiEd25519PublicKey(s))
      && $IsValid'u8'($threshold#$1_Authenticator_MultiEd25519PublicKey(s))
}
function {:inline} $IsEqual'$1_Authenticator_MultiEd25519PublicKey'(s1: $1_Authenticator_MultiEd25519PublicKey, s2: $1_Authenticator_MultiEd25519PublicKey): bool {
    s1 == s2
}

// fun Authenticator::create_multi_ed25519 [verification] at /home/ying/diem/language/diem-framework/modules/Authenticator.move:37:5+694
procedure {:timeLimit 40} $1_Authenticator_create_multi_ed25519$verify(_$t0: Vec (Vec (int)), _$t1: int) returns ($ret0: $1_Authenticator_MultiEd25519PublicKey)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
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
    var $t23: $1_Authenticator_MultiEd25519PublicKey;
    var $t0: Vec (Vec (int));
    var $t1: int;
    var $temp_0'$1_Authenticator_MultiEd25519PublicKey': $1_Authenticator_MultiEd25519PublicKey;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'u8': int;
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:37:5+694
    assume {:print "$at(6,1637,2331)"} true;
    assume $IsValid'vec'vec'u8'''($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:37:5+694
    assume $IsValid'u8'($t1);

    // trace_local[public_keys]($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:37:5+1
    assume {:print "$track_local(4,0,0):", $t0} $t0 == $t0;

    // trace_local[threshold]($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:37:5+1
    assume {:print "$track_local(4,0,1):", $t1} $t1 == $t1;

    // $t9 := Vector::length<vector<u8>>($t0) on_abort goto L7 with $t10 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:42:19+28
    assume {:print "$at(6,1822,1850)"} true;
    call $t9 := $1_Vector_length'vec'u8''($t0);
    if ($abort_flag) {
        assume {:print "$at(6,1822,1850)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(4,0):", $t10} $t10 == $t10;
        goto L7;
    }

    // trace_local[len]($t9) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:42:13+3
    assume {:print "$track_local(4,0,8):", $t9} $t9 == $t9;

    // $t11 := 0 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:29+1
    assume {:print "$at(6,1880,1881)"} true;
    $t11 := 0;
    assume $IsValid'u8'($t11);

    // $t12 := !=($t1, $t11) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:26+2
    $t12 := !$IsEqual'u8'($t1, $t11);

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:57+15
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // nop at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:32+41
    // >> opaque call: $t13 := Errors::invalid_argument($t12)

    // $t14 := opaque begin: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:32+41

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:32+41
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 7) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:32+41
    assume $IsEqual'u64'($t14, 7);

    // $t14 := opaque end: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:32+41

    // trace_local[tmp#$3]($t14) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:9+65
    assume {:print "$track_local(4,0,3):", $t14} $t14 == $t14;

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:9+65
    assume {:print "$track_local(4,0,2):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:9+65
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:9+65
L1:

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:9+65
    assume {:print "$at(6,1860,1925)"} true;
    assume {:print "$track_abort(4,0):", $t14} $t14 == $t14;

    // $t10 := move($t14) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:9+65
    $t10 := $t14;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:43:9+65
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:45:14+9
    assume {:print "$at(6,1956,1965)"} true;
L0:

    // $t15 := (u64)($t1) on_abort goto L7 with $t10 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:45:13+18
    call $t15 := $CastU64($t1);
    if ($abort_flag) {
        assume {:print "$at(6,1955,1973)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(4,0):", $t10} $t10 == $t10;
        goto L7;
    }

    // $t16 := <=($t15, $t9) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:45:32+2
    call $t16 := $Le($t15, $t9);

    // $t17 := 1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:46:38+30
    assume {:print "$at(6,2019,2049)"} true;
    $t17 := 1;
    assume $IsValid'u64'($t17);

    // nop at /home/ying/diem/language/diem-framework/modules/Authenticator.move:46:13+56
    // >> opaque call: $t17 := Errors::invalid_argument($t16)

    // $t18 := opaque begin: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:46:13+56

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:46:13+56
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 7) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:46:13+56
    assume $IsEqual'u64'($t18, 7);

    // $t18 := opaque end: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:46:13+56

    // trace_local[tmp#$5]($t18) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:44:9+125
    assume {:print "$at(6,1935,2060)"} true;
    assume {:print "$track_local(4,0,5):", $t18} $t18 == $t18;

    // trace_local[tmp#$4]($t16) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:44:9+125
    assume {:print "$track_local(4,0,4):", $t16} $t16 == $t16;

    // if ($t16) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:44:9+125
    if ($t16) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:44:9+125
L3:

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:44:9+125
    assume {:print "$at(6,1935,2060)"} true;
    assume {:print "$track_abort(4,0):", $t18} $t18 == $t18;

    // $t10 := move($t18) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:44:9+125
    $t10 := $t18;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:44:9+125
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:50:13+3
    assume {:print "$at(6,2158,2161)"} true;
L2:

    // $t19 := 32 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:50:20+22
    $t19 := 32;
    assume $IsValid'u64'($t19);

    // $t20 := <=($t9, $t19) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:50:17+2
    call $t20 := $Le($t9, $t19);

    // $t21 := 2 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:51:38+29
    assume {:print "$at(6,2226,2255)"} true;
    $t21 := 2;
    assume $IsValid'u64'($t21);

    // nop at /home/ying/diem/language/diem-framework/modules/Authenticator.move:51:13+55
    // >> opaque call: $t21 := Errors::invalid_argument($t20)

    // $t22 := opaque begin: Errors::invalid_argument($t21) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:51:13+55

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:51:13+55
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 7) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:51:13+55
    assume $IsEqual'u64'($t22, 7);

    // $t22 := opaque end: Errors::invalid_argument($t21) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:51:13+55

    // trace_local[tmp#$7]($t22) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:49:9+128
    assume {:print "$at(6,2138,2266)"} true;
    assume {:print "$track_local(4,0,7):", $t22} $t22 == $t22;

    // trace_local[tmp#$6]($t20) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:49:9+128
    assume {:print "$track_local(4,0,6):", $t20} $t20 == $t20;

    // if ($t20) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:49:9+128
    if ($t20) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:49:9+128
L5:

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:49:9+128
    assume {:print "$at(6,2138,2266)"} true;
    assume {:print "$track_abort(4,0):", $t22} $t22 == $t22;

    // $t10 := move($t22) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:49:9+128
    $t10 := $t22;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:49:9+128
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:54:33+11
    assume {:print "$at(6,2301,2312)"} true;
L4:

    // $t23 := pack Authenticator::MultiEd25519PublicKey($t0, $t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:54:9+48
    $t23 := $1_Authenticator_MultiEd25519PublicKey($t0, $t1);

    // trace_return[0]($t23) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:54:9+48
    assume {:print "$track_return(4,0,0):", $t23} $t23 == $t23;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:55:5+1
    assume {:print "$at(6,2330,2331)"} true;
L6:

    // return $t23 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:55:5+1
    $ret0 := $t23;
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:55:5+1
L7:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:55:5+1
    $abort_code := $t10;
    $abort_flag := true;
    return;

}

// fun Authenticator::public_keys [verification] at /home/ying/diem/language/diem-framework/modules/Authenticator.move:99:5+101
procedure {:timeLimit 40} $1_Authenticator_public_keys$verify(_$t0: $1_Authenticator_MultiEd25519PublicKey) returns ($ret0: Vec (Vec (int)))
{
    // declare local variables
    var $t1: Vec (Vec (int));
    var $t0: $1_Authenticator_MultiEd25519PublicKey;
    var $temp_0'$1_Authenticator_MultiEd25519PublicKey': $1_Authenticator_MultiEd25519PublicKey;
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:99:5+101
    assume {:print "$at(6,4331,4432)"} true;
    assume $IsValid'$1_Authenticator_MultiEd25519PublicKey'($t0);

    // trace_local[k]($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:99:5+1
    assume {:print "$track_local(4,3,0):", $t0} $t0 == $t0;

    // $t1 := get_field<Authenticator::MultiEd25519PublicKey>.public_keys($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:100:9+14
    assume {:print "$at(6,4412,4426)"} true;
    $t1 := $public_keys#$1_Authenticator_MultiEd25519PublicKey($t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:100:9+14
    assume {:print "$track_return(4,3,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:101:5+1
    assume {:print "$at(6,4431,4432)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:101:5+1
    $ret0 := $t1;
    return;

}

// fun Authenticator::threshold [verification] at /home/ying/diem/language/diem-framework/modules/Authenticator.move:104:5+81
procedure {:timeLimit 40} $1_Authenticator_threshold$verify(_$t0: $1_Authenticator_MultiEd25519PublicKey) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t0: $1_Authenticator_MultiEd25519PublicKey;
    var $temp_0'$1_Authenticator_MultiEd25519PublicKey': $1_Authenticator_MultiEd25519PublicKey;
    var $temp_0'u8': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:104:5+81
    assume {:print "$at(6,4495,4576)"} true;
    assume $IsValid'$1_Authenticator_MultiEd25519PublicKey'($t0);

    // trace_local[k]($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:104:5+1
    assume {:print "$track_local(4,4,0):", $t0} $t0 == $t0;

    // $t1 := get_field<Authenticator::MultiEd25519PublicKey>.threshold($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:105:10+12
    assume {:print "$at(6,4558,4570)"} true;
    $t1 := $threshold#$1_Authenticator_MultiEd25519PublicKey($t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:105:9+13
    assume {:print "$track_return(4,4,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:106:5+1
    assume {:print "$at(6,4575,4576)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:106:5+1
    $ret0 := $t1;
    return;

}

// fun Authenticator::ed25519_authentication_key [verification] at /home/ying/diem/language/diem-framework/modules/Authenticator.move:58:5+186
procedure {:timeLimit 40} $1_Authenticator_ed25519_authentication_key$verify(_$t0: Vec (int)) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: $Mutation (Vec (int));
    var $t2: int;
    var $t3: int;
    var $t4: Vec (int);
    var $t5: Vec (int);
    var $t0: Vec (int);
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:58:5+186
    assume {:print "$at(6,2415,2601)"} true;
    assume $IsValid'vec'u8''($t0);

    // trace_local[public_key]($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:58:5+1
    assume {:print "$track_local(4,1,0):", $t0} $t0 == $t0;

    // $t1 := borrow_local($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:59:27+15
    assume {:print "$at(6,2517,2532)"} true;
    $t1 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t2 := 0 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:59:44+24
    $t2 := 0;
    assume $IsValid'u8'($t2);

    // Vector::push_back<u8>($t1, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:59:9+60
    call $t1 := $1_Vector_push_back'u8'($t1, $t2);
    if ($abort_flag) {
        assume {:print "$at(6,2499,2559)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(4,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:59:9+60
    $t0 := $Dereference($t1);

    // $t4 := move($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:60:24+10
    assume {:print "$at(6,2584,2594)"} true;
    $t4 := $t0;

    // $t5 := Hash::sha3_256($t4) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:60:9+26
    call $t5 := $1_Hash_sha3_256($t4);
    if ($abort_flag) {
        assume {:print "$at(6,2569,2595)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(4,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t5) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:60:9+26
    assume {:print "$track_return(4,1,0):", $t5} $t5 == $t5;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:61:5+1
    assume {:print "$at(6,2600,2601)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:64:9+16
    assume {:print "$at(6,2678,2694)"} true;
    assert {:msg "assert_failed(6,2678,2694): function does not abort under this condition"}
      !false;

    // return $t5 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:64:9+16
    $ret0 := $t5;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:61:5+1
    assume {:print "$at(6,2600,2601)"} true;
L2:

    // assert false at /home/ying/diem/language/diem-framework/modules/Authenticator.move:62:5+176
    assume {:print "$at(6,2606,2782)"} true;
    assert {:msg "assert_failed(6,2606,2782): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:62:5+176
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun Authenticator::multi_ed25519_authentication_key [verification] at /home/ying/diem/language/diem-framework/modules/Authenticator.move:72:5+724
procedure {:timeLimit 40} $1_Authenticator_multi_ed25519_authentication_key$verify(_$t0: $1_Authenticator_MultiEd25519PublicKey) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: Vec (int);
    var $t2: int;
    var $t3: int;
    var $t4: Vec (int);
    var $t5: Vec (Vec (int));
    var $t6: Vec (Vec (int));
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: Vec (int);
    var $t12: int;
    var $t13: int;
    var $t14: $Mutation (Vec (int));
    var $t15: $Mutation (Vec (int));
    var $t16: int;
    var $t17: Vec (int);
    var $t18: $Mutation (Vec (int));
    var $t19: int;
    var $t20: Vec (int);
    var $t21: Vec (int);
    var $t0: $1_Authenticator_MultiEd25519PublicKey;
    var $temp_0'$1_Authenticator_MultiEd25519PublicKey': $1_Authenticator_MultiEd25519PublicKey;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t14));
    assume IsEmptyVec(p#$Mutation($t15));
    assume IsEmptyVec(p#$Mutation($t18));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:72:5+724
    assume {:print "$at(6,3107,3831)"} true;
    assume $IsValid'$1_Authenticator_MultiEd25519PublicKey'($t0);

    // trace_local[k]($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:72:5+1
    assume {:print "$track_local(4,2,0):", $t0} $t0 == $t0;

    // $t6 := get_field<Authenticator::MultiEd25519PublicKey>.public_keys($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:73:27+14
    assume {:print "$at(6,3218,3232)"} true;
    $t6 := $public_keys#$1_Authenticator_MultiEd25519PublicKey($t0);

    // trace_local[public_keys]($t6) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:73:13+11
    assume {:print "$track_local(4,2,5):", $t6} $t6 == $t6;

    // $t7 := Vector::length<vector<u8>>($t6) on_abort goto L6 with $t8 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:74:19+27
    assume {:print "$at(6,3252,3279)"} true;
    call $t7 := $1_Vector_length'vec'u8''($t6);
    if ($abort_flag) {
        assume {:print "$at(6,3252,3279)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(4,2):", $t8} $t8 == $t8;
        goto L6;
    }

    // trace_local[len]($t7) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:74:13+3
    assume {:print "$track_local(4,2,3):", $t7} $t7 == $t7;

    // $t1 := Vector::empty<u8>() on_abort goto L6 with $t8 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:75:43+15
    assume {:print "$at(6,3323,3338)"} true;
    call $t1 := $1_Vector_empty'u8'();
    if ($abort_flag) {
        assume {:print "$at(6,3323,3338)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(4,2):", $t8} $t8 == $t8;
        goto L6;
    }

    // trace_local[authentication_key_preimage]($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:75:13+27
    assume {:print "$track_local(4,2,1):", $t1} $t1 == $t1;

    // $t9 := 0 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:76:17+1
    assume {:print "$at(6,3356,3357)"} true;
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // trace_local[i]($t9) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:76:13+1
    assume {:print "$track_local(4,2,2):", $t9} $t9 == $t9;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:16+1
    assume {:print "$at(6,3374,3375)"} true;
L3:

    // havoc[val]($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:16+1
    havoc $t1;
    assume $IsValid'vec'u8''($t1);

    // havoc[val]($t9) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:16+1
    havoc $t9;
    assume $IsValid'u64'($t9);

    // havoc[val]($t10) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:16+1
    havoc $t10;
    assume $IsValid'bool'($t10);

    // havoc[val]($t11) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:16+1
    havoc $t11;
    assume $IsValid'vec'u8''($t11);

    // havoc[val]($t12) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:16+1
    havoc $t12;
    assume $IsValid'u64'($t12);

    // havoc[val]($t13) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:16+1
    havoc $t13;
    assume $IsValid'u64'($t13);

    // havoc[mut_all]($t14) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:16+1
    havoc $t14;
    assume $IsValid'vec'u8''($Dereference($t14));

    // assume Not(AbortFlag()) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:16+1
    assume !$abort_flag;

    // $t10 := <($t9, $t7) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:18+1
    call $t10 := $Lt($t9, $t7);

    // if ($t10) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:9+232
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:9+232
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:77:9+232
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:78:46+11
    assume {:print "$at(6,3430,3441)"} true;
L0:

    // $t11 := Vector::borrow<vector<u8>>($t6, $t9) on_abort goto L6 with $t8 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:78:31+30
    call $t11 := $1_Vector_borrow'vec'u8''($t6, $t9);
    if ($abort_flag) {
        assume {:print "$at(6,3415,3445)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(4,2):", $t8} $t8 == $t8;
        goto L6;
    }

    // trace_local[public_key]($t11) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:78:17+10
    assume {:print "$track_local(4,2,4):", $t11} $t11 == $t11;

    // $t14 := borrow_local($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:80:17+32
    assume {:print "$at(6,3491,3523)"} true;
    $t14 := $Mutation($Local(1), EmptyVec(), $t1);

    // Vector::append<u8>($t14, $t11) on_abort goto L6 with $t8 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:79:13+106
    assume {:print "$at(6,3459,3565)"} true;
    call $t14 := $1_Vector_append'u8'($t14, $t11);
    if ($abort_flag) {
        assume {:print "$at(6,3459,3565)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(4,2):", $t8} $t8 == $t8;
        goto L6;
    }

    // write_back[LocalRoot($t1)@]($t14) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:79:13+106
    $t1 := $Dereference($t14);

    // $t12 := 1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:83:21+1
    assume {:print "$at(6,3587,3588)"} true;
    $t12 := 1;
    assume $IsValid'u64'($t12);

    // $t13 := +($t9, $t12) on_abort goto L6 with $t8 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:83:19+1
    call $t13 := $AddU64($t9, $t12);
    if ($abort_flag) {
        assume {:print "$at(6,3585,3586)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(4,2):", $t8} $t8 == $t8;
        goto L6;
    }

    // trace_local[i]($t13) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:83:13+1
    assume {:print "$track_local(4,2,2):", $t13} $t13 == $t13;

    // goto L4 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:83:22+1
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:85:9+77
    assume {:print "$at(6,3609,3686)"} true;
L2:

    // destroy($t6) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:85:9+77

    // $t15 := borrow_local($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:85:24+32
    $t15 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t16 := get_field<Authenticator::MultiEd25519PublicKey>.threshold($t0) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:85:72+12
    $t16 := $threshold#$1_Authenticator_MultiEd25519PublicKey($t0);

    // $t17 := BCS::to_bytes<u8>($t16) on_abort goto L6 with $t8 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:85:58+27
    call $t17 := $1_BCS_to_bytes'u8'($t16);
    if ($abort_flag) {
        assume {:print "$at(6,3658,3685)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(4,2):", $t8} $t8 == $t8;
        goto L6;
    }

    // Vector::append<u8>($t15, $t17) on_abort goto L6 with $t8 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:85:9+77
    call $t15 := $1_Vector_append'u8'($t15, $t17);
    if ($abort_flag) {
        assume {:print "$at(6,3609,3686)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(4,2):", $t8} $t8 == $t8;
        goto L6;
    }

    // write_back[LocalRoot($t1)@]($t15) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:85:9+77
    $t1 := $Dereference($t15);

    // $t18 := borrow_local($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:86:27+32
    assume {:print "$at(6,3714,3746)"} true;
    $t18 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t19 := 1 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:86:61+23
    $t19 := 1;
    assume $IsValid'u8'($t19);

    // Vector::push_back<u8>($t18, $t19) on_abort goto L6 with $t8 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:86:9+76
    call $t18 := $1_Vector_push_back'u8'($t18, $t19);
    if ($abort_flag) {
        assume {:print "$at(6,3696,3772)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(4,2):", $t8} $t8 == $t8;
        goto L6;
    }

    // write_back[LocalRoot($t1)@]($t18) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:86:9+76
    $t1 := $Dereference($t18);

    // $t20 := move($t1) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:87:24+27
    assume {:print "$at(6,3797,3824)"} true;
    $t20 := $t1;

    // $t21 := Hash::sha3_256($t20) on_abort goto L6 with $t8 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:87:9+43
    call $t21 := $1_Hash_sha3_256($t20);
    if ($abort_flag) {
        assume {:print "$at(6,3782,3825)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(4,2):", $t8} $t8 == $t8;
        goto L6;
    }

    // trace_return[0]($t21) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:87:9+43
    assume {:print "$track_return(4,2,0):", $t21} $t21 == $t21;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:87:9+43
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:85:9+77
    // Loop invariant checking block for the loop started with header: L3
    assume {:print "$at(6,3609,3686)"} true;
L4:

    // stop() at /home/ying/diem/language/diem-framework/modules/Authenticator.move:85:9+77
    assume false;
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:88:5+1
    assume {:print "$at(6,3830,3831)"} true;
L5:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:91:9+16
    assume {:print "$at(6,3907,3923)"} true;
    assert {:msg "assert_failed(6,3907,3923): function does not abort under this condition"}
      !false;

    // return $t21 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:91:9+16
    $ret0 := $t21;
    return;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Authenticator.move:88:5+1
    assume {:print "$at(6,3830,3831)"} true;
L6:

    // assert false at /home/ying/diem/language/diem-framework/modules/Authenticator.move:89:5+172
    assume {:print "$at(6,3836,4008)"} true;
    assert {:msg "assert_failed(6,3836,4008): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/Authenticator.move:89:5+172
    $abort_code := $t8;
    $abort_flag := true;
    return;

}
