
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


// fun VerifyLoopsWithMemoryOps::nested_loop1 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:8:5+977
procedure {:timeLimit 40} $42_VerifyLoopsWithMemoryOps_nested_loop1$verify(_$t0: $Mutation (Vec (int)), _$t1: $Mutation (Vec (int))) returns ($ret0: $Mutation (Vec (int)), $ret1: $Mutation (Vec (int)))
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: $Mutation (int);
    var $t5: $Mutation (int);
    var $t6: Vec (int);
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: bool;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: bool;
    var $t20: int;
    var $t21: int;
    var $t22: int;
    var $t23: $Mutation (int);
    var $t24: $Mutation (int);
    var $t0: $Mutation (Vec (int));
    var $t1: $Mutation (Vec (int));
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t23));
    assume IsEmptyVec(p#$Mutation($t24));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:8:5+977
    assume {:print "$at(2,119,1096)"} true;
    assume $IsValid'vec'u64''($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:8:5+977
    assume $IsValid'vec'u64''($Dereference($t1));

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:8:5+1
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:8:5+1
    $temp_0'vec'u64'' := $Dereference($t1);
    assume {:print "$track_local(1,0,1):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t6 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:9:37+1
    assume {:print "$at(2,223,224)"} true;
    $t6 := $Dereference($t0);

    // $t7 := Vector::length<u64>($t6) on_abort goto L15 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:9:22+17
    call $t7 := $1_Vector_length'u64'($t6);
    if ($abort_flag) {
        assume {:print "$at(2,208,225)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,0):", $t8} $t8 == $t8;
        goto L15;
    }

    // trace_local[length]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:9:13+6
    assume {:print "$track_local(1,0,3):", $t7} $t7 == $t7;

    // assume Gt($t7, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:11:13+18
    assume {:print "$at(2,254,272)"} true;
    assume ($t7 > 0);

    // assume Eq<u64>($t7, Len<u64>($t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:12:13+24
    assume {:print "$at(2,285,309)"} true;
    assume $IsEqual'u64'($t7, LenVec($Dereference($t1)));

    // $t9 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:14:17+1
    assume {:print "$at(2,337,338)"} true;
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // trace_local[i]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:14:13+1
    assume {:print "$track_local(1,0,2):", $t9} $t9 == $t9;

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:16:13+193
    assume {:print "$at(2,369,562)"} true;
L10:

    // assert Eq<u64>($t7, Len<u64>($t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:17:17+24
    assume {:print "$at(2,392,416)"} true;
    assert {:msg "assert_failed(2,392,416): base case of the loop invariant does not hold"}
      $IsEqual'u64'($t7, LenVec($Dereference($t0)));

    // assert Eq<u64>($t7, Len<u64>($t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:18:17+24
    assume {:print "$at(2,433,457)"} true;
    assert {:msg "assert_failed(2,433,457): base case of the loop invariant does not hold"}
      $IsEqual'u64'($t7, LenVec($Dereference($t1)));

    // assert Le($t9, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:19:17+19
    assume {:print "$at(2,474,493)"} true;
    assert {:msg "assert_failed(2,474,493): base case of the loop invariant does not hold"}
      ($t9 <= $t7);

    // assert forall n: Range(0, $t9): Eq<u64>(Index($t0, n), Index($t1, n)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    assume {:print "$at(2,510,548)"} true;
    assert {:msg "assert_failed(2,510,548): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t9); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var n := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), n), ReadVec($Dereference($t1), n))))));

    // havoc[val]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t10;
    assume $IsValid'bool'($t10);

    // havoc[val]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t11;
    assume $IsValid'u64'($t11);

    // havoc[val]($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t12;
    assume $IsValid'u64'($t12);

    // havoc[val]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t13;
    assume $IsValid'bool'($t13);

    // havoc[val]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t14;
    assume $IsValid'u64'($t14);

    // havoc[val]($t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t15;
    assume $IsValid'u64'($t15);

    // havoc[val]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[val]($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t17;
    assume $IsValid'u64'($t17);

    // havoc[val]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t18;
    assume $IsValid'u64'($t18);

    // havoc[val]($t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t19;
    assume $IsValid'bool'($t19);

    // havoc[val]($t20) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t20;
    assume $IsValid'u64'($t20);

    // havoc[val]($t21) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t21;
    assume $IsValid'u64'($t21);

    // havoc[val]($t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t22;
    assume $IsValid'u64'($t22);

    // havoc[mut]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $temp_0'vec'u64'';
    $t0 := $UpdateMutation($t0, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t0));

    // havoc[mut]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $temp_0'vec'u64'';
    $t1 := $UpdateMutation($t1, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t1));

    // havoc[mut_all]($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t23;
    assume $IsValid'u64'($Dereference($t23));

    // havoc[mut_all]($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    havoc $t24;
    assume $IsValid'u64'($Dereference($t24));

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    assume !$abort_flag;

    // assume Eq<u64>($t7, Len<u64>($t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:17:17+24
    assume {:print "$at(2,392,416)"} true;
    assume $IsEqual'u64'($t7, LenVec($Dereference($t0)));

    // assume Eq<u64>($t7, Len<u64>($t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:18:17+24
    assume {:print "$at(2,433,457)"} true;
    assume $IsEqual'u64'($t7, LenVec($Dereference($t1)));

    // assume Le($t9, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:19:17+19
    assume {:print "$at(2,474,493)"} true;
    assume ($t9 <= $t7);

    // assume forall n: Range(0, $t9): Eq<u64>(Index($t0, n), Index($t1, n)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    assume {:print "$at(2,510,548)"} true;
    assume (var $range_0 := $Range(0, $t9); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var n := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), n), ReadVec($Dereference($t1), n))))));

    // $t10 := <($t9, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:22:16+1
    assume {:print "$at(2,579,580)"} true;
    call $t10 := $Lt($t9, $t7);

    // if ($t10) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:15:9+659
    assume {:print "$at(2,348,1007)"} true;
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:15:9+659
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:15:9+659
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:24:40+1
    assume {:print "$at(2,641,642)"} true;
L0:

    // $t23 := Vector::borrow_mut<u64>($t0, $t9) on_abort goto L15 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:24:21+24
    call $t23,$t0 := $1_Vector_borrow_mut'u64'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,622,646)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,0):", $t8} $t8 == $t8;
        goto L15;
    }

    // trace_local[x]($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:24:17+1
    $temp_0'u64' := $Dereference($t23);
    assume {:print "$track_local(1,0,4):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t24 := Vector::borrow_mut<u64>($t1, $t9) on_abort goto L15 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:25:21+24
    assume {:print "$at(2,668,692)"} true;
    call $t24,$t1 := $1_Vector_borrow_mut'u64'($t1, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,668,692)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,0):", $t8} $t8 == $t8;
        goto L15;
    }

    // trace_local[y]($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:25:17+1
    $temp_0'u64' := $Dereference($t24);
    assume {:print "$track_local(1,0,5):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    assume {:print "$at(2,729,875)"} true;
L9:

    // havoc[val]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t11;
    assume $IsValid'u64'($t11);

    // havoc[val]($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t12;
    assume $IsValid'u64'($t12);

    // havoc[val]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t13;
    assume $IsValid'bool'($t13);

    // havoc[val]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t14;
    assume $IsValid'u64'($t14);

    // havoc[val]($t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t15;
    assume $IsValid'u64'($t15);

    // havoc[val]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[val]($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t17;
    assume $IsValid'u64'($t17);

    // havoc[val]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t18;
    assume $IsValid'u64'($t18);

    // havoc[val]($t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t19;
    assume $IsValid'bool'($t19);

    // havoc[val]($t20) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t20;
    assume $IsValid'u64'($t20);

    // havoc[val]($t21) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t21;
    assume $IsValid'u64'($t21);

    // havoc[val]($t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $t22;
    assume $IsValid'u64'($t22);

    // havoc[mut]($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $temp_0'u64';
    $t23 := $UpdateMutation($t23, $temp_0'u64');
    assume $IsValid'u64'($Dereference($t23));

    // havoc[mut]($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    havoc $temp_0'u64';
    $t24 := $UpdateMutation($t24, $temp_0'u64');
    assume $IsValid'u64'($Dereference($t24));

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:27:17+146
    assume !$abort_flag;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:26+1
    assume {:print "$at(2,761,762)"} true;
L3:

    // havoc[val]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:26+1
    havoc $t11;
    assume $IsValid'u64'($t11);

    // havoc[val]($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:26+1
    havoc $t12;
    assume $IsValid'u64'($t12);

    // havoc[val]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:26+1
    havoc $t13;
    assume $IsValid'bool'($t13);

    // havoc[val]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:26+1
    havoc $t14;
    assume $IsValid'u64'($t14);

    // havoc[val]($t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:26+1
    havoc $t15;
    assume $IsValid'u64'($t15);

    // havoc[val]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:26+1
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[mut]($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:26+1
    havoc $temp_0'u64';
    $t24 := $UpdateMutation($t24, $temp_0'u64');
    assume $IsValid'u64'($Dereference($t24));

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:26+1
    assume !$abort_flag;

    // $t11 := read_ref($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:25+2
    $t11 := $Dereference($t23);

    // $t12 := read_ref($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:31+2
    $t12 := $Dereference($t24);

    // $t13 := <=($t11, $t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:28+2
    call $t13 := $Le($t11, $t12);

    // if ($t13) goto L4 else goto L16 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:21+67
    if ($t13) { goto L4; } else { goto L16; }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:28:21+67
L5:

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:31:27+1
    assume {:print "$at(2,851,852)"} true;
L6:

    // $t14 := read_ref($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:31:26+2
    $t14 := $Dereference($t24);

    // $t15 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:31:31+1
    $t15 := 1;
    assume $IsValid'u64'($t15);

    // $t16 := +($t14, $t15) on_abort goto L15 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:31:29+1
    call $t16 := $AddU64($t14, $t15);
    if ($abort_flag) {
        assume {:print "$at(2,853,854)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,0):", $t8} $t8 == $t8;
        goto L15;
    }

    // write_ref($t24, $t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:31:21+11
    $t24 := $UpdateMutation($t24, $t16);

    // goto L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:31:32+1
    goto L11;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:33:22+1
    assume {:print "$at(2,898,899)"} true;
L4:

    // $t17 := read_ref($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:33:21+2
    $t17 := $Dereference($t24);

    // $t18 := read_ref($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:33:27+2
    $t18 := $Dereference($t23);

    // $t19 := <=($t17, $t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:33:24+2
    call $t19 := $Le($t17, $t18);

    // if ($t19) goto L7 else goto L17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:33:17+59
    if ($t19) { goto L7; } else { goto L17; }

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:36:23+1
    assume {:print "$at(2,976,977)"} true;
L8:

    // $t20 := read_ref($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:36:22+2
    $t20 := $Dereference($t23);

    // $t21 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:36:27+1
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // $t22 := +($t20, $t21) on_abort goto L15 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:36:25+1
    call $t22 := $AddU64($t20, $t21);
    if ($abort_flag) {
        assume {:print "$at(2,978,979)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,0):", $t8} $t8 == $t8;
        goto L15;
    }

    // write_ref($t23, $t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:36:17+11
    $t23 := $UpdateMutation($t23, $t22);

    // goto L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:36:28+1
    goto L12;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:34:21+5
    assume {:print "$at(2,929,934)"} true;
L7:

    // write_back[Reference($t1)[]]($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:34:21+5
    $t1 := $UpdateMutation($t1, UpdateVec($Dereference($t1), ReadVec(p#$Mutation($t24), LenVec(p#$Mutation($t1))), $Dereference($t24)));

    // destroy($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:34:21+5

    // write_back[Reference($t0)[]]($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:34:21+5
    $t0 := $UpdateMutation($t0, UpdateVec($Dereference($t0), ReadVec(p#$Mutation($t23), LenVec(p#$Mutation($t0))), $Dereference($t23)));

    // destroy($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:34:21+5

    // goto L13 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:37:14+1
    assume {:print "$at(2,996,997)"} true;
    goto L13;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:39:9+72
    assume {:print "$at(2,1017,1089)"} true;
L2:

    // assert forall m: Range(0, $t7): Eq<u64>(Index($t0, m), Index($t1, m)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:40:13+43
    assume {:print "$at(2,1036,1079)"} true;
    assert {:msg "assert_failed(2,1036,1079): unknown assertion failed"}
      (var $range_0 := $Range(0, $t7); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var m := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), m), ReadVec($Dereference($t1), m))))));

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:41:10+1
    assume {:print "$at(2,1089,1090)"} true;
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:41:10+1
    $temp_0'vec'u64'' := $Dereference($t1);
    assume {:print "$track_local(1,0,1):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // goto L14 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:41:10+1
    goto L14;

    // label L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:39:9+72
    // Loop invariant checking block for the loop started with header: L3
    assume {:print "$at(2,1017,1089)"} true;
L11:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:39:9+72
    assume false;
    return;

    // label L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:39:9+72
    // Loop invariant checking block for the loop started with header: L9
L12:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:39:9+72
    assume false;
    return;

    // label L13 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:39:9+72
    // Loop invariant checking block for the loop started with header: L10
L13:

    // assert Eq<u64>($t7, Len<u64>($t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:17:17+24
    assume {:print "$at(2,392,416)"} true;
    assert {:msg "assert_failed(2,392,416): induction case of the loop invariant does not hold"}
      $IsEqual'u64'($t7, LenVec($Dereference($t0)));

    // assert Eq<u64>($t7, Len<u64>($t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:18:17+24
    assume {:print "$at(2,433,457)"} true;
    assert {:msg "assert_failed(2,433,457): induction case of the loop invariant does not hold"}
      $IsEqual'u64'($t7, LenVec($Dereference($t1)));

    // assert Le($t9, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:19:17+19
    assume {:print "$at(2,474,493)"} true;
    assert {:msg "assert_failed(2,474,493): induction case of the loop invariant does not hold"}
      ($t9 <= $t7);

    // assert forall n: Range(0, $t9): Eq<u64>(Index($t0, n), Index($t1, n)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    assume {:print "$at(2,510,548)"} true;
    assert {:msg "assert_failed(2,510,548): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t9); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var n := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), n), ReadVec($Dereference($t1), n))))));

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:20:17+38
    assume false;
    return;

    // label L14 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:42:5+1
    assume {:print "$at(2,1095,1096)"} true;
L14:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:44:9+16
    assume {:print "$at(2,1129,1145)"} true;
    assert {:msg "assert_failed(2,1129,1145): function does not abort under this condition"}
      !false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:44:9+16
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L15 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:42:5+1
    assume {:print "$at(2,1095,1096)"} true;
L15:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:43:5+50
    assume {:print "$at(2,1101,1151)"} true;
    assert {:msg "assert_failed(2,1101,1151): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:43:5+50
    $abort_code := $t8;
    $abort_flag := true;
    return;

    // label L16 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L16:

    // destroy($t0) at <internal>:1:1+10

    // destroy($t1) at <internal>:1:1+10

    // destroy($t23) at <internal>:1:1+10

    // goto L5 at <internal>:1:1+10
    goto L5;

    // label L17 at <internal>:1:1+10
L17:

    // destroy($t0) at <internal>:1:1+10

    // destroy($t1) at <internal>:1:1+10

    // destroy($t24) at <internal>:1:1+10

    // goto L8 at <internal>:1:1+10
    goto L8;

}

// fun VerifyLoopsWithMemoryOps::nested_loop2 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:56:5+1104
procedure {:timeLimit 40} $42_VerifyLoopsWithMemoryOps_nested_loop2$verify(_$t0: $Mutation (Vec (int)), _$t1: $Mutation (Vec (int))) returns ($ret0: $Mutation (Vec (int)), $ret1: $Mutation (Vec (int)))
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: $Mutation (int);
    var $t5: $Mutation (int);
    var $t6: Vec (int);
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: $Mutation (int);
    var $t11: $Mutation (int);
    var $t12: int;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: bool;
    var $t21: int;
    var $t22: int;
    var $t23: int;
    var $t24: int;
    var $t25: int;
    var $t26: bool;
    var $t27: $Mutation (int);
    var $t28: $Mutation (int);
    var $t0: $Mutation (Vec (int));
    var $t1: $Mutation (Vec (int));
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t11));
    assume IsEmptyVec(p#$Mutation($t27));
    assume IsEmptyVec(p#$Mutation($t28));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:56:5+1104
    assume {:print "$at(2,1680,2784)"} true;
    assume $IsValid'vec'u64''($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:56:5+1104
    assume $IsValid'vec'u64''($Dereference($t1));

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:56:5+1
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,1,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:56:5+1
    $temp_0'vec'u64'' := $Dereference($t1);
    assume {:print "$track_local(1,1,1):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t6 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:57:37+1
    assume {:print "$at(2,1784,1785)"} true;
    $t6 := $Dereference($t0);

    // $t7 := Vector::length<u64>($t6) on_abort goto L14 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:57:22+17
    call $t7 := $1_Vector_length'u64'($t6);
    if ($abort_flag) {
        assume {:print "$at(2,1769,1786)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,1):", $t8} $t8 == $t8;
        goto L14;
    }

    // trace_local[length]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:57:13+6
    assume {:print "$track_local(1,1,3):", $t7} $t7 == $t7;

    // assume Gt($t7, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:59:13+18
    assume {:print "$at(2,1815,1833)"} true;
    assume ($t7 > 0);

    // assume Eq<u64>($t7, Len<u64>($t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:60:13+24
    assume {:print "$at(2,1846,1870)"} true;
    assume $IsEqual'u64'($t7, LenVec($Dereference($t1)));

    // $t9 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:62:17+1
    assume {:print "$at(2,1898,1899)"} true;
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // trace_local[i]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:62:13+1
    assume {:print "$track_local(1,1,2):", $t9} $t9 == $t9;

    // $t10 := Vector::borrow_mut<u64>($t0, $t9) on_abort goto L14 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:63:17+24
    assume {:print "$at(2,1917,1941)"} true;
    call $t10,$t0 := $1_Vector_borrow_mut'u64'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,1917,1941)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,1):", $t8} $t8 == $t8;
        goto L14;
    }

    // trace_local[x]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:63:13+1
    $temp_0'u64' := $Dereference($t10);
    assume {:print "$track_local(1,1,4):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t11 := Vector::borrow_mut<u64>($t1, $t9) on_abort goto L14 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:64:17+24
    assume {:print "$at(2,1959,1983)"} true;
    call $t11,$t1 := $1_Vector_borrow_mut'u64'($t1, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,1959,1983)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,1):", $t8} $t8 == $t8;
        goto L14;
    }

    // trace_local[y]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:64:13+1
    $temp_0'u64' := $Dereference($t11);
    assume {:print "$track_local(1,1,5):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:66:13+192
    assume {:print "$at(2,2012,2204)"} true;
L9:

    // assert Eq<u64>($t7, Len<u64>($t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:67:17+24
    assume {:print "$at(2,2035,2059)"} true;
    assert {:msg "assert_failed(2,2035,2059): base case of the loop invariant does not hold"}
      $IsEqual'u64'($t7, LenVec($Dereference($t0)));

    // assert Eq<u64>($t7, Len<u64>($t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:68:17+24
    assume {:print "$at(2,2076,2100)"} true;
    assert {:msg "assert_failed(2,2076,2100): base case of the loop invariant does not hold"}
      $IsEqual'u64'($t7, LenVec($Dereference($t1)));

    // assert Lt($t9, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:69:17+18
    assume {:print "$at(2,2117,2135)"} true;
    assert {:msg "assert_failed(2,2117,2135): base case of the loop invariant does not hold"}
      ($t9 < $t7);

    // assert forall n: Range(0, $t9): Eq<u64>(Index($t0, n), Index($t1, n)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    assume {:print "$at(2,2152,2190)"} true;
    assert {:msg "assert_failed(2,2152,2190): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t9); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var n := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), n), ReadVec($Dereference($t1), n))))));

    // havoc[val]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t9;
    assume $IsValid'u64'($t9);

    // havoc[val]($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t12;
    assume $IsValid'u64'($t12);

    // havoc[val]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t13;
    assume $IsValid'u64'($t13);

    // havoc[val]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t14;
    assume $IsValid'bool'($t14);

    // havoc[val]($t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t15;
    assume $IsValid'u64'($t15);

    // havoc[val]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[val]($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t17;
    assume $IsValid'u64'($t17);

    // havoc[val]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t18;
    assume $IsValid'u64'($t18);

    // havoc[val]($t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t19;
    assume $IsValid'u64'($t19);

    // havoc[val]($t20) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t20;
    assume $IsValid'bool'($t20);

    // havoc[val]($t21) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t21;
    assume $IsValid'u64'($t21);

    // havoc[val]($t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t22;
    assume $IsValid'u64'($t22);

    // havoc[val]($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t23;
    assume $IsValid'u64'($t23);

    // havoc[val]($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t24;
    assume $IsValid'u64'($t24);

    // havoc[val]($t25) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t25;
    assume $IsValid'u64'($t25);

    // havoc[val]($t26) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t26;
    assume $IsValid'bool'($t26);

    // havoc[mut]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $temp_0'vec'u64'';
    $t0 := $UpdateMutation($t0, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t0));

    // havoc[mut]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $temp_0'vec'u64'';
    $t1 := $UpdateMutation($t1, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t1));

    // havoc[mut_all]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t10;
    assume $IsValid'u64'($Dereference($t10));

    // havoc[mut_all]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t11;
    assume $IsValid'u64'($Dereference($t11));

    // havoc[mut_all]($t27) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t27;
    assume $IsValid'u64'($Dereference($t27));

    // havoc[mut_all]($t28) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    havoc $t28;
    assume $IsValid'u64'($Dereference($t28));

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    assume !$abort_flag;

    // assume Eq<u64>($t7, Len<u64>($t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:67:17+24
    assume {:print "$at(2,2035,2059)"} true;
    assume $IsEqual'u64'($t7, LenVec($Dereference($t0)));

    // assume Eq<u64>($t7, Len<u64>($t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:68:17+24
    assume {:print "$at(2,2076,2100)"} true;
    assume $IsEqual'u64'($t7, LenVec($Dereference($t1)));

    // assume Lt($t9, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:69:17+18
    assume {:print "$at(2,2117,2135)"} true;
    assume ($t9 < $t7);

    // assume forall n: Range(0, $t9): Eq<u64>(Index($t0, n), Index($t1, n)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    assume {:print "$at(2,2152,2190)"} true;
    assume (var $range_0 := $Range(0, $t9); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var n := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), n), ReadVec($Dereference($t1), n))))));

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    assume {:print "$at(2,2241,2387)"} true;
L0:

    // havoc[val]($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t12;
    assume $IsValid'u64'($t12);

    // havoc[val]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t13;
    assume $IsValid'u64'($t13);

    // havoc[val]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t14;
    assume $IsValid'bool'($t14);

    // havoc[val]($t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t15;
    assume $IsValid'u64'($t15);

    // havoc[val]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[val]($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t17;
    assume $IsValid'u64'($t17);

    // havoc[val]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t18;
    assume $IsValid'u64'($t18);

    // havoc[val]($t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t19;
    assume $IsValid'u64'($t19);

    // havoc[val]($t20) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t20;
    assume $IsValid'bool'($t20);

    // havoc[val]($t21) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t21;
    assume $IsValid'u64'($t21);

    // havoc[val]($t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t22;
    assume $IsValid'u64'($t22);

    // havoc[val]($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $t23;
    assume $IsValid'u64'($t23);

    // havoc[mut]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $temp_0'u64';
    $t10 := $UpdateMutation($t10, $temp_0'u64');
    assume $IsValid'u64'($Dereference($t10));

    // havoc[mut]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    havoc $temp_0'u64';
    $t11 := $UpdateMutation($t11, $temp_0'u64');
    assume $IsValid'u64'($Dereference($t11));

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:73:17+146
    assume !$abort_flag;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:26+1
    assume {:print "$at(2,2273,2274)"} true;
L1:

    // havoc[val]($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:26+1
    havoc $t12;
    assume $IsValid'u64'($t12);

    // havoc[val]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:26+1
    havoc $t13;
    assume $IsValid'u64'($t13);

    // havoc[val]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:26+1
    havoc $t14;
    assume $IsValid'bool'($t14);

    // havoc[val]($t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:26+1
    havoc $t15;
    assume $IsValid'u64'($t15);

    // havoc[val]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:26+1
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[val]($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:26+1
    havoc $t17;
    assume $IsValid'u64'($t17);

    // havoc[mut]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:26+1
    havoc $temp_0'u64';
    $t11 := $UpdateMutation($t11, $temp_0'u64');
    assume $IsValid'u64'($Dereference($t11));

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:26+1
    assume !$abort_flag;

    // $t12 := read_ref($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:25+2
    $t12 := $Dereference($t10);

    // $t13 := read_ref($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:31+2
    $t13 := $Dereference($t11);

    // $t14 := <=($t12, $t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:28+2
    call $t14 := $Le($t12, $t13);

    // if ($t14) goto L2 else goto L15 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:21+67
    if ($t14) { goto L2; } else { goto L15; }

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:74:21+67
L3:

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:77:27+1
    assume {:print "$at(2,2363,2364)"} true;
L4:

    // $t15 := read_ref($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:77:26+2
    $t15 := $Dereference($t11);

    // $t16 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:77:31+1
    $t16 := 1;
    assume $IsValid'u64'($t16);

    // $t17 := +($t15, $t16) on_abort goto L14 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:77:29+1
    call $t17 := $AddU64($t15, $t16);
    if ($abort_flag) {
        assume {:print "$at(2,2365,2366)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,1):", $t8} $t8 == $t8;
        goto L14;
    }

    // write_ref($t11, $t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:77:21+11
    $t11 := $UpdateMutation($t11, $t17);

    // goto L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:77:32+1
    goto L11;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:80:22+1
    assume {:print "$at(2,2411,2412)"} true;
L2:

    // $t18 := read_ref($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:80:21+2
    $t18 := $Dereference($t11);

    // $t19 := read_ref($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:80:27+2
    $t19 := $Dereference($t10);

    // $t20 := <=($t18, $t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:80:24+2
    call $t20 := $Le($t18, $t19);

    // if ($t20) goto L5 else goto L16 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:80:17+59
    if ($t20) { goto L5; } else { goto L16; }

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:83:23+1
    assume {:print "$at(2,2489,2490)"} true;
L6:

    // $t21 := read_ref($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:83:22+2
    $t21 := $Dereference($t10);

    // $t22 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:83:27+1
    $t22 := 1;
    assume $IsValid'u64'($t22);

    // $t23 := +($t21, $t22) on_abort goto L14 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:83:25+1
    call $t23 := $AddU64($t21, $t22);
    if ($abort_flag) {
        assume {:print "$at(2,2491,2492)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,1):", $t8} $t8 == $t8;
        goto L14;
    }

    // write_ref($t10, $t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:83:17+11
    $t10 := $UpdateMutation($t10, $t23);

    // goto L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:83:28+1
    goto L10;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:81:21+5
    assume {:print "$at(2,2442,2447)"} true;
L5:

    // write_back[Reference($t1)[]]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:81:21+5
    $t1 := $UpdateMutation($t1, UpdateVec($Dereference($t1), ReadVec(p#$Mutation($t11), LenVec(p#$Mutation($t1))), $Dereference($t11)));

    // destroy($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:81:21+5

    // write_back[Reference($t0)[]]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:81:21+5
    $t0 := $UpdateMutation($t0, UpdateVec($Dereference($t0), ReadVec(p#$Mutation($t10), LenVec(p#$Mutation($t0))), $Dereference($t10)));

    // destroy($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:81:21+5

    // $t24 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:85:21+1
    assume {:print "$at(2,2531,2532)"} true;
    $t24 := 1;
    assume $IsValid'u64'($t24);

    // $t25 := +($t9, $t24) on_abort goto L14 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:85:19+1
    call $t25 := $AddU64($t9, $t24);
    if ($abort_flag) {
        assume {:print "$at(2,2529,2530)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,1):", $t8} $t8 == $t8;
        goto L14;
    }

    // trace_local[i]($t25) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:85:13+1
    assume {:print "$track_local(1,1,2):", $t25} $t25 == $t25;

    // $t26 := ==($t25, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:86:19+2
    assume {:print "$at(2,2552,2554)"} true;
    $t26 := $IsEqual'u64'($t25, $t7);

    // if ($t26) goto L7 else goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:86:13+54
    if ($t26) { goto L7; } else { goto L8; }

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:89:36+1
    assume {:print "$at(2,2637,2638)"} true;
L8:

    // $t27 := Vector::borrow_mut<u64>($t0, $t25) on_abort goto L14 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:89:17+24
    call $t27,$t0 := $1_Vector_borrow_mut'u64'($t0, $t25);
    if ($abort_flag) {
        assume {:print "$at(2,2618,2642)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,1):", $t8} $t8 == $t8;
        goto L14;
    }

    // trace_local[x]($t27) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:89:13+1
    $temp_0'u64' := $Dereference($t27);
    assume {:print "$track_local(1,1,4):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t28 := Vector::borrow_mut<u64>($t1, $t25) on_abort goto L14 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:90:17+24
    assume {:print "$at(2,2660,2684)"} true;
    call $t28,$t1 := $1_Vector_borrow_mut'u64'($t1, $t25);
    if ($abort_flag) {
        assume {:print "$at(2,2660,2684)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,1):", $t8} $t8 == $t8;
        goto L14;
    }

    // trace_local[y]($t28) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:90:13+1
    $temp_0'u64' := $Dereference($t28);
    assume {:print "$track_local(1,1,5):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // goto L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:90:41+1
    goto L12;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:92:9+72
    assume {:print "$at(2,2705,2777)"} true;
L7:

    // assert forall m: Range(0, $t7): Eq<u64>(Index($t0, m), Index($t1, m)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:93:13+43
    assume {:print "$at(2,2724,2767)"} true;
    assert {:msg "assert_failed(2,2724,2767): unknown assertion failed"}
      (var $range_0 := $Range(0, $t7); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var m := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), m), ReadVec($Dereference($t1), m))))));

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:94:10+1
    assume {:print "$at(2,2777,2778)"} true;
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,1,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:94:10+1
    $temp_0'vec'u64'' := $Dereference($t1);
    assume {:print "$track_local(1,1,1):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // goto L13 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:94:10+1
    goto L13;

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:92:9+72
    // Loop invariant checking block for the loop started with header: L0
    assume {:print "$at(2,2705,2777)"} true;
L10:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:92:9+72
    assume false;
    return;

    // label L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:92:9+72
    // Loop invariant checking block for the loop started with header: L1
L11:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:92:9+72
    assume false;
    return;

    // label L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:92:9+72
    // Loop invariant checking block for the loop started with header: L9
L12:

    // assert Eq<u64>($t7, Len<u64>($t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:67:17+24
    assume {:print "$at(2,2035,2059)"} true;
    assert {:msg "assert_failed(2,2035,2059): induction case of the loop invariant does not hold"}
      $IsEqual'u64'($t7, LenVec($Dereference($t0)));

    // assert Eq<u64>($t7, Len<u64>($t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:68:17+24
    assume {:print "$at(2,2076,2100)"} true;
    assert {:msg "assert_failed(2,2076,2100): induction case of the loop invariant does not hold"}
      $IsEqual'u64'($t7, LenVec($Dereference($t1)));

    // assert Lt($t25, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:69:17+18
    assume {:print "$at(2,2117,2135)"} true;
    assert {:msg "assert_failed(2,2117,2135): induction case of the loop invariant does not hold"}
      ($t25 < $t7);

    // assert forall n: Range(0, $t25): Eq<u64>(Index($t0, n), Index($t1, n)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    assume {:print "$at(2,2152,2190)"} true;
    assert {:msg "assert_failed(2,2152,2190): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t25); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var n := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), n), ReadVec($Dereference($t1), n))))));

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:70:17+38
    assume false;
    return;

    // label L13 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:95:5+1
    assume {:print "$at(2,2783,2784)"} true;
L13:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:97:9+16
    assume {:print "$at(2,2817,2833)"} true;
    assert {:msg "assert_failed(2,2817,2833): function does not abort under this condition"}
      !false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:97:9+16
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L14 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:95:5+1
    assume {:print "$at(2,2783,2784)"} true;
L14:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:96:5+50
    assume {:print "$at(2,2789,2839)"} true;
    assert {:msg "assert_failed(2,2789,2839): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops_with_memory_ops.move:96:5+50
    $abort_code := $t8;
    $abort_flag := true;
    return;

    // label L15 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L15:

    // destroy($t0) at <internal>:1:1+10

    // destroy($t1) at <internal>:1:1+10

    // destroy($t10) at <internal>:1:1+10

    // goto L3 at <internal>:1:1+10
    goto L3;

    // label L16 at <internal>:1:1+10
L16:

    // destroy($t0) at <internal>:1:1+10

    // destroy($t1) at <internal>:1:1+10

    // destroy($t11) at <internal>:1:1+10

    // goto L6 at <internal>:1:1+10
    goto L6;

}
