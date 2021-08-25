
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
// Native Event implementation for element type `$42_TestEmits_DummyEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$42_TestEmits_DummyEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$42_TestEmits_DummyEvent''(a: $1_Event_EventHandle'$42_TestEmits_DummyEvent', b: $1_Event_EventHandle'$42_TestEmits_DummyEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''(h: $1_Event_EventHandle'$42_TestEmits_DummyEvent'): bool {
    true
}

// Embed event `$42_TestEmits_DummyEvent` into universal $EventRep
function {:constructor} $ToEventRep'$42_TestEmits_DummyEvent'(e: $42_TestEmits_DummyEvent): $EventRep;
axiom (forall v1, v2: $42_TestEmits_DummyEvent :: {$ToEventRep'$42_TestEmits_DummyEvent'(v1), $ToEventRep'$42_TestEmits_DummyEvent'(v2)}
    $IsEqual'$42_TestEmits_DummyEvent'(v1, v2) <==> $ToEventRep'$42_TestEmits_DummyEvent'(v1) == $ToEventRep'$42_TestEmits_DummyEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$42_TestEmits_DummyEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$42_TestEmits_DummyEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$42_TestEmits_DummyEvent'(handle_mut: $Mutation $1_Event_EventHandle'$42_TestEmits_DummyEvent', msg: $42_TestEmits_DummyEvent)
returns (res: $Mutation $1_Event_EventHandle'$42_TestEmits_DummyEvent') {
    var handle: $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$42_TestEmits_DummyEvent'(handle: $1_Event_EventHandle'$42_TestEmits_DummyEvent') {
}

function {:inline} $ExtendEventStore'$42_TestEmits_DummyEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$42_TestEmits_DummyEvent', msg: $42_TestEmits_DummyEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$42_TestEmits_DummyEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$42_TestEmits_DummyEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$42_TestEmits_DummyEvent', msg: $42_TestEmits_DummyEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$42_TestEmits_DummyEvent'(es, handle, msg)
    else
        es
}




//==================================
// Begin Translation



// Given Types for Type Parameters


// axiom at /home/ying/diem/language/move-stdlib/modules/Signer.move:28:9+53
axiom (forall s: $signer :: $IsValid'signer'(s) ==> ($1_Signer_is_signer($1_Signer_spec_address_of(s))));

// spec fun at /home/ying/diem/language/move-stdlib/modules/Signer.move:25:10+35
function {:inline} $1_Signer_is_signer(addr: int): bool;
axiom (forall addr: int ::
(var $$res := $1_Signer_is_signer(addr);
$IsValid'bool'($$res)));

// struct TestEmits::DummyEvent at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:7:5+52
type {:datatype} $42_TestEmits_DummyEvent;
function {:constructor} $42_TestEmits_DummyEvent($msg: int): $42_TestEmits_DummyEvent;
function {:inline} $Update'$42_TestEmits_DummyEvent'_msg(s: $42_TestEmits_DummyEvent, x: int): $42_TestEmits_DummyEvent {
    $42_TestEmits_DummyEvent(x)
}
function $IsValid'$42_TestEmits_DummyEvent'(s: $42_TestEmits_DummyEvent): bool {
    $IsValid'u64'($msg#$42_TestEmits_DummyEvent(s))
}
function {:inline} $IsEqual'$42_TestEmits_DummyEvent'(s1: $42_TestEmits_DummyEvent, s2: $42_TestEmits_DummyEvent): bool {
    s1 == s2
}

// fun TestEmits::opaque [baseline] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:275:5+197
procedure {:inline 1} $42_TestEmits_opaque(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: $42_TestEmits_DummyEvent;
    var $t5: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t6: $42_TestEmits_DummyEvent;
    var $t7: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t8: int;
    var $t9: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));

    // bytecode translation starts here
    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:275:5+1
    assume {:print "$at(2,8848,8849)"} true;
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,17,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:276:51+1
    assume {:print "$at(2,8956,8957)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:276:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:276:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,8914,8959)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,17):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    // >> opaque call: TestEmits::callee($t0)
    assume {:print "$at(2,8969,8983)"} true;

    // opaque begin: TestEmits::callee($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // opaque end: TestEmits::callee($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14

    // $t8 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:278:51+1
    assume {:print "$at(2,9035,9036)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:278:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:278:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,8993,9038)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,17):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:278:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,17,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:279:5+1
    assume {:print "$at(2,9044,9045)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:279:5+1
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:279:5+1
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:279:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:275:5+197
procedure {:timeLimit 40} $42_TestEmits_opaque$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: $42_TestEmits_DummyEvent;
    var $t5: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t6: $42_TestEmits_DummyEvent;
    var $t7: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t8: int;
    var $t9: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:275:5+197
    assume {:print "$at(2,8848,9045)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:275:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,17,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:276:51+1
    assume {:print "$at(2,8956,8957)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:276:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:276:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,8914,8959)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,17):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    // >> opaque call: TestEmits::callee($t0)
    assume {:print "$at(2,8969,8983)"} true;

    // opaque begin: TestEmits::callee($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // opaque end: TestEmits::callee($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:277:9+14

    // $t8 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:278:51+1
    assume {:print "$at(2,9035,9036)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:278:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:278:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,8993,9038)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,17):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:278:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,17,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:279:5+1
    assume {:print "$at(2,9044,9045)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:281:9+35
    assume {:print "$at(2,9072,9107)"} true;
    assert {:msg "assert_failed(2,9072,9107): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:282:9+35
    assume {:print "$at(2,9116,9151)"} true;
    assert {:msg "assert_failed(2,9116,9151): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:283:9+36
    assume {:print "$at(2,9160,9196)"} true;
    assert {:msg "assert_failed(2,9160,9196): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:284:9+35
    assume {:print "$at(2,9205,9240)"} true;
    assert {:msg "assert_failed(2,9205,9240): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:280:5+196
    assume {:print "$at(2,9050,9246)"} true;
    assert {:msg "assert_failed(2,9050,9246): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:280:5+196
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:279:5+1
    assume {:print "$at(2,9044,9045)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:279:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::callee [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:264:5+174
procedure {:timeLimit 40} $42_TestEmits_callee$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:264:5+174
    assume {:print "$at(2,8507,8681)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:264:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,0,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 7 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:265:51+1
    assume {:print "$at(2,8615,8616)"} true;
    $t1 := 7;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:265:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:265:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,8573,8618)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,0):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 77 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:266:51+2
    assume {:print "$at(2,8670,8672)"} true;
    $t4 := 77;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:266:35+19
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:266:9+46
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,8628,8674)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,0):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:266:55+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,0,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:267:5+1
    assume {:print "$at(2,8680,8681)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:270:9+16
    assume {:print "$at(2,8731,8747)"} true;
    assert {:msg "assert_failed(2,8731,8747): function does not abort under this condition"}
      !false;

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(7), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:271:9+35
    assume {:print "$at(2,8756,8791)"} true;
    assert {:msg "assert_failed(2,8756,8791): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:272:9+36
    assume {:print "$at(2,8800,8836)"} true;
    assert {:msg "assert_failed(2,8800,8836): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:268:5+156
    assume {:print "$at(2,8686,8842)"} true;
    assert {:msg "assert_failed(2,8686,8842): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:268:5+156
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:267:5+1
    assume {:print "$at(2,8680,8681)"} true;
L2:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:268:5+156
    assume {:print "$at(2,8686,8842)"} true;
    assert {:msg "assert_failed(2,8686,8842): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:268:5+156
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::callee_partial [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:326:5+182
procedure {:timeLimit 40} $42_TestEmits_callee_partial$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:326:5+182
    assume {:print "$at(2,10620,10802)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:326:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,1,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 7 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:327:51+1
    assume {:print "$at(2,10736,10737)"} true;
    $t1 := 7;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:327:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:327:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,10694,10739)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 77 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:328:51+2
    assume {:print "$at(2,10791,10793)"} true;
    $t4 := 77;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:328:35+19
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:328:9+46
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,10749,10795)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:328:55+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,1,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:329:5+1
    assume {:print "$at(2,10801,10802)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:332:9+16
    assume {:print "$at(2,10860,10876)"} true;
    assert {:msg "assert_failed(2,10860,10876): function does not abort under this condition"}
      !false;

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(7), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:333:9+35
    assume {:print "$at(2,10885,10920)"} true;
    assert {:msg "assert_failed(2,10885,10920): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:334:9+36
    assume {:print "$at(2,10929,10965)"} true;
    assert {:msg "assert_failed(2,10929,10965): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:334:9+36
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:329:5+1
    assume {:print "$at(2,10801,10802)"} true;
L2:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:330:5+197
    assume {:print "$at(2,10807,11004)"} true;
    assert {:msg "assert_failed(2,10807,11004): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:330:5+197
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:97:5+166
procedure {:timeLimit 40} $42_TestEmits_conditional$verify(_$t0: int, _$t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t6: int;
    var $t0: int;
    var $t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:97:5+166
    assume {:print "$at(2,3277,3443)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:97:5+166
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:97:5+1
    assume {:print "$track_local(5,2,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:97:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,2,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 7 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:98:17+1
    assume {:print "$at(2,3364,3365)"} true;
    $t2 := 7;
    assume $IsValid'u64'($t2);

    // $t3 := >($t0, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:98:15+1
    call $t3 := $Gt($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:98:9+81
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:98:9+81
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:98:9+81
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:99:31+6
    assume {:print "$at(2,3399,3405)"} true;
L0:

    // $t4 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:99:55+1
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:99:39+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t5) on_abort goto L5 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:99:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,3381,3426)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,2):", $t6} $t6 == $t6;
        goto L5;
    }

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:98:9+81
    assume {:print "$at(2,3356,3437)"} true;
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:98:9+81
L2:

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:98:9+81

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:98:9+81
L3:

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:98:9+81
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,2,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:101:5+1
    assume {:print "$at(2,3442,3443)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, Gt($t0, 7))) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:103:9+44
    assume {:print "$at(2,3475,3519)"} true;
    assert {:msg "assert_failed(2,3475,3519): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), ($t0 > 7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, Gt($t0, 7))) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:102:5+77
    assume {:print "$at(2,3448,3525)"} true;
    assert {:msg "assert_failed(2,3448,3525): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), ($t0 > 7)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:102:5+77
    $ret0 := $t1;
    return;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:101:5+1
    assume {:print "$at(2,3442,3443)"} true;
L5:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:101:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_bool [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:124:5+168
procedure {:timeLimit 40} $42_TestEmits_conditional_bool$verify(_$t0: bool, _$t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t2: int;
    var $t3: $42_TestEmits_DummyEvent;
    var $t4: int;
    var $t0: bool;
    var $t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    var $temp_0'bool': bool;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:124:5+168
    assume {:print "$at(2,4138,4306)"} true;
    assume $IsValid'bool'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:124:5+168
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:124:5+1
    assume {:print "$track_local(5,3,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:124:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,3,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:125:9+77
    assume {:print "$at(2,4223,4300)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:125:9+77
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:125:9+77
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:126:31+6
    assume {:print "$at(2,4262,4268)"} true;
L0:

    // $t2 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:126:55+1
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestEmits::DummyEvent($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:126:39+18
    $t3 := $42_TestEmits_DummyEvent($t2);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t3) on_abort goto L5 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:126:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,4244,4289)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,3):", $t4} $t4 == $t4;
        goto L5;
    }

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:125:9+77
    assume {:print "$at(2,4223,4300)"} true;
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:125:9+77
L2:

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:125:9+77

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:125:9+77
L3:

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:125:9+77
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,3,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:128:5+1
    assume {:print "$at(2,4305,4306)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:130:9+40
    assume {:print "$at(2,4343,4383)"} true;
    assert {:msg "assert_failed(2,4343,4383): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), $t0); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:129:5+78
    assume {:print "$at(2,4311,4389)"} true;
    assert {:msg "assert_failed(2,4311,4389): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), $t0); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:129:5+78
    $ret0 := $t1;
    return;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:128:5+1
    assume {:print "$at(2,4305,4306)"} true;
L5:

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:128:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_missing_condition_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:115:5+194
procedure {:timeLimit 40} $42_TestEmits_conditional_missing_condition_incorrect$verify(_$t0: int, _$t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t6: int;
    var $t0: int;
    var $t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:115:5+194
    assume {:print "$at(2,3837,4031)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:115:5+194
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:115:5+1
    assume {:print "$track_local(5,4,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:115:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,4,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 7 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:116:17+1
    assume {:print "$at(2,3952,3953)"} true;
    $t2 := 7;
    assume $IsValid'u64'($t2);

    // $t3 := >($t0, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:116:15+1
    call $t3 := $Gt($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:116:9+81
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:116:9+81
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:116:9+81
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:117:31+6
    assume {:print "$at(2,3987,3993)"} true;
L0:

    // $t4 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:117:55+1
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:117:39+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t5) on_abort goto L5 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:117:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,3969,4014)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,4):", $t6} $t6 == $t6;
        goto L5;
    }

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:116:9+81
    assume {:print "$at(2,3944,4025)"} true;
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:116:9+81
L2:

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:116:9+81

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:116:9+81
L3:

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:116:9+81
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,4,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:119:5+1
    assume {:print "$at(2,4030,4031)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:121:9+35
    assume {:print "$at(2,4091,4126)"} true;
    assert {:msg "assert_failed(2,4091,4126): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:120:5+96
    assume {:print "$at(2,4036,4132)"} true;
    assert {:msg "assert_failed(2,4036,4132): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:120:5+96
    $ret0 := $t1;
    return;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:119:5+1
    assume {:print "$at(2,4030,4031)"} true;
L5:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:119:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_multiple [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:133:5+370
procedure {:timeLimit 40} $42_TestEmits_conditional_multiple$verify(_$t0: bool, _$t1: bool, _$t2: bool, _$t3: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t6: int;
    var $t7: int;
    var $t8: $42_TestEmits_DummyEvent;
    var $t9: int;
    var $t10: $42_TestEmits_DummyEvent;
    var $t0: bool;
    var $t1: bool;
    var $t2: bool;
    var $t3: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    var $temp_0'bool': bool;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t3) == $Param(3);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:133:5+370
    assume {:print "$at(2,4395,4765)"} true;
    assume $IsValid'bool'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:133:5+370
    assume $IsValid'bool'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:133:5+370
    assume $IsValid'bool'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:133:5+370
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t3));

    // trace_local[b0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:133:5+1
    assume {:print "$track_local(5,5,0):", $t0} $t0 == $t0;

    // trace_local[b1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:133:5+1
    assume {:print "$track_local(5,5,1):", $t1} $t1 == $t1;

    // trace_local[b2]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:133:5+1
    assume {:print "$track_local(5,5,2):", $t2} $t2 == $t2;

    // trace_local[handle]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:133:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t3);
    assume {:print "$track_local(5,5,3):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:134:9+78
    assume {:print "$at(2,4505,4583)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:134:9+78
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:134:9+78
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:135:31+6
    assume {:print "$at(2,4545,4551)"} true;
L0:

    // $t4 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:135:55+1
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:135:39+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t5) on_abort goto L11 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:135:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,4527,4572)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,5):", $t6} $t6 == $t6;
        goto L11;
    }

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:137:13+2
    assume {:print "$at(2,4597,4599)"} true;
L2:

    // if ($t1) goto L3 else goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:137:9+78
    if ($t1) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:137:9+78
L4:

    // goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:137:9+78
    goto L5;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:138:31+6
    assume {:print "$at(2,4633,4639)"} true;
L3:

    // $t7 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:138:55+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestEmits::DummyEvent($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:138:39+18
    $t8 := $42_TestEmits_DummyEvent($t7);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t8) on_abort goto L11 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:138:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,4615,4660)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,5):", $t6} $t6 == $t6;
        goto L11;
    }

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:140:13+2
    assume {:print "$at(2,4685,4687)"} true;
L5:

    // if ($t2) goto L6 else goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:140:9+78
    if ($t2) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:140:9+78
L7:

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:140:9+78
    goto L8;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:141:31+6
    assume {:print "$at(2,4721,4727)"} true;
L6:

    // $t9 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:141:55+1
    $t9 := 2;
    assume $IsValid'u64'($t9);

    // $t10 := pack TestEmits::DummyEvent($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:141:39+18
    $t10 := $42_TestEmits_DummyEvent($t9);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t10) on_abort goto L11 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:141:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,4703,4748)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,5):", $t6} $t6 == $t6;
        goto L11;
    }

    // goto L9 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:140:9+78
    assume {:print "$at(2,4681,4759)"} true;
    goto L9;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:140:9+78
L8:

    // destroy($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:140:9+78

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:140:9+78
L9:

    // trace_local[handle]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:140:9+78
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t3);
    assume {:print "$track_local(5,5,3):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:143:5+1
    assume {:print "$at(2,4764,4765)"} true;
L10:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:145:9+41
    assume {:print "$at(2,4806,4847)"} true;
    assert {:msg "assert_failed(2,4806,4847): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(1), $t3, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:146:9+41
    assume {:print "$at(2,4856,4897)"} true;
    assert {:msg "assert_failed(2,4856,4897): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(1), $t1); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(1), $t3, $t1), pack TestEmits::DummyEvent(2), $t3, $t2)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:147:9+41
    assume {:print "$at(2,4906,4947)"} true;
    assert {:msg "assert_failed(2,4906,4947): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(1), $t1), $Dereference($t3), $42_TestEmits_DummyEvent(2), $t2); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(1), $t3, $t1), pack TestEmits::DummyEvent(2), $t3, $t2)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:144:5+183
    assume {:print "$at(2,4770,4953)"} true;
    assert {:msg "assert_failed(2,4770,4953): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(1), $t1), $Dereference($t3), $42_TestEmits_DummyEvent(2), $t2); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:144:5+183
    $ret0 := $t3;
    return;

    // label L11 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:143:5+1
    assume {:print "$at(2,4764,4765)"} true;
L11:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:143:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_multiple_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:150:5+292
procedure {:timeLimit 40} $42_TestEmits_conditional_multiple_incorrect$verify(_$t0: bool, _$t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t2: int;
    var $t3: $42_TestEmits_DummyEvent;
    var $t4: int;
    var $t5: int;
    var $t6: $42_TestEmits_DummyEvent;
    var $t7: int;
    var $t8: $42_TestEmits_DummyEvent;
    var $t0: bool;
    var $t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    var $temp_0'bool': bool;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:150:5+292
    assume {:print "$at(2,4959,5251)"} true;
    assume $IsValid'bool'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:150:5+292
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:150:5+1
    assume {:print "$track_local(5,6,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:150:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,6,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:151:51+1
    assume {:print "$at(2,5100,5101)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestEmits::DummyEvent($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:151:35+18
    $t3 := $42_TestEmits_DummyEvent($t2);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t3) on_abort goto L5 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:151:9+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,5058,5103)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,6):", $t4} $t4 == $t4;
        goto L5;
    }

    // $t5 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:152:51+1
    assume {:print "$at(2,5155,5156)"} true;
    $t5 := 1;
    assume $IsValid'u64'($t5);

    // $t6 := pack TestEmits::DummyEvent($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:152:35+18
    $t6 := $42_TestEmits_DummyEvent($t5);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t6) on_abort goto L5 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:152:9+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,5113,5158)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,6):", $t4} $t4 == $t4;
        goto L5;
    }

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:153:9+77
    assume {:print "$at(2,5168,5245)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:153:9+77
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:153:9+77
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:154:31+6
    assume {:print "$at(2,5207,5213)"} true;
L0:

    // $t7 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:154:55+1
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestEmits::DummyEvent($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:154:39+18
    $t8 := $42_TestEmits_DummyEvent($t7);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t8) on_abort goto L5 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:154:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,5189,5234)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,6):", $t4} $t4 == $t4;
        goto L5;
    }

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:153:9+77
    assume {:print "$at(2,5168,5245)"} true;
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:153:9+77
L2:

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:153:9+77

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:153:9+77
L3:

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:153:9+77
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,6,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:156:5+1
    assume {:print "$at(2,5250,5251)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:158:9+35
    assume {:print "$at(2,5302,5337)"} true;
    assert {:msg "assert_failed(2,5302,5337): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(1), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:159:9+35
    assume {:print "$at(2,5346,5381)"} true;
    assert {:msg "assert_failed(2,5346,5381): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(1), $t1), pack TestEmits::DummyEvent(2), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:160:9+35
    assume {:print "$at(2,5390,5425)"} true;
    assert {:msg "assert_failed(2,5390,5425): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(1), $t1), pack TestEmits::DummyEvent(2), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:157:5+175
    assume {:print "$at(2,5256,5431)"} true;
    assert {:msg "assert_failed(2,5256,5431): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:157:5+175
    $ret0 := $t1;
    return;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:156:5+1
    assume {:print "$at(2,5250,5251)"} true;
L5:

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:156:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_multiple_same [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:163:5+375
procedure {:timeLimit 40} $42_TestEmits_conditional_multiple_same$verify(_$t0: bool, _$t1: bool, _$t2: bool, _$t3: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t6: int;
    var $t7: int;
    var $t8: $42_TestEmits_DummyEvent;
    var $t9: int;
    var $t10: $42_TestEmits_DummyEvent;
    var $t0: bool;
    var $t1: bool;
    var $t2: bool;
    var $t3: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    var $temp_0'bool': bool;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t3) == $Param(3);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:163:5+375
    assume {:print "$at(2,5437,5812)"} true;
    assume $IsValid'bool'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:163:5+375
    assume $IsValid'bool'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:163:5+375
    assume $IsValid'bool'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:163:5+375
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t3));

    // trace_local[b0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:163:5+1
    assume {:print "$track_local(5,7,0):", $t0} $t0 == $t0;

    // trace_local[b1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:163:5+1
    assume {:print "$track_local(5,7,1):", $t1} $t1 == $t1;

    // trace_local[b2]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:163:5+1
    assume {:print "$track_local(5,7,2):", $t2} $t2 == $t2;

    // trace_local[handle]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:163:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t3);
    assume {:print "$track_local(5,7,3):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:164:9+78
    assume {:print "$at(2,5552,5630)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:164:9+78
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:164:9+78
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:165:31+6
    assume {:print "$at(2,5592,5598)"} true;
L0:

    // $t4 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:165:55+1
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:165:39+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t5) on_abort goto L11 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:165:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,5574,5619)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,7):", $t6} $t6 == $t6;
        goto L11;
    }

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:167:13+2
    assume {:print "$at(2,5644,5646)"} true;
L2:

    // if ($t1) goto L3 else goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:167:9+78
    if ($t1) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:167:9+78
L4:

    // goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:167:9+78
    goto L5;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:168:31+6
    assume {:print "$at(2,5680,5686)"} true;
L3:

    // $t7 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:168:55+1
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestEmits::DummyEvent($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:168:39+18
    $t8 := $42_TestEmits_DummyEvent($t7);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t8) on_abort goto L11 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:168:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,5662,5707)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,7):", $t6} $t6 == $t6;
        goto L11;
    }

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:170:13+2
    assume {:print "$at(2,5732,5734)"} true;
L5:

    // if ($t2) goto L6 else goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:170:9+78
    if ($t2) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:170:9+78
L7:

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:170:9+78
    goto L8;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:171:31+6
    assume {:print "$at(2,5768,5774)"} true;
L6:

    // $t9 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:171:55+1
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // $t10 := pack TestEmits::DummyEvent($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:171:39+18
    $t10 := $42_TestEmits_DummyEvent($t9);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t10) on_abort goto L11 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:171:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,5750,5795)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,7):", $t6} $t6 == $t6;
        goto L11;
    }

    // goto L9 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:170:9+78
    assume {:print "$at(2,5728,5806)"} true;
    goto L9;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:170:9+78
L8:

    // destroy($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:170:9+78

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:170:9+78
L9:

    // trace_local[handle]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:170:9+78
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t3);
    assume {:print "$track_local(5,7,3):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:173:5+1
    assume {:print "$at(2,5811,5812)"} true;
L10:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:175:9+41
    assume {:print "$at(2,5858,5899)"} true;
    assert {:msg "assert_failed(2,5858,5899): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(0), $t3, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:176:9+41
    assume {:print "$at(2,5908,5949)"} true;
    assert {:msg "assert_failed(2,5908,5949): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(0), $t1); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(0), $t3, $t1), pack TestEmits::DummyEvent(0), $t3, $t2)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:177:9+41
    assume {:print "$at(2,5958,5999)"} true;
    assert {:msg "assert_failed(2,5958,5999): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(0), $t1), $Dereference($t3), $42_TestEmits_DummyEvent(0), $t2); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(0), $t3, $t1), pack TestEmits::DummyEvent(0), $t3, $t2)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:174:5+188
    assume {:print "$at(2,5817,6005)"} true;
    assert {:msg "assert_failed(2,5817,6005): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(0), $t1), $Dereference($t3), $42_TestEmits_DummyEvent(0), $t2); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:174:5+188
    $ret0 := $t3;
    return;

    // label L11 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:173:5+1
    assume {:print "$at(2,5811,5812)"} true;
L11:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:173:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_multiple_same_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:180:5+297
procedure {:timeLimit 40} $42_TestEmits_conditional_multiple_same_incorrect$verify(_$t0: bool, _$t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t2: int;
    var $t3: $42_TestEmits_DummyEvent;
    var $t4: int;
    var $t5: int;
    var $t6: $42_TestEmits_DummyEvent;
    var $t7: int;
    var $t8: $42_TestEmits_DummyEvent;
    var $t0: bool;
    var $t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    var $temp_0'bool': bool;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:180:5+297
    assume {:print "$at(2,6011,6308)"} true;
    assume $IsValid'bool'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:180:5+297
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:180:5+1
    assume {:print "$track_local(5,8,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:180:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,8,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:181:51+1
    assume {:print "$at(2,6157,6158)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestEmits::DummyEvent($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:181:35+18
    $t3 := $42_TestEmits_DummyEvent($t2);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t3) on_abort goto L5 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:181:9+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,6115,6160)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,8):", $t4} $t4 == $t4;
        goto L5;
    }

    // $t5 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:182:51+1
    assume {:print "$at(2,6212,6213)"} true;
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := pack TestEmits::DummyEvent($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:182:35+18
    $t6 := $42_TestEmits_DummyEvent($t5);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t6) on_abort goto L5 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:182:9+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,6170,6215)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,8):", $t4} $t4 == $t4;
        goto L5;
    }

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:183:9+77
    assume {:print "$at(2,6225,6302)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:183:9+77
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:183:9+77
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:184:31+6
    assume {:print "$at(2,6264,6270)"} true;
L0:

    // $t7 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:184:55+1
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestEmits::DummyEvent($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:184:39+18
    $t8 := $42_TestEmits_DummyEvent($t7);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t8) on_abort goto L5 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:184:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,6246,6291)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,8):", $t4} $t4 == $t4;
        goto L5;
    }

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:183:9+77
    assume {:print "$at(2,6225,6302)"} true;
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:183:9+77
L2:

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:183:9+77

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:183:9+77
L3:

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:183:9+77
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,8,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:186:5+1
    assume {:print "$at(2,6307,6308)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:188:9+35
    assume {:print "$at(2,6364,6399)"} true;
    assert {:msg "assert_failed(2,6364,6399): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:189:9+35
    assume {:print "$at(2,6408,6443)"} true;
    assert {:msg "assert_failed(2,6408,6443): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:190:9+35
    assume {:print "$at(2,6452,6487)"} true;
    assert {:msg "assert_failed(2,6452,6487): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:187:5+180
    assume {:print "$at(2,6313,6493)"} true;
    assert {:msg "assert_failed(2,6313,6493): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:187:5+180
    $ret0 := $t1;
    return;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:186:5+1
    assume {:print "$at(2,6307,6308)"} true;
L5:

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:186:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_wrong_condition_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:106:5+192
procedure {:timeLimit 40} $42_TestEmits_conditional_wrong_condition_incorrect$verify(_$t0: int, _$t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t6: int;
    var $t0: int;
    var $t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:106:5+192
    assume {:print "$at(2,3531,3723)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:106:5+192
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:106:5+1
    assume {:print "$track_local(5,9,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:106:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,9,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 7 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:107:17+1
    assume {:print "$at(2,3644,3645)"} true;
    $t2 := 7;
    assume $IsValid'u64'($t2);

    // $t3 := >($t0, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:107:15+1
    call $t3 := $Gt($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:107:9+81
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:107:9+81
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:107:9+81
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:108:31+6
    assume {:print "$at(2,3679,3685)"} true;
L0:

    // $t4 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:108:55+1
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:108:39+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t5) on_abort goto L5 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:108:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,3661,3706)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,9):", $t6} $t6 == $t6;
        goto L5;
    }

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:107:9+81
    assume {:print "$at(2,3636,3717)"} true;
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:107:9+81
L2:

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:107:9+81

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:107:9+81
L3:

    // trace_local[handle]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:107:9+81
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,9,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:110:5+1
    assume {:print "$at(2,3722,3723)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, Gt($t0, 0))) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:112:9+44
    assume {:print "$at(2,3781,3825)"} true;
    assert {:msg "assert_failed(2,3781,3825): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), ($t0 > 0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, Gt($t0, 0))) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:111:5+103
    assume {:print "$at(2,3728,3831)"} true;
    assert {:msg "assert_failed(2,3728,3831): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), ($t0 > 0)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:111:5+103
    $ret0 := $t1;
    return;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:110:5+1
    assume {:print "$at(2,3722,3723)"} true;
L5:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:110:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestEmits::emits_in_schema [baseline] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:198:5+127
procedure {:inline 1} $42_TestEmits_emits_in_schema(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:198:5+1
    assume {:print "$at(2,6609,6610)"} true;
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,10,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:199:51+1
    assume {:print "$at(2,6726,6727)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:199:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:199:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,6684,6729)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,10):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:199:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,10,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:200:5+1
    assume {:print "$at(2,6735,6736)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:200:5+1
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:200:5+1
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:200:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::emits_in_schema [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:198:5+127
procedure {:timeLimit 40} $42_TestEmits_emits_in_schema$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:198:5+127
    assume {:print "$at(2,6609,6736)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:198:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,10,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:199:51+1
    assume {:print "$at(2,6726,6727)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:199:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:199:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,6684,6729)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,10):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:199:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,10,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:200:5+1
    assume {:print "$at(2,6735,6736)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:206:9+35
    assume {:print "$at(2,6892,6927)"} true;
    assert {:msg "assert_failed(2,6892,6927): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:201:5+64
    assume {:print "$at(2,6741,6805)"} true;
    assert {:msg "assert_failed(2,6741,6805): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:201:5+64
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:200:5+1
    assume {:print "$at(2,6735,6736)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:200:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::emits_in_schema_condition [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:209:5+158
procedure {:timeLimit 40} $42_TestEmits_emits_in_schema_condition$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'), _$t1: int) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t1: int;
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:209:5+158
    assume {:print "$at(2,6939,7097)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:209:5+158
    assume $IsValid'u64'($t1);

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:209:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,11,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:209:5+1
    assume {:print "$track_local(5,11,1):", $t1} $t1 == $t1;

    // $t2 := 7 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:210:17+1
    assume {:print "$at(2,7040,7041)"} true;
    $t2 := 7;
    assume $IsValid'u64'($t2);

    // $t3 := >($t1, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:210:15+1
    call $t3 := $Gt($t1, $t2);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:210:9+58
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:210:9+58
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:210:9+58
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:211:29+6
    assume {:print "$at(2,7073,7079)"} true;
L0:

    // TestEmits::emits_in_schema($t0) on_abort goto L5 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:211:13+23
    call $t0 := $42_TestEmits_emits_in_schema($t0);
    if ($abort_flag) {
        assume {:print "$at(2,7057,7080)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,11):", $t4} $t4 == $t4;
        goto L5;
    }

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:211:13+23
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:210:9+58
    assume {:print "$at(2,7032,7090)"} true;
L2:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:210:9+58

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:212:10+1
    assume {:print "$at(2,7090,7091)"} true;
L3:

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:212:10+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,11,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:213:5+1
    assume {:print "$at(2,7096,7097)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0, Gt($t1, 7))) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:206:9+35
    assume {:print "$at(2,6892,6927)"} true;
    assert {:msg "assert_failed(2,6892,6927): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0), ($t1 > 7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0, Gt($t1, 7))) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:214:5+84
    assume {:print "$at(2,7102,7186)"} true;
    assert {:msg "assert_failed(2,7102,7186): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0), ($t1 > 7)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:214:5+84
    $ret0 := $t0;
    return;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:213:5+1
    assume {:print "$at(2,7096,7097)"} true;
L5:

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:213:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::multiple [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:39:5+175
procedure {:timeLimit 40} $42_TestEmits_multiple$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:39:5+175
    assume {:print "$at(2,1162,1337)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:39:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,12,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:40:51+1
    assume {:print "$at(2,1272,1273)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:40:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:40:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,1230,1275)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,12):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:41:51+1
    assume {:print "$at(2,1327,1328)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:41:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:41:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,1285,1330)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,12):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:41:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,12,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:42:5+1
    assume {:print "$at(2,1336,1337)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:44:9+35
    assume {:print "$at(2,1366,1401)"} true;
    assert {:msg "assert_failed(2,1366,1401): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:45:9+35
    assume {:print "$at(2,1410,1445)"} true;
    assert {:msg "assert_failed(2,1410,1445): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:43:5+109
    assume {:print "$at(2,1342,1451)"} true;
    assert {:msg "assert_failed(2,1342,1451): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:43:5+109
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:42:5+1
    assume {:print "$at(2,1336,1337)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:42:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::multiple_different_handle [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:75:5+454
procedure {:timeLimit 40} $42_TestEmits_multiple_different_handle$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'), _$t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'), $ret1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t2: int;
    var $t3: $42_TestEmits_DummyEvent;
    var $t4: int;
    var $t5: int;
    var $t6: $42_TestEmits_DummyEvent;
    var $t7: int;
    var $t8: $42_TestEmits_DummyEvent;
    var $t9: int;
    var $t10: $42_TestEmits_DummyEvent;
    var $t11: int;
    var $t12: $42_TestEmits_DummyEvent;
    var $t13: int;
    var $t14: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:75:5+454
    assume {:print "$at(2,2391,2845)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:75:5+454
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:75:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,13,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // trace_local[handle2]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:75:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,13,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:76:51+1
    assume {:print "$at(2,2557,2558)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestEmits::DummyEvent($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:76:35+18
    $t3 := $42_TestEmits_DummyEvent($t2);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t3) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:76:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,2515,2560)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t5 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:77:51+1
    assume {:print "$at(2,2612,2613)"} true;
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := pack TestEmits::DummyEvent($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:77:35+18
    $t6 := $42_TestEmits_DummyEvent($t5);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t6) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:77:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,2570,2615)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t7 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:78:51+1
    assume {:print "$at(2,2667,2668)"} true;
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestEmits::DummyEvent($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:78:35+18
    $t8 := $42_TestEmits_DummyEvent($t7);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t8) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:78:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,2625,2670)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t9 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:79:52+1
    assume {:print "$at(2,2723,2724)"} true;
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // $t10 := pack TestEmits::DummyEvent($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:79:36+18
    $t10 := $42_TestEmits_DummyEvent($t9);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t10) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:79:9+46
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,2680,2726)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t11 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:80:52+1
    assume {:print "$at(2,2779,2780)"} true;
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // $t12 := pack TestEmits::DummyEvent($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:80:36+18
    $t12 := $42_TestEmits_DummyEvent($t11);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t12) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:80:9+46
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t12);
    if ($abort_flag) {
        assume {:print "$at(2,2736,2782)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t13 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:81:52+1
    assume {:print "$at(2,2835,2836)"} true;
    $t13 := 1;
    assume $IsValid'u64'($t13);

    // $t14 := pack TestEmits::DummyEvent($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:81:36+18
    $t14 := $42_TestEmits_DummyEvent($t13);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t14) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:81:9+46
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t14);
    if ($abort_flag) {
        assume {:print "$at(2,2792,2838)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:81:55+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,13,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // trace_local[handle2]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:81:55+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,13,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:82:5+1
    assume {:print "$at(2,2844,2845)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:84:9+35
    assume {:print "$at(2,2891,2926)"} true;
    assert {:msg "assert_failed(2,2891,2926): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:85:9+35
    assume {:print "$at(2,2935,2970)"} true;
    assert {:msg "assert_failed(2,2935,2970): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:86:9+35
    assume {:print "$at(2,2979,3014)"} true;
    assert {:msg "assert_failed(2,2979,3014): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:87:9+36
    assume {:print "$at(2,3023,3059)"} true;
    assert {:msg "assert_failed(2,3023,3059): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:88:9+36
    assume {:print "$at(2,3068,3104)"} true;
    assert {:msg "assert_failed(2,3068,3104): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(1), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:89:9+36
    assume {:print "$at(2,3113,3149)"} true;
    assert {:msg "assert_failed(2,3113,3149): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(1), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:83:5+305
    assume {:print "$at(2,2850,3155)"} true;
    assert {:msg "assert_failed(2,2850,3155): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:83:5+305
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:82:5+1
    assume {:print "$at(2,2844,2845)"} true;
L2:

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:82:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::multiple_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:48:5+185
procedure {:timeLimit 40} $42_TestEmits_multiple_incorrect$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:48:5+185
    assume {:print "$at(2,1457,1642)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:48:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,14,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:49:51+1
    assume {:print "$at(2,1577,1578)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:49:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:49:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,1535,1580)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,14):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:50:51+1
    assume {:print "$at(2,1632,1633)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:50:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:50:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,1590,1635)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,14):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:50:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,14,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:51:5+1
    assume {:print "$at(2,1641,1642)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:53:9+35
    assume {:print "$at(2,1681,1716)"} true;
    assert {:msg "assert_failed(2,1681,1716): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:54:9+35
    assume {:print "$at(2,1725,1760)"} true;
    assert {:msg "assert_failed(2,1725,1760): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(2), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:55:9+35
    assume {:print "$at(2,1769,1804)"} true;
    assert {:msg "assert_failed(2,1769,1804): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t0), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(2), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:52:5+163
    assume {:print "$at(2,1647,1810)"} true;
    assert {:msg "assert_failed(2,1647,1810): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t0), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:52:5+163
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:51:5+1
    assume {:print "$at(2,1641,1642)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:51:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::multiple_same [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:58:5+180
procedure {:timeLimit 40} $42_TestEmits_multiple_same$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:58:5+180
    assume {:print "$at(2,1816,1996)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:58:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,15,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:59:51+1
    assume {:print "$at(2,1931,1932)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:59:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:59:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,1889,1934)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,15):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:60:51+1
    assume {:print "$at(2,1986,1987)"} true;
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:60:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:60:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,1944,1989)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,15):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:60:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,15,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:61:5+1
    assume {:print "$at(2,1995,1996)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:63:9+35
    assume {:print "$at(2,2030,2065)"} true;
    assert {:msg "assert_failed(2,2030,2065): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:64:9+35
    assume {:print "$at(2,2074,2109)"} true;
    assert {:msg "assert_failed(2,2074,2109): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:62:5+114
    assume {:print "$at(2,2001,2115)"} true;
    assert {:msg "assert_failed(2,2001,2115): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:62:5+114
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:61:5+1
    assume {:print "$at(2,1995,1996)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:61:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::multiple_same_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:67:5+135
procedure {:timeLimit 40} $42_TestEmits_multiple_same_incorrect$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:67:5+135
    assume {:print "$at(2,2121,2256)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:67:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,16,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:68:51+1
    assume {:print "$at(2,2246,2247)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:68:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:68:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,2204,2249)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,16):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:68:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,16,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:69:5+1
    assume {:print "$at(2,2255,2256)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:71:9+35
    assume {:print "$at(2,2300,2335)"} true;
    assert {:msg "assert_failed(2,2300,2335): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:72:9+35
    assume {:print "$at(2,2344,2379)"} true;
    assert {:msg "assert_failed(2,2344,2379): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:70:5+124
    assume {:print "$at(2,2261,2385)"} true;
    assert {:msg "assert_failed(2,2261,2385): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:70:5+124
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:69:5+1
    assume {:print "$at(2,2255,2256)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:69:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque_completeness_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:310:5+220
procedure {:timeLimit 40} $42_TestEmits_opaque_completeness_incorrect$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: $42_TestEmits_DummyEvent;
    var $t5: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t6: $42_TestEmits_DummyEvent;
    var $t7: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t8: int;
    var $t9: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:310:5+220
    assume {:print "$at(2,10042,10262)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:310:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,18,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:311:51+1
    assume {:print "$at(2,10173,10174)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:311:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:311:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,10131,10176)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,18):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:312:9+14
    // >> opaque call: TestEmits::callee($t0)
    assume {:print "$at(2,10186,10200)"} true;

    // opaque begin: TestEmits::callee($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:312:9+14

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:312:9+14
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:312:9+14
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:312:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:312:9+14
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:312:9+14
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:312:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // opaque end: TestEmits::callee($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:312:9+14

    // $t8 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:313:51+1
    assume {:print "$at(2,10252,10253)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:313:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:313:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,10210,10255)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,18):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:313:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,18,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:314:5+1
    assume {:print "$at(2,10261,10262)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:316:9+35
    assume {:print "$at(2,10312,10347)"} true;
    assert {:msg "assert_failed(2,10312,10347): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:317:9+35
    assume {:print "$at(2,10356,10391)"} true;
    assert {:msg "assert_failed(2,10356,10391): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:318:9+35
    assume {:print "$at(2,10400,10435)"} true;
    assert {:msg "assert_failed(2,10400,10435): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:315:5+174
    assume {:print "$at(2,10267,10441)"} true;
    assert {:msg "assert_failed(2,10267,10441): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:315:5+174
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:314:5+1
    assume {:print "$at(2,10261,10262)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:314:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque_in_call_chain [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:300:5+101
procedure {:timeLimit 40} $42_TestEmits_opaque_in_call_chain$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:300:5+101
    assume {:print "$at(2,9720,9821)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:300:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,19,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // TestEmits::opaque($t0) on_abort goto L2 with $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:301:9+14
    assume {:print "$at(2,9800,9814)"} true;
    call $t0 := $42_TestEmits_opaque($t0);
    if ($abort_flag) {
        assume {:print "$at(2,9800,9814)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(5,19):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:301:23+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,19,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:302:5+1
    assume {:print "$at(2,9820,9821)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:304:9+35
    assume {:print "$at(2,9862,9897)"} true;
    assert {:msg "assert_failed(2,9862,9897): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:305:9+35
    assume {:print "$at(2,9906,9941)"} true;
    assert {:msg "assert_failed(2,9906,9941): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:306:9+36
    assume {:print "$at(2,9950,9986)"} true;
    assert {:msg "assert_failed(2,9950,9986): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:307:9+35
    assume {:print "$at(2,9995,10030)"} true;
    assert {:msg "assert_failed(2,9995,10030): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:303:5+210
    assume {:print "$at(2,9826,10036)"} true;
    assert {:msg "assert_failed(2,9826,10036): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:303:5+210
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:302:5+1
    assume {:print "$at(2,9820,9821)"} true;
L2:

    // abort($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:302:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:287:5+207
procedure {:timeLimit 40} $42_TestEmits_opaque_incorrect$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: $42_TestEmits_DummyEvent;
    var $t5: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t6: $42_TestEmits_DummyEvent;
    var $t7: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t8: int;
    var $t9: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:287:5+207
    assume {:print "$at(2,9252,9459)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:287:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,20,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:288:51+1
    assume {:print "$at(2,9370,9371)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:288:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:288:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,9328,9373)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,20):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:289:9+14
    // >> opaque call: TestEmits::callee($t0)
    assume {:print "$at(2,9383,9397)"} true;

    // opaque begin: TestEmits::callee($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:289:9+14

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:289:9+14
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:289:9+14
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:289:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:289:9+14
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:289:9+14
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:289:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // opaque end: TestEmits::callee($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:289:9+14

    // $t8 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:290:51+1
    assume {:print "$at(2,9449,9450)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:290:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:290:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,9407,9452)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,20):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:290:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,20,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:291:5+1
    assume {:print "$at(2,9458,9459)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:293:9+35
    assume {:print "$at(2,9496,9531)"} true;
    assert {:msg "assert_failed(2,9496,9531): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:294:9+35
    assume {:print "$at(2,9540,9575)"} true;
    assert {:msg "assert_failed(2,9540,9575): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:295:9+36
    assume {:print "$at(2,9584,9620)"} true;
    assert {:msg "assert_failed(2,9584,9620): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:296:9+35
    assume {:print "$at(2,9629,9664)"} true;
    assert {:msg "assert_failed(2,9629,9664): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(2), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:297:9+35
    assume {:print "$at(2,9673,9708)"} true;
    assert {:msg "assert_failed(2,9673,9708): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t0), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(2), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:292:5+250
    assume {:print "$at(2,9464,9714)"} true;
    assert {:msg "assert_failed(2,9464,9714): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t0), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:292:5+250
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:291:5+1
    assume {:print "$at(2,9458,9459)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:291:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque_partial [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:338:5+213
procedure {:timeLimit 40} $42_TestEmits_opaque_partial$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: $42_TestEmits_DummyEvent;
    var $t5: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t6: $42_TestEmits_DummyEvent;
    var $t7: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t8: int;
    var $t9: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:338:5+213
    assume {:print "$at(2,11010,11223)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:338:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,21,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:339:51+1
    assume {:print "$at(2,11126,11127)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:339:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:339:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,11084,11129)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,21):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:340:9+22
    // >> opaque call: TestEmits::callee_partial($t0)
    assume {:print "$at(2,11139,11161)"} true;

    // opaque begin: TestEmits::callee_partial($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:340:9+22

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:340:9+22
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:340:9+22
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:340:9+22
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:340:9+22
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:340:9+22
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:340:9+22
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // event_store_diverge() at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:340:9+22
    call $es := $EventStore__diverge($es);

    // opaque end: TestEmits::callee_partial($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:340:9+22

    // $t8 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:341:51+1
    assume {:print "$at(2,11213,11214)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:341:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:341:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,11171,11216)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,21):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:341:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,21,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:342:5+1
    assume {:print "$at(2,11222,11223)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:344:9+35
    assume {:print "$at(2,11258,11293)"} true;
    assert {:msg "assert_failed(2,11258,11293): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:345:9+35
    assume {:print "$at(2,11302,11337)"} true;
    assert {:msg "assert_failed(2,11302,11337): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:346:9+36
    assume {:print "$at(2,11346,11382)"} true;
    assert {:msg "assert_failed(2,11346,11382): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:347:9+35
    assume {:print "$at(2,11391,11426)"} true;
    assert {:msg "assert_failed(2,11391,11426): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:347:9+35
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:342:5+1
    assume {:print "$at(2,11222,11223)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:342:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque_partial_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:351:5+223
procedure {:timeLimit 40} $42_TestEmits_opaque_partial_incorrect$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: $42_TestEmits_DummyEvent;
    var $t5: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t6: $42_TestEmits_DummyEvent;
    var $t7: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t8: int;
    var $t9: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:351:5+223
    assume {:print "$at(2,11471,11694)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:351:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,22,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:352:51+1
    assume {:print "$at(2,11597,11598)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:352:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:352:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,11555,11600)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,22):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:353:9+22
    // >> opaque call: TestEmits::callee_partial($t0)
    assume {:print "$at(2,11610,11632)"} true;

    // opaque begin: TestEmits::callee_partial($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:353:9+22

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:353:9+22
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:353:9+22
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:353:9+22
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:353:9+22
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:353:9+22
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:353:9+22
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // event_store_diverge() at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:353:9+22
    call $es := $EventStore__diverge($es);

    // opaque end: TestEmits::callee_partial($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:353:9+22

    // $t8 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:354:51+1
    assume {:print "$at(2,11684,11685)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:354:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:354:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,11642,11687)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,22):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:354:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,22,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:355:5+1
    assume {:print "$at(2,11693,11694)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:357:9+35
    assume {:print "$at(2,11739,11774)"} true;
    assert {:msg "assert_failed(2,11739,11774): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:358:9+35
    assume {:print "$at(2,11783,11818)"} true;
    assert {:msg "assert_failed(2,11783,11818): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:359:9+36
    assume {:print "$at(2,11827,11863)"} true;
    assert {:msg "assert_failed(2,11827,11863): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:360:9+35
    assume {:print "$at(2,11872,11907)"} true;
    assert {:msg "assert_failed(2,11872,11907): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:356:5+298
    assume {:print "$at(2,11699,11997)"} true;
    assert {:msg "assert_failed(2,11699,11997): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:356:5+298
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:355:5+1
    assume {:print "$at(2,11693,11694)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:355:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::partial [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:223:5+174
procedure {:timeLimit 40} $42_TestEmits_partial$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:223:5+174
    assume {:print "$at(2,7297,7471)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:223:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,23,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:224:51+1
    assume {:print "$at(2,7406,7407)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:224:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:224:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,7364,7409)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,23):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:225:51+1
    assume {:print "$at(2,7461,7462)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:225:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:225:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,7419,7464)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,23):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:225:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,23,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:226:5+1
    assume {:print "$at(2,7470,7471)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:229:9+35
    assume {:print "$at(2,7532,7567)"} true;
    assert {:msg "assert_failed(2,7532,7567): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:229:9+35
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:226:5+1
    assume {:print "$at(2,7470,7471)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:226:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::partial_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:232:5+184
procedure {:timeLimit 40} $42_TestEmits_partial_incorrect$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:232:5+184
    assume {:print "$at(2,7579,7763)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:232:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,24,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:233:51+1
    assume {:print "$at(2,7698,7699)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:233:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:233:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,7656,7701)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,24):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:234:51+1
    assume {:print "$at(2,7753,7754)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:234:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:234:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,7711,7756)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,24):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:234:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,24,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:235:5+1
    assume {:print "$at(2,7762,7763)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:237:9+35
    assume {:print "$at(2,7801,7836)"} true;
    assert {:msg "assert_failed(2,7801,7836): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:236:5+74
    assume {:print "$at(2,7768,7842)"} true;
    assert {:msg "assert_failed(2,7768,7842): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:236:5+74
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:235:5+1
    assume {:print "$at(2,7762,7763)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:235:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::simple [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:13:5+118
procedure {:timeLimit 40} $42_TestEmits_simple$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:13:5+118
    assume {:print "$at(2,387,505)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:13:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,25,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:14:51+1
    assume {:print "$at(2,495,496)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:14:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:14:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,453,498)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,25):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:14:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,25,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:15:5+1
    assume {:print "$at(2,504,505)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:17:9+35
    assume {:print "$at(2,532,567)"} true;
    assert {:msg "assert_failed(2,532,567): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:16:5+63
    assume {:print "$at(2,510,573)"} true;
    assert {:msg "assert_failed(2,510,573): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:16:5+63
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:15:5+1
    assume {:print "$at(2,504,505)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:15:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::simple_wrong_handle_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:27:5+181
procedure {:timeLimit 40} $42_TestEmits_simple_wrong_handle_incorrect$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'), _$t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'), $ret1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t2: int;
    var $t3: $42_TestEmits_DummyEvent;
    var $t4: int;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $t1: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:27:5+181
    assume {:print "$at(2,811,992)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:27:5+181
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:27:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,26,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // trace_local[_handle2]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:27:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,26,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:28:51+1
    assume {:print "$at(2,982,983)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestEmits::DummyEvent($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:28:35+18
    $t3 := $42_TestEmits_DummyEvent($t2);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t3) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:28:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,940,985)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,26):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:28:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,26,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // trace_local[_handle2]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:28:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,26,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:29:5+1
    assume {:print "$at(2,991,992)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:31:9+37
    assume {:print "$at(2,1042,1079)"} true;
    assert {:msg "assert_failed(2,1042,1079): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:30:5+88
    assume {:print "$at(2,997,1085)"} true;
    assert {:msg "assert_failed(2,997,1085): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:30:5+88
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:29:5+1
    assume {:print "$at(2,991,992)"} true;
L2:

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:29:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::simple_wrong_msg_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:20:5+138
procedure {:timeLimit 40} $42_TestEmits_simple_wrong_msg_incorrect$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:20:5+138
    assume {:print "$at(2,579,717)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:20:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,27,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:21:51+1
    assume {:print "$at(2,707,708)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:21:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:21:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,665,710)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,27):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:21:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,27,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:22:5+1
    assume {:print "$at(2,716,717)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:24:9+35
    assume {:print "$at(2,764,799)"} true;
    assert {:msg "assert_failed(2,764,799): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(1), $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:23:5+83
    assume {:print "$at(2,722,805)"} true;
    assert {:msg "assert_failed(2,722,805): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:23:5+83
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:22:5+1
    assume {:print "$at(2,716,717)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:22:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::strict [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:245:5+173
procedure {:timeLimit 40} $42_TestEmits_strict$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:245:5+173
    assume {:print "$at(2,7952,8125)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:245:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,28,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:246:51+1
    assume {:print "$at(2,8060,8061)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:246:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:246:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,8018,8063)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,28):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:247:51+1
    assume {:print "$at(2,8115,8116)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:247:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:247:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,8073,8118)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,28):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:247:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,28,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:248:5+1
    assume {:print "$at(2,8124,8125)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:248:5+1
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:248:5+1
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:248:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::strict_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:252:5+183
procedure {:timeLimit 40} $42_TestEmits_strict_incorrect$verify(_$t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent')) returns ($ret0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent'))
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestEmits_DummyEvent;
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestEmits_DummyEvent;
    var $t0: $Mutation ($1_Event_EventHandle'$42_TestEmits_DummyEvent');
    var $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'': $1_Event_EventHandle'$42_TestEmits_DummyEvent';
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:252:5+183
    assume {:print "$at(2,8155,8338)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:252:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,29,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:253:51+1
    assume {:print "$at(2,8273,8274)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:253:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:253:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,8231,8276)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,29):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:254:51+1
    assume {:print "$at(2,8328,8329)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:254:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:254:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,8286,8331)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,29):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:254:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,29,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:255:5+1
    assume {:print "$at(2,8337,8338)"} true;
L1:

    // assert EventStoreIncludedIn(EmptyEventStore()) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:256:5+61
    assume {:print "$at(2,8343,8404)"} true;
    assert {:msg "assert_failed(2,8343,8404): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $EmptyEventStore; $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:256:5+61
    $ret0 := $t0;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:255:5+1
    assume {:print "$at(2,8337,8338)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/emits.move:255:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}
