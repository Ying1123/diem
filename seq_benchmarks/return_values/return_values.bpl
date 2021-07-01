
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


// fun TestReturnValue::one_two [baseline] at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:3:5+55
procedure {:inline 1} $42_TestReturnValue_one_two() returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;

    // bytecode translation starts here
    // $t0 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:4:10+1
    assume {:print "$at(2,80,81)"} true;
    $t0 := 1;
    assume $IsValid'u64'($t0);

    // $t1 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:4:13+1
    $t1 := 2;
    assume $IsValid'u64'($t1);

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:4:9+6
    assume {:print "$track_return(0,0,0):", $t0} $t0 == $t0;

    // trace_return[1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:4:9+6
    assume {:print "$track_return(0,0,1):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:5:5+1
    assume {:print "$at(2,90,91)"} true;
L1:

    // return ($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:5:5+1
    $ret0 := $t0;
    $ret1 := $t1;
    return;

}

// fun TestReturnValue::one_two [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:3:5+55
procedure {:timeLimit 40} $42_TestReturnValue_one_two$verify() returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:4:10+1
    assume {:print "$at(2,80,81)"} true;
    $t0 := 1;
    assume $IsValid'u64'($t0);

    // $t1 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:4:13+1
    $t1 := 2;
    assume $IsValid'u64'($t1);

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:4:9+6
    assume {:print "$track_return(0,0,0):", $t0} $t0 == $t0;

    // trace_return[1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:4:9+6
    assume {:print "$track_return(0,0,1):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:5:5+1
    assume {:print "$at(2,90,91)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:7:9+16
    assume {:print "$at(2,119,135)"} true;
    assert {:msg "assert_failed(2,119,135): function does not abort under this condition"}
      !false;

    // assert Eq<u64>($t0, 1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:8:9+22
    assume {:print "$at(2,144,166)"} true;
    assert {:msg "assert_failed(2,144,166): post-condition does not hold"}
      $IsEqual'u64'($t0, 1);

    // assert Eq<u64>($t1, 2) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:9:9+22
    assume {:print "$at(2,175,197)"} true;
    assert {:msg "assert_failed(2,175,197): post-condition does not hold"}
      $IsEqual'u64'($t1, 2);

    // return ($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:9:9+22
    $ret0 := $t0;
    $ret1 := $t1;
    return;

}

// fun TestReturnValue::one_two_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:12:5+65
procedure {:timeLimit 40} $42_TestReturnValue_one_two_incorrect$verify() returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:13:10+1
    assume {:print "$at(2,263,264)"} true;
    $t0 := 1;
    assume $IsValid'u64'($t0);

    // $t1 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:13:13+1
    $t1 := 2;
    assume $IsValid'u64'($t1);

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:13:9+6
    assume {:print "$track_return(0,1,0):", $t0} $t0 == $t0;

    // trace_return[1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:13:9+6
    assume {:print "$track_return(0,1,1):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:14:5+1
    assume {:print "$at(2,273,274)"} true;
L1:

    // return ($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:14:5+1
    $ret0 := $t0;
    $ret1 := $t1;
    return;

}

// fun TestReturnValue::one_two_wrapper [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:21:5+66
procedure {:timeLimit 40} $42_TestReturnValue_one_two_wrapper$verify() returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // ($t0, $t1) := TestReturnValue::one_two() on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:22:9+9
    assume {:print "$at(2,461,470)"} true;
    call $t0,$t1 := $42_TestReturnValue_one_two();
    if ($abort_flag) {
        assume {:print "$at(2,461,470)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(0,2):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:22:9+9
    assume {:print "$track_return(0,2,0):", $t0} $t0 == $t0;

    // trace_return[1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:22:9+9
    assume {:print "$track_return(0,2,1):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:23:5+1
    assume {:print "$at(2,475,476)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:25:9+16
    assume {:print "$at(2,512,528)"} true;
    assert {:msg "assert_failed(2,512,528): function does not abort under this condition"}
      !false;

    // assert Eq<u64>($t0, 1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:26:9+22
    assume {:print "$at(2,537,559)"} true;
    assert {:msg "assert_failed(2,537,559): post-condition does not hold"}
      $IsEqual'u64'($t0, 1);

    // assert Eq<u64>($t1, 2) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:27:9+22
    assume {:print "$at(2,568,590)"} true;
    assert {:msg "assert_failed(2,568,590): post-condition does not hold"}
      $IsEqual'u64'($t1, 2);

    // return ($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:27:9+22
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:23:5+1
    assume {:print "$at(2,475,476)"} true;
L2:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:24:5+115
    assume {:print "$at(2,481,596)"} true;
    assert {:msg "assert_failed(2,481,596): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:24:5+115
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestReturnValue::one_two_wrapper_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:30:5+76
procedure {:timeLimit 40} $42_TestReturnValue_one_two_wrapper_incorrect$verify() returns ($ret0: int, $ret1: int)
{
    // declare local variables
    var $t0: int;
    var $t1: int;
    var $t2: int;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // ($t0, $t1) := TestReturnValue::one_two() on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:31:9+9
    assume {:print "$at(2,663,672)"} true;
    call $t0,$t1 := $42_TestReturnValue_one_two();
    if ($abort_flag) {
        assume {:print "$at(2,663,672)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(0,3):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:31:9+9
    assume {:print "$track_return(0,3,0):", $t0} $t0 == $t0;

    // trace_return[1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:31:9+9
    assume {:print "$track_return(0,3,1):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:32:5+1
    assume {:print "$at(2,677,678)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:16:9+16
    assume {:print "$at(2,320,336)"} true;
    assert {:msg "assert_failed(2,320,336): function does not abort under this condition"}
      !false;

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:34:9+16
    assume {:print "$at(2,724,740)"} true;
    assert {:msg "assert_failed(2,724,740): function does not abort under this condition"}
      !false;

    // assert Eq<u64>($t0, 2) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:17:9+22
    assume {:print "$at(2,345,367)"} true;
    assert {:msg "assert_failed(2,345,367): post-condition does not hold"}
      $IsEqual'u64'($t0, 2);

    // assert Eq<u64>($t1, 1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:18:9+22
    assume {:print "$at(2,376,398)"} true;
    assert {:msg "assert_failed(2,376,398): post-condition does not hold"}
      $IsEqual'u64'($t1, 1);

    // assert Eq<u64>($t0, 2) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:35:9+22
    assume {:print "$at(2,749,771)"} true;
    assert {:msg "assert_failed(2,749,771): post-condition does not hold"}
      $IsEqual'u64'($t0, 2);

    // assert Eq<u64>($t1, 1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:36:9+22
    assume {:print "$at(2,780,802)"} true;
    assert {:msg "assert_failed(2,780,802): post-condition does not hold"}
      $IsEqual'u64'($t1, 1);

    // return ($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:36:9+22
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:32:5+1
    assume {:print "$at(2,677,678)"} true;
L2:

    // assert Or(false, false) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:33:5+125
    assume {:print "$at(2,683,808)"} true;
    assert {:msg "assert_failed(2,683,808): abort not covered by any of the `aborts_if` clauses"}
      (false || false);

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:33:5+125
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestReturnValue::true_one [baseline] at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:39:5+60
procedure {:inline 1} $42_TestReturnValue_true_one() returns ($ret0: bool, $ret1: int)
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;

    // bytecode translation starts here
    // $t0 := true at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:40:10+4
    assume {:print "$at(2,860,864)"} true;
    $t0 := true;
    assume $IsValid'bool'($t0);

    // $t1 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:40:16+1
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:40:9+9
    assume {:print "$track_return(0,4,0):", $t0} $t0 == $t0;

    // trace_return[1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:40:9+9
    assume {:print "$track_return(0,4,1):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:41:5+1
    assume {:print "$at(2,873,874)"} true;
L1:

    // return ($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:41:5+1
    $ret0 := $t0;
    $ret1 := $t1;
    return;

}

// fun TestReturnValue::true_one [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:39:5+60
procedure {:timeLimit 40} $42_TestReturnValue_true_one$verify() returns ($ret0: bool, $ret1: int)
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t0 := true at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:40:10+4
    assume {:print "$at(2,860,864)"} true;
    $t0 := true;
    assume $IsValid'bool'($t0);

    // $t1 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:40:16+1
    $t1 := 1;
    assume $IsValid'u64'($t1);

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:40:9+9
    assume {:print "$track_return(0,4,0):", $t0} $t0 == $t0;

    // trace_return[1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:40:9+9
    assume {:print "$track_return(0,4,1):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:41:5+1
    assume {:print "$at(2,873,874)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:43:9+16
    assume {:print "$at(2,903,919)"} true;
    assert {:msg "assert_failed(2,903,919): function does not abort under this condition"}
      !false;

    // assert Eq<bool>($t0, true) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:44:9+25
    assume {:print "$at(2,928,953)"} true;
    assert {:msg "assert_failed(2,928,953): post-condition does not hold"}
      $IsEqual'bool'($t0, true);

    // assert Eq<u64>($t1, 1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:45:9+22
    assume {:print "$at(2,962,984)"} true;
    assert {:msg "assert_failed(2,962,984): post-condition does not hold"}
      $IsEqual'u64'($t1, 1);

    // return ($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:45:9+22
    $ret0 := $t0;
    $ret1 := $t1;
    return;

}

// fun TestReturnValue::true_one_wrapper [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:48:5+69
procedure {:timeLimit 40} $42_TestReturnValue_true_one_wrapper$verify() returns ($ret0: bool, $ret1: int)
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // ($t0, $t1) := TestReturnValue::true_one() on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:49:9+10
    assume {:print "$at(2,1049,1059)"} true;
    call $t0,$t1 := $42_TestReturnValue_true_one();
    if ($abort_flag) {
        assume {:print "$at(2,1049,1059)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(0,5):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:49:9+10
    assume {:print "$track_return(0,5,0):", $t0} $t0 == $t0;

    // trace_return[1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:49:9+10
    assume {:print "$track_return(0,5,1):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:50:5+1
    assume {:print "$at(2,1064,1065)"} true;
L1:

    // assert Eq<bool>($t0, true) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:52:9+25
    assume {:print "$at(2,1102,1127)"} true;
    assert {:msg "assert_failed(2,1102,1127): post-condition does not hold"}
      $IsEqual'bool'($t0, true);

    // assert Eq<u64>($t1, 1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:53:9+22
    assume {:print "$at(2,1136,1158)"} true;
    assert {:msg "assert_failed(2,1136,1158): post-condition does not hold"}
      $IsEqual'u64'($t1, 1);

    // return ($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:53:9+22
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:50:5+1
    assume {:print "$at(2,1064,1065)"} true;
L2:

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:50:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun TestReturnValue::true_one_wrapper_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:56:5+79
procedure {:timeLimit 40} $42_TestReturnValue_true_one_wrapper_incorrect$verify() returns ($ret0: bool, $ret1: int)
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // ($t0, $t1) := TestReturnValue::true_one() on_abort goto L2 with $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:57:9+10
    assume {:print "$at(2,1233,1243)"} true;
    call $t0,$t1 := $42_TestReturnValue_true_one();
    if ($abort_flag) {
        assume {:print "$at(2,1233,1243)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(0,6):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:57:9+10
    assume {:print "$track_return(0,6,0):", $t0} $t0 == $t0;

    // trace_return[1]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:57:9+10
    assume {:print "$track_return(0,6,1):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:58:5+1
    assume {:print "$at(2,1248,1249)"} true;
L1:

    // assert false at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:60:9+14
    assume {:print "$at(2,1296,1310)"} true;
    assert {:msg "assert_failed(2,1296,1310): post-condition does not hold"}
      false;

    // assert Eq<bool>($t0, true) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:61:9+25
    assume {:print "$at(2,1319,1344)"} true;
    assert {:msg "assert_failed(2,1319,1344): post-condition does not hold"}
      $IsEqual'bool'($t0, true);

    // assert Eq<bool>($t0, false) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:62:9+26
    assume {:print "$at(2,1353,1379)"} true;
    assert {:msg "assert_failed(2,1353,1379): post-condition does not hold"}
      $IsEqual'bool'($t0, false);

    // assert Eq<u64>($t1, 0) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:63:9+22
    assume {:print "$at(2,1388,1410)"} true;
    assert {:msg "assert_failed(2,1388,1410): post-condition does not hold"}
      $IsEqual'u64'($t1, 0);

    // assert Eq<u64>($t1, 1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:64:9+22
    assume {:print "$at(2,1419,1441)"} true;
    assert {:msg "assert_failed(2,1419,1441): post-condition does not hold"}
      $IsEqual'u64'($t1, 1);

    // return ($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:64:9+22
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:58:5+1
    assume {:print "$at(2,1248,1249)"} true;
L2:

    // abort($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/return_values.move:58:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}
