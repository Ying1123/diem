
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


// fun TestArithmetic::add_two_number [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:15:2+104
procedure {:timeLimit 40} $42_TestArithmetic_add_two_number$verify(_$t0: int, _$t1: int) returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:23:14+8
    assume {:print "$at(2,535,543)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:23:14+8
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:15:2+1
    assume {:print "$at(2,332,333)"} true;
    assume {:print "$track_local(0,0,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:15:2+1
    assume {:print "$track_local(0,0,1):", $t1} $t1 == $t1;

    // $t4 := +($t0, $t1) on_abort goto L2 with $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:16:20+1
    assume {:print "$at(2,400,401)"} true;
    call $t4 := $AddU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,400,401)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(0,0):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[res]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:16:7+3
    assume {:print "$track_local(0,0,2):", $t4} $t4 == $t4;

    // $t6 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:17:16+1
    assume {:print "$at(2,420,421)"} true;
    $t6 := 3;
    assume $IsValid'u64'($t6);

    // trace_return[0]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:18:3+8
    assume {:print "$at(2,425,433)"} true;
    assume {:print "$track_return(0,0,0):", $t6} $t6 == $t6;

    // trace_return[1]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:18:3+8
    assume {:print "$track_return(0,0,1):", $t4} $t4 == $t4;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:19:2+1
    assume {:print "$at(2,435,436)"} true;
L1:

    // assert Not(Gt(Add($t0, $t1), MaxU64())) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:21:6+28
    assume {:print "$at(2,465,493)"} true;
    assert {:msg "assert_failed(2,465,493): function does not abort under this condition"}
      !(($t0 + $t1) > $MAX_U64);

    // assert Eq<u64>($t6, 3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:22:6+22
    assume {:print "$at(2,499,521)"} true;
    assert {:msg "assert_failed(2,499,521): post-condition does not hold"}
      $IsEqual'u64'($t6, 3);

    // assert Eq<u64>($t4, Add($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:23:6+26
    assume {:print "$at(2,527,553)"} true;
    assert {:msg "assert_failed(2,527,553): post-condition does not hold"}
      $IsEqual'u64'($t4, ($t0 + $t1));

    // return ($t6, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:23:6+26
    $ret0 := $t6;
    $ret1 := $t4;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:19:2+1
    assume {:print "$at(2,435,436)"} true;
L2:

    // assert Gt(Add($t0, $t1), MaxU64()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:20:2+118
    assume {:print "$at(2,438,556)"} true;
    assert {:msg "assert_failed(2,438,556): abort not covered by any of the `aborts_if` clauses"}
      (($t0 + $t1) > $MAX_U64);

    // abort($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:20:2+118
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::arithmetic_ops [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:58:2+148
procedure {:timeLimit 40} $42_TestArithmetic_arithmetic_ops$verify(_$t0: int) returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:66:17+8
    assume {:print "$at(2,1497,1505)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:58:2+1
    assume {:print "$at(2,1253,1254)"} true;
    assume {:print "$track_local(0,1,0):", $t0} $t0 == $t0;

    // $t2 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:60:13+23
    assume {:print "$at(2,1326,1349)"} true;
    $t2 := 2;
    assume $IsValid'u64'($t2);

    // trace_local[c]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:60:9+1
    assume {:print "$track_local(0,1,1):", $t2} $t2 == $t2;

    // $t3 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:61:18+1
    assume {:print "$at(2,1368,1369)"} true;
    $t3 := 2;
    assume $IsValid'u64'($t3);

    // $t4 := !=($t2, $t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:61:15+2
    $t4 := !$IsEqual'u64'($t2, $t3);

    // if ($t4) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:61:9+20
    if ($t4) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:61:9+20
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:61:9+20
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:61:27+2
L0:

    // $t5 := 42 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:61:27+2
    $t5 := 42;
    assume $IsValid'u64'($t5);

    // trace_abort($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:61:21+8
    assume {:print "$at(2,1371,1379)"} true;
    assume {:print "$track_abort(0,1):", $t5} $t5 == $t5;

    // goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:61:21+8
    goto L4;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:62:10+1
    assume {:print "$at(2,1390,1391)"} true;
L2:

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:62:9+6
    assume {:print "$track_return(0,1,0):", $t2} $t2 == $t2;

    // trace_return[1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:62:9+6
    assume {:print "$track_return(0,1,1):", $t0} $t0 == $t0;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:63:5+1
    assume {:print "$at(2,1400,1401)"} true;
L3:

    // assert Eq<u64>($t2, Mod(Div(Mul(Sub(Add(6, 4), 1), 2), 3), 4)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:65:9+44
    assume {:print "$at(2,1436,1480)"} true;
    assert {:msg "assert_failed(2,1436,1480): post-condition does not hold"}
      $IsEqual'u64'($t2, (((((6 + 4) - 1) * 2) div 3) mod 4));

    // assert Eq<u64>($t0, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:66:9+22
    assume {:print "$at(2,1489,1511)"} true;
    assert {:msg "assert_failed(2,1489,1511): post-condition does not hold"}
      $IsEqual'u64'($t0, $t0);

    // return ($t2, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:66:9+22
    $ret0 := $t2;
    $ret1 := $t0;
    return;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:63:5+1
    assume {:print "$at(2,1400,1401)"} true;
L4:

    // abort($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:63:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::bool_ops [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:44:2+198
procedure {:timeLimit 40} $42_TestArithmetic_bool_ops$verify(_$t0: int, _$t1: int) returns ($ret0: bool, $ret1: bool)
{
    // declare local variables
    var $t2: bool;
    var $t3: bool;
    var $t4: bool;
    var $t5: bool;
    var $t6: bool;
    var $t7: bool;
    var $t8: bool;
    var $t9: bool;
    var $t10: bool;
    var $t11: bool;
    var $t12: bool;
    var $t13: bool;
    var $t14: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:54:17+8
    assume {:print "$at(2,1195,1203)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:54:17+8
    assume $IsValid'u64'($t1);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:44:2+1
    assume {:print "$at(2,911,912)"} true;
    assume {:print "$track_local(0,2,0):", $t0} $t0 == $t0;

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:44:2+1
    assume {:print "$track_local(0,2,1):", $t1} $t1 == $t1;

    // $t6 := >($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:15+1
    assume {:print "$at(2,1012,1013)"} true;
    call $t6 := $Gt($t0, $t1);

    // if ($t6) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:22+1
L0:

    // $t7 := >=($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:24+2
    call $t7 := $Ge($t0, $t1);

    // $t4 := $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
    $t4 := $t7;

    // trace_local[tmp#$4]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
    assume {:print "$track_local(0,2,4):", $t7} $t7 == $t7;

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
L2:

    // $t8 := false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
    $t8 := false;
    assume $IsValid'bool'($t8);

    // $t4 := $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
    $t4 := $t8;

    // trace_local[tmp#$4]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
    assume {:print "$track_local(0,2,4):", $t8} $t8 == $t8;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:13+15
L3:

    // trace_local[c]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:47:9+1
    assume {:print "$track_local(0,2,2):", $t4} $t4 == $t4;

    // $t9 := <($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:15+1
    assume {:print "$at(2,1041,1042)"} true;
    call $t9 := $Lt($t0, $t1);

    // if ($t9) goto L4 else goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
    if ($t9) { goto L4; } else { goto L5; }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
L5:

    // goto L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
    goto L6;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
L4:

    // $t10 := true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
    $t10 := true;
    assume $IsValid'bool'($t10);

    // $t5 := $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
    $t5 := $t10;

    // trace_local[tmp#$5]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
    assume {:print "$track_local(0,2,5):", $t10} $t10 == $t10;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
    goto L7;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:22+1
L6:

    // $t11 := <=($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:24+2
    call $t11 := $Le($t0, $t1);

    // $t5 := $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
    $t5 := $t11;

    // trace_local[tmp#$5]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
    assume {:print "$track_local(0,2,5):", $t11} $t11 == $t11;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:13+15
L7:

    // trace_local[d]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:48:9+1
    assume {:print "$track_local(0,2,3):", $t5} $t5 == $t5;

    // $t12 := !=($t4, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:49:17+2
    assume {:print "$at(2,1072,1074)"} true;
    $t12 := !$IsEqual'bool'($t4, $t5);

    // $t13 := !($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:49:13+1
    call $t13 := $Not($t12);

    // if ($t13) goto L8 else goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:49:9+23
    if ($t13) { goto L8; } else { goto L9; }

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:49:9+23
L9:

    // goto L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:49:9+23
    goto L10;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:49:30+2
L8:

    // $t14 := 42 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:49:30+2
    $t14 := 42;
    assume $IsValid'u64'($t14);

    // trace_abort($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:49:24+8
    assume {:print "$at(2,1079,1087)"} true;
    assume {:print "$track_abort(0,2):", $t14} $t14 == $t14;

    // goto L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:49:24+8
    goto L12;

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:50:10+1
    assume {:print "$at(2,1098,1099)"} true;
L10:

    // trace_return[0]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:50:9+6
    assume {:print "$track_return(0,2,0):", $t4} $t4 == $t4;

    // trace_return[1]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:50:9+6
    assume {:print "$track_return(0,2,1):", $t5} $t5 == $t5;

    // label L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:51:5+1
    assume {:print "$at(2,1108,1109)"} true;
L11:

    // assert Iff($t4, And(Gt($t0, $t1), Ge($t0, $t1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:53:9+40
    assume {:print "$at(2,1138,1178)"} true;
    assert {:msg "assert_failed(2,1138,1178): post-condition does not hold"}
      ($t4 <==> (($t0 > $t1) && ($t0 >= $t1)));

    // assert Iff($t5, Or(Lt($t0, $t1), Le($t0, $t1))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:54:9+40
    assume {:print "$at(2,1187,1227)"} true;
    assert {:msg "assert_failed(2,1187,1227): post-condition does not hold"}
      ($t5 <==> (($t0 < $t1) || ($t0 <= $t1)));

    // return ($t4, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:54:9+40
    $ret0 := $t4;
    $ret1 := $t5;
    return;

    // label L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:51:5+1
    assume {:print "$at(2,1108,1109)"} true;
L12:

    // abort($t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:51:5+1
    $abort_code := $t14;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::div [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:26:5+66
procedure {:timeLimit 40} $42_TestArithmetic_div$verify(_$t0: int, _$t1: int) returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:32:17+8
    assume {:print "$at(2,721,729)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:32:17+8
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:26:5+1
    assume {:print "$at(2,562,563)"} true;
    assume {:print "$track_local(0,3,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:26:5+1
    assume {:print "$track_local(0,3,1):", $t1} $t1 == $t1;

    // $t2 := /($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:27:12+1
    assume {:print "$at(2,611,612)"} true;
    call $t2 := $Div($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,611,612)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,3):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := %($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:27:19+1
    call $t4 := $Mod($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,618,619)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,3):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:27:9+14
    assume {:print "$track_return(0,3,0):", $t2} $t2 == $t2;

    // trace_return[1]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:27:9+14
    assume {:print "$track_return(0,3,1):", $t4} $t4 == $t4;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:28:5+1
    assume {:print "$at(2,627,628)"} true;
L1:

    // assert Not(Eq<u64>($t1, 0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:30:9+17
    assume {:print "$at(2,652,669)"} true;
    assert {:msg "assert_failed(2,652,669): function does not abort under this condition"}
      !$IsEqual'u64'($t1, 0);

    // assert Eq<u64>($t2, Div($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:31:9+26
    assume {:print "$at(2,678,704)"} true;
    assert {:msg "assert_failed(2,678,704): post-condition does not hold"}
      $IsEqual'u64'($t2, ($t0 div $t1));

    // assert Eq<u64>($t4, Mod($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:32:9+26
    assume {:print "$at(2,713,739)"} true;
    assert {:msg "assert_failed(2,713,739): post-condition does not hold"}
      $IsEqual'u64'($t4, ($t0 mod $t1));

    // return ($t2, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:32:9+26
    $ret0 := $t2;
    $ret1 := $t4;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:28:5+1
    assume {:print "$at(2,627,628)"} true;
L2:

    // assert Eq<u64>($t1, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:29:5+112
    assume {:print "$at(2,633,745)"} true;
    assert {:msg "assert_failed(2,633,745): abort not covered by any of the `aborts_if` clauses"}
      $IsEqual'u64'($t1, 0);

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:29:5+112
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::div_by_zero [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:117:5+63
procedure {:timeLimit 40} $42_TestArithmetic_div_by_zero$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t1 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:119:9+1
    assume {:print "$at(2,2340,2341)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:118:17+1
    assume {:print "$at(2,2329,2330)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := /($t1, $t2) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:119:11+1
    assume {:print "$at(2,2342,2343)"} true;
    call $t3 := $Div($t1, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,2342,2343)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(0,4):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_return[0]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:119:9+5
    assume {:print "$track_return(0,4,0):", $t3} $t3 == $t3;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:120:5+1
    assume {:print "$at(2,2350,2351)"} true;
L1:

    // assert Not(true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:122:6+15
    assume {:print "$at(2,2377,2392)"} true;
    assert {:msg "assert_failed(2,2377,2392): function does not abort under this condition"}
      !true;

    // return $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:122:6+15
    $ret0 := $t3;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:120:5+1
    assume {:print "$at(2,2350,2351)"} true;
L2:

    // assert true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:121:2+42
    assume {:print "$at(2,2353,2395)"} true;
    assert {:msg "assert_failed(2,2353,2395): abort not covered by any of the `aborts_if` clauses"}
      true;

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:121:2+42
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::div_by_zero_u64 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:132:5+62
procedure {:timeLimit 40} $42_TestArithmetic_div_by_zero_u64$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:132:5+62
    assume {:print "$at(2,2547,2609)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:132:5+62
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:132:5+1
    assume {:print "$track_local(0,5,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:132:5+1
    assume {:print "$track_local(0,5,1):", $t1} $t1 == $t1;

    // $t2 := /($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:133:11+1
    assume {:print "$at(2,2600,2601)"} true;
    call $t2 := $Div($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,2600,2601)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,5):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:133:9+5
    assume {:print "$track_return(0,5,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:134:5+1
    assume {:print "$at(2,2608,2609)"} true;
L1:

    // assert Not(Eq<u64>($t1, 0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:136:9+17
    assume {:print "$at(2,2645,2662)"} true;
    assert {:msg "assert_failed(2,2645,2662): function does not abort under this condition"}
      !$IsEqual'u64'($t1, 0);

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:136:9+17
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:134:5+1
    assume {:print "$at(2,2608,2609)"} true;
L2:

    // assert Eq<u64>($t1, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:135:5+54
    assume {:print "$at(2,2614,2668)"} true;
    assert {:msg "assert_failed(2,2614,2668): abort not covered by any of the `aborts_if` clauses"}
      $IsEqual'u64'($t1, 0);

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:135:5+54
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::div_by_zero_u64_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:125:5+72
procedure {:timeLimit 40} $42_TestArithmetic_div_by_zero_u64_incorrect$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:125:5+72
    assume {:print "$at(2,2401,2473)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:125:5+72
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:125:5+1
    assume {:print "$track_local(0,6,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:125:5+1
    assume {:print "$track_local(0,6,1):", $t1} $t1 == $t1;

    // $t2 := /($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:126:11+1
    assume {:print "$at(2,2464,2465)"} true;
    call $t2 := $Div($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,2464,2465)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,6):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:126:9+5
    assume {:print "$track_return(0,6,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:127:5+1
    assume {:print "$at(2,2472,2473)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:129:9+16
    assume {:print "$at(2,2519,2535)"} true;
    assert {:msg "assert_failed(2,2519,2535): function does not abort under this condition"}
      !false;

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:129:9+16
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:127:5+1
    assume {:print "$at(2,2472,2473)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:128:5+63
    assume {:print "$at(2,2478,2541)"} true;
    assert {:msg "assert_failed(2,2478,2541): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:128:5+63
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::f [baseline] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:69:5+39
procedure {:inline 1} $42_TestArithmetic_f(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:69:5+1
    assume {:print "$at(2,1523,1524)"} true;
    assume {:print "$track_local(0,7,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:70:11+1
    assume {:print "$at(2,1555,1556)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:70:10+1
    call $t2 := $AddU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,1554,1555)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,7):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:70:9+3
    assume {:print "$track_return(0,7,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:71:5+1
    assume {:print "$at(2,1561,1562)"} true;
L1:

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:71:5+1
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:71:5+1
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:71:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::f [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:69:5+39
procedure {:timeLimit 40} $42_TestArithmetic_f$verify(_$t0: int) returns ($ret0: int)
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:74:17+6
    assume {:print "$at(2,1627,1633)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:69:5+1
    assume {:print "$at(2,1523,1524)"} true;
    assume {:print "$track_local(0,7,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:70:11+1
    assume {:print "$at(2,1555,1556)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:70:10+1
    call $t2 := $AddU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,1554,1555)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,7):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:70:9+3
    assume {:print "$track_return(0,7,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:71:5+1
    assume {:print "$at(2,1561,1562)"} true;
L1:

    // assert Not(Gt(Add($t0, 1), MaxU64())) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:73:9+26
    assume {:print "$at(2,1584,1610)"} true;
    assert {:msg "assert_failed(2,1584,1610): function does not abort under this condition"}
      !(($t0 + 1) > $MAX_U64);

    // assert Eq<u64>($t2, Add($t0, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:74:9+22
    assume {:print "$at(2,1619,1641)"} true;
    assert {:msg "assert_failed(2,1619,1641): post-condition does not hold"}
      $IsEqual'u64'($t2, ($t0 + 1));

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:74:9+22
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:71:5+1
    assume {:print "$at(2,1561,1562)"} true;
L2:

    // assert Gt(Add($t0, 1), MaxU64()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:72:5+80
    assume {:print "$at(2,1567,1647)"} true;
    assert {:msg "assert_failed(2,1567,1647): abort not covered by any of the `aborts_if` clauses"}
      (($t0 + 1) > $MAX_U64);

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:72:5+80
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::g [baseline] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:77:5+39
procedure {:inline 1} $42_TestArithmetic_g(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:77:5+1
    assume {:print "$at(2,1653,1654)"} true;
    assume {:print "$track_local(0,8,0):", $t0} $t0 == $t0;

    // $t1 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:78:11+1
    assume {:print "$at(2,1685,1686)"} true;
    $t1 := 2;
    assume $IsValid'u64'($t1);

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:78:10+1
    call $t2 := $AddU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,1684,1685)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,8):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:78:9+3
    assume {:print "$track_return(0,8,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:79:5+1
    assume {:print "$at(2,1691,1692)"} true;
L1:

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:79:5+1
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:79:5+1
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:79:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::g [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:77:5+39
procedure {:timeLimit 40} $42_TestArithmetic_g$verify(_$t0: int) returns ($ret0: int)
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:82:17+6
    assume {:print "$at(2,1757,1763)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:77:5+1
    assume {:print "$at(2,1653,1654)"} true;
    assume {:print "$track_local(0,8,0):", $t0} $t0 == $t0;

    // $t1 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:78:11+1
    assume {:print "$at(2,1685,1686)"} true;
    $t1 := 2;
    assume $IsValid'u64'($t1);

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:78:10+1
    call $t2 := $AddU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,1684,1685)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,8):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:78:9+3
    assume {:print "$track_return(0,8,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:79:5+1
    assume {:print "$at(2,1691,1692)"} true;
L1:

    // assert Not(Gt(Add($t0, 2), MaxU64())) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:81:9+26
    assume {:print "$at(2,1714,1740)"} true;
    assert {:msg "assert_failed(2,1714,1740): function does not abort under this condition"}
      !(($t0 + 2) > $MAX_U64);

    // assert Eq<u64>($t2, Add($t0, 2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:82:9+22
    assume {:print "$at(2,1749,1771)"} true;
    assert {:msg "assert_failed(2,1749,1771): post-condition does not hold"}
      $IsEqual'u64'($t2, ($t0 + 2));

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:82:9+22
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:79:5+1
    assume {:print "$at(2,1691,1692)"} true;
L2:

    // assert Gt(Add($t0, 2), MaxU64()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:80:5+80
    assume {:print "$at(2,1697,1777)"} true;
    assert {:msg "assert_failed(2,1697,1777): abort not covered by any of the `aborts_if` clauses"}
      (($t0 + 2) > $MAX_U64);

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:80:5+80
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::h [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:85:5+185
procedure {:timeLimit 40} $42_TestArithmetic_h$verify(_$t0: bool) returns ($ret0: int)
{
    // declare local variables
    var $t1: bool;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: bool;
    var $t12: int;
    var $t13: bool;
    var $t14: int;
    var $t15: bool;
    var $t16: bool;
    var $t17: int;
    var $t0: bool;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:85:5+185
    assume {:print "$at(2,1783,1968)"} true;
    assume $IsValid'bool'($t0);

    // trace_local[b]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:85:5+1
    assume {:print "$track_local(0,9,0):", $t0} $t0 == $t0;

    // $t5 := 3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:86:22+1
    assume {:print "$at(2,1826,1827)"} true;
    $t5 := 3;
    assume $IsValid'u64'($t5);

    // trace_local[x]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:86:13+1
    assume {:print "$track_local(0,9,3):", $t5} $t5 == $t5;

    // if ($t0) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:9+25
    assume {:print "$at(2,1857,1882)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:9+25
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:9+25
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:20+1
L0:

    // $t6 := TestArithmetic::f($t5) on_abort goto L19 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:18+4
    call $t6 := $42_TestArithmetic_f($t5);
    if ($abort_flag) {
        assume {:print "$at(2,1866,1870)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(0,9):", $t7} $t7 == $t7;
        goto L19;
    }

    // $t4 := $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:16+1
    $t4 := $t6;

    // trace_local[y]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:16+1
    assume {:print "$track_local(0,9,4):", $t6} $t6 == $t6;

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:16+6
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:32+1
L2:

    // $t8 := TestArithmetic::g($t5) on_abort goto L19 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:30+4
    call $t8 := $42_TestArithmetic_g($t5);
    if ($abort_flag) {
        assume {:print "$at(2,1878,1882)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(0,9):", $t7} $t7 == $t7;
        goto L19;
    }

    // $t4 := $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:28+1
    $t4 := $t8;

    // trace_local[y]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:88:28+1
    assume {:print "$track_local(0,9,4):", $t8} $t8 == $t8;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+1
    assume {:print "$at(2,1896,1897)"} true;
L3:

    // if ($t0) goto L4 else goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
    if ($t0) { goto L4; } else { goto L5; }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
L5:

    // goto L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
    goto L6;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:18+1
L4:

    // $t9 := 4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:23+1
    $t9 := 4;
    assume $IsValid'u64'($t9);

    // $t10 := !=($t4, $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:20+2
    $t10 := !$IsEqual'u64'($t4, $t9);

    // $t1 := $t10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
    $t1 := $t10;

    // trace_local[tmp#$1]($t10) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
    assume {:print "$track_local(0,9,1):", $t10} $t10 == $t10;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
    goto L7;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
L6:

    // $t11 := false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
    $t11 := false;
    assume $IsValid'bool'($t11);

    // $t1 := $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
    $t1 := $t11;

    // trace_local[tmp#$1]($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
    assume {:print "$track_local(0,9,1):", $t11} $t11 == $t11;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:13+11
L7:

    // if ($t1) goto L8 else goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:9+24
    if ($t1) { goto L8; } else { goto L9; }

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:9+24
L9:

    // goto L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:9+24
    goto L10;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:32+1
L8:

    // $t12 := 4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:32+1
    $t12 := 4;
    assume $IsValid'u64'($t12);

    // trace_abort($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:26+7
    assume {:print "$at(2,1909,1916)"} true;
    assume {:print "$track_abort(0,9):", $t12} $t12 == $t12;

    // $t7 := move($t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:26+7
    $t7 := $t12;

    // goto L19 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:89:26+7
    goto L19;

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:14+1
    assume {:print "$at(2,1931,1932)"} true;
L10:

    // $t13 := !($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+1
    call $t13 := $Not($t0);

    // if ($t13) goto L11 else goto L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
    if ($t13) { goto L11; } else { goto L12; }

    // label L12 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
L12:

    // goto L13 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
    goto L13;

    // label L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:19+1
L11:

    // $t14 := 5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:24+1
    $t14 := 5;
    assume $IsValid'u64'($t14);

    // $t15 := !=($t4, $t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:21+2
    $t15 := !$IsEqual'u64'($t4, $t14);

    // $t2 := $t15 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
    $t2 := $t15;

    // trace_local[tmp#$2]($t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
    assume {:print "$track_local(0,9,2):", $t15} $t15 == $t15;

    // goto L14 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
    goto L14;

    // label L13 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
L13:

    // $t16 := false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
    $t16 := false;
    assume $IsValid'bool'($t16);

    // $t2 := $t16 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
    $t2 := $t16;

    // trace_local[tmp#$2]($t16) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
    assume {:print "$track_local(0,9,2):", $t16} $t16 == $t16;

    // label L14 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:13+12
L14:

    // if ($t2) goto L15 else goto L16 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:9+25
    if ($t2) { goto L15; } else { goto L16; }

    // label L16 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:9+25
L16:

    // goto L17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:9+25
    goto L17;

    // label L15 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:33+1
L15:

    // $t17 := 5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:33+1
    $t17 := 5;
    assume $IsValid'u64'($t17);

    // trace_abort($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:27+7
    assume {:print "$at(2,1944,1951)"} true;
    assume {:print "$track_abort(0,9):", $t17} $t17 == $t17;

    // $t7 := move($t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:27+7
    $t7 := $t17;

    // goto L19 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:90:27+7
    goto L19;

    // label L17 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:91:9+1
    assume {:print "$at(2,1961,1962)"} true;
L17:

    // trace_return[0]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:91:9+1
    assume {:print "$track_return(0,9,0):", $t4} $t4 == $t4;

    // label L18 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:92:5+1
    assume {:print "$at(2,1967,1968)"} true;
L18:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:94:9+16
    assume {:print "$at(2,1990,2006)"} true;
    assert {:msg "assert_failed(2,1990,2006): function does not abort under this condition"}
      !false;

    // return $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:94:9+16
    $ret0 := $t4;
    return;

    // label L19 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:92:5+1
    assume {:print "$at(2,1967,1968)"} true;
L19:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:93:5+39
    assume {:print "$at(2,1973,2012)"} true;
    assert {:msg "assert_failed(2,1973,2012): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:93:5+39
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::multiple_ops [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:36:2+62
procedure {:timeLimit 40} $42_TestArithmetic_multiple_ops$verify(_$t0: int, _$t1: int, _$t2: int) returns ($ret0: int)
{
    // declare local variables
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:40:17+6
    assume {:print "$at(2,865,871)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:40:17+6
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:40:17+6
    assume $IsValid'u64'($t2);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:36:2+1
    assume {:print "$at(2,765,766)"} true;
    assume {:print "$track_local(0,10,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:36:2+1
    assume {:print "$track_local(0,10,1):", $t1} $t1 == $t1;

    // trace_local[z]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:36:2+1
    assume {:print "$track_local(0,10,2):", $t2} $t2 == $t2;

    // $t3 := *($t1, $t2) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:37:9+1
    assume {:print "$at(2,821,822)"} true;
    call $t3 := $MulU64($t1, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,821,822)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(0,10):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t5 := +($t0, $t3) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:37:5+1
    call $t5 := $AddU64($t0, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,817,818)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(0,10):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_return[0]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:37:3+9
    assume {:print "$track_return(0,10,0):", $t5} $t5 == $t5;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:38:2+1
    assume {:print "$at(2,826,827)"} true;
L1:

    // assert Eq<u64>($t5, Add($t0, Mul($t1, $t2))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:40:9+28
    assume {:print "$at(2,857,885)"} true;
    assert {:msg "assert_failed(2,857,885): post-condition does not hold"}
      $IsEqual'u64'($t5, ($t0 + ($t1 * $t2)));

    // return $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:40:9+28
    $ret0 := $t5;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:38:2+1
    assume {:print "$at(2,826,827)"} true;
L2:

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:38:2+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u128_add [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:185:5+67
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u128_add$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u128': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:185:5+67
    assume {:print "$at(2,3571,3638)"} true;
    assume $IsValid'u128'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:185:5+67
    assume $IsValid'u128'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:185:5+1
    assume {:print "$track_local(0,11,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:185:5+1
    assume {:print "$track_local(0,11,1):", $t1} $t1 == $t1;

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:186:11+1
    assume {:print "$at(2,3629,3630)"} true;
    call $t2 := $AddU128($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,3629,3630)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,11):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:186:9+5
    assume {:print "$track_return(0,11,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:187:5+1
    assume {:print "$at(2,3637,3638)"} true;
L1:

    // assert Not(Gt(Add($t0, $t1), MaxU128())) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:189:9+29
    assume {:print "$at(2,3676,3705)"} true;
    assert {:msg "assert_failed(2,3676,3705): function does not abort under this condition"}
      !(($t0 + $t1) > $MAX_U128);

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:189:9+29
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:187:5+1
    assume {:print "$at(2,3637,3638)"} true;
L2:

    // assert Gt(Add($t0, $t1), MaxU128()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:188:5+68
    assume {:print "$at(2,3643,3711)"} true;
    assert {:msg "assert_failed(2,3643,3711): abort not covered by any of the `aborts_if` clauses"}
      (($t0 + $t1) > $MAX_U128);

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:188:5+68
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u128_add_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:177:5+77
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u128_add_incorrect$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u128': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:177:5+77
    assume {:print "$at(2,3401,3478)"} true;
    assume $IsValid'u128'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:177:5+77
    assume $IsValid'u128'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:177:5+1
    assume {:print "$track_local(0,12,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:177:5+1
    assume {:print "$track_local(0,12,1):", $t1} $t1 == $t1;

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:178:11+1
    assume {:print "$at(2,3469,3470)"} true;
    call $t2 := $AddU128($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,3469,3470)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,12):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:178:9+5
    assume {:print "$track_return(0,12,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:179:5+1
    assume {:print "$at(2,3477,3478)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:181:9+16
    assume {:print "$at(2,3526,3542)"} true;
    assert {:msg "assert_failed(2,3526,3542): function does not abort under this condition"}
      !false;

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:181:9+16
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:179:5+1
    assume {:print "$at(2,3477,3478)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:180:5+65
    assume {:print "$at(2,3483,3548)"} true;
    assert {:msg "assert_failed(2,3483,3548): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:180:5+65
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u128_mul [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:236:5+67
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u128_mul$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u128': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:236:5+67
    assume {:print "$at(2,4598,4665)"} true;
    assume $IsValid'u128'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:236:5+67
    assume $IsValid'u128'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:236:5+1
    assume {:print "$track_local(0,13,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:236:5+1
    assume {:print "$track_local(0,13,1):", $t1} $t1 == $t1;

    // $t2 := *($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:237:11+1
    assume {:print "$at(2,4656,4657)"} true;
    call $t2 := $MulU128($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,4656,4657)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,13):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:237:9+5
    assume {:print "$track_return(0,13,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:238:5+1
    assume {:print "$at(2,4664,4665)"} true;
L1:

    // assert Not(Gt(Mul($t0, $t1), MaxU128())) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:240:9+29
    assume {:print "$at(2,4703,4732)"} true;
    assert {:msg "assert_failed(2,4703,4732): function does not abort under this condition"}
      !(($t0 * $t1) > $MAX_U128);

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:240:9+29
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:238:5+1
    assume {:print "$at(2,4664,4665)"} true;
L2:

    // assert Gt(Mul($t0, $t1), MaxU128()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:239:5+80
    assume {:print "$at(2,4670,4750)"} true;
    assert {:msg "assert_failed(2,4670,4750): abort not covered by any of the `aborts_if` clauses"}
      (($t0 * $t1) > $MAX_U128);

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:239:5+80
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u128_mul_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:229:5+77
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u128_mul_incorrect$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u128': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:229:5+77
    assume {:print "$at(2,4445,4522)"} true;
    assume $IsValid'u128'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:229:5+77
    assume $IsValid'u128'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:229:5+1
    assume {:print "$track_local(0,14,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:229:5+1
    assume {:print "$track_local(0,14,1):", $t1} $t1 == $t1;

    // $t2 := *($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:230:11+1
    assume {:print "$at(2,4513,4514)"} true;
    call $t2 := $MulU128($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,4513,4514)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,14):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:230:9+5
    assume {:print "$track_return(0,14,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:231:5+1
    assume {:print "$at(2,4521,4522)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:233:9+16
    assume {:print "$at(2,4570,4586)"} true;
    assert {:msg "assert_failed(2,4570,4586): function does not abort under this condition"}
      !false;

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:233:9+16
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:231:5+1
    assume {:print "$at(2,4521,4522)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:232:5+65
    assume {:print "$at(2,4527,4592)"} true;
    assert {:msg "assert_failed(2,4527,4592): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:232:5+65
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u64_add [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:169:5+63
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u64_add$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:169:5+63
    assume {:print "$at(2,3247,3310)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:169:5+63
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:169:5+1
    assume {:print "$track_local(0,15,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:169:5+1
    assume {:print "$track_local(0,15,1):", $t1} $t1 == $t1;

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:170:11+1
    assume {:print "$at(2,3301,3302)"} true;
    call $t2 := $AddU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,3301,3302)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,15):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:170:9+5
    assume {:print "$track_return(0,15,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:171:5+1
    assume {:print "$at(2,3309,3310)"} true;
L1:

    // assert Not(Gt(Add($t0, $t1), MaxU64())) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:173:9+28
    assume {:print "$at(2,3347,3375)"} true;
    assert {:msg "assert_failed(2,3347,3375): function does not abort under this condition"}
      !(($t0 + $t1) > $MAX_U64);

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:173:9+28
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:171:5+1
    assume {:print "$at(2,3309,3310)"} true;
L2:

    // assert Gt(Add($t0, $t1), MaxU64()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:172:5+66
    assume {:print "$at(2,3315,3381)"} true;
    assert {:msg "assert_failed(2,3315,3381): abort not covered by any of the `aborts_if` clauses"}
      (($t0 + $t1) > $MAX_U64);

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:172:5+66
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u64_add_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:161:5+73
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u64_add_incorrect$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:161:5+73
    assume {:print "$at(2,3082,3155)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:161:5+73
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:161:5+1
    assume {:print "$track_local(0,16,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:161:5+1
    assume {:print "$track_local(0,16,1):", $t1} $t1 == $t1;

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:162:11+1
    assume {:print "$at(2,3146,3147)"} true;
    call $t2 := $AddU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,3146,3147)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,16):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:162:9+5
    assume {:print "$track_return(0,16,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:163:5+1
    assume {:print "$at(2,3154,3155)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:165:9+16
    assume {:print "$at(2,3202,3218)"} true;
    assert {:msg "assert_failed(2,3202,3218): function does not abort under this condition"}
      !false;

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:165:9+16
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:163:5+1
    assume {:print "$at(2,3154,3155)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:164:5+64
    assume {:print "$at(2,3160,3224)"} true;
    assert {:msg "assert_failed(2,3160,3224): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:164:5+64
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u64_mul [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:221:5+63
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u64_mul$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:221:5+63
    assume {:print "$at(2,4291,4354)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:221:5+63
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:221:5+1
    assume {:print "$track_local(0,17,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:221:5+1
    assume {:print "$track_local(0,17,1):", $t1} $t1 == $t1;

    // $t2 := *($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:222:11+1
    assume {:print "$at(2,4345,4346)"} true;
    call $t2 := $MulU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,4345,4346)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,17):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:222:9+5
    assume {:print "$track_return(0,17,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:223:5+1
    assume {:print "$at(2,4353,4354)"} true;
L1:

    // assert Not(Gt(Mul($t0, $t1), MaxU64())) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:225:9+28
    assume {:print "$at(2,4391,4419)"} true;
    assert {:msg "assert_failed(2,4391,4419): function does not abort under this condition"}
      !(($t0 * $t1) > $MAX_U64);

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:225:9+28
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:223:5+1
    assume {:print "$at(2,4353,4354)"} true;
L2:

    // assert Gt(Mul($t0, $t1), MaxU64()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:224:5+66
    assume {:print "$at(2,4359,4425)"} true;
    assert {:msg "assert_failed(2,4359,4425): abort not covered by any of the `aborts_if` clauses"}
      (($t0 * $t1) > $MAX_U64);

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:224:5+66
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u64_mul_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:214:5+73
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u64_mul_incorrect$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:214:5+73
    assume {:print "$at(2,4143,4216)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:214:5+73
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:214:5+1
    assume {:print "$track_local(0,18,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:214:5+1
    assume {:print "$track_local(0,18,1):", $t1} $t1 == $t1;

    // $t2 := *($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:215:11+1
    assume {:print "$at(2,4207,4208)"} true;
    call $t2 := $MulU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,4207,4208)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,18):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:215:9+5
    assume {:print "$track_return(0,18,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:216:5+1
    assume {:print "$at(2,4215,4216)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:218:9+16
    assume {:print "$at(2,4263,4279)"} true;
    assert {:msg "assert_failed(2,4263,4279): function does not abort under this condition"}
      !false;

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:218:9+16
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:216:5+1
    assume {:print "$at(2,4215,4216)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:217:5+64
    assume {:print "$at(2,4221,4285)"} true;
    assert {:msg "assert_failed(2,4221,4285): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:217:5+64
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u8_add [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:153:5+59
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u8_add$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u8': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:153:5+59
    assume {:print "$at(2,2934,2993)"} true;
    assume $IsValid'u8'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:153:5+59
    assume $IsValid'u8'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:153:5+1
    assume {:print "$track_local(0,19,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:153:5+1
    assume {:print "$track_local(0,19,1):", $t1} $t1 == $t1;

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:154:11+1
    assume {:print "$at(2,2984,2985)"} true;
    call $t2 := $AddU8($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,2984,2985)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,19):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:154:9+5
    assume {:print "$track_return(0,19,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:155:5+1
    assume {:print "$at(2,2992,2993)"} true;
L1:

    // assert Not(Gt(Add($t0, $t1), MaxU8())) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:157:9+27
    assume {:print "$at(2,3029,3056)"} true;
    assert {:msg "assert_failed(2,3029,3056): function does not abort under this condition"}
      !(($t0 + $t1) > $MAX_U8);

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:157:9+27
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:155:5+1
    assume {:print "$at(2,2992,2993)"} true;
L2:

    // assert Gt(Add($t0, $t1), MaxU8()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:156:5+64
    assume {:print "$at(2,2998,3062)"} true;
    assert {:msg "assert_failed(2,2998,3062): abort not covered by any of the `aborts_if` clauses"}
      (($t0 + $t1) > $MAX_U8);

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:156:5+64
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u8_add_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:145:5+69
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u8_add_incorrect$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u8': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:145:5+69
    assume {:print "$at(2,2774,2843)"} true;
    assume $IsValid'u8'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:145:5+69
    assume $IsValid'u8'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:145:5+1
    assume {:print "$track_local(0,20,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:145:5+1
    assume {:print "$track_local(0,20,1):", $t1} $t1 == $t1;

    // $t2 := +($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:146:11+1
    assume {:print "$at(2,2834,2835)"} true;
    call $t2 := $AddU8($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,2834,2835)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,20):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:146:9+5
    assume {:print "$track_return(0,20,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:147:5+1
    assume {:print "$at(2,2842,2843)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:149:9+16
    assume {:print "$at(2,2889,2905)"} true;
    assert {:msg "assert_failed(2,2889,2905): function does not abort under this condition"}
      !false;

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:149:9+16
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:147:5+1
    assume {:print "$at(2,2842,2843)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:148:5+63
    assume {:print "$at(2,2848,2911)"} true;
    assert {:msg "assert_failed(2,2848,2911): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:148:5+63
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u8_mul [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:206:5+59
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u8_mul$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u8': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:206:5+59
    assume {:print "$at(2,3995,4054)"} true;
    assume $IsValid'u8'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:206:5+59
    assume $IsValid'u8'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:206:5+1
    assume {:print "$track_local(0,21,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:206:5+1
    assume {:print "$track_local(0,21,1):", $t1} $t1 == $t1;

    // $t2 := *($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:207:11+1
    assume {:print "$at(2,4045,4046)"} true;
    call $t2 := $MulU8($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,4045,4046)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,21):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:207:9+5
    assume {:print "$track_return(0,21,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:208:5+1
    assume {:print "$at(2,4053,4054)"} true;
L1:

    // assert Not(Gt(Mul($t0, $t1), MaxU8())) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:210:9+27
    assume {:print "$at(2,4090,4117)"} true;
    assert {:msg "assert_failed(2,4090,4117): function does not abort under this condition"}
      !(($t0 * $t1) > $MAX_U8);

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:210:9+27
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:208:5+1
    assume {:print "$at(2,4053,4054)"} true;
L2:

    // assert Gt(Mul($t0, $t1), MaxU8()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:209:5+64
    assume {:print "$at(2,4059,4123)"} true;
    assert {:msg "assert_failed(2,4059,4123): abort not covered by any of the `aborts_if` clauses"}
      (($t0 * $t1) > $MAX_U8);

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:209:5+64
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::overflow_u8_mul_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:198:5+69
procedure {:timeLimit 40} $42_TestArithmetic_overflow_u8_mul_incorrect$verify(_$t0: int, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u8': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:198:5+69
    assume {:print "$at(2,3835,3904)"} true;
    assume $IsValid'u8'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:198:5+69
    assume $IsValid'u8'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:198:5+1
    assume {:print "$track_local(0,22,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:198:5+1
    assume {:print "$track_local(0,22,1):", $t1} $t1 == $t1;

    // $t2 := *($t0, $t1) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:199:11+1
    assume {:print "$at(2,3895,3896)"} true;
    call $t2 := $MulU8($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,3895,3896)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(0,22):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:199:9+5
    assume {:print "$track_return(0,22,0):", $t2} $t2 == $t2;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:200:5+1
    assume {:print "$at(2,3903,3904)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:202:9+16
    assume {:print "$at(2,3950,3966)"} true;
    assert {:msg "assert_failed(2,3950,3966): function does not abort under this condition"}
      !false;

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:202:9+16
    $ret0 := $t2;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:200:5+1
    assume {:print "$at(2,3903,3904)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:201:5+63
    assume {:print "$at(2,3909,3972)"} true;
    assert {:msg "assert_failed(2,3909,3972): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:201:5+63
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestArithmetic::underflow [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:103:5+61
procedure {:timeLimit 40} $42_TestArithmetic_underflow$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:104:17+1
    assume {:print "$at(2,2127,2128)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:105:13+1
    assume {:print "$at(2,2142,2143)"} true;
    $t2 := 1;
    assume $IsValid'u64'($t2);

    // $t3 := -($t1, $t2) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:105:11+1
    call $t3 := $Sub($t1, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,2140,2141)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(0,23):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_return[0]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:105:9+5
    assume {:print "$track_return(0,23,0):", $t3} $t3 == $t3;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:106:5+1
    assume {:print "$at(2,2148,2149)"} true;
L1:

    // assert Not(true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:108:6+15
    assume {:print "$at(2,2173,2188)"} true;
    assert {:msg "assert_failed(2,2173,2188): function does not abort under this condition"}
      !true;

    // return $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:108:6+15
    $ret0 := $t3;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:106:5+1
    assume {:print "$at(2,2148,2149)"} true;
L2:

    // assert true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:107:2+40
    assume {:print "$at(2,2151,2191)"} true;
    assert {:msg "assert_failed(2,2151,2191): abort not covered by any of the `aborts_if` clauses"}
      true;

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/arithm.move:107:2+40
    $abort_code := $t4;
    $abort_flag := true;
    return;

}
