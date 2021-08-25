
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


// spec fun at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:24:9+39
function {:inline} $42_TestInvariants_greater_one(x: int): bool {
    (x > 1)
}

// struct TestInvariants::R at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:10:5+46
type {:datatype} $42_TestInvariants_R;
function {:constructor} $42_TestInvariants_R($x: int): $42_TestInvariants_R;
function {:inline} $Update'$42_TestInvariants_R'_x(s: $42_TestInvariants_R, x: int): $42_TestInvariants_R {
    $42_TestInvariants_R(x)
}
function $IsValid'$42_TestInvariants_R'(s: $42_TestInvariants_R): bool {
    $IsValid'u64'($x#$42_TestInvariants_R(s))
}
function {:inline} $IsEqual'$42_TestInvariants_R'(s1: $42_TestInvariants_R, s2: $42_TestInvariants_R): bool {
    s1 == s2
}

// struct TestInvariants::S at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:146:5+31
type {:datatype} $42_TestInvariants_S;
function {:constructor} $42_TestInvariants_S($y: int): $42_TestInvariants_S;
function {:inline} $Update'$42_TestInvariants_S'_y(s: $42_TestInvariants_S, x: int): $42_TestInvariants_S {
    $42_TestInvariants_S(x)
}
function $IsValid'$42_TestInvariants_S'(s: $42_TestInvariants_S): bool {
    $IsValid'u64'($y#$42_TestInvariants_S(s))
}
function {:inline} $IsEqual'$42_TestInvariants_S'(s1: $42_TestInvariants_S, s2: $42_TestInvariants_S): bool {
    s1 == s2
}

// struct TestInvariants::T at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:139:5+31
type {:datatype} $42_TestInvariants_T;
function {:constructor} $42_TestInvariants_T($x: int): $42_TestInvariants_T;
function {:inline} $Update'$42_TestInvariants_T'_x(s: $42_TestInvariants_T, x: int): $42_TestInvariants_T {
    $42_TestInvariants_T(x)
}
function $IsValid'$42_TestInvariants_T'(s: $42_TestInvariants_T): bool {
    $IsValid'u64'($x#$42_TestInvariants_T(s))
}
function {:inline} $IsEqual'$42_TestInvariants_T'(s1: $42_TestInvariants_T, s2: $42_TestInvariants_T): bool {
    s1 == s2
}

// fun TestInvariants::invalid_R_pack [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:42:5+48
procedure {:timeLimit 40} $42_TestInvariants_invalid_R_pack$verify() returns ($ret0: $42_TestInvariants_R)
{
    // declare local variables
    var $t0: int;
    var $t1: $42_TestInvariants_R;
    var $temp_0'$42_TestInvariants_R': $42_TestInvariants_R;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:43:15+1
    assume {:print "$at(2,942,943)"} true;
    $t0 := 1;
    assume $IsValid'u64'($t0);

    // $t1 := pack TestInvariants::R($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:43:9+8
    $t1 := $42_TestInvariants_R($t0);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t1));

    // trace_return[0]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:43:9+8
    assume {:print "$at(2,936,944)"} true;
    assume {:print "$track_return(0,0,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:44:5+1
    assume {:print "$at(2,949,950)"} true;
L1:

    // assert Eq<u64>(select TestInvariants::R.x($t1), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:46:9+22
    assume {:print "$at(2,985,1007)"} true;
    assert {:msg "assert_failed(2,985,1007): post-condition does not hold"}
      $IsEqual'u64'($x#$42_TestInvariants_R($t1), 1);

    // return $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:46:9+22
    $ret0 := $t1;
    return;

}

// fun TestInvariants::invalid_R_update [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:64:5+116
procedure {:timeLimit 40} $42_TestInvariants_invalid_R_update$verify() returns ($ret0: $42_TestInvariants_R)
{
    // declare local variables
    var $t0: $Mutation ($42_TestInvariants_R);
    var $t1: $42_TestInvariants_R;
    var $t2: int;
    var $t3: $Mutation ($42_TestInvariants_R);
    var $t4: int;
    var $t5: $42_TestInvariants_R;
    var $t6: $42_TestInvariants_R;
    var $temp_0'$42_TestInvariants_R': $42_TestInvariants_R;
    assume IsEmptyVec(p#$Mutation($t0));
    assume IsEmptyVec(p#$Mutation($t3));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t2 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:65:23+1
    assume {:print "$at(2,1314,1315)"} true;
    $t2 := 3;
    assume $IsValid'u64'($t2);

    // $t1 := pack TestInvariants::R($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:65:17+8
    $t1 := $42_TestInvariants_R($t2);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t1));

    // trace_local[t]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:65:13+1
    assume {:print "$at(2,1304,1305)"} true;
    assume {:print "$track_local(0,1,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:66:17+6
    assume {:print "$at(2,1334,1340)"} true;
    $t3 := $Mutation($Local(1), EmptyVec(), $t1);

    // trace_local[r]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:66:13+1
    $temp_0'$42_TestInvariants_R' := $Dereference($t3);
    assume {:print "$track_local(0,1,0):", $temp_0'$42_TestInvariants_R'} $temp_0'$42_TestInvariants_R' == $temp_0'$42_TestInvariants_R';

    // $t4 := 4 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:67:20+1
    assume {:print "$at(2,1361,1362)"} true;
    $t4 := 4;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestInvariants::R($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:67:14+8
    $t5 := $42_TestInvariants_R($t4);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t5)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t5));

    // write_ref($t3, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:67:9+13
    assume {:print "$at(2,1350,1363)"} true;
    $t3 := $UpdateMutation($t3, $t5);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t3)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t3)));

    // write_back[LocalRoot($t1)@]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:67:9+13
    assume {:print "$at(2,1350,1363)"} true;
    $t1 := $Dereference($t3);

    // $t6 := move($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:68:9+1
    assume {:print "$at(2,1373,1374)"} true;
    $t6 := $t1;

    // trace_return[0]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:68:9+1
    assume {:print "$track_return(0,1,0):", $t6} $t6 == $t6;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:69:5+1
    assume {:print "$at(2,1379,1380)"} true;
L1:

    // assert Eq<u64>(select TestInvariants::R.x($t6), 4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:71:9+22
    assume {:print "$at(2,1417,1439)"} true;
    assert {:msg "assert_failed(2,1417,1439): post-condition does not hold"}
      $IsEqual'u64'($x#$42_TestInvariants_R($t6), 4);

    // return $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:71:9+22
    $ret0 := $t6;
    return;

}

// fun TestInvariants::invalid_R_update_branching [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:93:5+426
procedure {:timeLimit 40} $42_TestInvariants_invalid_R_update_branching$verify(_$t0: bool) returns ($ret0: $42_TestInvariants_R)
{
    // declare local variables
    var $t1: $Mutation ($42_TestInvariants_R);
    var $t2: $42_TestInvariants_R;
    var $t3: $42_TestInvariants_R;
    var $t4: int;
    var $t5: int;
    var $t6: $Mutation ($42_TestInvariants_R);
    var $t7: $Mutation ($42_TestInvariants_R);
    var $t8: int;
    var $t9: $42_TestInvariants_R;
    var $t10: $42_TestInvariants_R;
    var $t0: bool;
    var $temp_0'$42_TestInvariants_R': $42_TestInvariants_R;
    var $temp_0'bool': bool;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t6));
    assume IsEmptyVec(p#$Mutation($t7));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:93:5+426
    assume {:print "$at(2,1815,2241)"} true;
    assume $IsValid'bool'($t0);

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:93:5+1
    assume {:print "$track_local(0,2,0):", $t0} $t0 == $t0;

    // $t4 := 5 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:94:24+1
    assume {:print "$at(2,1883,1884)"} true;
    $t4 := 5;
    assume $IsValid'u64'($t4);

    // $t2 := pack TestInvariants::R($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:94:18+8
    $t2 := $42_TestInvariants_R($t4);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t2)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t2));

    // trace_local[t1]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:94:13+2
    assume {:print "$at(2,1872,1874)"} true;
    assume {:print "$track_local(0,2,2):", $t2} $t2 == $t2;

    // $t5 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:95:24+1
    assume {:print "$at(2,1910,1911)"} true;
    $t5 := 3;
    assume $IsValid'u64'($t5);

    // $t3 := pack TestInvariants::R($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:95:18+8
    $t3 := $42_TestInvariants_R($t5);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t3)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t3));

    // trace_local[t2]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:95:13+2
    assume {:print "$at(2,1899,1901)"} true;
    assume {:print "$track_local(0,2,3):", $t3} $t3 == $t3;

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:97:9+255
    assume {:print "$at(2,1945,2200)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:97:9+255
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:97:9+255
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:99:17+7
    assume {:print "$at(2,2043,2050)"} true;
L0:

    // $t6 := borrow_local($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:99:17+7
    $t6 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t1 := $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:99:13+1
    $t1 := $t6;

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t6)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t6)));

    // trace_local[r]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:99:13+1
    assume {:print "$at(2,2039,2040)"} true;
    $temp_0'$42_TestInvariants_R' := $Dereference($t6);
    assume {:print "$track_local(0,2,1):", $temp_0'$42_TestInvariants_R'} $temp_0'$42_TestInvariants_R' == $temp_0'$42_TestInvariants_R';

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:99:13+11
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:102:17+7
    assume {:print "$at(2,2183,2190)"} true;
L2:

    // $t7 := borrow_local($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:102:17+7
    $t7 := $Mutation($Local(3), EmptyVec(), $t3);

    // $t1 := $t7 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:102:13+1
    $t1 := $t7;

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t7)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t7)));

    // trace_local[r]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:102:13+1
    assume {:print "$at(2,2179,2180)"} true;
    $temp_0'$42_TestInvariants_R' := $Dereference($t7);
    assume {:print "$track_local(0,2,1):", $temp_0'$42_TestInvariants_R'} $temp_0'$42_TestInvariants_R' == $temp_0'$42_TestInvariants_R';

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:104:20+1
    assume {:print "$at(2,2221,2222)"} true;
L3:

    // $t8 := 4 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:104:20+1
    $t8 := 4;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestInvariants::R($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:104:14+8
    $t9 := $42_TestInvariants_R($t8);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t9)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t9));

    // write_ref($t1, $t9) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:104:9+13
    assume {:print "$at(2,2210,2223)"} true;
    $t1 := $UpdateMutation($t1, $t9);

    // $t10 := read_ref($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:105:9+2
    assume {:print "$at(2,2233,2235)"} true;
    $t10 := $Dereference($t1);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t1)));

    // write_back[LocalRoot($t2)@]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:105:9+2
    assume {:print "$at(2,2233,2235)"} true;
    $t2 := $Dereference($t1);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t1)));

    // write_back[LocalRoot($t3)@]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:105:9+2
    assume {:print "$at(2,2233,2235)"} true;
    $t3 := $Dereference($t1);

    // trace_return[0]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:105:9+2
    assume {:print "$track_return(0,2,0):", $t10} $t10 == $t10;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:106:5+1
    assume {:print "$at(2,2240,2241)"} true;
L4:

    // return $t10 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:106:5+1
    $ret0 := $t10;
    return;

}

// fun TestInvariants::invalid_R_update_indirectly [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:84:5+111
procedure {:timeLimit 40} $42_TestInvariants_invalid_R_update_indirectly$verify() returns ($ret0: $42_TestInvariants_R)
{
    // declare local variables
    var $t0: $42_TestInvariants_R;
    var $t1: int;
    var $t2: $Mutation ($42_TestInvariants_R);
    var $t3: $Mutation (int);
    var $t4: int;
    var $t5: $42_TestInvariants_R;
    var $temp_0'$42_TestInvariants_R': $42_TestInvariants_R;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t3));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t1 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:85:21+1
    assume {:print "$at(2,1698,1699)"} true;
    $t1 := 3;
    assume $IsValid'u64'($t1);

    // $t0 := pack TestInvariants::R($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:85:17+6
    $t0 := $42_TestInvariants_R($t1);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t0));

    // trace_local[t]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:85:13+1
    assume {:print "$at(2,1690,1691)"} true;
    assume {:print "$track_local(0,3,0):", $t0} $t0 == $t0;

    // $t2 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:86:28+1
    assume {:print "$at(2,1729,1730)"} true;
    $t2 := $Mutation($Local(0), EmptyVec(), $t0);

    // $t3 := borrow_field<TestInvariants::R>.x($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:86:23+8
    $t3 := $ChildMutation($t2, 0, $x#$42_TestInvariants_R($Dereference($t2)));

    // TestInvariants::update_helper($t3) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:86:9+23
    call $t3 := $42_TestInvariants_update_helper($t3);
    if ($abort_flag) {
        assume {:print "$at(2,1710,1733)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(0,3):", $t4} $t4 == $t4;
        goto L2;
    }

    // write_back[Reference($t2).x]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:86:9+23
    $t2 := $UpdateMutation($t2, $Update'$42_TestInvariants_R'_x($Dereference($t2), $Dereference($t3)));

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t2)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t2)));

    // write_back[LocalRoot($t0)@]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:86:9+23
    assume {:print "$at(2,1710,1733)"} true;
    $t0 := $Dereference($t2);

    // $t5 := move($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:87:9+1
    assume {:print "$at(2,1743,1744)"} true;
    $t5 := $t0;

    // trace_return[0]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:87:9+1
    assume {:print "$track_return(0,3,0):", $t5} $t5 == $t5;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:88:5+1
    assume {:print "$at(2,1749,1750)"} true;
L1:

    // return $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:88:5+1
    $ret0 := $t5;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:88:5+1
L2:

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:88:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestInvariants::invalid_R_update_ref [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:74:5+113
procedure {:timeLimit 40} $42_TestInvariants_invalid_R_update_ref$verify() returns ($ret0: $42_TestInvariants_R)
{
    // declare local variables
    var $t0: $Mutation (int);
    var $t1: $42_TestInvariants_R;
    var $t2: int;
    var $t3: $Mutation ($42_TestInvariants_R);
    var $t4: $Mutation (int);
    var $t5: int;
    var $t6: $42_TestInvariants_R;
    var $temp_0'$42_TestInvariants_R': $42_TestInvariants_R;
    var $temp_0'u64': int;
    assume IsEmptyVec(p#$Mutation($t0));
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t4));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t2 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:75:21+1
    assume {:print "$at(2,1503,1504)"} true;
    $t2 := 3;
    assume $IsValid'u64'($t2);

    // $t1 := pack TestInvariants::R($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:75:17+6
    $t1 := $42_TestInvariants_R($t2);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t1));

    // trace_local[t]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:75:13+1
    assume {:print "$at(2,1495,1496)"} true;
    assume {:print "$track_local(0,4,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:76:22+1
    assume {:print "$at(2,1528,1529)"} true;
    $t3 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t4 := borrow_field<TestInvariants::R>.x($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:76:17+8
    $t4 := $ChildMutation($t3, 0, $x#$42_TestInvariants_R($Dereference($t3)));

    // trace_local[r]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:76:13+1
    $temp_0'u64' := $Dereference($t4);
    assume {:print "$track_local(0,4,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t5 := 4 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:77:14+1
    assume {:print "$at(2,1546,1547)"} true;
    $t5 := 4;
    assume $IsValid'u64'($t5);

    // write_ref($t4, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:77:9+6
    $t4 := $UpdateMutation($t4, $t5);

    // write_back[Reference($t3).x]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:77:9+6
    $t3 := $UpdateMutation($t3, $Update'$42_TestInvariants_R'_x($Dereference($t3), $Dereference($t4)));

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t3)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t3)));

    // write_back[LocalRoot($t1)@]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:77:9+6
    assume {:print "$at(2,1541,1547)"} true;
    $t1 := $Dereference($t3);

    // $t6 := move($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:78:9+1
    assume {:print "$at(2,1557,1558)"} true;
    $t6 := $t1;

    // trace_return[0]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:78:9+1
    assume {:print "$track_return(0,4,0):", $t6} $t6 == $t6;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:79:5+1
    assume {:print "$at(2,1563,1564)"} true;
L1:

    // assert Eq<u64>(select TestInvariants::R.x($t6), 4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:81:9+22
    assume {:print "$at(2,1605,1627)"} true;
    assert {:msg "assert_failed(2,1605,1627): post-condition does not hold"}
      $IsEqual'u64'($x#$42_TestInvariants_R($t6), 4);

    // return $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:81:9+22
    $ret0 := $t6;
    return;

}

// fun TestInvariants::lifetime_invalid_R [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:112:5+262
procedure {:timeLimit 40} $42_TestInvariants_lifetime_invalid_R$verify() returns ($ret0: $42_TestInvariants_R)
{
    // declare local variables
    var $t0: $42_TestInvariants_R;
    var $t1: $Mutation ($42_TestInvariants_R);
    var $t2: $Mutation (int);
    var $t3: int;
    var $t4: $Mutation ($42_TestInvariants_R);
    var $t5: $Mutation (int);
    var $t6: int;
    var $t7: $Mutation ($42_TestInvariants_R);
    var $t8: $Mutation (int);
    var $t9: int;
    var $t10: $42_TestInvariants_R;
    var $temp_0'$42_TestInvariants_R': $42_TestInvariants_R;
    var $temp_0'u64': int;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t8));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t3 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:113:23+1
    assume {:print "$at(2,2394,2395)"} true;
    $t3 := 3;
    assume $IsValid'u64'($t3);

    // $t0 := pack TestInvariants::R($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:113:17+8
    $t0 := $42_TestInvariants_R($t3);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t0));

    // trace_local[r]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:113:13+1
    assume {:print "$at(2,2384,2385)"} true;
    assume {:print "$track_local(0,5,0):", $t0} $t0 == $t0;

    // $t4 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:114:21+6
    assume {:print "$at(2,2418,2424)"} true;
    $t4 := $Mutation($Local(0), EmptyVec(), $t0);

    // trace_local[r_ref]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:114:13+5
    $temp_0'$42_TestInvariants_R' := $Dereference($t4);
    assume {:print "$track_local(0,5,1):", $temp_0'$42_TestInvariants_R'} $temp_0'$42_TestInvariants_R' == $temp_0'$42_TestInvariants_R';

    // $t5 := borrow_field<TestInvariants::R>.x($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:115:21+12
    assume {:print "$at(2,2446,2458)"} true;
    $t5 := $ChildMutation($t4, 0, $x#$42_TestInvariants_R($Dereference($t4)));

    // trace_local[x_ref]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:115:13+5
    $temp_0'u64' := $Dereference($t5);
    assume {:print "$track_local(0,5,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t6 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:116:18+1
    assume {:print "$at(2,2477,2478)"} true;
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // write_ref($t5, $t6) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:116:9+10
    $t5 := $UpdateMutation($t5, $t6);

    // write_back[Reference($t4).x]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:116:9+10
    $t4 := $UpdateMutation($t4, $Update'$42_TestInvariants_R'_x($Dereference($t4), $Dereference($t5)));

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t4)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t4)));

    // write_back[LocalRoot($t0)@]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:116:9+10
    assume {:print "$at(2,2468,2478)"} true;
    $t0 := $Dereference($t4);

    // $t7 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:118:17+6
    assume {:print "$at(2,2529,2535)"} true;
    $t7 := $Mutation($Local(0), EmptyVec(), $t0);

    // trace_local[r_ref]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:118:9+5
    $temp_0'$42_TestInvariants_R' := $Dereference($t7);
    assume {:print "$track_local(0,5,1):", $temp_0'$42_TestInvariants_R'} $temp_0'$42_TestInvariants_R' == $temp_0'$42_TestInvariants_R';

    // $t8 := borrow_field<TestInvariants::R>.x($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:119:17+12
    assume {:print "$at(2,2553,2565)"} true;
    $t8 := $ChildMutation($t7, 0, $x#$42_TestInvariants_R($Dereference($t7)));

    // trace_local[x_ref]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:119:9+5
    $temp_0'u64' := $Dereference($t8);
    assume {:print "$track_local(0,5,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t9 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:120:18+1
    assume {:print "$at(2,2584,2585)"} true;
    $t9 := 2;
    assume $IsValid'u64'($t9);

    // write_ref($t8, $t9) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:120:9+10
    $t8 := $UpdateMutation($t8, $t9);

    // write_back[Reference($t7).x]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:120:9+10
    $t7 := $UpdateMutation($t7, $Update'$42_TestInvariants_R'_x($Dereference($t7), $Dereference($t8)));

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t7)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t7)));

    // write_back[LocalRoot($t0)@]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:120:9+10
    assume {:print "$at(2,2575,2585)"} true;
    $t0 := $Dereference($t7);

    // $t10 := move($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:122:9+1
    assume {:print "$at(2,2596,2597)"} true;
    $t10 := $t0;

    // trace_return[0]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:122:9+1
    assume {:print "$track_return(0,5,0):", $t10} $t10 == $t10;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:123:5+1
    assume {:print "$at(2,2602,2603)"} true;
L1:

    // return $t10 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:123:5+1
    $ret0 := $t10;
    return;

}

// fun TestInvariants::lifetime_invalid_R_2 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:125:5+284
procedure {:timeLimit 40} $42_TestInvariants_lifetime_invalid_R_2$verify() returns ($ret0: $42_TestInvariants_R)
{
    // declare local variables
    var $t0: $42_TestInvariants_R;
    var $t1: $Mutation ($42_TestInvariants_R);
    var $t2: $Mutation (int);
    var $t3: int;
    var $t4: $Mutation ($42_TestInvariants_R);
    var $t5: $Mutation (int);
    var $t6: int;
    var $t7: int;
    var $t8: $Mutation ($42_TestInvariants_R);
    var $t9: $Mutation (int);
    var $t10: int;
    var $t11: $42_TestInvariants_R;
    var $temp_0'$42_TestInvariants_R': $42_TestInvariants_R;
    var $temp_0'u64': int;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t9));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t3 := 4 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:126:23+1
    assume {:print "$at(2,2664,2665)"} true;
    $t3 := 4;
    assume $IsValid'u64'($t3);

    // $t0 := pack TestInvariants::R($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:126:17+8
    $t0 := $42_TestInvariants_R($t3);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t0));

    // trace_local[r]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:126:13+1
    assume {:print "$at(2,2654,2655)"} true;
    assume {:print "$track_local(0,6,0):", $t0} $t0 == $t0;

    // $t4 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:127:21+6
    assume {:print "$at(2,2688,2694)"} true;
    $t4 := $Mutation($Local(0), EmptyVec(), $t0);

    // trace_local[r_ref]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:127:13+5
    $temp_0'$42_TestInvariants_R' := $Dereference($t4);
    assume {:print "$track_local(0,6,1):", $temp_0'$42_TestInvariants_R'} $temp_0'$42_TestInvariants_R' == $temp_0'$42_TestInvariants_R';

    // $t5 := borrow_field<TestInvariants::R>.x($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:128:21+12
    assume {:print "$at(2,2716,2728)"} true;
    $t5 := $ChildMutation($t4, 0, $x#$42_TestInvariants_R($Dereference($t4)));

    // trace_local[x_ref]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:128:13+5
    $temp_0'u64' := $Dereference($t5);
    assume {:print "$track_local(0,6,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t6 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:129:18+1
    assume {:print "$at(2,2747,2748)"} true;
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // write_ref($t5, $t6) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:129:9+10
    $t5 := $UpdateMutation($t5, $t6);

    // $t7 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:130:18+1
    assume {:print "$at(2,2767,2768)"} true;
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // write_ref($t5, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:130:9+10
    $t5 := $UpdateMutation($t5, $t7);

    // write_back[Reference($t4).x]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:130:9+10
    $t4 := $UpdateMutation($t4, $Update'$42_TestInvariants_R'_x($Dereference($t4), $Dereference($t5)));

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t4)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t4)));

    // write_back[LocalRoot($t0)@]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:130:9+10
    assume {:print "$at(2,2758,2768)"} true;
    $t0 := $Dereference($t4);

    // $t8 := borrow_local($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:132:17+6
    assume {:print "$at(2,2819,2825)"} true;
    $t8 := $Mutation($Local(0), EmptyVec(), $t0);

    // trace_local[r_ref]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:132:9+5
    $temp_0'$42_TestInvariants_R' := $Dereference($t8);
    assume {:print "$track_local(0,6,1):", $temp_0'$42_TestInvariants_R'} $temp_0'$42_TestInvariants_R' == $temp_0'$42_TestInvariants_R';

    // $t9 := borrow_field<TestInvariants::R>.x($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:133:17+12
    assume {:print "$at(2,2843,2855)"} true;
    $t9 := $ChildMutation($t8, 0, $x#$42_TestInvariants_R($Dereference($t8)));

    // trace_local[x_ref]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:133:9+5
    $temp_0'u64' := $Dereference($t9);
    assume {:print "$track_local(0,6,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t10 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:134:18+1
    assume {:print "$at(2,2874,2875)"} true;
    $t10 := 3;
    assume $IsValid'u64'($t10);

    // write_ref($t9, $t10) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:134:9+10
    $t9 := $UpdateMutation($t9, $t10);

    // write_back[Reference($t8).x]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:134:9+10
    $t8 := $UpdateMutation($t8, $Update'$42_TestInvariants_R'_x($Dereference($t8), $Dereference($t9)));

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t8)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t8)));

    // write_back[LocalRoot($t0)@]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:134:9+10
    assume {:print "$at(2,2865,2875)"} true;
    $t0 := $Dereference($t8);

    // $t11 := move($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:136:9+1
    assume {:print "$at(2,2886,2887)"} true;
    $t11 := $t0;

    // trace_return[0]($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:136:9+1
    assume {:print "$track_return(0,6,0):", $t11} $t11 == $t11;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:137:5+1
    assume {:print "$at(2,2892,2893)"} true;
L1:

    // return $t11 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:137:5+1
    $ret0 := $t11;
    return;

}

// fun TestInvariants::lifetime_invalid_S_branching [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:153:5+364
procedure {:timeLimit 40} $42_TestInvariants_lifetime_invalid_S_branching$verify(_$t0: bool) returns ($ret0: $42_TestInvariants_T, $ret1: $42_TestInvariants_S)
{
    // declare local variables
    var $t1: $Mutation (int);
    var $t2: $42_TestInvariants_T;
    var $t3: $Mutation ($42_TestInvariants_T);
    var $t4: $42_TestInvariants_S;
    var $t5: $Mutation ($42_TestInvariants_S);
    var $t6: $Mutation (int);
    var $t7: int;
    var $t8: int;
    var $t9: $Mutation ($42_TestInvariants_T);
    var $t10: $Mutation ($42_TestInvariants_S);
    var $t11: $Mutation (int);
    var $t12: $Mutation (int);
    var $t13: int;
    var $t14: bool;
    var $t15: bool;
    var $t16: int;
    var $t17: bool;
    var $t18: bool;
    var $t19: $42_TestInvariants_T;
    var $t20: $42_TestInvariants_S;
    var $t0: bool;
    var $temp_0'$42_TestInvariants_S': $42_TestInvariants_S;
    var $temp_0'$42_TestInvariants_T': $42_TestInvariants_T;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t6));
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t11));
    assume IsEmptyVec(p#$Mutation($t12));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:153:5+364
    assume {:print "$at(2,3061,3425)"} true;
    assume $IsValid'bool'($t0);

    // trace_local[cond]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:153:5+1
    assume {:print "$track_local(0,7,0):", $t0} $t0 == $t0;

    // $t7 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:154:21+1
    assume {:print "$at(2,3136,3137)"} true;
    $t7 := 3;
    assume $IsValid'u64'($t7);

    // $t2 := pack TestInvariants::T($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:154:15+8
    $t2 := $42_TestInvariants_T($t7);

    // assert Gt(select TestInvariants::T.x($t2), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:143:9+16
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:143:9+16
    assume {:print "$at(2,2952,2968)"} true;
    assert {:msg "assert_failed(2,2952,2968): data invariant does not hold"}
      ($x#$42_TestInvariants_T($t2) > 1);

    // trace_local[a]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:154:11+1
    assume {:print "$at(2,3126,3127)"} true;
    assume {:print "$track_local(0,7,2):", $t2} $t2 == $t2;

    // $t8 := 4 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:155:21+1
    assume {:print "$at(2,3160,3161)"} true;
    $t8 := 4;
    assume $IsValid'u64'($t8);

    // $t4 := pack TestInvariants::S($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:155:15+8
    $t4 := $42_TestInvariants_S($t8);

    // assert Gt(select TestInvariants::S.y($t4), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:150:9+16
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:150:9+16
    assume {:print "$at(2,3033,3049)"} true;
    assert {:msg "assert_failed(2,3033,3049): data invariant does not hold"}
      ($y#$42_TestInvariants_S($t4) > 1);

    // trace_local[b]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:155:11+1
    assume {:print "$at(2,3150,3151)"} true;
    assume {:print "$track_local(0,7,4):", $t4} $t4 == $t4;

    // $t9 := borrow_local($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:156:19+6
    assume {:print "$at(2,3182,3188)"} true;
    $t9 := $Mutation($Local(2), EmptyVec(), $t2);

    // trace_local[a_ref]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:156:11+5
    $temp_0'$42_TestInvariants_T' := $Dereference($t9);
    assume {:print "$track_local(0,7,3):", $temp_0'$42_TestInvariants_T'} $temp_0'$42_TestInvariants_T' == $temp_0'$42_TestInvariants_T';

    // $t10 := borrow_local($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:157:19+6
    assume {:print "$at(2,3208,3214)"} true;
    $t10 := $Mutation($Local(4), EmptyVec(), $t4);

    // trace_local[b_ref]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:157:11+5
    $temp_0'$42_TestInvariants_S' := $Dereference($t10);
    assume {:print "$track_local(0,7,5):", $temp_0'$42_TestInvariants_S'} $temp_0'$42_TestInvariants_S' == $temp_0'$42_TestInvariants_S';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
    assume {:print "$at(2,3234,3282)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
L0:

    // assert Gt(select TestInvariants::S.y($t10), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:150:9+16
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:150:9+16
    assume {:print "$at(2,3033,3049)"} true;
    assert {:msg "assert_failed(2,3033,3049): data invariant does not hold"}
      ($y#$42_TestInvariants_S($Dereference($t10)) > 1);

    // destroy($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
    assume {:print "$at(2,3234,3282)"} true;

    // $t11 := borrow_field<TestInvariants::T>.x($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:31+12
    $t11 := $ChildMutation($t9, 0, $x#$42_TestInvariants_T($Dereference($t9)));

    // $t1 := $t11 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
    $t1 := $t11;

    // trace_local[tmp#$1]($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
    $temp_0'u64' := $Dereference($t11);
    assume {:print "$track_local(0,7,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
L2:

    // assert Gt(select TestInvariants::T.x($t9), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:143:9+16
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:143:9+16
    assume {:print "$at(2,2952,2968)"} true;
    assert {:msg "assert_failed(2,2952,2968): data invariant does not hold"}
      ($x#$42_TestInvariants_T($Dereference($t9)) > 1);

    // destroy($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
    assume {:print "$at(2,3234,3282)"} true;

    // $t12 := borrow_field<TestInvariants::S>.y($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:53+12
    $t12 := $ChildMutation($t10, 0, $y#$42_TestInvariants_S($Dereference($t10)));

    // $t1 := $t12 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
    $t1 := $t12;

    // trace_local[tmp#$1]($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
    $temp_0'u64' := $Dereference($t12);
    assume {:print "$track_local(0,7,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:19+48
L3:

    // trace_local[x_ref]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:158:11+5
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,7,6):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // if ($t0) goto L4 else goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:160:7+113
    assume {:print "$at(2,3291,3404)"} true;
    if ($t0) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:160:7+113
L5:

    // goto L6 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:160:7+113
    goto L6;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:20+1
    assume {:print "$at(2,3322,3323)"} true;
L4:

    // $t13 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:20+1
    $t13 := 2;
    assume $IsValid'u64'($t13);

    // write_ref($t1, $t13) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
    $t1 := $UpdateMutation($t1, $t13);

    // $t14 := is_parent[Reference($t9).x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
    $t14 := $IsParentMutation($t9, 0, $t1);

    // if ($t14) goto L8 else goto L9 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
    if ($t14) { goto L8; } else { goto L9; }

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
L8:

    // write_back[Reference($t9).x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
    $t9 := $UpdateMutation($t9, $Update'$42_TestInvariants_T'_x($Dereference($t9), $Dereference($t1)));

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
L9:

    // $t15 := is_parent[Reference($t10).y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
    $t15 := $IsParentMutation($t10, 0, $t1);

    // if ($t15) goto L10 else goto L17 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
    if ($t15) { goto L10; } else { goto L17; }

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
L10:

    // write_back[Reference($t10).y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
    $t10 := $UpdateMutation($t10, $Update'$42_TestInvariants_S'_y($Dereference($t10), $Dereference($t1)));

    // label L11 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
L11:

    // assert Gt(select TestInvariants::T.x($t9), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:143:9+16
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:143:9+16
    assume {:print "$at(2,2952,2968)"} true;
    assert {:msg "assert_failed(2,2952,2968): data invariant does not hold"}
      ($x#$42_TestInvariants_T($Dereference($t9)) > 1);

    // write_back[LocalRoot($t2)@]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
    assume {:print "$at(2,3313,3323)"} true;
    $t2 := $Dereference($t9);

    // assert Gt(select TestInvariants::S.y($t10), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:150:9+16
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:150:9+16
    assume {:print "$at(2,3033,3049)"} true;
    assert {:msg "assert_failed(2,3033,3049): data invariant does not hold"}
      ($y#$42_TestInvariants_S($Dereference($t10)) > 1);

    // write_back[LocalRoot($t4)@]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:11+10
    assume {:print "$at(2,3313,3323)"} true;
    $t4 := $Dereference($t10);

    // goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:161:21+1
    goto L7;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:20+1
    assume {:print "$at(2,3359,3360)"} true;
L6:

    // $t16 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:20+1
    $t16 := 0;
    assume $IsValid'u64'($t16);

    // write_ref($t1, $t16) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
    $t1 := $UpdateMutation($t1, $t16);

    // $t17 := is_parent[Reference($t9).x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
    $t17 := $IsParentMutation($t9, 0, $t1);

    // if ($t17) goto L12 else goto L13 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
    if ($t17) { goto L12; } else { goto L13; }

    // label L12 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
L12:

    // write_back[Reference($t9).x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
    $t9 := $UpdateMutation($t9, $Update'$42_TestInvariants_T'_x($Dereference($t9), $Dereference($t1)));

    // label L13 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
L13:

    // $t18 := is_parent[Reference($t10).y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
    $t18 := $IsParentMutation($t10, 0, $t1);

    // if ($t18) goto L14 else goto L18 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
    if ($t18) { goto L14; } else { goto L18; }

    // label L14 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
L14:

    // write_back[Reference($t10).y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
    $t10 := $UpdateMutation($t10, $Update'$42_TestInvariants_S'_y($Dereference($t10), $Dereference($t1)));

    // label L15 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
L15:

    // assert Gt(select TestInvariants::T.x($t9), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:143:9+16
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:143:9+16
    assume {:print "$at(2,2952,2968)"} true;
    assert {:msg "assert_failed(2,2952,2968): data invariant does not hold"}
      ($x#$42_TestInvariants_T($Dereference($t9)) > 1);

    // write_back[LocalRoot($t2)@]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
    assume {:print "$at(2,3350,3360)"} true;
    $t2 := $Dereference($t9);

    // assert Gt(select TestInvariants::S.y($t10), 1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:150:9+16
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:150:9+16
    assume {:print "$at(2,3033,3049)"} true;
    assert {:msg "assert_failed(2,3033,3049): data invariant does not hold"}
      ($y#$42_TestInvariants_S($Dereference($t10)) > 1);

    // write_back[LocalRoot($t4)@]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:163:11+10
    assume {:print "$at(2,3350,3360)"} true;
    $t4 := $Dereference($t10);

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:166:8+1
    assume {:print "$at(2,3414,3415)"} true;
L7:

    // $t19 := move($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:166:8+1
    $t19 := $t2;

    // $t20 := move($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:166:11+1
    $t20 := $t4;

    // trace_return[0]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:166:7+6
    assume {:print "$track_return(0,7,0):", $t19} $t19 == $t19;

    // trace_return[1]($t20) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:166:7+6
    assume {:print "$track_return(0,7,1):", $t20} $t20 == $t20;

    // label L16 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:167:5+1
    assume {:print "$at(2,3424,3425)"} true;
L16:

    // return ($t19, $t20) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:167:5+1
    $ret0 := $t19;
    $ret1 := $t20;
    return;

    // label L17 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L17:

    // destroy($t1) at <internal>:1:1+10

    // goto L11 at <internal>:1:1+10
    goto L11;

    // label L18 at <internal>:1:1+10
L18:

    // destroy($t1) at <internal>:1:1+10

    // goto L15 at <internal>:1:1+10
    goto L15;

}

// fun TestInvariants::update_helper [baseline] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:89:5+54
procedure {:inline 1} $42_TestInvariants_update_helper(_$t0: $Mutation (int)) returns ($ret0: $Mutation (int))
{
    // declare local variables
    var $t1: int;
    var $t0: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[r]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:89:5+1
    assume {:print "$at(2,1755,1756)"} true;
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,8,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t1 := 4 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:90:14+1
    assume {:print "$at(2,1801,1802)"} true;
    $t1 := 4;
    assume $IsValid'u64'($t1);

    // write_ref($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:90:9+6
    $t0 := $UpdateMutation($t0, $t1);

    // trace_local[r]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:90:15+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,8,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:91:5+1
    assume {:print "$at(2,1808,1809)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:91:5+1
    $ret0 := $t0;
    return;

}

// fun TestInvariants::update_helper [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:89:5+54
procedure {:timeLimit 40} $42_TestInvariants_update_helper$verify(_$t0: $Mutation (int)) returns ($ret0: $Mutation (int))
{
    // declare local variables
    var $t1: int;
    var $t0: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:89:5+54
    assume {:print "$at(2,1755,1809)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // trace_local[r]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:89:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,8,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t1 := 4 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:90:14+1
    assume {:print "$at(2,1801,1802)"} true;
    $t1 := 4;
    assume $IsValid'u64'($t1);

    // write_ref($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:90:9+6
    $t0 := $UpdateMutation($t0, $t1);

    // trace_local[r]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:90:15+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,8,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:91:5+1
    assume {:print "$at(2,1808,1809)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:91:5+1
    $ret0 := $t0;
    return;

}

// fun TestInvariants::valid_R_pack [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:35:5+46
procedure {:timeLimit 40} $42_TestInvariants_valid_R_pack$verify() returns ($ret0: $42_TestInvariants_R)
{
    // declare local variables
    var $t0: int;
    var $t1: $42_TestInvariants_R;
    var $temp_0'$42_TestInvariants_R': $42_TestInvariants_R;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:36:15+1
    assume {:print "$at(2,827,828)"} true;
    $t0 := 2;
    assume $IsValid'u64'($t0);

    // $t1 := pack TestInvariants::R($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:36:9+8
    $t1 := $42_TestInvariants_R($t0);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t1));

    // trace_return[0]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:36:9+8
    assume {:print "$at(2,821,829)"} true;
    assume {:print "$track_return(0,9,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:37:5+1
    assume {:print "$at(2,834,835)"} true;
L1:

    // assert Eq<u64>(select TestInvariants::R.x($t1), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:39:9+22
    assume {:print "$at(2,868,890)"} true;
    assert {:msg "assert_failed(2,868,890): post-condition does not hold"}
      $IsEqual'u64'($x#$42_TestInvariants_R($t1), 2);

    // return $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:39:9+22
    $ret0 := $t1;
    return;

}

// fun TestInvariants::valid_R_update [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:54:5+114
procedure {:timeLimit 40} $42_TestInvariants_valid_R_update$verify() returns ($ret0: $42_TestInvariants_R)
{
    // declare local variables
    var $t0: $Mutation ($42_TestInvariants_R);
    var $t1: $42_TestInvariants_R;
    var $t2: int;
    var $t3: $Mutation ($42_TestInvariants_R);
    var $t4: int;
    var $t5: $42_TestInvariants_R;
    var $t6: $42_TestInvariants_R;
    var $temp_0'$42_TestInvariants_R': $42_TestInvariants_R;
    assume IsEmptyVec(p#$Mutation($t0));
    assume IsEmptyVec(p#$Mutation($t3));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t2 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:55:23+1
    assume {:print "$at(2,1129,1130)"} true;
    $t2 := 3;
    assume $IsValid'u64'($t2);

    // $t1 := pack TestInvariants::R($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:55:17+8
    $t1 := $42_TestInvariants_R($t2);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t1));

    // trace_local[t]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:55:13+1
    assume {:print "$at(2,1119,1120)"} true;
    assume {:print "$track_local(0,10,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:56:17+6
    assume {:print "$at(2,1149,1155)"} true;
    $t3 := $Mutation($Local(1), EmptyVec(), $t1);

    // trace_local[r]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:56:13+1
    $temp_0'$42_TestInvariants_R' := $Dereference($t3);
    assume {:print "$track_local(0,10,0):", $temp_0'$42_TestInvariants_R'} $temp_0'$42_TestInvariants_R' == $temp_0'$42_TestInvariants_R';

    // $t4 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:57:20+1
    assume {:print "$at(2,1176,1177)"} true;
    $t4 := 2;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestInvariants::R($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:57:14+8
    $t5 := $42_TestInvariants_R($t4);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t5)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($t5));

    // write_ref($t3, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:57:9+13
    assume {:print "$at(2,1165,1178)"} true;
    $t3 := $UpdateMutation($t3, $t5);

    // assert TestInvariants::greater_one(select TestInvariants::R.x($t3)) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:16:9+25
    assume {:print "$at(2,248,273)"} true;
    assert {:msg "assert_failed(2,248,273): data invariant does not hold"}
      $42_TestInvariants_greater_one($x#$42_TestInvariants_R($Dereference($t3)));

    // write_back[LocalRoot($t1)@]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:57:9+13
    assume {:print "$at(2,1165,1178)"} true;
    $t1 := $Dereference($t3);

    // $t6 := move($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:58:9+1
    assume {:print "$at(2,1188,1189)"} true;
    $t6 := $t1;

    // trace_return[0]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:58:9+1
    assume {:print "$track_return(0,10,0):", $t6} $t6 == $t6;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:59:5+1
    assume {:print "$at(2,1194,1195)"} true;
L1:

    // assert Eq<u64>(select TestInvariants::R.x($t6), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:61:9+22
    assume {:print "$at(2,1230,1252)"} true;
    assert {:msg "assert_failed(2,1230,1252): post-condition does not hold"}
      $IsEqual'u64'($x#$42_TestInvariants_R($t6), 2);

    // return $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/invariants.move:61:9+22
    $ret0 := $t6;
    return;

}
