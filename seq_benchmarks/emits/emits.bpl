
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




// Publishing a generator does nothing. Currently we just ignore this function and do not represent generators
// at all because they are not publicly exposed by the Event module.
// TODO: we should check (and abort with the right code) if a generator already exists for
// the signer.

procedure {:inline 1} $1_Event_publish_generator(signer: int) {
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
procedure {:inline 1} $1_Event_new_event_handle'$42_TestEmits_DummyEvent'(signer: int) returns (res: $1_Event_EventHandle'$42_TestEmits_DummyEvent') {
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


// struct TestEmits::DummyEvent at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:6:5+52
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

// fun TestEmits::opaque [baseline] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:274:5+197
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
    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:274:5+1
    assume {:print "$at(2,8816,8817)"} true;
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,17,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:275:51+1
    assume {:print "$at(2,8924,8925)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:275:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:275:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,8882,8927)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,17):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    // >> opaque call: TestEmits::callee($t0)
    assume {:print "$at(2,8937,8951)"} true;

    // opaque begin: TestEmits::callee($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // opaque end: TestEmits::callee($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14

    // $t8 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:277:51+1
    assume {:print "$at(2,9003,9004)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:277:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:277:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,8961,9006)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,17):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:277:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,17,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:278:5+1
    assume {:print "$at(2,9012,9013)"} true;
L1:

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:278:5+1
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:278:5+1
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:278:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:274:5+197
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:274:5+197
    assume {:print "$at(2,8816,9013)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:274:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,17,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:275:51+1
    assume {:print "$at(2,8924,8925)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:275:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:275:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,8882,8927)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,17):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    // >> opaque call: TestEmits::callee($t0)
    assume {:print "$at(2,8937,8951)"} true;

    // opaque begin: TestEmits::callee($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // opaque end: TestEmits::callee($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:276:9+14

    // $t8 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:277:51+1
    assume {:print "$at(2,9003,9004)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:277:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:277:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,8961,9006)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,17):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:277:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,17,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:278:5+1
    assume {:print "$at(2,9012,9013)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:280:9+35
    assume {:print "$at(2,9040,9075)"} true;
    assert {:msg "assert_failed(2,9040,9075): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:281:9+35
    assume {:print "$at(2,9084,9119)"} true;
    assert {:msg "assert_failed(2,9084,9119): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:282:9+36
    assume {:print "$at(2,9128,9164)"} true;
    assert {:msg "assert_failed(2,9128,9164): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:283:9+35
    assume {:print "$at(2,9173,9208)"} true;
    assert {:msg "assert_failed(2,9173,9208): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:279:5+196
    assume {:print "$at(2,9018,9214)"} true;
    assert {:msg "assert_failed(2,9018,9214): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:279:5+196
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:278:5+1
    assume {:print "$at(2,9012,9013)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:278:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::callee [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:263:5+174
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:263:5+174
    assume {:print "$at(2,8475,8649)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:263:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,0,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:264:51+1
    assume {:print "$at(2,8583,8584)"} true;
    $t1 := 7;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:264:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:264:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,8541,8586)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,0):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 77 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:265:51+2
    assume {:print "$at(2,8638,8640)"} true;
    $t4 := 77;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:265:35+19
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:265:9+46
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,8596,8642)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,0):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:265:55+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,0,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:266:5+1
    assume {:print "$at(2,8648,8649)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:269:9+16
    assume {:print "$at(2,8699,8715)"} true;
    assert {:msg "assert_failed(2,8699,8715): function does not abort under this condition"}
      !false;

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(7), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:270:9+35
    assume {:print "$at(2,8724,8759)"} true;
    assert {:msg "assert_failed(2,8724,8759): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:271:9+36
    assume {:print "$at(2,8768,8804)"} true;
    assert {:msg "assert_failed(2,8768,8804): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:267:5+156
    assume {:print "$at(2,8654,8810)"} true;
    assert {:msg "assert_failed(2,8654,8810): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:267:5+156
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:266:5+1
    assume {:print "$at(2,8648,8649)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:267:5+156
    assume {:print "$at(2,8654,8810)"} true;
    assert {:msg "assert_failed(2,8654,8810): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:267:5+156
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::callee_partial [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:325:5+182
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:325:5+182
    assume {:print "$at(2,10588,10770)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:325:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,1,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:326:51+1
    assume {:print "$at(2,10704,10705)"} true;
    $t1 := 7;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:326:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:326:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,10662,10707)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 77 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:327:51+2
    assume {:print "$at(2,10759,10761)"} true;
    $t4 := 77;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:327:35+19
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:327:9+46
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,10717,10763)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,1):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:327:55+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,1,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:328:5+1
    assume {:print "$at(2,10769,10770)"} true;
L1:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:331:9+16
    assume {:print "$at(2,10828,10844)"} true;
    assert {:msg "assert_failed(2,10828,10844): function does not abort under this condition"}
      !false;

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(7), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:332:9+35
    assume {:print "$at(2,10853,10888)"} true;
    assert {:msg "assert_failed(2,10853,10888): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:333:9+36
    assume {:print "$at(2,10897,10933)"} true;
    assert {:msg "assert_failed(2,10897,10933): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:333:9+36
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:328:5+1
    assume {:print "$at(2,10769,10770)"} true;
L2:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:329:5+197
    assume {:print "$at(2,10775,10972)"} true;
    assert {:msg "assert_failed(2,10775,10972): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:329:5+197
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:96:5+166
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:96:5+166
    assume {:print "$at(2,3245,3411)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:96:5+166
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:96:5+1
    assume {:print "$track_local(5,2,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:96:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,2,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:97:17+1
    assume {:print "$at(2,3332,3333)"} true;
    $t2 := 7;
    assume $IsValid'u64'($t2);

    // $t3 := >($t0, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:97:15+1
    call $t3 := $Gt($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:97:9+81
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:97:9+81
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:97:9+81
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:98:31+6
    assume {:print "$at(2,3367,3373)"} true;
L0:

    // $t4 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:98:55+1
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:98:39+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t5) on_abort goto L5 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:98:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,3349,3394)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,2):", $t6} $t6 == $t6;
        goto L5;
    }

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:97:9+81
    assume {:print "$at(2,3324,3405)"} true;
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:97:9+81
L2:

    // destroy($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:97:9+81

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:97:9+81
L3:

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:97:9+81
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,2,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:100:5+1
    assume {:print "$at(2,3410,3411)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, Gt($t0, 7))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:102:9+44
    assume {:print "$at(2,3443,3487)"} true;
    assert {:msg "assert_failed(2,3443,3487): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), ($t0 > 7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, Gt($t0, 7))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:101:5+77
    assume {:print "$at(2,3416,3493)"} true;
    assert {:msg "assert_failed(2,3416,3493): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), ($t0 > 7)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:101:5+77
    $ret0 := $t1;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:100:5+1
    assume {:print "$at(2,3410,3411)"} true;
L5:

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:100:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_bool [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:123:5+168
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:123:5+168
    assume {:print "$at(2,4106,4274)"} true;
    assume $IsValid'bool'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:123:5+168
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[b]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:123:5+1
    assume {:print "$track_local(5,3,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:123:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,3,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // if ($t0) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:124:9+77
    assume {:print "$at(2,4191,4268)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:124:9+77
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:124:9+77
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:125:31+6
    assume {:print "$at(2,4230,4236)"} true;
L0:

    // $t2 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:125:55+1
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestEmits::DummyEvent($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:125:39+18
    $t3 := $42_TestEmits_DummyEvent($t2);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t3) on_abort goto L5 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:125:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,4212,4257)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,3):", $t4} $t4 == $t4;
        goto L5;
    }

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:124:9+77
    assume {:print "$at(2,4191,4268)"} true;
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:124:9+77
L2:

    // destroy($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:124:9+77

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:124:9+77
L3:

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:124:9+77
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,3,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:127:5+1
    assume {:print "$at(2,4273,4274)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:129:9+40
    assume {:print "$at(2,4311,4351)"} true;
    assert {:msg "assert_failed(2,4311,4351): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), $t0); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:128:5+78
    assume {:print "$at(2,4279,4357)"} true;
    assert {:msg "assert_failed(2,4279,4357): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), $t0); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:128:5+78
    $ret0 := $t1;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:127:5+1
    assume {:print "$at(2,4273,4274)"} true;
L5:

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:127:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_missing_condition_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:114:5+194
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:114:5+194
    assume {:print "$at(2,3805,3999)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:114:5+194
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:114:5+1
    assume {:print "$track_local(5,4,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:114:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,4,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:115:17+1
    assume {:print "$at(2,3920,3921)"} true;
    $t2 := 7;
    assume $IsValid'u64'($t2);

    // $t3 := >($t0, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:115:15+1
    call $t3 := $Gt($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:115:9+81
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:115:9+81
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:115:9+81
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:116:31+6
    assume {:print "$at(2,3955,3961)"} true;
L0:

    // $t4 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:116:55+1
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:116:39+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t5) on_abort goto L5 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:116:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,3937,3982)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,4):", $t6} $t6 == $t6;
        goto L5;
    }

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:115:9+81
    assume {:print "$at(2,3912,3993)"} true;
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:115:9+81
L2:

    // destroy($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:115:9+81

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:115:9+81
L3:

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:115:9+81
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,4,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:118:5+1
    assume {:print "$at(2,3998,3999)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:120:9+35
    assume {:print "$at(2,4059,4094)"} true;
    assert {:msg "assert_failed(2,4059,4094): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:119:5+96
    assume {:print "$at(2,4004,4100)"} true;
    assert {:msg "assert_failed(2,4004,4100): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:119:5+96
    $ret0 := $t1;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:118:5+1
    assume {:print "$at(2,3998,3999)"} true;
L5:

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:118:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_multiple [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:132:5+370
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:132:5+370
    assume {:print "$at(2,4363,4733)"} true;
    assume $IsValid'bool'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:132:5+370
    assume $IsValid'bool'($t1);

    // assume WellFormed($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:132:5+370
    assume $IsValid'bool'($t2);

    // assume WellFormed($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:132:5+370
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t3));

    // trace_local[b0]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:132:5+1
    assume {:print "$track_local(5,5,0):", $t0} $t0 == $t0;

    // trace_local[b1]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:132:5+1
    assume {:print "$track_local(5,5,1):", $t1} $t1 == $t1;

    // trace_local[b2]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:132:5+1
    assume {:print "$track_local(5,5,2):", $t2} $t2 == $t2;

    // trace_local[handle]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:132:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t3);
    assume {:print "$track_local(5,5,3):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // if ($t0) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:133:9+78
    assume {:print "$at(2,4473,4551)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:133:9+78
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:133:9+78
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:134:31+6
    assume {:print "$at(2,4513,4519)"} true;
L0:

    // $t4 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:134:55+1
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:134:39+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t5) on_abort goto L11 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:134:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,4495,4540)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,5):", $t6} $t6 == $t6;
        goto L11;
    }

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:136:13+2
    assume {:print "$at(2,4565,4567)"} true;
L2:

    // if ($t1) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:136:9+78
    if ($t1) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:136:9+78
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:136:9+78
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:137:31+6
    assume {:print "$at(2,4601,4607)"} true;
L3:

    // $t7 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:137:55+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestEmits::DummyEvent($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:137:39+18
    $t8 := $42_TestEmits_DummyEvent($t7);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t8) on_abort goto L11 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:137:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,4583,4628)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,5):", $t6} $t6 == $t6;
        goto L11;
    }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:139:13+2
    assume {:print "$at(2,4653,4655)"} true;
L5:

    // if ($t2) goto L6 else goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:139:9+78
    if ($t2) { goto L6; } else { goto L7; }

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:139:9+78
L7:

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:139:9+78
    goto L8;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:140:31+6
    assume {:print "$at(2,4689,4695)"} true;
L6:

    // $t9 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:140:55+1
    $t9 := 2;
    assume $IsValid'u64'($t9);

    // $t10 := pack TestEmits::DummyEvent($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:140:39+18
    $t10 := $42_TestEmits_DummyEvent($t9);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t10) on_abort goto L11 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:140:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,4671,4716)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,5):", $t6} $t6 == $t6;
        goto L11;
    }

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:139:9+78
    assume {:print "$at(2,4649,4727)"} true;
    goto L9;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:139:9+78
L8:

    // destroy($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:139:9+78

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:139:9+78
L9:

    // trace_local[handle]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:139:9+78
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t3);
    assume {:print "$track_local(5,5,3):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:142:5+1
    assume {:print "$at(2,4732,4733)"} true;
L10:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:144:9+41
    assume {:print "$at(2,4774,4815)"} true;
    assert {:msg "assert_failed(2,4774,4815): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(1), $t3, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:145:9+41
    assume {:print "$at(2,4824,4865)"} true;
    assert {:msg "assert_failed(2,4824,4865): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(1), $t1); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(1), $t3, $t1), pack TestEmits::DummyEvent(2), $t3, $t2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:146:9+41
    assume {:print "$at(2,4874,4915)"} true;
    assert {:msg "assert_failed(2,4874,4915): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(1), $t1), $Dereference($t3), $42_TestEmits_DummyEvent(2), $t2); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(1), $t3, $t1), pack TestEmits::DummyEvent(2), $t3, $t2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:143:5+183
    assume {:print "$at(2,4738,4921)"} true;
    assert {:msg "assert_failed(2,4738,4921): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(1), $t1), $Dereference($t3), $42_TestEmits_DummyEvent(2), $t2); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:143:5+183
    $ret0 := $t3;
    return;

    // label L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:142:5+1
    assume {:print "$at(2,4732,4733)"} true;
L11:

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:142:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_multiple_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:149:5+292
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:149:5+292
    assume {:print "$at(2,4927,5219)"} true;
    assume $IsValid'bool'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:149:5+292
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[b]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:149:5+1
    assume {:print "$track_local(5,6,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:149:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,6,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:150:51+1
    assume {:print "$at(2,5068,5069)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestEmits::DummyEvent($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:150:35+18
    $t3 := $42_TestEmits_DummyEvent($t2);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t3) on_abort goto L5 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:150:9+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,5026,5071)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,6):", $t4} $t4 == $t4;
        goto L5;
    }

    // $t5 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:151:51+1
    assume {:print "$at(2,5123,5124)"} true;
    $t5 := 1;
    assume $IsValid'u64'($t5);

    // $t6 := pack TestEmits::DummyEvent($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:151:35+18
    $t6 := $42_TestEmits_DummyEvent($t5);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t6) on_abort goto L5 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:151:9+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,5081,5126)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,6):", $t4} $t4 == $t4;
        goto L5;
    }

    // if ($t0) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:152:9+77
    assume {:print "$at(2,5136,5213)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:152:9+77
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:152:9+77
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:153:31+6
    assume {:print "$at(2,5175,5181)"} true;
L0:

    // $t7 := 2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:153:55+1
    $t7 := 2;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestEmits::DummyEvent($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:153:39+18
    $t8 := $42_TestEmits_DummyEvent($t7);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t8) on_abort goto L5 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:153:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,5157,5202)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,6):", $t4} $t4 == $t4;
        goto L5;
    }

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:152:9+77
    assume {:print "$at(2,5136,5213)"} true;
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:152:9+77
L2:

    // destroy($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:152:9+77

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:152:9+77
L3:

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:152:9+77
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,6,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:155:5+1
    assume {:print "$at(2,5218,5219)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:157:9+35
    assume {:print "$at(2,5270,5305)"} true;
    assert {:msg "assert_failed(2,5270,5305): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(1), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:158:9+35
    assume {:print "$at(2,5314,5349)"} true;
    assert {:msg "assert_failed(2,5314,5349): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(1), $t1), pack TestEmits::DummyEvent(2), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:159:9+35
    assume {:print "$at(2,5358,5393)"} true;
    assert {:msg "assert_failed(2,5358,5393): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(1), $t1), pack TestEmits::DummyEvent(2), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:156:5+175
    assume {:print "$at(2,5224,5399)"} true;
    assert {:msg "assert_failed(2,5224,5399): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:156:5+175
    $ret0 := $t1;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:155:5+1
    assume {:print "$at(2,5218,5219)"} true;
L5:

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:155:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_multiple_same [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:162:5+375
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:162:5+375
    assume {:print "$at(2,5405,5780)"} true;
    assume $IsValid'bool'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:162:5+375
    assume $IsValid'bool'($t1);

    // assume WellFormed($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:162:5+375
    assume $IsValid'bool'($t2);

    // assume WellFormed($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:162:5+375
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t3));

    // trace_local[b0]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:162:5+1
    assume {:print "$track_local(5,7,0):", $t0} $t0 == $t0;

    // trace_local[b1]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:162:5+1
    assume {:print "$track_local(5,7,1):", $t1} $t1 == $t1;

    // trace_local[b2]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:162:5+1
    assume {:print "$track_local(5,7,2):", $t2} $t2 == $t2;

    // trace_local[handle]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:162:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t3);
    assume {:print "$track_local(5,7,3):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // if ($t0) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:163:9+78
    assume {:print "$at(2,5520,5598)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:163:9+78
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:163:9+78
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:164:31+6
    assume {:print "$at(2,5560,5566)"} true;
L0:

    // $t4 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:164:55+1
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:164:39+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t5) on_abort goto L11 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:164:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,5542,5587)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,7):", $t6} $t6 == $t6;
        goto L11;
    }

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:166:13+2
    assume {:print "$at(2,5612,5614)"} true;
L2:

    // if ($t1) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:166:9+78
    if ($t1) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:166:9+78
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:166:9+78
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:167:31+6
    assume {:print "$at(2,5648,5654)"} true;
L3:

    // $t7 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:167:55+1
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestEmits::DummyEvent($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:167:39+18
    $t8 := $42_TestEmits_DummyEvent($t7);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t8) on_abort goto L11 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:167:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,5630,5675)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,7):", $t6} $t6 == $t6;
        goto L11;
    }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:169:13+2
    assume {:print "$at(2,5700,5702)"} true;
L5:

    // if ($t2) goto L6 else goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:169:9+78
    if ($t2) { goto L6; } else { goto L7; }

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:169:9+78
L7:

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:169:9+78
    goto L8;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:170:31+6
    assume {:print "$at(2,5736,5742)"} true;
L6:

    // $t9 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:170:55+1
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // $t10 := pack TestEmits::DummyEvent($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:170:39+18
    $t10 := $42_TestEmits_DummyEvent($t9);

    // Event::emit_event<TestEmits::DummyEvent>($t3, $t10) on_abort goto L11 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:170:13+45
    call $t3 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t3, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,5718,5763)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,7):", $t6} $t6 == $t6;
        goto L11;
    }

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:169:9+78
    assume {:print "$at(2,5696,5774)"} true;
    goto L9;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:169:9+78
L8:

    // destroy($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:169:9+78

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:169:9+78
L9:

    // trace_local[handle]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:169:9+78
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t3);
    assume {:print "$track_local(5,7,3):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:172:5+1
    assume {:print "$at(2,5779,5780)"} true;
L10:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:174:9+41
    assume {:print "$at(2,5826,5867)"} true;
    assert {:msg "assert_failed(2,5826,5867): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(0), $t3, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:175:9+41
    assume {:print "$at(2,5876,5917)"} true;
    assert {:msg "assert_failed(2,5876,5917): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(0), $t1); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(0), $t3, $t1), pack TestEmits::DummyEvent(0), $t3, $t2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:176:9+41
    assume {:print "$at(2,5926,5967)"} true;
    assert {:msg "assert_failed(2,5926,5967): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(0), $t1), $Dereference($t3), $42_TestEmits_DummyEvent(0), $t2); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t3, $t0), pack TestEmits::DummyEvent(0), $t3, $t1), pack TestEmits::DummyEvent(0), $t3, $t2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:173:5+188
    assume {:print "$at(2,5785,5973)"} true;
    assert {:msg "assert_failed(2,5785,5973): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t3), $42_TestEmits_DummyEvent(0), $t0), $Dereference($t3), $42_TestEmits_DummyEvent(0), $t1), $Dereference($t3), $42_TestEmits_DummyEvent(0), $t2); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:173:5+188
    $ret0 := $t3;
    return;

    // label L11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:172:5+1
    assume {:print "$at(2,5779,5780)"} true;
L11:

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:172:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_multiple_same_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:179:5+297
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:179:5+297
    assume {:print "$at(2,5979,6276)"} true;
    assume $IsValid'bool'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:179:5+297
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[b]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:179:5+1
    assume {:print "$track_local(5,8,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:179:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,8,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:180:51+1
    assume {:print "$at(2,6125,6126)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestEmits::DummyEvent($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:180:35+18
    $t3 := $42_TestEmits_DummyEvent($t2);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t3) on_abort goto L5 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:180:9+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,6083,6128)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,8):", $t4} $t4 == $t4;
        goto L5;
    }

    // $t5 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:181:51+1
    assume {:print "$at(2,6180,6181)"} true;
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := pack TestEmits::DummyEvent($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:181:35+18
    $t6 := $42_TestEmits_DummyEvent($t5);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t6) on_abort goto L5 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:181:9+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,6138,6183)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,8):", $t4} $t4 == $t4;
        goto L5;
    }

    // if ($t0) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:182:9+77
    assume {:print "$at(2,6193,6270)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:182:9+77
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:182:9+77
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:183:31+6
    assume {:print "$at(2,6232,6238)"} true;
L0:

    // $t7 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:183:55+1
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestEmits::DummyEvent($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:183:39+18
    $t8 := $42_TestEmits_DummyEvent($t7);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t8) on_abort goto L5 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:183:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,6214,6259)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,8):", $t4} $t4 == $t4;
        goto L5;
    }

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:182:9+77
    assume {:print "$at(2,6193,6270)"} true;
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:182:9+77
L2:

    // destroy($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:182:9+77

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:182:9+77
L3:

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:182:9+77
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,8,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:185:5+1
    assume {:print "$at(2,6275,6276)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:187:9+35
    assume {:print "$at(2,6332,6367)"} true;
    assert {:msg "assert_failed(2,6332,6367): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:188:9+35
    assume {:print "$at(2,6376,6411)"} true;
    assert {:msg "assert_failed(2,6376,6411): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:189:9+35
    assume {:print "$at(2,6420,6455)"} true;
    assert {:msg "assert_failed(2,6420,6455): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:186:5+180
    assume {:print "$at(2,6281,6461)"} true;
    assert {:msg "assert_failed(2,6281,6461): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:186:5+180
    $ret0 := $t1;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:185:5+1
    assume {:print "$at(2,6275,6276)"} true;
L5:

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:185:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::conditional_wrong_condition_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:105:5+192
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:105:5+192
    assume {:print "$at(2,3499,3691)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:105:5+192
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:105:5+1
    assume {:print "$track_local(5,9,0):", $t0} $t0 == $t0;

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:105:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,9,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:106:17+1
    assume {:print "$at(2,3612,3613)"} true;
    $t2 := 7;
    assume $IsValid'u64'($t2);

    // $t3 := >($t0, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:106:15+1
    call $t3 := $Gt($t0, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:106:9+81
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:106:9+81
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:106:9+81
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:107:31+6
    assume {:print "$at(2,3647,3653)"} true;
L0:

    // $t4 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:107:55+1
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:107:39+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t5) on_abort goto L5 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:107:13+45
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,3629,3674)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(5,9):", $t6} $t6 == $t6;
        goto L5;
    }

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:106:9+81
    assume {:print "$at(2,3604,3685)"} true;
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:106:9+81
L2:

    // destroy($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:106:9+81

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:106:9+81
L3:

    // trace_local[handle]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:106:9+81
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,9,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:109:5+1
    assume {:print "$at(2,3690,3691)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, Gt($t0, 0))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:111:9+44
    assume {:print "$at(2,3749,3793)"} true;
    assert {:msg "assert_failed(2,3749,3793): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), ($t0 > 0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1, Gt($t0, 0))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:110:5+103
    assume {:print "$at(2,3696,3799)"} true;
    assert {:msg "assert_failed(2,3696,3799): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0), ($t0 > 0)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:110:5+103
    $ret0 := $t1;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:109:5+1
    assume {:print "$at(2,3690,3691)"} true;
L5:

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:109:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestEmits::emits_in_schema [baseline] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:197:5+127
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
    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:197:5+1
    assume {:print "$at(2,6577,6578)"} true;
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,10,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:198:51+1
    assume {:print "$at(2,6694,6695)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:198:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:198:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,6652,6697)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,10):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:198:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,10,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:199:5+1
    assume {:print "$at(2,6703,6704)"} true;
L1:

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:199:5+1
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:199:5+1
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:199:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::emits_in_schema [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:197:5+127
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:197:5+127
    assume {:print "$at(2,6577,6704)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:197:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,10,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:198:51+1
    assume {:print "$at(2,6694,6695)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:198:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:198:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,6652,6697)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,10):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:198:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,10,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:199:5+1
    assume {:print "$at(2,6703,6704)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:205:9+35
    assume {:print "$at(2,6860,6895)"} true;
    assert {:msg "assert_failed(2,6860,6895): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:200:5+64
    assume {:print "$at(2,6709,6773)"} true;
    assert {:msg "assert_failed(2,6709,6773): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:200:5+64
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:199:5+1
    assume {:print "$at(2,6703,6704)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:199:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::emits_in_schema_condition [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:208:5+158
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:208:5+158
    assume {:print "$at(2,6907,7065)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:208:5+158
    assume $IsValid'u64'($t1);

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:208:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,11,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // trace_local[x]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:208:5+1
    assume {:print "$track_local(5,11,1):", $t1} $t1 == $t1;

    // $t2 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:209:17+1
    assume {:print "$at(2,7008,7009)"} true;
    $t2 := 7;
    assume $IsValid'u64'($t2);

    // $t3 := >($t1, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:209:15+1
    call $t3 := $Gt($t1, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:209:9+58
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:209:9+58
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:209:9+58
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:210:29+6
    assume {:print "$at(2,7041,7047)"} true;
L0:

    // TestEmits::emits_in_schema($t0) on_abort goto L5 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:210:13+23
    call $t0 := $42_TestEmits_emits_in_schema($t0);
    if ($abort_flag) {
        assume {:print "$at(2,7025,7048)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,11):", $t4} $t4 == $t4;
        goto L5;
    }

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:210:13+23
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:209:9+58
    assume {:print "$at(2,7000,7058)"} true;
L2:

    // destroy($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:209:9+58

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:211:10+1
    assume {:print "$at(2,7058,7059)"} true;
L3:

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:211:10+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,11,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:212:5+1
    assume {:print "$at(2,7064,7065)"} true;
L4:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0, Gt($t1, 7))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:205:9+35
    assume {:print "$at(2,6860,6895)"} true;
    assert {:msg "assert_failed(2,6860,6895): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0), ($t1 > 7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0, Gt($t1, 7))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:213:5+84
    assume {:print "$at(2,7070,7154)"} true;
    assert {:msg "assert_failed(2,7070,7154): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0), ($t1 > 7)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:213:5+84
    $ret0 := $t0;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:212:5+1
    assume {:print "$at(2,7064,7065)"} true;
L5:

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:212:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::multiple [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:38:5+175
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:38:5+175
    assume {:print "$at(2,1130,1305)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:38:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,12,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:39:51+1
    assume {:print "$at(2,1240,1241)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:39:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:39:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,1198,1243)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,12):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:40:51+1
    assume {:print "$at(2,1295,1296)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:40:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:40:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,1253,1298)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,12):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:40:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,12,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:41:5+1
    assume {:print "$at(2,1304,1305)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:43:9+35
    assume {:print "$at(2,1334,1369)"} true;
    assert {:msg "assert_failed(2,1334,1369): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:44:9+35
    assume {:print "$at(2,1378,1413)"} true;
    assert {:msg "assert_failed(2,1378,1413): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:42:5+109
    assume {:print "$at(2,1310,1419)"} true;
    assert {:msg "assert_failed(2,1310,1419): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:42:5+109
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:41:5+1
    assume {:print "$at(2,1304,1305)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:41:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::multiple_different_handle [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:74:5+454
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:74:5+454
    assume {:print "$at(2,2359,2813)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:74:5+454
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:74:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,13,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // trace_local[handle2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:74:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,13,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:75:51+1
    assume {:print "$at(2,2525,2526)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestEmits::DummyEvent($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:75:35+18
    $t3 := $42_TestEmits_DummyEvent($t2);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t3) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:75:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,2483,2528)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t5 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:76:51+1
    assume {:print "$at(2,2580,2581)"} true;
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := pack TestEmits::DummyEvent($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:76:35+18
    $t6 := $42_TestEmits_DummyEvent($t5);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t6) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:76:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,2538,2583)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t7 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:77:51+1
    assume {:print "$at(2,2635,2636)"} true;
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestEmits::DummyEvent($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:77:35+18
    $t8 := $42_TestEmits_DummyEvent($t7);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t8) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:77:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,2593,2638)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t9 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:78:52+1
    assume {:print "$at(2,2691,2692)"} true;
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // $t10 := pack TestEmits::DummyEvent($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:78:36+18
    $t10 := $42_TestEmits_DummyEvent($t9);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t10) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:78:9+46
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,2648,2694)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t11 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:79:52+1
    assume {:print "$at(2,2747,2748)"} true;
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // $t12 := pack TestEmits::DummyEvent($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:79:36+18
    $t12 := $42_TestEmits_DummyEvent($t11);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t12) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:79:9+46
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t12);
    if ($abort_flag) {
        assume {:print "$at(2,2704,2750)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t13 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:80:52+1
    assume {:print "$at(2,2803,2804)"} true;
    $t13 := 1;
    assume $IsValid'u64'($t13);

    // $t14 := pack TestEmits::DummyEvent($t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:80:36+18
    $t14 := $42_TestEmits_DummyEvent($t13);

    // Event::emit_event<TestEmits::DummyEvent>($t1, $t14) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:80:9+46
    call $t1 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t1, $t14);
    if ($abort_flag) {
        assume {:print "$at(2,2760,2806)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,13):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:80:55+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,13,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // trace_local[handle2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:80:55+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,13,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:81:5+1
    assume {:print "$at(2,2812,2813)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:83:9+35
    assume {:print "$at(2,2859,2894)"} true;
    assert {:msg "assert_failed(2,2859,2894): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:84:9+35
    assume {:print "$at(2,2903,2938)"} true;
    assert {:msg "assert_failed(2,2903,2938): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:85:9+35
    assume {:print "$at(2,2947,2982)"} true;
    assert {:msg "assert_failed(2,2947,2982): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:86:9+36
    assume {:print "$at(2,2991,3027)"} true;
    assert {:msg "assert_failed(2,2991,3027): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:87:9+36
    assume {:print "$at(2,3036,3072)"} true;
    assert {:msg "assert_failed(2,3036,3072): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(1), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:88:9+36
    assume {:print "$at(2,3081,3117)"} true;
    assert {:msg "assert_failed(2,3081,3117): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(0), $t1), pack TestEmits::DummyEvent(1), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:82:5+305
    assume {:print "$at(2,2818,3123)"} true;
    assert {:msg "assert_failed(2,2818,3123): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(0)), $Dereference($t1), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:82:5+305
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:81:5+1
    assume {:print "$at(2,2812,2813)"} true;
L2:

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:81:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::multiple_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:47:5+185
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:47:5+185
    assume {:print "$at(2,1425,1610)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:47:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,14,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:48:51+1
    assume {:print "$at(2,1545,1546)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:48:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:48:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,1503,1548)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,14):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:49:51+1
    assume {:print "$at(2,1600,1601)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:49:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:49:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,1558,1603)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,14):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:49:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,14,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:50:5+1
    assume {:print "$at(2,1609,1610)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:52:9+35
    assume {:print "$at(2,1649,1684)"} true;
    assert {:msg "assert_failed(2,1649,1684): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:53:9+35
    assume {:print "$at(2,1693,1728)"} true;
    assert {:msg "assert_failed(2,1693,1728): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(2), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:54:9+35
    assume {:print "$at(2,1737,1772)"} true;
    assert {:msg "assert_failed(2,1737,1772): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t0), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(2), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:51:5+163
    assume {:print "$at(2,1615,1778)"} true;
    assert {:msg "assert_failed(2,1615,1778): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t0), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:51:5+163
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:50:5+1
    assume {:print "$at(2,1609,1610)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:50:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::multiple_same [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:57:5+180
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:57:5+180
    assume {:print "$at(2,1784,1964)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:57:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,15,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:58:51+1
    assume {:print "$at(2,1899,1900)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:58:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:58:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,1857,1902)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,15):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:59:51+1
    assume {:print "$at(2,1954,1955)"} true;
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:59:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:59:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,1912,1957)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,15):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:59:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,15,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:60:5+1
    assume {:print "$at(2,1963,1964)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:62:9+35
    assume {:print "$at(2,1998,2033)"} true;
    assert {:msg "assert_failed(2,1998,2033): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:63:9+35
    assume {:print "$at(2,2042,2077)"} true;
    assert {:msg "assert_failed(2,2042,2077): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:61:5+114
    assume {:print "$at(2,1969,2083)"} true;
    assert {:msg "assert_failed(2,1969,2083): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:61:5+114
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:60:5+1
    assume {:print "$at(2,1963,1964)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:60:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::multiple_same_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:66:5+135
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:66:5+135
    assume {:print "$at(2,2089,2224)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:66:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,16,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:67:51+1
    assume {:print "$at(2,2214,2215)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:67:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:67:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,2172,2217)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,16):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:67:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,16,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:68:5+1
    assume {:print "$at(2,2223,2224)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:70:9+35
    assume {:print "$at(2,2268,2303)"} true;
    assert {:msg "assert_failed(2,2268,2303): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:71:9+35
    assume {:print "$at(2,2312,2347)"} true;
    assert {:msg "assert_failed(2,2312,2347): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:69:5+124
    assume {:print "$at(2,2229,2353)"} true;
    assert {:msg "assert_failed(2,2229,2353): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:69:5+124
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:68:5+1
    assume {:print "$at(2,2223,2224)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:68:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque_completeness_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:309:5+220
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:309:5+220
    assume {:print "$at(2,10010,10230)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:309:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,18,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:310:51+1
    assume {:print "$at(2,10141,10142)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:310:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:310:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,10099,10144)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,18):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:311:9+14
    // >> opaque call: TestEmits::callee($t0)
    assume {:print "$at(2,10154,10168)"} true;

    // opaque begin: TestEmits::callee($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:311:9+14

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:311:9+14
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:311:9+14
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:311:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:311:9+14
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:311:9+14
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:311:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // opaque end: TestEmits::callee($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:311:9+14

    // $t8 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:312:51+1
    assume {:print "$at(2,10220,10221)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:312:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:312:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,10178,10223)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,18):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:312:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,18,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:313:5+1
    assume {:print "$at(2,10229,10230)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:315:9+35
    assume {:print "$at(2,10280,10315)"} true;
    assert {:msg "assert_failed(2,10280,10315): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:316:9+35
    assume {:print "$at(2,10324,10359)"} true;
    assert {:msg "assert_failed(2,10324,10359): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:317:9+35
    assume {:print "$at(2,10368,10403)"} true;
    assert {:msg "assert_failed(2,10368,10403): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:314:5+174
    assume {:print "$at(2,10235,10409)"} true;
    assert {:msg "assert_failed(2,10235,10409): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:314:5+174
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:313:5+1
    assume {:print "$at(2,10229,10230)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:313:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque_in_call_chain [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:299:5+101
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:299:5+101
    assume {:print "$at(2,9688,9789)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:299:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,19,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // TestEmits::opaque($t0) on_abort goto L2 with $t1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:300:9+14
    assume {:print "$at(2,9768,9782)"} true;
    call $t0 := $42_TestEmits_opaque($t0);
    if ($abort_flag) {
        assume {:print "$at(2,9768,9782)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(5,19):", $t1} $t1 == $t1;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:300:23+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,19,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:301:5+1
    assume {:print "$at(2,9788,9789)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:303:9+35
    assume {:print "$at(2,9830,9865)"} true;
    assert {:msg "assert_failed(2,9830,9865): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:304:9+35
    assume {:print "$at(2,9874,9909)"} true;
    assert {:msg "assert_failed(2,9874,9909): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:305:9+36
    assume {:print "$at(2,9918,9954)"} true;
    assert {:msg "assert_failed(2,9918,9954): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:306:9+35
    assume {:print "$at(2,9963,9998)"} true;
    assert {:msg "assert_failed(2,9963,9998): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:302:5+210
    assume {:print "$at(2,9794,10004)"} true;
    assert {:msg "assert_failed(2,9794,10004): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:302:5+210
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:301:5+1
    assume {:print "$at(2,9788,9789)"} true;
L2:

    // abort($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:301:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:286:5+207
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:286:5+207
    assume {:print "$at(2,9220,9427)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:286:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,20,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:287:51+1
    assume {:print "$at(2,9338,9339)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:287:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:287:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,9296,9341)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,20):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:288:9+14
    // >> opaque call: TestEmits::callee($t0)
    assume {:print "$at(2,9351,9365)"} true;

    // opaque begin: TestEmits::callee($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:288:9+14

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:288:9+14
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:288:9+14
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:288:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:288:9+14
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:288:9+14
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:288:9+14
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // opaque end: TestEmits::callee($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:288:9+14

    // $t8 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:289:51+1
    assume {:print "$at(2,9417,9418)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:289:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:289:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,9375,9420)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,20):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:289:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,20,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:290:5+1
    assume {:print "$at(2,9426,9427)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:292:9+35
    assume {:print "$at(2,9464,9499)"} true;
    assert {:msg "assert_failed(2,9464,9499): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:293:9+35
    assume {:print "$at(2,9508,9543)"} true;
    assert {:msg "assert_failed(2,9508,9543): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:294:9+36
    assume {:print "$at(2,9552,9588)"} true;
    assert {:msg "assert_failed(2,9552,9588): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:295:9+35
    assume {:print "$at(2,9597,9632)"} true;
    assert {:msg "assert_failed(2,9597,9632): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(2), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:296:9+35
    assume {:print "$at(2,9641,9676)"} true;
    assert {:msg "assert_failed(2,9641,9676): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t0), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0), pack TestEmits::DummyEvent(2), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:291:5+250
    assume {:print "$at(2,9432,9682)"} true;
    assert {:msg "assert_failed(2,9432,9682): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)), $Dereference($t0), $42_TestEmits_DummyEvent(2)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:291:5+250
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:290:5+1
    assume {:print "$at(2,9426,9427)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:290:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque_partial [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:337:5+213
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:337:5+213
    assume {:print "$at(2,10978,11191)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:337:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,21,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:338:51+1
    assume {:print "$at(2,11094,11095)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:338:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:338:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,11052,11097)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,21):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:339:9+22
    // >> opaque call: TestEmits::callee_partial($t0)
    assume {:print "$at(2,11107,11129)"} true;

    // opaque begin: TestEmits::callee_partial($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:339:9+22

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:339:9+22
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:339:9+22
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:339:9+22
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:339:9+22
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:339:9+22
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:339:9+22
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // event_store_diverge() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:339:9+22
    call $es := $EventStore__diverge($es);

    // opaque end: TestEmits::callee_partial($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:339:9+22

    // $t8 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:340:51+1
    assume {:print "$at(2,11181,11182)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:340:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:340:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,11139,11184)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,21):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:340:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,21,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:341:5+1
    assume {:print "$at(2,11190,11191)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:343:9+35
    assume {:print "$at(2,11226,11261)"} true;
    assert {:msg "assert_failed(2,11226,11261): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:344:9+35
    assume {:print "$at(2,11270,11305)"} true;
    assert {:msg "assert_failed(2,11270,11305): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:345:9+36
    assume {:print "$at(2,11314,11350)"} true;
    assert {:msg "assert_failed(2,11314,11350): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:346:9+35
    assume {:print "$at(2,11359,11394)"} true;
    assert {:msg "assert_failed(2,11359,11394): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:346:9+35
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:341:5+1
    assume {:print "$at(2,11190,11191)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:341:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::opaque_partial_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:350:5+223
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:350:5+223
    assume {:print "$at(2,11439,11662)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:350:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,22,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:351:51+1
    assume {:print "$at(2,11565,11566)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:351:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:351:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,11523,11568)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,22):", $t3} $t3 == $t3;
        goto L2;
    }

    // nop at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:352:9+22
    // >> opaque call: TestEmits::callee_partial($t0)
    assume {:print "$at(2,11578,11600)"} true;

    // opaque begin: TestEmits::callee_partial($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:352:9+22

    // assume Identical($t4, pack TestEmits::DummyEvent(7)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:352:9+22
    assume ($t4 == $42_TestEmits_DummyEvent(7));

    // assume Identical($t5, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:352:9+22
    assume $t5 == $t0;

    // emit_event($t4, $t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:352:9+22
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t5), $t4);

    // assume Identical($t6, pack TestEmits::DummyEvent(77)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:352:9+22
    assume ($t6 == $42_TestEmits_DummyEvent(77));

    // assume Identical($t7, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:352:9+22
    assume $t7 == $t0;

    // emit_event($t6, $t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:352:9+22
    $es := $ExtendEventStore'$42_TestEmits_DummyEvent'($es, $Dereference($t7), $t6);

    // event_store_diverge() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:352:9+22
    call $es := $EventStore__diverge($es);

    // opaque end: TestEmits::callee_partial($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:352:9+22

    // $t8 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:353:51+1
    assume {:print "$at(2,11652,11653)"} true;
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // $t9 := pack TestEmits::DummyEvent($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:353:35+18
    $t9 := $42_TestEmits_DummyEvent($t8);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t9) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:353:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,11610,11655)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,22):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:353:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,22,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:354:5+1
    assume {:print "$at(2,11661,11662)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:356:9+35
    assume {:print "$at(2,11707,11742)"} true;
    assert {:msg "assert_failed(2,11707,11742): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:357:9+35
    assume {:print "$at(2,11751,11786)"} true;
    assert {:msg "assert_failed(2,11751,11786): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:358:9+36
    assume {:print "$at(2,11795,11831)"} true;
    assert {:msg "assert_failed(2,11795,11831): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:359:9+35
    assume {:print "$at(2,11840,11875)"} true;
    assert {:msg "assert_failed(2,11840,11875): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(ExtendEventStore(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0), pack TestEmits::DummyEvent(7), $t0), pack TestEmits::DummyEvent(77), $t0), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:355:5+298
    assume {:print "$at(2,11667,11965)"} true;
    assert {:msg "assert_failed(2,11667,11965): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)), $Dereference($t0), $42_TestEmits_DummyEvent(7)), $Dereference($t0), $42_TestEmits_DummyEvent(77)), $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:355:5+298
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:354:5+1
    assume {:print "$at(2,11661,11662)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:354:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::partial [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:222:5+174
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:222:5+174
    assume {:print "$at(2,7265,7439)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:222:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,23,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:223:51+1
    assume {:print "$at(2,7374,7375)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:223:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:223:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,7332,7377)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,23):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:224:51+1
    assume {:print "$at(2,7429,7430)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:224:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:224:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,7387,7432)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,23):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:224:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,23,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:225:5+1
    assume {:print "$at(2,7438,7439)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:228:9+35
    assume {:print "$at(2,7500,7535)"} true;
    assert {:msg "assert_failed(2,7500,7535): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:228:9+35
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:225:5+1
    assume {:print "$at(2,7438,7439)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:225:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::partial_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:231:5+184
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:231:5+184
    assume {:print "$at(2,7547,7731)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:231:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,24,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:232:51+1
    assume {:print "$at(2,7666,7667)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:232:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:232:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,7624,7669)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,24):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:233:51+1
    assume {:print "$at(2,7721,7722)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:233:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:233:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,7679,7724)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,24):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:233:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,24,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:234:5+1
    assume {:print "$at(2,7730,7731)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:236:9+35
    assume {:print "$at(2,7769,7804)"} true;
    assert {:msg "assert_failed(2,7769,7804): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:235:5+74
    assume {:print "$at(2,7736,7810)"} true;
    assert {:msg "assert_failed(2,7736,7810): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:235:5+74
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:234:5+1
    assume {:print "$at(2,7730,7731)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:234:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::simple [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:12:5+118
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:12:5+118
    assume {:print "$at(2,355,473)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:12:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,25,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:13:51+1
    assume {:print "$at(2,463,464)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:13:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:13:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,421,466)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,25):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:13:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,25,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:14:5+1
    assume {:print "$at(2,472,473)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:16:9+35
    assume {:print "$at(2,500,535)"} true;
    assert {:msg "assert_failed(2,500,535): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:15:5+63
    assume {:print "$at(2,478,541)"} true;
    assert {:msg "assert_failed(2,478,541): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:15:5+63
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:14:5+1
    assume {:print "$at(2,472,473)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:14:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::simple_wrong_handle_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:26:5+181
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:26:5+181
    assume {:print "$at(2,779,960)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:26:5+181
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t1));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:26:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,26,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // trace_local[_handle2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:26:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,26,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t2 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:27:51+1
    assume {:print "$at(2,950,951)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestEmits::DummyEvent($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:27:35+18
    $t3 := $42_TestEmits_DummyEvent($t2);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t3) on_abort goto L2 with $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:27:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,908,953)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,26):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:27:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,26,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // trace_local[_handle2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:27:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t1);
    assume {:print "$track_local(5,26,1):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:28:5+1
    assume {:print "$at(2,959,960)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:30:9+37
    assume {:print "$at(2,1010,1047)"} true;
    assert {:msg "assert_failed(2,1010,1047): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(0), $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:29:5+88
    assume {:print "$at(2,965,1053)"} true;
    assert {:msg "assert_failed(2,965,1053): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t1), $42_TestEmits_DummyEvent(0)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:29:5+88
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:28:5+1
    assume {:print "$at(2,959,960)"} true;
L2:

    // abort($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:28:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestEmits::simple_wrong_msg_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:19:5+138
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:19:5+138
    assume {:print "$at(2,547,685)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:19:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,27,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:20:51+1
    assume {:print "$at(2,675,676)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:20:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:20:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,633,678)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,27):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:20:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,27,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:21:5+1
    assume {:print "$at(2,684,685)"} true;
L1:

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:23:9+35
    assume {:print "$at(2,732,767)"} true;
    assert {:msg "assert_failed(2,732,767): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), pack TestEmits::DummyEvent(1), $t0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:22:5+83
    assume {:print "$at(2,690,773)"} true;
    assert {:msg "assert_failed(2,690,773): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$42_TestEmits_DummyEvent'($EmptyEventStore, $Dereference($t0), $42_TestEmits_DummyEvent(1)); $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:22:5+83
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:21:5+1
    assume {:print "$at(2,684,685)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:21:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::strict [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:244:5+173
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:244:5+173
    assume {:print "$at(2,7920,8093)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:244:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,28,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:245:51+1
    assume {:print "$at(2,8028,8029)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:245:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:245:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,7986,8031)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,28):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:246:51+1
    assume {:print "$at(2,8083,8084)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:246:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:246:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,8041,8086)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,28):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:246:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,28,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:247:5+1
    assume {:print "$at(2,8092,8093)"} true;
L1:

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:247:5+1
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:247:5+1
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:247:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestEmits::strict_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:251:5+183
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:251:5+183
    assume {:print "$at(2,8123,8306)"} true;
    assume $IsValid'$1_Event_EventHandle'$42_TestEmits_DummyEvent''($Dereference($t0));

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:251:5+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,29,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:252:51+1
    assume {:print "$at(2,8241,8242)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestEmits::DummyEvent($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:252:35+18
    $t2 := $42_TestEmits_DummyEvent($t1);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t2) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:252:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,8199,8244)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,29):", $t3} $t3 == $t3;
        goto L2;
    }

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:253:51+1
    assume {:print "$at(2,8296,8297)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestEmits::DummyEvent($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:253:35+18
    $t5 := $42_TestEmits_DummyEvent($t4);

    // Event::emit_event<TestEmits::DummyEvent>($t0, $t5) on_abort goto L2 with $t3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:253:9+45
    call $t0 := $1_Event_emit_event'$42_TestEmits_DummyEvent'($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,8254,8299)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(5,29):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[handle]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:253:54+1
    $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' := $Dereference($t0);
    assume {:print "$track_local(5,29,0):", $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent''} $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'' == $temp_0'$1_Event_EventHandle'$42_TestEmits_DummyEvent'';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:254:5+1
    assume {:print "$at(2,8305,8306)"} true;
L1:

    // assert EventStoreIncludedIn(EmptyEventStore()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:255:5+61
    assume {:print "$at(2,8311,8372)"} true;
    assert {:msg "assert_failed(2,8311,8372): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $EmptyEventStore; $EventStore__is_subset(actual, expected)));

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:255:5+61
    $ret0 := $t0;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:254:5+1
    assume {:print "$at(2,8305,8306)"} true;
L2:

    // abort($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/emits.move:254:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}
