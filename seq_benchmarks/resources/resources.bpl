
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


// struct TestResources::A at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:114:5+57
type {:datatype} $42_TestResources_A;
function {:constructor} $42_TestResources_A($addr: int, $val: int): $42_TestResources_A;
function {:inline} $Update'$42_TestResources_A'_addr(s: $42_TestResources_A, x: int): $42_TestResources_A {
    $42_TestResources_A(x, $val#$42_TestResources_A(s))
}
function {:inline} $Update'$42_TestResources_A'_val(s: $42_TestResources_A, x: int): $42_TestResources_A {
    $42_TestResources_A($addr#$42_TestResources_A(s), x)
}
function $IsValid'$42_TestResources_A'(s: $42_TestResources_A): bool {
    $IsValid'address'($addr#$42_TestResources_A(s))
      && $IsValid'u64'($val#$42_TestResources_A(s))
}
function {:inline} $IsEqual'$42_TestResources_A'(s1: $42_TestResources_A, s2: $42_TestResources_A): bool {
    s1 == s2
}

// struct TestResources::B at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:119:5+48
type {:datatype} $42_TestResources_B;
function {:constructor} $42_TestResources_B($val: int, $a: $42_TestResources_A): $42_TestResources_B;
function {:inline} $Update'$42_TestResources_B'_val(s: $42_TestResources_B, x: int): $42_TestResources_B {
    $42_TestResources_B(x, $a#$42_TestResources_B(s))
}
function {:inline} $Update'$42_TestResources_B'_a(s: $42_TestResources_B, x: $42_TestResources_A): $42_TestResources_B {
    $42_TestResources_B($val#$42_TestResources_B(s), x)
}
function $IsValid'$42_TestResources_B'(s: $42_TestResources_B): bool {
    $IsValid'u64'($val#$42_TestResources_B(s))
      && $IsValid'$42_TestResources_A'($a#$42_TestResources_B(s))
}
function {:inline} $IsEqual'$42_TestResources_B'(s1: $42_TestResources_B, s2: $42_TestResources_B): bool {
    s1 == s2
}

// struct TestResources::C at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:124:5+48
type {:datatype} $42_TestResources_C;
function {:constructor} $42_TestResources_C($val: int, $b: $42_TestResources_B): $42_TestResources_C;
function {:inline} $Update'$42_TestResources_C'_val(s: $42_TestResources_C, x: int): $42_TestResources_C {
    $42_TestResources_C(x, $b#$42_TestResources_C(s))
}
function {:inline} $Update'$42_TestResources_C'_b(s: $42_TestResources_C, x: $42_TestResources_B): $42_TestResources_C {
    $42_TestResources_C($val#$42_TestResources_C(s), x)
}
function $IsValid'$42_TestResources_C'(s: $42_TestResources_C): bool {
    $IsValid'u64'($val#$42_TestResources_C(s))
      && $IsValid'$42_TestResources_B'($b#$42_TestResources_C(s))
}
function {:inline} $IsEqual'$42_TestResources_C'(s1: $42_TestResources_C, s2: $42_TestResources_C): bool {
    s1 == s2
}

// struct TestResources::Empty at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:270:5+15
type {:datatype} $42_TestResources_Empty;
function {:constructor} $42_TestResources_Empty($dummy_field: bool): $42_TestResources_Empty;
function {:inline} $Update'$42_TestResources_Empty'_dummy_field(s: $42_TestResources_Empty, x: bool): $42_TestResources_Empty {
    $42_TestResources_Empty(x)
}
function $IsValid'$42_TestResources_Empty'(s: $42_TestResources_Empty): bool {
    $IsValid'bool'($dummy_field#$42_TestResources_Empty(s))
}
function {:inline} $IsEqual'$42_TestResources_Empty'(s1: $42_TestResources_Empty, s2: $42_TestResources_Empty): bool {
    s1 == s2
}

// struct TestResources::R at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:12:5+39
type {:datatype} $42_TestResources_R;
function {:constructor} $42_TestResources_R($x: int): $42_TestResources_R;
function {:inline} $Update'$42_TestResources_R'_x(s: $42_TestResources_R, x: int): $42_TestResources_R {
    $42_TestResources_R(x)
}
function $IsValid'$42_TestResources_R'(s: $42_TestResources_R): bool {
    $IsValid'u64'($x#$42_TestResources_R(s))
}
function {:inline} $IsEqual'$42_TestResources_R'(s1: $42_TestResources_R, s2: $42_TestResources_R): bool {
    s1 == s2
}
var $42_TestResources_R_$memory: $Memory $42_TestResources_R;

// fun TestResources::borrow_global_mut_correct [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:99:5+181
procedure {:timeLimit 40} $42_TestResources_borrow_global_mut_correct$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: $Mutation ($42_TestResources_R);
    var $t2: $Mutation ($42_TestResources_R);
    var $t3: $Mutation ($42_TestResources_R);
    var $t4: int;
    var $t5: $Mutation ($42_TestResources_R);
    var $t0: int;
    var $temp_0'$42_TestResources_R': $42_TestResources_R;
    var $temp_0'address': int;
    var $42_TestResources_R_$memory#5: $Memory $42_TestResources_R;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:99:5+181
    assume {:print "$at(2,3323,3504)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<TestResources::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:99:5+181
    assume (forall $a_0: int :: {$ResourceValue($42_TestResources_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestResources_R_$memory, $a_0);
    ($IsValid'$42_TestResources_R'($rsc))));

    // @5 := save_mem(TestResources::R) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:99:5+1
    $42_TestResources_R_$memory#5 := $42_TestResources_R_$memory;

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:99:5+1
    assume {:print "$track_local(1,0,0):", $t0} $t0 == $t0;

    // $t3 := borrow_global<TestResources::R>($t0) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:100:17+17
    assume {:print "$at(2,3401,3418)"} true;
    if (!$ResourceExists($42_TestResources_R_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t3 := $Mutation($Global($t0), EmptyVec(), $ResourceValue($42_TestResources_R_$memory, $t0));
    }
    if ($abort_flag) {
        assume {:print "$at(2,3401,3418)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(1,0):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[r]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:100:13+1
    $temp_0'$42_TestResources_R' := $Dereference($t3);
    assume {:print "$track_local(1,0,1):", $temp_0'$42_TestResources_R'} $temp_0'$42_TestResources_R' == $temp_0'$42_TestResources_R';

    // destroy($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:101:9+1
    assume {:print "$at(2,3434,3435)"} true;

    // $t5 := borrow_global<TestResources::R>($t0) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:102:18+17
    assume {:print "$at(2,3458,3475)"} true;
    if (!$ResourceExists($42_TestResources_R_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t5 := $Mutation($Global($t0), EmptyVec(), $ResourceValue($42_TestResources_R_$memory, $t0));
    }
    if ($abort_flag) {
        assume {:print "$at(2,3458,3475)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(1,0):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[r2]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:102:13+2
    $temp_0'$42_TestResources_R' := $Dereference($t5);
    assume {:print "$track_local(1,0,2):", $temp_0'$42_TestResources_R'} $temp_0'$42_TestResources_R' == $temp_0'$42_TestResources_R';

    // destroy($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:103:9+1
    assume {:print "$at(2,3491,3492)"} true;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:104:5+1
    assume {:print "$at(2,3503,3504)"} true;
L1:

    // assert Not(Not(exists[@5]<TestResources::R>($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:106:9+24
    assume {:print "$at(2,3550,3574)"} true;
    assert {:msg "assert_failed(2,3550,3574): function does not abort under this condition"}
      !!$ResourceExists($42_TestResources_R_$memory#5, $t0);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:106:9+24
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:104:5+1
    assume {:print "$at(2,3503,3504)"} true;
L2:

    // assert Not(exists[@5]<TestResources::R>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:105:5+71
    assume {:print "$at(2,3509,3580)"} true;
    assert {:msg "assert_failed(2,3509,3580): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($42_TestResources_R_$memory#5, $t0);

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:105:5+71
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestResources::create_empty [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:272:5+56
procedure {:timeLimit 40} $42_TestResources_create_empty$verify() returns ($ret0: $42_TestResources_Empty)
{
    // declare local variables
    var $t0: bool;
    var $t1: $42_TestResources_Empty;
    var $temp_0'$42_TestResources_Empty': $42_TestResources_Empty;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := false at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:273:9+7
    assume {:print "$at(2,8037,8044)"} true;
    $t0 := false;
    assume $IsValid'bool'($t0);

    // $t1 := pack TestResources::Empty($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:273:9+7
    $t1 := $42_TestResources_Empty($t0);

    // trace_return[0]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:273:9+7
    assume {:print "$track_return(1,1,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:274:5+1
    assume {:print "$at(2,8049,8050)"} true;
L1:

    // assert Eq<TestResources::Empty>($t1, pack TestResources::Empty(false)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:276:9+26
    assume {:print "$at(2,8083,8109)"} true;
    assert {:msg "assert_failed(2,8083,8109): post-condition does not hold"}
      $IsEqual'$42_TestResources_Empty'($t1, $42_TestResources_Empty(false));

    // return $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:276:9+26
    $ret0 := $t1;
    return;

}

// fun TestResources::create_resource [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:24:5+89
procedure {:timeLimit 40} $42_TestResources_create_resource$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestResources_R;
    var $t3: int;
    var $t0: int;
    var $temp_0'address': int;
    var $42_TestResources_R_$memory#4: $Memory $42_TestResources_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:24:5+89
    assume {:print "$at(2,497,586)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<TestResources::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:24:5+89
    assume (forall $a_0: int :: {$ResourceValue($42_TestResources_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestResources_R_$memory, $a_0);
    ($IsValid'$42_TestResources_R'($rsc))));

    // @4 := save_mem(TestResources::R) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:24:5+1
    $42_TestResources_R_$memory#4 := $42_TestResources_R_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:24:5+1
    assume {:print "$track_local(1,2,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:25:33+1
    assume {:print "$at(2,576,577)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestResources::R($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:25:29+6
    $t2 := $42_TestResources_R($t1);

    // move_to<TestResources::R>($t2, $t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:25:9+7
    if ($ResourceExists($42_TestResources_R_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $42_TestResources_R_$memory := $ResourceUpdate($42_TestResources_R_$memory, $t0, $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(2,552,559)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,2):", $t3} $t3 == $t3;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:26:5+1
    assume {:print "$at(2,585,586)"} true;
L1:

    // assert Not(exists[@4]<TestResources::R>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:28:9+54
    assume {:print "$at(2,622,676)"} true;
    assert {:msg "assert_failed(2,622,676): function does not abort under this condition"}
      !$ResourceExists($42_TestResources_R_$memory#4, $1_Signer_spec_address_of($t0));

    // assert exists<TestResources::R>(Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:29:9+52
    assume {:print "$at(2,685,737)"} true;
    assert {:msg "assert_failed(2,685,737): post-condition does not hold"}
      $ResourceExists($42_TestResources_R_$memory, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:29:9+52
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:26:5+1
    assume {:print "$at(2,585,586)"} true;
L2:

    // assert exists[@4]<TestResources::R>(Signer::spec_address_of[]($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:27:5+152
    assume {:print "$at(2,591,743)"} true;
    assert {:msg "assert_failed(2,591,743): abort not covered by any of the `aborts_if` clauses"}
      $ResourceExists($42_TestResources_R_$memory#4, $1_Signer_spec_address_of($t0));

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:27:5+152
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestResources::create_resource_at_signer [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:16:5+99
procedure {:timeLimit 40} $42_TestResources_create_resource_at_signer$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: $42_TestResources_R;
    var $t3: int;
    var $t0: int;
    var $temp_0'address': int;
    var $42_TestResources_R_$memory#3: $Memory $42_TestResources_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:16:5+99
    assume {:print "$at(2,225,324)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<TestResources::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:16:5+99
    assume (forall $a_0: int :: {$ResourceValue($42_TestResources_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestResources_R_$memory, $a_0);
    ($IsValid'$42_TestResources_R'($rsc))));

    // @3 := save_mem(TestResources::R) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:16:5+1
    $42_TestResources_R_$memory#3 := $42_TestResources_R_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:16:5+1
    assume {:print "$track_local(1,3,0):", $t0} $t0 == $t0;

    // $t1 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:17:33+1
    assume {:print "$at(2,314,315)"} true;
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // $t2 := pack TestResources::R($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:17:29+6
    $t2 := $42_TestResources_R($t1);

    // move_to<TestResources::R>($t2, $t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:17:9+7
    if ($ResourceExists($42_TestResources_R_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $42_TestResources_R_$memory := $ResourceUpdate($42_TestResources_R_$memory, $t0, $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(2,290,297)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,3):", $t3} $t3 == $t3;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:18:5+1
    assume {:print "$at(2,323,324)"} true;
L1:

    // assert Not(exists[@3]<TestResources::R>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:20:9+54
    assume {:print "$at(2,370,424)"} true;
    assert {:msg "assert_failed(2,370,424): function does not abort under this condition"}
      !$ResourceExists($42_TestResources_R_$memory#3, $1_Signer_spec_address_of($t0));

    // assert exists<TestResources::R>(Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:21:9+52
    assume {:print "$at(2,433,485)"} true;
    assert {:msg "assert_failed(2,433,485): post-condition does not hold"}
      $ResourceExists($42_TestResources_R_$memory, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:21:9+52
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:18:5+1
    assume {:print "$at(2,323,324)"} true;
L2:

    // assert exists[@3]<TestResources::R>(Signer::spec_address_of[]($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:19:5+162
    assume {:print "$at(2,329,491)"} true;
    assert {:msg "assert_failed(2,329,491): abort not covered by any of the `aborts_if` clauses"}
      $ResourceExists($42_TestResources_R_$memory#3, $1_Signer_spec_address_of($t0));

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:19:5+162
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestResources::create_resource_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:32:5+146
procedure {:timeLimit 40} $42_TestResources_create_resource_incorrect$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t0: int;
    var $temp_0'address': int;
    var $42_TestResources_R_$memory#8: $Memory $42_TestResources_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:32:5+146
    assume {:print "$at(2,749,895)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<TestResources::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:32:5+146
    assume (forall $a_0: int :: {$ResourceValue($42_TestResources_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestResources_R_$memory, $a_0);
    ($IsValid'$42_TestResources_R'($rsc))));

    // @8 := save_mem(TestResources::R) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:32:5+1
    $42_TestResources_R_$memory#8 := $42_TestResources_R_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:32:5+1
    assume {:print "$track_local(1,4,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:33:22+27
    // >> opaque call: $t1 := Signer::address_of($t0)
    assume {:print "$at(2,827,854)"} true;

    // $t1 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:33:22+27

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:33:22+27
    assume $IsValid'address'($t1);

    // assume Eq<address>($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:33:22+27
    assume $IsEqual'address'($t1, $1_Signer_spec_address_of($t0));

    // $t1 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:33:22+27

    // $t2 := exists<TestResources::R>($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:33:12+6
    $t2 := $ResourceExists($42_TestResources_R_$memory, $t1);

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:33:9+74
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:33:9+74
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:33:9+74
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:34:19+1
    assume {:print "$at(2,877,878)"} true;
L0:

    // $t3 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:34:19+1
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // trace_abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:34:13+7
    assume {:print "$at(2,871,878)"} true;
    assume {:print "$track_abort(1,4):", $t3} $t3 == $t3;

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:34:13+7
    goto L4;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:35:10+1
    assume {:print "$at(2,888,889)"} true;
L2:

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:36:5+1
    assume {:print "$at(2,894,895)"} true;
L3:

    // assert Not(exists[@8]<TestResources::R>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:38:6+54
    assume {:print "$at(2,938,992)"} true;
    assert {:msg "assert_failed(2,938,992): function does not abort under this condition"}
      !$ResourceExists($42_TestResources_R_$memory#8, $1_Signer_spec_address_of($t0));

    // assert exists<TestResources::R>(Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:39:6+52
    assume {:print "$at(2,998,1050)"} true;
    assert {:msg "assert_failed(2,998,1050): post-condition does not hold"}
      $ResourceExists($42_TestResources_R_$memory, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:39:6+52
    return;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:36:5+1
    assume {:print "$at(2,894,895)"} true;
L4:

    // assert exists[@8]<TestResources::R>(Signer::spec_address_of[]($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:37:5+156
    assume {:print "$at(2,900,1056)"} true;
    assert {:msg "assert_failed(2,900,1056): abort not covered by any of the `aborts_if` clauses"}
      $ResourceExists($42_TestResources_R_$memory#8, $1_Signer_spec_address_of($t0));

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:37:5+156
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestResources::identity [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:129:5+72
procedure {:timeLimit 40} $42_TestResources_identity$verify(_$t0: $42_TestResources_A, _$t1: $42_TestResources_B, _$t2: $42_TestResources_C) returns ($ret0: $42_TestResources_A, $ret1: $42_TestResources_B, $ret2: $42_TestResources_C)
{
    // declare local variables
    var $t0: $42_TestResources_A;
    var $t1: $42_TestResources_B;
    var $t2: $42_TestResources_C;
    var $temp_0'$42_TestResources_A': $42_TestResources_A;
    var $temp_0'$42_TestResources_B': $42_TestResources_B;
    var $temp_0'$42_TestResources_C': $42_TestResources_C;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:136:17+8
    assume {:print "$at(2,4024,4032)"} true;
    assume $IsValid'$42_TestResources_A'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:136:17+8
    assume $IsValid'$42_TestResources_B'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:136:17+8
    assume $IsValid'$42_TestResources_C'($t2);

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:129:5+1
    assume {:print "$at(2,3828,3829)"} true;
    assume {:print "$track_local(1,5,0):", $t0} $t0 == $t0;

    // trace_local[b]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:129:5+1
    assume {:print "$track_local(1,5,1):", $t1} $t1 == $t1;

    // trace_local[c]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:129:5+1
    assume {:print "$track_local(1,5,2):", $t2} $t2 == $t2;

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:130:9+9
    assume {:print "$at(2,3885,3894)"} true;
    assume {:print "$track_return(1,5,0):", $t0} $t0 == $t0;

    // trace_return[1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:130:9+9
    assume {:print "$track_return(1,5,1):", $t1} $t1 == $t1;

    // trace_return[2]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:130:9+9
    assume {:print "$track_return(1,5,2):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:131:5+1
    assume {:print "$at(2,3899,3900)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:133:9+16
    assume {:print "$at(2,3929,3945)"} true;
    assert {:msg "assert_failed(2,3929,3945): function does not abort under this condition"}
      !false;

    // assert Eq<TestResources::A>($t0, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:134:9+22
    assume {:print "$at(2,3954,3976)"} true;
    assert {:msg "assert_failed(2,3954,3976): post-condition does not hold"}
      $IsEqual'$42_TestResources_A'($t0, $t0);

    // assert Eq<TestResources::B>($t1, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:135:9+22
    assume {:print "$at(2,3985,4007)"} true;
    assert {:msg "assert_failed(2,3985,4007): post-condition does not hold"}
      $IsEqual'$42_TestResources_B'($t1, $t1);

    // assert Eq<TestResources::C>($t2, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:136:9+22
    assume {:print "$at(2,4016,4038)"} true;
    assert {:msg "assert_failed(2,4016,4038): post-condition does not hold"}
      $IsEqual'$42_TestResources_C'($t2, $t2);

    // return ($t0, $t1, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:136:9+22
    $ret0 := $t0;
    $ret1 := $t1;
    $ret2 := $t2;
    return;

}

// fun TestResources::move_from_addr [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:42:5+114
procedure {:timeLimit 40} $42_TestResources_move_from_addr$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: $42_TestResources_R;
    var $t2: $42_TestResources_R;
    var $t3: int;
    var $t4: int;
    var $t0: int;
    var $temp_0'$42_TestResources_R': $42_TestResources_R;
    var $temp_0'address': int;
    var $42_TestResources_R_$memory#2: $Memory $42_TestResources_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:42:5+114
    assume {:print "$at(2,1062,1176)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<TestResources::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:42:5+114
    assume (forall $a_0: int :: {$ResourceValue($42_TestResources_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestResources_R_$memory, $a_0);
    ($IsValid'$42_TestResources_R'($rsc))));

    // @2 := save_mem(TestResources::R) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:42:5+1
    $42_TestResources_R_$memory#2 := $42_TestResources_R_$memory;

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:42:5+1
    assume {:print "$track_local(1,6,0):", $t0} $t0 == $t0;

    // $t2 := move_from<TestResources::R>($t0) on_abort goto L2 with $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:43:17+9
    assume {:print "$at(2,1129,1138)"} true;
    if (!$ResourceExists($42_TestResources_R_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t2 := $ResourceValue($42_TestResources_R_$memory, $t0);
        $42_TestResources_R_$memory := $ResourceRemove($42_TestResources_R_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1129,1138)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(1,6):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_local[r]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:43:13+1
    assume {:print "$track_local(1,6,1):", $t2} $t2 == $t2;

    // $t4 := unpack TestResources::R($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:44:13+7
    assume {:print "$at(2,1158,1165)"} true;
    $t4 := $x#$42_TestResources_R($t2);

    // destroy($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:44:18+1

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:45:5+1
    assume {:print "$at(2,1175,1176)"} true;
L1:

    // assert Not(Not(exists[@2]<TestResources::R>($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:47:9+24
    assume {:print "$at(2,1211,1235)"} true;
    assert {:msg "assert_failed(2,1211,1235): function does not abort under this condition"}
      !!$ResourceExists($42_TestResources_R_$memory#2, $t0);

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:47:9+24
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:45:5+1
    assume {:print "$at(2,1175,1176)"} true;
L2:

    // assert Not(exists[@2]<TestResources::R>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:46:5+60
    assume {:print "$at(2,1181,1241)"} true;
    assert {:msg "assert_failed(2,1181,1241): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($42_TestResources_R_$memory#2, $t0);

    // abort($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:46:5+60
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TestResources::move_from_addr_and_return [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:64:5+144
procedure {:timeLimit 40} $42_TestResources_move_from_addr_and_return$verify(_$t0: int) returns ($ret0: $42_TestResources_R)
{
    // declare local variables
    var $t1: $42_TestResources_R;
    var $t2: int;
    var $t3: $42_TestResources_R;
    var $t4: int;
    var $t5: int;
    var $t6: $42_TestResources_R;
    var $t0: int;
    var $temp_0'$42_TestResources_R': $42_TestResources_R;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    var $42_TestResources_R_$memory#1: $Memory $42_TestResources_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:73:17+6
    assume {:print "$at(2,2233,2239)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<TestResources::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:73:17+6
    assume (forall $a_0: int :: {$ResourceValue($42_TestResources_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestResources_R_$memory, $a_0);
    ($IsValid'$42_TestResources_R'($rsc))));

    // @1 := save_mem(TestResources::R) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:64:5+1
    assume {:print "$at(2,1918,1919)"} true;
    $42_TestResources_R_$memory#1 := $42_TestResources_R_$memory;

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:64:5+1
    assume {:print "$track_local(1,7,0):", $t0} $t0 == $t0;

    // $t3 := move_from<TestResources::R>($t0) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:65:17+9
    assume {:print "$at(2,1999,2008)"} true;
    if (!$ResourceExists($42_TestResources_R_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t3 := $ResourceValue($42_TestResources_R_$memory, $t0);
        $42_TestResources_R_$memory := $ResourceRemove($42_TestResources_R_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1999,2008)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(1,7):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[r]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:65:13+1
    assume {:print "$track_local(1,7,1):", $t3} $t3 == $t3;

    // $t5 := unpack TestResources::R($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:66:13+7
    assume {:print "$at(2,2028,2035)"} true;
    $t5 := $x#$42_TestResources_R($t3);

    // trace_local[x]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:66:18+1
    assume {:print "$track_local(1,7,2):", $t5} $t5 == $t5;

    // $t6 := pack TestResources::R($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:67:9+7
    assume {:print "$at(2,2049,2056)"} true;
    $t6 := $42_TestResources_R($t5);

    // trace_return[0]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:67:9+7
    assume {:print "$track_return(1,7,0):", $t6} $t6 == $t6;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:68:5+1
    assume {:print "$at(2,2061,2062)"} true;
L1:

    // assert Not(Not(exists[@1]<TestResources::R>($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:70:9+24
    assume {:print "$at(2,2108,2132)"} true;
    assert {:msg "assert_failed(2,2108,2132): function does not abort under this condition"}
      !!$ResourceExists($42_TestResources_R_$memory#1, $t0);

    // assert exists[@1]<TestResources::R>($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:71:9+26
    assume {:print "$at(2,2141,2167)"} true;
    assert {:msg "assert_failed(2,2141,2167): post-condition does not hold"}
      $ResourceExists($42_TestResources_R_$memory#1, $t0);

    // assert Eq<u64>(select TestResources::R.x($t6), select TestResources::R.x(global[@1]<TestResources::R>($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:72:9+40
    assume {:print "$at(2,2176,2216)"} true;
    assert {:msg "assert_failed(2,2176,2216): post-condition does not hold"}
      $IsEqual'u64'($x#$42_TestResources_R($t6), $x#$42_TestResources_R($ResourceValue($42_TestResources_R_$memory#1, $t0)));

    // assert Eq<TestResources::R>($t6, global[@1]<TestResources::R>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:73:9+36
    assume {:print "$at(2,2225,2261)"} true;
    assert {:msg "assert_failed(2,2225,2261): post-condition does not hold"}
      $IsEqual'$42_TestResources_R'($t6, $ResourceValue($42_TestResources_R_$memory#1, $t0));

    // return $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:73:9+36
    $ret0 := $t6;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:68:5+1
    assume {:print "$at(2,2061,2062)"} true;
L2:

    // assert Not(exists[@1]<TestResources::R>($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:69:5+200
    assume {:print "$at(2,2067,2267)"} true;
    assert {:msg "assert_failed(2,2067,2267): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($42_TestResources_R_$memory#1, $t0);

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:69:5+200
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestResources::move_from_addr_to_sender [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:50:5+180
procedure {:timeLimit 40} $42_TestResources_move_from_addr_to_sender$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: $42_TestResources_R;
    var $t3: int;
    var $t4: $42_TestResources_R;
    var $t5: int;
    var $t6: int;
    var $t7: $42_TestResources_R;
    var $t0: int;
    var $t1: int;
    var $temp_0'$42_TestResources_R': $42_TestResources_R;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    var $42_TestResources_R_$memory#0: $Memory $42_TestResources_R;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:50:5+180
    assume {:print "$at(2,1247,1427)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:50:5+180
    assume $IsValid'address'($t1);

    // assume forall $rsc: ResourceDomain<TestResources::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:50:5+180
    assume (forall $a_0: int :: {$ResourceValue($42_TestResources_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestResources_R_$memory, $a_0);
    ($IsValid'$42_TestResources_R'($rsc))));

    // @0 := save_mem(TestResources::R) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:50:5+1
    $42_TestResources_R_$memory#0 := $42_TestResources_R_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:50:5+1
    assume {:print "$track_local(1,8,0):", $t0} $t0 == $t0;

    // trace_local[a]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:50:5+1
    assume {:print "$track_local(1,8,1):", $t1} $t1 == $t1;

    // $t4 := move_from<TestResources::R>($t1) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:51:17+9
    assume {:print "$at(2,1342,1351)"} true;
    if (!$ResourceExists($42_TestResources_R_$memory, $t1)) {
        call $ExecFailureAbort();
    } else {
        $t4 := $ResourceValue($42_TestResources_R_$memory, $t1);
        $42_TestResources_R_$memory := $ResourceRemove($42_TestResources_R_$memory, $t1);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1342,1351)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,8):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[r]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:51:13+1
    assume {:print "$track_local(1,8,2):", $t4} $t4 == $t4;

    // $t6 := unpack TestResources::R($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:52:13+7
    assume {:print "$at(2,1371,1378)"} true;
    $t6 := $x#$42_TestResources_R($t4);

    // trace_local[x]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:52:18+1
    assume {:print "$track_local(1,8,3):", $t6} $t6 == $t6;

    // $t7 := pack TestResources::R($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:53:29+7
    assume {:print "$at(2,1412,1419)"} true;
    $t7 := $42_TestResources_R($t6);

    // move_to<TestResources::R>($t7, $t0) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:53:9+7
    if ($ResourceExists($42_TestResources_R_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $42_TestResources_R_$memory := $ResourceUpdate($42_TestResources_R_$memory, $t0, $t7);
    }
    if ($abort_flag) {
        assume {:print "$at(2,1392,1399)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,8):", $t5} $t5 == $t5;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:54:5+1
    assume {:print "$at(2,1426,1427)"} true;
L1:

    // assert Not(Not(exists[@0]<TestResources::R>($t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:56:9+24
    assume {:print "$at(2,1472,1496)"} true;
    assert {:msg "assert_failed(2,1472,1496): function does not abort under this condition"}
      !!$ResourceExists($42_TestResources_R_$memory#0, $t1);

    // assert Not(And(Neq<address>(Signer::spec_address_of[]($t0), $t1), exists[@0]<TestResources::R>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:57:9+97
    assume {:print "$at(2,1505,1602)"} true;
    assert {:msg "assert_failed(2,1505,1602): function does not abort under this condition"}
      !(!$IsEqual'address'($1_Signer_spec_address_of($t0), $t1) && $ResourceExists($42_TestResources_R_$memory#0, $1_Signer_spec_address_of($t0)));

    // assert exists<TestResources::R>(Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:58:9+52
    assume {:print "$at(2,1611,1663)"} true;
    assert {:msg "assert_failed(2,1611,1663): post-condition does not hold"}
      $ResourceExists($42_TestResources_R_$memory, $1_Signer_spec_address_of($t0));

    // assert Implies(Neq<address>(Signer::spec_address_of($t0), $t1), Not(exists<TestResources::R>($t1))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:59:9+66
    assume {:print "$at(2,1672,1738)"} true;
    assert {:msg "assert_failed(2,1672,1738): post-condition does not hold"}
      (!$IsEqual'address'($1_Signer_spec_address_of($t0), $t1) ==> !$ResourceExists($42_TestResources_R_$memory, $t1));

    // assert Eq<u64>(select TestResources::R.x(global[@0]<TestResources::R>($t1)), select TestResources::R.x(global<TestResources::R>(Signer::spec_address_of($t0)))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:60:9+77
    assume {:print "$at(2,1747,1824)"} true;
    assert {:msg "assert_failed(2,1747,1824): post-condition does not hold"}
      $IsEqual'u64'($x#$42_TestResources_R($ResourceValue($42_TestResources_R_$memory#0, $t1)), $x#$42_TestResources_R($ResourceValue($42_TestResources_R_$memory, $1_Signer_spec_address_of($t0))));

    // assert Eq<TestResources::R>(global[@0]<TestResources::R>($t1), global<TestResources::R>(Signer::spec_address_of($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:61:9+73
    assume {:print "$at(2,1833,1906)"} true;
    assert {:msg "assert_failed(2,1833,1906): post-condition does not hold"}
      $IsEqual'$42_TestResources_R'($ResourceValue($42_TestResources_R_$memory#0, $t1), $ResourceValue($42_TestResources_R_$memory, $1_Signer_spec_address_of($t0)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:61:9+73
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:54:5+1
    assume {:print "$at(2,1426,1427)"} true;
L2:

    // assert Or(Not(exists[@0]<TestResources::R>($t1)), And(Neq<address>(Signer::spec_address_of[]($t0), $t1), exists[@0]<TestResources::R>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:55:5+480
    assume {:print "$at(2,1432,1912)"} true;
    assert {:msg "assert_failed(2,1432,1912): abort not covered by any of the `aborts_if` clauses"}
      (!$ResourceExists($42_TestResources_R_$memory#0, $t1) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), $t1) && $ResourceExists($42_TestResources_R_$memory#0, $1_Signer_spec_address_of($t0))));

    // abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:55:5+480
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestResources::move_from_sender_and_return [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:76:5+178
procedure {:timeLimit 40} $42_TestResources_move_from_sender_and_return$verify(_$t0: int) returns ($ret0: $42_TestResources_R)
{
    // declare local variables
    var $t1: $42_TestResources_R;
    var $t2: int;
    var $t3: int;
    var $t4: $42_TestResources_R;
    var $t5: int;
    var $t6: int;
    var $t7: $42_TestResources_R;
    var $t0: int;
    var $temp_0'$42_TestResources_R': $42_TestResources_R;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    var $42_TestResources_R_$memory#7: $Memory $42_TestResources_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:84:17+6
    assume {:print "$at(2,2651,2657)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<TestResources::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:84:17+6
    assume (forall $a_0: int :: {$ResourceValue($42_TestResources_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestResources_R_$memory, $a_0);
    ($IsValid'$42_TestResources_R'($rsc))));

    // @7 := save_mem(TestResources::R) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:76:5+1
    assume {:print "$at(2,2273,2274)"} true;
    $42_TestResources_R_$memory#7 := $42_TestResources_R_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:76:5+1
    assume {:print "$track_local(1,9,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:77:30+27
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(2,2375,2402)"} true;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:77:30+27

    // assume WellFormed($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:77:30+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:77:30+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:77:30+27

    // $t4 := move_from<TestResources::R>($t3) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:77:17+9
    if (!$ResourceExists($42_TestResources_R_$memory, $t3)) {
        call $ExecFailureAbort();
    } else {
        $t4 := $ResourceValue($42_TestResources_R_$memory, $t3);
        $42_TestResources_R_$memory := $ResourceRemove($42_TestResources_R_$memory, $t3);
    }
    if ($abort_flag) {
        assume {:print "$at(2,2362,2371)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,9):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[r]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:77:13+1
    assume {:print "$track_local(1,9,1):", $t4} $t4 == $t4;

    // $t6 := unpack TestResources::R($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:78:13+7
    assume {:print "$at(2,2417,2424)"} true;
    $t6 := $x#$42_TestResources_R($t4);

    // trace_local[x]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:78:18+1
    assume {:print "$track_local(1,9,2):", $t6} $t6 == $t6;

    // $t7 := pack TestResources::R($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:79:9+7
    assume {:print "$at(2,2438,2445)"} true;
    $t7 := $42_TestResources_R($t6);

    // trace_return[0]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:79:9+7
    assume {:print "$track_return(1,9,0):", $t7} $t7 == $t7;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:80:5+1
    assume {:print "$at(2,2450,2451)"} true;
L1:

    // assert Not(Not(exists[@7]<TestResources::R>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:82:9+55
    assume {:print "$at(2,2499,2554)"} true;
    assert {:msg "assert_failed(2,2499,2554): function does not abort under this condition"}
      !!$ResourceExists($42_TestResources_R_$memory#7, $1_Signer_spec_address_of($t0));

    // assert Eq<u64>(select TestResources::R.x($t7), select TestResources::R.x(global[@7]<TestResources::R>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:83:9+71
    assume {:print "$at(2,2563,2634)"} true;
    assert {:msg "assert_failed(2,2563,2634): post-condition does not hold"}
      $IsEqual'u64'($x#$42_TestResources_R($t7), $x#$42_TestResources_R($ResourceValue($42_TestResources_R_$memory#7, $1_Signer_spec_address_of($t0))));

    // assert Eq<TestResources::R>($t7, global[@7]<TestResources::R>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:84:9+67
    assume {:print "$at(2,2643,2710)"} true;
    assert {:msg "assert_failed(2,2643,2710): post-condition does not hold"}
      $IsEqual'$42_TestResources_R'($t7, $ResourceValue($42_TestResources_R_$memory#7, $1_Signer_spec_address_of($t0)));

    // return $t7 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:84:9+67
    $ret0 := $t7;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:80:5+1
    assume {:print "$at(2,2450,2451)"} true;
L2:

    // assert Not(exists[@7]<TestResources::R>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:81:5+260
    assume {:print "$at(2,2456,2716)"} true;
    assert {:msg "assert_failed(2,2456,2716): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($42_TestResources_R_$memory#7, $1_Signer_spec_address_of($t0));

    // abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:81:5+260
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestResources::move_from_sender_to_sender [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:87:5+196
procedure {:timeLimit 40} $42_TestResources_move_from_sender_to_sender$verify(_$t0: int) returns ()
{
    // declare local variables
    var $t1: $42_TestResources_R;
    var $t2: int;
    var $t3: int;
    var $t4: $42_TestResources_R;
    var $t5: int;
    var $t6: int;
    var $t7: $42_TestResources_R;
    var $t0: int;
    var $temp_0'$42_TestResources_R': $42_TestResources_R;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    var $42_TestResources_R_$memory#6: $Memory $42_TestResources_R;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:87:5+196
    assume {:print "$at(2,2722,2918)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<TestResources::R>(): WellFormed($rsc) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:87:5+196
    assume (forall $a_0: int :: {$ResourceValue($42_TestResources_R_$memory, $a_0)}(var $rsc := $ResourceValue($42_TestResources_R_$memory, $a_0);
    ($IsValid'$42_TestResources_R'($rsc))));

    // @6 := save_mem(TestResources::R) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:87:5+1
    $42_TestResources_R_$memory#6 := $42_TestResources_R_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:87:5+1
    assume {:print "$track_local(1,10,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:88:30+27
    // >> opaque call: $t3 := Signer::address_of($t0)
    assume {:print "$at(2,2820,2847)"} true;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:88:30+27

    // assume WellFormed($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:88:30+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:88:30+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:88:30+27

    // $t4 := move_from<TestResources::R>($t3) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:88:17+9
    if (!$ResourceExists($42_TestResources_R_$memory, $t3)) {
        call $ExecFailureAbort();
    } else {
        $t4 := $ResourceValue($42_TestResources_R_$memory, $t3);
        $42_TestResources_R_$memory := $ResourceRemove($42_TestResources_R_$memory, $t3);
    }
    if ($abort_flag) {
        assume {:print "$at(2,2807,2816)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,10):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[r]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:88:13+1
    assume {:print "$track_local(1,10,1):", $t4} $t4 == $t4;

    // $t6 := unpack TestResources::R($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:89:13+7
    assume {:print "$at(2,2862,2869)"} true;
    $t6 := $x#$42_TestResources_R($t4);

    // trace_local[x]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:89:18+1
    assume {:print "$track_local(1,10,2):", $t6} $t6 == $t6;

    // $t7 := pack TestResources::R($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:90:29+7
    assume {:print "$at(2,2903,2910)"} true;
    $t7 := $42_TestResources_R($t6);

    // move_to<TestResources::R>($t7, $t0) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:90:9+7
    if ($ResourceExists($42_TestResources_R_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $42_TestResources_R_$memory := $ResourceUpdate($42_TestResources_R_$memory, $t0, $t7);
    }
    if ($abort_flag) {
        assume {:print "$at(2,2883,2890)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,10):", $t5} $t5 == $t5;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:91:5+1
    assume {:print "$at(2,2917,2918)"} true;
L1:

    // assert Not(Not(exists[@6]<TestResources::R>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:93:9+55
    assume {:print "$at(2,2965,3020)"} true;
    assert {:msg "assert_failed(2,2965,3020): function does not abort under this condition"}
      !!$ResourceExists($42_TestResources_R_$memory#6, $1_Signer_spec_address_of($t0));

    // assert exists<TestResources::R>(Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:94:9+52
    assume {:print "$at(2,3029,3081)"} true;
    assert {:msg "assert_failed(2,3029,3081): post-condition does not hold"}
      $ResourceExists($42_TestResources_R_$memory, $1_Signer_spec_address_of($t0));

    // assert Eq<u64>(select TestResources::R.x(global[@6]<TestResources::R>(Signer::spec_address_of[]($t0))), select TestResources::R.x(global<TestResources::R>(Signer::spec_address_of($t0)))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:95:9+108
    assume {:print "$at(2,3090,3198)"} true;
    assert {:msg "assert_failed(2,3090,3198): post-condition does not hold"}
      $IsEqual'u64'($x#$42_TestResources_R($ResourceValue($42_TestResources_R_$memory#6, $1_Signer_spec_address_of($t0))), $x#$42_TestResources_R($ResourceValue($42_TestResources_R_$memory, $1_Signer_spec_address_of($t0))));

    // assert Eq<TestResources::R>(global[@6]<TestResources::R>(Signer::spec_address_of[]($t0)), global<TestResources::R>(Signer::spec_address_of($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:96:9+104
    assume {:print "$at(2,3207,3311)"} true;
    assert {:msg "assert_failed(2,3207,3311): post-condition does not hold"}
      $IsEqual'$42_TestResources_R'($ResourceValue($42_TestResources_R_$memory#6, $1_Signer_spec_address_of($t0)), $ResourceValue($42_TestResources_R_$memory, $1_Signer_spec_address_of($t0)));

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:96:9+104
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:91:5+1
    assume {:print "$at(2,2917,2918)"} true;
L2:

    // assert Not(exists[@6]<TestResources::R>(Signer::spec_address_of[]($t0))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:92:5+394
    assume {:print "$at(2,2923,3317)"} true;
    assert {:msg "assert_failed(2,2923,3317): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($42_TestResources_R_$memory#6, $1_Signer_spec_address_of($t0));

    // abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:92:5+394
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestResources::pack_A [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:139:5+77
procedure {:timeLimit 40} $42_TestResources_pack_A$verify(_$t0: int, _$t1: int) returns ($ret0: $42_TestResources_A)
{
    // declare local variables
    var $t2: $42_TestResources_A;
    var $t0: int;
    var $t1: int;
    var $temp_0'$42_TestResources_A': $42_TestResources_A;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:145:17+6
    assume {:print "$at(2,4221,4227)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:145:17+6
    assume $IsValid'u64'($t1);

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:139:5+1
    assume {:print "$at(2,4050,4051)"} true;
    assume {:print "$track_local(1,11,0):", $t0} $t0 == $t0;

    // trace_local[va]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:139:5+1
    assume {:print "$track_local(1,11,1):", $t1} $t1 == $t1;

    // $t2 := pack TestResources::A($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:140:9+19
    assume {:print "$at(2,4102,4121)"} true;
    $t2 := $42_TestResources_A($t0, $t1);

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:140:9+19
    assume {:print "$track_return(1,11,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:141:5+1
    assume {:print "$at(2,4126,4127)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:143:9+16
    assume {:print "$at(2,4154,4170)"} true;
    assert {:msg "assert_failed(2,4154,4170): function does not abort under this condition"}
      !false;

    // assert Eq<address>(select TestResources::A.addr($t2), $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:144:9+25
    assume {:print "$at(2,4179,4204)"} true;
    assert {:msg "assert_failed(2,4179,4204): post-condition does not hold"}
      $IsEqual'address'($addr#$42_TestResources_A($t2), $t0);

    // assert Eq<u64>(select TestResources::A.val($t2), $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:145:9+25
    assume {:print "$at(2,4213,4238)"} true;
    assert {:msg "assert_failed(2,4213,4238): post-condition does not hold"}
      $IsEqual'u64'($val#$42_TestResources_A($t2), $t1);

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:145:9+25
    $ret0 := $t2;
    return;

}

// fun TestResources::pack_B [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:148:5+159
procedure {:timeLimit 40} $42_TestResources_pack_B$verify(_$t0: int, _$t1: int, _$t2: int) returns ($ret0: $42_TestResources_B)
{
    // declare local variables
    var $t3: $42_TestResources_A;
    var $t4: $42_TestResources_B;
    var $t5: $42_TestResources_A;
    var $t6: $42_TestResources_B;
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $temp_0'$42_TestResources_A': $42_TestResources_A;
    var $temp_0'$42_TestResources_B': $42_TestResources_B;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:157:17+6
    assume {:print "$at(2,4539,4545)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:157:17+6
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:157:17+6
    assume $IsValid'u64'($t2);

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:148:5+1
    assume {:print "$at(2,4250,4251)"} true;
    assume {:print "$track_local(1,12,0):", $t0} $t0 == $t0;

    // trace_local[va]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:148:5+1
    assume {:print "$track_local(1,12,1):", $t1} $t1 == $t1;

    // trace_local[vb]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:148:5+1
    assume {:print "$track_local(1,12,2):", $t2} $t2 == $t2;

    // $t5 := pack TestResources::A($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:149:21+21
    assume {:print "$at(2,4323,4344)"} true;
    $t5 := $42_TestResources_A($t0, $t1);

    // trace_local[var_a]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:149:13+5
    assume {:print "$track_local(1,12,3):", $t5} $t5 == $t5;

    // $t6 := pack TestResources::B($t2, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:150:21+22
    assume {:print "$at(2,4366,4388)"} true;
    $t6 := $42_TestResources_B($t2, $t5);

    // trace_local[var_b]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:150:13+5
    assume {:print "$track_local(1,12,4):", $t6} $t6 == $t6;

    // trace_return[0]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:151:9+5
    assume {:print "$at(2,4398,4403)"} true;
    assume {:print "$track_return(1,12,0):", $t6} $t6 == $t6;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:152:5+1
    assume {:print "$at(2,4408,4409)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:154:9+16
    assume {:print "$at(2,4436,4452)"} true;
    assert {:msg "assert_failed(2,4436,4452): function does not abort under this condition"}
      !false;

    // assert Eq<u64>(select TestResources::B.val($t6), $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:155:9+25
    assume {:print "$at(2,4461,4486)"} true;
    assert {:msg "assert_failed(2,4461,4486): post-condition does not hold"}
      $IsEqual'u64'($val#$42_TestResources_B($t6), $t2);

    // assert Eq<u64>(select TestResources::A.val(select TestResources::B.a($t6)), $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:156:9+27
    assume {:print "$at(2,4495,4522)"} true;
    assert {:msg "assert_failed(2,4495,4522): post-condition does not hold"}
      $IsEqual'u64'($val#$42_TestResources_A($a#$42_TestResources_B($t6)), $t1);

    // assert Eq<address>(select TestResources::A.addr(select TestResources::B.a($t6)), $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:157:9+27
    assume {:print "$at(2,4531,4558)"} true;
    assert {:msg "assert_failed(2,4531,4558): post-condition does not hold"}
      $IsEqual'address'($addr#$42_TestResources_A($a#$42_TestResources_B($t6)), $t0);

    // return $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:157:9+27
    $ret0 := $t6;
    return;

}

// fun TestResources::pack_C [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:160:5+212
procedure {:timeLimit 40} $42_TestResources_pack_C$verify(_$t0: int, _$t1: int, _$t2: int, _$t3: int) returns ($ret0: $42_TestResources_C)
{
    // declare local variables
    var $t4: $42_TestResources_A;
    var $t5: $42_TestResources_B;
    var $t6: $42_TestResources_C;
    var $t7: $42_TestResources_A;
    var $t8: $42_TestResources_B;
    var $t9: $42_TestResources_C;
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $temp_0'$42_TestResources_A': $42_TestResources_A;
    var $temp_0'$42_TestResources_B': $42_TestResources_B;
    var $temp_0'$42_TestResources_C': $42_TestResources_C;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:171:17+6
    assume {:print "$at(2,4950,4956)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:171:17+6
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:171:17+6
    assume $IsValid'u64'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:171:17+6
    assume $IsValid'u64'($t3);

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:160:5+1
    assume {:print "$at(2,4570,4571)"} true;
    assume {:print "$track_local(1,13,0):", $t0} $t0 == $t0;

    // trace_local[va]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:160:5+1
    assume {:print "$track_local(1,13,1):", $t1} $t1 == $t1;

    // trace_local[vb]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:160:5+1
    assume {:print "$track_local(1,13,2):", $t2} $t2 == $t2;

    // trace_local[vc]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:160:5+1
    assume {:print "$track_local(1,13,3):", $t3} $t3 == $t3;

    // $t7 := pack TestResources::A($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:161:21+21
    assume {:print "$at(2,4652,4673)"} true;
    $t7 := $42_TestResources_A($t0, $t1);

    // trace_local[var_a]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:161:13+5
    assume {:print "$track_local(1,13,4):", $t7} $t7 == $t7;

    // $t8 := pack TestResources::B($t2, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:162:21+22
    assume {:print "$at(2,4695,4717)"} true;
    $t8 := $42_TestResources_B($t2, $t7);

    // trace_local[var_b]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:162:13+5
    assume {:print "$track_local(1,13,5):", $t8} $t8 == $t8;

    // $t9 := pack TestResources::C($t3, $t8) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:163:21+22
    assume {:print "$at(2,4739,4761)"} true;
    $t9 := $42_TestResources_C($t3, $t8);

    // trace_local[var_c]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:163:13+5
    assume {:print "$track_local(1,13,6):", $t9} $t9 == $t9;

    // trace_return[0]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:164:9+5
    assume {:print "$at(2,4771,4776)"} true;
    assume {:print "$track_return(1,13,0):", $t9} $t9 == $t9;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:165:5+1
    assume {:print "$at(2,4781,4782)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:167:9+16
    assume {:print "$at(2,4809,4825)"} true;
    assert {:msg "assert_failed(2,4809,4825): function does not abort under this condition"}
      !false;

    // assert Eq<u64>(select TestResources::C.val($t9), $t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:168:9+25
    assume {:print "$at(2,4834,4859)"} true;
    assert {:msg "assert_failed(2,4834,4859): post-condition does not hold"}
      $IsEqual'u64'($val#$42_TestResources_C($t9), $t3);

    // assert Eq<u64>(select TestResources::B.val(select TestResources::C.b($t9)), $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:169:9+27
    assume {:print "$at(2,4868,4895)"} true;
    assert {:msg "assert_failed(2,4868,4895): post-condition does not hold"}
      $IsEqual'u64'($val#$42_TestResources_B($b#$42_TestResources_C($t9)), $t2);

    // assert Eq<u64>(select TestResources::A.val(select TestResources::B.a(select TestResources::C.b($t9))), $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:170:9+29
    assume {:print "$at(2,4904,4933)"} true;
    assert {:msg "assert_failed(2,4904,4933): post-condition does not hold"}
      $IsEqual'u64'($val#$42_TestResources_A($a#$42_TestResources_B($b#$42_TestResources_C($t9))), $t1);

    // assert Eq<address>(select TestResources::A.addr(select TestResources::B.a(select TestResources::C.b($t9))), $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:171:9+29
    assume {:print "$at(2,4942,4971)"} true;
    assert {:msg "assert_failed(2,4942,4971): post-condition does not hold"}
      $IsEqual'address'($addr#$42_TestResources_A($a#$42_TestResources_B($b#$42_TestResources_C($t9))), $t0);

    // return $t9 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:171:9+29
    $ret0 := $t9;
    return;

}

// fun TestResources::ref_A [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:213:5+297
procedure {:timeLimit 40} $42_TestResources_ref_A$verify(_$t0: int, _$t1: bool) returns ($ret0: $42_TestResources_A)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: $42_TestResources_A;
    var $t5: $42_TestResources_A;
    var $t6: $42_TestResources_A;
    var $t7: int;
    var $t8: $42_TestResources_A;
    var $t9: int;
    var $t10: $42_TestResources_A;
    var $t11: int;
    var $t12: int;
    var $t13: bool;
    var $t14: int;
    var $t0: int;
    var $t1: bool;
    var $temp_0'$42_TestResources_A': $42_TestResources_A;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:224:17+6
    assume {:print "$at(2,6517,6523)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:224:17+6
    assume $IsValid'bool'($t1);

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:213:5+1
    assume {:print "$at(2,6165,6166)"} true;
    assume {:print "$track_local(1,14,0):", $t0} $t0 == $t0;

    // trace_local[b]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:213:5+1
    assume {:print "$track_local(1,14,1):", $t1} $t1 == $t1;

    // if ($t1) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:21+74
    assume {:print "$at(2,6228,6302)"} true;
    if ($t1) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:21+74
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:21+74
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:37+1
L0:

    // $t7 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:45+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // $t8 := pack TestResources::A($t0, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:28+20
    $t8 := $42_TestResources_A($t0, $t7);

    // $t4 := $t8 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:21+74
    $t4 := $t8;

    // trace_local[tmp#$4]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:21+74
    assume {:print "$track_local(1,14,4):", $t8} $t8 == $t8;

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:21+74
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:215:35+1
    assume {:print "$at(2,6290,6291)"} true;
L2:

    // $t9 := 42 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:215:43+2
    $t9 := 42;
    assume $IsValid'u64'($t9);

    // $t10 := pack TestResources::A($t0, $t9) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:215:26+21
    $t10 := $42_TestResources_A($t0, $t9);

    // $t4 := $t10 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:21+74
    assume {:print "$at(2,6228,6302)"} true;
    $t4 := $t10;

    // trace_local[tmp#$4]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:21+74
    assume {:print "$track_local(1,14,4):", $t10} $t10 == $t10;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:21+74
L3:

    // trace_local[var_a]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:214:13+5
    assume {:print "$track_local(1,14,5):", $t4} $t4 == $t4;

    // trace_local[var_a_ref]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:216:13+9
    assume {:print "$at(2,6316,6325)"} true;
    assume {:print "$track_local(1,14,6):", $t4} $t4 == $t4;

    // $t11 := get_field<TestResources::A>.val($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:217:25+14
    assume {:print "$at(2,6360,6374)"} true;
    $t11 := $val#$42_TestResources_A($t4);

    // trace_local[b_val_ref]($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:217:13+9
    assume {:print "$track_local(1,14,2):", $t11} $t11 == $t11;

    // trace_local[b_var]($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:218:13+5
    assume {:print "$at(2,6388,6393)"} true;
    assume {:print "$track_local(1,14,3):", $t11} $t11 == $t11;

    // $t12 := 42 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:219:22+2
    assume {:print "$at(2,6429,6431)"} true;
    $t12 := 42;
    assume $IsValid'u64'($t12);

    // $t13 := !=($t11, $t12) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:219:19+2
    $t13 := !$IsEqual'u64'($t11, $t12);

    // if ($t13) goto L4 else goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:219:9+25
    if ($t13) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:219:9+25
L5:

    // goto L6 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:219:9+25
    goto L6;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:219:32+2
L4:

    // $t14 := 42 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:219:32+2
    $t14 := 42;
    assume $IsValid'u64'($t14);

    // trace_abort($t14) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:219:26+8
    assume {:print "$at(2,6433,6441)"} true;
    assume {:print "$track_abort(1,14):", $t14} $t14 == $t14;

    // goto L8 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:219:26+8
    goto L8;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:220:9+5
    assume {:print "$at(2,6451,6456)"} true;
L6:

    // trace_return[0]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:220:9+5
    assume {:print "$track_return(1,14,0):", $t4} $t4 == $t4;

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:221:5+1
    assume {:print "$at(2,6461,6462)"} true;
L7:

    // assert Not($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:223:9+12
    assume {:print "$at(2,6488,6500)"} true;
    assert {:msg "assert_failed(2,6488,6500): function does not abort under this condition"}
      !$t1;

    // assert Eq<address>(select TestResources::A.addr($t4), $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:224:9+25
    assume {:print "$at(2,6509,6534)"} true;
    assert {:msg "assert_failed(2,6509,6534): post-condition does not hold"}
      $IsEqual'address'($addr#$42_TestResources_A($t4), $t0);

    // return $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:224:9+25
    $ret0 := $t4;
    return;

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:221:5+1
    assume {:print "$at(2,6461,6462)"} true;
L8:

    // assert $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:222:5+73
    assume {:print "$at(2,6467,6540)"} true;
    assert {:msg "assert_failed(2,6467,6540): abort not covered by any of the `aborts_if` clauses"}
      $t1;

    // abort($t14) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:222:5+73
    $abort_code := $t14;
    $abort_flag := true;
    return;

}

// fun TestResources::spec_pack_A [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:241:5+106
procedure {:timeLimit 40} $42_TestResources_spec_pack_A$verify(_$t0: int) returns ($ret0: $42_TestResources_A)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: $42_TestResources_A;
    var $t0: int;
    var $temp_0'$42_TestResources_A': $42_TestResources_A;
    var $temp_0'address': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:249:17+6
    assume {:print "$at(2,7140,7146)"} true;
    assume $IsValid'address'($t0);

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:241:5+1
    assume {:print "$at(2,6792,6793)"} true;
    assume {:print "$track_local(1,15,0):", $t0} $t0 == $t0;

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:242:18+27
    // >> opaque call: $t1 := Signer::address_of($t0)
    assume {:print "$at(2,6855,6882)"} true;

    // $t1 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:242:18+27

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:242:18+27
    assume $IsValid'address'($t1);

    // assume Eq<address>($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:242:18+27
    assume $IsEqual'address'($t1, $1_Signer_spec_address_of($t0));

    // $t1 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:242:18+27

    // $t2 := 7 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:242:52+1
    $t2 := 7;
    assume $IsValid'u64'($t2);

    // $t3 := pack TestResources::A($t1, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:242:9+46
    $t3 := $42_TestResources_A($t1, $t2);

    // trace_return[0]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:242:9+46
    assume {:print "$track_return(1,15,0):", $t3} $t3 == $t3;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:243:5+1
    assume {:print "$at(2,6897,6898)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:245:9+16
    assume {:print "$at(2,6930,6946)"} true;
    assert {:msg "assert_failed(2,6930,6946): function does not abort under this condition"}
      !false;

    // assert Eq<address>(select TestResources::A.addr($t3), Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:246:9+56
    assume {:print "$at(2,6955,7011)"} true;
    assert {:msg "assert_failed(2,6955,7011): post-condition does not hold"}
      $IsEqual'address'($addr#$42_TestResources_A($t3), $1_Signer_spec_address_of($t0));

    // assert Eq<u64>(select TestResources::A.val($t3), 7) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:247:9+24
    assume {:print "$at(2,7020,7044)"} true;
    assert {:msg "assert_failed(2,7020,7044): post-condition does not hold"}
      $IsEqual'u64'($val#$42_TestResources_A($t3), 7);

    // assert Eq<TestResources::A>($t3, pack TestResources::A(Signer::spec_address_of($t0), 7)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:248:9+70
    assume {:print "$at(2,7053,7123)"} true;
    assert {:msg "assert_failed(2,7053,7123): post-condition does not hold"}
      $IsEqual'$42_TestResources_A'($t3, $42_TestResources_A($1_Signer_spec_address_of($t0), 7));

    // assert Eq<TestResources::A>($t3, pack TestResources::A(Signer::spec_address_of($t0), 7)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:249:9+70
    assume {:print "$at(2,7132,7202)"} true;
    assert {:msg "assert_failed(2,7132,7202): post-condition does not hold"}
      $IsEqual'$42_TestResources_A'($t3, $42_TestResources_A($1_Signer_spec_address_of($t0), 7));

    // return $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:249:9+70
    $ret0 := $t3;
    return;

}

// fun TestResources::spec_pack_B [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:252:5+122
procedure {:timeLimit 40} $42_TestResources_spec_pack_B$verify(_$t0: int) returns ($ret0: $42_TestResources_B)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: $42_TestResources_A;
    var $t5: $42_TestResources_B;
    var $t0: int;
    var $temp_0'$42_TestResources_B': $42_TestResources_B;
    var $temp_0'address': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:263:17+6
    assume {:print "$at(2,7822,7828)"} true;
    assume $IsValid'address'($t0);

    // trace_local[account]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:252:5+1
    assume {:print "$at(2,7214,7215)"} true;
    assume {:print "$track_local(1,16,0):", $t0} $t0 == $t0;

    // $t1 := 77 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:253:17+2
    assume {:print "$at(2,7276,7278)"} true;
    $t1 := 77;
    assume $IsValid'u64'($t1);

    // nop at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:253:33+27
    // >> opaque call: $t2 := Signer::address_of($t0)

    // $t2 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:253:33+27

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:253:33+27
    assume $IsValid'address'($t2);

    // assume Eq<address>($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:253:33+27
    assume $IsEqual'address'($t2, $1_Signer_spec_address_of($t0));

    // $t2 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:253:33+27

    // $t3 := 7 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:253:67+1
    $t3 := 7;
    assume $IsValid'u64'($t3);

    // $t4 := pack TestResources::A($t2, $t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:253:24+46
    $t4 := $42_TestResources_A($t2, $t3);

    // $t5 := pack TestResources::B($t1, $t4) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:253:9+62
    $t5 := $42_TestResources_B($t1, $t4);

    // trace_return[0]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:253:9+62
    assume {:print "$track_return(1,16,0):", $t5} $t5 == $t5;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:254:5+1
    assume {:print "$at(2,7335,7336)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:256:9+16
    assume {:print "$at(2,7368,7384)"} true;
    assert {:msg "assert_failed(2,7368,7384): function does not abort under this condition"}
      !false;

    // assert Eq<u64>(select TestResources::B.val($t5), 77) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:257:9+25
    assume {:print "$at(2,7393,7418)"} true;
    assert {:msg "assert_failed(2,7393,7418): post-condition does not hold"}
      $IsEqual'u64'($val#$42_TestResources_B($t5), 77);

    // assert Eq<u64>(select TestResources::A.val(select TestResources::B.a($t5)), 7) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:258:9+26
    assume {:print "$at(2,7427,7453)"} true;
    assert {:msg "assert_failed(2,7427,7453): post-condition does not hold"}
      $IsEqual'u64'($val#$42_TestResources_A($a#$42_TestResources_B($t5)), 7);

    // assert Eq<address>(select TestResources::A.addr(select TestResources::B.a($t5)), Signer::spec_address_of($t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:259:9+58
    assume {:print "$at(2,7462,7520)"} true;
    assert {:msg "assert_failed(2,7462,7520): post-condition does not hold"}
      $IsEqual'address'($addr#$42_TestResources_A($a#$42_TestResources_B($t5)), $1_Signer_spec_address_of($t0));

    // assert Eq<TestResources::B>($t5, pack TestResources::B(77, pack TestResources::A(Signer::spec_address_of($t0), 7))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:260:9+86
    assume {:print "$at(2,7529,7615)"} true;
    assert {:msg "assert_failed(2,7529,7615): post-condition does not hold"}
      $IsEqual'$42_TestResources_B'($t5, $42_TestResources_B(77, $42_TestResources_A($1_Signer_spec_address_of($t0), 7)));

    // assert Eq<TestResources::B>($t5, pack TestResources::B(77, pack TestResources::A(Signer::spec_address_of($t0), 7))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:261:9+85
    assume {:print "$at(2,7624,7709)"} true;
    assert {:msg "assert_failed(2,7624,7709): post-condition does not hold"}
      $IsEqual'$42_TestResources_B'($t5, $42_TestResources_B(77, $42_TestResources_A($1_Signer_spec_address_of($t0), 7)));

    // assert Eq<TestResources::B>($t5, pack TestResources::B(77, pack TestResources::A(Signer::spec_address_of($t0), 7))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:262:9+87
    assume {:print "$at(2,7718,7805)"} true;
    assert {:msg "assert_failed(2,7718,7805): post-condition does not hold"}
      $IsEqual'$42_TestResources_B'($t5, $42_TestResources_B(77, $42_TestResources_A($1_Signer_spec_address_of($t0), 7)));

    // assert Eq<TestResources::B>($t5, pack TestResources::B(77, pack TestResources::A(Signer::spec_address_of($t0), 7))) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:263:9+86
    assume {:print "$at(2,7814,7900)"} true;
    assert {:msg "assert_failed(2,7814,7900): post-condition does not hold"}
      $IsEqual'$42_TestResources_B'($t5, $42_TestResources_B(77, $42_TestResources_A($1_Signer_spec_address_of($t0), 7)));

    // return $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:263:9+86
    $ret0 := $t5;
    return;

}

// fun TestResources::spec_pack_R [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:232:5+51
procedure {:timeLimit 40} $42_TestResources_spec_pack_R$verify() returns ($ret0: $42_TestResources_R)
{
    // declare local variables
    var $t0: int;
    var $t1: $42_TestResources_R;
    var $temp_0'$42_TestResources_R': $42_TestResources_R;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := 7 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:233:14+1
    assume {:print "$at(2,6658,6659)"} true;
    $t0 := 7;
    assume $IsValid'u64'($t0);

    // $t1 := pack TestResources::R($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:233:9+7
    $t1 := $42_TestResources_R($t0);

    // trace_return[0]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:233:9+7
    assume {:print "$track_return(1,17,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:234:5+1
    assume {:print "$at(2,6665,6666)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:236:9+16
    assume {:print "$at(2,6698,6714)"} true;
    assert {:msg "assert_failed(2,6698,6714): function does not abort under this condition"}
      !false;

    // assert Eq<u64>(select TestResources::R.x($t1), 7) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:237:9+22
    assume {:print "$at(2,6723,6745)"} true;
    assert {:msg "assert_failed(2,6723,6745): post-condition does not hold"}
      $IsEqual'u64'($x#$42_TestResources_R($t1), 7);

    // assert Eq<TestResources::R>($t1, pack TestResources::R(7)) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:238:9+26
    assume {:print "$at(2,6754,6780)"} true;
    assert {:msg "assert_failed(2,6754,6780): post-condition does not hold"}
      $IsEqual'$42_TestResources_R'($t1, $42_TestResources_R(7));

    // return $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:238:9+26
    $ret0 := $t1;
    return;

}

// fun TestResources::unpack_A [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:174:5+163
procedure {:timeLimit 40} $42_TestResources_unpack_A$verify(_$t0: int, _$t1: int) returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: $42_TestResources_A;
    var $t5: $42_TestResources_A;
    var $t6: int;
    var $t7: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'$42_TestResources_A': $42_TestResources_A;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:182:17+8
    assume {:print "$at(2,5239,5247)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:182:17+8
    assume $IsValid'u64'($t1);

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:174:5+1
    assume {:print "$at(2,4983,4984)"} true;
    assume {:print "$track_local(1,18,0):", $t0} $t0 == $t0;

    // trace_local[va]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:174:5+1
    assume {:print "$track_local(1,18,1):", $t1} $t1 == $t1;

    // $t5 := pack TestResources::A($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:175:21+19
    assume {:print "$at(2,5062,5081)"} true;
    $t5 := $42_TestResources_A($t0, $t1);

    // trace_local[var_a]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:175:13+5
    assume {:print "$track_local(1,18,4):", $t5} $t5 == $t5;

    // ($t6, $t7) := unpack TestResources::A($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:176:13+19
    assume {:print "$at(2,5095,5114)"} true;
    $t6 := $addr#$42_TestResources_A($t5);
    $t7 := $val#$42_TestResources_A($t5);

    // trace_local[v1]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:176:29+2
    assume {:print "$track_local(1,18,3):", $t7} $t7 == $t7;

    // trace_local[aa]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:176:21+2
    assume {:print "$track_local(1,18,2):", $t6} $t6 == $t6;

    // trace_return[0]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:177:9+8
    assume {:print "$at(2,5132,5140)"} true;
    assume {:print "$track_return(1,18,0):", $t6} $t6 == $t6;

    // trace_return[1]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:177:9+8
    assume {:print "$track_return(1,18,1):", $t7} $t7 == $t7;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:178:5+1
    assume {:print "$at(2,5145,5146)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:180:9+16
    assume {:print "$at(2,5175,5191)"} true;
    assert {:msg "assert_failed(2,5175,5191): function does not abort under this condition"}
      !false;

    // assert Eq<address>($t6, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:181:9+22
    assume {:print "$at(2,5200,5222)"} true;
    assert {:msg "assert_failed(2,5200,5222): post-condition does not hold"}
      $IsEqual'address'($t6, $t0);

    // assert Eq<u64>($t7, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:182:9+23
    assume {:print "$at(2,5231,5254)"} true;
    assert {:msg "assert_failed(2,5231,5254): post-condition does not hold"}
      $IsEqual'u64'($t7, $t1);

    // return ($t6, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:182:9+23
    $ret0 := $t6;
    $ret1 := $t7;
    return;

}

// fun TestResources::unpack_B [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:185:5+243
procedure {:timeLimit 40} $42_TestResources_unpack_B$verify(_$t0: int, _$t1: int, _$t2: int) returns ($ret0: int, $ret1: int, $ret2: int)
{
    // declare local variables
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: $42_TestResources_A;
    var $t7: $42_TestResources_B;
    var $t8: $42_TestResources_A;
    var $t9: $42_TestResources_B;
    var $t10: int;
    var $t11: $42_TestResources_A;
    var $t12: int;
    var $t13: int;
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $temp_0'$42_TestResources_A': $42_TestResources_A;
    var $temp_0'$42_TestResources_B': $42_TestResources_B;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:195:17+8
    assume {:print "$at(2,5634,5642)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:195:17+8
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:195:17+8
    assume $IsValid'u64'($t2);

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:185:5+1
    assume {:print "$at(2,5266,5267)"} true;
    assume {:print "$track_local(1,19,0):", $t0} $t0 == $t0;

    // trace_local[va]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:185:5+1
    assume {:print "$track_local(1,19,1):", $t1} $t1 == $t1;

    // trace_local[vb]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:185:5+1
    assume {:print "$track_local(1,19,2):", $t2} $t2 == $t2;

    // $t8 := pack TestResources::A($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:186:21+21
    assume {:print "$at(2,5359,5380)"} true;
    $t8 := $42_TestResources_A($t0, $t1);

    // trace_local[var_a]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:186:13+5
    assume {:print "$track_local(1,19,6):", $t8} $t8 == $t8;

    // $t9 := pack TestResources::B($t2, $t8) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:187:21+22
    assume {:print "$at(2,5402,5424)"} true;
    $t9 := $42_TestResources_B($t2, $t8);

    // trace_local[var_b]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:187:13+5
    assume {:print "$track_local(1,19,7):", $t9} $t9 == $t9;

    // ($t10, $t11) := unpack TestResources::B($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:188:13+35
    assume {:print "$at(2,5438,5473)"} true;
    $t10 := $val#$42_TestResources_B($t9);
    $t11 := $a#$42_TestResources_B($t9);

    // ($t12, $t13) := unpack TestResources::A($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:188:27+20
    $t12 := $addr#$42_TestResources_A($t11);
    $t13 := $val#$42_TestResources_A($t11);

    // trace_local[v1]($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:188:44+2
    assume {:print "$track_local(1,19,4):", $t13} $t13 == $t13;

    // trace_local[aa]($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:188:35+2
    assume {:print "$track_local(1,19,3):", $t12} $t12 == $t12;

    // trace_local[v2]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:188:20+2
    assume {:print "$track_local(1,19,5):", $t10} $t10 == $t10;

    // trace_return[0]($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:189:9+12
    assume {:print "$at(2,5491,5503)"} true;
    assume {:print "$track_return(1,19,0):", $t12} $t12 == $t12;

    // trace_return[1]($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:189:9+12
    assume {:print "$track_return(1,19,1):", $t13} $t13 == $t13;

    // trace_return[2]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:189:9+12
    assume {:print "$track_return(1,19,2):", $t10} $t10 == $t10;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:190:5+1
    assume {:print "$at(2,5508,5509)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:192:9+16
    assume {:print "$at(2,5538,5554)"} true;
    assert {:msg "assert_failed(2,5538,5554): function does not abort under this condition"}
      !false;

    // assert Eq<address>($t12, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:193:9+22
    assume {:print "$at(2,5563,5585)"} true;
    assert {:msg "assert_failed(2,5563,5585): post-condition does not hold"}
      $IsEqual'address'($t12, $t0);

    // assert Eq<u64>($t13, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:194:9+23
    assume {:print "$at(2,5594,5617)"} true;
    assert {:msg "assert_failed(2,5594,5617): post-condition does not hold"}
      $IsEqual'u64'($t13, $t1);

    // assert Eq<u64>($t10, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:195:9+23
    assume {:print "$at(2,5626,5649)"} true;
    assert {:msg "assert_failed(2,5626,5649): post-condition does not hold"}
      $IsEqual'u64'($t10, $t2);

    // return ($t12, $t13, $t10) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:195:9+23
    $ret0 := $t12;
    $ret1 := $t13;
    $ret2 := $t10;
    return;

}

// fun TestResources::unpack_C [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:198:5+320
procedure {:timeLimit 40} $42_TestResources_unpack_C$verify(_$t0: int, _$t1: int, _$t2: int, _$t3: int) returns ($ret0: int, $ret1: int, $ret2: int, $ret3: int)
{
    // declare local variables
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: $42_TestResources_A;
    var $t9: $42_TestResources_B;
    var $t10: $42_TestResources_C;
    var $t11: $42_TestResources_A;
    var $t12: $42_TestResources_B;
    var $t13: $42_TestResources_C;
    var $t14: int;
    var $t15: $42_TestResources_B;
    var $t16: int;
    var $t17: $42_TestResources_A;
    var $t18: int;
    var $t19: int;
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $temp_0'$42_TestResources_A': $42_TestResources_A;
    var $temp_0'$42_TestResources_B': $42_TestResources_B;
    var $temp_0'$42_TestResources_C': $42_TestResources_C;
    var $temp_0'address': int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:210:17+8
    assume {:print "$at(2,6138,6146)"} true;
    assume $IsValid'address'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:210:17+8
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:210:17+8
    assume $IsValid'u64'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:210:17+8
    assume $IsValid'u64'($t3);

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:198:5+1
    assume {:print "$at(2,5661,5662)"} true;
    assume {:print "$track_local(1,20,0):", $t0} $t0 == $t0;

    // trace_local[va]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:198:5+1
    assume {:print "$track_local(1,20,1):", $t1} $t1 == $t1;

    // trace_local[vb]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:198:5+1
    assume {:print "$track_local(1,20,2):", $t2} $t2 == $t2;

    // trace_local[vc]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:198:5+1
    assume {:print "$track_local(1,20,3):", $t3} $t3 == $t3;

    // $t11 := pack TestResources::A($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:199:21+21
    assume {:print "$at(2,5768,5789)"} true;
    $t11 := $42_TestResources_A($t0, $t1);

    // trace_local[var_a]($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:199:13+5
    assume {:print "$track_local(1,20,8):", $t11} $t11 == $t11;

    // $t12 := pack TestResources::B($t2, $t11) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:200:21+22
    assume {:print "$at(2,5811,5833)"} true;
    $t12 := $42_TestResources_B($t2, $t11);

    // trace_local[var_b]($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:200:13+5
    assume {:print "$track_local(1,20,9):", $t12} $t12 == $t12;

    // $t13 := pack TestResources::C($t3, $t12) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:201:21+22
    assume {:print "$at(2,5855,5877)"} true;
    $t13 := $42_TestResources_C($t3, $t12);

    // trace_local[var_c]($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:201:13+5
    assume {:print "$track_local(1,20,10):", $t13} $t13 == $t13;

    // ($t14, $t15) := unpack TestResources::C($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:202:13+50
    assume {:print "$at(2,5891,5941)"} true;
    $t14 := $val#$42_TestResources_C($t13);
    $t15 := $b#$42_TestResources_C($t13);

    // ($t16, $t17) := unpack TestResources::B($t15) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:202:27+35
    $t16 := $val#$42_TestResources_B($t15);
    $t17 := $a#$42_TestResources_B($t15);

    // ($t18, $t19) := unpack TestResources::A($t17) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:202:41+20
    $t18 := $addr#$42_TestResources_A($t17);
    $t19 := $val#$42_TestResources_A($t17);

    // trace_local[v1]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:202:58+2
    assume {:print "$track_local(1,20,5):", $t19} $t19 == $t19;

    // trace_local[aa]($t18) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:202:49+2
    assume {:print "$track_local(1,20,4):", $t18} $t18 == $t18;

    // trace_local[v2]($t16) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:202:34+2
    assume {:print "$track_local(1,20,6):", $t16} $t16 == $t16;

    // trace_local[v3]($t14) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:202:20+2
    assume {:print "$track_local(1,20,7):", $t14} $t14 == $t14;

    // trace_return[0]($t18) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:203:9+16
    assume {:print "$at(2,5959,5975)"} true;
    assume {:print "$track_return(1,20,0):", $t18} $t18 == $t18;

    // trace_return[1]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:203:9+16
    assume {:print "$track_return(1,20,1):", $t19} $t19 == $t19;

    // trace_return[2]($t16) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:203:9+16
    assume {:print "$track_return(1,20,2):", $t16} $t16 == $t16;

    // trace_return[3]($t14) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:203:9+16
    assume {:print "$track_return(1,20,3):", $t14} $t14 == $t14;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:204:5+1
    assume {:print "$at(2,5980,5981)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:206:9+16
    assume {:print "$at(2,6010,6026)"} true;
    assert {:msg "assert_failed(2,6010,6026): function does not abort under this condition"}
      !false;

    // assert Eq<address>($t18, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:207:9+22
    assume {:print "$at(2,6035,6057)"} true;
    assert {:msg "assert_failed(2,6035,6057): post-condition does not hold"}
      $IsEqual'address'($t18, $t0);

    // assert Eq<u64>($t19, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:208:9+23
    assume {:print "$at(2,6066,6089)"} true;
    assert {:msg "assert_failed(2,6066,6089): post-condition does not hold"}
      $IsEqual'u64'($t19, $t1);

    // assert Eq<u64>($t16, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:209:9+23
    assume {:print "$at(2,6098,6121)"} true;
    assert {:msg "assert_failed(2,6098,6121): post-condition does not hold"}
      $IsEqual'u64'($t16, $t2);

    // assert Eq<u64>($t14, $t3) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:210:9+23
    assume {:print "$at(2,6130,6153)"} true;
    assert {:msg "assert_failed(2,6130,6153): post-condition does not hold"}
      $IsEqual'u64'($t14, $t3);

    // return ($t18, $t19, $t16, $t14) at /home/ying/diem/language/move-prover/tests/sources/functional/resources.move:210:9+23
    $ret0 := $t18;
    $ret1 := $t19;
    $ret2 := $t16;
    $ret3 := $t14;
    return;

}
