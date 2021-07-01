
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


// fun VerifyLoops::iter10_abort [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:61:5+207
procedure {:timeLimit 40} $42_VerifyLoops_iter10_abort$verify() returns ()
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:62:17+1
    assume {:print "$at(2,1705,1706)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // trace_local[i]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:62:13+1
    assume {:print "$track_local(0,0,0):", $t1} $t1 == $t1;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:13+23
    assume {:print "$at(2,1737,1760)"} true;
L6:

    // assert Le($t1, 7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    assert {:msg "assert_failed(2,1744,1758): base case of the loop invariant does not hold"}
      ($t1 <= 7);

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    havoc $t2;
    assume $IsValid'u64'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    havoc $t3;
    assume $IsValid'bool'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    havoc $t5;
    assume $IsValid'bool'($t5);

    // havoc[val]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    havoc $t6;
    assume $IsValid'u64'($t6);

    // havoc[val]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    havoc $t7;
    assume $IsValid'u64'($t7);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    assume !$abort_flag;

    // assume Le($t1, 7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    assume ($t1 <= 7);

    // $t2 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:65:19+2
    assume {:print "$at(2,1780,1782)"} true;
    $t2 := 10;
    assume $IsValid'u64'($t2);

    // $t3 := <=($t1, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:65:16+2
    call $t3 := $Le($t1, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:63:9+146
    assume {:print "$at(2,1716,1862)"} true;
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:63:9+146
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:63:9+146
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:17+1
    assume {:print "$at(2,1813,1814)"} true;
L0:

    // $t4 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:22+1
    $t4 := 7;
    assume $IsValid'u64'($t4);

    // $t5 := ==($t1, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:19+2
    $t5 := $IsEqual'u64'($t1, $t4);

    // if ($t5) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:13+19
    if ($t5) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:13+19
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:13+19
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:31+1
L3:

    // $t8 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:31+1
    $t8 := 7;
    assume $IsValid'u64'($t8);

    // trace_abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:25+7
    assume {:print "$at(2,1821,1828)"} true;
    assume {:print "$track_abort(0,0):", $t8} $t8 == $t8;

    // $t9 := move($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:25+7
    $t9 := $t8;

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:67:25+7
    goto L9;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:68:17+1
    assume {:print "$at(2,1846,1847)"} true;
L5:

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:68:21+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // $t7 := +($t1, $t6) on_abort goto L9 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:68:19+1
    call $t7 := $AddU64($t1, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,1848,1849)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(0,0):", $t9} $t9 == $t9;
        goto L9;
    }

    // trace_local[i]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:68:13+1
    assume {:print "$track_local(0,0,0):", $t7} $t7 == $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:68:22+1
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:63:9+146
    assume {:print "$at(2,1716,1862)"} true;
L2:

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:63:9+146
    goto L8;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:63:9+146
    // Loop invariant checking block for the loop started with header: L6
L7:

    // assert Le($t7, 7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    assume {:print "$at(2,1744,1758)"} true;
    assert {:msg "assert_failed(2,1744,1758): induction case of the loop invariant does not hold"}
      ($t7 <= 7);

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:64:20+14
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:70:5+1
    assume {:print "$at(2,1867,1868)"} true;
L8:

    // assert Not(true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:73:9+15
    assume {:print "$at(2,1964,1979)"} true;
    assert {:msg "assert_failed(2,1964,1979): function does not abort under this condition"}
      !true;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:73:9+15
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:70:5+1
    assume {:print "$at(2,1867,1868)"} true;
L9:

    // assert true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:71:5+112
    assume {:print "$at(2,1873,1985)"} true;
    assert {:msg "assert_failed(2,1873,1985): abort not covered by any of the `aborts_if` clauses"}
      true;

    // abort($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:71:5+112
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::iter10_abort_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:76:5+217
procedure {:timeLimit 40} $42_VerifyLoops_iter10_abort_incorrect$verify() returns ()
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:77:17+1
    assume {:print "$at(2,2045,2046)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // trace_local[i]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:77:13+1
    assume {:print "$track_local(0,1,0):", $t1} $t1 == $t1;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:13+23
    assume {:print "$at(2,2077,2100)"} true;
L6:

    // assert Le($t1, 7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    assert {:msg "assert_failed(2,2084,2098): base case of the loop invariant does not hold"}
      ($t1 <= 7);

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    havoc $t2;
    assume $IsValid'u64'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    havoc $t3;
    assume $IsValid'bool'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    havoc $t5;
    assume $IsValid'bool'($t5);

    // havoc[val]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    havoc $t6;
    assume $IsValid'u64'($t6);

    // havoc[val]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    havoc $t7;
    assume $IsValid'u64'($t7);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    assume !$abort_flag;

    // assume Le($t1, 7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    assume ($t1 <= 7);

    // $t2 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:80:19+2
    assume {:print "$at(2,2120,2122)"} true;
    $t2 := 10;
    assume $IsValid'u64'($t2);

    // $t3 := <=($t1, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:80:16+2
    call $t3 := $Le($t1, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:78:9+146
    assume {:print "$at(2,2056,2202)"} true;
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:78:9+146
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:78:9+146
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:17+1
    assume {:print "$at(2,2153,2154)"} true;
L0:

    // $t4 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:22+1
    $t4 := 7;
    assume $IsValid'u64'($t4);

    // $t5 := ==($t1, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:19+2
    $t5 := $IsEqual'u64'($t1, $t4);

    // if ($t5) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:13+19
    if ($t5) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:13+19
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:13+19
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:31+1
L3:

    // $t8 := 7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:31+1
    $t8 := 7;
    assume $IsValid'u64'($t8);

    // trace_abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:25+7
    assume {:print "$at(2,2161,2168)"} true;
    assume {:print "$track_abort(0,1):", $t8} $t8 == $t8;

    // $t9 := move($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:25+7
    $t9 := $t8;

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:82:25+7
    goto L9;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:83:17+1
    assume {:print "$at(2,2186,2187)"} true;
L5:

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:83:21+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // $t7 := +($t1, $t6) on_abort goto L9 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:83:19+1
    call $t7 := $AddU64($t1, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,2188,2189)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(0,1):", $t9} $t9 == $t9;
        goto L9;
    }

    // trace_local[i]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:83:13+1
    assume {:print "$track_local(0,1,0):", $t7} $t7 == $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:83:22+1
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:78:9+146
    assume {:print "$at(2,2056,2202)"} true;
L2:

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:78:9+146
    goto L8;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:78:9+146
    // Loop invariant checking block for the loop started with header: L6
L7:

    // assert Le($t7, 7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    assume {:print "$at(2,2084,2098)"} true;
    assert {:msg "assert_failed(2,2084,2098): induction case of the loop invariant does not hold"}
      ($t7 <= 7);

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:79:20+14
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:85:5+1
    assume {:print "$at(2,2207,2208)"} true;
L8:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:88:9+16
    assume {:print "$at(2,2315,2331)"} true;
    assert {:msg "assert_failed(2,2315,2331): function does not abort under this condition"}
      !false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:88:9+16
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:85:5+1
    assume {:print "$at(2,2207,2208)"} true;
L9:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:86:5+124
    assume {:print "$at(2,2213,2337)"} true;
    assert {:msg "assert_failed(2,2213,2337): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:86:5+124
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::iter10_missing_inc_spec1 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:10:5+154
procedure {:timeLimit 40} $42_VerifyLoops_iter10_missing_inc_spec1$verify() returns ()
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:11:17+1
    assume {:print "$at(2,298,299)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // trace_local[i]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:11:13+1
    assume {:print "$track_local(0,2,0):", $t1} $t1 == $t1;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:16+1
    assume {:print "$at(2,316,317)"} true;
L6:

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:16+1
    havoc $t2;
    assume $IsValid'u64'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:16+1
    havoc $t3;
    assume $IsValid'bool'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:16+1
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:16+1
    havoc $t5;
    assume $IsValid'bool'($t5);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:16+1
    assume !$abort_flag;

    // $t2 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:21+2
    $t2 := 10;
    assume $IsValid'u64'($t2);

    // $t3 := <=($t1, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:18+2
    call $t3 := $Le($t1, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:9+81
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:9+81
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:9+81
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:17+1
    assume {:print "$at(2,363,364)"} true;
L0:

    // $t4 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:21+2
    $t4 := 10;
    assume $IsValid'u64'($t4);

    // $t5 := >($t1, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:19+1
    call $t5 := $Gt($t1, $t4);

    // if ($t5) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:13+20
    if ($t5) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:13+20
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:13+20
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:31+2
L3:

    // $t6 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:31+2
    $t6 := 10;
    assume $IsValid'u64'($t6);

    // trace_abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:25+8
    assume {:print "$at(2,371,379)"} true;
    assume {:print "$track_abort(0,2):", $t6} $t6 == $t6;

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:25+8
    goto L9;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:33+1
L5:

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:13:33+1
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:9+81
    assume {:print "$at(2,309,390)"} true;
L2:

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:9+81
    goto L8;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:9+81
    // Loop invariant checking block for the loop started with header: L6
L7:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:12:9+81
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:15:5+1
    assume {:print "$at(2,395,396)"} true;
L8:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:17:9+16
    assume {:print "$at(2,567,583)"} true;
    assert {:msg "assert_failed(2,567,583): function does not abort under this condition"}
      !false;

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:18:9+14
    assume {:print "$at(2,592,606)"} true;
    assert {:msg "assert_failed(2,592,606): post-condition does not hold"}
      false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:18:9+14
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:15:5+1
    assume {:print "$at(2,395,396)"} true;
L9:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:16:5+211
    assume {:print "$at(2,401,612)"} true;
    assert {:msg "assert_failed(2,401,612): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:16:5+211
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::iter10_missing_inc_spec2 [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:21:5+154
procedure {:timeLimit 40} $42_VerifyLoops_iter10_missing_inc_spec2$verify() returns ()
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:22:17+1
    assume {:print "$at(2,674,675)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // trace_local[i]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:22:13+1
    assume {:print "$track_local(0,3,0):", $t1} $t1 == $t1;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:16+1
    assume {:print "$at(2,692,693)"} true;
L6:

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:16+1
    havoc $t2;
    assume $IsValid'u64'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:16+1
    havoc $t3;
    assume $IsValid'bool'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:16+1
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:16+1
    havoc $t5;
    assume $IsValid'bool'($t5);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:16+1
    assume !$abort_flag;

    // $t2 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:21+2
    $t2 := 10;
    assume $IsValid'u64'($t2);

    // $t3 := <=($t1, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:18+2
    call $t3 := $Le($t1, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:9+81
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:9+81
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:9+81
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:17+1
    assume {:print "$at(2,739,740)"} true;
L0:

    // $t4 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:21+2
    $t4 := 10;
    assume $IsValid'u64'($t4);

    // $t5 := >($t1, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:19+1
    call $t5 := $Gt($t1, $t4);

    // if ($t5) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:13+20
    if ($t5) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:13+20
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:13+20
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:31+2
L3:

    // $t6 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:31+2
    $t6 := 10;
    assume $IsValid'u64'($t6);

    // trace_abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:25+8
    assume {:print "$at(2,747,755)"} true;
    assume {:print "$track_abort(0,3):", $t6} $t6 == $t6;

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:25+8
    goto L9;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:33+1
L5:

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:24:33+1
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:9+81
    assume {:print "$at(2,685,766)"} true;
L2:

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:9+81
    goto L8;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:9+81
    // Loop invariant checking block for the loop started with header: L6
L7:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:23:9+81
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:26:5+1
    assume {:print "$at(2,771,772)"} true;
L8:

    // assert Not(true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:28:9+15
    assume {:print "$at(2,943,958)"} true;
    assert {:msg "assert_failed(2,943,958): function does not abort under this condition"}
      !true;

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:29:9+14
    assume {:print "$at(2,967,981)"} true;
    assert {:msg "assert_failed(2,967,981): post-condition does not hold"}
      false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:29:9+14
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:26:5+1
    assume {:print "$at(2,771,772)"} true;
L9:

    // assert true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:27:5+210
    assume {:print "$at(2,777,987)"} true;
    assert {:msg "assert_failed(2,777,987): abort not covered by any of the `aborts_if` clauses"}
      true;

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:27:5+210
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::iter10_no_abort [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:32:5+212
procedure {:timeLimit 40} $42_VerifyLoops_iter10_no_abort$verify() returns ()
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:33:17+1
    assume {:print "$at(2,1040,1041)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // trace_local[i]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:33:13+1
    assume {:print "$track_local(0,4,0):", $t1} $t1 == $t1;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:13+24
    assume {:print "$at(2,1072,1096)"} true;
L6:

    // assert Le($t1, 11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    assert {:msg "assert_failed(2,1079,1094): base case of the loop invariant does not hold"}
      ($t1 <= 11);

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    havoc $t2;
    assume $IsValid'u64'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    havoc $t3;
    assume $IsValid'bool'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    havoc $t5;
    assume $IsValid'bool'($t5);

    // havoc[val]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    havoc $t6;
    assume $IsValid'u64'($t6);

    // havoc[val]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    havoc $t7;
    assume $IsValid'u64'($t7);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    assume !$abort_flag;

    // assume Le($t1, 11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    assume ($t1 <= 11);

    // $t2 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:36:19+2
    assume {:print "$at(2,1116,1118)"} true;
    $t2 := 10;
    assume $IsValid'u64'($t2);

    // $t3 := <=($t1, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:36:16+2
    call $t3 := $Le($t1, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:34:9+148
    assume {:print "$at(2,1051,1199)"} true;
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:34:9+148
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:34:9+148
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:17+1
    assume {:print "$at(2,1149,1150)"} true;
L0:

    // $t4 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:21+2
    $t4 := 10;
    assume $IsValid'u64'($t4);

    // $t5 := >($t1, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:19+1
    call $t5 := $Gt($t1, $t4);

    // if ($t5) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:13+20
    if ($t5) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:13+20
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:13+20
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:31+2
L3:

    // $t8 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:31+2
    $t8 := 10;
    assume $IsValid'u64'($t8);

    // trace_abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:25+8
    assume {:print "$at(2,1157,1165)"} true;
    assume {:print "$track_abort(0,4):", $t8} $t8 == $t8;

    // $t9 := move($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:25+8
    $t9 := $t8;

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:38:25+8
    goto L9;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:39:17+1
    assume {:print "$at(2,1183,1184)"} true;
L5:

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:39:21+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // $t7 := +($t1, $t6) on_abort goto L9 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:39:19+1
    call $t7 := $AddU64($t1, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,1185,1186)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(0,4):", $t9} $t9 == $t9;
        goto L9;
    }

    // trace_local[i]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:39:13+1
    assume {:print "$track_local(0,4,0):", $t7} $t7 == $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:39:22+1
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:34:9+148
    assume {:print "$at(2,1051,1199)"} true;
L2:

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:34:9+148
    goto L8;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:34:9+148
    // Loop invariant checking block for the loop started with header: L6
L7:

    // assert Le($t7, 11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    assume {:print "$at(2,1079,1094)"} true;
    assert {:msg "assert_failed(2,1079,1094): induction case of the loop invariant does not hold"}
      ($t7 <= 11);

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:35:20+15
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:41:5+1
    assume {:print "$at(2,1204,1205)"} true;
L8:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:44:9+16
    assume {:print "$at(2,1303,1319)"} true;
    assert {:msg "assert_failed(2,1303,1319): function does not abort under this condition"}
      !false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:44:9+16
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:41:5+1
    assume {:print "$at(2,1204,1205)"} true;
L9:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:42:5+115
    assume {:print "$at(2,1210,1325)"} true;
    assert {:msg "assert_failed(2,1210,1325): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:42:5+115
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::iter10_no_abort_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:47:5+222
procedure {:timeLimit 40} $42_VerifyLoops_iter10_no_abort_incorrect$verify() returns ()
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t1 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:48:17+1
    assume {:print "$at(2,1388,1389)"} true;
    $t1 := 0;
    assume $IsValid'u64'($t1);

    // trace_local[i]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:48:13+1
    assume {:print "$track_local(0,5,0):", $t1} $t1 == $t1;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:13+24
    assume {:print "$at(2,1420,1444)"} true;
L6:

    // assert Le($t1, 11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    assert {:msg "assert_failed(2,1427,1442): base case of the loop invariant does not hold"}
      ($t1 <= 11);

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    havoc $t2;
    assume $IsValid'u64'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    havoc $t3;
    assume $IsValid'bool'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    havoc $t5;
    assume $IsValid'bool'($t5);

    // havoc[val]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    havoc $t6;
    assume $IsValid'u64'($t6);

    // havoc[val]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    havoc $t7;
    assume $IsValid'u64'($t7);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    assume !$abort_flag;

    // assume Le($t1, 11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    assume ($t1 <= 11);

    // $t2 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:51:19+2
    assume {:print "$at(2,1464,1466)"} true;
    $t2 := 10;
    assume $IsValid'u64'($t2);

    // $t3 := <=($t1, $t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:51:16+2
    call $t3 := $Le($t1, $t2);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:49:9+148
    assume {:print "$at(2,1399,1547)"} true;
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:49:9+148
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:49:9+148
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:17+1
    assume {:print "$at(2,1497,1498)"} true;
L0:

    // $t4 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:21+2
    $t4 := 10;
    assume $IsValid'u64'($t4);

    // $t5 := >($t1, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:19+1
    call $t5 := $Gt($t1, $t4);

    // if ($t5) goto L3 else goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:13+20
    if ($t5) { goto L3; } else { goto L4; }

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:13+20
L4:

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:13+20
    goto L5;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:31+2
L3:

    // $t8 := 10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:31+2
    $t8 := 10;
    assume $IsValid'u64'($t8);

    // trace_abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:25+8
    assume {:print "$at(2,1505,1513)"} true;
    assume {:print "$track_abort(0,5):", $t8} $t8 == $t8;

    // $t9 := move($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:25+8
    $t9 := $t8;

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:53:25+8
    goto L9;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:54:17+1
    assume {:print "$at(2,1531,1532)"} true;
L5:

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:54:21+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // $t7 := +($t1, $t6) on_abort goto L9 with $t9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:54:19+1
    call $t7 := $AddU64($t1, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,1533,1534)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(0,5):", $t9} $t9 == $t9;
        goto L9;
    }

    // trace_local[i]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:54:13+1
    assume {:print "$track_local(0,5,0):", $t7} $t7 == $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:54:22+1
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:49:9+148
    assume {:print "$at(2,1399,1547)"} true;
L2:

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:49:9+148
    goto L8;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:49:9+148
    // Loop invariant checking block for the loop started with header: L6
L7:

    // assert Le($t7, 11) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    assume {:print "$at(2,1427,1442)"} true;
    assert {:msg "assert_failed(2,1427,1442): induction case of the loop invariant does not hold"}
      ($t7 <= 11);

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:50:20+15
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:56:5+1
    assume {:print "$at(2,1552,1553)"} true;
L8:

    // assert Not(true) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:58:9+15
    assume {:print "$at(2,1634,1649)"} true;
    assert {:msg "assert_failed(2,1634,1649): function does not abort under this condition"}
      !true;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:58:9+15
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:56:5+1
    assume {:print "$at(2,1552,1553)"} true;
L9:

    // assert true at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:57:5+97
    assume {:print "$at(2,1558,1655)"} true;
    assert {:msg "assert_failed(2,1558,1655): abort not covered by any of the `aborts_if` clauses"}
      true;

    // abort($t9) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:57:5+97
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::loop_invariant_base_invalid [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:206:5+237
procedure {:timeLimit 40} $42_VerifyLoops_loop_invariant_base_invalid$verify(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:206:5+237
    assume {:print "$at(2,4756,4993)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[n]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:206:5+1
    assume {:print "$track_local(0,6,0):", $t0} $t0 == $t0;

    // $t2 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:207:17+1
    assume {:print "$at(2,4826,4827)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // trace_local[x]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:207:13+1
    assume {:print "$track_local(0,6,1):", $t2} $t2 == $t2;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:209:13+51
    assume {:print "$at(2,4858,4909)"} true;
L3:

    // assert Neq<u64>($t2, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:210:17+14
    assume {:print "$at(2,4881,4895)"} true;
    assert {:msg "assert_failed(2,4881,4895): base case of the loop invariant does not hold"}
      !$IsEqual'u64'($t2, 0);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:210:17+14
    havoc $t2;
    assume $IsValid'u64'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:210:17+14
    havoc $t3;
    assume $IsValid'bool'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:210:17+14
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:210:17+14
    havoc $t5;
    assume $IsValid'u64'($t5);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:210:17+14
    assume !$abort_flag;

    // assume Neq<u64>($t2, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:210:17+14
    assume !$IsEqual'u64'($t2, 0);

    // $t3 := <($t2, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:212:16+1
    assume {:print "$at(2,4926,4927)"} true;
    call $t3 := $Lt($t2, $t0);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:208:9+139
    assume {:print "$at(2,4837,4976)"} true;
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:208:9+139
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:208:9+139
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:214:17+1
    assume {:print "$at(2,4960,4961)"} true;
L0:

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:214:21+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := +($t2, $t4) on_abort goto L6 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:214:19+1
    call $t5 := $AddU64($t2, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,4962,4963)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(0,6):", $t6} $t6 == $t6;
        goto L6;
    }

    // trace_local[x]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:214:13+1
    assume {:print "$track_local(0,6,1):", $t5} $t5 == $t5;

    // goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:214:22+1
    goto L4;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:216:9+1
    assume {:print "$at(2,4986,4987)"} true;
L2:

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:216:9+1
    assume {:print "$track_return(0,6,0):", $t2} $t2 == $t2;

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:216:9+1
    goto L5;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:216:9+1
    // Loop invariant checking block for the loop started with header: L3
L4:

    // assert Neq<u64>($t5, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:210:17+14
    assume {:print "$at(2,4881,4895)"} true;
    assert {:msg "assert_failed(2,4881,4895): induction case of the loop invariant does not hold"}
      !$IsEqual'u64'($t5, 0);

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:210:17+14
    assume false;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:217:5+1
    assume {:print "$at(2,4992,4993)"} true;
L5:

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:217:5+1
    $ret0 := $t2;
    return;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:217:5+1
L6:

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:217:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::loop_invariant_induction_invalid [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:219:5+242
procedure {:timeLimit 40} $42_VerifyLoops_loop_invariant_induction_invalid$verify(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:219:5+242
    assume {:print "$at(2,4999,5241)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[n]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:219:5+1
    assume {:print "$track_local(0,7,0):", $t0} $t0 == $t0;

    // $t2 := 0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:220:17+1
    assume {:print "$at(2,5074,5075)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // trace_local[x]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:220:13+1
    assume {:print "$track_local(0,7,1):", $t2} $t2 == $t2;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:222:13+51
    assume {:print "$at(2,5106,5157)"} true;
L3:

    // assert Eq<u64>($t2, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:223:17+14
    assume {:print "$at(2,5129,5143)"} true;
    assert {:msg "assert_failed(2,5129,5143): base case of the loop invariant does not hold"}
      $IsEqual'u64'($t2, 0);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:223:17+14
    havoc $t2;
    assume $IsValid'u64'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:223:17+14
    havoc $t3;
    assume $IsValid'bool'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:223:17+14
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:223:17+14
    havoc $t5;
    assume $IsValid'u64'($t5);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:223:17+14
    assume !$abort_flag;

    // assume Eq<u64>($t2, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:223:17+14
    assume $IsEqual'u64'($t2, 0);

    // $t3 := <($t2, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:225:16+1
    assume {:print "$at(2,5174,5175)"} true;
    call $t3 := $Lt($t2, $t0);

    // if ($t3) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:221:9+139
    assume {:print "$at(2,5085,5224)"} true;
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:221:9+139
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:221:9+139
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:227:17+1
    assume {:print "$at(2,5208,5209)"} true;
L0:

    // $t4 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:227:21+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := +($t2, $t4) on_abort goto L6 with $t6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:227:19+1
    call $t5 := $AddU64($t2, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,5210,5211)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(0,7):", $t6} $t6 == $t6;
        goto L6;
    }

    // trace_local[x]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:227:13+1
    assume {:print "$track_local(0,7,1):", $t5} $t5 == $t5;

    // goto L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:227:22+1
    goto L4;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:229:9+1
    assume {:print "$at(2,5234,5235)"} true;
L2:

    // trace_return[0]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:229:9+1
    assume {:print "$track_return(0,7,0):", $t2} $t2 == $t2;

    // goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:229:9+1
    goto L5;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:229:9+1
    // Loop invariant checking block for the loop started with header: L3
L4:

    // assert Eq<u64>($t5, 0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:223:17+14
    assume {:print "$at(2,5129,5143)"} true;
    assert {:msg "assert_failed(2,5129,5143): induction case of the loop invariant does not hold"}
      $IsEqual'u64'($t5, 0);

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:223:17+14
    assume false;
    return;

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:230:5+1
    assume {:print "$at(2,5240,5241)"} true;
L5:

    // return $t2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:230:5+1
    $ret0 := $t2;
    return;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:230:5+1
L6:

    // abort($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:230:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::loop_with_two_back_edges_correct [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:163:5+348
procedure {:timeLimit 40} $42_VerifyLoops_loop_with_two_back_edges_correct$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:163:5+348
    assume {:print "$at(2,3829,4177)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:163:5+348
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:163:5+1
    assume {:print "$track_local(0,8,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:163:5+1
    assume {:print "$track_local(0,8,1):", $t1} $t1 == $t1;

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:17+1
    assume {:print "$at(2,3922,3923)"} true;
L3:

    // havoc[val]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:17+1
    havoc $t0;
    assume $IsValid'u64'($t0);

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:17+1
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:17+1
    havoc $t2;
    assume $IsValid'bool'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:17+1
    havoc $t3;
    assume $IsValid'u64'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:17+1
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:17+1
    havoc $t5;
    assume $IsValid'bool'($t5);

    // havoc[val]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:17+1
    havoc $t6;
    assume $IsValid'u64'($t6);

    // havoc[val]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:17+1
    havoc $t7;
    assume $IsValid'u64'($t7);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:17+1
    assume !$abort_flag;

    // $t2 := >($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:19+1
    call $t2 := $Gt($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:13+78
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:13+78
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:165:13+78
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:166:21+1
    assume {:print "$at(2,3951,3952)"} true;
L0:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:166:25+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // $t4 := +($t1, $t3) on_abort goto L9 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:166:23+1
    call $t4 := $AddU64($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,3953,3954)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(0,8):", $t8} $t8 == $t8;
        goto L9;
    }

    // trace_local[y]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:166:17+1
    assume {:print "$track_local(0,8,1):", $t4} $t4 == $t4;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:167:17+8
    assume {:print "$at(2,3974,3982)"} true;
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:169:17+1
    assume {:print "$at(2,4014,4015)"} true;
L2:

    // $t5 := >($t1, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:169:19+1
    call $t5 := $Gt($t1, $t0);

    // if ($t5) goto L4 else goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:169:13+78
    if ($t5) { goto L4; } else { goto L5; }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:169:13+78
L5:

    // goto L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:169:13+78
    goto L6;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:170:21+1
    assume {:print "$at(2,4043,4044)"} true;
L4:

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:170:25+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // $t7 := +($t0, $t6) on_abort goto L9 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:170:23+1
    call $t7 := $AddU64($t0, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,4045,4046)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(0,8):", $t8} $t8 == $t8;
        goto L9;
    }

    // trace_local[x]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:170:17+1
    assume {:print "$track_local(0,8,0):", $t7} $t7 == $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:171:17+8
    assume {:print "$at(2,4066,4074)"} true;
    goto L7;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:175:9+43
    assume {:print "$at(2,4127,4170)"} true;
L6:

    // assert Eq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:176:13+14
    assume {:print "$at(2,4146,4160)"} true;
    assert {:msg "assert_failed(2,4146,4160): unknown assertion failed"}
      $IsEqual'u64'($t0, $t1);

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:177:10+1
    assume {:print "$at(2,4170,4171)"} true;
    goto L8;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:175:9+43
    // Loop invariant checking block for the loop started with header: L3
    assume {:print "$at(2,4127,4170)"} true;
L7:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:175:9+43
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:178:5+1
    assume {:print "$at(2,4176,4177)"} true;
L8:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:180:9+16
    assume {:print "$at(2,4230,4246)"} true;
    assert {:msg "assert_failed(2,4230,4246): function does not abort under this condition"}
      !false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:180:9+16
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:178:5+1
    assume {:print "$at(2,4176,4177)"} true;
L9:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:179:5+70
    assume {:print "$at(2,4182,4252)"} true;
    assert {:msg "assert_failed(2,4182,4252): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:179:5+70
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::loop_with_two_back_edges_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:183:5+415
procedure {:timeLimit 40} $42_VerifyLoops_loop_with_two_back_edges_incorrect$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:183:5+415
    assume {:print "$at(2,4258,4673)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:183:5+415
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:183:5+1
    assume {:print "$track_local(0,9,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:183:5+1
    assume {:print "$track_local(0,9,1):", $t1} $t1 == $t1;

    // assume Neq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:185:13+14
    assume {:print "$at(2,4349,4363)"} true;
    assume !$IsEqual'u64'($t0, $t1);

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:188:13+51
    assume {:print "$at(2,4402,4453)"} true;
L3:

    // assert Neq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    assume {:print "$at(2,4425,4439)"} true;
    assert {:msg "assert_failed(2,4425,4439): base case of the loop invariant does not hold"}
      !$IsEqual'u64'($t0, $t1);

    // havoc[val]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    havoc $t0;
    assume $IsValid'u64'($t0);

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    havoc $t2;
    assume $IsValid'bool'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    havoc $t3;
    assume $IsValid'u64'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    havoc $t5;
    assume $IsValid'bool'($t5);

    // havoc[val]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    havoc $t6;
    assume $IsValid'u64'($t6);

    // havoc[val]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    havoc $t7;
    assume $IsValid'u64'($t7);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    assume !$abort_flag;

    // assume Neq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    assume !$IsEqual'u64'($t0, $t1);

    // $t2 := >($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:191:19+1
    assume {:print "$at(2,4473,4474)"} true;
    call $t2 := $Gt($t0, $t1);

    // if ($t2) goto L0 else goto L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:191:13+78
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:191:13+78
L1:

    // goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:191:13+78
    goto L2;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:192:21+1
    assume {:print "$at(2,4500,4501)"} true;
L0:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:192:25+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // $t4 := +($t1, $t3) on_abort goto L9 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:192:23+1
    call $t4 := $AddU64($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,4502,4503)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(0,9):", $t8} $t8 == $t8;
        goto L9;
    }

    // $t1 := $t4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:192:17+1
    $t1 := $t4;

    // trace_local[y]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:192:17+1
    assume {:print "$track_local(0,9,1):", $t4} $t4 == $t4;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:193:17+8
    assume {:print "$at(2,4523,4531)"} true;
    goto L7;

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:195:17+1
    assume {:print "$at(2,4563,4564)"} true;
L2:

    // $t5 := >($t1, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:195:19+1
    call $t5 := $Gt($t1, $t0);

    // if ($t5) goto L4 else goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:195:13+78
    if ($t5) { goto L4; } else { goto L5; }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:195:13+78
L5:

    // goto L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:195:13+78
    goto L6;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:196:21+1
    assume {:print "$at(2,4592,4593)"} true;
L4:

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:196:25+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // $t7 := +($t0, $t6) on_abort goto L9 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:196:23+1
    call $t7 := $AddU64($t0, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,4594,4595)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(0,9):", $t8} $t8 == $t8;
        goto L9;
    }

    // $t0 := $t7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:196:17+1
    $t0 := $t7;

    // trace_local[x]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:196:17+1
    assume {:print "$track_local(0,9,0):", $t7} $t7 == $t7;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:197:17+8
    assume {:print "$at(2,4615,4623)"} true;
    goto L7;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:200:10+1
    assume {:print "$at(2,4666,4667)"} true;
L6:

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:200:10+1
    goto L8;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:200:10+1
    // Loop invariant checking block for the loop started with header: L3
L7:

    // assert Neq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    assume {:print "$at(2,4425,4439)"} true;
    assert {:msg "assert_failed(2,4425,4439): induction case of the loop invariant does not hold"}
      !$IsEqual'u64'($t0, $t1);

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:189:17+14
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:201:5+1
    assume {:print "$at(2,4672,4673)"} true;
L8:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:203:9+16
    assume {:print "$at(2,4728,4744)"} true;
    assert {:msg "assert_failed(2,4728,4744): function does not abort under this condition"}
      !false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:203:9+16
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:201:5+1
    assume {:print "$at(2,4672,4673)"} true;
L9:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:202:5+72
    assume {:print "$at(2,4678,4750)"} true;
    assert {:msg "assert_failed(2,4678,4750): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:202:5+72
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::nested_loop_correct [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:91:5+356
procedure {:timeLimit 40} $42_VerifyLoops_nested_loop_correct$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:91:5+356
    assume {:print "$at(2,2343,2699)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:91:5+356
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:91:5+1
    assume {:print "$track_local(0,10,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:91:5+1
    assume {:print "$track_local(0,10,1):", $t1} $t1 == $t1;

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:93:13+122
    assume {:print "$at(2,2419,2541)"} true;
L6:

    // havoc[val]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:93:13+122
    havoc $t0;
    assume $IsValid'u64'($t0);

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:93:13+122
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:93:13+122
    havoc $t2;
    assume $IsValid'bool'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:93:13+122
    havoc $t3;
    assume $IsValid'u64'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:93:13+122
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:93:13+122
    havoc $t5;
    assume $IsValid'bool'($t5);

    // havoc[val]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:93:13+122
    havoc $t6;
    assume $IsValid'u64'($t6);

    // havoc[val]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:93:13+122
    havoc $t7;
    assume $IsValid'u64'($t7);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:93:13+122
    assume !$abort_flag;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:94:21+1
    assume {:print "$at(2,2446,2447)"} true;
L0:

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:94:21+1
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:94:21+1
    havoc $t2;
    assume $IsValid'bool'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:94:21+1
    havoc $t3;
    assume $IsValid'u64'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:94:21+1
    havoc $t4;
    assume $IsValid'u64'($t4);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:94:21+1
    assume !$abort_flag;

    // $t2 := <=($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:94:23+2
    call $t2 := $Le($t0, $t1);

    // if ($t2) goto L1 else goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:94:17+57
    if ($t2) { goto L1; } else { goto L2; }

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:94:17+57
L2:

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:97:21+1
    assume {:print "$at(2,2521,2522)"} true;
L3:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:97:25+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // $t4 := +($t1, $t3) on_abort goto L10 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:97:23+1
    call $t4 := $AddU64($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,2523,2524)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(0,10):", $t8} $t8 == $t8;
        goto L10;
    }

    // trace_local[y]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:97:17+1
    assume {:print "$track_local(0,10,1):", $t4} $t4 == $t4;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:97:26+1
    goto L7;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:100:17+1
    assume {:print "$at(2,2560,2561)"} true;
L1:

    // $t5 := <=($t1, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:100:19+2
    call $t5 := $Le($t1, $t0);

    // if ($t5) goto L4 else goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:100:13+49
    if ($t5) { goto L4; } else { goto L5; }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:103:17+1
    assume {:print "$at(2,2623,2624)"} true;
L5:

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:103:21+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // $t7 := +($t0, $t6) on_abort goto L10 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:103:19+1
    call $t7 := $AddU64($t0, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,2625,2626)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(0,10):", $t8} $t8 == $t8;
        goto L10;
    }

    // trace_local[x]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:103:13+1
    assume {:print "$track_local(0,10,0):", $t7} $t7 == $t7;

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:103:22+1
    goto L8;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:105:9+43
    assume {:print "$at(2,2649,2692)"} true;
L4:

    // assert Eq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:106:13+14
    assume {:print "$at(2,2668,2682)"} true;
    assert {:msg "assert_failed(2,2668,2682): unknown assertion failed"}
      $IsEqual'u64'($t0, $t1);

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:107:10+1
    assume {:print "$at(2,2692,2693)"} true;
    goto L9;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:105:9+43
    // Loop invariant checking block for the loop started with header: L0
    assume {:print "$at(2,2649,2692)"} true;
L7:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:105:9+43
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:105:9+43
    // Loop invariant checking block for the loop started with header: L6
L8:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:105:9+43
    assume false;
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:108:5+1
    assume {:print "$at(2,2698,2699)"} true;
L9:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:110:9+16
    assume {:print "$at(2,2739,2755)"} true;
    assert {:msg "assert_failed(2,2739,2755): function does not abort under this condition"}
      !false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:110:9+16
    return;

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:108:5+1
    assume {:print "$at(2,2698,2699)"} true;
L10:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:109:5+57
    assume {:print "$at(2,2704,2761)"} true;
    assert {:msg "assert_failed(2,2704,2761): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:109:5+57
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::nested_loop_inner_invariant_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:138:5+451
procedure {:timeLimit 40} $42_VerifyLoops_nested_loop_inner_invariant_incorrect$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:138:5+451
    assume {:print "$at(2,3292,3743)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:138:5+451
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:138:5+1
    assume {:print "$track_local(0,11,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:138:5+1
    assume {:print "$track_local(0,11,1):", $t1} $t1 == $t1;

    // assume Neq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:140:13+14
    assume {:print "$at(2,3386,3400)"} true;
    assume !$IsEqual'u64'($t0, $t1);

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:143:13+199
    assume {:print "$at(2,3439,3638)"} true;
L6:

    // havoc[val]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:143:13+199
    havoc $t0;
    assume $IsValid'u64'($t0);

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:143:13+199
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:143:13+199
    havoc $t2;
    assume $IsValid'bool'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:143:13+199
    havoc $t3;
    assume $IsValid'u64'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:143:13+199
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:143:13+199
    havoc $t5;
    assume $IsValid'bool'($t5);

    // havoc[val]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:143:13+199
    havoc $t6;
    assume $IsValid'u64'($t6);

    // havoc[val]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:143:13+199
    havoc $t7;
    assume $IsValid'u64'($t7);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:143:13+199
    assume !$abort_flag;

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:144:17+59
    assume {:print "$at(2,3462,3521)"} true;
L0:

    // assert Neq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    assume {:print "$at(2,3489,3503)"} true;
    assert {:msg "assert_failed(2,3489,3503): base case of the loop invariant does not hold"}
      !$IsEqual'u64'($t0, $t1);

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    havoc $t2;
    assume $IsValid'bool'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    havoc $t3;
    assume $IsValid'u64'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    havoc $t4;
    assume $IsValid'u64'($t4);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    assume !$abort_flag;

    // assume Neq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    assume !$IsEqual'u64'($t0, $t1);

    // $t2 := <=($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:147:23+2
    assume {:print "$at(2,3545,3547)"} true;
    call $t2 := $Le($t0, $t1);

    // if ($t2) goto L1 else goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:147:17+57
    if ($t2) { goto L1; } else { goto L2; }

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:147:17+57
L2:

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:150:21+1
    assume {:print "$at(2,3618,3619)"} true;
L3:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:150:25+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // $t4 := +($t1, $t3) on_abort goto L10 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:150:23+1
    call $t4 := $AddU64($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,3620,3621)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(0,11):", $t8} $t8 == $t8;
        goto L10;
    }

    // trace_local[y]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:150:17+1
    assume {:print "$track_local(0,11,1):", $t4} $t4 == $t4;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:150:26+1
    goto L7;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:153:17+1
    assume {:print "$at(2,3657,3658)"} true;
L1:

    // $t5 := <=($t1, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:153:19+2
    call $t5 := $Le($t1, $t0);

    // if ($t5) goto L4 else goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:153:13+49
    if ($t5) { goto L4; } else { goto L5; }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:156:17+1
    assume {:print "$at(2,3720,3721)"} true;
L5:

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:156:21+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // $t7 := +($t0, $t6) on_abort goto L10 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:156:19+1
    call $t7 := $AddU64($t0, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,3722,3723)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(0,11):", $t8} $t8 == $t8;
        goto L10;
    }

    // trace_local[x]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:156:13+1
    assume {:print "$track_local(0,11,0):", $t7} $t7 == $t7;

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:156:22+1
    goto L8;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:157:10+1
    assume {:print "$at(2,3736,3737)"} true;
L4:

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:157:10+1
    goto L9;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:157:10+1
    // Loop invariant checking block for the loop started with header: L0
L7:

    // assert Neq<u64>($t0, $t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    assume {:print "$at(2,3489,3503)"} true;
    assert {:msg "assert_failed(2,3489,3503): induction case of the loop invariant does not hold"}
      !$IsEqual'u64'($t0, $t4);

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    // Loop invariant checking block for the loop started with header: L6
L8:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:145:21+14
    assume false;
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:158:5+1
    assume {:print "$at(2,3742,3743)"} true;
L9:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:160:9+16
    assume {:print "$at(2,3801,3817)"} true;
    assert {:msg "assert_failed(2,3801,3817): function does not abort under this condition"}
      !false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:160:9+16
    return;

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:158:5+1
    assume {:print "$at(2,3742,3743)"} true;
L10:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:159:5+75
    assume {:print "$at(2,3748,3823)"} true;
    assert {:msg "assert_failed(2,3748,3823): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:159:5+75
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun VerifyLoops::nested_loop_outer_invariant_incorrect [verification] at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:113:5+439
procedure {:timeLimit 40} $42_VerifyLoops_nested_loop_outer_invariant_incorrect$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
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
    // assume WellFormed($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:113:5+439
    assume {:print "$at(2,2767,3206)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:113:5+439
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:113:5+1
    assume {:print "$track_local(0,12,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:113:5+1
    assume {:print "$track_local(0,12,1):", $t1} $t1 == $t1;

    // assume Neq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:115:13+14
    assume {:print "$at(2,2861,2875)"} true;
    assume !$IsEqual'u64'($t0, $t1);

    // label L6 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:118:13+51
    assume {:print "$at(2,2914,2965)"} true;
L6:

    // assert Neq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    assume {:print "$at(2,2937,2951)"} true;
    assert {:msg "assert_failed(2,2937,2951): base case of the loop invariant does not hold"}
      !$IsEqual'u64'($t0, $t1);

    // havoc[val]($t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    havoc $t0;
    assume $IsValid'u64'($t0);

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    havoc $t2;
    assume $IsValid'bool'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    havoc $t3;
    assume $IsValid'u64'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    havoc $t5;
    assume $IsValid'bool'($t5);

    // havoc[val]($t6) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    havoc $t6;
    assume $IsValid'u64'($t6);

    // havoc[val]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    havoc $t7;
    assume $IsValid'u64'($t7);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    assume !$abort_flag;

    // assume Neq<u64>($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    assume !$IsEqual'u64'($t0, $t1);

    // label L0 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:122:21+1
    assume {:print "$at(2,3006,3007)"} true;
L0:

    // havoc[val]($t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:122:21+1
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t2) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:122:21+1
    havoc $t2;
    assume $IsValid'bool'($t2);

    // havoc[val]($t3) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:122:21+1
    havoc $t3;
    assume $IsValid'u64'($t3);

    // havoc[val]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:122:21+1
    havoc $t4;
    assume $IsValid'u64'($t4);

    // assume Not(AbortFlag()) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:122:21+1
    assume !$abort_flag;

    // $t2 := <=($t0, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:122:23+2
    call $t2 := $Le($t0, $t1);

    // if ($t2) goto L1 else goto L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:122:17+57
    if ($t2) { goto L1; } else { goto L2; }

    // label L2 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:122:17+57
L2:

    // label L3 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:125:21+1
    assume {:print "$at(2,3081,3082)"} true;
L3:

    // $t3 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:125:25+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // $t4 := +($t1, $t3) on_abort goto L10 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:125:23+1
    call $t4 := $AddU64($t1, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,3083,3084)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(0,12):", $t8} $t8 == $t8;
        goto L10;
    }

    // trace_local[y]($t4) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:125:17+1
    assume {:print "$track_local(0,12,1):", $t4} $t4 == $t4;

    // goto L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:125:26+1
    goto L7;

    // label L1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:128:17+1
    assume {:print "$at(2,3120,3121)"} true;
L1:

    // $t5 := <=($t1, $t0) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:128:19+2
    call $t5 := $Le($t1, $t0);

    // if ($t5) goto L4 else goto L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:128:13+49
    if ($t5) { goto L4; } else { goto L5; }

    // label L5 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:131:17+1
    assume {:print "$at(2,3183,3184)"} true;
L5:

    // $t6 := 1 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:131:21+1
    $t6 := 1;
    assume $IsValid'u64'($t6);

    // $t7 := +($t0, $t6) on_abort goto L10 with $t8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:131:19+1
    call $t7 := $AddU64($t0, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,3185,3186)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(0,12):", $t8} $t8 == $t8;
        goto L10;
    }

    // trace_local[x]($t7) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:131:13+1
    assume {:print "$track_local(0,12,0):", $t7} $t7 == $t7;

    // goto L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:131:22+1
    goto L8;

    // label L4 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:132:10+1
    assume {:print "$at(2,3199,3200)"} true;
L4:

    // goto L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:132:10+1
    goto L9;

    // label L7 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:132:10+1
    // Loop invariant checking block for the loop started with header: L0
L7:

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:132:10+1
    assume false;
    return;

    // label L8 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:132:10+1
    // Loop invariant checking block for the loop started with header: L6
L8:

    // assert Neq<u64>($t7, $t1) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    assume {:print "$at(2,2937,2951)"} true;
    assert {:msg "assert_failed(2,2937,2951): induction case of the loop invariant does not hold"}
      !$IsEqual'u64'($t7, $t1);

    // stop() at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:119:17+14
    assume false;
    return;

    // label L9 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:133:5+1
    assume {:print "$at(2,3205,3206)"} true;
L9:

    // assert Not(false) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:135:9+16
    assume {:print "$at(2,3264,3280)"} true;
    assert {:msg "assert_failed(2,3264,3280): function does not abort under this condition"}
      !false;

    // return () at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:135:9+16
    return;

    // label L10 at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:133:5+1
    assume {:print "$at(2,3205,3206)"} true;
L10:

    // assert false at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:134:5+75
    assume {:print "$at(2,3211,3286)"} true;
    assert {:msg "assert_failed(2,3211,3286): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t8) at /Users/yingsheng/diem/language/move-prover/tests/sources/functional/loops.move:134:5+75
    $abort_code := $t8;
    $abort_flag := true;
    return;

}
