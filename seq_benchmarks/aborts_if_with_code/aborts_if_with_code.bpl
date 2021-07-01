
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


// fun TestAbortsIfWithCode::aborts_if_with_code_mixed [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:56:5+153
procedure {:timeLimit 40} $42_TestAbortsIfWithCode_aborts_if_with_code_mixed$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:56:5+153
    assume {:print "$at(2,1359,1512)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:56:5+1
    assume {:print "$track_local(0,0,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:57:18+1
    assume {:print "$at(2,1416,1417)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := ==($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:57:15+2
    $t2 := $IsEqual'u64'($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:57:9+44
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:57:9+44
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:57:9+44
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:58:18+3
    assume {:print "$at(2,1438,1441)"} true;
L0:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:58:18+3
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:58:13+8
    assume {:print "$at(2,1433,1441)"} true;
    assume {:print "$track_abort(0,0):", $t3} $t3 == $t3;

    // $t4 := move($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:58:13+8
    $t4 := $t3;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:58:13+8
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:60:13+1
    assume {:print "$at(2,1465,1466)"} true;
L2:

    // $t5 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:60:18+1
    $t5 := 2;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:60:15+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // if ($t6) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:60:9+44
    if ($t6) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:60:9+44
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:60:9+44
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:61:18+3
    assume {:print "$at(2,1492,1495)"} true;
L3:

    // $t7 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:61:18+3
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // trace_abort($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:61:13+8
    assume {:print "$at(2,1487,1495)"} true;
    assume {:print "$track_abort(0,0):", $t7} $t7 == $t7;

    // $t4 := move($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:61:13+8
    $t4 := $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:61:13+8
    goto L7;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:62:10+1
    assume {:print "$at(2,1505,1506)"} true;
L5:

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:63:5+1
    assume {:print "$at(2,1511,1512)"} true;
L6:

    // assert Not(Eq<u64>($t0, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:65:9+17
    assume {:print "$at(2,1558,1575)"} true;
    assert {:msg "assert_failed(2,1558,1575): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 1);

    // assert Not(Eq<u64>($t0, 2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:66:9+24
    assume {:print "$at(2,1584,1608)"} true;
    assert {:msg "assert_failed(2,1584,1608): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 2);

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:66:9+24
    return;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:63:5+1
    assume {:print "$at(2,1511,1512)"} true;
L7:

    // assert Or(Eq<u64>($t0, 1), Eq<u64>($t0, 2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:64:5+97
    assume {:print "$at(2,1517,1614)"} true;
    assert {:msg "assert_failed(2,1517,1614): abort not covered by any of the `aborts_if` clauses"}
      ($IsEqual'u64'($t0, 1) || $IsEqual'u64'($t0, 2));

    // assert Or(Eq<u64>($t0, 1), And(Eq<u64>($t0, 2), Eq(2, $t4))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:64:5+97
    assert {:msg "assert_failed(2,1517,1614): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ($IsEqual'u64'($t0, 1) || ($IsEqual'u64'($t0, 2) && $IsEqual'u128'(2, $t4)));

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:64:5+97
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestAbortsIfWithCode::aborts_if_with_code_mixed_invalid [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:69:5+161
procedure {:timeLimit 40} $42_TestAbortsIfWithCode_aborts_if_with_code_mixed_invalid$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:69:5+161
    assume {:print "$at(2,1620,1781)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:69:5+1
    assume {:print "$track_local(0,1,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:70:18+1
    assume {:print "$at(2,1685,1686)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := ==($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:70:15+2
    $t2 := $IsEqual'u64'($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:70:9+44
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:70:9+44
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:70:9+44
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:71:18+3
    assume {:print "$at(2,1707,1710)"} true;
L0:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:71:18+3
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:71:13+8
    assume {:print "$at(2,1702,1710)"} true;
    assume {:print "$track_abort(0,1):", $t3} $t3 == $t3;

    // $t4 := move($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:71:13+8
    $t4 := $t3;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:71:13+8
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:73:13+1
    assume {:print "$at(2,1734,1735)"} true;
L2:

    // $t5 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:73:18+1
    $t5 := 2;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:73:15+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // if ($t6) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:73:9+44
    if ($t6) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:73:9+44
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:73:9+44
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:74:18+3
    assume {:print "$at(2,1761,1764)"} true;
L3:

    // $t7 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:74:18+3
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // trace_abort($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:74:13+8
    assume {:print "$at(2,1756,1764)"} true;
    assume {:print "$track_abort(0,1):", $t7} $t7 == $t7;

    // $t4 := move($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:74:13+8
    $t4 := $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:74:13+8
    goto L7;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:75:10+1
    assume {:print "$at(2,1774,1775)"} true;
L5:

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:76:5+1
    assume {:print "$at(2,1780,1781)"} true;
L6:

    // assert Not(Eq<u64>($t0, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:78:9+17
    assume {:print "$at(2,1835,1852)"} true;
    assert {:msg "assert_failed(2,1835,1852): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 1);

    // assert Not(Eq<u64>($t0, 2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:79:9+24
    assume {:print "$at(2,1861,1885)"} true;
    assert {:msg "assert_failed(2,1861,1885): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 2);

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:79:9+24
    return;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:76:5+1
    assume {:print "$at(2,1780,1781)"} true;
L7:

    // assert Or(Eq<u64>($t0, 1), Eq<u64>($t0, 2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:77:5+105
    assume {:print "$at(2,1786,1891)"} true;
    assert {:msg "assert_failed(2,1786,1891): abort not covered by any of the `aborts_if` clauses"}
      ($IsEqual'u64'($t0, 1) || $IsEqual'u64'($t0, 2));

    // assert Or(Eq<u64>($t0, 1), And(Eq<u64>($t0, 2), Eq(1, $t4))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:77:5+105
    assert {:msg "assert_failed(2,1786,1891): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ($IsEqual'u64'($t0, 1) || ($IsEqual'u64'($t0, 2) && $IsEqual'u128'(1, $t4)));

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:77:5+105
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestAbortsIfWithCode::aborts_with [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:85:5+139
procedure {:timeLimit 40} $42_TestAbortsIfWithCode_aborts_with$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:85:5+139
    assume {:print "$at(2,1934,2073)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:85:5+1
    assume {:print "$track_local(0,2,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:86:18+1
    assume {:print "$at(2,1977,1978)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := ==($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:86:15+2
    $t2 := $IsEqual'u64'($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:86:9+44
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:86:9+44
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:86:9+44
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:87:18+3
    assume {:print "$at(2,1999,2002)"} true;
L0:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:87:18+3
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:87:13+8
    assume {:print "$at(2,1994,2002)"} true;
    assume {:print "$track_abort(0,2):", $t3} $t3 == $t3;

    // $t4 := move($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:87:13+8
    $t4 := $t3;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:87:13+8
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:89:13+1
    assume {:print "$at(2,2026,2027)"} true;
L2:

    // $t5 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:89:18+1
    $t5 := 2;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:89:15+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // if ($t6) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:89:9+44
    if ($t6) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:89:9+44
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:89:9+44
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:90:18+3
    assume {:print "$at(2,2053,2056)"} true;
L3:

    // $t7 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:90:18+3
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // trace_abort($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:90:13+8
    assume {:print "$at(2,2048,2056)"} true;
    assume {:print "$track_abort(0,2):", $t7} $t7 == $t7;

    // $t4 := move($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:90:13+8
    $t4 := $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:90:13+8
    goto L7;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:91:10+1
    assume {:print "$at(2,2066,2067)"} true;
L5:

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:92:5+1
    assume {:print "$at(2,2072,2073)"} true;
L6:

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:92:5+1
    return;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:92:5+1
L7:

    // assert Or(Eq(1, $t4), Eq(2, $t4)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:93:5+49
    assume {:print "$at(2,2078,2127)"} true;
    assert {:msg "assert_failed(2,2078,2127): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ($IsEqual'u128'(1, $t4) || $IsEqual'u128'(2, $t4));

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:93:5+49
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestAbortsIfWithCode::aborts_with_invalid [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:97:5+147
procedure {:timeLimit 40} $42_TestAbortsIfWithCode_aborts_with_invalid$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:97:5+147
    assume {:print "$at(2,2133,2280)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:97:5+1
    assume {:print "$track_local(0,3,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:98:18+1
    assume {:print "$at(2,2184,2185)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := ==($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:98:15+2
    $t2 := $IsEqual'u64'($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:98:9+44
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:98:9+44
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:98:9+44
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:99:18+3
    assume {:print "$at(2,2206,2209)"} true;
L0:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:99:18+3
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:99:13+8
    assume {:print "$at(2,2201,2209)"} true;
    assume {:print "$track_abort(0,3):", $t3} $t3 == $t3;

    // $t4 := move($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:99:13+8
    $t4 := $t3;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:99:13+8
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:101:13+1
    assume {:print "$at(2,2233,2234)"} true;
L2:

    // $t5 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:101:18+1
    $t5 := 2;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:101:15+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // if ($t6) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:101:9+44
    if ($t6) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:101:9+44
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:101:9+44
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:102:18+3
    assume {:print "$at(2,2260,2263)"} true;
L3:

    // $t7 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:102:18+3
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // trace_abort($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:102:13+8
    assume {:print "$at(2,2255,2263)"} true;
    assume {:print "$track_abort(0,3):", $t7} $t7 == $t7;

    // $t4 := move($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:102:13+8
    $t4 := $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:102:13+8
    goto L7;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:103:10+1
    assume {:print "$at(2,2273,2274)"} true;
L5:

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:104:5+1
    assume {:print "$at(2,2279,2280)"} true;
L6:

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:104:5+1
    return;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:104:5+1
L7:

    // assert Or(Eq(1, $t4), Eq(3, $t4)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:105:5+57
    assume {:print "$at(2,2285,2342)"} true;
    assert {:msg "assert_failed(2,2285,2342): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ($IsEqual'u128'(1, $t4) || $IsEqual'u128'(3, $t4));

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:105:5+57
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestAbortsIfWithCode::aborts_with_mixed [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:109:5+145
procedure {:timeLimit 40} $42_TestAbortsIfWithCode_aborts_with_mixed$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:109:5+145
    assume {:print "$at(2,2348,2493)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:109:5+1
    assume {:print "$track_local(0,4,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:110:18+1
    assume {:print "$at(2,2397,2398)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := ==($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:110:15+2
    $t2 := $IsEqual'u64'($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:110:9+44
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:110:9+44
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:110:9+44
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:111:18+3
    assume {:print "$at(2,2419,2422)"} true;
L0:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:111:18+3
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:111:13+8
    assume {:print "$at(2,2414,2422)"} true;
    assume {:print "$track_abort(0,4):", $t3} $t3 == $t3;

    // $t4 := move($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:111:13+8
    $t4 := $t3;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:111:13+8
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:113:13+1
    assume {:print "$at(2,2446,2447)"} true;
L2:

    // $t5 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:113:18+1
    $t5 := 2;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:113:15+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // if ($t6) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:113:9+44
    if ($t6) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:113:9+44
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:113:9+44
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:114:18+3
    assume {:print "$at(2,2473,2476)"} true;
L3:

    // $t7 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:114:18+3
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // trace_abort($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:114:13+8
    assume {:print "$at(2,2468,2476)"} true;
    assume {:print "$track_abort(0,4):", $t7} $t7 == $t7;

    // $t4 := move($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:114:13+8
    $t4 := $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:114:13+8
    goto L7;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:115:10+1
    assume {:print "$at(2,2486,2487)"} true;
L5:

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:116:5+1
    assume {:print "$at(2,2492,2493)"} true;
L6:

    // assert Not(Eq<u64>($t0, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:119:9+24
    assume {:print "$at(2,2575,2599)"} true;
    assert {:msg "assert_failed(2,2575,2599): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 1);

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:119:9+24
    return;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:116:5+1
    assume {:print "$at(2,2492,2493)"} true;
L7:

    // assert Or(And(Eq<u64>($t0, 1), Eq(1, $t4)), Eq(2, $t4)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:117:5+130
    assume {:print "$at(2,2498,2628)"} true;
    assert {:msg "assert_failed(2,2498,2628): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (($IsEqual'u64'($t0, 1) && $IsEqual'u128'(1, $t4)) || $IsEqual'u128'(2, $t4));

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:117:5+130
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestAbortsIfWithCode::aborts_with_mixed_invalid [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:123:5+153
procedure {:timeLimit 40} $42_TestAbortsIfWithCode_aborts_with_mixed_invalid$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:123:5+153
    assume {:print "$at(2,2634,2787)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:123:5+1
    assume {:print "$track_local(0,5,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:124:18+1
    assume {:print "$at(2,2691,2692)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := ==($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:124:15+2
    $t2 := $IsEqual'u64'($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:124:9+44
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:124:9+44
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:124:9+44
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:125:18+3
    assume {:print "$at(2,2713,2716)"} true;
L0:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:125:18+3
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:125:13+8
    assume {:print "$at(2,2708,2716)"} true;
    assume {:print "$track_abort(0,5):", $t3} $t3 == $t3;

    // $t4 := move($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:125:13+8
    $t4 := $t3;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:125:13+8
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:127:13+1
    assume {:print "$at(2,2740,2741)"} true;
L2:

    // $t5 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:127:18+1
    $t5 := 2;
    assume $IsValid'u64'($t5);

    // $t6 := ==($t0, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:127:15+2
    $t6 := $IsEqual'u64'($t0, $t5);

    // if ($t6) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:127:9+44
    if ($t6) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:127:9+44
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:127:9+44
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:128:18+3
    assume {:print "$at(2,2767,2770)"} true;
L3:

    // $t7 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:128:18+3
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // trace_abort($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:128:13+8
    assume {:print "$at(2,2762,2770)"} true;
    assume {:print "$track_abort(0,5):", $t7} $t7 == $t7;

    // $t4 := move($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:128:13+8
    $t4 := $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:128:13+8
    goto L7;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:129:10+1
    assume {:print "$at(2,2780,2781)"} true;
L5:

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:130:5+1
    assume {:print "$at(2,2786,2787)"} true;
L6:

    // assert Not(Eq<u64>($t0, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:133:9+24
    assume {:print "$at(2,2877,2901)"} true;
    assert {:msg "assert_failed(2,2877,2901): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 1);

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:133:9+24
    return;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:130:5+1
    assume {:print "$at(2,2786,2787)"} true;
L7:

    // assert Or(And(Eq<u64>($t0, 1), Eq(1, $t4)), Eq(2, $t4)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:131:5+138
    assume {:print "$at(2,2792,2930)"} true;
    assert {:msg "assert_failed(2,2792,2930): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (($IsEqual'u64'($t0, 1) && $IsEqual'u128'(1, $t4)) || $IsEqual'u128'(2, $t4));

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:131:5+138
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestAbortsIfWithCode::conditional_abort [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:11:5+254
procedure {:timeLimit 40} $42_TestAbortsIfWithCode_conditional_abort$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:25:17+6
    assume {:print "$at(2,609,615)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:25:17+6
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:11:5+1
    assume {:print "$at(2,185,186)"} true;
    assume {:print "$track_local(0,6,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:11:5+1
    assume {:print "$track_local(0,6,1):", $t1} $t1 == $t1;

    // $t2 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:12:18+1
    assume {:print "$at(2,247,248)"} true;
    $t2 := 1;
    assume $IsValid'u64'($t2);

    // $t3 := ==($t0, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:12:15+2
    $t3 := $IsEqual'u64'($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:12:9+43
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:12:9+43
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:12:9+43
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:13:19+1
    assume {:print "$at(2,270,271)"} true;
L0:

    // $t4 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:13:19+1
    $t4 := 2;
    assume $IsValid'u64'($t4);

    // trace_abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:13:13+7
    assume {:print "$at(2,264,271)"} true;
    assume {:print "$track_abort(0,6):", $t4} $t4 == $t4;

    // $t5 := move($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:13:13+7
    $t5 := $t4;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:13:13+7
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:15:13+1
    assume {:print "$at(2,295,296)"} true;
L2:

    // $t6 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:15:18+1
    $t6 := 2;
    assume $IsValid'u64'($t6);

    // $t7 := ==($t1, $t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:15:15+2
    $t7 := $IsEqual'u64'($t1, $t6);

    // if ($t7) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:15:9+43
    if ($t7) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:15:9+43
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:15:9+43
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:16:19+1
    assume {:print "$at(2,323,324)"} true;
L3:

    // $t8 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:16:19+1
    $t8 := 3;
    assume $IsValid'u64'($t8);

    // trace_abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:16:13+7
    assume {:print "$at(2,317,324)"} true;
    assume {:print "$track_abort(0,6):", $t8} $t8 == $t8;

    // $t5 := move($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:16:13+7
    $t5 := $t8;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:16:13+7
    goto L7;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:19:9+1
    assume {:print "$at(2,428,429)"} true;
L5:

    // $t9 := +($t0, $t1) on_abort goto L7 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:19:11+1
    call $t9 := $AddU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,430,431)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(0,6):", $t5} $t5 == $t5;
        goto L7;
    }

    // trace_return[0]($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:19:9+5
    assume {:print "$track_return(0,6,0):", $t9} $t9 == $t9;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:20:5+1
    assume {:print "$at(2,438,439)"} true;
L6:

    // assert Not(Eq<u64>($t0, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:22:9+24
    assume {:print "$at(2,477,501)"} true;
    assert {:msg "assert_failed(2,477,501): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 1);

    // assert Not(Eq<u64>($t1, 2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:23:9+24
    assume {:print "$at(2,510,534)"} true;
    assert {:msg "assert_failed(2,510,534): function does not abort under this condition"}
      !$IsEqual'u64'($t1, 2);

    // assert Not(Gt(Add($t0, $t1), 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:24:9+49
    assume {:print "$at(2,543,592)"} true;
    assert {:msg "assert_failed(2,543,592): function does not abort under this condition"}
      !(($t0 + $t1) > 18446744073709551615);

    // assert Eq<u64>($t9, Add($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:25:9+24
    assume {:print "$at(2,601,625)"} true;
    assert {:msg "assert_failed(2,601,625): post-condition does not hold"}
      $IsEqual'u64'($t9, ($t0 + $t1));

    // return $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:25:9+24
    $ret0 := $t9;
    return;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:20:5+1
    assume {:print "$at(2,438,439)"} true;
L7:

    // assert Or(Or(Eq<u64>($t0, 1), Eq<u64>($t1, 2)), Gt(Add($t0, $t1), 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:21:5+187
    assume {:print "$at(2,444,631)"} true;
    assert {:msg "assert_failed(2,444,631): abort not covered by any of the `aborts_if` clauses"}
      (($IsEqual'u64'($t0, 1) || $IsEqual'u64'($t1, 2)) || (($t0 + $t1) > 18446744073709551615));

    // assert Or(Or(And(Eq<u64>($t0, 1), Eq(2, $t5)), And(Eq<u64>($t1, 2), Eq(3, $t5))), And(Gt(Add($t0, $t1), 18446744073709551615), Eq(-1, $t5))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:21:5+187
    assert {:msg "assert_failed(2,444,631): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((($IsEqual'u64'($t0, 1) && $IsEqual'u128'(2, $t5)) || ($IsEqual'u64'($t1, 2) && $IsEqual'u128'(3, $t5))) || ((($t0 + $t1) > 18446744073709551615) && $IsEqual'num'(-1, $t5)));

    // abort($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:21:5+187
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestAbortsIfWithCode::conditional_abort_invalid [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:29:5+174
procedure {:timeLimit 40} $42_TestAbortsIfWithCode_conditional_abort_invalid$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:41:17+6
    assume {:print "$at(2,1001,1007)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:41:17+6
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:29:5+1
    assume {:print "$at(2,693,694)"} true;
    assume {:print "$track_local(0,7,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:29:5+1
    assume {:print "$track_local(0,7,1):", $t1} $t1 == $t1;

    // $t2 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:30:18+1
    assume {:print "$at(2,763,764)"} true;
    $t2 := 1;
    assume $IsValid'u64'($t2);

    // $t3 := ==($t0, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:30:15+2
    $t3 := $IsEqual'u64'($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:30:9+43
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:30:9+43
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:30:9+43
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:31:19+1
    assume {:print "$at(2,786,787)"} true;
L0:

    // $t4 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:31:19+1
    $t4 := 2;
    assume $IsValid'u64'($t4);

    // trace_abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:31:13+7
    assume {:print "$at(2,780,787)"} true;
    assume {:print "$track_abort(0,7):", $t4} $t4 == $t4;

    // $t5 := move($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:31:13+7
    $t5 := $t4;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:31:13+7
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:33:13+1
    assume {:print "$at(2,811,812)"} true;
L2:

    // $t6 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:33:18+1
    $t6 := 2;
    assume $IsValid'u64'($t6);

    // $t7 := ==($t1, $t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:33:15+2
    $t7 := $IsEqual'u64'($t1, $t6);

    // if ($t7) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:33:9+43
    if ($t7) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:33:9+43
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:33:9+43
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:34:19+1
    assume {:print "$at(2,839,840)"} true;
L3:

    // $t8 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:34:19+1
    $t8 := 3;
    assume $IsValid'u64'($t8);

    // trace_abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:34:13+7
    assume {:print "$at(2,833,840)"} true;
    assume {:print "$track_abort(0,7):", $t8} $t8 == $t8;

    // $t5 := move($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:34:13+7
    $t5 := $t8;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:34:13+7
    goto L7;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:36:9+1
    assume {:print "$at(2,860,861)"} true;
L5:

    // trace_return[0]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:36:9+1
    assume {:print "$track_return(0,7,0):", $t0} $t0 == $t0;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:37:5+1
    assume {:print "$at(2,866,867)"} true;
L6:

    // assert Not(Eq<u64>($t0, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:39:9+24
    assume {:print "$at(2,913,937)"} true;
    assert {:msg "assert_failed(2,913,937): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 1);

    // assert Not(Eq<u64>($t1, 2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:40:9+24
    assume {:print "$at(2,960,984)"} true;
    assert {:msg "assert_failed(2,960,984): function does not abort under this condition"}
      !$IsEqual'u64'($t1, 2);

    // assert Eq<u64>($t0, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:41:9+20
    assume {:print "$at(2,993,1013)"} true;
    assert {:msg "assert_failed(2,993,1013): post-condition does not hold"}
      $IsEqual'u64'($t0, $t0);

    // return $t0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:41:9+20
    $ret0 := $t0;
    return;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:37:5+1
    assume {:print "$at(2,866,867)"} true;
L7:

    // assert Or(Eq<u64>($t0, 1), Eq<u64>($t1, 2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:38:5+147
    assume {:print "$at(2,872,1019)"} true;
    assert {:msg "assert_failed(2,872,1019): abort not covered by any of the `aborts_if` clauses"}
      ($IsEqual'u64'($t0, 1) || $IsEqual'u64'($t1, 2));

    // assert Or(And(Eq<u64>($t0, 1), Eq(1, $t5)), And(Eq<u64>($t1, 2), Eq(3, $t5))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:38:5+147
    assert {:msg "assert_failed(2,872,1019): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (($IsEqual'u64'($t0, 1) && $IsEqual'u128'(1, $t5)) || ($IsEqual'u64'($t1, 2) && $IsEqual'u128'(3, $t5)));

    // abort($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:38:5+147
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestAbortsIfWithCode::exec_failure_invalid [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:45:5+60
procedure {:timeLimit 40} $42_TestAbortsIfWithCode_exec_failure_invalid$verify(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:50:17+6
    assume {:print "$at(2,1229,1235)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:45:5+1
    assume {:print "$at(2,1073,1074)"} true;
    assume {:print "$track_local(0,8,0):", $t0} $t0 == $t0;

    // $t1 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:46:9+2
    assume {:print "$at(2,1121,1123)"} true;
    $t1 := 10;
    assume $IsValid'u64'($t1);

    // $t2 := /($t1, $t0) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:46:12+1
    call $t2 := $Div($t1, $t0);
    if ($abort_flag) {
        assume {:print "$at(2,1124,1125)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,8):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:46:9+6
    assume {:print "$track_return(0,8,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:47:5+1
    assume {:print "$at(2,1132,1133)"} true;
L1:

    // assert Not(Eq<u64>($t0, 0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:49:9+24
    assume {:print "$at(2,1174,1198)"} true;
    assert {:msg "assert_failed(2,1174,1198): function does not abort under this condition"}
      !$IsEqual'u64'($t0, 0);

    // assert Eq<u64>($t2, Div(10, $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:50:9+25
    assume {:print "$at(2,1221,1246)"} true;
    assert {:msg "assert_failed(2,1221,1246): post-condition does not hold"}
      $IsEqual'u64'($t2, (10 div $t0));

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:50:9+25
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:47:5+1
    assume {:print "$at(2,1132,1133)"} true;
L2:

    // assert Eq<u64>($t0, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:48:5+114
    assume {:print "$at(2,1138,1252)"} true;
    assert {:msg "assert_failed(2,1138,1252): abort not covered by any of the `aborts_if` clauses"}
      $IsEqual'u64'($t0, 0);

    // assert And(Eq<u64>($t0, 0), Eq(1, $t3)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:48:5+114
    assert {:msg "assert_failed(2,1138,1252): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ($IsEqual'u64'($t0, 0) && $IsEqual'u128'(1, $t3));

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/aborts_if_with_code.move:48:5+114
    $abort_code := $t3;
    $abort_flag := true;
    return;

}
