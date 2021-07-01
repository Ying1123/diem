
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


// spec fun at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:121:10+120
function {:inline} $42_TestLet_exists_R($42_TestLet_R_$memory: $Memory $42_TestLet_R, a1: int, a2: int): bool {
    (var e := ($ResourceExists($42_TestLet_R_$memory, a1) || $ResourceExists($42_TestLet_R_$memory, a2)); ((e && e) || e))
}

// struct TestLet::R at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:8:5+39
type {:datatype} $42_TestLet_R;
function {:constructor} $42_TestLet_R($x: int): $42_TestLet_R;
function {:inline} $Update'$42_TestLet_R'_x(s: $42_TestLet_R, x: int): $42_TestLet_R {
    $42_TestLet_R(x)
}
function $IsValid'$42_TestLet_R'(s: $42_TestLet_R): bool {
    $IsValid'u64'($x#$42_TestLet_R(s))
}
function {:inline} $IsEqual'$42_TestLet_R'(s1: $42_TestLet_R, s2: $42_TestLet_R): bool {
    s1 == s2
}
var $42_TestLet_R_$memory: $Memory $42_TestLet_R;

// fun TestLet::local_let_with_memory_access [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:115:5+111
procedure {:timeLimit 40} $42_TestLet_local_let_with_memory_access$verify(_$t0: int, _$t1: int) returns ($ret0: bool)
{
    // declare local variables
    var $t2: bool;
    var $t3: bool;
    var $t4: bool;
    var $t5: bool;
    var $t0: int;
    var $t1: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:119:17+6
    assume {:print "$at(2,3028,3034)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:119:17+6
    assume $IsValid'address'($t1);

    // assume forall $rsc: ResourceDomain<TestLet::R>(): WellFormed($rsc) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:119:17+6
    assume (forall $a_0: int :: {$ResourceValue($42_TestLet_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestLet_R_$memory, $a_0);
    ($IsValid'$42_TestLet_R'($rsc))));

    // trace_local[a1]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:115:5+1
    assume {:print "$at(2,2860,2861)"} true;
    assume {:print "$track_local(0,0,0):", $t0} $t0 == $t0;

    // trace_local[a2]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:115:5+1
    assume {:print "$track_local(0,0,1):", $t1} $t1 == $t1;

    // $t3 := exists<TestLet::R>($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+6
    assume {:print "$at(2,2935,2941)"} true;
    $t3 := $ResourceExists($42_TestLet_R_$memory, $t0);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
L0:

    // $t4 := true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
    $t4 := true;
    assume $IsValid'bool'($t4);

    // $t2 := $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
    $t2 := $t4;

    // trace_local[tmp#$2]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
    assume {:print "$track_local(0,0,2):", $t4} $t4 == $t4;

    // goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
    goto L3;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:36+2
L2:

    // $t5 := exists<TestLet::R>($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:26+6
    $t5 := $ResourceExists($42_TestLet_R_$memory, $t1);

    // $t2 := $t5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
    $t2 := $t5;

    // trace_local[tmp#$2]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
    assume {:print "$track_local(0,0,2):", $t5} $t5 == $t5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
L3:

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:116:9+30
    assume {:print "$track_return(0,0,0):", $t2} $t2 == $t2;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:117:5+1
    assume {:print "$at(2,2970,2971)"} true;
L4:

    // assert Eq<bool>($t2, TestLet::exists_R($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:119:9+35
    assume {:print "$at(2,3020,3055)"} true;
    assert {:msg "assert_failed(2,3020,3055): post-condition does not hold"}
      $IsEqual'bool'($t2, $42_TestLet_exists_R($42_TestLet_R_$memory, $t0, $t1));

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:119:9+35
    $ret0 := $t2;
    return;

}

// fun TestLet::spec_let [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:15:5+75
procedure {:timeLimit 40} $42_TestLet_spec_let$verify(_$t0: int, _$t1: int) returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:22:29+8
    assume {:print "$at(2,391,399)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:22:29+8
    assume $IsValid'u64'($t1);

    // assume Identical($t2, Add($t0, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:19:9+14
    assume {:print "$at(2,294,308)"} true;
    assume ($t2 == ($t0 + 1));

    // assume Identical($t3, Add($t2, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:20:9+14
    assume {:print "$at(2,317,331)"} true;
    assume ($t3 == ($t2 + $t1));

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:15:5+1
    assume {:print "$at(2,190,191)"} true;
    assume {:print "$track_local(0,1,0):", $t0} $t0 == $t0;

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:15:5+1
    assume {:print "$track_local(0,1,1):", $t1} $t1 == $t1;

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:16:14+1
    assume {:print "$at(2,246,247)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := +($t0, $t4) on_abort goto L2 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:16:12+1
    call $t5 := $AddU64($t0, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,244,245)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(0,1):", $t6} $t6 == $t6;
        goto L2;
    }

    // $t7 := +($t5, $t1) on_abort goto L2 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:16:16+1
    call $t7 := $AddU64($t5, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,248,249)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(0,1):", $t6} $t6 == $t6;
        goto L2;
    }

    // $t8 := +($t0, $t1) on_abort goto L2 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:16:23+1
    call $t8 := $AddU64($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,255,256)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(0,1):", $t6} $t6 == $t6;
        goto L2;
    }

    // trace_return[0]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:16:9+18
    assume {:print "$track_return(0,1,0):", $t7} $t7 == $t7;

    // trace_return[1]($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:16:9+18
    assume {:print "$track_return(0,1,1):", $t8} $t8 == $t8;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:17:5+1
    assume {:print "$at(2,264,265)"} true;
L1:

    // assert Eq<u64>($t7, $t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:21:9+22
    assume {:print "$at(2,340,362)"} true;
    assert {:msg "assert_failed(2,340,362): post-condition does not hold"}
      $IsEqual'u64'($t7, $t3);

    // assert Eq<u64>($t8, Sub($t7, 1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:22:9+33
    assume {:print "$at(2,371,404)"} true;
    assert {:msg "assert_failed(2,371,404): post-condition does not hold"}
      $IsEqual'u64'($t8, ($t7 - 1));

    // return ($t7, $t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:22:9+33
    $ret0 := $t7;
    $ret1 := $t8;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:17:5+1
    assume {:print "$at(2,264,265)"} true;
L2:

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:17:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestLet::spec_let_with_abort [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:36:5+139
procedure {:timeLimit 40} $42_TestLet_spec_let_with_abort$verify(_$t0: $Mutation (int), _$t1: $Mutation (int)) returns ($ret0: $Mutation (int), $ret1: $Mutation (int))
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t0: $Mutation (int);
    var $t1: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:36:5+139
    assume {:print "$at(2,695,834)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:36:5+139
    assume $IsValid'u64'($Dereference($t1));

    // assume Identical($t3, Add($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:43:9+16
    assume {:print "$at(2,897,913)"} true;
    assume ($t3 == ($Dereference($t0) + $Dereference($t1)));

    // assume Identical($t4, Mul($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:44:9+20
    assume {:print "$at(2,922,942)"} true;
    assume ($t4 == ($Dereference($t0) * $Dereference($t1)));

    // $t5 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:36:5+1
    assume {:print "$at(2,695,696)"} true;
    $t5 := $Dereference($t0);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:36:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,2,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:36:5+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,2,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t6 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:37:23+2
    assume {:print "$at(2,769,771)"} true;
    $t6 := $Dereference($t0);

    // trace_local[saved_a]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:37:13+7
    assume {:print "$track_local(0,2,2):", $t6} $t6 == $t6;

    // $t7 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:38:14+2
    assume {:print "$at(2,786,788)"} true;
    $t7 := $Dereference($t0);

    // $t8 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:38:20+2
    $t8 := $Dereference($t0);

    // $t9 := read_ref($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:38:25+2
    $t9 := $Dereference($t1);

    // $t10 := +($t8, $t9) on_abort goto L2 with $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:38:23+1
    call $t10 := $AddU64($t8, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,795,796)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,2):", $t11} $t11 == $t11;
        goto L2;
    }

    // $t12 := /($t7, $t10) on_abort goto L2 with $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:38:17+1
    call $t12 := $Div($t7, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,789,790)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,2):", $t11} $t11 == $t11;
        goto L2;
    }

    // write_ref($t0, $t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:38:9+19
    $t0 := $UpdateMutation($t0, $t12);

    // $t13 := read_ref($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:39:24+2
    assume {:print "$at(2,825,827)"} true;
    $t13 := $Dereference($t1);

    // $t14 := *($t6, $t13) on_abort goto L2 with $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:39:22+1
    call $t14 := $MulU64($t6, $t13);
    if ($abort_flag) {
        assume {:print "$at(2,823,824)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,2):", $t11} $t11 == $t11;
        goto L2;
    }

    // write_ref($t1, $t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:39:9+17
    $t1 := $UpdateMutation($t1, $t14);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:39:26+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,2,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:39:26+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,2,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:40:5+1
    assume {:print "$at(2,833,834)"} true;
L1:

    // assume Identical($t15, Div($t5, $t3)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:48:9+30
    assume {:print "$at(2,1049,1079)"} true;
    assume ($t15 == ($t5 div $t3));

    // assert Not(Eq<num>($t3, 0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:45:9+19
    assume {:print "$at(2,951,970)"} true;
    assert {:msg "assert_failed(2,951,970): function does not abort under this condition"}
      !$IsEqual'num'($t3, 0);

    // assert Not(Gt($t3, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:46:9+24
    assume {:print "$at(2,979,1003)"} true;
    assert {:msg "assert_failed(2,979,1003): function does not abort under this condition"}
      !($t3 > 18446744073709551615);

    // assert Not(Gt($t4, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:47:9+28
    assume {:print "$at(2,1012,1040)"} true;
    assert {:msg "assert_failed(2,1012,1040): function does not abort under this condition"}
      !($t4 > 18446744073709551615);

    // assert Eq<u64>($t0, Sub(Add($t15, $t3), $t3)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:49:9+31
    assume {:print "$at(2,1088,1119)"} true;
    assert {:msg "assert_failed(2,1088,1119): post-condition does not hold"}
      $IsEqual'u64'($Dereference($t0), (($t15 + $t3) - $t3));

    // assert Eq<u64>($t1, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:50:9+21
    assume {:print "$at(2,1128,1149)"} true;
    assert {:msg "assert_failed(2,1128,1149): post-condition does not hold"}
      $IsEqual'u64'($Dereference($t1), $t4);

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:50:9+21
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:40:5+1
    assume {:print "$at(2,833,834)"} true;
L2:

    // assert Or(Or(Eq<num>($t3, 0), Gt($t3, 18446744073709551615)), Gt($t4, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:41:5+316
    assume {:print "$at(2,839,1155)"} true;
    assert {:msg "assert_failed(2,839,1155): abort not covered by any of the `aborts_if` clauses"}
      (($IsEqual'num'($t3, 0) || ($t3 > 18446744073709551615)) || ($t4 > 18446744073709551615));

    // abort($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:41:5+316
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

// fun TestLet::spec_let_with_abort_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:68:5+149
procedure {:timeLimit 40} $42_TestLet_spec_let_with_abort_incorrect$verify(_$t0: $Mutation (int), _$t1: $Mutation (int)) returns ($ret0: $Mutation (int), $ret1: $Mutation (int))
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t0: $Mutation (int);
    var $t1: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:68:5+149
    assume {:print "$at(2,1614,1763)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:68:5+149
    assume $IsValid'u64'($Dereference($t1));

    // assume Identical($t3, Add($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:74:9+16
    assume {:print "$at(2,1813,1829)"} true;
    assume ($t3 == ($Dereference($t0) + $Dereference($t1)));

    // assume Identical($t4, Mul($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:75:9+20
    assume {:print "$at(2,1838,1858)"} true;
    assume ($t4 == ($Dereference($t0) * $Dereference($t1)));

    // $t5 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:68:5+1
    assume {:print "$at(2,1614,1615)"} true;
    $t5 := $Dereference($t0);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:68:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,3,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:68:5+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,3,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t6 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:69:23+2
    assume {:print "$at(2,1698,1700)"} true;
    $t6 := $Dereference($t0);

    // trace_local[saved_a]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:69:13+7
    assume {:print "$track_local(0,3,2):", $t6} $t6 == $t6;

    // $t7 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:70:14+2
    assume {:print "$at(2,1715,1717)"} true;
    $t7 := $Dereference($t0);

    // $t8 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:70:20+2
    $t8 := $Dereference($t0);

    // $t9 := read_ref($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:70:25+2
    $t9 := $Dereference($t1);

    // $t10 := +($t8, $t9) on_abort goto L2 with $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:70:23+1
    call $t10 := $AddU64($t8, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,1724,1725)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,3):", $t11} $t11 == $t11;
        goto L2;
    }

    // $t12 := /($t7, $t10) on_abort goto L2 with $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:70:17+1
    call $t12 := $Div($t7, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,1718,1719)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,3):", $t11} $t11 == $t11;
        goto L2;
    }

    // write_ref($t0, $t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:70:9+19
    $t0 := $UpdateMutation($t0, $t12);

    // $t13 := read_ref($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:71:24+2
    assume {:print "$at(2,1754,1756)"} true;
    $t13 := $Dereference($t1);

    // $t14 := *($t6, $t13) on_abort goto L2 with $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:71:22+1
    call $t14 := $MulU64($t6, $t13);
    if ($abort_flag) {
        assume {:print "$at(2,1752,1753)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,3):", $t11} $t11 == $t11;
        goto L2;
    }

    // write_ref($t1, $t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:71:9+17
    $t1 := $UpdateMutation($t1, $t14);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:71:26+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,3,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:71:26+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,3,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:72:5+1
    assume {:print "$at(2,1762,1763)"} true;
L1:

    // assume Identical($t15, Div($t5, $t3)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:79:9+30
    assume {:print "$at(2,1967,1997)"} true;
    assume ($t15 == ($t5 div $t3));

    // assert Not(Neq<num>($t3, 0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:76:9+19
    assume {:print "$at(2,1867,1886)"} true;
    assert {:msg "assert_failed(2,1867,1886): function does not abort under this condition"}
      !!$IsEqual'num'($t3, 0);

    // assert Not(Ge($t3, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:77:9+25
    assume {:print "$at(2,1895,1920)"} true;
    assert {:msg "assert_failed(2,1895,1920): function does not abort under this condition"}
      !($t3 >= 18446744073709551615);

    // assert Not(Ge($t4, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:78:9+29
    assume {:print "$at(2,1929,1958)"} true;
    assert {:msg "assert_failed(2,1929,1958): function does not abort under this condition"}
      !($t4 >= 18446744073709551615);

    // assert Eq<u64>($t0, $t15) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:80:9+19
    assume {:print "$at(2,2006,2025)"} true;
    assert {:msg "assert_failed(2,2006,2025): post-condition does not hold"}
      $IsEqual'u64'($Dereference($t0), $t15);

    // assert Eq<u64>($t1, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:81:9+21
    assume {:print "$at(2,2034,2055)"} true;
    assert {:msg "assert_failed(2,2034,2055): post-condition does not hold"}
      $IsEqual'u64'($Dereference($t1), $t4);

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:81:9+21
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:72:5+1
    assume {:print "$at(2,1762,1763)"} true;
L2:

    // assert Or(Or(Neq<num>($t3, 0), Ge($t3, 18446744073709551615)), Ge($t4, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:73:5+293
    assume {:print "$at(2,1768,2061)"} true;
    assert {:msg "assert_failed(2,1768,2061): abort not covered by any of the `aborts_if` clauses"}
      ((!$IsEqual'num'($t3, 0) || ($t3 >= 18446744073709551615)) || ($t4 >= 18446744073709551615));

    // abort($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:73:5+293
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

// fun TestLet::spec_let_with_abort_opaque_caller [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:53:5+105
procedure {:timeLimit 40} $42_TestLet_spec_let_with_abort_opaque_caller$verify(_$t0: $Mutation (int), _$t1: $Mutation (int)) returns ($ret0: $Mutation (int), $ret1: $Mutation (int))
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t0: $Mutation (int);
    var $t1: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:53:5+105
    assume {:print "$at(2,1161,1266)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:53:5+105
    assume $IsValid'u64'($Dereference($t1));

    // assume Identical($t2, Add($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:58:9+16
    assume {:print "$at(2,1350,1366)"} true;
    assume ($t2 == ($Dereference($t0) + $Dereference($t1)));

    // assume Identical($t3, Mul($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:59:9+20
    assume {:print "$at(2,1375,1395)"} true;
    assume ($t3 == ($Dereference($t0) * $Dereference($t1)));

    // $t4 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:53:5+1
    assume {:print "$at(2,1161,1162)"} true;
    $t4 := $Dereference($t0);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:53:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,4,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:53:5+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,4,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // nop at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    // >> opaque call: TestLet::spec_let_with_abort($t0, $t1)
    assume {:print "$at(2,1235,1260)"} true;

    // assume Identical($t5, Add($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:43:9+16
    assume {:print "$at(2,897,913)"} true;
    assume ($t5 == ($Dereference($t0) + $Dereference($t1)));

    // assume Identical($t6, Mul($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:44:9+20
    assume {:print "$at(2,922,942)"} true;
    assume ($t6 == ($Dereference($t0) * $Dereference($t1)));

    // opaque begin: TestLet::spec_let_with_abort($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    assume {:print "$at(2,1235,1260)"} true;

    // $t7 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    $t7 := $Dereference($t0);

    // assume Identical($t8, Or(Or(Eq<num>($t5, 0), Gt($t5, 18446744073709551615)), Gt($t6, 18446744073709551615))) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    assume ($t8 == (($IsEqual'num'($t5, 0) || ($t5 > 18446744073709551615)) || ($t6 > 18446744073709551615)));

    // if ($t8) goto L5 else goto L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    if ($t8) { goto L5; } else { goto L3; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
L4:

    // trace_abort($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    assume {:print "$at(2,1235,1260)"} true;
    assume {:print "$track_abort(0,4):", $t9} $t9 == $t9;

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    goto L2;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
L3:

    // havoc[mut]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    havoc $temp_0'u64';
    $t0 := $UpdateMutation($t0, $temp_0'u64');
    assume $IsValid'u64'($Dereference($t0));

    // havoc[mut]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    havoc $temp_0'u64';
    $t1 := $UpdateMutation($t1, $temp_0'u64');
    assume $IsValid'u64'($Dereference($t1));

    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    assume $IsValid'u64'($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    assume $IsValid'u64'($Dereference($t1));

    // assume Identical($t10, Div($t7, $t5)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:48:9+30
    assume {:print "$at(2,1049,1079)"} true;
    assume ($t10 == ($t7 div $t5));

    // assume Eq<u64>($t0, Sub(Add($t10, $t5), $t5)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:48:9+30
    assume $IsEqual'u64'($Dereference($t0), (($t10 + $t5) - $t5));

    // assume Eq<u64>($t1, $t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:48:9+30
    assume $IsEqual'u64'($Dereference($t1), $t6);

    // opaque end: TestLet::spec_let_with_abort($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:48:9+30

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    assume {:print "$at(2,1235,1260)"} true;
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,4,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:54:9+25
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,4,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:55:5+1
    assume {:print "$at(2,1265,1266)"} true;
L1:

    // assume Identical($t11, Div($t4, $t2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:63:9+30
    assume {:print "$at(2,1502,1532)"} true;
    assume ($t11 == ($t4 div $t2));

    // assert Not(Eq<num>($t2, 0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:60:9+19
    assume {:print "$at(2,1404,1423)"} true;
    assert {:msg "assert_failed(2,1404,1423): function does not abort under this condition"}
      !$IsEqual'num'($t2, 0);

    // assert Not(Gt($t2, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:61:9+24
    assume {:print "$at(2,1432,1456)"} true;
    assert {:msg "assert_failed(2,1432,1456): function does not abort under this condition"}
      !($t2 > 18446744073709551615);

    // assert Not(Gt($t3, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:62:9+28
    assume {:print "$at(2,1465,1493)"} true;
    assert {:msg "assert_failed(2,1465,1493): function does not abort under this condition"}
      !($t3 > 18446744073709551615);

    // assert Eq<u64>($t0, Sub(Add($t11, $t2), $t2)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:64:9+31
    assume {:print "$at(2,1541,1572)"} true;
    assert {:msg "assert_failed(2,1541,1572): post-condition does not hold"}
      $IsEqual'u64'($Dereference($t0), (($t11 + $t2) - $t2));

    // assert Eq<u64>($t1, $t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:65:9+21
    assume {:print "$at(2,1581,1602)"} true;
    assert {:msg "assert_failed(2,1581,1602): post-condition does not hold"}
      $IsEqual'u64'($Dereference($t1), $t3);

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:65:9+21
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:55:5+1
    assume {:print "$at(2,1265,1266)"} true;
L2:

    // assert Or(Or(Eq<num>($t2, 0), Gt($t2, 18446744073709551615)), Gt($t3, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:56:5+337
    assume {:print "$at(2,1271,1608)"} true;
    assert {:msg "assert_failed(2,1271,1608): abort not covered by any of the `aborts_if` clauses"}
      (($IsEqual'num'($t2, 0) || ($t2 > 18446744073709551615)) || ($t3 > 18446744073709551615));

    // abort($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:56:5+337
    $abort_code := $t9;
    $abort_flag := true;
    return;

    // label L5 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L5:

    // destroy($t0) at <internal>:1:1+10

    // destroy($t1) at <internal>:1:1+10

    // goto L4 at <internal>:1:1+10
    goto L4;

}

// fun TestLet::spec_let_with_old [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:25:5+103
procedure {:timeLimit 40} $42_TestLet_spec_let_with_old$verify(_$t0: $Mutation (int), _$t1: $Mutation (int)) returns ($ret0: $Mutation (int), $ret1: $Mutation (int))
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t0: $Mutation (int);
    var $t1: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:25:5+103
    assume {:print "$at(2,416,519)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:25:5+103
    assume $IsValid'u64'($Dereference($t1));

    // $t2 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:25:5+1
    $t2 := $Dereference($t0);

    // $t3 := read_ref($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:25:5+1
    $t3 := $Dereference($t1);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:25:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,5,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:25:5+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,5,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t4 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:26:14+2
    assume {:print "$at(2,479,481)"} true;
    $t4 := $Dereference($t0);

    // $t5 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:26:19+1
    $t5 := 1;
    assume $IsValid'u64'($t5);

    // $t6 := +($t4, $t5) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:26:17+1
    call $t6 := $AddU64($t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,482,483)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(0,5):", $t7} $t7 == $t7;
        goto L2;
    }

    // $t8 := read_ref($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:26:23+2
    $t8 := $Dereference($t1);

    // $t9 := +($t6, $t8) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:26:21+1
    call $t9 := $AddU64($t6, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,486,487)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(0,5):", $t7} $t7 == $t7;
        goto L2;
    }

    // write_ref($t0, $t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:26:9+16
    $t0 := $UpdateMutation($t0, $t9);

    // $t10 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:27:14+2
    assume {:print "$at(2,505,507)"} true;
    $t10 := $Dereference($t0);

    // $t11 := read_ref($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:27:19+2
    $t11 := $Dereference($t1);

    // $t12 := +($t10, $t11) on_abort goto L2 with $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:27:17+1
    call $t12 := $AddU64($t10, $t11);
    if ($abort_flag) {
        assume {:print "$at(2,508,509)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(0,5):", $t7} $t7 == $t7;
        goto L2;
    }

    // write_ref($t1, $t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:27:9+12
    $t1 := $UpdateMutation($t1, $t12);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:27:21+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,5,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:27:21+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,5,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:28:5+1
    assume {:print "$at(2,518,519)"} true;
L1:

    // assume Identical($t13, Add(Add($t2, 1), $t3)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:30:8+37
    assume {:print "$at(2,556,593)"} true;
    assume ($t13 == (($t2 + 1) + $t3));

    // assume Identical($t14, Add($t0, $t3)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:31:8+28
    assume {:print "$at(2,601,629)"} true;
    assume ($t14 == ($Dereference($t0) + $t3));

    // assert Eq<u64>($t0, $t13) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:32:8+19
    assume {:print "$at(2,637,656)"} true;
    assert {:msg "assert_failed(2,637,656): post-condition does not hold"}
      $IsEqual'u64'($Dereference($t0), $t13);

    // assert Eq<u64>($t1, $t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:33:8+19
    assume {:print "$at(2,664,683)"} true;
    assert {:msg "assert_failed(2,664,683): post-condition does not hold"}
      $IsEqual'u64'($Dereference($t1), $t14);

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:33:8+19
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:28:5+1
    assume {:print "$at(2,518,519)"} true;
L2:

    // abort($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:28:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun TestLet::spec_let_with_schema [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:84:5+140
procedure {:timeLimit 40} $42_TestLet_spec_let_with_schema$verify(_$t0: $Mutation (int), _$t1: $Mutation (int)) returns ($ret0: $Mutation (int), $ret1: $Mutation (int))
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t0: $Mutation (int);
    var $t1: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:84:5+140
    assume {:print "$at(2,2067,2207)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:84:5+140
    assume $IsValid'u64'($Dereference($t1));

    // assume Identical($t3, Add($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:90:9+16
    assume {:print "$at(2,2248,2264)"} true;
    assume ($t3 == ($Dereference($t0) + $Dereference($t1)));

    // assume Identical($t4, Mul($t0, $t1)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:91:9+20
    assume {:print "$at(2,2273,2293)"} true;
    assume ($t4 == ($Dereference($t0) * $Dereference($t1)));

    // $t5 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:84:5+1
    assume {:print "$at(2,2067,2068)"} true;
    $t5 := $Dereference($t0);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:84:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,6,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:84:5+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,6,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t6 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:85:23+2
    assume {:print "$at(2,2142,2144)"} true;
    $t6 := $Dereference($t0);

    // trace_local[saved_a]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:85:13+7
    assume {:print "$track_local(0,6,2):", $t6} $t6 == $t6;

    // $t7 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:86:14+2
    assume {:print "$at(2,2159,2161)"} true;
    $t7 := $Dereference($t0);

    // $t8 := read_ref($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:86:20+2
    $t8 := $Dereference($t0);

    // $t9 := read_ref($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:86:25+2
    $t9 := $Dereference($t1);

    // $t10 := +($t8, $t9) on_abort goto L2 with $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:86:23+1
    call $t10 := $AddU64($t8, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,2168,2169)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,6):", $t11} $t11 == $t11;
        goto L2;
    }

    // $t12 := /($t7, $t10) on_abort goto L2 with $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:86:17+1
    call $t12 := $Div($t7, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,2162,2163)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,6):", $t11} $t11 == $t11;
        goto L2;
    }

    // write_ref($t0, $t12) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:86:9+19
    $t0 := $UpdateMutation($t0, $t12);

    // $t13 := read_ref($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:87:24+2
    assume {:print "$at(2,2198,2200)"} true;
    $t13 := $Dereference($t1);

    // $t14 := *($t6, $t13) on_abort goto L2 with $t11 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:87:22+1
    call $t14 := $MulU64($t6, $t13);
    if ($abort_flag) {
        assume {:print "$at(2,2196,2197)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,6):", $t11} $t11 == $t11;
        goto L2;
    }

    // write_ref($t1, $t14) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:87:9+17
    $t1 := $UpdateMutation($t1, $t14);

    // trace_local[a]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:87:26+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,6,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[b]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:87:26+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,6,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:88:5+1
    assume {:print "$at(2,2206,2207)"} true;
L1:

    // assume Identical($t15, Div($t5, $t3)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:95:9+30
    assume {:print "$at(2,2400,2430)"} true;
    assume ($t15 == ($t5 div $t3));

    // assume Identical($t16, Sub(Add($t15, $t3), $t3)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:102:9+22
    assume {:print "$at(2,2635,2657)"} true;
    assume ($t16 == (($t15 + $t3) - $t3));

    // assume Identical($t17, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:103:9+20
    assume {:print "$at(2,2666,2686)"} true;
    assume ($t17 == $Dereference($t0));

    // assume Identical($t18, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:102:9+22
    assume {:print "$at(2,2635,2657)"} true;
    assume ($t18 == $t4);

    // assume Identical($t19, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:103:9+20
    assume {:print "$at(2,2666,2686)"} true;
    assume ($t19 == $Dereference($t1));

    // assert Not(Eq<num>($t3, 0)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:92:9+19
    assume {:print "$at(2,2302,2321)"} true;
    assert {:msg "assert_failed(2,2302,2321): function does not abort under this condition"}
      !$IsEqual'num'($t3, 0);

    // assert Not(Gt($t3, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:93:9+24
    assume {:print "$at(2,2330,2354)"} true;
    assert {:msg "assert_failed(2,2330,2354): function does not abort under this condition"}
      !($t3 > 18446744073709551615);

    // assert Not(Gt($t4, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:94:9+28
    assume {:print "$at(2,2363,2391)"} true;
    assert {:msg "assert_failed(2,2363,2391): function does not abort under this condition"}
      !($t4 > 18446744073709551615);

    // assert Eq<u64>($t16, $t17) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:109:9+15
    assume {:print "$at(2,2798,2813)"} true;
    assert {:msg "assert_failed(2,2798,2813): post-condition does not hold"}
      $IsEqual'num'($t16, $t17);

    // assert Eq<u64>($t18, $t19) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:109:9+15
    assert {:msg "assert_failed(2,2798,2813): post-condition does not hold"}
      $IsEqual'num'($t18, $t19);

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:109:9+15
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:88:5+1
    assume {:print "$at(2,2206,2207)"} true;
L2:

    // assert Or(Or(Eq<num>($t3, 0), Gt($t3, 18446744073709551615)), Gt($t4, 18446744073709551615)) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:89:5+344
    assume {:print "$at(2,2212,2556)"} true;
    assert {:msg "assert_failed(2,2212,2556): abort not covered by any of the `aborts_if` clauses"}
      (($IsEqual'num'($t3, 0) || ($t3 > 18446744073709551615)) || ($t4 > 18446744073709551615));

    // abort($t11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/let.move:89:5+344
    $abort_code := $t11;
    $abort_flag := true;
    return;

}
