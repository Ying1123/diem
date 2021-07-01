
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


// fun TestNaiveSort::verify_sort [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:7:2+1609
procedure {:timeLimit 40} $42_TestNaiveSort_verify_sort$verify(_$t0: $Mutation (Vec (int))) returns ($ret0: $Mutation (Vec (int)))
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (Vec (int));
    var $t6: int;
    var $t7: int;
    var $t8: Vec (int);
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: bool;
    var $t18: Vec (int);
    var $t19: int;
    var $t20: Vec (int);
    var $t21: int;
    var $t22: bool;
    var $t23: int;
    var $t24: int;
    var $t25: bool;
    var $t26: int;
    var $t27: int;
    var $t28: int;
    var $t29: int;
    var $t30: int;
    var $t31: int;
    var $t0: $Mutation (Vec (int));
    var $temp_0'u64': int;
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:7:2+1609
    assume {:print "$at(2,262,1871)"} true;
    assume $IsValid'vec'u64''($Dereference($t0));

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:7:2+1
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t8 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:8:29+1
    assume {:print "$at(2,336,337)"} true;
    $t8 := $Dereference($t0);

    // $t9 := Vector::length<u64>($t8) on_abort goto L16 with $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:8:14+17
    call $t9 := $1_Vector_length'u64'($t8);
    if ($abort_flag) {
        assume {:print "$at(2,321,338)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(1,0):", $t10} $t10 == $t10;
        goto L16;
    }

    // trace_local[vlen]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:8:7+4
    assume {:print "$track_local(1,0,7):", $t9} $t9 == $t9;

    // assume Eq<u64>($t9, 45) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:10:21+18
    assume {:print "$at(2,383,401)"} true;
    assume $IsEqual'u64'($t9, 45);

    // $t11 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:12:15+1
    assume {:print "$at(2,435,436)"} true;
    $t11 := 1;
    assume $IsValid'u64'($t11);

    // $t12 := <=($t9, $t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:12:12+2
    call $t12 := $Le($t9, $t11);

    // if ($t12) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:12:3+24
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:12:3+24
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:12:3+24
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:12:18+9
L0:

    // destroy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:12:18+9

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:12:18+9
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // goto L15 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:12:18+9
    goto L15;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:14:11+1
    assume {:print "$at(2,460,461)"} true;
L2:

    // $t13 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:14:11+1
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // $t1 := $t13 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:14:7+1
    $t1 := $t13;

    // trace_local[i]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:14:7+1
    assume {:print "$track_local(1,0,1):", $t13} $t13 == $t13;

    // $t14 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:15:11+1
    assume {:print "$at(2,473,474)"} true;
    $t14 := 1;
    assume $IsValid'u64'($t14);

    // trace_local[j]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:15:7+1
    assume {:print "$track_local(1,0,2):", $t14} $t14 == $t14;

    // label L13 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:18:4+816
    assume {:print "$at(2,507,1323)"} true;
L13:

    // assert Eq<u64>($t9, Len<u64>($t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:19:5+22
    assume {:print "$at(2,518,540)"} true;
    assert {:msg "assert_failed(2,518,540): base case of the loop invariant does not hold"}
      $IsEqual'u64'($t9, LenVec($Dereference($t0)));

    // assert Lt($t13, $t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:20:11+13
    assume {:print "$at(2,551,564)"} true;
    assert {:msg "assert_failed(2,551,564): base case of the loop invariant does not hold"}
      ($t13 < $t14);

    // assert Le($t14, $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:21:5+17
    assume {:print "$at(2,569,586)"} true;
    assert {:msg "assert_failed(2,569,586): base case of the loop invariant does not hold"}
      ($t14 <= $t9);

    // assert forall k: Range(0, $t13): Le(Index($t0, k), Index($t0, Add(k, 1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:22:5+42
    assume {:print "$at(2,591,633)"} true;
    assert {:msg "assert_failed(2,591,633): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t13); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), k) <= ReadVec($Dereference($t0), (k + 1)))))));

    // assert Implies(Gt($t13, 0), forall k: Range($t13, $t9): Le(Index($t0, Sub($t13, 1)), Index($t0, k))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:26:33+55
    assume {:print "$at(2,964,1019)"} true;
    assert {:msg "assert_failed(2,964,1019): base case of the loop invariant does not hold"}
      (($t13 > 0) ==> (var $range_0 := $Range($t13, $t9); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), ($t13 - 1)) <= ReadVec($Dereference($t0), k)))))));

    // assert forall k: Range(Add($t13, 1), $t14): Le(Index($t0, $t13), Index($t0, k)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:28:33+40
    assume {:print "$at(2,1136,1176)"} true;
    assert {:msg "assert_failed(2,1136,1176): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(($t13 + 1), $t14); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), $t13) <= ReadVec($Dereference($t0), k))))));

    // assert Implies(Lt($t13, Sub($t9, 1)), Lt($t14, $t9)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    assume {:print "$at(2,1285,1318)"} true;
    assert {:msg "assert_failed(2,1285,1318): base case of the loop invariant does not hold"}
      (($t13 < ($t9 - 1)) ==> ($t14 < $t9));

    // havoc[val]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t13;
    assume $IsValid'u64'($t13);

    // havoc[val]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t14;
    assume $IsValid'u64'($t14);

    // havoc[val]($t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t15;
    assume $IsValid'u64'($t15);

    // havoc[val]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[val]($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t17;
    assume $IsValid'bool'($t17);

    // havoc[val]($t18) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t18;
    assume $IsValid'vec'u64''($t18);

    // havoc[val]($t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t19;
    assume $IsValid'u64'($t19);

    // havoc[val]($t20) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t20;
    assume $IsValid'vec'u64''($t20);

    // havoc[val]($t21) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t21;
    assume $IsValid'u64'($t21);

    // havoc[val]($t22) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t22;
    assume $IsValid'bool'($t22);

    // havoc[val]($t23) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t23;
    assume $IsValid'u64'($t23);

    // havoc[val]($t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t24;
    assume $IsValid'u64'($t24);

    // havoc[val]($t25) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t25;
    assume $IsValid'bool'($t25);

    // havoc[val]($t26) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t26;
    assume $IsValid'u64'($t26);

    // havoc[val]($t27) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t27;
    assume $IsValid'u64'($t27);

    // havoc[val]($t28) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t28;
    assume $IsValid'u64'($t28);

    // havoc[val]($t29) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t29;
    assume $IsValid'u64'($t29);

    // havoc[val]($t30) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t30;
    assume $IsValid'u64'($t30);

    // havoc[val]($t31) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $t31;
    assume $IsValid'u64'($t31);

    // havoc[mut]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    havoc $temp_0'vec'u64'';
    $t0 := $UpdateMutation($t0, $temp_0'vec'u64'');
    assume $IsValid'vec'u64''($Dereference($t0));

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    assume !$abort_flag;

    // assume Eq<u64>($t9, Len<u64>($t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:19:5+22
    assume {:print "$at(2,518,540)"} true;
    assume $IsEqual'u64'($t9, LenVec($Dereference($t0)));

    // assume Lt($t13, $t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:20:11+13
    assume {:print "$at(2,551,564)"} true;
    assume ($t13 < $t14);

    // assume Le($t14, $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:21:5+17
    assume {:print "$at(2,569,586)"} true;
    assume ($t14 <= $t9);

    // assume forall k: Range(0, $t13): Le(Index($t0, k), Index($t0, Add(k, 1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:22:5+42
    assume {:print "$at(2,591,633)"} true;
    assume (var $range_0 := $Range(0, $t13); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), k) <= ReadVec($Dereference($t0), (k + 1)))))));

    // assume Implies(Gt($t13, 0), forall k: Range($t13, $t9): Le(Index($t0, Sub($t13, 1)), Index($t0, k))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:26:33+55
    assume {:print "$at(2,964,1019)"} true;
    assume (($t13 > 0) ==> (var $range_0 := $Range($t13, $t9); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), ($t13 - 1)) <= ReadVec($Dereference($t0), k)))))));

    // assume forall k: Range(Add($t13, 1), $t14): Le(Index($t0, $t13), Index($t0, k)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:28:33+40
    assume {:print "$at(2,1136,1176)"} true;
    assume (var $range_0 := $Range(($t13 + 1), $t14); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), $t13) <= ReadVec($Dereference($t0), k))))));

    // assume Implies(Lt($t13, Sub($t9, 1)), Lt($t14, $t9)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    assume {:print "$at(2,1285,1318)"} true;
    assume (($t13 < ($t9 - 1)) ==> ($t14 < $t9));

    // $t15 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:32:16+1
    assume {:print "$at(2,1340,1341)"} true;
    $t15 := 1;
    assume $IsValid'u64'($t15);

    // $t16 := -($t9, $t15) on_abort goto L16 with $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:32:14+1
    call $t16 := $Sub($t9, $t15);
    if ($abort_flag) {
        assume {:print "$at(2,1338,1339)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(1,0):", $t10} $t10 == $t10;
        goto L16;
    }

    // $t17 := <($t13, $t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:32:7+1
    call $t17 := $Lt($t13, $t16);

    // if ($t17) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:16:17+1227
    assume {:print "$at(2,492,1719)"} true;
    if ($t17) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:16:17+1227
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:16:17+1227
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:24+1
    assume {:print "$at(2,1376,1377)"} true;
L3:

    // trace_local[tmp#$4]($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:23+6
    assume {:print "$track_local(1,0,4):", $t13} $t13 == $t13;

    // trace_local[tmp#$3]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:23+6
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,3):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // trace_local[tmp#$6]($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:47+6
    assume {:print "$track_local(1,0,6):", $t14} $t14 == $t14;

    // trace_local[tmp#$5]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:47+6
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,5):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // $t18 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:23+6
    $t18 := $Dereference($t0);

    // $t19 := Vector::borrow<u64>($t18, $t13) on_abort goto L16 with $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:9+20
    call $t19 := $1_Vector_borrow'u64'($t18, $t13);
    if ($abort_flag) {
        assume {:print "$at(2,1361,1381)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(1,0):", $t10} $t10 == $t10;
        goto L16;
    }

    // $t20 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:47+6
    $t20 := $Dereference($t0);

    // $t21 := Vector::borrow<u64>($t20, $t14) on_abort goto L16 with $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:33+20
    call $t21 := $1_Vector_borrow'u64'($t20, $t14);
    if ($abort_flag) {
        assume {:print "$at(2,1385,1405)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(1,0):", $t10} $t10 == $t10;
        goto L16;
    }

    // $t22 := >($t19, $t21) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:30+1
    call $t22 := $Gt($t19, $t21);

    // if ($t22) goto L6 else goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:4+84
    if ($t22) { goto L6; } else { goto L7; }

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:4+84
L7:

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:35:4+84
    goto L8;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:36:18+1
    assume {:print "$at(2,1426,1427)"} true;
L6:

    // Vector::swap<u64>($t0, $t13, $t14) on_abort goto L16 with $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:36:5+21
    call $t0 := $1_Vector_swap'u64'($t0, $t13, $t14);
    if ($abort_flag) {
        assume {:print "$at(2,1413,1434)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(1,0):", $t10} $t10 == $t10;
        goto L16;
    }

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:39:8+1
    assume {:print "$at(2,1450,1451)"} true;
L8:

    // $t23 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:39:19+1
    $t23 := 1;
    assume $IsValid'u64'($t23);

    // $t24 := -($t9, $t23) on_abort goto L16 with $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:39:17+1
    call $t24 := $Sub($t9, $t23);
    if ($abort_flag) {
        assume {:print "$at(2,1459,1460)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(1,0):", $t10} $t10 == $t10;
        goto L16;
    }

    // $t25 := <($t14, $t24) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:39:10+1
    call $t25 := $Lt($t14, $t24);

    // if ($t25) goto L9 else goto L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:39:4+82
    if ($t25) { goto L9; } else { goto L10; }

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:39:4+82
L10:

    // goto L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:39:4+82
    goto L11;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:40:9+1
    assume {:print "$at(2,1475,1476)"} true;
L9:

    // $t26 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:40:13+1
    $t26 := 1;
    assume $IsValid'u64'($t26);

    // $t27 := +($t14, $t26) on_abort goto L16 with $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:40:11+1
    call $t27 := $AddU64($t14, $t26);
    if ($abort_flag) {
        assume {:print "$at(2,1477,1478)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(1,0):", $t10} $t10 == $t10;
        goto L16;
    }

    // $t2 := $t27 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:40:5+1
    $t2 := $t27;

    // trace_local[j]($t27) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:40:5+1
    assume {:print "$track_local(1,0,2):", $t27} $t27 == $t27;

    // goto L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:40:14+1
    goto L12;

    // label L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:42:9+1
    assume {:print "$at(2,1502,1503)"} true;
L11:

    // $t28 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:42:13+1
    $t28 := 1;
    assume $IsValid'u64'($t28);

    // $t29 := +($t13, $t28) on_abort goto L16 with $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:42:11+1
    call $t29 := $AddU64($t13, $t28);
    if ($abort_flag) {
        assume {:print "$at(2,1504,1505)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(1,0):", $t10} $t10 == $t10;
        goto L16;
    }

    // $t1 := $t29 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:42:5+1
    $t1 := $t29;

    // trace_local[i]($t29) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:42:5+1
    assume {:print "$track_local(1,0,1):", $t29} $t29 == $t29;

    // $t30 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:43:13+1
    assume {:print "$at(2,1521,1522)"} true;
    $t30 := 1;
    assume $IsValid'u64'($t30);

    // $t31 := +($t29, $t30) on_abort goto L16 with $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:43:11+1
    call $t31 := $AddU64($t29, $t30);
    if ($abort_flag) {
        assume {:print "$at(2,1519,1520)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(1,0):", $t10} $t10 == $t10;
        goto L16;
    }

    // $t2 := $t31 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:43:5+1
    $t2 := $t31;

    // trace_local[j]($t31) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:43:5+1
    assume {:print "$track_local(1,0,2):", $t31} $t31 == $t31;

    // label L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:44:5+1
    assume {:print "$at(2,1528,1529)"} true;
L12:

    // goto L14 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:44:5+1
    goto L14;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:51:3+144
    assume {:print "$at(2,1723,1867)"} true;
L5:

    // assert Eq<num>(Len<u64>($t0), $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:52:4+22
    assume {:print "$at(2,1733,1755)"} true;
    assert {:msg "assert_failed(2,1733,1755): unknown assertion failed"}
      $IsEqual'num'(LenVec($Dereference($t0)), $t9);

    // assert Eq<u64>($t13, Sub($t9, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:53:4+21
    assume {:print "$at(2,1759,1780)"} true;
    assert {:msg "assert_failed(2,1759,1780): unknown assertion failed"}
      $IsEqual'u64'($t13, ($t9 - 1));

    // assert Eq<u64>($t14, $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:54:4+17
    assume {:print "$at(2,1784,1801)"} true;
    assert {:msg "assert_failed(2,1784,1801): unknown assertion failed"}
      $IsEqual'u64'($t14, $t9);

    // assert Le(Index($t0, 0), Index($t0, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:55:4+20
    assume {:print "$at(2,1805,1825)"} true;
    assert {:msg "assert_failed(2,1805,1825): unknown assertion failed"}
      (ReadVec($Dereference($t0), 0) <= ReadVec($Dereference($t0), 1));

    // assert Le(Index($t0, Sub($t9, 2)), Index($t0, Sub($t9, 1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:56:4+34
    assume {:print "$at(2,1829,1863)"} true;
    assert {:msg "assert_failed(2,1829,1863): unknown assertion failed"}
      (ReadVec($Dereference($t0), ($t9 - 2)) <= ReadVec($Dereference($t0), ($t9 - 1)));

    // trace_local[v]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:57:4+1
    assume {:print "$at(2,1867,1868)"} true;
    $temp_0'vec'u64'' := $Dereference($t0);
    assume {:print "$track_local(1,0,0):", $temp_0'vec'u64''} $temp_0'vec'u64'' == $temp_0'vec'u64'';

    // goto L15 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:57:4+1
    goto L15;

    // label L14 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:51:3+144
    // Loop invariant checking block for the loop started with header: L13
    assume {:print "$at(2,1723,1867)"} true;
L14:

    // assert Eq<u64>($t9, Len<u64>($t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:19:5+22
    assume {:print "$at(2,518,540)"} true;
    assert {:msg "assert_failed(2,518,540): induction case of the loop invariant does not hold"}
      $IsEqual'u64'($t9, LenVec($Dereference($t0)));

    // assert Lt($t1, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:20:11+13
    assume {:print "$at(2,551,564)"} true;
    assert {:msg "assert_failed(2,551,564): induction case of the loop invariant does not hold"}
      ($t1 < $t2);

    // assert Le($t2, $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:21:5+17
    assume {:print "$at(2,569,586)"} true;
    assert {:msg "assert_failed(2,569,586): induction case of the loop invariant does not hold"}
      ($t2 <= $t9);

    // assert forall k: Range(0, $t1): Le(Index($t0, k), Index($t0, Add(k, 1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:22:5+42
    assume {:print "$at(2,591,633)"} true;
    assert {:msg "assert_failed(2,591,633): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t1); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), k) <= ReadVec($Dereference($t0), (k + 1)))))));

    // assert Implies(Gt($t1, 0), forall k: Range($t1, $t9): Le(Index($t0, Sub($t1, 1)), Index($t0, k))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:26:33+55
    assume {:print "$at(2,964,1019)"} true;
    assert {:msg "assert_failed(2,964,1019): induction case of the loop invariant does not hold"}
      (($t1 > 0) ==> (var $range_0 := $Range($t1, $t9); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), ($t1 - 1)) <= ReadVec($Dereference($t0), k)))))));

    // assert forall k: Range(Add($t1, 1), $t2): Le(Index($t0, $t1), Index($t0, k)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:28:33+40
    assume {:print "$at(2,1136,1176)"} true;
    assert {:msg "assert_failed(2,1136,1176): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(($t1 + 1), $t2); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var k := $i_1;
    ((ReadVec($Dereference($t0), $t1) <= ReadVec($Dereference($t0), k))))));

    // assert Implies(Lt($t1, Sub($t9, 1)), Lt($t2, $t9)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    assume {:print "$at(2,1285,1318)"} true;
    assert {:msg "assert_failed(2,1285,1318): induction case of the loop invariant does not hold"}
      (($t1 < ($t9 - 1)) ==> ($t2 < $t9));

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:30:33+33
    assume false;
    return;

    // label L15 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:58:2+1
    assume {:print "$at(2,1870,1871)"} true;
L15:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:60:3+16
    assume {:print "$at(2,1894,1910)"} true;
    assert {:msg "assert_failed(2,1894,1910): function does not abort under this condition"}
      !false;

    // assert forall i: Range(0, Sub(Len<u64>($t0), 1)): Le(Index($t0, i), Index($t0, Add(i, 1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:61:3+48
    assume {:print "$at(2,1913,1961)"} true;
    assert {:msg "assert_failed(2,1913,1961): post-condition does not hold"}
      (var $range_0 := $Range(0, (LenVec($Dereference($t0)) - 1)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i := $i_1;
    ((ReadVec($Dereference($t0), i) <= ReadVec($Dereference($t0), (i + 1)))))));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:61:3+48
    $ret0 := $t0;
    return;

    // label L16 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:58:2+1
    assume {:print "$at(2,1870,1871)"} true;
L16:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:59:2+91
    assume {:print "$at(2,1873,1964)"} true;
    assert {:msg "assert_failed(2,1873,1964): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/naive_sort4.move:59:2+91
    $abort_code := $t10;
    $abort_flag := true;
    return;

}
