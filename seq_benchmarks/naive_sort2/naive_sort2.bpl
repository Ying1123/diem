
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


// fun TestNaiveSort::verify_sort [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:6:2+1028
procedure {:timeLimit 40} $42_TestNaiveSort_verify_sort$verify(_$t0: $Mutation (Vec (int))) returns ($ret0: Vec (int), $ret1: $Mutation (Vec (int)))
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
    var $t16: int;
    var $t17: int;
    var $t18: $Mutation (Vec (int));
    var $t19: int;
    var $t20: bool;
    var $t21: int;
    var $t22: int;
    var $t23: int;
    var $t24: bool;
    var $t25: Vec (int);
    var $t26: Vec (int);
    var $t27: int;
    var $t28: int;
    var $t29: bool;
    var $t30: Vec (int);
    var $t31: int;
    var $t32: Vec (int);
    var $t33: int;
    var $t34: bool;
    var $t35: int;
    var $t36: int;
    var $t37: bool;
    var $t38: int;
    var $t39: int;
    var $t40: int;
    var $t41: int;
    var $t42: int;
    var $t43: int;
    var $t44: Vec (int);
    var $t0: $Mutation (Vec (int));
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t6));
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t18));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:59:86+6
    assume {:print "$at(2,1543,1549)"} true;
    assume $IsValid'vec'u64''($Dereference($t0));

    // $t11 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:6:2+1
    assume {:print "$at(2,168,169)"} true;
    $t11 := $Dereference($t0);

    // $t12 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:6:2+1
    $t12 := $Dereference($t0);

    // $t13 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:6:2+1
    $t13 := $Dereference($t0);

    // $t14 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:6:2+1
    $t14 := $Dereference($t0);

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:6:2+1
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t15 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:7:29+1
    assume {:print "$at(2,255,256)"} true;
    $t15 := $Dereference($t0);

    // $t16 := Vector::length<u64>($t15) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:7:14+17
    call $t16 := $1_Vector_length'u64'($t15);
    if ($abort_flag) {
        assume {:print "$at(2,240,257)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // trace_local[vlen]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:7:7+4
    assume {:print "$track_local(1,0,10):", $t16} $t16 == $t16;

    // assume Eq<num>(Len<u64>($t0), 2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:9:4+19
    assume {:print "$at(2,271,290)"} true;
    assume $IsEqual'num'(LenVec($Dereference($t0)), 2);

    // $t5 := Vector::empty<u64>() on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:11:16+20
    assume {:print "$at(2,311,331)"} true;
    call $t5 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,311,331)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // trace_local[tmp#$5]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:11:16+20
    assume {:print "$track_local(1,0,5):", $t5} $t5 == $t5;

    // $t18 := borrow_local($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:11:11+25
    $t18 := $Mutation($Local(5), EmptyVec(), $t5);

    // trace_local[p]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:11:7+1
    $temp_0'vec'u64'' := $Dereference($t18);
    assume {:print "$track_local(1,0,4):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t19 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:12:11+1
    assume {:print "$at(2,343,344)"} true;
    $t19 := 0;
    assume $IsValid'u64'($t19);

    // trace_local[i]($t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:12:7+1
    assume {:print "$track_local(1,0,1):", $t19} $t19 == $t19;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:14:4+80
    assume {:print "$at(2,360,440)"} true;
L3:

    // assert Eq<num>(Len<u64>($t18), $t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:15:5+19
    assume {:print "$at(2,371,390)"} true;
    assert {:msg "assert_failed(2,371,390): base case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($Dereference($t18)), $t19);

    // assert forall k: Range(0, Len<u64>($t18)): Eq<u64>(Index($t18, k), k) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    assume {:print "$at(2,395,435)"} true;
    assert {:msg "assert_failed(2,395,435): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t18))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t18), k), k)))));

    // havoc[val]($t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    havoc $t19;
    assume $IsValid'u64'($t19);

    // havoc[val]($t20) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    havoc $t20;
    assume $IsValid'bool'($t20);

    // havoc[val]($t21) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    havoc $t21;
    assume $IsValid'u64'($t21);

    // havoc[val]($t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    havoc $t22;
    assume $IsValid'u64'($t22);

    // havoc[mut]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    havoc $temp_0'vec'u64'';
    $t18 := $UpdateMutation($t18, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t18));

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    assume !$abort_flag;

    // assume Eq<num>(Len<u64>($t18), $t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:15:5+19
    assume {:print "$at(2,371,390)"} true;
    assume $IsEqual'num'(LenVec($Dereference($t18)), $t19);

    // assume forall k: Range(0, Len<u64>($t18)): Eq<u64>(Index($t18, k), k) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    assume {:print "$at(2,395,435)"} true;
    assume (var $range_0 := $Range(0, LenVec($Dereference($t18))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t18), k), k)))));

    // $t20 := <($t19, $t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:18:7+1
    assume {:print "$at(2,448,449)"} true;
    call $t20 := $Lt($t19, $t16);

    // if ($t20) goto L22 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:13:3+160
    assume {:print "$at(2,348,508)"} true;
    if ($t20) { goto L22; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:13:3+160
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:13:3+160
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:20:22+1
    assume {:print "$at(2,484,485)"} true;
L0:

    // Vector::push_back<u64>($t18, $t19) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:20:4+23
    call $t18 := $1_Vector_push_back'u64'($t18, $t19);
    if ($abort_flag) {
        assume {:print "$at(2,466,489)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // $t21 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:21:12+1
    assume {:print "$at(2,502,503)"} true;
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // $t22 := +($t19, $t21) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:21:10+1
    call $t22 := $AddU64($t19, $t21);
    if ($abort_flag) {
        assume {:print "$at(2,500,501)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // trace_local[i]($t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:21:4+1
    assume {:print "$track_local(1,0,1):", $t22} $t22 == $t22;

    // goto L18 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:21:13+1
    goto L18;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:7+4
    assume {:print "$at(2,516,520)"} true;
L2:

    // $t23 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:15+1
    $t23 := 1;
    assume $IsValid'u64'($t23);

    // $t24 := <=($t16, $t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:12+2
    call $t24 := $Le($t16, $t23);

    // if ($t24) goto L4 else goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:3+24
    if ($t24) { goto L4; } else { goto L5; }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:3+24
L5:

    // goto L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:3+24
    goto L6;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:18+9
L4:

    // destroy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:18+9

    // $t25 := read_ref($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:25+2
    $t25 := $Dereference($t18);

    // write_back[LocalRoot($t5)@]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:25+2
    $t5 := $Dereference($t18);

    // trace_return[0]($t25) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:18+9
    assume {:print "$track_return(1,0,0):", $t25} $t25 == $t25;

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:18+9
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t26 := move($t25) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:18+9
    $t26 := $t25;

    // goto L20 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:23:18+9
    goto L20;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:25:11+1
    assume {:print "$at(2,549,550)"} true;
L6:

    // $t27 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:25:11+1
    $t27 := 0;
    assume $IsValid'u64'($t27);

    // $t2 := $t27 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:25:7+1
    $t2 := $t27;

    // trace_local[i#135]($t27) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:25:7+1
    assume {:print "$track_local(1,0,2):", $t27} $t27 == $t27;

    // $t28 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:26:11+1
    assume {:print "$at(2,562,563)"} true;
    $t28 := 1;
    assume $IsValid'u64'($t28);

    // trace_local[j]($t28) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:26:7+1
    assume {:print "$track_local(1,0,3):", $t28} $t28 == $t28;

    // label L17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:28:4+374
    assume {:print "$at(2,585,959)"} true;
L17:

    // assert Lt($t27, $t28) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:29:5+13
    assume {:print "$at(2,596,609)"} true;
    assert {:msg "assert_failed(2,596,609): base case of the loop invariant does not hold"}
      ($t27 < $t28);

    // assert Eq<num>(Len<u64>($t0), $t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:30:5+22
    assume {:print "$at(2,614,636)"} true;
    assert {:msg "assert_failed(2,614,636): base case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), $t16);

    // assert forall k: Range(0, Sub($t27, 1)): Le(Index($t0, k), Index($t0, Add(k, 1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:31:5+44
    assume {:print "$at(2,641,685)"} true;
    assert {:msg "assert_failed(2,641,685): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, ($t27 - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), k) <= ReadVec($Dereference($t0), (k + 1)))))));

    // assert forall k: Range(Add($t27, 1), $t28): Le(Index($t0, $t27), Index($t0, k)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:32:5+40
    assume {:print "$at(2,690,730)"} true;
    assert {:msg "assert_failed(2,690,730): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(($t27 + 1), $t28); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), $t27) <= ReadVec($Dereference($t0), k))))));

    // assert forall k: Range(0, Len<u64>($t0)): Eq<u64>(Index($t0, k), Index($t13, Index($t18, k))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:33:11+51
    assume {:print "$at(2,741,792)"} true;
    assert {:msg "assert_failed(2,741,792): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t13, ReadVec($Dereference($t18), k)))))));

    // assert forall k: Range(0, $t16): And(Le(0, Index($t18, k)), Lt(Index($t18, k), $t16)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:35:5+53
    assume {:print "$at(2,823,876)"} true;
    assert {:msg "assert_failed(2,823,876): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t16); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    (((0 <= ReadVec($Dereference($t18), k)) && (ReadVec($Dereference($t18), k) < $t16))))));

    // assert forall k: Range(0, $t16): forall l: Range(0, $t16): Implies(Neq<num>(k, l), Neq<u64>(Index($t18, k), Index($t18, l))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    assume {:print "$at(2,881,954)"} true;
    assert {:msg "assert_failed(2,881,954): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t16); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range(0, $t16); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    ((!$IsEqual'num'(k, l) ==> !$IsEqual'u64'(ReadVec($Dereference($t18), k), ReadVec($Dereference($t18), l)))))))))));

    // havoc[val]($t27) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t27;
    assume $IsValid'u64'($t27);

    // havoc[val]($t28) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t28;
    assume $IsValid'u64'($t28);

    // havoc[val]($t29) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t29;
    assume $IsValid'bool'($t29);

    // havoc[val]($t30) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t30;
    assume $IsValid'vec'u64''($t30);

    // havoc[val]($t31) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t31;
    assume $IsValid'u64'($t31);

    // havoc[val]($t32) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t32;
    assume $IsValid'vec'u64''($t32);

    // havoc[val]($t33) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t33;
    assume $IsValid'u64'($t33);

    // havoc[val]($t34) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t34;
    assume $IsValid'bool'($t34);

    // havoc[val]($t35) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t35;
    assume $IsValid'u64'($t35);

    // havoc[val]($t36) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t36;
    assume $IsValid'u64'($t36);

    // havoc[val]($t37) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t37;
    assume $IsValid'bool'($t37);

    // havoc[val]($t38) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t38;
    assume $IsValid'u64'($t38);

    // havoc[val]($t39) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t39;
    assume $IsValid'u64'($t39);

    // havoc[val]($t40) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t40;
    assume $IsValid'u64'($t40);

    // havoc[val]($t41) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t41;
    assume $IsValid'u64'($t41);

    // havoc[val]($t42) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t42;
    assume $IsValid'u64'($t42);

    // havoc[val]($t43) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $t43;
    assume $IsValid'u64'($t43);

    // havoc[mut]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $temp_0'vec'u64'';
    $t0 := $UpdateMutation($t0, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t0));

    // havoc[mut]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    havoc $temp_0'vec'u64'';
    $t18 := $UpdateMutation($t18, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t18));

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    assume !$abort_flag;

    // assume Lt($t27, $t28) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:29:5+13
    assume {:print "$at(2,596,609)"} true;
    assume ($t27 < $t28);

    // assume Eq<num>(Len<u64>($t0), $t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:30:5+22
    assume {:print "$at(2,614,636)"} true;
    assume $IsEqual'num'(LenVec($Dereference($t0)), $t16);

    // assume forall k: Range(0, Sub($t27, 1)): Le(Index($t0, k), Index($t0, Add(k, 1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:31:5+44
    assume {:print "$at(2,641,685)"} true;
    assume (var $range_0 := $Range(0, ($t27 - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), k) <= ReadVec($Dereference($t0), (k + 1)))))));

    // assume forall k: Range(Add($t27, 1), $t28): Le(Index($t0, $t27), Index($t0, k)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:32:5+40
    assume {:print "$at(2,690,730)"} true;
    assume (var $range_0 := $Range(($t27 + 1), $t28); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), $t27) <= ReadVec($Dereference($t0), k))))));

    // assume forall k: Range(0, Len<u64>($t0)): Eq<u64>(Index($t0, k), Index($t12, Index($t18, k))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:33:11+51
    assume {:print "$at(2,741,792)"} true;
    assume (var $range_0 := $Range(0, LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t12, ReadVec($Dereference($t18), k)))))));

    // assume forall k: Range(0, $t16): And(Le(0, Index($t18, k)), Lt(Index($t18, k), $t16)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:35:5+53
    assume {:print "$at(2,823,876)"} true;
    assume (var $range_0 := $Range(0, $t16); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    (((0 <= ReadVec($Dereference($t18), k)) && (ReadVec($Dereference($t18), k) < $t16))))));

    // assume forall k: Range(0, $t16): forall l: Range(0, $t16): Implies(Neq<num>(k, l), Neq<u64>(Index($t18, k), Index($t18, l))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    assume {:print "$at(2,881,954)"} true;
    assume (var $range_0 := $Range(0, $t16); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range(0, $t16); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    ((!$IsEqual'num'(k, l) ==> !$IsEqual'u64'(ReadVec($Dereference($t18), k), ReadVec($Dereference($t18), l)))))))))));

    // $t29 := <($t28, $t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:38:7+1
    assume {:print "$at(2,967,968)"} true;
    call $t29 := $Lt($t28, $t16);

    // if ($t29) goto L7 else goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:27:9+614
    assume {:print "$at(2,573,1187)"} true;
    if ($t29) { goto L7; } else { goto L8; }

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:27:9+614
L8:

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:27:9+614
    goto L9;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:24+1
    assume {:print "$at(2,1005,1006)"} true;
L7:

    // trace_local[tmp#$7]($t27) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:23+6
    assume {:print "$track_local(1,0,7):", $t27} $t27 == $t27;

    // trace_local[tmp#$6]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:23+6
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,6):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // trace_local[tmp#$9]($t28) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:47+6
    assume {:print "$track_local(1,0,9):", $t28} $t28 == $t28;

    // trace_local[tmp#$8]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:47+6
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,8):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t30 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:23+6
    $t30 := $Dereference($t0);

    // $t31 := Vector::borrow<u64>($t30, $t27) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:9+20
    call $t31 := $1_Vector_borrow'u64'($t30, $t27);
    if ($abort_flag) {
        assume {:print "$at(2,990,1010)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // $t32 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:47+6
    $t32 := $Dereference($t0);

    // $t33 := Vector::borrow<u64>($t32, $t28) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:33+20
    call $t33 := $1_Vector_borrow'u64'($t32, $t28);
    if ($abort_flag) {
        assume {:print "$at(2,1014,1034)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // $t34 := >($t31, $t33) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:30+1
    call $t34 := $Gt($t31, $t33);

    // if ($t34) goto L10 else goto L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:4+111
    if ($t34) { goto L10; } else { goto L11; }

    // label L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:4+111
L11:

    // goto L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:40:4+111
    goto L12;

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:41:18+1
    assume {:print "$at(2,1055,1056)"} true;
L10:

    // Vector::swap<u64>($t18, $t27, $t28) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:41:5+21
    call $t18 := $1_Vector_swap'u64'($t18, $t27, $t28);
    if ($abort_flag) {
        assume {:print "$at(2,1042,1063)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // Vector::swap<u64>($t0, $t27, $t28) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:42:5+21
    assume {:print "$at(2,1069,1090)"} true;
    call $t0 := $1_Vector_swap'u64'($t0, $t27, $t28);
    if ($abort_flag) {
        assume {:print "$at(2,1069,1090)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // label L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:44:8+1
    assume {:print "$at(2,1105,1106)"} true;
L12:

    // $t35 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:44:12+1
    $t35 := 1;
    assume $IsValid'u64'($t35);

    // $t36 := +($t28, $t35) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:44:10+1
    call $t36 := $AddU64($t28, $t35);
    if ($abort_flag) {
        assume {:print "$at(2,1107,1108)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // $t37 := <($t36, $t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:44:14+1
    call $t37 := $Lt($t36, $t16);

    // if ($t37) goto L13 else goto L14 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:44:4+81
    if ($t37) { goto L13; } else { goto L14; }

    // label L14 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:44:4+81
L14:

    // goto L15 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:44:4+81
    goto L15;

    // label L13 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:45:9+1
    assume {:print "$at(2,1129,1130)"} true;
L13:

    // $t38 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:45:13+1
    $t38 := 1;
    assume $IsValid'u64'($t38);

    // $t39 := +($t28, $t38) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:45:11+1
    call $t39 := $AddU64($t28, $t38);
    if ($abort_flag) {
        assume {:print "$at(2,1131,1132)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // $t3 := $t39 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:45:5+1
    $t3 := $t39;

    // trace_local[j]($t39) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:45:5+1
    assume {:print "$track_local(1,0,3):", $t39} $t39 == $t39;

    // goto L16 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:45:14+1
    goto L16;

    // label L15 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:47:9+1
    assume {:print "$at(2,1156,1157)"} true;
L15:

    // $t40 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:47:13+1
    $t40 := 1;
    assume $IsValid'u64'($t40);

    // $t41 := +($t27, $t40) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:47:11+1
    call $t41 := $AddU64($t27, $t40);
    if ($abort_flag) {
        assume {:print "$at(2,1158,1159)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // $t2 := $t41 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:47:5+1
    $t2 := $t41;

    // trace_local[i#135]($t41) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:47:5+1
    assume {:print "$track_local(1,0,2):", $t41} $t41 == $t41;

    // $t42 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:48:13+1
    assume {:print "$at(2,1175,1176)"} true;
    $t42 := 1;
    assume $IsValid'u64'($t42);

    // $t43 := +($t41, $t42) on_abort goto L21 with $t17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:48:11+1
    call $t43 := $AddU64($t41, $t42);
    if ($abort_flag) {
        assume {:print "$at(2,1173,1174)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(1,0):", $t17} $t17 == $t17;
        goto L21;
    }

    // $t3 := $t43 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:48:5+1
    $t3 := $t43;

    // trace_local[j]($t43) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:48:5+1
    assume {:print "$track_local(1,0,3):", $t43} $t43 == $t43;

    // label L16 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:49:5+1
    assume {:print "$at(2,1182,1183)"} true;
L16:

    // goto L19 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:49:5+1
    goto L19;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:51:3+2
    assume {:print "$at(2,1191,1193)"} true;
L9:

    // destroy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:51:3+2

    // $t44 := read_ref($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:51:3+2
    $t44 := $Dereference($t18);

    // write_back[LocalRoot($t5)@]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:51:3+2
    $t5 := $Dereference($t18);

    // trace_return[0]($t44) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:51:3+2
    assume {:print "$track_return(1,0,0):", $t44} $t44 == $t44;

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:51:3+2
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t26 := move($t44) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:51:3+2
    $t26 := $t44;

    // goto L20 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:51:3+2
    goto L20;

    // label L18 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:51:3+2
    // Loop invariant checking block for the loop started with header: L3
L18:

    // assert Eq<num>(Len<u64>($t18), $t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:15:5+19
    assume {:print "$at(2,371,390)"} true;
    assert {:msg "assert_failed(2,371,390): induction case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($Dereference($t18)), $t22);

    // assert forall k: Range(0, Len<u64>($t18)): Eq<u64>(Index($t18, k), k) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    assume {:print "$at(2,395,435)"} true;
    assert {:msg "assert_failed(2,395,435): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t18))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t18), k), k)))));

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    assume false;
    return;

    // label L19 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:16:5+40
    // Loop invariant checking block for the loop started with header: L17
L19:

    // assert Lt($t2, $t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:29:5+13
    assume {:print "$at(2,596,609)"} true;
    assert {:msg "assert_failed(2,596,609): induction case of the loop invariant does not hold"}
      ($t2 < $t3);

    // assert Eq<num>(Len<u64>($t0), $t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:30:5+22
    assume {:print "$at(2,614,636)"} true;
    assert {:msg "assert_failed(2,614,636): induction case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($Dereference($t0)), $t16);

    // assert forall k: Range(0, Sub($t2, 1)): Le(Index($t0, k), Index($t0, Add(k, 1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:31:5+44
    assume {:print "$at(2,641,685)"} true;
    assert {:msg "assert_failed(2,641,685): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, ($t2 - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), k) <= ReadVec($Dereference($t0), (k + 1)))))));

    // assert forall k: Range(Add($t2, 1), $t3): Le(Index($t0, $t2), Index($t0, k)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:32:5+40
    assume {:print "$at(2,690,730)"} true;
    assert {:msg "assert_failed(2,690,730): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(($t2 + 1), $t3); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), $t2) <= ReadVec($Dereference($t0), k))))));

    // assert forall k: Range(0, Len<u64>($t0)): Eq<u64>(Index($t0, k), Index($t14, Index($t18, k))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:33:11+51
    assume {:print "$at(2,741,792)"} true;
    assert {:msg "assert_failed(2,741,792): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t14, ReadVec($Dereference($t18), k)))))));

    // assert forall k: Range(0, $t16): And(Le(0, Index($t18, k)), Lt(Index($t18, k), $t16)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:35:5+53
    assume {:print "$at(2,823,876)"} true;
    assert {:msg "assert_failed(2,823,876): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t16); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    (((0 <= ReadVec($Dereference($t18), k)) && (ReadVec($Dereference($t18), k) < $t16))))));

    // assert forall k: Range(0, $t16): forall l: Range(0, $t16): Implies(Neq<num>(k, l), Neq<u64>(Index($t18, k), Index($t18, l))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    assume {:print "$at(2,881,954)"} true;
    assert {:msg "assert_failed(2,881,954): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t16); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((var $range_2 := $Range(0, $t16); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var l := $i_3;
    ((!$IsEqual'num'(k, l) ==> !$IsEqual'u64'(ReadVec($Dereference($t18), k), ReadVec($Dereference($t18), l)))))))))));

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:36:5+73
    assume false;
    return;

    // label L20 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:52:2+1
    assume {:print "$at(2,1195,1196)"} true;
L20:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:54:3+16
    assume {:print "$at(2,1219,1235)"} true;
    assert {:msg "assert_failed(2,1219,1235): function does not abort under this condition"}
      !false;

    // assert forall i: Range(0, Sub(Len<u64>($t0), 1)): Le(Index($t0, i), Index($t0, Add(i, 1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:55:3+48
    assume {:print "$at(2,1238,1286)"} true;
    assert {:msg "assert_failed(2,1238,1286): post-condition does not hold"}
      (var $range_0 := $Range(0, (LenVec($Dereference($t0)) - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((ReadVec($Dereference($t0), i) <= ReadVec($Dereference($t0), (i + 1)))))));

    // assert forall k: Range(0, Len<u64>($t0)): Eq<u64>(Index($t0, k), Index($t11, Index($t26, k))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:56:3+57
    assume {:print "$at(2,1289,1346)"} true;
    assert {:msg "assert_failed(2,1289,1346): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ($IsEqual'u64'(ReadVec($Dereference($t0), k), ReadVec($t11, ReadVec($t26, k)))))));

    // assert forall i: Range(0, Len<u64>($t0)): And(Le(0, Index($t26, i)), Lt(Index($t26, i), Len<u64>($t26))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:58:3+73
    assume {:print "$at(2,1384,1457)"} true;
    assert {:msg "assert_failed(2,1384,1457): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    (((0 <= ReadVec($t26, i)) && (ReadVec($t26, i) < LenVec($t26)))))));

    // assert forall i: Range(0, Len<u64>($t0)): forall j: Range(0, Len<u64>($t26)): Implies(Neq<num>(i, j), Neq<u64>(Index($t26, i), Index($t26, j))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:59:3+93
    assume {:print "$at(2,1460,1553)"} true;
    assert {:msg "assert_failed(2,1460,1553): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((var $range_2 := $Range(0, LenVec($t26)); (forall $i_3: int :: $InRange($range_2, $i_3) ==> (var j := $i_3;
    ((!$IsEqual'num'(i, j) ==> !$IsEqual'u64'(ReadVec($t26, i), ReadVec($t26, j)))))))))));

    // return $t26 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:59:3+93
    $ret0 := $t26;
    $ret1 := $t0;
    return;

    // label L21 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:52:2+1
    assume {:print "$at(2,1195,1196)"} true;
L21:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:53:2+358
    assume {:print "$at(2,1198,1556)"} true;
    assert {:msg "assert_failed(2,1198,1556): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort2.move:53:2+358
    $abort_code := $t17;
    $abort_flag := true;
    return;

    // label L22 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L22:

    // destroy($t0) at <internal>:1:1+10

    // goto L0 at <internal>:1:1+10
    goto L0;

}
