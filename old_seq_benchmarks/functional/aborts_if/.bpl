
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


// fun TestAbortsIf::abort1 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:24:5+64
procedure {:timeLimit 40} $42_TestAbortsIf_abort1$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: bool;
    var $t4: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:24:5+64
    assume {:print "$at(2,502,566)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:24:5+64
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:24:5+1
    assume {:print "$track_local(0,0,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:24:5+1
    assume {:print "$track_local(0,0,1):", $t1} $t1 == $t1;

    // $t2 := >($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:25:17+1
    assume {:print "$at(2,547,548)"} true;
    call $t2 := $Gt($t0, $t1);

    // $t3 := !($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:25:13+1
    call $t3 := $Not($t2);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:25:9+21
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:25:9+21
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:25:9+21
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:25:29+1
L0:

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:25:29+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // trace_abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:25:23+7
    assume {:print "$at(2,553,560)"} true;
    assume {:print "$track_abort(0,0):", $t4} $t4 == $t4;

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:25:23+7
    goto L4;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:25:9+21
L2:

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:26:5+1
    assume {:print "$at(2,565,566)"} true;
L3:

    // assert Not(Le($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:28:9+17
    assume {:print "$at(2,593,610)"} true;
    assert {:msg "assert_failed(2,593,610): function does not abort under this condition"}
      !($t0 <= $t1);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:28:9+17
    return;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:26:5+1
    assume {:print "$at(2,565,566)"} true;
L4:

    // assert Le($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:27:5+45
    assume {:print "$at(2,571,616)"} true;
    assert {:msg "assert_failed(2,571,616): abort not covered by any of the `aborts_if` clauses"}
      ($t0 <= $t1);

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:27:5+45
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::abort2_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:32:5+46
procedure {:timeLimit 40} $42_TestAbortsIf_abort2_incorrect$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:32:5+46
    assume {:print "$at(2,675,721)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:32:5+46
    assume $IsValid'u64'($t1);

    // trace_local[_x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:32:5+1
    assume {:print "$track_local(0,1,0):", $t0} $t0 == $t0;

    // trace_local[_y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:32:5+1
    assume {:print "$track_local(0,1,1):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:33:5+1
    assume {:print "$at(2,720,721)"} true;
L1:

    // assert Not(Le($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:35:9+19
    assume {:print "$at(2,758,777)"} true;
    assert {:msg "assert_failed(2,758,777): function does not abort under this condition"}
      !($t0 <= $t1);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:35:9+19
    return;

}

// fun TestAbortsIf::abort3 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:39:5+52
procedure {:timeLimit 40} $42_TestAbortsIf_abort3$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:39:5+52
    assume {:print "$at(2,806,858)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:39:5+52
    assume $IsValid'u64'($t1);

    // trace_local[_x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:39:5+1
    assume {:print "$track_local(0,2,0):", $t0} $t0 == $t0;

    // trace_local[_y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:39:5+1
    assume {:print "$track_local(0,2,1):", $t1} $t1 == $t1;

    // $t2 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:40:15+1
    assume {:print "$at(2,851,852)"} true;
    $t2 := 1;
    assume $IsValid'u64'($t2);

    // trace_abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:40:9+7
    assume {:print "$at(2,845,852)"} true;
    assume {:print "$track_abort(0,2):", $t2} $t2 == $t2;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:41:5+1
    assume {:print "$at(2,857,858)"} true;
L2:

    // assert true at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:42:5+43
    assume {:print "$at(2,863,906)"} true;
    assert {:msg "assert_failed(2,863,906): abort not covered by any of the `aborts_if` clauses"}
      true;

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:42:5+43
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::abort4_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:47:5+71
procedure {:timeLimit 40} $42_TestAbortsIf_abort4_incorrect$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:47:5+71
    assume {:print "$at(2,965,1036)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:47:5+71
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:47:5+1
    assume {:print "$track_local(0,3,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:47:5+1
    assume {:print "$track_local(0,3,1):", $t1} $t1 == $t1;

    // $t2 := >($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:48:15+1
    assume {:print "$at(2,1018,1019)"} true;
    call $t2 := $Gt($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:48:9+18
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:48:9+18
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:48:9+18
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:48:26+1
L0:

    // $t3 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:48:26+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:48:20+7
    assume {:print "$at(2,1023,1030)"} true;
    assume {:print "$track_abort(0,3):", $t3} $t3 == $t3;

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:48:20+7
    goto L4;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:48:9+18
L2:

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:49:5+1
    assume {:print "$at(2,1035,1036)"} true;
L3:

    // assert Not(Le($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:52:9+17
    assume {:print "$at(2,1117,1134)"} true;
    assert {:msg "assert_failed(2,1117,1134): function does not abort under this condition"}
      !($t0 <= $t1);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:52:9+17
    return;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:49:5+1
    assume {:print "$at(2,1035,1036)"} true;
L4:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:49:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::abort5_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:56:5+72
procedure {:timeLimit 40} $42_TestAbortsIf_abort5_incorrect$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:56:5+72
    assume {:print "$at(2,1235,1307)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:56:5+72
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:56:5+1
    assume {:print "$track_local(0,4,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:56:5+1
    assume {:print "$track_local(0,4,1):", $t1} $t1 == $t1;

    // $t2 := <=($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:57:15+2
    assume {:print "$at(2,1288,1290)"} true;
    call $t2 := $Le($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:57:9+19
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:57:9+19
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:57:9+19
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:57:27+1
L0:

    // $t3 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:57:27+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:57:21+7
    assume {:print "$at(2,1294,1301)"} true;
    assume {:print "$track_abort(0,4):", $t3} $t3 == $t3;

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:57:21+7
    goto L4;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:57:9+19
L2:

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:58:5+1
    assume {:print "$at(2,1306,1307)"} true;
L3:

    // assert Not(Lt($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:60:9+16
    assume {:print "$at(2,1344,1360)"} true;
    assert {:msg "assert_failed(2,1344,1360): function does not abort under this condition"}
      !($t0 < $t1);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:60:9+16
    return;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:58:5+1
    assume {:print "$at(2,1306,1307)"} true;
L4:

    // assert Lt($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:59:5+54
    assume {:print "$at(2,1312,1366)"} true;
    assert {:msg "assert_failed(2,1312,1366): abort not covered by any of the `aborts_if` clauses"}
      ($t0 < $t1);

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:59:5+54
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::abort6_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:64:5+71
procedure {:timeLimit 40} $42_TestAbortsIf_abort6_incorrect$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:64:5+71
    assume {:print "$at(2,1425,1496)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:64:5+71
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:64:5+1
    assume {:print "$track_local(0,5,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:64:5+1
    assume {:print "$track_local(0,5,1):", $t1} $t1 == $t1;

    // $t2 := <($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:65:15+1
    assume {:print "$at(2,1478,1479)"} true;
    call $t2 := $Lt($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:65:9+18
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:65:9+18
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:65:9+18
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:65:26+1
L0:

    // $t3 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:65:26+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:65:20+7
    assume {:print "$at(2,1483,1490)"} true;
    assume {:print "$track_abort(0,5):", $t3} $t3 == $t3;

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:65:20+7
    goto L4;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:65:9+18
L2:

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:66:5+1
    assume {:print "$at(2,1495,1496)"} true;
L3:

    // assert Not(Le($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:68:9+17
    assume {:print "$at(2,1533,1550)"} true;
    assert {:msg "assert_failed(2,1533,1550): function does not abort under this condition"}
      !($t0 <= $t1);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:68:9+17
    return;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:66:5+1
    assume {:print "$at(2,1495,1496)"} true;
L4:

    // assert Le($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:67:5+55
    assume {:print "$at(2,1501,1556)"} true;
    assert {:msg "assert_failed(2,1501,1556): abort not covered by any of the `aborts_if` clauses"}
      ($t0 <= $t1);

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:67:5+55
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::abort_1 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:162:5+37
procedure {:timeLimit 40} $42_TestAbortsIf_abort_1$verify() returns ()
{
    // declare local variables
    var $t0: int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:163:15+1
    assume {:print "$at(2,4047,4048)"} true;
    $t0 := 1;
    assume $IsValid'u64'($t0);

    // trace_abort($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:163:9+7
    assume {:print "$at(2,4041,4048)"} true;
    assume {:print "$track_abort(0,6):", $t0} $t0 == $t0;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:164:5+1
    assume {:print "$at(2,4053,4054)"} true;
L2:

    // assert true at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:165:5+74
    assume {:print "$at(2,4059,4133)"} true;
    assert {:msg "assert_failed(2,4059,4133): abort not covered by any of the `aborts_if` clauses"}
      true;

    // assert And(true, Eq(1, $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:165:5+74
    assert {:msg "assert_failed(2,4059,4133): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (true && $IsEqual'u128'(1, $t0));

    // abort($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:165:5+74
    $abort_code := $t0;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::abort_at_2_or_3 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:127:5+74
procedure {:timeLimit 40} $42_TestAbortsIf_abort_at_2_or_3$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t0: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:127:5+74
    assume {:print "$at(2,2890,2964)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:127:5+1
    assume {:print "$track_local(0,7,0):", $t0} $t0 == $t0;

    // $t2 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:18+1
    assume {:print "$at(2,2937,2938)"} true;
    $t2 := 2;
    assume $IsValid'u64'($t2);

    // $t3 := ==($t0, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:15+2
    $t3 := $IsEqual'u64'($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
L0:

    // $t4 := true at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
    $t4 := true;
    assume $IsValid'bool'($t4);

    // $t1 := $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
    $t1 := $t4;

    // trace_local[tmp#$1]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
    assume {:print "$track_local(0,7,1):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:23+1
L2:

    // $t5 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:28+1
    $t5 := 3;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:25+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // $t1 := $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
    $t1 := $t6;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
    assume {:print "$track_local(0,7,1):", $t6} $t6 == $t6;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:13+16
L3:

    // if ($t1) goto L4 else goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:9+29
    if ($t1) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:9+29
L5:

    // goto L6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:9+29
    goto L6;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:37+1
L4:

    // $t7 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:37+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // trace_abort($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:31+7
    assume {:print "$at(2,2950,2957)"} true;
    assume {:print "$track_abort(0,7):", $t7} $t7 == $t7;

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:31+7
    goto L8;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:128:38+1
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:129:5+1
    assume {:print "$at(2,2963,2964)"} true;
L7:

    // assert Not(Eq<u64>($t0, 2)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:133:9+17
    assume {:print "$at(2,3127,3144)"} true;
    assert {:msg "assert_failed(2,3127,3144): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 2);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:133:9+17
    return;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:129:5+1
    assume {:print "$at(2,2963,2964)"} true;
L8:

    // abort($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:129:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::abort_at_2_or_3_spec_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:145:5+89
procedure {:timeLimit 40} $42_TestAbortsIf_abort_at_2_or_3_spec_incorrect$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t0: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:145:5+89
    assume {:print "$at(2,3461,3550)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:145:5+1
    assume {:print "$track_local(0,8,0):", $t0} $t0 == $t0;

    // $t2 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:18+1
    assume {:print "$at(2,3523,3524)"} true;
    $t2 := 2;
    assume $IsValid'u64'($t2);

    // $t3 := ==($t0, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:15+2
    $t3 := $IsEqual'u64'($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
L0:

    // $t4 := true at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
    $t4 := true;
    assume $IsValid'bool'($t4);

    // $t1 := $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
    $t1 := $t4;

    // trace_local[tmp#$1]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
    assume {:print "$track_local(0,8,1):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:23+1
L2:

    // $t5 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:28+1
    $t5 := 3;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:25+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // $t1 := $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
    $t1 := $t6;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
    assume {:print "$track_local(0,8,1):", $t6} $t6 == $t6;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:13+16
L3:

    // if ($t1) goto L4 else goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:9+29
    if ($t1) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:9+29
L5:

    // goto L6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:9+29
    goto L6;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:37+1
L4:

    // $t7 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:37+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // trace_abort($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:31+7
    assume {:print "$at(2,3536,3543)"} true;
    assume {:print "$track_abort(0,8):", $t7} $t7 == $t7;

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:31+7
    goto L8;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:146:38+1
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:147:5+1
    assume {:print "$at(2,3549,3550)"} true;
L7:

    // assert Not(Eq<u64>($t0, 4)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:151:9+17
    assume {:print "$at(2,3711,3728)"} true;
    assert {:msg "assert_failed(2,3711,3728): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 4);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:151:9+17
    return;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:147:5+1
    assume {:print "$at(2,3549,3550)"} true;
L8:

    // abort($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:147:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::abort_at_2_or_3_strict_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:154:5+91
procedure {:timeLimit 40} $42_TestAbortsIf_abort_at_2_or_3_strict_incorrect$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t0: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:154:5+91
    assume {:print "$at(2,3740,3831)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:154:5+1
    assume {:print "$track_local(0,9,0):", $t0} $t0 == $t0;

    // $t2 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:18+1
    assume {:print "$at(2,3804,3805)"} true;
    $t2 := 2;
    assume $IsValid'u64'($t2);

    // $t3 := ==($t0, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:15+2
    $t3 := $IsEqual'u64'($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
L0:

    // $t4 := true at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
    $t4 := true;
    assume $IsValid'bool'($t4);

    // $t1 := $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
    $t1 := $t4;

    // trace_local[tmp#$1]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
    assume {:print "$track_local(0,9,1):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:23+1
L2:

    // $t5 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:28+1
    $t5 := 3;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:25+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // $t1 := $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
    $t1 := $t6;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
    assume {:print "$track_local(0,9,1):", $t6} $t6 == $t6;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:13+16
L3:

    // if ($t1) goto L4 else goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:9+29
    if ($t1) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:9+29
L5:

    // goto L6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:9+29
    goto L6;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:37+1
L4:

    // $t7 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:37+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // trace_abort($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:31+7
    assume {:print "$at(2,3817,3824)"} true;
    assume {:print "$track_abort(0,9):", $t7} $t7 == $t7;

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:31+7
    goto L8;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:155:38+1
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:156:5+1
    assume {:print "$at(2,3830,3831)"} true;
L7:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:156:5+1
    assert {:msg "assert_failed(2,3830,3831): function does not abort under this condition"}
      !false;

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:156:5+1
    return;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:156:5+1
L8:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:157:5+175
    assume {:print "$at(2,3836,4011)"} true;
    assert {:msg "assert_failed(2,3836,4011): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:157:5+175
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::abort_at_2_or_3_total_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:136:5+90
procedure {:timeLimit 40} $42_TestAbortsIf_abort_at_2_or_3_total_incorrect$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t0: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:136:5+90
    assume {:print "$at(2,3156,3246)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:136:5+1
    assume {:print "$track_local(0,10,0):", $t0} $t0 == $t0;

    // $t2 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:18+1
    assume {:print "$at(2,3219,3220)"} true;
    $t2 := 2;
    assume $IsValid'u64'($t2);

    // $t3 := ==($t0, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:15+2
    $t3 := $IsEqual'u64'($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
L0:

    // $t4 := true at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
    $t4 := true;
    assume $IsValid'bool'($t4);

    // $t1 := $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
    $t1 := $t4;

    // trace_local[tmp#$1]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
    assume {:print "$track_local(0,10,1):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:23+1
L2:

    // $t5 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:28+1
    $t5 := 3;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:25+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // $t1 := $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
    $t1 := $t6;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
    assume {:print "$track_local(0,10,1):", $t6} $t6 == $t6;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:13+16
L3:

    // if ($t1) goto L4 else goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:9+29
    if ($t1) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:9+29
L5:

    // goto L6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:9+29
    goto L6;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:37+1
L4:

    // $t7 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:37+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // trace_abort($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:31+7
    assume {:print "$at(2,3232,3239)"} true;
    assume {:print "$track_abort(0,10):", $t7} $t7 == $t7;

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:31+7
    goto L8;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:137:38+1
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:138:5+1
    assume {:print "$at(2,3245,3246)"} true;
L7:

    // assert Not(Eq<u64>($t0, 2)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:142:9+17
    assume {:print "$at(2,3432,3449)"} true;
    assert {:msg "assert_failed(2,3432,3449): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 2);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:142:9+17
    return;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:138:5+1
    assume {:print "$at(2,3245,3246)"} true;
L8:

    // assert Eq<u64>($t0, 2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:139:5+204
    assume {:print "$at(2,3251,3455)"} true;
    assert {:msg "assert_failed(2,3251,3455): abort not covered by any of the `aborts_if` clauses"}
      $IsEqual'u64'($t0, 2);

    // abort($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:139:5+204
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::aborts_if_with_code [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:170:5+80
procedure {:timeLimit 40} $42_TestAbortsIf_aborts_if_with_code$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: bool;
    var $t8: int;
    var $t0: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:170:5+80
    assume {:print "$at(2,4139,4219)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:170:5+1
    assume {:print "$track_local(0,11,0):", $t0} $t0 == $t0;

    // $t2 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:18+1
    assume {:print "$at(2,4190,4191)"} true;
    $t2 := 2;
    assume $IsValid'u64'($t2);

    // $t3 := ==($t0, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:15+2
    $t3 := $IsEqual'u64'($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
L0:

    // $t4 := true at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
    $t4 := true;
    assume $IsValid'bool'($t4);

    // $t1 := $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
    $t1 := $t4;

    // trace_local[tmp#$1]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
    assume {:print "$track_local(0,11,1):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:23+1
L2:

    // $t5 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:28+1
    $t5 := 3;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:25+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // $t1 := $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
    $t1 := $t6;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
    assume {:print "$track_local(0,11,1):", $t6} $t6 == $t6;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:13+16
L3:

    // if ($t1) goto L4 else goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:9+31
    if ($t1) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:9+31
L5:

    // goto L6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:9+31
    goto L6;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9
L4:

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9
    // >> opaque call: TestAbortsIf::abort_1()

    // opaque begin: TestAbortsIf::abort_1() at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9

    // assume Identical($t7, true) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9
    assume ($t7 == true);

    // if ($t7) goto L10 else goto L9 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9
    if ($t7) { goto L10; } else { goto L9; }

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9
L10:

    // assume And(true, Eq(1, $t8)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9
    assume (true && $IsEqual'u128'(1, $t8));

    // trace_abort($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9
    assume {:print "$at(2,4203,4212)"} true;
    assume {:print "$track_abort(0,11):", $t8} $t8 == $t8;

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9
    goto L8;

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9
L9:

    // opaque end: TestAbortsIf::abort_1() at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:31+9

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:171:40+1
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:172:5+1
    assume {:print "$at(2,4218,4219)"} true;
L7:

    // assert Not(Eq<u64>($t0, 2)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:176:9+24
    assume {:print "$at(2,4386,4410)"} true;
    assert {:msg "assert_failed(2,4386,4410): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 2);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:176:9+24
    return;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:172:5+1
    assume {:print "$at(2,4218,4219)"} true;
L8:

    // assert Or(And(Eq<u64>($t0, 2), Eq(1, $t8)), Eq(1, $t8)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:173:5+215
    assume {:print "$at(2,4224,4439)"} true;
    assert {:msg "assert_failed(2,4224,4439): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (($IsEqual'u64'($t0, 2) && $IsEqual'u128'(1, $t8)) || $IsEqual'u128'(1, $t8));

    // abort($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:173:5+215
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::multi_abort1 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:77:5+68
procedure {:timeLimit 40} $42_TestAbortsIf_multi_abort1$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:77:5+68
    assume {:print "$at(2,1742,1810)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:77:5+68
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:77:5+1
    assume {:print "$track_local(0,12,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:77:5+1
    assume {:print "$track_local(0,12,1):", $t1} $t1 == $t1;

    // $t2 := <=($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:78:15+2
    assume {:print "$at(2,1791,1793)"} true;
    call $t2 := $Le($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:78:9+19
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:78:9+19
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:78:9+19
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:78:27+1
L0:

    // $t3 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:78:27+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:78:21+7
    assume {:print "$at(2,1797,1804)"} true;
    assume {:print "$track_abort(0,12):", $t3} $t3 == $t3;

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:78:21+7
    goto L4;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:78:9+19
L2:

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:79:5+1
    assume {:print "$at(2,1809,1810)"} true;
L3:

    // assert Not(Lt($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:81:9+16
    assume {:print "$at(2,1843,1859)"} true;
    assert {:msg "assert_failed(2,1843,1859): function does not abort under this condition"}
      !($t0 < $t1);

    // assert Not(Eq<u64>($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:82:9+17
    assume {:print "$at(2,1868,1885)"} true;
    assert {:msg "assert_failed(2,1868,1885): function does not abort under this condition"}
      !$IsEqual'u64'($t0, $t1);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:82:9+17
    return;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:79:5+1
    assume {:print "$at(2,1809,1810)"} true;
L4:

    // assert Or(Lt($t0, $t1), Eq<u64>($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:80:5+76
    assume {:print "$at(2,1815,1891)"} true;
    assert {:msg "assert_failed(2,1815,1891): abort not covered by any of the `aborts_if` clauses"}
      (($t0 < $t1) || $IsEqual'u64'($t0, $t1));

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:80:5+76
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::multi_abort2_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:86:5+77
procedure {:timeLimit 40} $42_TestAbortsIf_multi_abort2_incorrect$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:86:5+77
    assume {:print "$at(2,1950,2027)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:86:5+77
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:86:5+1
    assume {:print "$track_local(0,13,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:86:5+1
    assume {:print "$track_local(0,13,1):", $t1} $t1 == $t1;

    // $t2 := <($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:87:15+1
    assume {:print "$at(2,2009,2010)"} true;
    call $t2 := $Lt($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:87:9+18
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:87:9+18
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:87:9+18
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:87:26+1
L0:

    // $t3 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:87:26+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:87:20+7
    assume {:print "$at(2,2014,2021)"} true;
    assume {:print "$track_abort(0,13):", $t3} $t3 == $t3;

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:87:20+7
    goto L4;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:87:9+18
L2:

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:88:5+1
    assume {:print "$at(2,2026,2027)"} true;
L3:

    // assert Not(Lt($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:90:9+16
    assume {:print "$at(2,2070,2086)"} true;
    assert {:msg "assert_failed(2,2070,2086): function does not abort under this condition"}
      !($t0 < $t1);

    // assert Not(Eq<u64>($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:91:9+17
    assume {:print "$at(2,2095,2112)"} true;
    assert {:msg "assert_failed(2,2095,2112): function does not abort under this condition"}
      !$IsEqual'u64'($t0, $t1);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:91:9+17
    return;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:88:5+1
    assume {:print "$at(2,2026,2027)"} true;
L4:

    // assert Or(Lt($t0, $t1), Eq<u64>($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:89:5+86
    assume {:print "$at(2,2032,2118)"} true;
    assert {:msg "assert_failed(2,2032,2118): abort not covered by any of the `aborts_if` clauses"}
      (($t0 < $t1) || $IsEqual'u64'($t0, $t1));

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:89:5+86
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::multi_abort3_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:95:5+68
procedure {:timeLimit 40} $42_TestAbortsIf_multi_abort3_incorrect$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:95:5+68
    assume {:print "$at(2,2211,2279)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:95:5+68
    assume $IsValid'u64'($t1);

    // trace_local[_x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:95:5+1
    assume {:print "$track_local(0,14,0):", $t0} $t0 == $t0;

    // trace_local[_y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:95:5+1
    assume {:print "$track_local(0,14,1):", $t1} $t1 == $t1;

    // $t2 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:96:15+1
    assume {:print "$at(2,2272,2273)"} true;
    $t2 := 1;
    assume $IsValid'u64'($t2);

    // trace_abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:96:9+7
    assume {:print "$at(2,2266,2273)"} true;
    assume {:print "$track_abort(0,14):", $t2} $t2 == $t2;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:97:5+1
    assume {:print "$at(2,2278,2279)"} true;
L2:

    // assert Or(Lt($t0, $t1), Eq<u64>($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:98:5+90
    assume {:print "$at(2,2284,2374)"} true;
    assert {:msg "assert_failed(2,2284,2374): abort not covered by any of the `aborts_if` clauses"}
      (($t0 < $t1) || $IsEqual'u64'($t0, $t1));

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:98:5+90
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::multi_abort4 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:104:5+58
procedure {:timeLimit 40} $42_TestAbortsIf_multi_abort4$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:104:5+58
    assume {:print "$at(2,2418,2476)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:104:5+58
    assume $IsValid'u64'($t1);

    // trace_local[_x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:104:5+1
    assume {:print "$track_local(0,15,0):", $t0} $t0 == $t0;

    // trace_local[_y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:104:5+1
    assume {:print "$track_local(0,15,1):", $t1} $t1 == $t1;

    // $t2 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:105:15+1
    assume {:print "$at(2,2469,2470)"} true;
    $t2 := 1;
    assume $IsValid'u64'($t2);

    // trace_abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:105:9+7
    assume {:print "$at(2,2463,2470)"} true;
    assume {:print "$track_abort(0,15):", $t2} $t2 == $t2;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:106:5+1
    assume {:print "$at(2,2475,2476)"} true;
L2:

    // assert Or(Or(Lt($t0, $t1), Eq<u64>($t0, $t1)), Gt($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:107:5+107
    assume {:print "$at(2,2481,2588)"} true;
    assert {:msg "assert_failed(2,2481,2588): abort not covered by any of the `aborts_if` clauses"}
      ((($t0 < $t1) || $IsEqual'u64'($t0, $t1)) || ($t0 > $t1));

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:107:5+107
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::multi_abort5_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:113:5+95
procedure {:timeLimit 40} $42_TestAbortsIf_multi_abort5_incorrect$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:113:5+95
    assume {:print "$at(2,2594,2689)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:113:5+1
    assume {:print "$track_local(0,16,0):", $t0} $t0 == $t0;

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:114:18+1
    assume {:print "$at(2,2648,2649)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := ==($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:114:15+2
    $t2 := $IsEqual'u64'($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:114:9+43
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:114:9+43
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:114:9+43
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:115:19+1
    assume {:print "$at(2,2671,2672)"} true;
L0:

    // $t3 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:115:19+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:115:13+7
    assume {:print "$at(2,2665,2672)"} true;
    assume {:print "$track_abort(0,16):", $t3} $t3 == $t3;

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:115:13+7
    goto L4;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:116:10+1
    assume {:print "$at(2,2682,2683)"} true;
L2:

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:117:5+1
    assume {:print "$at(2,2688,2689)"} true;
L3:

    // assert Not(true) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:119:9+15
    assume {:print "$at(2,2732,2747)"} true;
    assert {:msg "assert_failed(2,2732,2747): function does not abort under this condition"}
      !true;

    // assert Not(Gt($t0, 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:120:9+16
    assume {:print "$at(2,2756,2772)"} true;
    assert {:msg "assert_failed(2,2756,2772): function does not abort under this condition"}
      !($t0 > 0);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:120:9+16
    return;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:117:5+1
    assume {:print "$at(2,2688,2689)"} true;
L4:

    // assert Or(true, Gt($t0, 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:118:5+84
    assume {:print "$at(2,2694,2778)"} true;
    assert {:msg "assert_failed(2,2694,2778): abort not covered by any of the `aborts_if` clauses"}
      (true || ($t0 > 0));

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:118:5+84
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestAbortsIf::no_aborts_if [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:12:5+58
procedure {:timeLimit 40} $42_TestAbortsIf_no_aborts_if$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:12:5+58
    assume {:print "$at(2,264,322)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:12:5+58
    assume $IsValid'u64'($t1);

    // trace_local[_x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:12:5+1
    assume {:print "$track_local(0,17,0):", $t0} $t0 == $t0;

    // trace_local[_y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:12:5+1
    assume {:print "$track_local(0,17,1):", $t1} $t1 == $t1;

    // $t2 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:13:15+1
    assume {:print "$at(2,315,316)"} true;
    $t2 := 1;
    assume $IsValid'u64'($t2);

    // trace_abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:13:9+7
    assume {:print "$at(2,309,316)"} true;
    assume {:print "$track_abort(0,17):", $t2} $t2 == $t2;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:14:5+1
    assume {:print "$at(2,321,322)"} true;
L2:

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/aborts_if.move:14:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}
