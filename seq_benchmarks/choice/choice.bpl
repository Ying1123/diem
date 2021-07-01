
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


// spec fun at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:27:10+75
function {:inline} $42_TestSome_spec_fun_choice(x: int): int {
    $choice_0(x)
}

// struct TestSome::R at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:40:5+39
type {:datatype} $42_TestSome_R;
function {:constructor} $42_TestSome_R($x: int): $42_TestSome_R;
function {:inline} $Update'$42_TestSome_R'_x(s: $42_TestSome_R, x: int): $42_TestSome_R {
    $42_TestSome_R(x)
}
function $IsValid'$42_TestSome_R'(s: $42_TestSome_R): bool {
    $IsValid'u64'($x#$42_TestSome_R(s))
}
function {:inline} $IsEqual'$42_TestSome_R'(s1: $42_TestSome_R, s2: $42_TestSome_R): bool {
    s1 == s2
}
var $42_TestSome_R_$memory: $Memory $42_TestSome_R;

// fun TestSome::populate_R [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:44:5+114
procedure {:timeLimit 40} $42_TestSome_populate_R$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: $42_TestSome_R;
    var $t7: int;
    var $t8: int;
    var $t9: $42_TestSome_R;
    var $t0: int;
    var $t1: int;
    var $temp_0'address': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:44:5+114
    assume {:print "$at(2,1128,1242)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:44:5+114
    assume $IsValid'address'($t1);

    // assume forall $rsc: ResourceDomain<TestSome::R>(): WellFormed($rsc) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:44:5+114
    assume (forall $a_0: int :: {$ResourceValue($42_TestSome_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestSome_R_$memory, $a_0);
    ($IsValid'$42_TestSome_R'($rsc))));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:49:9+37
    assume {:print "$at(2,1273,1310)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, Signer::spec_address_of($t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:50:9+37
    assume {:print "$at(2,1319,1356)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t1));

    // assume Identical($t4, choose a: TypeDomain<address>(): And(exists<TestSome::R>(a), Eq<u64>(select TestSome::R.x(global<TestSome::R>(a)), 2))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:53:9+73
    assume {:print "$at(2,1519,1592)"} true;
    assume ($t4 == $choice_1($42_TestSome_R_$memory));

    // assume forall a: TypeDomain<address>(): Not(exists<TestSome::R>(a)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:52:9+42
    assume {:print "$at(2,1468,1510)"} true;
    assume (forall a: int :: $IsValid'address'(a) ==> (!$ResourceExists($42_TestSome_R_$memory, a)));

    // trace_local[s1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:44:5+1
    assume {:print "$at(2,1128,1129)"} true;
    assume {:print "$track_local(2,0,0):", $t0} $t0 == $t0;

    // trace_local[s2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:44:5+1
    assume {:print "$track_local(2,0,1):", $t1} $t1 == $t1;

    // $t5 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:45:29+1
    assume {:print "$at(2,1199,1200)"} true;
    $t5 := 1;
    assume $IsValid'u64'($t5);

    // $t6 := pack TestSome::R($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:45:24+7
    $t6 := $42_TestSome_R($t5);

    // move_to<TestSome::R>($t6, $t0) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:45:9+7
    if ($ResourceExists($42_TestSome_R_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $42_TestSome_R_$memory := $ResourceUpdate($42_TestSome_R_$memory, $t0, $t6);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1179,1186)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(2,0):", $t7} $t7 == $t7;
        goto L2;
    }

    // $t8 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:46:29+1
    assume {:print "$at(2,1232,1233)"} true;
    $t8 := 2;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestSome::R($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:46:24+7
    $t9 := $42_TestSome_R($t8);

    // move_to<TestSome::R>($t9, $t1) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:46:9+7
    if ($ResourceExists($42_TestSome_R_$memory, $t1)) {
        call $ExecFailureAbort();
    } else {
        $42_TestSome_R_$memory := $ResourceUpdate($42_TestSome_R_$memory, $t1, $t9);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1212,1219)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(2,0):", $t7} $t7 == $t7;
        goto L2;
    }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:47:5+1
    assume {:print "$at(2,1241,1242)"} true;
L1:

    // assert Eq<address>($t4, Signer::spec_address_of($t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:54:9+46
    assume {:print "$at(2,1601,1647)"} true;
    assert {:msg "assert_failed(2,1601,1647): post-condition does not hold"}
      $IsEqual'address'($t4, $1_Signer_spec_address_of($t1));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:54:9+46
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:47:5+1
    assume {:print "$at(2,1241,1242)"} true;
L2:

    // abort($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:47:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun TestSome::simple [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:10:5+23
procedure {:timeLimit 40} $42_TestSome_simple$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := 4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:10:25+1
    assume {:print "$at(2,269,270)"} true;
    $t0 := 4;
    assume $IsValid'u64'($t0);

    // trace_return[0]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:10:25+1
    assume {:print "$track_return(2,1,0):", $t0} $t0 == $t0;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:10:27+1
L1:

    // assert Le($t0, choose x: TypeDomain<u64>(): Ge(x, 4)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:12:9+47
    assume {:print "$at(2,299,346)"} true;
    assert {:msg "assert_failed(2,299,346): post-condition does not hold"}
      ($t0 <= $choice_2());

    // return $t0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:12:9+47
    $ret0 := $t0;
    return;

}

// fun TestSome::simple_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:15:5+66
procedure {:timeLimit 40} $42_TestSome_simple_incorrect$verify(_$t0: bool) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t0: bool;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:21:17+6
    assume {:print "$at(2,623,629)"} true;
    assume $IsValid'bool'($t0);

    // trace_local[b]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:15:5+1
    assume {:print "$at(2,358,359)"} true;
    assume {:print "$track_local(2,2,0):", $t0} $t0 == $t0;

    // if ($t0) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:9+15
    assume {:print "$at(2,403,418)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:9+15
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:9+15
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:16+1
L0:

    // $t2 := 4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:16+1
    $t2 := 4;
    assume $IsValid'u64'($t2);

    // $t1 := $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:9+15
    $t1 := $t2;

    // trace_local[tmp#$1]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:9+15
    assume {:print "$track_local(2,2,1):", $t2} $t2 == $t2;

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:9+15
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:23+1
L2:

    // $t3 := 5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:23+1
    $t3 := 5;
    assume $IsValid'u64'($t3);

    // $t1 := $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:9+15
    $t1 := $t3;

    // trace_local[tmp#$1]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:9+15
    assume {:print "$track_local(2,2,1):", $t3} $t3 == $t3;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:9+15
L3:

    // trace_return[0]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:16:9+15
    assume {:print "$track_return(2,2,0):", $t1} $t1 == $t1;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:17:5+1
    assume {:print "$at(2,423,424)"} true;
L4:

    // assume Identical($t4, choose x: TypeDomain<u64>(): And(Ge(x, 4), Le(x, 5))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:21:27+43
    assume {:print "$at(2,633,676)"} true;
    assume ($t4 == $choice_3());

    // trace_exp[at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:21:27+43]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:21:27+43
    assume {:print "$track_exp(382):", $t4} true;

    // assert Eq<u64>($t1, choose x: TypeDomain<u64>(): And(Ge(x, 4), Le(x, 5))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:21:9+62
    assert {:msg "assert_failed(2,615,677): post-condition does not hold"}
      $IsEqual'u64'($t1, $choice_3());

    // return $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:21:9+62
    $ret0 := $t1;
    return;

}

// fun TestSome::test_min [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:60:5+259
procedure {:timeLimit 40} $42_TestSome_test_min$verify() returns ($ret0: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: $Mutation (Vec (int));
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: Vec (int);
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t3));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:61:17+20
    assume {:print "$at(2,1758,1778)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,1758,1778)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,3):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:61:13+1
    assume {:print "$track_local(2,3,0):", $t0} $t0 == $t0;

    // $t3 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:62:21+6
    assume {:print "$at(2,1800,1806)"} true;
    $t3 := $Mutation($Local(0), EmptyVec(), $t0);

    // trace_local[v_ref]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:62:13+5
    $temp_0'vec'u64'' := $Dereference($t3);
    assume {:print "$track_local(2,3,1):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:63:34+1
    assume {:print "$at(2,1841,1842)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // Vector::push_back<u64>($t3, $t4) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:63:9+27
    call $t3 := $1_Vector_push_back'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,1816,1843)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,3):", $t2} $t2 == $t2;
        goto L2;
    }

    // $t5 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:64:34+1
    assume {:print "$at(2,1878,1879)"} true;
    $t5 := 2;
    assume $IsValid'u64'($t5);

    // Vector::push_back<u64>($t3, $t5) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:64:9+27
    call $t3 := $1_Vector_push_back'u64'($t3, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,1853,1880)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,3):", $t2} $t2 == $t2;
        goto L2;
    }

    // $t6 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:65:34+1
    assume {:print "$at(2,1915,1916)"} true;
    $t6 := 3;
    assume $IsValid'u64'($t6);

    // Vector::push_back<u64>($t3, $t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:65:9+27
    call $t3 := $1_Vector_push_back'u64'($t3, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,1890,1917)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,3):", $t2} $t2 == $t2;
        goto L2;
    }

    // $t7 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:66:34+1
    assume {:print "$at(2,1952,1953)"} true;
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // Vector::push_back<u64>($t3, $t7) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:66:9+27
    call $t3 := $1_Vector_push_back'u64'($t3, $t7);
    if ($abort_flag) {
        assume {:print "$at(2,1927,1954)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,3):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:66:9+27
    $t0 := $Dereference($t3);

    // $t8 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:67:9+1
    assume {:print "$at(2,1964,1965)"} true;
    $t8 := $t0;

    // trace_return[0]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:67:9+1
    assume {:print "$track_return(2,3,0):", $t8} $t8 == $t8;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:68:5+1
    assume {:print "$at(2,1970,1971)"} true;
L1:

    // assert Eq<num>(choose min i: Range(0, Len<u64>($t8)): Eq<u64>(Index($t8, i), 2), 1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:70:9+67
    assume {:print "$at(2,2000,2067)"} true;
    assert {:msg "assert_failed(2,2000,2067): post-condition does not hold"}
      $IsEqual'num'($choice_4($t8), 1);

    // return $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:70:9+67
    $ret0 := $t8;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:68:5+1
    assume {:print "$at(2,1970,1971)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:68:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestSome::test_not_using_min_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:73:5+316
procedure {:timeLimit 40} $42_TestSome_test_not_using_min_incorrect$verify() returns ($ret0: Vec (int))
{
    // declare local variables
    var $t0: Vec (int);
    var $t1: $Mutation (Vec (int));
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: Vec (int);
    var $t10: int;
    var $temp_0'num': int;
    var $temp_0'vec'u64'': Vec (int);
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t3));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := Vector::empty<u64>() on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:74:17+20
    assume {:print "$at(2,2145,2165)"} true;
    call $t0 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,2145,2165)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,4):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:74:13+1
    assume {:print "$track_local(2,4,0):", $t0} $t0 == $t0;

    // $t3 := borrow_local($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:75:21+6
    assume {:print "$at(2,2187,2193)"} true;
    $t3 := $Mutation($Local(0), EmptyVec(), $t0);

    // trace_local[v_ref]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:75:13+5
    $temp_0'vec'u64'' := $Dereference($t3);
    assume {:print "$track_local(2,4,1):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:76:34+1
    assume {:print "$at(2,2228,2229)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // Vector::push_back<u64>($t3, $t4) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:76:9+27
    call $t3 := $1_Vector_push_back'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,2203,2230)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,4):", $t2} $t2 == $t2;
        goto L2;
    }

    // $t5 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:77:34+1
    assume {:print "$at(2,2265,2266)"} true;
    $t5 := 2;
    assume $IsValid'u64'($t5);

    // Vector::push_back<u64>($t3, $t5) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:77:9+27
    call $t3 := $1_Vector_push_back'u64'($t3, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,2240,2267)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,4):", $t2} $t2 == $t2;
        goto L2;
    }

    // $t6 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:78:34+1
    assume {:print "$at(2,2302,2303)"} true;
    $t6 := 3;
    assume $IsValid'u64'($t6);

    // Vector::push_back<u64>($t3, $t6) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:78:9+27
    call $t3 := $1_Vector_push_back'u64'($t3, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,2277,2304)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,4):", $t2} $t2 == $t2;
        goto L2;
    }

    // $t7 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:79:34+1
    assume {:print "$at(2,2339,2340)"} true;
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // Vector::push_back<u64>($t3, $t7) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:79:9+27
    call $t3 := $1_Vector_push_back'u64'($t3, $t7);
    if ($abort_flag) {
        assume {:print "$at(2,2314,2341)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,4):", $t2} $t2 == $t2;
        goto L2;
    }

    // $t8 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:80:34+1
    assume {:print "$at(2,2376,2377)"} true;
    $t8 := 2;
    assume $IsValid'u64'($t8);

    // Vector::push_back<u64>($t3, $t8) on_abort goto L2 with $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:80:9+27
    call $t3 := $1_Vector_push_back'u64'($t3, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,2351,2378)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,4):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t0)@]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:80:9+27
    $t0 := $Dereference($t3);

    // $t9 := move($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:81:9+1
    assume {:print "$at(2,2388,2389)"} true;
    $t9 := $t0;

    // trace_return[0]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:81:9+1
    assume {:print "$track_return(2,4,0):", $t9} $t9 == $t9;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:82:5+1
    assume {:print "$at(2,2394,2395)"} true;
L1:

    // assume Identical($t10, choose i: Range(0, Len<u64>($t9)): Eq<u64>(Index($t9, i), 2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:85:17+54
    assume {:print "$at(2,2524,2578)"} true;
    assume ($t10 == $choice_5($t9));

    // trace_exp[at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:85:17+54]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:85:17+54
    assume {:print "$track_exp(409):", $t10} true;

    // assert Eq<num>(choose i: Range(0, Len<u64>($t9)): Eq<u64>(Index($t9, i), 2), 1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:85:9+68
    assert {:msg "assert_failed(2,2516,2584): post-condition does not hold"}
      $IsEqual'num'($choice_5($t9), 1);

    // return $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:85:9+68
    $ret0 := $t9;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:82:5+1
    assume {:print "$at(2,2394,2395)"} true;
L2:

    // abort($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:82:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestSome::with_spec_fun_choice [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:30:5+60
procedure {:timeLimit 40} $42_TestSome_with_spec_fun_choice$verify(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:34:17+6
    assume {:print "$at(2,957,963)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:30:5+1
    assume {:print "$at(2,848,849)"} true;
    assume {:print "$track_local(2,5,0):", $t0} $t0 == $t0;

    // $t1 := 42 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:31:13+2
    assume {:print "$at(2,900,902)"} true;
    $t1 := 42;
    assume $IsValid'u64'($t1);

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:31:11+1
    call $t2 := $AddU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,898,899)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(2,5):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:31:9+6
    assume {:print "$track_return(2,5,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:32:5+1
    assume {:print "$at(2,907,908)"} true;
L1:

    // assume Identical($t4, TestSome::spec_fun_choice(Add($t0, 42))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:34:27+30
    assume {:print "$at(2,967,997)"} true;
    assume ($t4 == $42_TestSome_spec_fun_choice(($t0 + 42)));

    // trace_exp[at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:34:27+30]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:34:27+30
    assume {:print "$track_exp(376):", $t4} true;

    // assert Le($t2, TestSome::spec_fun_choice(Add($t0, 42))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:34:9+49
    assert {:msg "assert_failed(2,949,998): post-condition does not hold"}
      ($t2 <= $42_TestSome_spec_fun_choice(($t0 + 42)));

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:34:9+49
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:32:5+1
    assume {:print "$at(2,907,908)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:32:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// choice expression at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:12:27+28
function {:inline} $choice_2_pred(x: int): bool {
    $IsValid'u64'(x) &&
    (x >= 4)
}
function $choice_2(): int;
axiom
    (exists x: int:: $choice_2_pred(x)) ==>
    (var x := $choice_2(); $choice_2_pred(x)
);

// choice expression at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:21:33+36
function {:inline} $choice_3_pred(x: int): bool {
    $IsValid'u64'(x) &&
    ((x >= 4) && (x <= 5))
}
function $choice_3(): int;
axiom
    (exists x: int:: $choice_3_pred(x)) ==>
    (var x := $choice_3(); $choice_3_pred(x)
);

// choice expression at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:28:9+26
function {:inline} $choice_0_pred(y: int, x: int): bool {
    $IsValid'u64'(y) &&
    (y >= x)
}
function $choice_0(x: int): int;
axiom (forall x: int:: $IsValid'u64'(x) ==>
    (exists y: int:: $choice_0_pred(y, x)) ==>
    (var y := $choice_0(x); $choice_0_pred(y, x)
));

// choice expression at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:53:22+59
function {:inline} $choice_1_pred(a: int, $42_TestSome_R_$memory: $Memory $42_TestSome_R): bool {
    $IsValid'address'(a) &&
    ($ResourceExists($42_TestSome_R_$memory, a) && $IsEqual'u64'($x#$42_TestSome_R($ResourceValue($42_TestSome_R_$memory, a)), 2))
}
function $choice_1($42_TestSome_R_$memory: $Memory $42_TestSome_R): int;
axiom (forall $42_TestSome_R_$memory: $Memory $42_TestSome_R:: (exists a: int:: $choice_1_pred(a, $42_TestSome_R_$memory)) ==>
    (var a := $choice_1($42_TestSome_R_$memory); $choice_1_pred(a, $42_TestSome_R_$memory)
));

// choice expression at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:70:17+53
function {:inline} $choice_4_pred(i: int, $t8: Vec (int)): bool {
    $IsValid'num'(i) && $InRange($Range(0, LenVec($t8)), i) &&
    $IsEqual'u64'(ReadVec($t8, i), 2)
}
function $choice_4($t8: Vec (int)): int;
axiom (forall $t8: Vec (int):: $IsValid'vec'u64''($t8) ==>
    (exists i: int:: $choice_4_pred(i, $t8)) ==>
    (var i := $choice_4($t8); $choice_4_pred(i, $t8)
     && (var $$c := i; (forall i: int:: i < $$c ==> !$choice_4_pred(i, $t8)))));

// choice expression at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/choice.move:85:23+47
function {:inline} $choice_5_pred(i: int, $t9: Vec (int)): bool {
    $IsValid'num'(i) && $InRange($Range(0, LenVec($t9)), i) &&
    $IsEqual'u64'(ReadVec($t9, i), 2)
}
function $choice_5($t9: Vec (int)): int;
axiom (forall $t9: Vec (int):: $IsValid'vec'u64''($t9) ==>
    (exists i: int:: $choice_5_pred(i, $t9)) ==>
    (var i := $choice_5($t9); $choice_5_pred(i, $t9)
));
