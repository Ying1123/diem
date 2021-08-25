
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



procedure {:inline 1} $InitEventStore() {
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

// spec fun at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:24:9+73
function {:inline} $42_TestGlobalInvariants_exists_R($42_TestGlobalInvariants_R_$memory: $Memory $42_TestGlobalInvariants_R, addr: int): bool {
    $ResourceExists($42_TestGlobalInvariants_R_$memory, addr)
}

// struct TestGlobalInvariants::R at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:9:5+39
type {:datatype} $42_TestGlobalInvariants_R;
function {:constructor} $42_TestGlobalInvariants_R($x: int): $42_TestGlobalInvariants_R;
function {:inline} $Update'$42_TestGlobalInvariants_R'_x(s: $42_TestGlobalInvariants_R, x: int): $42_TestGlobalInvariants_R {
    $42_TestGlobalInvariants_R(x)
}
function $IsValid'$42_TestGlobalInvariants_R'(s: $42_TestGlobalInvariants_R): bool {
    $IsValid'u64'($x#$42_TestGlobalInvariants_R(s))
}
function {:inline} $IsEqual'$42_TestGlobalInvariants_R'(s1: $42_TestGlobalInvariants_R, s2: $42_TestGlobalInvariants_R): bool {
    s1 == s2
}
var $42_TestGlobalInvariants_R_$memory: $Memory $42_TestGlobalInvariants_R;

// struct TestGlobalInvariants::S at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:13:5+39
type {:datatype} $42_TestGlobalInvariants_S;
function {:constructor} $42_TestGlobalInvariants_S($x: int): $42_TestGlobalInvariants_S;
function {:inline} $Update'$42_TestGlobalInvariants_S'_x(s: $42_TestGlobalInvariants_S, x: int): $42_TestGlobalInvariants_S {
    $42_TestGlobalInvariants_S(x)
}
function $IsValid'$42_TestGlobalInvariants_S'(s: $42_TestGlobalInvariants_S): bool {
    $IsValid'u64'($x#$42_TestGlobalInvariants_S(s))
}
function {:inline} $IsEqual'$42_TestGlobalInvariants_S'(s1: $42_TestGlobalInvariants_S, s2: $42_TestGlobalInvariants_S): bool {
    s1 == s2
}
var $42_TestGlobalInvariants_S_$memory: $Memory $42_TestGlobalInvariants_S;

// fun TestGlobalInvariants::create_R [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:30:5+121
procedure {:timeLimit 40} $42_TestGlobalInvariants_create_R$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestGlobalInvariants_S;
    var $t3: int;
    var $t4: int;
    var $t5: $42_TestGlobalInvariants_R;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    var $42_TestGlobalInvariants_R_$memory#5: $Memory $42_TestGlobalInvariants_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall a: TypeDomain<address>() where exists<TestGlobalInvariants::R>(a): exists<TestGlobalInvariants::S>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:30:5+121
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    assume {:print "$at(2,678,799)"} true;
    assume (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a))  ==> ($ResourceExists($42_TestGlobalInvariants_S_$memory, a)));

    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:30:5+121
    assume $IsValid'signer'($t0);

    // assume forall $rsc: ResourceDomain<TestGlobalInvariants::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:30:5+121
    assume (forall $a_0: int :: {$ResourceValue($42_TestGlobalInvariants_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestGlobalInvariants_R_$memory, $a_0);
    ($IsValid'$42_TestGlobalInvariants_R'($rsc))));

    // assume forall $rsc: ResourceDomain<TestGlobalInvariants::S>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:30:5+121
    assume (forall $a_0: int :: {$ResourceValue($42_TestGlobalInvariants_S_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestGlobalInvariants_S_$memory, $a_0);
    ($IsValid'$42_TestGlobalInvariants_S'($rsc))));

    // assume Not(exists<TestGlobalInvariants::R>(Signer::spec_address_of($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:35:9+54
    assume {:print "$at(2,828,882)"} true;
    assume !$ResourceExists($42_TestGlobalInvariants_R_$memory, $1_Signer_spec_address_of($t0));

    // assume Not(exists<TestGlobalInvariants::S>(Signer::spec_address_of($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:36:9+54
    assume {:print "$at(2,891,945)"} true;
    assume !$ResourceExists($42_TestGlobalInvariants_S_$memory, $1_Signer_spec_address_of($t0));

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:30:5+1
    assume {:print "$at(2,678,679)"} true;
    assume {:print "$track_local(1,0,0):", $t0} $t0 == $t0;

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:31:34+1
    assume {:print "$at(2,751,752)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestGlobalInvariants::S($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:31:29+7
    $t2 := $42_TestGlobalInvariants_S($t1);

    // move_to<TestGlobalInvariants::S>($t2, $t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:31:9+7
    if ($ResourceExists($42_TestGlobalInvariants_S_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $42_TestGlobalInvariants_S_$memory := $ResourceUpdate($42_TestGlobalInvariants_S_$memory, $1_Signer_spec_address_of($t0), $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(2,726,733)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,0):", $t3} $t3 == $t3;
        goto L2;
    }

    // assert forall a: TypeDomain<address>() where exists<TestGlobalInvariants::R>(a): exists<TestGlobalInvariants::S>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    assume {:print "$at(2,348,418)"} true;
    assert {:msg "assert_failed(2,348,418): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a))  ==> ($ResourceExists($42_TestGlobalInvariants_S_$memory, a)));

    // $t4 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:32:34+1
    assume {:print "$at(2,789,790)"} true;
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestGlobalInvariants::R($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:32:29+7
    $t5 := $42_TestGlobalInvariants_R($t4);

    // @5 := save_mem(TestGlobalInvariants::R) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    // state save for global update invariants
    assume {:print "$at(2,348,418)"} true;
    $42_TestGlobalInvariants_R_$memory#5 := $42_TestGlobalInvariants_R_$memory;

    // move_to<TestGlobalInvariants::R>($t5, $t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:32:9+7
    assume {:print "$at(2,764,771)"} true;
    if ($ResourceExists($42_TestGlobalInvariants_R_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $42_TestGlobalInvariants_R_$memory := $ResourceUpdate($42_TestGlobalInvariants_R_$memory, $1_Signer_spec_address_of($t0), $t5);
    }
    if ($abort_flag) {
        assume {:print "$at(2,764,771)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,0):", $t3} $t3 == $t3;
        goto L2;
    }

    // assert forall a: TypeDomain<address>() where exists<TestGlobalInvariants::R>(a): exists<TestGlobalInvariants::S>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    assume {:print "$at(2,348,418)"} true;
    assert {:msg "assert_failed(2,348,418): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a))  ==> ($ResourceExists($42_TestGlobalInvariants_S_$memory, a)));

    // assert forall a: TypeDomain<address>() where TestGlobalInvariants::exists_R[@5](a): exists<TestGlobalInvariants::R>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:21:9+81
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:21:9+81
    assume {:print "$at(2,428,509)"} true;
    assert {:msg "assert_failed(2,428,509): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($42_TestGlobalInvariants_exists_R($42_TestGlobalInvariants_R_$memory#5, a))  ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a)));

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:33:5+1
    assume {:print "$at(2,798,799)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:33:5+1
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:33:5+1
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:33:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestGlobalInvariants::create_R_invalid [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:39:5+145
procedure {:timeLimit 40} $42_TestGlobalInvariants_create_R_invalid$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestGlobalInvariants_R;
    var $t3: int;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    var $42_TestGlobalInvariants_R_$memory#4: $Memory $42_TestGlobalInvariants_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall a: TypeDomain<address>() where exists<TestGlobalInvariants::R>(a): exists<TestGlobalInvariants::S>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:39:5+145
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    assume {:print "$at(2,957,1102)"} true;
    assume (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a))  ==> ($ResourceExists($42_TestGlobalInvariants_S_$memory, a)));

    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:39:5+145
    assume $IsValid'signer'($t0);

    // assume forall $rsc: ResourceDomain<TestGlobalInvariants::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:39:5+145
    assume (forall $a_0: int :: {$ResourceValue($42_TestGlobalInvariants_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestGlobalInvariants_R_$memory, $a_0);
    ($IsValid'$42_TestGlobalInvariants_R'($rsc))));

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:39:5+1
    assume {:print "$track_local(1,1,0):", $t0} $t0 == $t0;

    // $t1 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:41:34+1
    assume {:print "$at(2,1092,1093)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestGlobalInvariants::R($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:41:29+7
    $t2 := $42_TestGlobalInvariants_R($t1);

    // @4 := save_mem(TestGlobalInvariants::R) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:39:5+145
    // state save for global update invariants
    assume {:print "$at(2,957,1102)"} true;
    $42_TestGlobalInvariants_R_$memory#4 := $42_TestGlobalInvariants_R_$memory;

    // move_to<TestGlobalInvariants::R>($t2, $t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:41:9+7
    assume {:print "$at(2,1067,1074)"} true;
    if ($ResourceExists($42_TestGlobalInvariants_R_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $42_TestGlobalInvariants_R_$memory := $ResourceUpdate($42_TestGlobalInvariants_R_$memory, $1_Signer_spec_address_of($t0), $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1067,1074)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // assert forall a: TypeDomain<address>() where exists<TestGlobalInvariants::R>(a): exists<TestGlobalInvariants::S>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    assume {:print "$at(2,348,418)"} true;
    assert {:msg "assert_failed(2,348,418): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a))  ==> ($ResourceExists($42_TestGlobalInvariants_S_$memory, a)));

    // assert forall a: TypeDomain<address>() where TestGlobalInvariants::exists_R[@4](a): exists<TestGlobalInvariants::R>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:21:9+81
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:21:9+81
    assume {:print "$at(2,428,509)"} true;
    assert {:msg "assert_failed(2,428,509): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($42_TestGlobalInvariants_exists_R($42_TestGlobalInvariants_R_$memory#4, a))  ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a)));

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:42:5+1
    assume {:print "$at(2,1101,1102)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:42:5+1
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:42:5+1
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:42:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestGlobalInvariants::get_S_x [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:44:5+175
procedure {:timeLimit 40} $42_TestGlobalInvariants_get_S_x$verify(_$t0: $signer) returns ($ret0: int)
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: $42_TestGlobalInvariants_S;
    var $t9: int;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $42_TestGlobalInvariants_R_$memory#3: $Memory $42_TestGlobalInvariants_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall a: TypeDomain<address>() where exists<TestGlobalInvariants::R>(a): exists<TestGlobalInvariants::S>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:44:5+175
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    assume {:print "$at(2,1108,1283)"} true;
    assume (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a))  ==> ($ResourceExists($42_TestGlobalInvariants_S_$memory, a)));

    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:51:17+6
    assume {:print "$at(2,1466,1472)"} true;
    assume $IsValid'signer'($t0);

    // assume forall $rsc: ResourceDomain<TestGlobalInvariants::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:51:17+6
    assume (forall $a_0: int :: {$ResourceValue($42_TestGlobalInvariants_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestGlobalInvariants_R_$memory, $a_0);
    ($IsValid'$42_TestGlobalInvariants_R'($rsc))));

    // assume forall $rsc: ResourceDomain<TestGlobalInvariants::S>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:51:17+6
    assume (forall $a_0: int :: {$ResourceValue($42_TestGlobalInvariants_S_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestGlobalInvariants_S_$memory, $a_0);
    ($IsValid'$42_TestGlobalInvariants_S'($rsc))));

    // @3 := save_mem(TestGlobalInvariants::R) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:44:5+1
    assume {:print "$at(2,1108,1109)"} true;
    $42_TestGlobalInvariants_R_$memory#3 := $42_TestGlobalInvariants_R_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:44:5+1
    assume {:print "$track_local(1,2,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:26+27
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(2,1188,1215)"} true;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:26+27

    // assume WellFormed($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:26+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:26+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:26+27

    // $t4 := exists<TestGlobalInvariants::R>($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:16+6
    $t4 := $ResourceExists($42_TestGlobalInvariants_R_$memory, $t3);

    // trace_local[tmp#$1]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:9+49
    assume {:print "$track_local(1,2,1):", $t4} $t4 == $t4;

    // if ($t4) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:9+49
    if ($t4) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:9+49
L1:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:9+49

    // $t5 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:56+1
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // trace_abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:9+49
    assume {:print "$at(2,1171,1220)"} true;
    assume {:print "$track_abort(1,2):", $t5} $t5 == $t5;

    // $t6 := move($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:9+49
    $t6 := $t5;

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:45:9+49
    goto L3;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:46:45+7
    assume {:print "$at(2,1266,1273)"} true;
L0:

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:46:26+27
    // >> opaque call: $t6 := Signer::address_of($t0)

    // $t7 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:46:26+27

    // assume WellFormed($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:46:26+27
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:46:26+27
    assume $IsEqual'address'($t7, $1_Signer_spec_address_of($t0));

    // $t7 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:46:26+27

    // $t8 := get_global<TestGlobalInvariants::S>($t7) on_abort goto L3 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:46:9+13
    if (!$ResourceExists($42_TestGlobalInvariants_S_$memory, $t7)) {
        call $ExecFailureAbort();
    } else {
        $t8 := $ResourceValue($42_TestGlobalInvariants_S_$memory, $t7);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1230,1243)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,2):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t9 := get_field<TestGlobalInvariants::S>.x($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:46:9+47
    $t9 := $x#$42_TestGlobalInvariants_S($t8);

    // trace_return[0]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:46:9+47
    assume {:print "$track_return(1,2,0):", $t9} $t9 == $t9;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:47:5+1
    assume {:print "$at(2,1282,1283)"} true;
L2:

    // assert Not(Not(exists[@3]<TestGlobalInvariants::R>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:50:9+55
    assume {:print "$at(2,1394,1449)"} true;
    assert {:msg "assert_failed(2,1394,1449): function does not abort under this condition"}
      !!$ResourceExists($42_TestGlobalInvariants_R_$memory#3, $1_Signer_spec_address_of($t0));

    // assert Eq<u64>($t9, select TestGlobalInvariants::S.x(global<TestGlobalInvariants::S>(Signer::spec_address_of($t0)))) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:51:9+64
    assume {:print "$at(2,1458,1522)"} true;
    assert {:msg "assert_failed(2,1458,1522): post-condition does not hold"}
      $IsEqual'u64'($t9, $x#$42_TestGlobalInvariants_S($ResourceValue($42_TestGlobalInvariants_S_$memory, $1_Signer_spec_address_of($t0))));

    // return $t9 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:51:9+64
    $ret0 := $t9;
    return;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:47:5+1
    assume {:print "$at(2,1282,1283)"} true;
L3:

    // assert Not(exists[@3]<TestGlobalInvariants::R>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:48:5+240
    assume {:print "$at(2,1288,1528)"} true;
    assert {:msg "assert_failed(2,1288,1528): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($42_TestGlobalInvariants_R_$memory#3, $1_Signer_spec_address_of($t0));

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:48:5+240
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestGlobalInvariants::remove_R_invalid [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:63:5+253
procedure {:timeLimit 40} $42_TestGlobalInvariants_remove_R_invalid$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: $42_TestGlobalInvariants_R;
    var $t9: int;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $42_TestGlobalInvariants_R_$memory#6: $Memory $42_TestGlobalInvariants_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall a: TypeDomain<address>() where exists<TestGlobalInvariants::R>(a): exists<TestGlobalInvariants::S>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:63:5+253
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    assume {:print "$at(2,1876,2129)"} true;
    assume (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a))  ==> ($ResourceExists($42_TestGlobalInvariants_S_$memory, a)));

    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:63:5+253
    assume $IsValid'signer'($t0);

    // assume forall $rsc: ResourceDomain<TestGlobalInvariants::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:63:5+253
    assume (forall $a_0: int :: {$ResourceValue($42_TestGlobalInvariants_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestGlobalInvariants_R_$memory, $a_0);
    ($IsValid'$42_TestGlobalInvariants_R'($rsc))));

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:63:5+1
    assume {:print "$track_local(1,3,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:26+27
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(2,2026,2053)"} true;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:26+27

    // assume WellFormed($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:26+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:26+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:26+27

    // $t4 := exists<TestGlobalInvariants::R>($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:16+6
    $t4 := $ResourceExists($42_TestGlobalInvariants_R_$memory, $t3);

    // trace_local[tmp#$1]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:9+49
    assume {:print "$track_local(1,3,1):", $t4} $t4 == $t4;

    // if ($t4) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:9+49
    if ($t4) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:9+49
L1:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:9+49

    // $t5 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:56+1
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // trace_abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:9+49
    assume {:print "$at(2,2009,2058)"} true;
    assume {:print "$track_abort(1,3):", $t5} $t5 == $t5;

    // $t6 := move($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:9+49
    $t6 := $t5;

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:65:9+49
    goto L3;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:66:54+7
    assume {:print "$at(2,2113,2120)"} true;
L0:

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:66:35+27
    // >> opaque call: $t6 := Signer::address_of($t0)

    // $t7 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:66:35+27

    // assume WellFormed($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:66:35+27
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:66:35+27
    assume $IsEqual'address'($t7, $1_Signer_spec_address_of($t0));

    // $t7 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:66:35+27

    // @6 := save_mem(TestGlobalInvariants::R) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:63:5+253
    // state save for global update invariants
    assume {:print "$at(2,1876,2129)"} true;
    $42_TestGlobalInvariants_R_$memory#6 := $42_TestGlobalInvariants_R_$memory;

    // $t8 := move_from<TestGlobalInvariants::R>($t7) on_abort goto L3 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:66:22+9
    assume {:print "$at(2,2081,2090)"} true;
    if (!$ResourceExists($42_TestGlobalInvariants_R_$memory, $t7)) {
        call $ExecFailureAbort();
    } else {
        $t8 := $ResourceValue($42_TestGlobalInvariants_R_$memory, $t7);
        $42_TestGlobalInvariants_R_$memory := $ResourceRemove($42_TestGlobalInvariants_R_$memory, $t7);
    }
    if ($abort_flag) {
        assume {:print "$at(2,2081,2090)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,3):", $t6} $t6 == $t6;
        goto L3;
    }

    // assert forall a: TypeDomain<address>() where exists<TestGlobalInvariants::R>(a): exists<TestGlobalInvariants::S>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    assume {:print "$at(2,348,418)"} true;
    assert {:msg "assert_failed(2,348,418): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a))  ==> ($ResourceExists($42_TestGlobalInvariants_S_$memory, a)));

    // assert forall a: TypeDomain<address>() where TestGlobalInvariants::exists_R[@6](a): exists<TestGlobalInvariants::R>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:21:9+81
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:21:9+81
    assume {:print "$at(2,428,509)"} true;
    assert {:msg "assert_failed(2,428,509): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($42_TestGlobalInvariants_exists_R($42_TestGlobalInvariants_R_$memory#6, a))  ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a)));

    // $t9 := unpack TestGlobalInvariants::R($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:66:13+6
    assume {:print "$at(2,2072,2078)"} true;
    $t9 := $x#$42_TestGlobalInvariants_R($t8);

    // destroy($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:66:17+1

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:67:5+1
    assume {:print "$at(2,2128,2129)"} true;
L2:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:67:5+1
    return;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:67:5+1
L3:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:67:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestGlobalInvariants::remove_S_invalid [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:54:5+238
procedure {:timeLimit 40} $42_TestGlobalInvariants_remove_S_invalid$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: $42_TestGlobalInvariants_S;
    var $t9: int;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $42_TestGlobalInvariants_R_$memory#2: $Memory $42_TestGlobalInvariants_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall a: TypeDomain<address>() where exists<TestGlobalInvariants::R>(a): exists<TestGlobalInvariants::S>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:54:5+238
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    assume {:print "$at(2,1534,1772)"} true;
    assume (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a))  ==> ($ResourceExists($42_TestGlobalInvariants_S_$memory, a)));

    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:54:5+238
    assume $IsValid'signer'($t0);

    // assume forall $rsc: ResourceDomain<TestGlobalInvariants::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:54:5+238
    assume (forall $a_0: int :: {$ResourceValue($42_TestGlobalInvariants_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestGlobalInvariants_R_$memory, $a_0);
    ($IsValid'$42_TestGlobalInvariants_R'($rsc))));

    // assume forall $rsc: ResourceDomain<TestGlobalInvariants::S>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:54:5+238
    assume (forall $a_0: int :: {$ResourceValue($42_TestGlobalInvariants_S_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestGlobalInvariants_S_$memory, $a_0);
    ($IsValid'$42_TestGlobalInvariants_S'($rsc))));

    // @2 := save_mem(TestGlobalInvariants::R) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:54:5+1
    $42_TestGlobalInvariants_R_$memory#2 := $42_TestGlobalInvariants_R_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:54:5+1
    assume {:print "$track_local(1,4,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:26+27
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(2,1669,1696)"} true;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:26+27

    // assume WellFormed($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:26+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:26+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:26+27

    // $t4 := exists<TestGlobalInvariants::R>($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:16+6
    $t4 := $ResourceExists($42_TestGlobalInvariants_R_$memory, $t3);

    // trace_local[tmp#$1]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:9+49
    assume {:print "$track_local(1,4,1):", $t4} $t4 == $t4;

    // if ($t4) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:9+49
    if ($t4) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:9+49
L1:

    // destroy($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:9+49

    // $t5 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:56+1
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // trace_abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:9+49
    assume {:print "$at(2,1652,1701)"} true;
    assume {:print "$track_abort(1,4):", $t5} $t5 == $t5;

    // $t6 := move($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:9+49
    $t6 := $t5;

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:56:9+49
    goto L3;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:57:54+7
    assume {:print "$at(2,1756,1763)"} true;
L0:

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:57:35+27
    // >> opaque call: $t6 := Signer::address_of($t0)

    // $t7 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:57:35+27

    // assume WellFormed($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:57:35+27
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:57:35+27
    assume $IsEqual'address'($t7, $1_Signer_spec_address_of($t0));

    // $t7 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:57:35+27

    // $t8 := move_from<TestGlobalInvariants::S>($t7) on_abort goto L3 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:57:22+9
    if (!$ResourceExists($42_TestGlobalInvariants_S_$memory, $t7)) {
        call $ExecFailureAbort();
    } else {
        $t8 := $ResourceValue($42_TestGlobalInvariants_S_$memory, $t7);
        $42_TestGlobalInvariants_S_$memory := $ResourceRemove($42_TestGlobalInvariants_S_$memory, $t7);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1724,1733)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,4):", $t6} $t6 == $t6;
        goto L3;
    }

    // assert forall a: TypeDomain<address>() where exists<TestGlobalInvariants::R>(a): exists<TestGlobalInvariants::S>(a) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    // global invariant at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:19:9+70
    assume {:print "$at(2,348,418)"} true;
    assert {:msg "assert_failed(2,348,418): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($42_TestGlobalInvariants_R_$memory, a))  ==> ($ResourceExists($42_TestGlobalInvariants_S_$memory, a)));

    // $t9 := unpack TestGlobalInvariants::S($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:57:13+6
    assume {:print "$at(2,1715,1721)"} true;
    $t9 := $x#$42_TestGlobalInvariants_S($t8);

    // destroy($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:57:17+1

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:58:5+1
    assume {:print "$at(2,1771,1772)"} true;
L2:

    // assert Not(Not(exists[@2]<TestGlobalInvariants::R>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:60:9+55
    assume {:print "$at(2,1809,1864)"} true;
    assert {:msg "assert_failed(2,1809,1864): function does not abort under this condition"}
      !!$ResourceExists($42_TestGlobalInvariants_R_$memory#2, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:60:9+55
    return;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:58:5+1
    assume {:print "$at(2,1771,1772)"} true;
L3:

    // assert Not(exists[@2]<TestGlobalInvariants::R>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:59:5+93
    assume {:print "$at(2,1777,1870)"} true;
    assert {:msg "assert_failed(2,1777,1870): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($42_TestGlobalInvariants_R_$memory#2, $1_Signer_spec_address_of($t0));

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/global_invariants.move:59:5+93
    $abort_code := $t6;
    $abort_flag := true;
    return;

}
