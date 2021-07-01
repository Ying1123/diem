
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


// fun TestBubbleSort::verify_sort [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:6:2+1447
procedure {:timeLimit 40} $42_TestBubbleSort_verify_sort$verify(_$t0: $Mutation (Vec (int))) returns ($ret0: Vec (int), $ret1: $Mutation (Vec (int)))
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: $Mutation (Vec (int));
    var $t5: Vec (int);
    var $t6: $Mutation (Vec (int));
    var $t7: int;
    var $t8: $Mutation (Vec (int));
    var $t9: int;
    var $t10: int;
    var $t11: Vec (int);
    var $t12: Vec (int);
    var $t13: Vec (int);
    var $t14: Vec (int);
    var $t15: Vec (int);
    var $t16: Vec (int);
    var $t17: Vec (int);
    var $t18: Vec (int);
    var $t19: int;
    var $t20: int;
    var $t21: $Mutation (Vec (int));
    var $t22: int;
    var $t23: bool;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t27: bool;
    var $t28: Vec (int);
    var $t29: Vec (int);
    var $t30: int;
    var $t31: int;
    var $t32: int;
    var $t33: bool;
    var $t34: int;
    var $t35: bool;
    var $t36: int;
    var $t37: int;
    var $t38: Vec (int);
    var $t39: int;
    var $t40: Vec (int);
    var $t41: int;
    var $t42: bool;
    var $t43: int;
    var $t44: int;
    var $t45: int;
    var $t46: int;
    var $t47: int;
    var $t48: int;
    var $t49: Vec (int);
    var $t0: $Mutation (Vec (int));
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t6));
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t21));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:78:49+6
    assume {:print "$at(2,2019,2025)"} true;
    assume $IsValid'vec'u64''($Dereference($t0));

    // $t11 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:6:2+1
    assume {:print "$at(2,169,170)"} true;
    $t11 := $Dereference($t0);

    // $t12 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:6:2+1
    $t12 := $Dereference($t0);

    // $t13 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:6:2+1
    $t13 := $Dereference($t0);

    // $t14 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:6:2+1
    $t14 := $Dereference($t0);

    // $t15 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:6:2+1
    $t15 := $Dereference($t0);

    // $t16 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:6:2+1
    $t16 := $Dereference($t0);

    // $t17 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:6:2+1
    $t17 := $Dereference($t0);

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:6:2+1
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t18 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:7:29+1
    assume {:print "$at(2,256,257)"} true;
    $t18 := $Dereference($t0);

    // $t19 := Vector::length<u64>($t18) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:7:14+17
    call $t19 := $1_Vector_length'u64'($t18);
    if ($abort_flag) {
        assume {:print "$at(2,241,258)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // trace_local[vlen]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:7:7+4
    assume {:print "$track_local(1,0,10):", $t19} $t19 == $t19;

    // assume Eq<num>(Len<u64>($t0), 4) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:9:4+19
    assume {:print "$at(2,272,291)"} true;
    assume $IsEqual'num'(LenVec($Dereference($t0)), 4);

    // $t5 := Vector::empty<u64>() on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:12:16+20
    assume {:print "$at(2,313,333)"} true;
    call $t5 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,313,333)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // trace_local[tmp#$5]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:12:16+20
    assume {:print "$track_local(1,0,5):", $t5} $t5 == $t5;

    // $t21 := borrow_local($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:12:11+25
    $t21 := $Mutation($Local(5), EmptyVec(), $t5);

    // trace_local[p]($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:12:7+1
    $temp_0'vec'u64'' := $Dereference($t21);
    assume {:print "$track_local(1,0,4):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t22 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:13:11+1
    assume {:print "$at(2,345,346)"} true;
    $t22 := 0;
    assume $IsValid'u64'($t22);

    // trace_local[i]($t22) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:13:7+1
    assume {:print "$track_local(1,0,1):", $t22} $t22 == $t22;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:15:4+80
    assume {:print "$at(2,362,442)"} true;
L3:

    // assert Eq<num>(Len<u64>($t21), $t22) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:16:5+19
    assume {:print "$at(2,373,392)"} true;
    assert {:msg "assert_failed(2,373,392): base case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($Dereference($t21)), $t22);

    // assert forall k: Range(0, Len<u64>($t21)): Eq<u64>(Index($t21, k), k) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    assume {:print "$at(2,397,437)"} true;
    assert {:msg "assert_failed(2,397,437): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t21))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t21), k), k)))));

    // havoc[val]($t22) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    havoc $t22;
    assume $IsValid'u64'($t22);

    // havoc[val]($t23) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    havoc $t23;
    assume $IsValid'bool'($t23);

    // havoc[val]($t24) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    havoc $t24;
    assume $IsValid'u64'($t24);

    // havoc[val]($t25) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    havoc $t25;
    assume $IsValid'u64'($t25);

    // havoc[mut]($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    havoc $temp_0'vec'u64'';
    $t21 := $UpdateMutation($t21, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t21));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    assume !$abort_flag;

    // assume Eq<num>(Len<u64>($t21), $t22) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:16:5+19
    assume {:print "$at(2,373,392)"} true;
    assume $IsEqual'num'(LenVec($Dereference($t21)), $t22);

    // assume forall k: Range(0, Len<u64>($t21)): Eq<u64>(Index($t21, k), k) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    assume {:print "$at(2,397,437)"} true;
    assume (var $range_0 := $Range(0, LenVec($Dereference($t21))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t21), k), k)))));

    // $t23 := <($t22, $t19) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:19:7+1
    assume {:print "$at(2,450,451)"} true;
    call $t23 := $Lt($t22, $t19);

    // if ($t23) goto L23 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:14:3+160
    assume {:print "$at(2,350,510)"} true;
    if ($t23) { goto L23; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:14:3+160
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:14:3+160
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:21:22+1
    assume {:print "$at(2,486,487)"} true;
L0:

    // Vector::push_back<u64>($t21, $t22) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:21:4+23
    call $t21 := $1_Vector_push_back'u64'($t21, $t22);
    if ($abort_flag) {
        assume {:print "$at(2,468,491)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // $t24 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:22:12+1
    assume {:print "$at(2,504,505)"} true;
    $t24 := 1;
    assume $IsValid'u64'($t24);

    // $t25 := +($t22, $t24) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:22:10+1
    call $t25 := $AddU64($t22, $t24);
    if ($abort_flag) {
        assume {:print "$at(2,502,503)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // trace_local[i]($t25) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:22:4+1
    assume {:print "$track_local(1,0,1):", $t25} $t25 == $t25;

    // goto L18 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:22:13+1
    goto L18;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:7+4
    assume {:print "$at(2,518,522)"} true;
L2:

    // $t26 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:15+1
    $t26 := 1;
    assume $IsValid'u64'($t26);

    // $t27 := <=($t19, $t26) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:12+2
    call $t27 := $Le($t19, $t26);

    // if ($t27) goto L4 else goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:3+24
    if ($t27) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:3+24
L5:

    // goto L6 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:3+24
    goto L6;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:18+9
L4:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:18+9

    // $t28 := read_ref($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:25+2
    $t28 := $Dereference($t21);

    // write_back[LocalRoot($t5)@]($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:25+2
    $t5 := $Dereference($t21);

    // trace_return[0]($t28) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:18+9
    assume {:print "$track_return(1,0,0):", $t28} $t28 == $t28;

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:18+9
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t29 := move($t28) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:18+9
    $t29 := $t28;

    // goto L21 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:24:18+9
    goto L21;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:26:11+4
    assume {:print "$at(2,551,555)"} true;
L6:

    // trace_local[i#135]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:26:7+1
    assume {:print "$track_local(1,0,2):", $t19} $t19 == $t19;

    // label L17 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:28:4+347
    assume {:print "$at(2,571,918)"} true;
L17:

    // assert And(Le(0, $t19), Le($t19, $t19)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:29:5+27
    assume {:print "$at(2,582,609)"} true;
    assert {:msg "assert_failed(2,582,609): base case of the loop invariant does not hold"}
      ((0 <= $t19) && ($t19 <= $t19));

    // assert forall k: Range($t19, $t19): forall l: Range(0, k): Le(Index($t0, l), Index($t0, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:30:5+59
    assume {:print "$at(2,614,673)"} true;
    assert {:msg "assert_failed(2,614,673): base case of the loop invariant does not hold"}
      (var $range_0 := $Range($t19, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range(0, k); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    ((ReadVec($Dereference($t0), l) <= ReadVec($Dereference($t0), k))))))))));

    // assert forall k: Range(0, $t19): And(Le(0, Index($t21, k)), Lt(Index($t21, k), $t19)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:32:5+53
    assume {:print "$at(2,704,757)"} true;
    assert {:msg "assert_failed(2,704,757): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    (((0 <= ReadVec($Dereference($t21), k)) && (ReadVec($Dereference($t21), k) < $t19))))));

    // assert forall k: Range(0, Sub($t19, 1)): forall l: Range(Add(k, 1), $t19): Neq<u64>(Index($t21, k), Index($t21, l)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:33:5+66
    assume {:print "$at(2,762,828)"} true;
    assert {:msg "assert_failed(2,762,828): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, ($t19 - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range((k + 1), $t19); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    (!$IsEqual'u64'(ReadVec($Dereference($t21), k), ReadVec($Dereference($t21), l))))))))));

    // assert forall k: Range(0, $t19): Eq<u64>(Index($t0, k), Index($t14, Index($t21, k))) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    assume {:print "$at(2,864,913)"} true;
    assert {:msg "assert_failed(2,864,913): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t14, ReadVec($Dereference($t21), k)))))));

    // havoc[val]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t19;
    assume $IsValid'u64'($t19);

    // havoc[val]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t3;
    assume $IsValid'u64'($t3);

    // havoc[val]($t30) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t30;
    assume $IsValid'u64'($t30);

    // havoc[val]($t31) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t31;
    assume $IsValid'u64'($t31);

    // havoc[val]($t32) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t32;
    assume $IsValid'u64'($t32);

    // havoc[val]($t33) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t33;
    assume $IsValid'bool'($t33);

    // havoc[val]($t34) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t34;
    assume $IsValid'u64'($t34);

    // havoc[val]($t35) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t35;
    assume $IsValid'bool'($t35);

    // havoc[val]($t36) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t36;
    assume $IsValid'u64'($t36);

    // havoc[val]($t37) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t37;
    assume $IsValid'u64'($t37);

    // havoc[val]($t38) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t38;
    assume $IsValid'vec'u64''($t38);

    // havoc[val]($t39) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t39;
    assume $IsValid'u64'($t39);

    // havoc[val]($t40) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t40;
    assume $IsValid'vec'u64''($t40);

    // havoc[val]($t41) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t41;
    assume $IsValid'u64'($t41);

    // havoc[val]($t42) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t42;
    assume $IsValid'bool'($t42);

    // havoc[val]($t43) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t43;
    assume $IsValid'u64'($t43);

    // havoc[val]($t44) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t44;
    assume $IsValid'u64'($t44);

    // havoc[val]($t45) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t45;
    assume $IsValid'u64'($t45);

    // havoc[val]($t46) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t46;
    assume $IsValid'u64'($t46);

    // havoc[val]($t47) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t47;
    assume $IsValid'u64'($t47);

    // havoc[val]($t48) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $t48;
    assume $IsValid'u64'($t48);

    // havoc[mut]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $temp_0'vec'u64'';
    $t0 := $UpdateMutation($t0, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t0));

    // havoc[mut]($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    havoc $temp_0'vec'u64'';
    $t21 := $UpdateMutation($t21, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t21));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    assume !$abort_flag;

    // assume And(Le(0, $t19), Le($t19, $t19)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:29:5+27
    assume {:print "$at(2,582,609)"} true;
    assume ((0 <= $t19) && ($t19 <= $t19));

    // assume forall k: Range($t19, $t19): forall l: Range(0, k): Le(Index($t0, l), Index($t0, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:30:5+59
    assume {:print "$at(2,614,673)"} true;
    assume (var $range_0 := $Range($t19, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range(0, k); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    ((ReadVec($Dereference($t0), l) <= ReadVec($Dereference($t0), k))))))))));

    // assume forall k: Range(0, $t19): And(Le(0, Index($t21, k)), Lt(Index($t21, k), $t19)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:32:5+53
    assume {:print "$at(2,704,757)"} true;
    assume (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    (((0 <= ReadVec($Dereference($t21), k)) && (ReadVec($Dereference($t21), k) < $t19))))));

    // assume forall k: Range(0, Sub($t19, 1)): forall l: Range(Add(k, 1), $t19): Neq<u64>(Index($t21, k), Index($t21, l)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:33:5+66
    assume {:print "$at(2,762,828)"} true;
    assume (var $range_0 := $Range(0, ($t19 - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range((k + 1), $t19); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    (!$IsEqual'u64'(ReadVec($Dereference($t21), k), ReadVec($Dereference($t21), l))))))))));

    // assume forall k: Range(0, $t19): Eq<u64>(Index($t0, k), Index($t12, Index($t21, k))) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    assume {:print "$at(2,864,913)"} true;
    assume (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t12, ReadVec($Dereference($t21), k)))))));

    // $t30 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:40:12+1
    assume {:print "$at(2,951,952)"} true;
    $t30 := 1;
    assume $IsValid'u64'($t30);

    // $t31 := -($t19, $t30) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:40:10+1
    call $t31 := $Sub($t19, $t30);
    if ($abort_flag) {
        assume {:print "$at(2,949,950)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // trace_local[i#135]($t31) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:40:4+1
    assume {:print "$track_local(1,0,2):", $t31} $t31 == $t31;

    // $t32 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:41:12+1
    assume {:print "$at(2,965,966)"} true;
    $t32 := 0;
    assume $IsValid'u64'($t32);

    // $t33 := <($t31, $t32) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:41:10+1
    call $t33 := $Lt($t31, $t32);

    // if ($t33) goto L7 else goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:41:4+24
    if ($t33) { goto L7; } else { goto L8; }

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:41:4+24
L8:

    // goto L9 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:41:4+24
    goto L9;

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:42:5+9
    assume {:print "$at(2,972,981)"} true;
L7:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:42:5+9

    // $t49 := read_ref($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:42:12+2
    $t49 := $Dereference($t21);

    // write_back[LocalRoot($t5)@]($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:42:12+2
    $t5 := $Dereference($t21);

    // trace_return[0]($t49) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:42:5+9
    assume {:print "$track_return(1,0,0):", $t49} $t49 == $t49;

    // trace_local[v]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:42:5+9
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t29 := move($t49) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:42:5+9
    $t29 := $t49;

    // goto L21 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:42:5+9
    goto L21;

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:44:12+1
    assume {:print "$at(2,995,996)"} true;
L9:

    // $t34 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:44:12+1
    $t34 := 0;
    assume $IsValid'u64'($t34);

    // trace_local[j]($t34) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:44:8+1
    assume {:print "$track_local(1,0,3):", $t34} $t34 == $t34;

    // label L16 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:46:5+412
    assume {:print "$at(2,1014,1426)"} true;
L16:

    // assert And(Le(0, $t34), Lt($t34, $t31)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:47:6+23
    assume {:print "$at(2,1026,1049)"} true;
    assert {:msg "assert_failed(2,1026,1049): base case of the loop invariant does not hold"}
      ((0 <= $t34) && ($t34 < $t31));

    // assert forall k: Range(Add($t31, 1), $t19): forall l: Range(0, k): Le(Index($t0, l), Index($t0, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:49:6+61
    assume {:print "$at(2,1069,1130)"} true;
    assert {:msg "assert_failed(2,1069,1130): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(($t31 + 1), $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range(0, k); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    ((ReadVec($Dereference($t0), l) <= ReadVec($Dereference($t0), k))))))))));

    // assert forall k: Range(0, $t19): And(Le(0, Index($t21, k)), Lt(Index($t21, k), $t19)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:51:6+53
    assume {:print "$at(2,1163,1216)"} true;
    assert {:msg "assert_failed(2,1163,1216): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    (((0 <= ReadVec($Dereference($t21), k)) && (ReadVec($Dereference($t21), k) < $t19))))));

    // assert forall k: Range(0, Sub($t19, 1)): forall l: Range(Add(k, 1), $t19): Neq<u64>(Index($t21, k), Index($t21, l)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:52:6+66
    assume {:print "$at(2,1222,1288)"} true;
    assert {:msg "assert_failed(2,1222,1288): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, ($t19 - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range((k + 1), $t19); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    (!$IsEqual'u64'(ReadVec($Dereference($t21), k), ReadVec($Dereference($t21), l))))))))));

    // assert forall k: Range(0, $t19): Eq<u64>(Index($t0, k), Index($t15, Index($t21, k))) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:54:6+49
    assume {:print "$at(2,1326,1375)"} true;
    assert {:msg "assert_failed(2,1326,1375): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t15, ReadVec($Dereference($t21), k)))))));

    // assert forall k: Range(0, $t34): Le(Index($t0, k), Index($t0, $t34)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    assume {:print "$at(2,1382,1420)"} true;
    assert {:msg "assert_failed(2,1382,1420): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t34); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), k) <= ReadVec($Dereference($t0), $t34))))));

    // havoc[val]($t34) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t34;
    assume $IsValid'u64'($t34);

    // havoc[val]($t35) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t35;
    assume $IsValid'bool'($t35);

    // havoc[val]($t36) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t36;
    assume $IsValid'u64'($t36);

    // havoc[val]($t37) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t37;
    assume $IsValid'u64'($t37);

    // havoc[val]($t38) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t38;
    assume $IsValid'vec'u64''($t38);

    // havoc[val]($t39) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t39;
    assume $IsValid'u64'($t39);

    // havoc[val]($t40) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t40;
    assume $IsValid'vec'u64''($t40);

    // havoc[val]($t41) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t41;
    assume $IsValid'u64'($t41);

    // havoc[val]($t42) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t42;
    assume $IsValid'bool'($t42);

    // havoc[val]($t43) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t43;
    assume $IsValid'u64'($t43);

    // havoc[val]($t44) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t44;
    assume $IsValid'u64'($t44);

    // havoc[val]($t45) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t45;
    assume $IsValid'u64'($t45);

    // havoc[val]($t46) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t46;
    assume $IsValid'u64'($t46);

    // havoc[val]($t47) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t47;
    assume $IsValid'u64'($t47);

    // havoc[val]($t48) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $t48;
    assume $IsValid'u64'($t48);

    // havoc[mut]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $temp_0'vec'u64'';
    $t0 := $UpdateMutation($t0, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t0));

    // havoc[mut]($t21) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    havoc $temp_0'vec'u64'';
    $t21 := $UpdateMutation($t21, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t21));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    assume !$abort_flag;

    // assume And(Le(0, $t34), Lt($t34, $t31)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:47:6+23
    assume {:print "$at(2,1026,1049)"} true;
    assume ((0 <= $t34) && ($t34 < $t31));

    // assume forall k: Range(Add($t31, 1), $t19): forall l: Range(0, k): Le(Index($t0, l), Index($t0, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:49:6+61
    assume {:print "$at(2,1069,1130)"} true;
    assume (var $range_0 := $Range(($t31 + 1), $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range(0, k); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    ((ReadVec($Dereference($t0), l) <= ReadVec($Dereference($t0), k))))))))));

    // assume forall k: Range(0, $t19): And(Le(0, Index($t21, k)), Lt(Index($t21, k), $t19)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:51:6+53
    assume {:print "$at(2,1163,1216)"} true;
    assume (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    (((0 <= ReadVec($Dereference($t21), k)) && (ReadVec($Dereference($t21), k) < $t19))))));

    // assume forall k: Range(0, Sub($t19, 1)): forall l: Range(Add(k, 1), $t19): Neq<u64>(Index($t21, k), Index($t21, l)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:52:6+66
    assume {:print "$at(2,1222,1288)"} true;
    assume (var $range_0 := $Range(0, ($t19 - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range((k + 1), $t19); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    (!$IsEqual'u64'(ReadVec($Dereference($t21), k), ReadVec($Dereference($t21), l))))))))));

    // assume forall k: Range(0, $t19): Eq<u64>(Index($t0, k), Index($t13, Index($t21, k))) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:54:6+49
    assume {:print "$at(2,1326,1375)"} true;
    assume (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t13, ReadVec($Dereference($t21), k)))))));

    // assume forall k: Range(0, $t34): Le(Index($t0, k), Index($t0, $t34)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    assume {:print "$at(2,1382,1420)"} true;
    assume (var $range_0 := $Range(0, $t34); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), k) <= ReadVec($Dereference($t0), $t34))))));

    // $t35 := <($t34, $t31) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:58:8+1
    assume {:print "$at(2,1435,1436)"} true;
    call $t35 := $Lt($t34, $t31);

    // if ($t35) goto L10 else goto L11 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:45:4+601
    assume {:print "$at(2,1001,1602)"} true;
    if ($t35) { goto L10; } else { goto L11; }

    // label L11 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:45:4+601
L11:

    // goto L12 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:45:4+601
    goto L12;

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:25+1
    assume {:print "$at(2,1475,1476)"} true;
L10:

    // $t36 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:32+1
    $t36 := 1;
    assume $IsValid'u64'($t36);

    // $t37 := +($t34, $t36) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:30+1
    call $t37 := $AddU64($t34, $t36);
    if ($abort_flag) {
        assume {:print "$at(2,1480,1481)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // trace_local[tmp#$7]($t37) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:24+10
    assume {:print "$track_local(1,0,7):", $t37} $t37 == $t37;

    // trace_local[tmp#$6]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:24+10
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,6):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // trace_local[tmp#$9]($t34) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:52+6
    assume {:print "$track_local(1,0,9):", $t34} $t34 == $t34;

    // trace_local[tmp#$8]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:52+6
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,8):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t38 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:24+10
    $t38 := $Dereference($t0);

    // $t39 := Vector::borrow<u64>($t38, $t37) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:10+24
    call $t39 := $1_Vector_borrow'u64'($t38, $t37);
    if ($abort_flag) {
        assume {:print "$at(2,1460,1484)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // $t40 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:52+6
    $t40 := $Dereference($t0);

    // $t41 := Vector::borrow<u64>($t40, $t34) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:38+20
    call $t41 := $1_Vector_borrow'u64'($t40, $t34);
    if ($abort_flag) {
        assume {:print "$at(2,1488,1508)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // $t42 := <($t39, $t41) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:35+1
    call $t42 := $Lt($t39, $t41);

    // if ($t42) goto L13 else goto L14 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:5+126
    if ($t42) { goto L13; } else { goto L14; }

    // label L14 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:5+126
L14:

    // goto L15 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:61:5+126
    goto L15;

    // label L13 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:62:19+1
    assume {:print "$at(2,1530,1531)"} true;
L13:

    // $t43 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:62:26+1
    $t43 := 1;
    assume $IsValid'u64'($t43);

    // $t44 := +($t34, $t43) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:62:24+1
    call $t44 := $AddU64($t34, $t43);
    if ($abort_flag) {
        assume {:print "$at(2,1535,1536)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // Vector::swap<u64>($t0, $t44, $t34) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:62:6+25
    call $t0 := $1_Vector_swap'u64'($t0, $t44, $t34);
    if ($abort_flag) {
        assume {:print "$at(2,1517,1542)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // $t45 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:63:26+1
    assume {:print "$at(2,1569,1570)"} true;
    $t45 := 1;
    assume $IsValid'u64'($t45);

    // $t46 := +($t34, $t45) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:63:24+1
    call $t46 := $AddU64($t34, $t45);
    if ($abort_flag) {
        assume {:print "$at(2,1567,1568)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // Vector::swap<u64>($t21, $t46, $t34) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:63:6+25
    call $t21 := $1_Vector_swap'u64'($t21, $t46, $t34);
    if ($abort_flag) {
        assume {:print "$at(2,1549,1574)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // label L15 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:65:9+1
    assume {:print "$at(2,1591,1592)"} true;
L15:

    // $t47 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:65:13+1
    $t47 := 1;
    assume $IsValid'u64'($t47);

    // $t48 := +($t34, $t47) on_abort goto L22 with $t20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:65:11+1
    call $t48 := $AddU64($t34, $t47);
    if ($abort_flag) {
        assume {:print "$at(2,1593,1594)"} true;
        $t20 := $abort_code;
        assume {:print "$track_abort(1,0):", $t20} $t20 == $t20;
        goto L22;
    }

    // trace_local[j]($t48) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:65:5+1
    assume {:print "$track_local(1,0,3):", $t48} $t48 == $t48;

    // goto L19 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:65:14+1
    goto L19;

    // label L12 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:66:5+1
    assume {:print "$at(2,1602,1603)"} true;
L12:

    // goto L20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:66:5+1
    goto L20;

    // label L18 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:66:5+1
    // Loop invariant checking block for the loop started with header: L3
L18:

    // assert Eq<num>(Len<u64>($t21), $t25) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:16:5+19
    assume {:print "$at(2,373,392)"} true;
    assert {:msg "assert_failed(2,373,392): induction case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($Dereference($t21)), $t25);

    // assert forall k: Range(0, Len<u64>($t21)): Eq<u64>(Index($t21, k), k) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    assume {:print "$at(2,397,437)"} true;
    assert {:msg "assert_failed(2,397,437): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t21))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t21), k), k)))));

    // stop() at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    assume false;
    return;

    // label L19 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:17:5+40
    // Loop invariant checking block for the loop started with header: L16
L19:

    // assert And(Le(0, $t48), Lt($t48, $t31)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:47:6+23
    assume {:print "$at(2,1026,1049)"} true;
    assert {:msg "assert_failed(2,1026,1049): induction case of the loop invariant does not hold"}
      ((0 <= $t48) && ($t48 < $t31));

    // assert forall k: Range(Add($t31, 1), $t19): forall l: Range(0, k): Le(Index($t0, l), Index($t0, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:49:6+61
    assume {:print "$at(2,1069,1130)"} true;
    assert {:msg "assert_failed(2,1069,1130): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(($t31 + 1), $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range(0, k); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    ((ReadVec($Dereference($t0), l) <= ReadVec($Dereference($t0), k))))))))));

    // assert forall k: Range(0, $t19): And(Le(0, Index($t21, k)), Lt(Index($t21, k), $t19)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:51:6+53
    assume {:print "$at(2,1163,1216)"} true;
    assert {:msg "assert_failed(2,1163,1216): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    (((0 <= ReadVec($Dereference($t21), k)) && (ReadVec($Dereference($t21), k) < $t19))))));

    // assert forall k: Range(0, Sub($t19, 1)): forall l: Range(Add(k, 1), $t19): Neq<u64>(Index($t21, k), Index($t21, l)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:52:6+66
    assume {:print "$at(2,1222,1288)"} true;
    assert {:msg "assert_failed(2,1222,1288): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, ($t19 - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range((k + 1), $t19); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    (!$IsEqual'u64'(ReadVec($Dereference($t21), k), ReadVec($Dereference($t21), l))))))))));

    // assert forall k: Range(0, $t19): Eq<u64>(Index($t0, k), Index($t16, Index($t21, k))) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:54:6+49
    assume {:print "$at(2,1326,1375)"} true;
    assert {:msg "assert_failed(2,1326,1375): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t16, ReadVec($Dereference($t21), k)))))));

    // assert forall k: Range(0, $t48): Le(Index($t0, k), Index($t0, $t48)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    assume {:print "$at(2,1382,1420)"} true;
    assert {:msg "assert_failed(2,1382,1420): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t48); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), k) <= ReadVec($Dereference($t0), $t48))))));

    // stop() at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    assume false;
    return;

    // label L20 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:56:6+38
    // Loop invariant checking block for the loop started with header: L17
L20:

    // assert And(Le(0, $t31), Le($t31, $t19)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:29:5+27
    assume {:print "$at(2,582,609)"} true;
    assert {:msg "assert_failed(2,582,609): induction case of the loop invariant does not hold"}
      ((0 <= $t31) && ($t31 <= $t19));

    // assert forall k: Range($t31, $t19): forall l: Range(0, k): Le(Index($t0, l), Index($t0, k)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:30:5+59
    assume {:print "$at(2,614,673)"} true;
    assert {:msg "assert_failed(2,614,673): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range($t31, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range(0, k); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    ((ReadVec($Dereference($t0), l) <= ReadVec($Dereference($t0), k))))))))));

    // assert forall k: Range(0, $t19): And(Le(0, Index($t21, k)), Lt(Index($t21, k), $t19)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:32:5+53
    assume {:print "$at(2,704,757)"} true;
    assert {:msg "assert_failed(2,704,757): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    (((0 <= ReadVec($Dereference($t21), k)) && (ReadVec($Dereference($t21), k) < $t19))))));

    // assert forall k: Range(0, Sub($t19, 1)): forall l: Range(Add(k, 1), $t19): Neq<u64>(Index($t21, k), Index($t21, l)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:33:5+66
    assume {:print "$at(2,762,828)"} true;
    assert {:msg "assert_failed(2,762,828): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, ($t19 - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range((k + 1), $t19); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    (!$IsEqual'u64'(ReadVec($Dereference($t21), k), ReadVec($Dereference($t21), l))))))))));

    // assert forall k: Range(0, $t19): Eq<u64>(Index($t0, k), Index($t17, Index($t21, k))) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    assume {:print "$at(2,864,913)"} true;
    assert {:msg "assert_failed(2,864,913): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t19); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t17, ReadVec($Dereference($t21), k)))))));

    // stop() at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:35:5+49
    assume false;
    return;

    // label L21 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:69:2+1
    assume {:print "$at(2,1615,1616)"} true;
L21:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:71:3+16
    assume {:print "$at(2,1639,1655)"} true;
    assert {:msg "assert_failed(2,1639,1655): function does not abort under this condition"}
      !false;

    // assert Eq<num>(Len<u64>($t0), Len<u64>($t29)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:72:3+30
    assume {:print "$at(2,1658,1688)"} true;
    assert {:msg "assert_failed(2,1658,1688): post-condition does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), LenVec($t29));

    // assert forall i: Range(0, Sub(Len<u64>($t0), 1)): forall j: Range(Add(i, 1), Len<u64>($t0)): Le(Index($t0, i), Index($t0, j)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:73:3+71
    assume {:print "$at(2,1691,1762)"} true;
    assert {:msg "assert_failed(2,1691,1762): post-condition does not hold"}
      (var $range_0 := $Range(0, (LenVec($Dereference($t0)) - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((var $range_2 := $Range((i + 1), LenVec($Dereference($t0))); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var j := $i_3;
    ((ReadVec($Dereference($t0), i) <= ReadVec($Dereference($t0), j))))))))));

    // assert forall k: Range(0, Len<u64>($t0)): And(Le(0, Index($t29, k)), Lt(Index($t29, k), Len<u64>($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:75:3+68
    assume {:print "$at(2,1789,1857)"} true;
    assert {:msg "assert_failed(2,1789,1857): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    (((0 <= ReadVec($t29, k)) && (ReadVec($t29, k) < LenVec($Dereference($t0))))))));

    // assert forall k: Range(0, Sub(Len<u64>($t0), 1)): forall l: Range(Add(k, 1), Len<u64>($t0)): Neq<u64>(Index($t29, k), Index($t29, l)) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:76:3+81
    assume {:print "$at(2,1860,1941)"} true;
    assert {:msg "assert_failed(2,1860,1941): post-condition does not hold"}
      (var $range_0 := $Range(0, (LenVec($Dereference($t0)) - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range((k + 1), LenVec($Dereference($t0))); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    (!$IsEqual'u64'(ReadVec($t29, k), ReadVec($t29, l))))))))));

    // assert forall k: Range(0, Len<u64>($t0)): Eq<u64>(Index($t0, k), Index($t11, Index($t29, k))) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:78:3+57
    assume {:print "$at(2,1973,2030)"} true;
    assert {:msg "assert_failed(2,1973,2030): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t11, ReadVec($t29, k)))))));

    // return $t29 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:78:3+57
    $ret0 := $t29;
    $ret1 := $t0;
    return;

    // label L22 at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:69:2+1
    assume {:print "$at(2,1615,1616)"} true;
L22:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:70:2+415
    assume {:print "$at(2,1618,2033)"} true;
    assert {:msg "assert_failed(2,1618,2033): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t20) at /home/ying/diem/language/move-prover/tests/sources/functional/bubble_sort.move:70:2+415
    $abort_code := $t20;
    $abort_flag := true;
    return;

    // label L23 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L23:

    // destroy($t0) at <internal>:1:1+10

    // goto L0 at <internal>:1:1+10
    goto L0;

}
