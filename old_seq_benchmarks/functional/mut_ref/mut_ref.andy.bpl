
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
// Native Vector implementation for element type `$1_TestMutRef_T`


function {:inline} $IsEqual'vec'$1_TestMutRef_T''(v1: Vec ($1_TestMutRef_T), v2: Vec ($1_TestMutRef_T)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_TestMutRef_T''(v: Vec ($1_TestMutRef_T)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_TestMutRef_T'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T), e: $1_TestMutRef_T): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_TestMutRef_T'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T), e: $1_TestMutRef_T): int;
axiom (forall v: Vec ($1_TestMutRef_T), e: $1_TestMutRef_T:: {$IndexOfVec'$1_TestMutRef_T'(v, e)}
    (var i := $IndexOfVec'$1_TestMutRef_T'(v, e);
     if (!$ContainsVec'$1_TestMutRef_T'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_TestMutRef_T'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_TestMutRef_T'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_TestMutRef_T'(): Vec ($1_TestMutRef_T) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_TestMutRef_T'() returns (v: Vec ($1_TestMutRef_T)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_TestMutRef_T'(): Vec ($1_TestMutRef_T) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_TestMutRef_T'(m: $Mutation (Vec ($1_TestMutRef_T)), val: $1_TestMutRef_T) returns (m': $Mutation (Vec ($1_TestMutRef_T))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T), val: $1_TestMutRef_T): Vec ($1_TestMutRef_T) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_TestMutRef_T'(m: $Mutation (Vec ($1_TestMutRef_T))) returns (e: $1_TestMutRef_T, m': $Mutation (Vec ($1_TestMutRef_T))) {
    var v: Vec ($1_TestMutRef_T);
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

procedure {:inline 1} $1_Vector_append'$1_TestMutRef_T'(m: $Mutation (Vec ($1_TestMutRef_T)), other: Vec ($1_TestMutRef_T)) returns (m': $Mutation (Vec ($1_TestMutRef_T))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_TestMutRef_T'(m: $Mutation (Vec ($1_TestMutRef_T))) returns (m': $Mutation (Vec ($1_TestMutRef_T))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T), i: int) returns (dst: $1_TestMutRef_T) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T), i: int): $1_TestMutRef_T {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_TestMutRef_T'(m: $Mutation (Vec ($1_TestMutRef_T)), index: int)
returns (dst: $Mutation ($1_TestMutRef_T), m': $Mutation (Vec ($1_TestMutRef_T)))
{
    var v: Vec ($1_TestMutRef_T);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T), i: int): $1_TestMutRef_T {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_TestMutRef_T'(m: $Mutation (Vec ($1_TestMutRef_T)), i: int, j: int) returns (m': $Mutation (Vec ($1_TestMutRef_T)))
{
    var v: Vec ($1_TestMutRef_T);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T), i: int, j: int): Vec ($1_TestMutRef_T) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_TestMutRef_T'(m: $Mutation (Vec ($1_TestMutRef_T)), i: int) returns (e: $1_TestMutRef_T, m': $Mutation (Vec ($1_TestMutRef_T)))
{
    var v: Vec ($1_TestMutRef_T);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_TestMutRef_T'(m: $Mutation (Vec ($1_TestMutRef_T)), i: int) returns (e: $1_TestMutRef_T, m': $Mutation (Vec ($1_TestMutRef_T)))
{
    var len: int;
    var v: Vec ($1_TestMutRef_T);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T), e: $1_TestMutRef_T) returns (res: bool)  {
    res := $ContainsVec'$1_TestMutRef_T'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_TestMutRef_T'(v: Vec ($1_TestMutRef_T), e: $1_TestMutRef_T) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_TestMutRef_T'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `u64`


function {:inline} $IsEqual'vec'u64''(v1: Vec (int), v2: Vec (int)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'u64''(v: Vec (int)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'u64'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'u64'(v: Vec (int), e: int): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'u64'(ReadVec(v, i), e))
}

function $IndexOfVec'u64'(v: Vec (int), e: int): int;
axiom (forall v: Vec (int), e: int:: {$IndexOfVec'u64'(v, e)}
    (var i := $IndexOfVec'u64'(v, e);
     if (!$ContainsVec'u64'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'u64'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'u64'(ReadVec(v, j), e))));


function {:inline} $RangeVec'u64'(v: Vec (int)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'u64'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'u64'() returns (v: Vec (int)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'u64'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'u64'(v: Vec (int)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'u64'(m: $Mutation (Vec (int)), val: int) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'u64'(v: Vec (int), val: int): Vec (int) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'u64'(m: $Mutation (Vec (int))) returns (e: int, m': $Mutation (Vec (int))) {
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

procedure {:inline 1} $1_Vector_append'u64'(m: $Mutation (Vec (int)), other: Vec (int)) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'u64'(m: $Mutation (Vec (int))) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'u64'(v: Vec (int)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'u64'(v: Vec (int)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'u64'(v: Vec (int), i: int) returns (dst: int) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'u64'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'u64'(m: $Mutation (Vec (int)), index: int)
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

function {:inline} $1_Vector_$borrow_mut'u64'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'u64'(v: Vec (int)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'u64'(m: $Mutation (Vec (int)), i: int, j: int) returns (m': $Mutation (Vec (int)))
{
    var v: Vec (int);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'u64'(v: Vec (int), i: int, j: int): Vec (int) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'u64'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
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

procedure {:inline 1} $1_Vector_swap_remove'u64'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
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

procedure {:inline 1} $1_Vector_contains'u64'(v: Vec (int), e: int) returns (res: bool)  {
    res := $ContainsVec'u64'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'u64'(v: Vec (int), e: int) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'u64'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
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


// struct TestMutRef::N at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:6:5+44
type {:datatype} $1_TestMutRef_N;
function {:constructor} $1_TestMutRef_N($value: int, $t: $1_TestMutRef_T): $1_TestMutRef_N;
function {:inline} $Update'$1_TestMutRef_N'_value(s: $1_TestMutRef_N, x: int): $1_TestMutRef_N {
    $1_TestMutRef_N(x, $t#$1_TestMutRef_N(s))
}
function {:inline} $Update'$1_TestMutRef_N'_t(s: $1_TestMutRef_N, x: $1_TestMutRef_T): $1_TestMutRef_N {
    $1_TestMutRef_N($value#$1_TestMutRef_N(s), x)
}
function $IsValid'$1_TestMutRef_N'(s: $1_TestMutRef_N): bool {
    $IsValid'u64'($value#$1_TestMutRef_N(s))
      && $IsValid'$1_TestMutRef_T'($t#$1_TestMutRef_N(s))
}
function {:inline} $IsEqual'$1_TestMutRef_N'(s1: $1_TestMutRef_N, s2: $1_TestMutRef_N): bool {
    s1 == s2
}

// struct TestMutRef::R at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:5:5+38
type {:datatype} $1_TestMutRef_R;
function {:constructor} $1_TestMutRef_R($value: int): $1_TestMutRef_R;
function {:inline} $Update'$1_TestMutRef_R'_value(s: $1_TestMutRef_R, x: int): $1_TestMutRef_R {
    $1_TestMutRef_R(x)
}
function $IsValid'$1_TestMutRef_R'(s: $1_TestMutRef_R): bool {
    $IsValid'u64'($value#$1_TestMutRef_R(s))
}
function {:inline} $IsEqual'$1_TestMutRef_R'(s1: $1_TestMutRef_R, s2: $1_TestMutRef_R): bool {
    s1 == s2
}

// struct TestMutRef::T at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:4:5+38
type {:datatype} $1_TestMutRef_T;
function {:constructor} $1_TestMutRef_T($value: int): $1_TestMutRef_T;
function {:inline} $Update'$1_TestMutRef_T'_value(s: $1_TestMutRef_T, x: int): $1_TestMutRef_T {
    $1_TestMutRef_T(x)
}
function $IsValid'$1_TestMutRef_T'(s: $1_TestMutRef_T): bool {
    $IsValid'u64'($value#$1_TestMutRef_T(s))
}
function {:inline} $IsEqual'$1_TestMutRef_T'(s1: $1_TestMutRef_T, s2: $1_TestMutRef_T): bool {
    s1 == s2
}

// struct TestMutRef::V at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:65:5+58
type {:datatype} $1_TestMutRef_V;
function {:constructor} $1_TestMutRef_V($is: Vec (int), $ts: Vec ($1_TestMutRef_T)): $1_TestMutRef_V;
function {:inline} $Update'$1_TestMutRef_V'_is(s: $1_TestMutRef_V, x: Vec (int)): $1_TestMutRef_V {
    $1_TestMutRef_V(x, $ts#$1_TestMutRef_V(s))
}
function {:inline} $Update'$1_TestMutRef_V'_ts(s: $1_TestMutRef_V, x: Vec ($1_TestMutRef_T)): $1_TestMutRef_V {
    $1_TestMutRef_V($is#$1_TestMutRef_V(s), x)
}
function $IsValid'$1_TestMutRef_V'(s: $1_TestMutRef_V): bool {
    $IsValid'vec'u64''($is#$1_TestMutRef_V(s))
      && $IsValid'vec'$1_TestMutRef_T''($ts#$1_TestMutRef_V(s))
}
function {:inline} $IsEqual'$1_TestMutRef_V'(s1: $1_TestMutRef_V, s2: $1_TestMutRef_V): bool {
    s1 == s2
}

// fun TestMutRef::call_identity [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:15:5+114
procedure {:timeLimit 40} $1_TestMutRef_call_identity$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: $Mutation (int);
    var $t1: int;
    var $t2: int;
    var $t3: $Mutation (int);
    var $t4: $Mutation (int);
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $temp_0'u64': int;
    assume IsEmptyVec(p#$Mutation($t0));
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t4));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // $t2 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:16:17+4
    assume {:print "$at(2,347,351)"} true;
    $t2 := 1;
    assume $IsValid'u64'($t2);

    // $t1 := $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:16:13+1
    $t1 := $t2;

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:16:13+1
    assume {:print "$track_local(1,0,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:17:26+6
    assume {:print "$at(2,378,384)"} true;
    $t3 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t4 := TestMutRef::identity($t3) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:17:17+16
    call $t4,$t3 := $1_TestMutRef_identity($t3);
    if ($abort_flag) {
        assume {:print "$at(2,369,385)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,0):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[r]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:17:13+1
    $temp_0'u64' := $Dereference($t4);
    assume {:print "$track_local(1,0,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t6 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:18:14+1
    assume {:print "$at(2,400,401)"} true;
    $t6 := 2;
    assume $IsValid'u64'($t6);

    // write_ref($t4, $t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:18:9+6
    $t4 := $UpdateMutation($t4, $t6);

    // write_back[Reference($t3)@]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:18:9+6
    $t3 := $UpdateMutation($t3, $Dereference($t4));

    // write_back[LocalRoot($t1)@]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:18:9+6
    $t1 := $Dereference($t3);

    // $t7 := copy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:19:9+1
    assume {:print "$at(2,411,412)"} true;
    $t7 := $t1;

    // trace_return[0]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:19:9+1
    assume {:print "$track_return(1,0,0):", $t7} $t7 == $t7;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:20:5+1
    assume {:print "$at(2,417,418)"} true;
L1:

    // assert Eq<u64>($t7, 2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:22:9+20
    assume {:print "$at(2,452,472)"} true;
    assert {:msg "assert_failed(2,452,472): post-condition does not hold"}
      $IsEqual'u64'($t7, 2);

    // return $t7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:22:9+20
    $ret0 := $t7;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:20:5+1
    assume {:print "$at(2,417,418)"} true;
L2:

    // abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:20:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestMutRef::call_return_ref_different_path [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:51:5+179
procedure {:timeLimit 40} $1_TestMutRef_call_return_ref_different_path$verify(_$t0: bool) returns ($ret0: $1_TestMutRef_N)
{
    // declare local variables
    var $t1: $Mutation (int);
    var $t2: $1_TestMutRef_N;
    var $t3: int;
    var $t4: int;
    var $t5: $1_TestMutRef_T;
    var $t6: $Mutation ($1_TestMutRef_N);
    var $t7: $Mutation (int);
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: bool;
    var $t12: $1_TestMutRef_N;
    var $t0: bool;
    var $temp_0'$1_TestMutRef_N': $1_TestMutRef_N;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t6));
    assume IsEmptyVec(p#$Mutation($t7));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:59:24+6
    assume {:print "$at(2,1634,1640)"} true;
    assume $IsValid'bool'($t0);

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:51:5+1
    assume {:print "$at(2,1328,1329)"} true;
    assume {:print "$track_local(1,1,0):", $t0} $t0 == $t0;

    // $t3 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:52:26+1
    assume {:print "$at(2,1402,1403)"} true;
    $t3 := 1;
    assume $IsValid'u64'($t3);

    // $t4 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:52:41+1
    $t4 := 2;
    assume $IsValid'u64'($t4);

    // $t5 := pack TestMutRef::T($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:52:32+11
    $t5 := $1_TestMutRef_T($t4);

    // assert Gt(select TestMutRef::T.value($t5), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      ($value#$1_TestMutRef_T($t5) > 0);

    // $t2 := pack TestMutRef::N($t3, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:52:17+27
    assume {:print "$at(2,1393,1420)"} true;
    $t2 := $1_TestMutRef_N($t3, $t5);

    // trace_local[x]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:52:13+1
    assume {:print "$track_local(1,1,2):", $t2} $t2 == $t2;

    // $t6 := borrow_local($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:53:46+6
    assume {:print "$at(2,1467,1473)"} true;
    $t6 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t7 := TestMutRef::return_ref_different_path($t0, $t6) on_abort goto L6 with $t8 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:53:17+36
    call $t7,$t6 := $1_TestMutRef_return_ref_different_path($t0, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,1438,1474)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(1,1):", $t8} $t8 == $t8;
        goto L6;
    }

    // trace_local[r]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:53:13+1
    $temp_0'u64' := $Dereference($t7);
    assume {:print "$track_local(1,1,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t9 := 5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:14+1
    assume {:print "$at(2,1489,1490)"} true;
    $t9 := 5;
    assume $IsValid'u64'($t9);

    // write_ref($t7, $t9) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
    $t7 := $UpdateMutation($t7, $t9);

    // $t10 := is_parent[Reference($t6).value]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
    $t10 := $IsParentMutation($t6, 0, $t7);

    // if ($t10) goto L1 else goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
    if ($t10) { goto L1; } else { goto L2; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
L1:

    // write_back[Reference($t6).value]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
    $t6 := $UpdateMutation($t6, $Update'$1_TestMutRef_N'_value($Dereference($t6), $Dereference($t7)));

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
L2:

    // $t11 := is_parent[Reference($t6).t/.value]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
    $t11 := $IsParentMutationHyper($t6, MakeVec2(1, 0), $t7);

    // if ($t11) goto L3 else goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
    if ($t11) { goto L3; } else { goto L7; }

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
L3:

    // write_back[Reference($t6).t/.value]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
    $t6 := $UpdateMutation($t6, (var $$sel0 := $t#$1_TestMutRef_N($Dereference($t6)); $Update'$1_TestMutRef_N'_t($Dereference($t6), $Update'$1_TestMutRef_T'_value($$sel0, $Dereference($t7)))));

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
L4:

    // assert Gt(select TestMutRef::T.value(select TestMutRef::N.t($t6)), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      ($value#$1_TestMutRef_T($t#$1_TestMutRef_N($Dereference($t6))) > 0);

    // write_back[LocalRoot($t2)@]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:54:9+6
    assume {:print "$at(2,1484,1490)"} true;
    $t2 := $Dereference($t6);

    // $t12 := move($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:55:9+1
    assume {:print "$at(2,1500,1501)"} true;
    $t12 := $t2;

    // trace_return[0]($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:55:9+1
    assume {:print "$track_return(1,1,0):", $t12} $t12 == $t12;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:56:5+1
    assume {:print "$at(2,1506,1507)"} true;
L5:

    // assert Implies($t0, Eq<TestMutRef::N>($t12, pack TestMutRef::N(5, pack TestMutRef::T(2)))) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:58:9+52
    assume {:print "$at(2,1558,1610)"} true;
    assert {:msg "assert_failed(2,1558,1610): post-condition does not hold"}
      ($t0 ==> $IsEqual'$1_TestMutRef_N'($t12, $1_TestMutRef_N(5, $1_TestMutRef_T(2))));

    // assert Implies(Not($t0), Eq<TestMutRef::N>($t12, pack TestMutRef::N(1, pack TestMutRef::T(5)))) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:59:9+53
    assume {:print "$at(2,1619,1672)"} true;
    assert {:msg "assert_failed(2,1619,1672): post-condition does not hold"}
      (!$t0 ==> $IsEqual'$1_TestMutRef_N'($t12, $1_TestMutRef_N(1, $1_TestMutRef_T(5))));

    // return $t12 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:59:9+53
    $ret0 := $t12;
    return;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:56:5+1
    assume {:print "$at(2,1506,1507)"} true;
L6:

    // abort($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:56:5+1
    $abort_code := $t8;
    $abort_flag := true;
    return;

    // label L7 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L7:

    // destroy($t7) at <internal>:1:1+10

    // goto L4 at <internal>:1:1+10
    goto L4;

}

// fun TestMutRef::call_return_ref_different_path_vec [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:73:5+315
procedure {:timeLimit 40} $1_TestMutRef_call_return_ref_different_path_vec$verify(_$t0: bool) returns ($ret0: $1_TestMutRef_V)
{
    // declare local variables
    var $t1: Vec (int);
    var $t2: $Mutation (int);
    var $t3: Vec ($1_TestMutRef_T);
    var $t4: $1_TestMutRef_V;
    var $t5: int;
    var $t6: Vec ($1_TestMutRef_T);
    var $t7: $Mutation (Vec (int));
    var $t8: int;
    var $t9: $Mutation (Vec (int));
    var $t10: int;
    var $t11: Vec (int);
    var $t12: $Mutation ($1_TestMutRef_V);
    var $t13: $Mutation (int);
    var $t14: int;
    var $t15: $1_TestMutRef_V;
    var $t0: bool;
    var $temp_0'$1_TestMutRef_V': $1_TestMutRef_V;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'$1_TestMutRef_T'': Vec ($1_TestMutRef_T);
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t12));
    assume IsEmptyVec(p#$Mutation($t13));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:85:24+6
    assume {:print "$at(2,2521,2527)"} true;
    assume $IsValid'bool'($t0);

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:73:5+1
    assume {:print "$at(2,2056,2057)"} true;
    assume {:print "$track_local(1,2,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<u64>() on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:74:18+15
    assume {:print "$at(2,2126,2141)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,2126,2141)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,2):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[is]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:74:13+2
    assume {:print "$track_local(1,2,1):", $t1} $t1 == $t1;

    // $t6 := Vector::empty<TestMutRef::T>() on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:75:18+15
    assume {:print "$at(2,2160,2175)"} true;
    call $t6 := $1_Vector_empty'$1_TestMutRef_T'();
    if ($abort_flag) {
        assume {:print "$at(2,2160,2175)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,2):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[ts]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:75:13+2
    assume {:print "$track_local(1,2,3):", $t6} $t6 == $t6;

    // $t7 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:76:27+7
    assume {:print "$at(2,2203,2210)"} true;
    $t7 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t8 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:76:36+1
    $t8 := 1;
    assume $IsValid'u64'($t8);

    // Vector::push_back<u64>($t7, $t8) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:76:9+29
    call $t7 := $1_Vector_push_back'u64'($t7, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,2185,2214)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,2):", $t5} $t5 == $t5;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:76:9+29
    $t1 := $Dereference($t7);

    // $t9 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:77:27+7
    assume {:print "$at(2,2242,2249)"} true;
    $t9 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t10 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:77:36+1
    $t10 := 2;
    assume $IsValid'u64'($t10);

    // Vector::push_back<u64>($t9, $t10) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:77:9+29
    call $t9 := $1_Vector_push_back'u64'($t9, $t10);
    if ($abort_flag) {
        assume {:print "$at(2,2224,2253)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,2):", $t5} $t5 == $t5;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:77:9+29
    $t1 := $Dereference($t9);

    // $t11 := move($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:78:19+2
    assume {:print "$at(2,2273,2275)"} true;
    $t11 := $t1;

    // $t4 := pack TestMutRef::V($t11, $t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:78:17+9
    $t4 := $1_TestMutRef_V($t11, $t6);

    // trace_local[x]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:78:13+1
    assume {:print "$track_local(1,2,4):", $t4} $t4 == $t4;

    // $t12 := borrow_local($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:79:50+6
    assume {:print "$at(2,2331,2337)"} true;
    $t12 := $Mutation($Local(4), EmptyVec(), $t4);

    // $t13 := TestMutRef::return_ref_different_path_vec($t0, $t12) on_abort goto L2 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:79:17+40
    call $t13,$t12 := $1_TestMutRef_return_ref_different_path_vec($t0, $t12);
    if ($abort_flag) {
        assume {:print "$at(2,2298,2338)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,2):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[r]($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:79:13+1
    $temp_0'u64' := $Dereference($t13);
    assume {:print "$track_local(1,2,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t14 := 5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:80:14+1
    assume {:print "$at(2,2353,2354)"} true;
    $t14 := 5;
    assume $IsValid'u64'($t14);

    // write_ref($t13, $t14) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:80:9+6
    $t13 := $UpdateMutation($t13, $t14);

    // write_back[Reference($t12).is/[]]($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:80:9+6
    $t12 := $UpdateMutation($t12, (var $$sel0 := $is#$1_TestMutRef_V($Dereference($t12)); $Update'$1_TestMutRef_V'_is($Dereference($t12), UpdateVec($$sel0, ReadVec(p#$Mutation($t13), LenVec(p#$Mutation($t12)) + 1), $Dereference($t13)))));

    // assert forall $elem: select TestMutRef::V.ts($t12): Gt(select TestMutRef::T.value($elem), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      (var $range_0 := $ts#$1_TestMutRef_V($Dereference($t12)); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    (($value#$1_TestMutRef_T($elem) > 0)))));

    // write_back[LocalRoot($t4)@]($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:80:9+6
    assume {:print "$at(2,2348,2354)"} true;
    $t4 := $Dereference($t12);

    // $t15 := move($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:81:9+1
    assume {:print "$at(2,2364,2365)"} true;
    $t15 := $t4;

    // trace_return[0]($t15) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:81:9+1
    assume {:print "$track_return(1,2,0):", $t15} $t15 == $t15;

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:82:5+1
    assume {:print "$at(2,2370,2371)"} true;
L1:

    // assert Implies($t0, Eq<TestMutRef::V>($t15, pack TestMutRef::V(ConcatVec<u64>(SingleVec<u64>(1), SingleVec<u64>(5)), EmptyVec<TestMutRef::T>()))) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:84:9+71
    assume {:print "$at(2,2426,2497)"} true;
    assert {:msg "assert_failed(2,2426,2497): post-condition does not hold"}
      ($t0 ==> $IsEqual'$1_TestMutRef_V'($t15, $1_TestMutRef_V(ConcatVec(MakeVec1(1), MakeVec1(5)), $EmptyVec'$1_TestMutRef_T'())));

    // assert Implies(Not($t0), Eq<TestMutRef::V>($t15, pack TestMutRef::V(ConcatVec<u64>(SingleVec<u64>(5), SingleVec<u64>(2)), EmptyVec<TestMutRef::T>()))) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:85:9+72
    assume {:print "$at(2,2506,2578)"} true;
    assert {:msg "assert_failed(2,2506,2578): post-condition does not hold"}
      (!$t0 ==> $IsEqual'$1_TestMutRef_V'($t15, $1_TestMutRef_V(ConcatVec(MakeVec1(5), MakeVec1(2)), $EmptyVec'$1_TestMutRef_T'())));

    // return $t15 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:85:9+72
    $ret0 := $t15;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:82:5+1
    assume {:print "$at(2,2370,2371)"} true;
L2:

    // abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:82:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TestMutRef::call_return_ref_different_path_vec2 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:94:5+415
procedure {:timeLimit 40} $1_TestMutRef_call_return_ref_different_path_vec2$verify(_$t0: bool) returns ($ret0: $1_TestMutRef_V)
{
    // declare local variables
    var $t1: Vec (int);
    var $t2: $Mutation (int);
    var $t3: Vec ($1_TestMutRef_T);
    var $t4: $1_TestMutRef_V;
    var $t5: int;
    var $t6: $Mutation (Vec (int));
    var $t7: int;
    var $t8: $Mutation (Vec (int));
    var $t9: int;
    var $t10: $Mutation (Vec ($1_TestMutRef_T));
    var $t11: int;
    var $t12: $1_TestMutRef_T;
    var $t13: $Mutation (Vec ($1_TestMutRef_T));
    var $t14: int;
    var $t15: $1_TestMutRef_T;
    var $t16: Vec (int);
    var $t17: Vec ($1_TestMutRef_T);
    var $t18: $Mutation ($1_TestMutRef_V);
    var $t19: $Mutation (int);
    var $t20: int;
    var $t21: bool;
    var $t22: bool;
    var $t23: $1_TestMutRef_V;
    var $t0: bool;
    var $temp_0'$1_TestMutRef_V': $1_TestMutRef_V;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'$1_TestMutRef_T'': Vec ($1_TestMutRef_T);
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t6));
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t13));
    assume IsEmptyVec(p#$Mutation($t18));
    assume IsEmptyVec(p#$Mutation($t19));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:108:24+6
    assume {:print "$at(2,3439,3445)"} true;
    assume $IsValid'bool'($t0);

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:94:5+1
    assume {:print "$at(2,2836,2837)"} true;
    assume {:print "$track_local(1,3,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<u64>() on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:95:18+15
    assume {:print "$at(2,2907,2922)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,2907,2922)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,3):", $t5} $t5 == $t5;
        goto L6;
    }

    // trace_local[is]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:95:13+2
    assume {:print "$track_local(1,3,1):", $t1} $t1 == $t1;

    // $t3 := Vector::empty<TestMutRef::T>() on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:96:18+15
    assume {:print "$at(2,2941,2956)"} true;
    call $t3 := $1_Vector_empty'$1_TestMutRef_T'();
    if ($abort_flag) {
        assume {:print "$at(2,2941,2956)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,3):", $t5} $t5 == $t5;
        goto L6;
    }

    // trace_local[ts]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:96:13+2
    assume {:print "$track_local(1,3,3):", $t3} $t3 == $t3;

    // $t6 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:97:27+7
    assume {:print "$at(2,2984,2991)"} true;
    $t6 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t7 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:97:36+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // Vector::push_back<u64>($t6, $t7) on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:97:9+29
    call $t6 := $1_Vector_push_back'u64'($t6, $t7);
    if ($abort_flag) {
        assume {:print "$at(2,2966,2995)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,3):", $t5} $t5 == $t5;
        goto L6;
    }

    // write_back[LocalRoot($t1)@]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:97:9+29
    $t1 := $Dereference($t6);

    // $t8 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:98:27+7
    assume {:print "$at(2,3023,3030)"} true;
    $t8 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t9 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:98:36+1
    $t9 := 2;
    assume $IsValid'u64'($t9);

    // Vector::push_back<u64>($t8, $t9) on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:98:9+29
    call $t8 := $1_Vector_push_back'u64'($t8, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,3005,3034)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,3):", $t5} $t5 == $t5;
        goto L6;
    }

    // write_back[LocalRoot($t1)@]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:98:9+29
    $t1 := $Dereference($t8);

    // $t10 := borrow_local($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:99:27+7
    assume {:print "$at(2,3062,3069)"} true;
    $t10 := $Mutation($Local(3), EmptyVec(), $t3);

    // $t11 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:99:45+1
    $t11 := 3;
    assume $IsValid'u64'($t11);

    // $t12 := pack TestMutRef::T($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:99:36+11
    $t12 := $1_TestMutRef_T($t11);

    // assert Gt(select TestMutRef::T.value($t12), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      ($value#$1_TestMutRef_T($t12) > 0);

    // Vector::push_back<TestMutRef::T>($t10, $t12) on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:99:9+39
    assume {:print "$at(2,3044,3083)"} true;
    call $t10 := $1_Vector_push_back'$1_TestMutRef_T'($t10, $t12);
    if ($abort_flag) {
        assume {:print "$at(2,3044,3083)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,3):", $t5} $t5 == $t5;
        goto L6;
    }

    // assert forall $elem: $t10: Gt(select TestMutRef::T.value($elem), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      (var $range_0 := $Dereference($t10); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    (($value#$1_TestMutRef_T($elem) > 0)))));

    // write_back[LocalRoot($t3)@]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:99:9+39
    assume {:print "$at(2,3044,3083)"} true;
    $t3 := $Dereference($t10);

    // $t13 := borrow_local($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:100:27+7
    assume {:print "$at(2,3111,3118)"} true;
    $t13 := $Mutation($Local(3), EmptyVec(), $t3);

    // $t14 := 4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:100:45+1
    $t14 := 4;
    assume $IsValid'u64'($t14);

    // $t15 := pack TestMutRef::T($t14) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:100:36+11
    $t15 := $1_TestMutRef_T($t14);

    // assert Gt(select TestMutRef::T.value($t15), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      ($value#$1_TestMutRef_T($t15) > 0);

    // Vector::push_back<TestMutRef::T>($t13, $t15) on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:100:9+39
    assume {:print "$at(2,3093,3132)"} true;
    call $t13 := $1_Vector_push_back'$1_TestMutRef_T'($t13, $t15);
    if ($abort_flag) {
        assume {:print "$at(2,3093,3132)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,3):", $t5} $t5 == $t5;
        goto L6;
    }

    // assert forall $elem: $t13: Gt(select TestMutRef::T.value($elem), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      (var $range_0 := $Dereference($t13); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    (($value#$1_TestMutRef_T($elem) > 0)))));

    // write_back[LocalRoot($t3)@]($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:100:9+39
    assume {:print "$at(2,3093,3132)"} true;
    $t3 := $Dereference($t13);

    // $t16 := move($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:101:19+2
    assume {:print "$at(2,3152,3154)"} true;
    $t16 := $t1;

    // $t17 := move($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:101:23+2
    $t17 := $t3;

    // $t4 := pack TestMutRef::V($t16, $t17) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:101:17+9
    $t4 := $1_TestMutRef_V($t16, $t17);

    // trace_local[x]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:101:13+1
    assume {:print "$track_local(1,3,4):", $t4} $t4 == $t4;

    // $t18 := borrow_local($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:102:51+6
    assume {:print "$at(2,3211,3217)"} true;
    $t18 := $Mutation($Local(4), EmptyVec(), $t4);

    // $t19 := TestMutRef::return_ref_different_path_vec2($t0, $t18) on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:102:17+41
    call $t19,$t18 := $1_TestMutRef_return_ref_different_path_vec2($t0, $t18);
    if ($abort_flag) {
        assume {:print "$at(2,3177,3218)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,3):", $t5} $t5 == $t5;
        goto L6;
    }

    // trace_local[r]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:102:13+1
    $temp_0'u64' := $Dereference($t19);
    assume {:print "$track_local(1,3,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t20 := 5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:14+1
    assume {:print "$at(2,3233,3234)"} true;
    $t20 := 5;
    assume $IsValid'u64'($t20);

    // write_ref($t19, $t20) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
    $t19 := $UpdateMutation($t19, $t20);

    // $t21 := is_parent[Reference($t18).is/[]]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
    $t21 := $IsParentMutationHyper($t18, MakeVec2(0, -1), $t19);

    // if ($t21) goto L1 else goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
    if ($t21) { goto L1; } else { goto L2; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
L1:

    // write_back[Reference($t18).is/[]]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
    $t18 := $UpdateMutation($t18, (var $$sel0 := $is#$1_TestMutRef_V($Dereference($t18)); $Update'$1_TestMutRef_V'_is($Dereference($t18), UpdateVec($$sel0, ReadVec(p#$Mutation($t19), LenVec(p#$Mutation($t18)) + 1), $Dereference($t19)))));

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
L2:

    // $t22 := is_parent[Reference($t18).ts/[]/.value]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
    $t22 := $IsParentMutationHyper($t18, MakeVec3(1, -1, 0), $t19);

    // if ($t22) goto L3 else goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
    if ($t22) { goto L3; } else { goto L7; }

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
L3:

    // write_back[Reference($t18).ts/[]/.value]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
    $t18 := $UpdateMutation($t18, (var $$sel0 := $ts#$1_TestMutRef_V($Dereference($t18)); $Update'$1_TestMutRef_V'_ts($Dereference($t18), (var $$sel1 := ReadVec($$sel0, ReadVec(p#$Mutation($t19), LenVec(p#$Mutation($t18)) + 1)); UpdateVec($$sel0, ReadVec(p#$Mutation($t19), LenVec(p#$Mutation($t18)) + 1), $Update'$1_TestMutRef_T'_value($$sel1, $Dereference($t19)))))));

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
L4:

    // assert forall $elem: select TestMutRef::V.ts($t18): Gt(select TestMutRef::T.value($elem), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      (var $range_0 := $ts#$1_TestMutRef_V($Dereference($t18)); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    (($value#$1_TestMutRef_T($elem) > 0)))));

    // write_back[LocalRoot($t4)@]($t18) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:103:9+6
    assume {:print "$at(2,3228,3234)"} true;
    $t4 := $Dereference($t18);

    // $t23 := move($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:104:9+1
    assume {:print "$at(2,3244,3245)"} true;
    $t23 := $t4;

    // trace_return[0]($t23) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:104:9+1
    assume {:print "$track_return(1,3,0):", $t23} $t23 == $t23;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:105:5+1
    assume {:print "$at(2,3250,3251)"} true;
L5:

    // assert Implies($t0, Eq<TestMutRef::V>($t23, pack TestMutRef::V(ConcatVec<u64>(SingleVec<u64>(1), SingleVec<u64>(5)), ConcatVec<TestMutRef::T>(SingleVec<TestMutRef::T>(pack TestMutRef::T(3)), SingleVec<TestMutRef::T>(pack TestMutRef::T(4)))))) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:107:9+108
    assume {:print "$at(2,3307,3415)"} true;
    assert {:msg "assert_failed(2,3307,3415): post-condition does not hold"}
      ($t0 ==> $IsEqual'$1_TestMutRef_V'($t23, $1_TestMutRef_V(ConcatVec(MakeVec1(1), MakeVec1(5)), ConcatVec(MakeVec1($1_TestMutRef_T(3)), MakeVec1($1_TestMutRef_T(4))))));

    // assert Implies(Not($t0), Eq<TestMutRef::V>($t23, pack TestMutRef::V(ConcatVec<u64>(SingleVec<u64>(1), SingleVec<u64>(2)), ConcatVec<TestMutRef::T>(SingleVec<TestMutRef::T>(pack TestMutRef::T(5)), SingleVec<TestMutRef::T>(pack TestMutRef::T(4)))))) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:108:9+109
    assume {:print "$at(2,3424,3533)"} true;
    assert {:msg "assert_failed(2,3424,3533): post-condition does not hold"}
      (!$t0 ==> $IsEqual'$1_TestMutRef_V'($t23, $1_TestMutRef_V(ConcatVec(MakeVec1(1), MakeVec1(2)), ConcatVec(MakeVec1($1_TestMutRef_T(5)), MakeVec1($1_TestMutRef_T(4))))));

    // return $t23 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:108:9+109
    $ret0 := $t23;
    return;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:105:5+1
    assume {:print "$at(2,3250,3251)"} true;
L6:

    // abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:105:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

    // label L7 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L7:

    // destroy($t19) at <internal>:1:1+10

    // goto L4 at <internal>:1:1+10
    goto L4;

}

// fun TestMutRef::call_return_ref_different_path_vec2_incorrect [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:113:5+425
procedure {:timeLimit 40} $1_TestMutRef_call_return_ref_different_path_vec2_incorrect$verify(_$t0: bool) returns ($ret0: $1_TestMutRef_V)
{
    // declare local variables
    var $t1: Vec (int);
    var $t2: $Mutation (int);
    var $t3: Vec ($1_TestMutRef_T);
    var $t4: $1_TestMutRef_V;
    var $t5: int;
    var $t6: $Mutation (Vec (int));
    var $t7: int;
    var $t8: $Mutation (Vec (int));
    var $t9: int;
    var $t10: $Mutation (Vec ($1_TestMutRef_T));
    var $t11: int;
    var $t12: $1_TestMutRef_T;
    var $t13: $Mutation (Vec ($1_TestMutRef_T));
    var $t14: int;
    var $t15: $1_TestMutRef_T;
    var $t16: Vec (int);
    var $t17: Vec ($1_TestMutRef_T);
    var $t18: $Mutation ($1_TestMutRef_V);
    var $t19: $Mutation (int);
    var $t20: int;
    var $t21: bool;
    var $t22: bool;
    var $t23: $1_TestMutRef_V;
    var $t0: bool;
    var $temp_0'$1_TestMutRef_V': $1_TestMutRef_V;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'$1_TestMutRef_T'': Vec ($1_TestMutRef_T);
    var $temp_0'vec'u64'': Vec (int);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t6));
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t13));
    assume IsEmptyVec(p#$Mutation($t18));
    assume IsEmptyVec(p#$Mutation($t19));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:127:24+6
    assume {:print "$at(2,4220,4226)"} true;
    assume $IsValid'bool'($t0);

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:113:5+1
    assume {:print "$at(2,3597,3598)"} true;
    assume {:print "$track_local(1,4,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<u64>() on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:114:18+15
    assume {:print "$at(2,3678,3693)"} true;
    call $t1 := $1_Vector_empty'u64'();
    if ($abort_flag) {
        assume {:print "$at(2,3678,3693)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,4):", $t5} $t5 == $t5;
        goto L6;
    }

    // trace_local[is]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:114:13+2
    assume {:print "$track_local(1,4,1):", $t1} $t1 == $t1;

    // $t3 := Vector::empty<TestMutRef::T>() on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:115:18+15
    assume {:print "$at(2,3712,3727)"} true;
    call $t3 := $1_Vector_empty'$1_TestMutRef_T'();
    if ($abort_flag) {
        assume {:print "$at(2,3712,3727)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,4):", $t5} $t5 == $t5;
        goto L6;
    }

    // trace_local[ts]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:115:13+2
    assume {:print "$track_local(1,4,3):", $t3} $t3 == $t3;

    // $t6 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:116:27+7
    assume {:print "$at(2,3755,3762)"} true;
    $t6 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t7 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:116:36+1
    $t7 := 1;
    assume $IsValid'u64'($t7);

    // Vector::push_back<u64>($t6, $t7) on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:116:9+29
    call $t6 := $1_Vector_push_back'u64'($t6, $t7);
    if ($abort_flag) {
        assume {:print "$at(2,3737,3766)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,4):", $t5} $t5 == $t5;
        goto L6;
    }

    // write_back[LocalRoot($t1)@]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:116:9+29
    $t1 := $Dereference($t6);

    // $t8 := borrow_local($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:117:27+7
    assume {:print "$at(2,3794,3801)"} true;
    $t8 := $Mutation($Local(1), EmptyVec(), $t1);

    // $t9 := 2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:117:36+1
    $t9 := 2;
    assume $IsValid'u64'($t9);

    // Vector::push_back<u64>($t8, $t9) on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:117:9+29
    call $t8 := $1_Vector_push_back'u64'($t8, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,3776,3805)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,4):", $t5} $t5 == $t5;
        goto L6;
    }

    // write_back[LocalRoot($t1)@]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:117:9+29
    $t1 := $Dereference($t8);

    // $t10 := borrow_local($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:118:27+7
    assume {:print "$at(2,3833,3840)"} true;
    $t10 := $Mutation($Local(3), EmptyVec(), $t3);

    // $t11 := 3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:118:45+1
    $t11 := 3;
    assume $IsValid'u64'($t11);

    // $t12 := pack TestMutRef::T($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:118:36+11
    $t12 := $1_TestMutRef_T($t11);

    // assert Gt(select TestMutRef::T.value($t12), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      ($value#$1_TestMutRef_T($t12) > 0);

    // Vector::push_back<TestMutRef::T>($t10, $t12) on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:118:9+39
    assume {:print "$at(2,3815,3854)"} true;
    call $t10 := $1_Vector_push_back'$1_TestMutRef_T'($t10, $t12);
    if ($abort_flag) {
        assume {:print "$at(2,3815,3854)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,4):", $t5} $t5 == $t5;
        goto L6;
    }

    // assert forall $elem: $t10: Gt(select TestMutRef::T.value($elem), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      (var $range_0 := $Dereference($t10); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    (($value#$1_TestMutRef_T($elem) > 0)))));

    // write_back[LocalRoot($t3)@]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:118:9+39
    assume {:print "$at(2,3815,3854)"} true;
    $t3 := $Dereference($t10);

    // $t13 := borrow_local($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:119:27+7
    assume {:print "$at(2,3882,3889)"} true;
    $t13 := $Mutation($Local(3), EmptyVec(), $t3);

    // $t14 := 4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:119:45+1
    $t14 := 4;
    assume $IsValid'u64'($t14);

    // $t15 := pack TestMutRef::T($t14) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:119:36+11
    $t15 := $1_TestMutRef_T($t14);

    // assert Gt(select TestMutRef::T.value($t15), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      ($value#$1_TestMutRef_T($t15) > 0);

    // Vector::push_back<TestMutRef::T>($t13, $t15) on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:119:9+39
    assume {:print "$at(2,3864,3903)"} true;
    call $t13 := $1_Vector_push_back'$1_TestMutRef_T'($t13, $t15);
    if ($abort_flag) {
        assume {:print "$at(2,3864,3903)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,4):", $t5} $t5 == $t5;
        goto L6;
    }

    // assert forall $elem: $t13: Gt(select TestMutRef::T.value($elem), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      (var $range_0 := $Dereference($t13); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    (($value#$1_TestMutRef_T($elem) > 0)))));

    // write_back[LocalRoot($t3)@]($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:119:9+39
    assume {:print "$at(2,3864,3903)"} true;
    $t3 := $Dereference($t13);

    // $t16 := move($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:120:19+2
    assume {:print "$at(2,3923,3925)"} true;
    $t16 := $t1;

    // $t17 := move($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:120:23+2
    $t17 := $t3;

    // $t4 := pack TestMutRef::V($t16, $t17) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:120:17+9
    $t4 := $1_TestMutRef_V($t16, $t17);

    // trace_local[x]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:120:13+1
    assume {:print "$track_local(1,4,4):", $t4} $t4 == $t4;

    // $t18 := borrow_local($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:121:51+6
    assume {:print "$at(2,3982,3988)"} true;
    $t18 := $Mutation($Local(4), EmptyVec(), $t4);

    // $t19 := TestMutRef::return_ref_different_path_vec2($t0, $t18) on_abort goto L6 with $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:121:17+41
    call $t19,$t18 := $1_TestMutRef_return_ref_different_path_vec2($t0, $t18);
    if ($abort_flag) {
        assume {:print "$at(2,3948,3989)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(1,4):", $t5} $t5 == $t5;
        goto L6;
    }

    // trace_local[r]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:121:13+1
    $temp_0'u64' := $Dereference($t19);
    assume {:print "$track_local(1,4,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t20 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:14+1
    assume {:print "$at(2,4004,4005)"} true;
    $t20 := 0;
    assume $IsValid'u64'($t20);

    // write_ref($t19, $t20) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
    $t19 := $UpdateMutation($t19, $t20);

    // $t21 := is_parent[Reference($t18).is/[]]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
    $t21 := $IsParentMutationHyper($t18, MakeVec2(0, -1), $t19);

    // if ($t21) goto L1 else goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
    if ($t21) { goto L1; } else { goto L2; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
L1:

    // write_back[Reference($t18).is/[]]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
    $t18 := $UpdateMutation($t18, (var $$sel0 := $is#$1_TestMutRef_V($Dereference($t18)); $Update'$1_TestMutRef_V'_is($Dereference($t18), UpdateVec($$sel0, ReadVec(p#$Mutation($t19), LenVec(p#$Mutation($t18)) + 1), $Dereference($t19)))));

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
L2:

    // $t22 := is_parent[Reference($t18).ts/[]/.value]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
    $t22 := $IsParentMutationHyper($t18, MakeVec3(1, -1, 0), $t19);

    // if ($t22) goto L3 else goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
    if ($t22) { goto L3; } else { goto L7; }

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
L3:

    // write_back[Reference($t18).ts/[]/.value]($t19) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
    $t18 := $UpdateMutation($t18, (var $$sel0 := $ts#$1_TestMutRef_V($Dereference($t18)); $Update'$1_TestMutRef_V'_ts($Dereference($t18), (var $$sel1 := ReadVec($$sel0, ReadVec(p#$Mutation($t19), LenVec(p#$Mutation($t18)) + 1)); UpdateVec($$sel0, ReadVec(p#$Mutation($t19), LenVec(p#$Mutation($t18)) + 1), $Update'$1_TestMutRef_T'_value($$sel1, $Dereference($t19)))))));

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
L4:

    // assert forall $elem: select TestMutRef::V.ts($t18): Gt(select TestMutRef::T.value($elem), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      (var $range_0 := $ts#$1_TestMutRef_V($Dereference($t18)); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    (($value#$1_TestMutRef_T($elem) > 0)))));

    // write_back[LocalRoot($t4)@]($t18) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:122:9+6
    assume {:print "$at(2,3999,4005)"} true;
    $t4 := $Dereference($t18);

    // $t23 := move($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:123:9+1
    assume {:print "$at(2,4015,4016)"} true;
    $t23 := $t4;

    // trace_return[0]($t23) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:123:9+1
    assume {:print "$track_return(1,4,0):", $t23} $t23 == $t23;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:124:5+1
    assume {:print "$at(2,4021,4022)"} true;
L5:

    // assert Implies($t0, Eq<TestMutRef::V>($t23, pack TestMutRef::V(ConcatVec<u64>(SingleVec<u64>(1), SingleVec<u64>(0)), ConcatVec<TestMutRef::T>(SingleVec<TestMutRef::T>(pack TestMutRef::T(3)), SingleVec<TestMutRef::T>(pack TestMutRef::T(4)))))) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:126:9+108
    assume {:print "$at(2,4088,4196)"} true;
    assert {:msg "assert_failed(2,4088,4196): post-condition does not hold"}
      ($t0 ==> $IsEqual'$1_TestMutRef_V'($t23, $1_TestMutRef_V(ConcatVec(MakeVec1(1), MakeVec1(0)), ConcatVec(MakeVec1($1_TestMutRef_T(3)), MakeVec1($1_TestMutRef_T(4))))));

    // assert Implies(Not($t0), Eq<TestMutRef::V>($t23, pack TestMutRef::V(ConcatVec<u64>(SingleVec<u64>(1), SingleVec<u64>(2)), ConcatVec<TestMutRef::T>(SingleVec<TestMutRef::T>(pack TestMutRef::T(0)), SingleVec<TestMutRef::T>(pack TestMutRef::T(4)))))) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:127:9+109
    assume {:print "$at(2,4205,4314)"} true;
    assert {:msg "assert_failed(2,4205,4314): post-condition does not hold"}
      (!$t0 ==> $IsEqual'$1_TestMutRef_V'($t23, $1_TestMutRef_V(ConcatVec(MakeVec1(1), MakeVec1(2)), ConcatVec(MakeVec1($1_TestMutRef_T(0)), MakeVec1($1_TestMutRef_T(4))))));

    // return $t23 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:127:9+109
    $ret0 := $t23;
    return;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:124:5+1
    assume {:print "$at(2,4021,4022)"} true;
L6:

    // abort($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:124:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

    // label L7 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L7:

    // destroy($t19) at <internal>:1:1+10

    // goto L4 at <internal>:1:1+10
    goto L4;

}

// fun TestMutRef::call_return_ref_different_root [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:32:5+211
procedure {:timeLimit 40} $1_TestMutRef_call_return_ref_different_root$verify(_$t0: bool) returns ($ret0: $1_TestMutRef_T, $ret1: $1_TestMutRef_R)
{
    // declare local variables
    var $t1: $Mutation (int);
    var $t2: $1_TestMutRef_T;
    var $t3: $1_TestMutRef_R;
    var $t4: int;
    var $t5: int;
    var $t6: $Mutation ($1_TestMutRef_T);
    var $t7: $Mutation ($1_TestMutRef_R);
    var $t8: $Mutation (int);
    var $t9: int;
    var $t10: int;
    var $t11: bool;
    var $t12: bool;
    var $t13: $1_TestMutRef_T;
    var $t14: $1_TestMutRef_R;
    var $t0: bool;
    var $temp_0'$1_TestMutRef_R': $1_TestMutRef_R;
    var $temp_0'$1_TestMutRef_T': $1_TestMutRef_T;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t1));
    assume IsEmptyVec(p#$Mutation($t6));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t8));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:41:51+8
    assume {:print "$at(2,1082,1090)"} true;
    assume $IsValid'bool'($t0);

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:32:5+1
    assume {:print "$at(2,703,704)"} true;
    assume {:print "$track_local(1,5,0):", $t0} $t0 == $t0;

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:33:26+1
    assume {:print "$at(2,782,783)"} true;
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t2 := pack TestMutRef::T($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:33:17+11
    $t2 := $1_TestMutRef_T($t4);

    // assert Gt(select TestMutRef::T.value($t2), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      ($value#$1_TestMutRef_T($t2) > 0);

    // trace_local[x]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:33:13+1
    assume {:print "$at(2,769,770)"} true;
    assume {:print "$track_local(1,5,2):", $t2} $t2 == $t2;

    // $t5 := 10 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:34:26+2
    assume {:print "$at(2,811,813)"} true;
    $t5 := 10;
    assume $IsValid'u64'($t5);

    // $t3 := pack TestMutRef::R($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:34:17+12
    $t3 := $1_TestMutRef_R($t5);

    // trace_local[y]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:34:13+1
    assume {:print "$track_local(1,5,3):", $t3} $t3 == $t3;

    // $t6 := borrow_local($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:35:46+6
    assume {:print "$at(2,861,867)"} true;
    $t6 := $Mutation($Local(2), EmptyVec(), $t2);

    // $t7 := borrow_local($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:35:54+6
    $t7 := $Mutation($Local(3), EmptyVec(), $t3);

    // $t8 := TestMutRef::return_ref_different_root($t0, $t6, $t7) on_abort goto L6 with $t9 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:35:17+44
    call $t8,$t6,$t7 := $1_TestMutRef_return_ref_different_root($t0, $t6, $t7);
    if ($abort_flag) {
        assume {:print "$at(2,832,876)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(1,5):", $t9} $t9 == $t9;
        goto L6;
    }

    // trace_local[r]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:35:13+1
    $temp_0'u64' := $Dereference($t8);
    assume {:print "$track_local(1,5,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t10 := 5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:14+1
    assume {:print "$at(2,891,892)"} true;
    $t10 := 5;
    assume $IsValid'u64'($t10);

    // write_ref($t8, $t10) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
    $t8 := $UpdateMutation($t8, $t10);

    // $t11 := is_parent[Reference($t6).value]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
    $t11 := $IsParentMutation($t6, 0, $t8);

    // if ($t11) goto L1 else goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
    if ($t11) { goto L1; } else { goto L2; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
L1:

    // write_back[Reference($t6).value]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
    $t6 := $UpdateMutation($t6, $Update'$1_TestMutRef_T'_value($Dereference($t6), $Dereference($t8)));

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
L2:

    // $t12 := is_parent[Reference($t7).value]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
    $t12 := $IsParentMutation($t7, 0, $t8);

    // if ($t12) goto L3 else goto L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
    if ($t12) { goto L3; } else { goto L7; }

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
L3:

    // write_back[Reference($t7).value]($t8) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
    $t7 := $UpdateMutation($t7, $Update'$1_TestMutRef_R'_value($Dereference($t7), $Dereference($t8)));

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
L4:

    // assert Gt(select TestMutRef::T.value($t6), 0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    // data invariant at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:8:14+20
    assume {:print "$at(2,196,216)"} true;
    assert {:msg "assert_failed(2,196,216): data invariant does not hold"}
      ($value#$1_TestMutRef_T($Dereference($t6)) > 0);

    // write_back[LocalRoot($t2)@]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
    assume {:print "$at(2,886,892)"} true;
    $t2 := $Dereference($t6);

    // write_back[LocalRoot($t3)@]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:36:9+6
    $t3 := $Dereference($t7);

    // $t13 := move($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:37:10+1
    assume {:print "$at(2,903,904)"} true;
    $t13 := $t2;

    // $t14 := move($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:37:13+1
    $t14 := $t3;

    // trace_return[0]($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:37:9+6
    assume {:print "$track_return(1,5,0):", $t13} $t13 == $t13;

    // trace_return[1]($t14) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:37:9+6
    assume {:print "$track_return(1,5,1):", $t14} $t14 == $t14;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:38:5+1
    assume {:print "$at(2,913,914)"} true;
L5:

    // assert Implies($t0, And(Eq<TestMutRef::T>($t13, pack TestMutRef::T(5)), Eq<TestMutRef::R>($t14, pack TestMutRef::R(10)))) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:40:9+66
    assume {:print "$at(2,965,1031)"} true;
    assert {:msg "assert_failed(2,965,1031): post-condition does not hold"}
      ($t0 ==> ($IsEqual'$1_TestMutRef_T'($t13, $1_TestMutRef_T(5)) && $IsEqual'$1_TestMutRef_R'($t14, $1_TestMutRef_R(10))));

    // assert Implies(Not($t0), And(Eq<TestMutRef::T>($t13, pack TestMutRef::T(1)), Eq<TestMutRef::R>($t14, pack TestMutRef::R(5)))) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:41:9+66
    assume {:print "$at(2,1040,1106)"} true;
    assert {:msg "assert_failed(2,1040,1106): post-condition does not hold"}
      (!$t0 ==> ($IsEqual'$1_TestMutRef_T'($t13, $1_TestMutRef_T(1)) && $IsEqual'$1_TestMutRef_R'($t14, $1_TestMutRef_R(5))));

    // return ($t13, $t14) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:41:9+66
    $ret0 := $t13;
    $ret1 := $t14;
    return;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:38:5+1
    assume {:print "$at(2,913,914)"} true;
L6:

    // abort($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:38:5+1
    $abort_code := $t9;
    $abort_flag := true;
    return;

    // label L7 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L7:

    // destroy($t8) at <internal>:1:1+10

    // goto L4 at <internal>:1:1+10
    goto L4;

}

// fun TestMutRef::identity [baseline] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:5+41
procedure {:inline 1} $1_TestMutRef_identity(_$t0: $Mutation (int)) returns ($ret0: $Mutation (int), $ret1: $Mutation (int))
{
    // declare local variables
    var $t0: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:5+1
    assume {:print "$at(2,257,258)"} true;
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(1,6,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:43+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_return(1,6,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:43+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(1,6,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:45+1
L1:

    // return $t0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:45+1
    $ret0 := $t0;
    $ret1 := $t0;
    return;

}

// fun TestMutRef::identity [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:5+41
procedure {:timeLimit 40} $1_TestMutRef_identity$verify(_$t0: $Mutation (int)) returns ($ret0: $Mutation (int), $ret1: $Mutation (int))
{
    // declare local variables
    var $t0: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:5+41
    assume {:print "$at(2,257,298)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(1,6,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_return[0]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:43+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_return(1,6,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:43+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(1,6,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:45+1
L1:

    // return $t0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:13:45+1
    $ret0 := $t0;
    $ret1 := $t0;
    return;

}

// fun TestMutRef::return_ref_different_path [baseline] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:47:5+115
procedure {:inline 1} $1_TestMutRef_return_ref_different_path(_$t0: bool, _$t1: $Mutation ($1_TestMutRef_N)) returns ($ret0: $Mutation (int), $ret1: $Mutation ($1_TestMutRef_N))
{
    // declare local variables
    var $t2: $Mutation (int);
    var $t3: $Mutation (int);
    var $t4: $Mutation ($1_TestMutRef_T);
    var $t5: $Mutation (int);
    var $t0: bool;
    var $t1: $Mutation ($1_TestMutRef_N);
    var $temp_0'$1_TestMutRef_N': $1_TestMutRef_N;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t5));

    // bytecode translation starts here
    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:47:5+1
    assume {:print "$at(2,1207,1208)"} true;
    assume {:print "$track_local(1,7,0):", $t0} $t0 == $t0;

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:47:5+1
    $temp_0'$1_TestMutRef_N' := $Dereference($t1);
    assume {:print "$track_local(1,7,1):", $temp_0'$1_TestMutRef_N'} $temp_0'$1_TestMutRef_N' == $temp_0'$1_TestMutRef_N';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    assume {:print "$at(2,1277,1316)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:21+1
L0:

    // $t3 := borrow_field<TestMutRef::N>.value($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:16+12
    $t3 := $ChildMutation($t1, 0, $value#$1_TestMutRef_N($Dereference($t1)));

    // $t2 := $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $t2 := $t3;

    // trace_local[tmp#$2]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $temp_0'u64' := $Dereference($t3);
    assume {:print "$track_local(1,7,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:39+1
L2:

    // $t4 := borrow_field<TestMutRef::N>.t($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:39+3
    $t4 := $ChildMutation($t1, 1, $t#$1_TestMutRef_N($Dereference($t1)));

    // $t5 := borrow_field<TestMutRef::T>.value($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:34+14
    $t5 := $ChildMutation($t4, 0, $value#$1_TestMutRef_T($Dereference($t4)));

    // $t2 := $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $t2 := $t5;

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $temp_0'u64' := $Dereference($t5);
    assume {:print "$track_local(1,7,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L3:

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $temp_0'u64' := $Dereference($t2);
    assume {:print "$track_return(1,7,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $temp_0'$1_TestMutRef_N' := $Dereference($t1);
    assume {:print "$track_local(1,7,1):", $temp_0'$1_TestMutRef_N'} $temp_0'$1_TestMutRef_N' == $temp_0'$1_TestMutRef_N';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L4:

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L5:

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L7:

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L8:

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L9:

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:49:5+1
    assume {:print "$at(2,1321,1322)"} true;
L10:

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:49:5+1
    $ret0 := $t2;
    $ret1 := $t1;
    return;

}

// fun TestMutRef::return_ref_different_path [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:47:5+115
procedure {:timeLimit 40} $1_TestMutRef_return_ref_different_path$verify(_$t0: bool, _$t1: $Mutation ($1_TestMutRef_N)) returns ($ret0: $Mutation (int), $ret1: $Mutation ($1_TestMutRef_N))
{
    // declare local variables
    var $t2: $Mutation (int);
    var $t3: $Mutation (int);
    var $t4: $Mutation ($1_TestMutRef_T);
    var $t5: $Mutation (int);
    var $t0: bool;
    var $t1: $Mutation ($1_TestMutRef_N);
    var $temp_0'$1_TestMutRef_N': $1_TestMutRef_N;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t5));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:47:5+115
    assume {:print "$at(2,1207,1322)"} true;
    assume $IsValid'bool'($t0);

    // assume And(WellFormed($t1), Gt(select TestMutRef::T.value(select TestMutRef::N.t($t1)), 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:47:5+115
    assume ($IsValid'$1_TestMutRef_N'($Dereference($t1)) && ($value#$1_TestMutRef_T($t#$1_TestMutRef_N($Dereference($t1))) > 0));

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:47:5+1
    assume {:print "$track_local(1,7,0):", $t0} $t0 == $t0;

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:47:5+1
    $temp_0'$1_TestMutRef_N' := $Dereference($t1);
    assume {:print "$track_local(1,7,1):", $temp_0'$1_TestMutRef_N'} $temp_0'$1_TestMutRef_N' == $temp_0'$1_TestMutRef_N';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    assume {:print "$at(2,1277,1316)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:21+1
L0:

    // $t3 := borrow_field<TestMutRef::N>.value($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:16+12
    $t3 := $ChildMutation($t1, 0, $value#$1_TestMutRef_N($Dereference($t1)));

    // $t2 := $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $t2 := $t3;

    // trace_local[tmp#$2]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $temp_0'u64' := $Dereference($t3);
    assume {:print "$track_local(1,7,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:39+1
L2:

    // $t4 := borrow_field<TestMutRef::N>.t($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:39+3
    $t4 := $ChildMutation($t1, 1, $t#$1_TestMutRef_N($Dereference($t1)));

    // $t5 := borrow_field<TestMutRef::T>.value($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:34+14
    $t5 := $ChildMutation($t4, 0, $value#$1_TestMutRef_T($Dereference($t4)));

    // $t2 := $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $t2 := $t5;

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $temp_0'u64' := $Dereference($t5);
    assume {:print "$track_local(1,7,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L3:

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $temp_0'u64' := $Dereference($t2);
    assume {:print "$track_return(1,7,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
    $temp_0'$1_TestMutRef_N' := $Dereference($t1);
    assume {:print "$track_local(1,7,1):", $temp_0'$1_TestMutRef_N'} $temp_0'$1_TestMutRef_N' == $temp_0'$1_TestMutRef_N';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L4:

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L5:

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L7:

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L8:

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:48:9+39
L9:

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:49:5+1
    assume {:print "$at(2,1321,1322)"} true;
L10:

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:49:5+1
    $ret0 := $t2;
    $ret1 := $t1;
    return;

}

// fun TestMutRef::return_ref_different_path_vec [baseline] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:69:5+158
procedure {:inline 1} $1_TestMutRef_return_ref_different_path_vec(_$t0: bool, _$t1: $Mutation ($1_TestMutRef_V)) returns ($ret0: $Mutation (int), $ret1: $Mutation ($1_TestMutRef_V))
{
    // declare local variables
    var $t2: $Mutation (int);
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (int);
    var $t6: int;
    var $t7: $Mutation (Vec (int));
    var $t8: int;
    var $t9: $Mutation (int);
    var $t0: bool;
    var $t1: $Mutation ($1_TestMutRef_V);
    var $temp_0'$1_TestMutRef_V': $1_TestMutRef_V;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t9));

    // bytecode translation starts here
    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:69:5+1
    assume {:print "$at(2,1892,1893)"} true;
    assume {:print "$track_local(1,8,0):", $t0} $t0 == $t0;

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:69:5+1
    $temp_0'$1_TestMutRef_V' := $Dereference($t1);
    assume {:print "$track_local(1,8,1):", $temp_0'$1_TestMutRef_V'} $temp_0'$1_TestMutRef_V' == $temp_0'$1_TestMutRef_V';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    assume {:print "$at(2,1966,2044)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:40+1
L0:

    // $t3 := borrow_field<TestMutRef::V>.is($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:35+9
    $t3 := $ChildMutation($t1, 0, $is#$1_TestMutRef_V($Dereference($t1)));

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:46+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := Vector::borrow_mut<u64>($t3, $t4) on_abort goto L13 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:16+32
    call $t5,$t3 := $1_Vector_borrow_mut'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,1973,2005)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,8):", $t6} $t6 == $t6;
        goto L13;
    }

    // $t2 := $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $t2 := $t5;

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $temp_0'u64' := $Dereference($t5);
    assume {:print "$track_local(1,8,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:79+1
L2:

    // $t7 := borrow_field<TestMutRef::V>.is($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:74+9
    $t7 := $ChildMutation($t1, 0, $is#$1_TestMutRef_V($Dereference($t1)));

    // $t8 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:85+1
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := Vector::borrow_mut<u64>($t7, $t8) on_abort goto L13 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:55+32
    call $t9,$t7 := $1_Vector_borrow_mut'u64'($t7, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,2012,2044)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,8):", $t6} $t6 == $t6;
        goto L13;
    }

    // $t2 := $t9 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $t2 := $t9;

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $temp_0'u64' := $Dereference($t9);
    assume {:print "$track_local(1,8,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L3:

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $temp_0'u64' := $Dereference($t2);
    assume {:print "$track_return(1,8,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $temp_0'$1_TestMutRef_V' := $Dereference($t1);
    assume {:print "$track_local(1,8,1):", $temp_0'$1_TestMutRef_V'} $temp_0'$1_TestMutRef_V' == $temp_0'$1_TestMutRef_V';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L4:

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L5:

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L7:

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L8:

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L9:

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L10:

    // label L11 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L11:

    // label L12 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:71:5+1
    assume {:print "$at(2,2049,2050)"} true;
L12:

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:71:5+1
    $ret0 := $t2;
    $ret1 := $t1;
    return;

    // label L13 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:71:5+1
L13:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:71:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestMutRef::return_ref_different_path_vec [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:69:5+158
procedure {:timeLimit 40} $1_TestMutRef_return_ref_different_path_vec$verify(_$t0: bool, _$t1: $Mutation ($1_TestMutRef_V)) returns ($ret0: $Mutation (int), $ret1: $Mutation ($1_TestMutRef_V))
{
    // declare local variables
    var $t2: $Mutation (int);
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (int);
    var $t6: int;
    var $t7: $Mutation (Vec (int));
    var $t8: int;
    var $t9: $Mutation (int);
    var $t0: bool;
    var $t1: $Mutation ($1_TestMutRef_V);
    var $temp_0'$1_TestMutRef_V': $1_TestMutRef_V;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t9));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:69:5+158
    assume {:print "$at(2,1892,2050)"} true;
    assume $IsValid'bool'($t0);

    // assume And(WellFormed($t1), forall $elem: select TestMutRef::V.ts($t1): Gt(select TestMutRef::T.value($elem), 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:69:5+158
    assume ($IsValid'$1_TestMutRef_V'($Dereference($t1)) && (var $range_0 := $ts#$1_TestMutRef_V($Dereference($t1)); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    (($value#$1_TestMutRef_T($elem) > 0))))));

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:69:5+1
    assume {:print "$track_local(1,8,0):", $t0} $t0 == $t0;

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:69:5+1
    $temp_0'$1_TestMutRef_V' := $Dereference($t1);
    assume {:print "$track_local(1,8,1):", $temp_0'$1_TestMutRef_V'} $temp_0'$1_TestMutRef_V' == $temp_0'$1_TestMutRef_V';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    assume {:print "$at(2,1966,2044)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:40+1
L0:

    // $t3 := borrow_field<TestMutRef::V>.is($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:35+9
    $t3 := $ChildMutation($t1, 0, $is#$1_TestMutRef_V($Dereference($t1)));

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:46+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := Vector::borrow_mut<u64>($t3, $t4) on_abort goto L13 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:16+32
    call $t5,$t3 := $1_Vector_borrow_mut'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,1973,2005)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,8):", $t6} $t6 == $t6;
        goto L13;
    }

    // $t2 := $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $t2 := $t5;

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $temp_0'u64' := $Dereference($t5);
    assume {:print "$track_local(1,8,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:79+1
L2:

    // $t7 := borrow_field<TestMutRef::V>.is($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:74+9
    $t7 := $ChildMutation($t1, 0, $is#$1_TestMutRef_V($Dereference($t1)));

    // $t8 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:85+1
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := Vector::borrow_mut<u64>($t7, $t8) on_abort goto L13 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:55+32
    call $t9,$t7 := $1_Vector_borrow_mut'u64'($t7, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,2012,2044)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,8):", $t6} $t6 == $t6;
        goto L13;
    }

    // $t2 := $t9 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $t2 := $t9;

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $temp_0'u64' := $Dereference($t9);
    assume {:print "$track_local(1,8,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L3:

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $temp_0'u64' := $Dereference($t2);
    assume {:print "$track_return(1,8,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
    $temp_0'$1_TestMutRef_V' := $Dereference($t1);
    assume {:print "$track_local(1,8,1):", $temp_0'$1_TestMutRef_V'} $temp_0'$1_TestMutRef_V' == $temp_0'$1_TestMutRef_V';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L4:

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L5:

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L7:

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L8:

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L9:

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L10:

    // label L11 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:70:9+78
L11:

    // label L12 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:71:5+1
    assume {:print "$at(2,2049,2050)"} true;
L12:

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:71:5+1
    $ret0 := $t2;
    $ret1 := $t1;
    return;

    // label L13 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:71:5+1
L13:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:71:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestMutRef::return_ref_different_path_vec2 [baseline] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:90:5+171
procedure {:inline 1} $1_TestMutRef_return_ref_different_path_vec2(_$t0: bool, _$t1: $Mutation ($1_TestMutRef_V)) returns ($ret0: $Mutation (int), $ret1: $Mutation ($1_TestMutRef_V))
{
    // declare local variables
    var $t2: $Mutation (int);
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (int);
    var $t6: int;
    var $t7: $Mutation (Vec ($1_TestMutRef_T));
    var $t8: int;
    var $t9: $Mutation ($1_TestMutRef_T);
    var $t10: $Mutation (int);
    var $t0: bool;
    var $t1: $Mutation ($1_TestMutRef_V);
    var $temp_0'$1_TestMutRef_V': $1_TestMutRef_V;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t10));

    // bytecode translation starts here
    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:90:5+1
    assume {:print "$at(2,2659,2660)"} true;
    assume {:print "$track_local(1,9,0):", $t0} $t0 == $t0;

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:90:5+1
    $temp_0'$1_TestMutRef_V' := $Dereference($t1);
    assume {:print "$track_local(1,9,1):", $temp_0'$1_TestMutRef_V'} $temp_0'$1_TestMutRef_V' == $temp_0'$1_TestMutRef_V';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    assume {:print "$at(2,2734,2824)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:40+1
L0:

    // $t3 := borrow_field<TestMutRef::V>.is($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:35+9
    $t3 := $ChildMutation($t1, 0, $is#$1_TestMutRef_V($Dereference($t1)));

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:46+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := Vector::borrow_mut<u64>($t3, $t4) on_abort goto L15 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:16+32
    call $t5,$t3 := $1_Vector_borrow_mut'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,2741,2773)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,9):", $t6} $t6 == $t6;
        goto L15;
    }

    // $t2 := $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $t2 := $t5;

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $temp_0'u64' := $Dereference($t5);
    assume {:print "$track_local(1,9,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:84+1
L2:

    // $t7 := borrow_field<TestMutRef::V>.ts($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:79+9
    $t7 := $ChildMutation($t1, 1, $ts#$1_TestMutRef_V($Dereference($t1)));

    // $t8 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:90+1
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := Vector::borrow_mut<TestMutRef::T>($t7, $t8) on_abort goto L15 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:59+34
    call $t9,$t7 := $1_Vector_borrow_mut'$1_TestMutRef_T'($t7, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,2784,2818)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,9):", $t6} $t6 == $t6;
        goto L15;
    }

    // $t10 := borrow_field<TestMutRef::T>.value($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:54+45
    $t10 := $ChildMutation($t9, 0, $value#$1_TestMutRef_T($Dereference($t9)));

    // $t2 := $t10 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $t2 := $t10;

    // trace_local[tmp#$2]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $temp_0'u64' := $Dereference($t10);
    assume {:print "$track_local(1,9,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L3:

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $temp_0'u64' := $Dereference($t2);
    assume {:print "$track_return(1,9,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $temp_0'$1_TestMutRef_V' := $Dereference($t1);
    assume {:print "$track_local(1,9,1):", $temp_0'$1_TestMutRef_V'} $temp_0'$1_TestMutRef_V' == $temp_0'$1_TestMutRef_V';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L4:

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L5:

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L7:

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L8:

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L9:

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L10:

    // label L11 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L11:

    // label L12 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L12:

    // label L13 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L13:

    // label L14 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:92:5+1
    assume {:print "$at(2,2829,2830)"} true;
L14:

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:92:5+1
    $ret0 := $t2;
    $ret1 := $t1;
    return;

    // label L15 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:92:5+1
L15:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:92:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestMutRef::return_ref_different_path_vec2 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:90:5+171
procedure {:timeLimit 40} $1_TestMutRef_return_ref_different_path_vec2$verify(_$t0: bool, _$t1: $Mutation ($1_TestMutRef_V)) returns ($ret0: $Mutation (int), $ret1: $Mutation ($1_TestMutRef_V))
{
    // declare local variables
    var $t2: $Mutation (int);
    var $t3: $Mutation (Vec (int));
    var $t4: int;
    var $t5: $Mutation (int);
    var $t6: int;
    var $t7: $Mutation (Vec ($1_TestMutRef_T));
    var $t8: int;
    var $t9: $Mutation ($1_TestMutRef_T);
    var $t10: $Mutation (int);
    var $t0: bool;
    var $t1: $Mutation ($1_TestMutRef_V);
    var $temp_0'$1_TestMutRef_V': $1_TestMutRef_V;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t10));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:90:5+171
    assume {:print "$at(2,2659,2830)"} true;
    assume $IsValid'bool'($t0);

    // assume And(WellFormed($t1), forall $elem: select TestMutRef::V.ts($t1): Gt(select TestMutRef::T.value($elem), 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:90:5+171
    assume ($IsValid'$1_TestMutRef_V'($Dereference($t1)) && (var $range_0 := $ts#$1_TestMutRef_V($Dereference($t1)); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var $elem := ReadVec($range_0, $i_1);
    (($value#$1_TestMutRef_T($elem) > 0))))));

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:90:5+1
    assume {:print "$track_local(1,9,0):", $t0} $t0 == $t0;

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:90:5+1
    $temp_0'$1_TestMutRef_V' := $Dereference($t1);
    assume {:print "$track_local(1,9,1):", $temp_0'$1_TestMutRef_V'} $temp_0'$1_TestMutRef_V' == $temp_0'$1_TestMutRef_V';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    assume {:print "$at(2,2734,2824)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:40+1
L0:

    // $t3 := borrow_field<TestMutRef::V>.is($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:35+9
    $t3 := $ChildMutation($t1, 0, $is#$1_TestMutRef_V($Dereference($t1)));

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:46+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := Vector::borrow_mut<u64>($t3, $t4) on_abort goto L15 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:16+32
    call $t5,$t3 := $1_Vector_borrow_mut'u64'($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,2741,2773)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,9):", $t6} $t6 == $t6;
        goto L15;
    }

    // $t2 := $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $t2 := $t5;

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $temp_0'u64' := $Dereference($t5);
    assume {:print "$track_local(1,9,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:84+1
L2:

    // $t7 := borrow_field<TestMutRef::V>.ts($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:79+9
    $t7 := $ChildMutation($t1, 1, $ts#$1_TestMutRef_V($Dereference($t1)));

    // $t8 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:90+1
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := Vector::borrow_mut<TestMutRef::T>($t7, $t8) on_abort goto L15 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:59+34
    call $t9,$t7 := $1_Vector_borrow_mut'$1_TestMutRef_T'($t7, $t8);
    if ($abort_flag) {
        assume {:print "$at(2,2784,2818)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(1,9):", $t6} $t6 == $t6;
        goto L15;
    }

    // $t10 := borrow_field<TestMutRef::T>.value($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:54+45
    $t10 := $ChildMutation($t9, 0, $value#$1_TestMutRef_T($Dereference($t9)));

    // $t2 := $t10 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $t2 := $t10;

    // trace_local[tmp#$2]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $temp_0'u64' := $Dereference($t10);
    assume {:print "$track_local(1,9,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L3:

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $temp_0'u64' := $Dereference($t2);
    assume {:print "$track_return(1,9,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
    $temp_0'$1_TestMutRef_V' := $Dereference($t1);
    assume {:print "$track_local(1,9,1):", $temp_0'$1_TestMutRef_V'} $temp_0'$1_TestMutRef_V' == $temp_0'$1_TestMutRef_V';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L4:

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L5:

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L7:

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L8:

    // label L9 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L9:

    // label L10 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L10:

    // label L11 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L11:

    // label L12 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L12:

    // label L13 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:91:9+90
L13:

    // label L14 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:92:5+1
    assume {:print "$at(2,2829,2830)"} true;
L14:

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:92:5+1
    $ret0 := $t2;
    $ret1 := $t1;
    return;

    // label L15 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:92:5+1
L15:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:92:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestMutRef::return_ref_different_root [baseline] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+124
procedure {:inline 1} $1_TestMutRef_return_ref_different_root(_$t0: bool, _$t1: $Mutation ($1_TestMutRef_T), _$t2: $Mutation ($1_TestMutRef_R)) returns ($ret0: $Mutation (int), $ret1: $Mutation ($1_TestMutRef_T), $ret2: $Mutation ($1_TestMutRef_R))
{
    // declare local variables
    var $t3: $Mutation (int);
    var $t4: $Mutation (int);
    var $t5: $Mutation (int);
    var $t0: bool;
    var $t1: $Mutation ($1_TestMutRef_T);
    var $t2: $Mutation ($1_TestMutRef_R);
    var $temp_0'$1_TestMutRef_R': $1_TestMutRef_R;
    var $temp_0'$1_TestMutRef_T': $1_TestMutRef_T;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t5));

    // bytecode translation starts here
    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+1
    assume {:print "$at(2,573,574)"} true;
    assume {:print "$track_local(1,10,0):", $t0} $t0 == $t0;

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+1
    $temp_0'$1_TestMutRef_T' := $Dereference($t1);
    assume {:print "$track_local(1,10,1):", $temp_0'$1_TestMutRef_T'} $temp_0'$1_TestMutRef_T' == $temp_0'$1_TestMutRef_T';

    // trace_local[y]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+1
    $temp_0'$1_TestMutRef_R' := $Dereference($t2);
    assume {:print "$track_local(1,10,2):", $temp_0'$1_TestMutRef_R'} $temp_0'$1_TestMutRef_R' == $temp_0'$1_TestMutRef_R';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    assume {:print "$at(2,654,691)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L0:

    // destroy($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37

    // $t4 := borrow_field<TestMutRef::T>.value($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:16+12
    $t4 := $ChildMutation($t1, 0, $value#$1_TestMutRef_T($Dereference($t1)));

    // $t3 := $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $t3 := $t4;

    // trace_local[tmp#$3]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $temp_0'u64' := $Dereference($t4);
    assume {:print "$track_local(1,10,3):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L2:

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37

    // $t5 := borrow_field<TestMutRef::R>.value($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:34+12
    $t5 := $ChildMutation($t2, 0, $value#$1_TestMutRef_R($Dereference($t2)));

    // $t3 := $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $t3 := $t5;

    // trace_local[tmp#$3]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $temp_0'u64' := $Dereference($t5);
    assume {:print "$track_local(1,10,3):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L3:

    // trace_return[0]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $temp_0'u64' := $Dereference($t3);
    assume {:print "$track_return(1,10,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $temp_0'$1_TestMutRef_T' := $Dereference($t1);
    assume {:print "$track_local(1,10,1):", $temp_0'$1_TestMutRef_T'} $temp_0'$1_TestMutRef_T' == $temp_0'$1_TestMutRef_T';

    // trace_local[y]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $temp_0'$1_TestMutRef_R' := $Dereference($t2);
    assume {:print "$track_local(1,10,2):", $temp_0'$1_TestMutRef_R'} $temp_0'$1_TestMutRef_R' == $temp_0'$1_TestMutRef_R';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L4:

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L5:

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L7:

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:30:5+1
    assume {:print "$at(2,696,697)"} true;
L8:

    // return $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:30:5+1
    $ret0 := $t3;
    $ret1 := $t1;
    $ret2 := $t2;
    return;

}

// fun TestMutRef::return_ref_different_root [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+124
procedure {:timeLimit 40} $1_TestMutRef_return_ref_different_root$verify(_$t0: bool, _$t1: $Mutation ($1_TestMutRef_T), _$t2: $Mutation ($1_TestMutRef_R)) returns ($ret0: $Mutation (int), $ret1: $Mutation ($1_TestMutRef_T), $ret2: $Mutation ($1_TestMutRef_R))
{
    // declare local variables
    var $t3: $Mutation (int);
    var $t4: $Mutation (int);
    var $t5: $Mutation (int);
    var $t0: bool;
    var $t1: $Mutation ($1_TestMutRef_T);
    var $t2: $Mutation ($1_TestMutRef_R);
    var $temp_0'$1_TestMutRef_R': $1_TestMutRef_R;
    var $temp_0'$1_TestMutRef_T': $1_TestMutRef_T;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t5));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t1) == $Param(1);
    assume l#$Mutation($t2) == $Param(2);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+124
    assume {:print "$at(2,573,697)"} true;
    assume $IsValid'bool'($t0);

    // assume And(WellFormed($t1), Gt(select TestMutRef::T.value($t1), 0)) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+124
    assume ($IsValid'$1_TestMutRef_T'($Dereference($t1)) && ($value#$1_TestMutRef_T($Dereference($t1)) > 0));

    // assume WellFormed($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+124
    assume $IsValid'$1_TestMutRef_R'($Dereference($t2));

    // trace_local[b]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+1
    assume {:print "$track_local(1,10,0):", $t0} $t0 == $t0;

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+1
    $temp_0'$1_TestMutRef_T' := $Dereference($t1);
    assume {:print "$track_local(1,10,1):", $temp_0'$1_TestMutRef_T'} $temp_0'$1_TestMutRef_T' == $temp_0'$1_TestMutRef_T';

    // trace_local[y]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:28:5+1
    $temp_0'$1_TestMutRef_R' := $Dereference($t2);
    assume {:print "$track_local(1,10,2):", $temp_0'$1_TestMutRef_R'} $temp_0'$1_TestMutRef_R' == $temp_0'$1_TestMutRef_R';

    // if ($t0) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    assume {:print "$at(2,654,691)"} true;
    if ($t0) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L0:

    // destroy($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37

    // $t4 := borrow_field<TestMutRef::T>.value($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:16+12
    $t4 := $ChildMutation($t1, 0, $value#$1_TestMutRef_T($Dereference($t1)));

    // $t3 := $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $t3 := $t4;

    // trace_local[tmp#$3]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $temp_0'u64' := $Dereference($t4);
    assume {:print "$track_local(1,10,3):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // goto L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    goto L3;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L2:

    // destroy($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37

    // $t5 := borrow_field<TestMutRef::R>.value($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:34+12
    $t5 := $ChildMutation($t2, 0, $value#$1_TestMutRef_R($Dereference($t2)));

    // $t3 := $t5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $t3 := $t5;

    // trace_local[tmp#$3]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $temp_0'u64' := $Dereference($t5);
    assume {:print "$track_local(1,10,3):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L3:

    // trace_return[0]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $temp_0'u64' := $Dereference($t3);
    assume {:print "$track_return(1,10,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[x]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $temp_0'$1_TestMutRef_T' := $Dereference($t1);
    assume {:print "$track_local(1,10,1):", $temp_0'$1_TestMutRef_T'} $temp_0'$1_TestMutRef_T' == $temp_0'$1_TestMutRef_T';

    // trace_local[y]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
    $temp_0'$1_TestMutRef_R' := $Dereference($t2);
    assume {:print "$track_local(1,10,2):", $temp_0'$1_TestMutRef_R'} $temp_0'$1_TestMutRef_R' == $temp_0'$1_TestMutRef_R';

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L4:

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L5:

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L6:

    // label L7 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:29:9+37
L7:

    // label L8 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:30:5+1
    assume {:print "$at(2,696,697)"} true;
L8:

    // return $t3 at /home/ying/diem/language/move-prover/tests/sources/functional/mut_ref.move:30:5+1
    $ret0 := $t3;
    $ret1 := $t1;
    $ret2 := $t2;
    return;

}
