
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

// struct A::S at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:4:5+39
type {:datatype} $0_A_S;
function {:constructor} $0_A_S($x: int): $0_A_S;
function {:inline} $Update'$0_A_S'_x(s: $0_A_S, x: int): $0_A_S {
    $0_A_S(x)
}
function $IsValid'$0_A_S'(s: $0_A_S): bool {
    $IsValid'u64'($x#$0_A_S(s))
}
function {:inline} $IsEqual'$0_A_S'(s1: $0_A_S, s2: $0_A_S): bool {
    s1 == s2
}
var $0_A_S_$memory: $Memory $0_A_S;

// fun A::mutate_at [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:17:5+115
procedure {:timeLimit 40} $0_A_mutate_at$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: $Mutation ($0_A_S);
    var $t2: $Mutation ($0_A_S);
    var $t3: int;
    var $t4: int;
    var $t5: $Mutation (int);
    var $t0: int;
    var $0_A_S_$modifies: [int]bool;
    var $temp_0'$0_A_S': $0_A_S;
    var $temp_0'address': int;
    var $0_A_S_$memory#1: $Memory $0_A_S;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t5));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:17:5+115
    assume {:print "$at(2,325,440)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<A::S>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:17:5+115
    assume (forall $a_0: int :: {$ResourceValue($0_A_S_$memory, $a_0)}(var $rsc := $ResourceValue($0_A_S_$memory, $a_0);
    ($IsValid'$0_A_S'($rsc))));

    // assume CanModify<A::S>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:25:9+25
    assume {:print "$at(2,576,601)"} true;
    assume $0_A_S_$modifies[$t0];

    // @1 := save_mem(A::S) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:25:9+25
    $0_A_S_$memory#1 := $0_A_S_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:17:5+1
    assume {:print "$at(2,325,326)"} true;
    assume {:print "$track_local(1,0,0):", $t0} $t0 == $t0;

    // assert CanModify<A::S>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:18:17+17
    assume {:print "$at(2,390,407)"} true;
    assert {:msg "assert_failed(2,390,407): caller does not have permission to modify `A::S` at given address"}
      $0_A_S_$modifies[$t0];

    // $t2 := borrow_global<A::S>($t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:18:17+17
    if (!$ResourceExists($0_A_S_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t2 := $Mutation($Global($t0), EmptyVec(), $ResourceValue($0_A_S_$memory, $t0));
    }
    if ($abort_flag) {
        assume {:print "$at(2,390,407)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,0):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[s]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:18:13+1
    $temp_0'$0_A_S' := $Dereference($t2);
    assume {:print "$track_local(1,0,1):", $temp_0'$0_A_S'} $temp_0'$0_A_S' == $temp_0'$0_A_S';

    // $t4 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:19:15+1
    assume {:print "$at(2,432,433)"} true;
    $t4 := 2;
    assume $IsValid'u64'($t4);

    // $t5 := borrow_field<A::S>.x($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:19:9+3
    $t5 := $ChildMutation($t2, 0, $x#$0_A_S($Dereference($t2)));

    // write_ref($t5, $t4) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:19:9+7
    $t5 := $UpdateMutation($t5, $t4);

    // write_back[Reference($t2).x]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:19:9+7
    $t2 := $UpdateMutation($t2, $Update'$0_A_S'_x($Dereference($t2), $Dereference($t5)));

    // write_back[A::S@]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:19:9+7
    $0_A_S_$memory := $ResourceUpdate($0_A_S_$memory, $GlobalLocationAddress($t2),
        $Dereference($t2));

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:20:5+1
    assume {:print "$at(2,439,440)"} true;
L1:

    // assert Not(Not(exists[@1]<A::S>($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:24:9+27
    assume {:print "$at(2,540,567)"} true;
    assert {:msg "assert_failed(2,540,567): function does not abort under this condition"}
      !!$ResourceExists($0_A_S_$memory#1, $t0);

    // assert Eq<u64>(select A::S.x(global<A::S>($t0)), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:23:9+31
    assume {:print "$at(2,500,531)"} true;
    assert {:msg "assert_failed(2,500,531): post-condition does not hold"}
      $IsEqual'u64'($x#$0_A_S($ResourceValue($0_A_S_$memory, $t0)), 2);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:23:9+31
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:20:5+1
    assume {:print "$at(2,439,440)"} true;
L2:

    // assert Not(exists[@1]<A::S>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:21:5+162
    assume {:print "$at(2,445,607)"} true;
    assert {:msg "assert_failed(2,445,607): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($0_A_S_$memory#1, $t0);

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:21:5+162
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun A::read_at [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:7:5+109
procedure {:timeLimit 40} $0_A_read_at$verify(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: $0_A_S;
    var $t2: $0_A_S;
    var $t3: int;
    var $t4: int;
    var $t0: int;
    var $temp_0'$0_A_S': $0_A_S;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    var $0_A_S_$memory#0: $Memory $0_A_S;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:14:17+6
    assume {:print "$at(2,285,291)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<A::S>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:14:17+6
    assume (forall $a_0: int :: {$ResourceValue($0_A_S_$memory, $a_0)}(var $rsc := $ResourceValue($0_A_S_$memory, $a_0);
    ($IsValid'$0_A_S'($rsc))));

    // @0 := save_mem(A::S) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:7:5+1
    assume {:print "$at(2,74,75)"} true;
    $0_A_S_$memory#0 := $0_A_S_$memory;

    // trace_local[addr]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:7:5+1
    assume {:print "$track_local(1,1,0):", $t0} $t0 == $t0;

    // $t2 := get_global<A::S>($t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:8:17+13
    assume {:print "$at(2,142,155)"} true;
    if (!$ResourceExists($0_A_S_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t2 := $ResourceValue($0_A_S_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(2,142,155)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[s]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:8:13+1
    assume {:print "$track_local(1,1,1):", $t2} $t2 == $t2;

    // $t4 := get_field<A::S>.x($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:9:9+3
    assume {:print "$at(2,174,177)"} true;
    $t4 := $x#$0_A_S($t2);

    // trace_return[0]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:9:9+3
    assume {:print "$track_return(1,1,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:10:5+1
    assume {:print "$at(2,182,183)"} true;
L1:

    // assert Not(Not(exists[@0]<A::S>($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:13:9+27
    assume {:print "$at(2,241,268)"} true;
    assert {:msg "assert_failed(2,241,268): function does not abort under this condition"}
      !!$ResourceExists($0_A_S_$memory#0, $t0);

    // assert Eq<u64>($t4, select A::S.x(global<A::S>($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:14:9+36
    assume {:print "$at(2,277,313)"} true;
    assert {:msg "assert_failed(2,277,313): post-condition does not hold"}
      $IsEqual'u64'($t4, $x#$0_A_S($ResourceValue($0_A_S_$memory, $t0)));

    // return $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:14:9+36
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:10:5+1
    assume {:print "$at(2,182,183)"} true;
L2:

    // assert Not(exists[@0]<A::S>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:11:5+131
    assume {:print "$at(2,188,319)"} true;
    assert {:msg "assert_failed(2,188,319): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($0_A_S_$memory#0, $t0);

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:11:5+131
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// struct B::T at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:33:5+39
type {:datatype} $0_B_T;
function {:constructor} $0_B_T($x: int): $0_B_T;
function {:inline} $Update'$0_B_T'_x(s: $0_B_T, x: int): $0_B_T {
    $0_B_T(x)
}
function $IsValid'$0_B_T'(s: $0_B_T): bool {
    $IsValid'u64'($x#$0_B_T(s))
}
function {:inline} $IsEqual'$0_B_T'(s1: $0_B_T, s2: $0_B_T): bool {
    s1 == s2
}
var $0_B_T_$memory: $Memory $0_B_T;

// fun B::move_from_test [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:56:5+89
procedure {:timeLimit 40} $0_B_move_from_test$verify(_$t0: int) returns ($ret0: $0_B_T)
{
    // declare local variables
    var $t1: $0_B_T;
    var $t2: int;
    var $t0: int;
    var $0_B_T_$modifies: [int]bool;
    var $temp_0'$0_B_T': $0_B_T;
    var $temp_0'address': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:62:17+6
    assume {:print "$at(2,1457,1463)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<B::T>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:62:17+6
    assume (forall $a_0: int :: {$ResourceValue($0_B_T_$memory, $a_0)}(var $rsc := $ResourceValue($0_B_T_$memory, $a_0);
    ($IsValid'$0_B_T'($rsc))));

    // assume Eq<u64>(select B::T.x(global<B::T>($t0)), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:61:9+32
    assume {:print "$at(2,1408,1440)"} true;
    assume $IsEqual'u64'($x#$0_B_T($ResourceValue($0_B_T_$memory, $t0)), 2);

    // assume CanModify<B::T>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:63:9+25
    assume {:print "$at(2,1480,1505)"} true;
    assume $0_B_T_$modifies[$t0];

    // trace_local[addr]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:56:5+1
    assume {:print "$at(2,1254,1255)"} true;
    assume {:print "$track_local(2,0,0):", $t0} $t0 == $t0;

    // assert CanModify<B::T>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:57:9+9
    assume {:print "$at(2,1319,1328)"} true;
    assert {:msg "assert_failed(2,1319,1328): caller does not have permission to modify `B::T` at given address"}
      $0_B_T_$modifies[$t0];

    // $t1 := move_from<B::T>($t0) on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:57:9+9
    if (!$ResourceExists($0_B_T_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t1 := $ResourceValue($0_B_T_$memory, $t0);
        $0_B_T_$memory := $ResourceRemove($0_B_T_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1319,1328)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(2,0):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_return[0]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:57:9+18
    assume {:print "$track_return(2,0,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:58:5+1
    assume {:print "$at(2,1342,1343)"} true;
L1:

    // assert Eq<u64>(select B::T.x($t1), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:62:9+22
    assume {:print "$at(2,1449,1471)"} true;
    assert {:msg "assert_failed(2,1449,1471): post-condition does not hold"}
      $IsEqual'u64'($x#$0_B_T($t1), 2);

    // return $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:62:9+22
    $ret0 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:58:5+1
    assume {:print "$at(2,1342,1343)"} true;
L2:

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:58:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun B::move_to_test [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:47:5+87
procedure {:timeLimit 40} $0_B_move_to_test$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: $0_B_T;
    var $t3: int;
    var $t0: $signer;
    var $0_B_T_$modifies: [int]bool;
    var $temp_0'signer': $signer;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:47:5+87
    assume {:print "$at(2,971,1058)"} true;
    assume $IsValid'signer'($t0);

    // assume forall $rsc: ResourceDomain<B::T>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:47:5+87
    assume (forall $a_0: int :: {$ResourceValue($0_B_T_$memory, $a_0)}(var $rsc := $ResourceValue($0_B_T_$memory, $a_0);
    ($IsValid'$0_B_T'($rsc))));

    // assume CanModify<B::T>(Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:53:9+53
    assume {:print "$at(2,1189,1242)"} true;
    assume $0_B_T_$modifies[$1_Signer_spec_address_of($t0)];

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:47:5+1
    assume {:print "$at(2,971,972)"} true;
    assume {:print "$track_local(2,1,0):", $t0} $t0 == $t0;

    // $t1 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:48:34+1
    assume {:print "$at(2,1048,1049)"} true;
    $t1 := 2;
    assume $IsValid'u64'($t1);

    // $t2 := pack B::T($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:48:29+7
    $t2 := $0_B_T($t1);

    // assert CanModify<B::T>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:48:9+7
    assert {:msg "assert_failed(2,1023,1030): caller does not have permission to modify `B::T` at given address"}
      $0_B_T_$modifies[$1_Signer_spec_address_of($t0)];

    // move_to<B::T>($t2, $t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:48:9+7
    if ($ResourceExists($0_B_T_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $0_B_T_$memory := $ResourceUpdate($0_B_T_$memory, $1_Signer_spec_address_of($t0), $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1023,1030)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(2,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:49:5+1
    assume {:print "$at(2,1057,1058)"} true;
L1:

    // assert Eq<u64>(select B::T.x(global<B::T>(Signer::spec_address_of($t0))), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:52:9+59
    assume {:print "$at(2,1121,1180)"} true;
    assert {:msg "assert_failed(2,1121,1180): post-condition does not hold"}
      $IsEqual'u64'($x#$0_B_T($ResourceValue($0_B_T_$memory, $1_Signer_spec_address_of($t0))), 2);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:52:9+59
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:49:5+1
    assume {:print "$at(2,1057,1058)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:49:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun B::mutate_S_test [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:66:5+261
procedure {:timeLimit 40} $0_B_mutate_S_test$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: bool;
    var $t10: bool;
    var $t0: int;
    var $t1: int;
    var $0_A_S_$modifies: [int]bool;
    var $0_B_T_$modifies: [int]bool;
    var $temp_0'$0_A_S': $0_A_S;
    var $temp_0'$0_B_T': $0_B_T;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $0_A_S_$memory#2: $Memory $0_A_S;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:66:5+261
    assume {:print "$at(2,1517,1778)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:66:5+261
    assume $IsValid'address'($t1);

    // assume forall $rsc: ResourceDomain<A::S>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:66:5+261
    assume (forall $a_0: int :: {$ResourceValue($0_A_S_$memory, $a_0)}(var $rsc := $ResourceValue($0_A_S_$memory, $a_0);
    ($IsValid'$0_A_S'($rsc))));

    // assume forall $rsc: ResourceDomain<B::T>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:66:5+261
    assume (forall $a_0: int :: {$ResourceValue($0_B_T_$memory, $a_0)}(var $rsc := $ResourceValue($0_B_T_$memory, $a_0);
    ($IsValid'$0_B_T'($rsc))));

    // assume Neq<address>($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:76:9+24
    assume {:print "$at(2,1812,1836)"} true;
    assume !$IsEqual'address'($t0, $t1);

    // assume CanModify<A::S>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:80:9+47
    assume {:print "$at(2,1995,2042)"} true;
    assume $0_A_S_$modifies[$t0];

    // assume CanModify<B::T>($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:80:9+47
    assume $0_B_T_$modifies[$t1];

    // @2 := save_mem(A::S) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:80:9+47
    $0_A_S_$memory#2 := $0_A_S_$memory;

    // trace_local[addr1]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:66:5+1
    assume {:print "$at(2,1517,1518)"} true;
    assume {:print "$track_local(2,2,0):", $t0} $t0 == $t0;

    // trace_local[addr2]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:66:5+1
    assume {:print "$track_local(2,2,1):", $t1} $t1 == $t1;

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17
    // >> opaque call: $t4 := A::read_at($t1)
    assume {:print "$at(2,1604,1621)"} true;

    // $t4 := opaque begin: A::read_at($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17

    // assume Identical($t5, Not(exists<A::S>($t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17
    assume ($t5 == !$ResourceExists($0_A_S_$memory, $t1));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17
L4:

    // trace_abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17
    assume {:print "$at(2,1604,1621)"} true;
    assume {:print "$track_abort(2,2):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17
    goto L2;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17
L3:

    // assume WellFormed($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17
    assume $IsValid'u64'($t4);

    // assume Eq<u64>($t4, select A::S.x(global<A::S>($t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17
    assume $IsEqual'u64'($t4, $x#$0_A_S($ResourceValue($0_A_S_$memory, $t1)));

    // $t4 := opaque end: A::read_at($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:18+17

    // trace_local[x0]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:67:13+2
    assume {:print "$track_local(2,2,2):", $t4} $t4 == $t4;

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19
    // >> opaque call: A::mutate_at($t0)
    assume {:print "$at(2,1631,1650)"} true;

    // assert CanModify<A::S>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19
    assert {:msg "assert_failed(2,1631,1650): caller does not have permission to modify `A::S` at given address"}
      $0_A_S_$modifies[$t0];

    // opaque begin: A::mutate_at($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19

    // assume Identical($t7, Not(exists<A::S>($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19
    assume ($t7 == !$ResourceExists($0_A_S_$memory, $t0));

    // if ($t7) goto L6 else goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19
    if ($t7) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19
L6:

    // trace_abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19
    assume {:print "$at(2,1631,1650)"} true;
    assume {:print "$track_abort(2,2):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19
    goto L2;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19
L5:

    // modifies global<A::S>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$0_A_S';
        $0_A_S_$memory := $ResourceUpdate($0_A_S_$memory, $t0, $temp_0'$0_A_S');
    } else {
        $0_A_S_$memory := $ResourceRemove($0_A_S_$memory, $t0);
    }

    // assume Eq<u64>(select A::S.x(global<A::S>($t0)), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19
    assume $IsEqual'u64'($x#$0_A_S($ResourceValue($0_A_S_$memory, $t0)), 2);

    // opaque end: A::mutate_at($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:68:9+19

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17
    // >> opaque call: $t5 := A::read_at($t1)
    assume {:print "$at(2,1669,1686)"} true;

    // $t8 := opaque begin: A::read_at($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17

    // assume Identical($t9, Not(exists<A::S>($t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17
    assume ($t9 == !$ResourceExists($0_A_S_$memory, $t1));

    // if ($t9) goto L8 else goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17
    if ($t9) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17
L8:

    // trace_abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17
    assume {:print "$at(2,1669,1686)"} true;
    assume {:print "$track_abort(2,2):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17
    goto L2;

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17
L7:

    // assume WellFormed($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, select A::S.x(global<A::S>($t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17
    assume $IsEqual'u64'($t8, $x#$0_A_S($ResourceValue($0_A_S_$memory, $t1)));

    // $t8 := opaque end: A::read_at($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:18+17

    // trace_local[x1]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:69:13+2
    assume {:print "$track_local(2,2,3):", $t8} $t8 == $t8;

    // assert Eq<u64>($t4, $t8) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:71:13+16
    assume {:print "$at(2,1715,1731)"} true;
    assert {:msg "assert_failed(2,1715,1731): unknown assertion failed"}
      $IsEqual'u64'($t4, $t8);

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21
    // >> opaque call: B::mutate_at_test($t1)
    assume {:print "$at(2,1751,1772)"} true;

    // assert CanModify<B::T>($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21
    assert {:msg "assert_failed(2,1751,1772): caller does not have permission to modify `B::T` at given address"}
      $0_B_T_$modifies[$t1];

    // opaque begin: B::mutate_at_test($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21

    // havoc[val]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21
    havoc $t10;
    assume $IsValid'bool'($t10);

    // if ($t10) goto L10 else goto L9 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21
    if ($t10) { goto L10; } else { goto L9; }

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21
L10:

    // trace_abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21
    assume {:print "$at(2,1751,1772)"} true;
    assume {:print "$track_abort(2,2):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21
    goto L2;

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21
L9:

    // modifies global<B::T>($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$0_B_T';
        $0_B_T_$memory := $ResourceUpdate($0_B_T_$memory, $t1, $temp_0'$0_B_T');
    } else {
        $0_B_T_$memory := $ResourceRemove($0_B_T_$memory, $t1);
    }

    // assume Eq<u64>(select B::T.x(global<B::T>($t1)), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21
    assume $IsEqual'u64'($x#$0_B_T($ResourceValue($0_B_T_$memory, $t1)), 2);

    // opaque end: B::mutate_at_test($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:73:9+21

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:74:5+1
    assume {:print "$at(2,1777,1778)"} true;
L1:

    // assert Eq<A::S>(global<A::S>($t1), global[@2]<A::S>($t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:77:9+56
    assume {:print "$at(2,1845,1901)"} true;
    assert {:msg "assert_failed(2,1845,1901): post-condition does not hold"}
      $IsEqual'$0_A_S'($ResourceValue($0_A_S_$memory, $t1), $ResourceValue($0_A_S_$memory#2, $t1));

    // assert Eq<u64>(select A::S.x(global<A::S>($t0)), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:78:9+35
    assume {:print "$at(2,1910,1945)"} true;
    assert {:msg "assert_failed(2,1910,1945): post-condition does not hold"}
      $IsEqual'u64'($x#$0_A_S($ResourceValue($0_A_S_$memory, $t0)), 2);

    // assert Eq<u64>(select B::T.x(global<B::T>($t1)), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:79:9+32
    assume {:print "$at(2,1954,1986)"} true;
    assert {:msg "assert_failed(2,1954,1986): post-condition does not hold"}
      $IsEqual'u64'($x#$0_B_T($ResourceValue($0_B_T_$memory, $t1)), 2);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:79:9+32
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:74:5+1
    assume {:print "$at(2,1777,1778)"} true;
L2:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:74:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun B::mutate_at_test [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:37:5+120
procedure {:timeLimit 40} $0_B_mutate_at_test$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: $Mutation ($0_B_T);
    var $t2: $Mutation ($0_B_T);
    var $t3: int;
    var $t4: int;
    var $t5: $Mutation (int);
    var $t0: int;
    var $0_B_T_$modifies: [int]bool;
    var $temp_0'$0_B_T': $0_B_T;
    var $temp_0'address': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t5));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:37:5+120
    assume {:print "$at(2,709,829)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<B::T>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:37:5+120
    assume (forall $a_0: int :: {$ResourceValue($0_B_T_$memory, $a_0)}(var $rsc := $ResourceValue($0_B_T_$memory, $a_0);
    ($IsValid'$0_B_T'($rsc))));

    // assume CanModify<B::T>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:44:9+25
    assume {:print "$at(2,934,959)"} true;
    assume $0_B_T_$modifies[$t0];

    // trace_local[addr]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:37:5+1
    assume {:print "$at(2,709,710)"} true;
    assume {:print "$track_local(2,3,0):", $t0} $t0 == $t0;

    // assert CanModify<B::T>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:38:17+17
    assume {:print "$at(2,779,796)"} true;
    assert {:msg "assert_failed(2,779,796): caller does not have permission to modify `B::T` at given address"}
      $0_B_T_$modifies[$t0];

    // $t2 := borrow_global<B::T>($t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:38:17+17
    if (!$ResourceExists($0_B_T_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t2 := $Mutation($Global($t0), EmptyVec(), $ResourceValue($0_B_T_$memory, $t0));
    }
    if ($abort_flag) {
        assume {:print "$at(2,779,796)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(2,3):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[t]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:38:13+1
    $temp_0'$0_B_T' := $Dereference($t2);
    assume {:print "$track_local(2,3,1):", $temp_0'$0_B_T'} $temp_0'$0_B_T' == $temp_0'$0_B_T';

    // $t4 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:39:15+1
    assume {:print "$at(2,821,822)"} true;
    $t4 := 2;
    assume $IsValid'u64'($t4);

    // $t5 := borrow_field<B::T>.x($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:39:9+3
    $t5 := $ChildMutation($t2, 0, $x#$0_B_T($Dereference($t2)));

    // write_ref($t5, $t4) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:39:9+7
    $t5 := $UpdateMutation($t5, $t4);

    // write_back[Reference($t2).x]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:39:9+7
    $t2 := $UpdateMutation($t2, $Update'$0_B_T'_x($Dereference($t2), $Dereference($t5)));

    // write_back[B::T@]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:39:9+7
    $0_B_T_$memory := $ResourceUpdate($0_B_T_$memory, $GlobalLocationAddress($t2),
        $Dereference($t2));

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:40:5+1
    assume {:print "$at(2,828,829)"} true;
L1:

    // assert Eq<u64>(select B::T.x(global<B::T>($t0)), 2) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:43:9+31
    assume {:print "$at(2,894,925)"} true;
    assert {:msg "assert_failed(2,894,925): post-condition does not hold"}
      $IsEqual'u64'($x#$0_B_T($ResourceValue($0_B_T_$memory, $t0)), 2);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:43:9+31
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:40:5+1
    assume {:print "$at(2,828,829)"} true;
L2:

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/ModifiesTest.move:40:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}
