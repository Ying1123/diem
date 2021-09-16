
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

//function {:inline} UpdateVec<T>(v: Vec T, i: int, elem: T): Vec T {
//    ConcatVec3(SliceVec(v, 0, i), MakeVec1(elem), SliceVec(v, i + 1, LenVec(v)))
//}
function {:builtin "seq.update"} Vec_Update<T>(v: Vec T, i: int, x: Vec T): Vec T;

function {:inline} UpdateVec<T>(v: Vec T, i: int, elem: T): Vec T {
	Vec_Update(v, i, MakeVec1(elem))
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
// Native Vector implementation for element type `#0`


function {:inline} $IsEqual'vec'#0''(v1: Vec (#0), v2: Vec (#0)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'#0''(v: Vec (#0)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'#0'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'#0'(v: Vec (#0), e: #0): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'#0'(ReadVec(v, i), e))
}

function $IndexOfVec'#0'(v: Vec (#0), e: #0): int;
axiom (forall v: Vec (#0), e: #0:: {$IndexOfVec'#0'(v, e)}
    (var i := $IndexOfVec'#0'(v, e);
     if (!$ContainsVec'#0'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'#0'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'#0'(ReadVec(v, j), e))));


function {:inline} $RangeVec'#0'(v: Vec (#0)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'#0'(): Vec (#0) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'#0'() returns (v: Vec (#0)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'#0'(): Vec (#0) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'#0'(v: Vec (#0)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'#0'(m: $Mutation (Vec (#0)), val: #0) returns (m': $Mutation (Vec (#0))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'#0'(v: Vec (#0), val: #0): Vec (#0) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'#0'(m: $Mutation (Vec (#0))) returns (e: #0, m': $Mutation (Vec (#0))) {
    var v: Vec (#0);
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

procedure {:inline 1} $1_Vector_append'#0'(m: $Mutation (Vec (#0)), other: Vec (#0)) returns (m': $Mutation (Vec (#0))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'#0'(m: $Mutation (Vec (#0))) returns (m': $Mutation (Vec (#0))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'#0'(v: Vec (#0)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'#0'(v: Vec (#0)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'#0'(v: Vec (#0), i: int) returns (dst: #0) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'#0'(v: Vec (#0), i: int): #0 {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'#0'(m: $Mutation (Vec (#0)), index: int)
returns (dst: $Mutation (#0), m': $Mutation (Vec (#0)))
{
    var v: Vec (#0);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'#0'(v: Vec (#0), i: int): #0 {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'#0'(v: Vec (#0)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'#0'(m: $Mutation (Vec (#0)), i: int, j: int) returns (m': $Mutation (Vec (#0)))
{
    var v: Vec (#0);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'#0'(v: Vec (#0), i: int, j: int): Vec (#0) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'#0'(m: $Mutation (Vec (#0)), i: int) returns (e: #0, m': $Mutation (Vec (#0)))
{
    var v: Vec (#0);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'#0'(m: $Mutation (Vec (#0)), i: int) returns (e: #0, m': $Mutation (Vec (#0)))
{
    var len: int;
    var v: Vec (#0);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'#0'(v: Vec (#0), e: #0) returns (res: bool)  {
    res := $ContainsVec'#0'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'#0'(v: Vec (#0), e: #0) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'#0'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_DiemAccount_KeyRotationCapability`


function {:inline} $IsEqual'vec'$1_DiemAccount_KeyRotationCapability''(v1: Vec ($1_DiemAccount_KeyRotationCapability), v2: Vec ($1_DiemAccount_KeyRotationCapability)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_DiemAccount_KeyRotationCapability''(v: Vec ($1_DiemAccount_KeyRotationCapability)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_DiemAccount_KeyRotationCapability'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), e: $1_DiemAccount_KeyRotationCapability): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), e: $1_DiemAccount_KeyRotationCapability): int;
axiom (forall v: Vec ($1_DiemAccount_KeyRotationCapability), e: $1_DiemAccount_KeyRotationCapability:: {$IndexOfVec'$1_DiemAccount_KeyRotationCapability'(v, e)}
    (var i := $IndexOfVec'$1_DiemAccount_KeyRotationCapability'(v, e);
     if (!$ContainsVec'$1_DiemAccount_KeyRotationCapability'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_DiemAccount_KeyRotationCapability'(): Vec ($1_DiemAccount_KeyRotationCapability) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_DiemAccount_KeyRotationCapability'() returns (v: Vec ($1_DiemAccount_KeyRotationCapability)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_DiemAccount_KeyRotationCapability'(): Vec ($1_DiemAccount_KeyRotationCapability) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), val: $1_DiemAccount_KeyRotationCapability) returns (m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), val: $1_DiemAccount_KeyRotationCapability): Vec ($1_DiemAccount_KeyRotationCapability) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) returns (e: $1_DiemAccount_KeyRotationCapability, m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) {
    var v: Vec ($1_DiemAccount_KeyRotationCapability);
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

procedure {:inline 1} $1_Vector_append'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), other: Vec ($1_DiemAccount_KeyRotationCapability)) returns (m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) returns (m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), i: int) returns (dst: $1_DiemAccount_KeyRotationCapability) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), i: int): $1_DiemAccount_KeyRotationCapability {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), index: int)
returns (dst: $Mutation ($1_DiemAccount_KeyRotationCapability), m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)))
{
    var v: Vec ($1_DiemAccount_KeyRotationCapability);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), i: int): $1_DiemAccount_KeyRotationCapability {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), i: int, j: int) returns (m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)))
{
    var v: Vec ($1_DiemAccount_KeyRotationCapability);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), i: int, j: int): Vec ($1_DiemAccount_KeyRotationCapability) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), i: int) returns (e: $1_DiemAccount_KeyRotationCapability, m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)))
{
    var v: Vec ($1_DiemAccount_KeyRotationCapability);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_DiemAccount_KeyRotationCapability'(m: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)), i: int) returns (e: $1_DiemAccount_KeyRotationCapability, m': $Mutation (Vec ($1_DiemAccount_KeyRotationCapability)))
{
    var len: int;
    var v: Vec ($1_DiemAccount_KeyRotationCapability);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), e: $1_DiemAccount_KeyRotationCapability) returns (res: bool)  {
    res := $ContainsVec'$1_DiemAccount_KeyRotationCapability'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability), e: $1_DiemAccount_KeyRotationCapability) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_DiemAccount_KeyRotationCapability'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_DiemAccount_WithdrawCapability`


function {:inline} $IsEqual'vec'$1_DiemAccount_WithdrawCapability''(v1: Vec ($1_DiemAccount_WithdrawCapability), v2: Vec ($1_DiemAccount_WithdrawCapability)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_DiemAccount_WithdrawCapability''(v: Vec ($1_DiemAccount_WithdrawCapability)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_DiemAccount_WithdrawCapability'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), e: $1_DiemAccount_WithdrawCapability): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemAccount_WithdrawCapability'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), e: $1_DiemAccount_WithdrawCapability): int;
axiom (forall v: Vec ($1_DiemAccount_WithdrawCapability), e: $1_DiemAccount_WithdrawCapability:: {$IndexOfVec'$1_DiemAccount_WithdrawCapability'(v, e)}
    (var i := $IndexOfVec'$1_DiemAccount_WithdrawCapability'(v, e);
     if (!$ContainsVec'$1_DiemAccount_WithdrawCapability'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemAccount_WithdrawCapability'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_DiemAccount_WithdrawCapability'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_DiemAccount_WithdrawCapability'(): Vec ($1_DiemAccount_WithdrawCapability) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_DiemAccount_WithdrawCapability'() returns (v: Vec ($1_DiemAccount_WithdrawCapability)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_DiemAccount_WithdrawCapability'(): Vec ($1_DiemAccount_WithdrawCapability) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), val: $1_DiemAccount_WithdrawCapability) returns (m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), val: $1_DiemAccount_WithdrawCapability): Vec ($1_DiemAccount_WithdrawCapability) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) returns (e: $1_DiemAccount_WithdrawCapability, m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) {
    var v: Vec ($1_DiemAccount_WithdrawCapability);
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

procedure {:inline 1} $1_Vector_append'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), other: Vec ($1_DiemAccount_WithdrawCapability)) returns (m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) returns (m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), i: int) returns (dst: $1_DiemAccount_WithdrawCapability) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), i: int): $1_DiemAccount_WithdrawCapability {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), index: int)
returns (dst: $Mutation ($1_DiemAccount_WithdrawCapability), m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability)))
{
    var v: Vec ($1_DiemAccount_WithdrawCapability);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), i: int): $1_DiemAccount_WithdrawCapability {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), i: int, j: int) returns (m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability)))
{
    var v: Vec ($1_DiemAccount_WithdrawCapability);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), i: int, j: int): Vec ($1_DiemAccount_WithdrawCapability) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), i: int) returns (e: $1_DiemAccount_WithdrawCapability, m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability)))
{
    var v: Vec ($1_DiemAccount_WithdrawCapability);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_DiemAccount_WithdrawCapability'(m: $Mutation (Vec ($1_DiemAccount_WithdrawCapability)), i: int) returns (e: $1_DiemAccount_WithdrawCapability, m': $Mutation (Vec ($1_DiemAccount_WithdrawCapability)))
{
    var len: int;
    var v: Vec ($1_DiemAccount_WithdrawCapability);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), e: $1_DiemAccount_WithdrawCapability) returns (res: bool)  {
    res := $ContainsVec'$1_DiemAccount_WithdrawCapability'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability), e: $1_DiemAccount_WithdrawCapability) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_DiemAccount_WithdrawCapability'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_DiemSystem_ValidatorInfo`


function {:inline} $IsEqual'vec'$1_DiemSystem_ValidatorInfo''(v1: Vec ($1_DiemSystem_ValidatorInfo), v2: Vec ($1_DiemSystem_ValidatorInfo)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_DiemSystem_ValidatorInfo''(v: Vec ($1_DiemSystem_ValidatorInfo)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_DiemSystem_ValidatorInfo'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemSystem_ValidatorInfo'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo): int;
axiom (forall v: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo:: {$IndexOfVec'$1_DiemSystem_ValidatorInfo'(v, e)}
    (var i := $IndexOfVec'$1_DiemSystem_ValidatorInfo'(v, e);
     if (!$ContainsVec'$1_DiemSystem_ValidatorInfo'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_DiemSystem_ValidatorInfo'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_DiemSystem_ValidatorInfo'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_DiemSystem_ValidatorInfo'(): Vec ($1_DiemSystem_ValidatorInfo) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_DiemSystem_ValidatorInfo'() returns (v: Vec ($1_DiemSystem_ValidatorInfo)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_DiemSystem_ValidatorInfo'(): Vec ($1_DiemSystem_ValidatorInfo) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), val: $1_DiemSystem_ValidatorInfo) returns (m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), val: $1_DiemSystem_ValidatorInfo): Vec ($1_DiemSystem_ValidatorInfo) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) returns (e: $1_DiemSystem_ValidatorInfo, m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) {
    var v: Vec ($1_DiemSystem_ValidatorInfo);
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

procedure {:inline 1} $1_Vector_append'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), other: Vec ($1_DiemSystem_ValidatorInfo)) returns (m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) returns (m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), i: int) returns (dst: $1_DiemSystem_ValidatorInfo) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), i: int): $1_DiemSystem_ValidatorInfo {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), index: int)
returns (dst: $Mutation ($1_DiemSystem_ValidatorInfo), m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo)))
{
    var v: Vec ($1_DiemSystem_ValidatorInfo);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), i: int): $1_DiemSystem_ValidatorInfo {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), i: int, j: int) returns (m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo)))
{
    var v: Vec ($1_DiemSystem_ValidatorInfo);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), i: int, j: int): Vec ($1_DiemSystem_ValidatorInfo) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), i: int) returns (e: $1_DiemSystem_ValidatorInfo, m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo)))
{
    var v: Vec ($1_DiemSystem_ValidatorInfo);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'(m: $Mutation (Vec ($1_DiemSystem_ValidatorInfo)), i: int) returns (e: $1_DiemSystem_ValidatorInfo, m': $Mutation (Vec ($1_DiemSystem_ValidatorInfo)))
{
    var len: int;
    var v: Vec ($1_DiemSystem_ValidatorInfo);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo) returns (res: bool)  {
    res := $ContainsVec'$1_DiemSystem_ValidatorInfo'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_DiemSystem_ValidatorInfo'(v: Vec ($1_DiemSystem_ValidatorInfo), e: $1_DiemSystem_ValidatorInfo) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_DiemSystem_ValidatorInfo'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_VASPDomain_VASPDomain`


function {:inline} $IsEqual'vec'$1_VASPDomain_VASPDomain''(v1: Vec ($1_VASPDomain_VASPDomain), v2: Vec ($1_VASPDomain_VASPDomain)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_VASPDomain_VASPDomain''(v: Vec ($1_VASPDomain_VASPDomain)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_VASPDomain_VASPDomain'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), e: $1_VASPDomain_VASPDomain): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_VASPDomain_VASPDomain'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), e: $1_VASPDomain_VASPDomain): int;
axiom (forall v: Vec ($1_VASPDomain_VASPDomain), e: $1_VASPDomain_VASPDomain:: {$IndexOfVec'$1_VASPDomain_VASPDomain'(v, e)}
    (var i := $IndexOfVec'$1_VASPDomain_VASPDomain'(v, e);
     if (!$ContainsVec'$1_VASPDomain_VASPDomain'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_VASPDomain_VASPDomain'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_VASPDomain_VASPDomain'(): Vec ($1_VASPDomain_VASPDomain) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_VASPDomain_VASPDomain'() returns (v: Vec ($1_VASPDomain_VASPDomain)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_VASPDomain_VASPDomain'(): Vec ($1_VASPDomain_VASPDomain) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), val: $1_VASPDomain_VASPDomain) returns (m': $Mutation (Vec ($1_VASPDomain_VASPDomain))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), val: $1_VASPDomain_VASPDomain): Vec ($1_VASPDomain_VASPDomain) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain))) returns (e: $1_VASPDomain_VASPDomain, m': $Mutation (Vec ($1_VASPDomain_VASPDomain))) {
    var v: Vec ($1_VASPDomain_VASPDomain);
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

procedure {:inline 1} $1_Vector_append'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), other: Vec ($1_VASPDomain_VASPDomain)) returns (m': $Mutation (Vec ($1_VASPDomain_VASPDomain))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain))) returns (m': $Mutation (Vec ($1_VASPDomain_VASPDomain))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), i: int) returns (dst: $1_VASPDomain_VASPDomain) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), i: int): $1_VASPDomain_VASPDomain {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), index: int)
returns (dst: $Mutation ($1_VASPDomain_VASPDomain), m': $Mutation (Vec ($1_VASPDomain_VASPDomain)))
{
    var v: Vec ($1_VASPDomain_VASPDomain);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), i: int): $1_VASPDomain_VASPDomain {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), i: int, j: int) returns (m': $Mutation (Vec ($1_VASPDomain_VASPDomain)))
{
    var v: Vec ($1_VASPDomain_VASPDomain);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), i: int, j: int): Vec ($1_VASPDomain_VASPDomain) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), i: int) returns (e: $1_VASPDomain_VASPDomain, m': $Mutation (Vec ($1_VASPDomain_VASPDomain)))
{
    var v: Vec ($1_VASPDomain_VASPDomain);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_VASPDomain_VASPDomain'(m: $Mutation (Vec ($1_VASPDomain_VASPDomain)), i: int) returns (e: $1_VASPDomain_VASPDomain, m': $Mutation (Vec ($1_VASPDomain_VASPDomain)))
{
    var len: int;
    var v: Vec ($1_VASPDomain_VASPDomain);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), e: $1_VASPDomain_VASPDomain) returns (res: bool)  {
    res := $ContainsVec'$1_VASPDomain_VASPDomain'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain), e: $1_VASPDomain_VASPDomain) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_VASPDomain_VASPDomain'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_ValidatorConfig_Config`


function {:inline} $IsEqual'vec'$1_ValidatorConfig_Config''(v1: Vec ($1_ValidatorConfig_Config), v2: Vec ($1_ValidatorConfig_Config)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_ValidatorConfig_Config''(v: Vec ($1_ValidatorConfig_Config)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_ValidatorConfig_Config'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), e: $1_ValidatorConfig_Config): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_ValidatorConfig_Config'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), e: $1_ValidatorConfig_Config): int;
axiom (forall v: Vec ($1_ValidatorConfig_Config), e: $1_ValidatorConfig_Config:: {$IndexOfVec'$1_ValidatorConfig_Config'(v, e)}
    (var i := $IndexOfVec'$1_ValidatorConfig_Config'(v, e);
     if (!$ContainsVec'$1_ValidatorConfig_Config'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_ValidatorConfig_Config'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_ValidatorConfig_Config'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_ValidatorConfig_Config'(): Vec ($1_ValidatorConfig_Config) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_ValidatorConfig_Config'() returns (v: Vec ($1_ValidatorConfig_Config)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_ValidatorConfig_Config'(): Vec ($1_ValidatorConfig_Config) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), val: $1_ValidatorConfig_Config) returns (m': $Mutation (Vec ($1_ValidatorConfig_Config))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), val: $1_ValidatorConfig_Config): Vec ($1_ValidatorConfig_Config) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config))) returns (e: $1_ValidatorConfig_Config, m': $Mutation (Vec ($1_ValidatorConfig_Config))) {
    var v: Vec ($1_ValidatorConfig_Config);
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

procedure {:inline 1} $1_Vector_append'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), other: Vec ($1_ValidatorConfig_Config)) returns (m': $Mutation (Vec ($1_ValidatorConfig_Config))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config))) returns (m': $Mutation (Vec ($1_ValidatorConfig_Config))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), i: int) returns (dst: $1_ValidatorConfig_Config) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), i: int): $1_ValidatorConfig_Config {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), index: int)
returns (dst: $Mutation ($1_ValidatorConfig_Config), m': $Mutation (Vec ($1_ValidatorConfig_Config)))
{
    var v: Vec ($1_ValidatorConfig_Config);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), i: int): $1_ValidatorConfig_Config {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), i: int, j: int) returns (m': $Mutation (Vec ($1_ValidatorConfig_Config)))
{
    var v: Vec ($1_ValidatorConfig_Config);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), i: int, j: int): Vec ($1_ValidatorConfig_Config) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), i: int) returns (e: $1_ValidatorConfig_Config, m': $Mutation (Vec ($1_ValidatorConfig_Config)))
{
    var v: Vec ($1_ValidatorConfig_Config);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_ValidatorConfig_Config'(m: $Mutation (Vec ($1_ValidatorConfig_Config)), i: int) returns (e: $1_ValidatorConfig_Config, m': $Mutation (Vec ($1_ValidatorConfig_Config)))
{
    var len: int;
    var v: Vec ($1_ValidatorConfig_Config);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), e: $1_ValidatorConfig_Config) returns (res: bool)  {
    res := $ContainsVec'$1_ValidatorConfig_Config'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config), e: $1_ValidatorConfig_Config) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_ValidatorConfig_Config'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_XDX_XDX`


function {:inline} $IsEqual'vec'$1_XDX_XDX''(v1: Vec ($1_XDX_XDX), v2: Vec ($1_XDX_XDX)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_XDX_XDX''(v: Vec ($1_XDX_XDX)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_XDX_XDX'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_XDX_XDX'(v: Vec ($1_XDX_XDX), e: $1_XDX_XDX): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_XDX_XDX'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_XDX_XDX'(v: Vec ($1_XDX_XDX), e: $1_XDX_XDX): int;
axiom (forall v: Vec ($1_XDX_XDX), e: $1_XDX_XDX:: {$IndexOfVec'$1_XDX_XDX'(v, e)}
    (var i := $IndexOfVec'$1_XDX_XDX'(v, e);
     if (!$ContainsVec'$1_XDX_XDX'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_XDX_XDX'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_XDX_XDX'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_XDX_XDX'(v: Vec ($1_XDX_XDX)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_XDX_XDX'(): Vec ($1_XDX_XDX) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_XDX_XDX'() returns (v: Vec ($1_XDX_XDX)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_XDX_XDX'(): Vec ($1_XDX_XDX) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_XDX_XDX'(v: Vec ($1_XDX_XDX)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_XDX_XDX'(m: $Mutation (Vec ($1_XDX_XDX)), val: $1_XDX_XDX) returns (m': $Mutation (Vec ($1_XDX_XDX))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_XDX_XDX'(v: Vec ($1_XDX_XDX), val: $1_XDX_XDX): Vec ($1_XDX_XDX) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_XDX_XDX'(m: $Mutation (Vec ($1_XDX_XDX))) returns (e: $1_XDX_XDX, m': $Mutation (Vec ($1_XDX_XDX))) {
    var v: Vec ($1_XDX_XDX);
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

procedure {:inline 1} $1_Vector_append'$1_XDX_XDX'(m: $Mutation (Vec ($1_XDX_XDX)), other: Vec ($1_XDX_XDX)) returns (m': $Mutation (Vec ($1_XDX_XDX))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_XDX_XDX'(m: $Mutation (Vec ($1_XDX_XDX))) returns (m': $Mutation (Vec ($1_XDX_XDX))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_XDX_XDX'(v: Vec ($1_XDX_XDX)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_XDX_XDX'(v: Vec ($1_XDX_XDX)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_XDX_XDX'(v: Vec ($1_XDX_XDX), i: int) returns (dst: $1_XDX_XDX) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_XDX_XDX'(v: Vec ($1_XDX_XDX), i: int): $1_XDX_XDX {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_XDX_XDX'(m: $Mutation (Vec ($1_XDX_XDX)), index: int)
returns (dst: $Mutation ($1_XDX_XDX), m': $Mutation (Vec ($1_XDX_XDX)))
{
    var v: Vec ($1_XDX_XDX);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_XDX_XDX'(v: Vec ($1_XDX_XDX), i: int): $1_XDX_XDX {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_XDX_XDX'(v: Vec ($1_XDX_XDX)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_XDX_XDX'(m: $Mutation (Vec ($1_XDX_XDX)), i: int, j: int) returns (m': $Mutation (Vec ($1_XDX_XDX)))
{
    var v: Vec ($1_XDX_XDX);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_XDX_XDX'(v: Vec ($1_XDX_XDX), i: int, j: int): Vec ($1_XDX_XDX) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_XDX_XDX'(m: $Mutation (Vec ($1_XDX_XDX)), i: int) returns (e: $1_XDX_XDX, m': $Mutation (Vec ($1_XDX_XDX)))
{
    var v: Vec ($1_XDX_XDX);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_XDX_XDX'(m: $Mutation (Vec ($1_XDX_XDX)), i: int) returns (e: $1_XDX_XDX, m': $Mutation (Vec ($1_XDX_XDX)))
{
    var len: int;
    var v: Vec ($1_XDX_XDX);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_XDX_XDX'(v: Vec ($1_XDX_XDX), e: $1_XDX_XDX) returns (res: bool)  {
    res := $ContainsVec'$1_XDX_XDX'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_XDX_XDX'(v: Vec ($1_XDX_XDX), e: $1_XDX_XDX) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_XDX_XDX'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `$1_XUS_XUS`


function {:inline} $IsEqual'vec'$1_XUS_XUS''(v1: Vec ($1_XUS_XUS), v2: Vec ($1_XUS_XUS)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'$1_XUS_XUS''(v: Vec ($1_XUS_XUS)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'$1_XUS_XUS'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'$1_XUS_XUS'(v: Vec ($1_XUS_XUS), e: $1_XUS_XUS): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_XUS_XUS'(ReadVec(v, i), e))
}

function $IndexOfVec'$1_XUS_XUS'(v: Vec ($1_XUS_XUS), e: $1_XUS_XUS): int;
axiom (forall v: Vec ($1_XUS_XUS), e: $1_XUS_XUS:: {$IndexOfVec'$1_XUS_XUS'(v, e)}
    (var i := $IndexOfVec'$1_XUS_XUS'(v, e);
     if (!$ContainsVec'$1_XUS_XUS'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'$1_XUS_XUS'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'$1_XUS_XUS'(ReadVec(v, j), e))));


function {:inline} $RangeVec'$1_XUS_XUS'(v: Vec ($1_XUS_XUS)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'$1_XUS_XUS'(): Vec ($1_XUS_XUS) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'$1_XUS_XUS'() returns (v: Vec ($1_XUS_XUS)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'$1_XUS_XUS'(): Vec ($1_XUS_XUS) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'$1_XUS_XUS'(v: Vec ($1_XUS_XUS)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'$1_XUS_XUS'(m: $Mutation (Vec ($1_XUS_XUS)), val: $1_XUS_XUS) returns (m': $Mutation (Vec ($1_XUS_XUS))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'$1_XUS_XUS'(v: Vec ($1_XUS_XUS), val: $1_XUS_XUS): Vec ($1_XUS_XUS) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'$1_XUS_XUS'(m: $Mutation (Vec ($1_XUS_XUS))) returns (e: $1_XUS_XUS, m': $Mutation (Vec ($1_XUS_XUS))) {
    var v: Vec ($1_XUS_XUS);
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

procedure {:inline 1} $1_Vector_append'$1_XUS_XUS'(m: $Mutation (Vec ($1_XUS_XUS)), other: Vec ($1_XUS_XUS)) returns (m': $Mutation (Vec ($1_XUS_XUS))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'$1_XUS_XUS'(m: $Mutation (Vec ($1_XUS_XUS))) returns (m': $Mutation (Vec ($1_XUS_XUS))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'$1_XUS_XUS'(v: Vec ($1_XUS_XUS)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'$1_XUS_XUS'(v: Vec ($1_XUS_XUS)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'$1_XUS_XUS'(v: Vec ($1_XUS_XUS), i: int) returns (dst: $1_XUS_XUS) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'$1_XUS_XUS'(v: Vec ($1_XUS_XUS), i: int): $1_XUS_XUS {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'$1_XUS_XUS'(m: $Mutation (Vec ($1_XUS_XUS)), index: int)
returns (dst: $Mutation ($1_XUS_XUS), m': $Mutation (Vec ($1_XUS_XUS)))
{
    var v: Vec ($1_XUS_XUS);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'$1_XUS_XUS'(v: Vec ($1_XUS_XUS), i: int): $1_XUS_XUS {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'$1_XUS_XUS'(v: Vec ($1_XUS_XUS)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'$1_XUS_XUS'(m: $Mutation (Vec ($1_XUS_XUS)), i: int, j: int) returns (m': $Mutation (Vec ($1_XUS_XUS)))
{
    var v: Vec ($1_XUS_XUS);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'$1_XUS_XUS'(v: Vec ($1_XUS_XUS), i: int, j: int): Vec ($1_XUS_XUS) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'$1_XUS_XUS'(m: $Mutation (Vec ($1_XUS_XUS)), i: int) returns (e: $1_XUS_XUS, m': $Mutation (Vec ($1_XUS_XUS)))
{
    var v: Vec ($1_XUS_XUS);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'$1_XUS_XUS'(m: $Mutation (Vec ($1_XUS_XUS)), i: int) returns (e: $1_XUS_XUS, m': $Mutation (Vec ($1_XUS_XUS)))
{
    var len: int;
    var v: Vec ($1_XUS_XUS);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'$1_XUS_XUS'(v: Vec ($1_XUS_XUS), e: $1_XUS_XUS) returns (res: bool)  {
    res := $ContainsVec'$1_XUS_XUS'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'$1_XUS_XUS'(v: Vec ($1_XUS_XUS), e: $1_XUS_XUS) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'$1_XUS_XUS'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `vec'u8'`


function {:inline} $IsEqual'vec'vec'u8'''(v1: Vec (Vec (int)), v2: Vec (Vec (int))): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'vec'u8'''(v: Vec (Vec (int))): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'vec'u8''(ReadVec(v, i)))
}


function {:inline} $ContainsVec'vec'u8''(v: Vec (Vec (int)), e: Vec (int)): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'vec'u8''(ReadVec(v, i), e))
}

function $IndexOfVec'vec'u8''(v: Vec (Vec (int)), e: Vec (int)): int;
axiom (forall v: Vec (Vec (int)), e: Vec (int):: {$IndexOfVec'vec'u8''(v, e)}
    (var i := $IndexOfVec'vec'u8''(v, e);
     if (!$ContainsVec'vec'u8''(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'vec'u8''(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'vec'u8''(ReadVec(v, j), e))));


function {:inline} $RangeVec'vec'u8''(v: Vec (Vec (int))): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'vec'u8''(): Vec (Vec (int)) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'vec'u8''() returns (v: Vec (Vec (int))) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'vec'u8''(): Vec (Vec (int)) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'vec'u8''(v: Vec (Vec (int))) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'vec'u8''(m: $Mutation (Vec (Vec (int))), val: Vec (int)) returns (m': $Mutation (Vec (Vec (int)))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'vec'u8''(v: Vec (Vec (int)), val: Vec (int)): Vec (Vec (int)) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'vec'u8''(m: $Mutation (Vec (Vec (int)))) returns (e: Vec (int), m': $Mutation (Vec (Vec (int)))) {
    var v: Vec (Vec (int));
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

procedure {:inline 1} $1_Vector_append'vec'u8''(m: $Mutation (Vec (Vec (int))), other: Vec (Vec (int))) returns (m': $Mutation (Vec (Vec (int)))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'vec'u8''(m: $Mutation (Vec (Vec (int)))) returns (m': $Mutation (Vec (Vec (int)))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'vec'u8''(v: Vec (Vec (int))) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'vec'u8''(v: Vec (Vec (int))): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'vec'u8''(v: Vec (Vec (int)), i: int) returns (dst: Vec (int)) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'vec'u8''(v: Vec (Vec (int)), i: int): Vec (int) {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'vec'u8''(m: $Mutation (Vec (Vec (int))), index: int)
returns (dst: $Mutation (Vec (int)), m': $Mutation (Vec (Vec (int))))
{
    var v: Vec (Vec (int));
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'vec'u8''(v: Vec (Vec (int)), i: int): Vec (int) {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'vec'u8''(v: Vec (Vec (int))) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'vec'u8''(m: $Mutation (Vec (Vec (int))), i: int, j: int) returns (m': $Mutation (Vec (Vec (int))))
{
    var v: Vec (Vec (int));
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'vec'u8''(v: Vec (Vec (int)), i: int, j: int): Vec (Vec (int)) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'vec'u8''(m: $Mutation (Vec (Vec (int))), i: int) returns (e: Vec (int), m': $Mutation (Vec (Vec (int))))
{
    var v: Vec (Vec (int));

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'vec'u8''(m: $Mutation (Vec (Vec (int))), i: int) returns (e: Vec (int), m': $Mutation (Vec (Vec (int))))
{
    var len: int;
    var v: Vec (Vec (int));

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'vec'u8''(v: Vec (Vec (int)), e: Vec (int)) returns (res: bool)  {
    res := $ContainsVec'vec'u8''(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'vec'u8''(v: Vec (Vec (int)), e: Vec (int)) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'vec'u8''(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `bool`


function {:inline} $IsEqual'vec'bool''(v1: Vec (bool), v2: Vec (bool)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'bool''(v: Vec (bool)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'bool'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'bool'(v: Vec (bool), e: bool): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'bool'(ReadVec(v, i), e))
}

function $IndexOfVec'bool'(v: Vec (bool), e: bool): int;
axiom (forall v: Vec (bool), e: bool:: {$IndexOfVec'bool'(v, e)}
    (var i := $IndexOfVec'bool'(v, e);
     if (!$ContainsVec'bool'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'bool'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'bool'(ReadVec(v, j), e))));


function {:inline} $RangeVec'bool'(v: Vec (bool)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'bool'(): Vec (bool) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'bool'() returns (v: Vec (bool)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'bool'(): Vec (bool) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'bool'(v: Vec (bool)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'bool'(m: $Mutation (Vec (bool)), val: bool) returns (m': $Mutation (Vec (bool))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'bool'(v: Vec (bool), val: bool): Vec (bool) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'bool'(m: $Mutation (Vec (bool))) returns (e: bool, m': $Mutation (Vec (bool))) {
    var v: Vec (bool);
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

procedure {:inline 1} $1_Vector_append'bool'(m: $Mutation (Vec (bool)), other: Vec (bool)) returns (m': $Mutation (Vec (bool))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'bool'(m: $Mutation (Vec (bool))) returns (m': $Mutation (Vec (bool))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'bool'(v: Vec (bool)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'bool'(v: Vec (bool)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'bool'(v: Vec (bool), i: int) returns (dst: bool) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'bool'(v: Vec (bool), i: int): bool {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'bool'(m: $Mutation (Vec (bool)), index: int)
returns (dst: $Mutation (bool), m': $Mutation (Vec (bool)))
{
    var v: Vec (bool);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'bool'(v: Vec (bool), i: int): bool {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'bool'(v: Vec (bool)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'bool'(m: $Mutation (Vec (bool)), i: int, j: int) returns (m': $Mutation (Vec (bool)))
{
    var v: Vec (bool);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'bool'(v: Vec (bool), i: int, j: int): Vec (bool) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'bool'(m: $Mutation (Vec (bool)), i: int) returns (e: bool, m': $Mutation (Vec (bool)))
{
    var v: Vec (bool);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'bool'(m: $Mutation (Vec (bool)), i: int) returns (e: bool, m': $Mutation (Vec (bool)))
{
    var len: int;
    var v: Vec (bool);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'bool'(v: Vec (bool), e: bool) returns (res: bool)  {
    res := $ContainsVec'bool'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'bool'(v: Vec (bool), e: bool) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'bool'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `address`


function {:inline} $IsEqual'vec'address''(v1: Vec (int), v2: Vec (int)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'address''(v: Vec (int)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'address'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'address'(v: Vec (int), e: int): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'address'(ReadVec(v, i), e))
}

function $IndexOfVec'address'(v: Vec (int), e: int): int;
axiom (forall v: Vec (int), e: int:: {$IndexOfVec'address'(v, e)}
    (var i := $IndexOfVec'address'(v, e);
     if (!$ContainsVec'address'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'address'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'address'(ReadVec(v, j), e))));


function {:inline} $RangeVec'address'(v: Vec (int)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'address'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'address'() returns (v: Vec (int)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'address'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'address'(v: Vec (int)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'address'(m: $Mutation (Vec (int)), val: int) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'address'(v: Vec (int), val: int): Vec (int) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'address'(m: $Mutation (Vec (int))) returns (e: int, m': $Mutation (Vec (int))) {
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

procedure {:inline 1} $1_Vector_append'address'(m: $Mutation (Vec (int)), other: Vec (int)) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'address'(m: $Mutation (Vec (int))) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'address'(v: Vec (int)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'address'(v: Vec (int)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'address'(v: Vec (int), i: int) returns (dst: int) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'address'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'address'(m: $Mutation (Vec (int)), index: int)
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

function {:inline} $1_Vector_$borrow_mut'address'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'address'(v: Vec (int)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'address'(m: $Mutation (Vec (int)), i: int, j: int) returns (m': $Mutation (Vec (int)))
{
    var v: Vec (int);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'address'(v: Vec (int), i: int, j: int): Vec (int) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'address'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
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

procedure {:inline 1} $1_Vector_swap_remove'address'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
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

procedure {:inline 1} $1_Vector_contains'address'(v: Vec (int), e: int) returns (res: bool)  {
    res := $ContainsVec'address'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'address'(v: Vec (int), e: int) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'address'(v, e);
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

function {:inline} $1_Signer_is_txn_signer(s: $signer): bool;

function {:inline} $1_Signer_is_txn_signer_addr(a: int): bool;


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




// Publishing a generator does nothing. Currently we just ignore this function and do not represent generators
// at all because they are not publicly exposed by the Event module.
// TODO: we should check (and abort with the right code) if a generator already exists for
// the signer.

procedure {:inline 1} $1_Event_publish_generator(signer: $signer) {
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
// Native Event implementation for element type `$1_AccountFreezing_FreezeAccountEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''(a: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent', b: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''(h: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent'): bool {
    true
}

// Embed event `$1_AccountFreezing_FreezeAccountEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(e: $1_AccountFreezing_FreezeAccountEvent): $EventRep;
axiom (forall v1, v2: $1_AccountFreezing_FreezeAccountEvent :: {$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(v1), $ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(v2)}
    $IsEqual'$1_AccountFreezing_FreezeAccountEvent'(v1, v2) <==> $ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(v1) == $ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_AccountFreezing_FreezeAccountEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent', msg: $1_AccountFreezing_FreezeAccountEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent') {
    var handle: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_AccountFreezing_FreezeAccountEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_AccountFreezing_FreezeAccountEvent'(handle: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent') {
}

function {:inline} $ExtendEventStore'$1_AccountFreezing_FreezeAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent', msg: $1_AccountFreezing_FreezeAccountEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_AccountFreezing_FreezeAccountEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_AccountFreezing_FreezeAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent', msg: $1_AccountFreezing_FreezeAccountEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_AccountFreezing_FreezeAccountEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_AccountFreezing_UnfreezeAccountEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''(a: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent', b: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''(h: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent'): bool {
    true
}

// Embed event `$1_AccountFreezing_UnfreezeAccountEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(e: $1_AccountFreezing_UnfreezeAccountEvent): $EventRep;
axiom (forall v1, v2: $1_AccountFreezing_UnfreezeAccountEvent :: {$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(v1), $ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(v2)}
    $IsEqual'$1_AccountFreezing_UnfreezeAccountEvent'(v1, v2) <==> $ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(v1) == $ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_AccountFreezing_UnfreezeAccountEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent', msg: $1_AccountFreezing_UnfreezeAccountEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent') {
    var handle: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_AccountFreezing_UnfreezeAccountEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_AccountFreezing_UnfreezeAccountEvent'(handle: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent') {
}

function {:inline} $ExtendEventStore'$1_AccountFreezing_UnfreezeAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent', msg: $1_AccountFreezing_UnfreezeAccountEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_AccountFreezing_UnfreezeAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent', msg: $1_AccountFreezing_UnfreezeAccountEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_AccountFreezing_UnfreezeAccountEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DesignatedDealer_ReceivedMintEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''(a: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent', b: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''(h: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent'): bool {
    true
}

// Embed event `$1_DesignatedDealer_ReceivedMintEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(e: $1_DesignatedDealer_ReceivedMintEvent): $EventRep;
axiom (forall v1, v2: $1_DesignatedDealer_ReceivedMintEvent :: {$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(v1), $ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(v2)}
    $IsEqual'$1_DesignatedDealer_ReceivedMintEvent'(v1, v2) <==> $ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(v1) == $ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent', msg: $1_DesignatedDealer_ReceivedMintEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent') {
    var handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DesignatedDealer_ReceivedMintEvent'(handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent') {
}

function {:inline} $ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent', msg: $1_DesignatedDealer_ReceivedMintEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent', msg: $1_DesignatedDealer_ReceivedMintEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DesignatedDealer_ReceivedMintEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemAccount_AdminTransactionEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''(a: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent', b: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''(h: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent'): bool {
    true
}

// Embed event `$1_DiemAccount_AdminTransactionEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemAccount_AdminTransactionEvent'(e: $1_DiemAccount_AdminTransactionEvent): $EventRep;
axiom (forall v1, v2: $1_DiemAccount_AdminTransactionEvent :: {$ToEventRep'$1_DiemAccount_AdminTransactionEvent'(v1), $ToEventRep'$1_DiemAccount_AdminTransactionEvent'(v2)}
    $IsEqual'$1_DiemAccount_AdminTransactionEvent'(v1, v2) <==> $ToEventRep'$1_DiemAccount_AdminTransactionEvent'(v1) == $ToEventRep'$1_DiemAccount_AdminTransactionEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemAccount_AdminTransactionEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent', msg: $1_DiemAccount_AdminTransactionEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent') {
    var handle: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemAccount_AdminTransactionEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemAccount_AdminTransactionEvent'(handle: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemAccount_AdminTransactionEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent', msg: $1_DiemAccount_AdminTransactionEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemAccount_AdminTransactionEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemAccount_AdminTransactionEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent', msg: $1_DiemAccount_AdminTransactionEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemAccount_AdminTransactionEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemAccount_CreateAccountEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''(a: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent', b: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''(h: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent'): bool {
    true
}

// Embed event `$1_DiemAccount_CreateAccountEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemAccount_CreateAccountEvent'(e: $1_DiemAccount_CreateAccountEvent): $EventRep;
axiom (forall v1, v2: $1_DiemAccount_CreateAccountEvent :: {$ToEventRep'$1_DiemAccount_CreateAccountEvent'(v1), $ToEventRep'$1_DiemAccount_CreateAccountEvent'(v2)}
    $IsEqual'$1_DiemAccount_CreateAccountEvent'(v1, v2) <==> $ToEventRep'$1_DiemAccount_CreateAccountEvent'(v1) == $ToEventRep'$1_DiemAccount_CreateAccountEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemAccount_CreateAccountEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent', msg: $1_DiemAccount_CreateAccountEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent') {
    var handle: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemAccount_CreateAccountEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemAccount_CreateAccountEvent'(handle: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemAccount_CreateAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent', msg: $1_DiemAccount_CreateAccountEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemAccount_CreateAccountEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemAccount_CreateAccountEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent', msg: $1_DiemAccount_CreateAccountEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemAccount_CreateAccountEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemAccount_ReceivedPaymentEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''(a: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent', b: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''(h: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent'): bool {
    true
}

// Embed event `$1_DiemAccount_ReceivedPaymentEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(e: $1_DiemAccount_ReceivedPaymentEvent): $EventRep;
axiom (forall v1, v2: $1_DiemAccount_ReceivedPaymentEvent :: {$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(v1), $ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(v2)}
    $IsEqual'$1_DiemAccount_ReceivedPaymentEvent'(v1, v2) <==> $ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(v1) == $ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_ReceivedPaymentEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemAccount_ReceivedPaymentEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent', msg: $1_DiemAccount_ReceivedPaymentEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent') {
    var handle: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemAccount_ReceivedPaymentEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemAccount_ReceivedPaymentEvent'(handle: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemAccount_ReceivedPaymentEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent', msg: $1_DiemAccount_ReceivedPaymentEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemAccount_ReceivedPaymentEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent', msg: $1_DiemAccount_ReceivedPaymentEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemAccount_ReceivedPaymentEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemAccount_SentPaymentEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''(a: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent', b: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''(h: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent'): bool {
    true
}

// Embed event `$1_DiemAccount_SentPaymentEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemAccount_SentPaymentEvent'(e: $1_DiemAccount_SentPaymentEvent): $EventRep;
axiom (forall v1, v2: $1_DiemAccount_SentPaymentEvent :: {$ToEventRep'$1_DiemAccount_SentPaymentEvent'(v1), $ToEventRep'$1_DiemAccount_SentPaymentEvent'(v2)}
    $IsEqual'$1_DiemAccount_SentPaymentEvent'(v1, v2) <==> $ToEventRep'$1_DiemAccount_SentPaymentEvent'(v1) == $ToEventRep'$1_DiemAccount_SentPaymentEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemAccount_SentPaymentEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemAccount_SentPaymentEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent', msg: $1_DiemAccount_SentPaymentEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent') {
    var handle: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemAccount_SentPaymentEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemAccount_SentPaymentEvent'(handle: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemAccount_SentPaymentEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent', msg: $1_DiemAccount_SentPaymentEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemAccount_SentPaymentEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemAccount_SentPaymentEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent', msg: $1_DiemAccount_SentPaymentEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemAccount_SentPaymentEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemBlock_NewBlockEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''(a: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent', b: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''(h: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent'): bool {
    true
}

// Embed event `$1_DiemBlock_NewBlockEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemBlock_NewBlockEvent'(e: $1_DiemBlock_NewBlockEvent): $EventRep;
axiom (forall v1, v2: $1_DiemBlock_NewBlockEvent :: {$ToEventRep'$1_DiemBlock_NewBlockEvent'(v1), $ToEventRep'$1_DiemBlock_NewBlockEvent'(v2)}
    $IsEqual'$1_DiemBlock_NewBlockEvent'(v1, v2) <==> $ToEventRep'$1_DiemBlock_NewBlockEvent'(v1) == $ToEventRep'$1_DiemBlock_NewBlockEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemBlock_NewBlockEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemBlock_NewBlockEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent', msg: $1_DiemBlock_NewBlockEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent') {
    var handle: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemBlock_NewBlockEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemBlock_NewBlockEvent'(handle: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemBlock_NewBlockEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent', msg: $1_DiemBlock_NewBlockEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemBlock_NewBlockEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemBlock_NewBlockEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent', msg: $1_DiemBlock_NewBlockEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemBlock_NewBlockEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DiemConfig_NewEpochEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''(a: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent', b: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''(h: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent'): bool {
    true
}

// Embed event `$1_DiemConfig_NewEpochEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DiemConfig_NewEpochEvent'(e: $1_DiemConfig_NewEpochEvent): $EventRep;
axiom (forall v1, v2: $1_DiemConfig_NewEpochEvent :: {$ToEventRep'$1_DiemConfig_NewEpochEvent'(v1), $ToEventRep'$1_DiemConfig_NewEpochEvent'(v2)}
    $IsEqual'$1_DiemConfig_NewEpochEvent'(v1, v2) <==> $ToEventRep'$1_DiemConfig_NewEpochEvent'(v1) == $ToEventRep'$1_DiemConfig_NewEpochEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DiemConfig_NewEpochEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent', msg: $1_DiemConfig_NewEpochEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent') {
    var handle: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DiemConfig_NewEpochEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DiemConfig_NewEpochEvent'(handle: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent') {
}

function {:inline} $ExtendEventStore'$1_DiemConfig_NewEpochEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent', msg: $1_DiemConfig_NewEpochEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DiemConfig_NewEpochEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DiemConfig_NewEpochEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent', msg: $1_DiemConfig_NewEpochEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DiemConfig_NewEpochEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_Diem_BurnEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_Diem_BurnEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_Diem_BurnEvent''(a: $1_Event_EventHandle'$1_Diem_BurnEvent', b: $1_Event_EventHandle'$1_Diem_BurnEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''(h: $1_Event_EventHandle'$1_Diem_BurnEvent'): bool {
    true
}

// Embed event `$1_Diem_BurnEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_Diem_BurnEvent'(e: $1_Diem_BurnEvent): $EventRep;
axiom (forall v1, v2: $1_Diem_BurnEvent :: {$ToEventRep'$1_Diem_BurnEvent'(v1), $ToEventRep'$1_Diem_BurnEvent'(v2)}
    $IsEqual'$1_Diem_BurnEvent'(v1, v2) <==> $ToEventRep'$1_Diem_BurnEvent'(v1) == $ToEventRep'$1_Diem_BurnEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_BurnEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_Diem_BurnEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_Diem_BurnEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_Diem_BurnEvent', msg: $1_Diem_BurnEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_Diem_BurnEvent') {
    var handle: $1_Event_EventHandle'$1_Diem_BurnEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_Diem_BurnEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_Diem_BurnEvent'(handle: $1_Event_EventHandle'$1_Diem_BurnEvent') {
}

function {:inline} $ExtendEventStore'$1_Diem_BurnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_BurnEvent', msg: $1_Diem_BurnEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_Diem_BurnEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_Diem_BurnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_BurnEvent', msg: $1_Diem_BurnEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_Diem_BurnEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_Diem_CancelBurnEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_Diem_CancelBurnEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''(a: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', b: $1_Event_EventHandle'$1_Diem_CancelBurnEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''(h: $1_Event_EventHandle'$1_Diem_CancelBurnEvent'): bool {
    true
}

// Embed event `$1_Diem_CancelBurnEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_Diem_CancelBurnEvent'(e: $1_Diem_CancelBurnEvent): $EventRep;
axiom (forall v1, v2: $1_Diem_CancelBurnEvent :: {$ToEventRep'$1_Diem_CancelBurnEvent'(v1), $ToEventRep'$1_Diem_CancelBurnEvent'(v2)}
    $IsEqual'$1_Diem_CancelBurnEvent'(v1, v2) <==> $ToEventRep'$1_Diem_CancelBurnEvent'(v1) == $ToEventRep'$1_Diem_CancelBurnEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_CancelBurnEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_Diem_CancelBurnEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_Diem_CancelBurnEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_Diem_CancelBurnEvent', msg: $1_Diem_CancelBurnEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_Diem_CancelBurnEvent') {
    var handle: $1_Event_EventHandle'$1_Diem_CancelBurnEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_Diem_CancelBurnEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_Diem_CancelBurnEvent'(handle: $1_Event_EventHandle'$1_Diem_CancelBurnEvent') {
}

function {:inline} $ExtendEventStore'$1_Diem_CancelBurnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', msg: $1_Diem_CancelBurnEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_Diem_CancelBurnEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_Diem_CancelBurnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', msg: $1_Diem_CancelBurnEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_Diem_CancelBurnEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_Diem_MintEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_Diem_MintEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_Diem_MintEvent''(a: $1_Event_EventHandle'$1_Diem_MintEvent', b: $1_Event_EventHandle'$1_Diem_MintEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''(h: $1_Event_EventHandle'$1_Diem_MintEvent'): bool {
    true
}

// Embed event `$1_Diem_MintEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_Diem_MintEvent'(e: $1_Diem_MintEvent): $EventRep;
axiom (forall v1, v2: $1_Diem_MintEvent :: {$ToEventRep'$1_Diem_MintEvent'(v1), $ToEventRep'$1_Diem_MintEvent'(v2)}
    $IsEqual'$1_Diem_MintEvent'(v1, v2) <==> $ToEventRep'$1_Diem_MintEvent'(v1) == $ToEventRep'$1_Diem_MintEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_MintEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_Diem_MintEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_Diem_MintEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_Diem_MintEvent', msg: $1_Diem_MintEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_Diem_MintEvent') {
    var handle: $1_Event_EventHandle'$1_Diem_MintEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_Diem_MintEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_Diem_MintEvent'(handle: $1_Event_EventHandle'$1_Diem_MintEvent') {
}

function {:inline} $ExtendEventStore'$1_Diem_MintEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_MintEvent', msg: $1_Diem_MintEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_Diem_MintEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_Diem_MintEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_MintEvent', msg: $1_Diem_MintEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_Diem_MintEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_Diem_PreburnEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_Diem_PreburnEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_Diem_PreburnEvent''(a: $1_Event_EventHandle'$1_Diem_PreburnEvent', b: $1_Event_EventHandle'$1_Diem_PreburnEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''(h: $1_Event_EventHandle'$1_Diem_PreburnEvent'): bool {
    true
}

// Embed event `$1_Diem_PreburnEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_Diem_PreburnEvent'(e: $1_Diem_PreburnEvent): $EventRep;
axiom (forall v1, v2: $1_Diem_PreburnEvent :: {$ToEventRep'$1_Diem_PreburnEvent'(v1), $ToEventRep'$1_Diem_PreburnEvent'(v2)}
    $IsEqual'$1_Diem_PreburnEvent'(v1, v2) <==> $ToEventRep'$1_Diem_PreburnEvent'(v1) == $ToEventRep'$1_Diem_PreburnEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_PreburnEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_Diem_PreburnEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_Diem_PreburnEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_Diem_PreburnEvent', msg: $1_Diem_PreburnEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_Diem_PreburnEvent') {
    var handle: $1_Event_EventHandle'$1_Diem_PreburnEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_Diem_PreburnEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_Diem_PreburnEvent'(handle: $1_Event_EventHandle'$1_Diem_PreburnEvent') {
}

function {:inline} $ExtendEventStore'$1_Diem_PreburnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_PreburnEvent', msg: $1_Diem_PreburnEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_Diem_PreburnEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_Diem_PreburnEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_PreburnEvent', msg: $1_Diem_PreburnEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_Diem_PreburnEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_Diem_ToXDXExchangeRateUpdateEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''(a: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent', b: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''(h: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): bool {
    true
}

// Embed event `$1_Diem_ToXDXExchangeRateUpdateEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(e: $1_Diem_ToXDXExchangeRateUpdateEvent): $EventRep;
axiom (forall v1, v2: $1_Diem_ToXDXExchangeRateUpdateEvent :: {$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(v1), $ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(v2)}
    $IsEqual'$1_Diem_ToXDXExchangeRateUpdateEvent'(v1, v2) <==> $ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(v1) == $ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_Diem_ToXDXExchangeRateUpdateEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent', msg: $1_Diem_ToXDXExchangeRateUpdateEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent') {
    var handle: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_Diem_ToXDXExchangeRateUpdateEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'(handle: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent') {
}

function {:inline} $ExtendEventStore'$1_Diem_ToXDXExchangeRateUpdateEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent', msg: $1_Diem_ToXDXExchangeRateUpdateEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_Diem_ToXDXExchangeRateUpdateEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent', msg: $1_Diem_ToXDXExchangeRateUpdateEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_Diem_ToXDXExchangeRateUpdateEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DualAttestation_BaseUrlRotationEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''(a: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent', b: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''(h: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent'): bool {
    true
}

// Embed event `$1_DualAttestation_BaseUrlRotationEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(e: $1_DualAttestation_BaseUrlRotationEvent): $EventRep;
axiom (forall v1, v2: $1_DualAttestation_BaseUrlRotationEvent :: {$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(v1), $ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(v2)}
    $IsEqual'$1_DualAttestation_BaseUrlRotationEvent'(v1, v2) <==> $ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(v1) == $ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DualAttestation_BaseUrlRotationEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent', msg: $1_DualAttestation_BaseUrlRotationEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent') {
    var handle: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DualAttestation_BaseUrlRotationEvent'(handle: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent') {
}

function {:inline} $ExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent', msg: $1_DualAttestation_BaseUrlRotationEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent', msg: $1_DualAttestation_BaseUrlRotationEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_DualAttestation_ComplianceKeyRotationEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''(a: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent', b: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''(h: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent'): bool {
    true
}

// Embed event `$1_DualAttestation_ComplianceKeyRotationEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(e: $1_DualAttestation_ComplianceKeyRotationEvent): $EventRep;
axiom (forall v1, v2: $1_DualAttestation_ComplianceKeyRotationEvent :: {$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(v1), $ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(v2)}
    $IsEqual'$1_DualAttestation_ComplianceKeyRotationEvent'(v1, v2) <==> $ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(v1) == $ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_DualAttestation_ComplianceKeyRotationEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent', msg: $1_DualAttestation_ComplianceKeyRotationEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent') {
    var handle: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_DualAttestation_ComplianceKeyRotationEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_DualAttestation_ComplianceKeyRotationEvent'(handle: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent') {
}

function {:inline} $ExtendEventStore'$1_DualAttestation_ComplianceKeyRotationEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent', msg: $1_DualAttestation_ComplianceKeyRotationEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_DualAttestation_ComplianceKeyRotationEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent', msg: $1_DualAttestation_ComplianceKeyRotationEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_DualAttestation_ComplianceKeyRotationEvent'(es, handle, msg)
    else
        es
}


// ----------------------------------------------------------------------------------
// Native Event implementation for element type `$1_VASPDomain_VASPDomainEvent`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''(a: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent', b: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''(h: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent'): bool {
    true
}

// Embed event `$1_VASPDomain_VASPDomainEvent` into universal $EventRep
function {:constructor} $ToEventRep'$1_VASPDomain_VASPDomainEvent'(e: $1_VASPDomain_VASPDomainEvent): $EventRep;
axiom (forall v1, v2: $1_VASPDomain_VASPDomainEvent :: {$ToEventRep'$1_VASPDomain_VASPDomainEvent'(v1), $ToEventRep'$1_VASPDomain_VASPDomainEvent'(v2)}
    $IsEqual'$1_VASPDomain_VASPDomainEvent'(v1, v2) <==> $ToEventRep'$1_VASPDomain_VASPDomainEvent'(v1) == $ToEventRep'$1_VASPDomain_VASPDomainEvent'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'(signer: $signer) returns (res: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'(handle_mut: $Mutation $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent', msg: $1_VASPDomain_VASPDomainEvent)
returns (res: $Mutation $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent') {
    var handle: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_VASPDomain_VASPDomainEvent'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_VASPDomain_VASPDomainEvent'(handle: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent') {
}

function {:inline} $ExtendEventStore'$1_VASPDomain_VASPDomainEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent', msg: $1_VASPDomain_VASPDomainEvent): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_VASPDomain_VASPDomainEvent'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_VASPDomain_VASPDomainEvent'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent', msg: $1_VASPDomain_VASPDomainEvent, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_VASPDomain_VASPDomainEvent'(es, handle, msg)
    else
        es
}




//==================================
// Begin Translation



// Given Types for Type Parameters

type #0;
function {:inline} $IsEqual'#0'(x1: #0, x2: #0): bool { x1 == x2 }
function {:inline} $IsValid'#0'(x: #0): bool { true }

// spec fun at /home/ying/diem/language/move-stdlib/modules/Signer.move:12:5+77
function {:inline} $1_Signer_$address_of(s: $signer): int {
    $1_Signer_$borrow_address(s)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:158:5+90
function {:inline} $1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:120:10+104
function {:inline} $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): int {
    $microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:133:10+125
function {:inline} $1_DiemTimestamp_spec_now_seconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): int {
    ($microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816)) div 1000000)
}

// struct DiemTimestamp::CurrentTimeMicroseconds at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:20:5+73
type {:datatype} $1_DiemTimestamp_CurrentTimeMicroseconds;
function {:constructor} $1_DiemTimestamp_CurrentTimeMicroseconds($microseconds: int): $1_DiemTimestamp_CurrentTimeMicroseconds;
function {:inline} $Update'$1_DiemTimestamp_CurrentTimeMicroseconds'_microseconds(s: $1_DiemTimestamp_CurrentTimeMicroseconds, x: int): $1_DiemTimestamp_CurrentTimeMicroseconds {
    $1_DiemTimestamp_CurrentTimeMicroseconds(x)
}
function $IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'(s: $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    $IsValid'u64'($microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds(s))
}
function {:inline} $IsEqual'$1_DiemTimestamp_CurrentTimeMicroseconds'(s1: $1_DiemTimestamp_CurrentTimeMicroseconds, s2: $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    s1 == s2
}
var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:230:5+394
function {:inline} $1_Roles_$can_hold_balance($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, account: $signer): bool {
    (($1_Roles_$has_parent_VASP_role($1_Roles_RoleId_$memory, account) || $1_Roles_$has_child_VASP_role($1_Roles_RoleId_$memory, account)) || $1_Roles_$has_designated_dealer_role($1_Roles_RoleId_$memory, account))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:220:5+124
function {:inline} $1_Roles_$has_child_VASP_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, account: $signer): bool {
    $1_Roles_$has_role($1_Roles_RoleId_$memory, account, 6)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:204:5+138
function {:inline} $1_Roles_$has_designated_dealer_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, account: $signer): bool {
    $1_Roles_$has_role($1_Roles_RoleId_$memory, account, 2)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:196:5+122
function {:inline} $1_Roles_$has_diem_root_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, account: $signer): bool {
    $1_Roles_$has_role($1_Roles_RoleId_$memory, account, 0)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:216:5+126
function {:inline} $1_Roles_$has_parent_VASP_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, account: $signer): bool {
    $1_Roles_$has_role($1_Roles_RoleId_$memory, account, 5)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:190:5+210
function {:inline} $1_Roles_$has_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, account: $signer, role_id: int): bool {
    (var addr := $1_Signer_$address_of(account); ($ResourceExists($1_Roles_RoleId_$memory, addr) && $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr)), role_id)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:481:9+148
function {:inline} $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int, role_id: int): bool {
    ($ResourceExists($1_Roles_RoleId_$memory, addr) && $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr)), role_id))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:485:9+124
function {:inline} $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 0)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:489:9+144
function {:inline} $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 1)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:493:9+140
function {:inline} $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 2)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:497:9+124
function {:inline} $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 3)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:501:9+142
function {:inline} $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 4)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:505:9+128
function {:inline} $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 5)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:509:9+126
function {:inline} $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    $1_Roles_spec_has_role_id_addr($1_Roles_RoleId_$memory, addr, 6)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:513:9+229
function {:inline} $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId, addr: int): bool {
    (($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr)) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))
}

// struct Roles::RoleId at /home/ying/diem/language/diem-framework/modules/Roles.move:53:5+51
type {:datatype} $1_Roles_RoleId;
function {:constructor} $1_Roles_RoleId($role_id: int): $1_Roles_RoleId;
function {:inline} $Update'$1_Roles_RoleId'_role_id(s: $1_Roles_RoleId, x: int): $1_Roles_RoleId {
    $1_Roles_RoleId(x)
}
function $IsValid'$1_Roles_RoleId'(s: $1_Roles_RoleId): bool {
    $IsValid'u64'($role_id#$1_Roles_RoleId(s))
}
function {:inline} $IsEqual'$1_Roles_RoleId'(s1: $1_Roles_RoleId, s2: $1_Roles_RoleId): bool {
    s1 == s2
}
var $1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId;

// fun Roles::can_hold_balance [baseline] at /home/ying/diem/language/diem-framework/modules/Roles.move:230:5+394
procedure {:inline 1} $1_Roles_can_hold_balance(_$t0: $signer) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t2: bool;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: bool;
    var $t7: bool;
    var $t8: bool;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:230:5+1
    assume {:print "$at(28,9338,9339)"} true;
    assume {:print "$track_local(4,9,0):", $t0} $t0 == $t0;

    // $t3 := Roles::has_parent_VASP_role($t0) on_abort goto L9 with $t4 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+29
    assume {:print "$at(28,9610,9639)"} true;
    call $t3 := $1_Roles_has_parent_VASP_role($t0);
    if ($abort_flag) {
        assume {:print "$at(28,9610,9639)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(4,9):", $t4} $t4 == $t4;
        goto L9;
    }

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
L0:

    // $t5 := true at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
    $t5 := true;
    assume $IsValid'bool'($t5);

    // $t1 := $t5 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
    $t1 := $t5;

    // trace_local[tmp#$1]($t5) at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
    assume {:print "$track_local(4,9,1):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:235:29+7
    assume {:print "$at(28,9671,9678)"} true;
L2:

    // $t6 := Roles::has_child_VASP_role($t0) on_abort goto L9 with $t4 at /home/ying/diem/language/diem-framework/modules/Roles.move:235:9+28
    call $t6 := $1_Roles_has_child_VASP_role($t0);
    if ($abort_flag) {
        assume {:print "$at(28,9651,9679)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(4,9):", $t4} $t4 == $t4;
        goto L9;
    }

    // $t1 := $t6 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
    assume {:print "$at(28,9610,9679)"} true;
    $t1 := $t6;

    // trace_local[tmp#$1]($t6) at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
    assume {:print "$track_local(4,9,1):", $t6} $t6 == $t6;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+69
L3:

    // if ($t1) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
    if ($t1) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
L5:

    // goto L6 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
    goto L6;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
L4:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116

    // $t7 := true at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
    $t7 := true;
    assume $IsValid'bool'($t7);

    // $t2 := $t7 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
    $t2 := $t7;

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
    assume {:print "$track_local(4,9,2):", $t7} $t7 == $t7;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
    goto L7;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Roles.move:236:36+7
    assume {:print "$at(28,9718,9725)"} true;
L6:

    // $t8 := Roles::has_designated_dealer_role($t0) on_abort goto L9 with $t4 at /home/ying/diem/language/diem-framework/modules/Roles.move:236:9+35
    call $t8 := $1_Roles_has_designated_dealer_role($t0);
    if ($abort_flag) {
        assume {:print "$at(28,9691,9726)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(4,9):", $t4} $t4 == $t4;
        goto L9;
    }

    // $t2 := $t8 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
    assume {:print "$at(28,9610,9726)"} true;
    $t2 := $t8;

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
    assume {:print "$track_local(4,9,2):", $t8} $t8 == $t8;

    // label L7 at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
L7:

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/Roles.move:234:9+116
    assume {:print "$track_return(4,9,0):", $t2} $t2 == $t2;

    // label L8 at /home/ying/diem/language/diem-framework/modules/Roles.move:237:5+1
    assume {:print "$at(28,9731,9732)"} true;
L8:

    // return $t2 at /home/ying/diem/language/diem-framework/modules/Roles.move:237:5+1
    $ret0 := $t2;
    return;

    // label L9 at /home/ying/diem/language/diem-framework/modules/Roles.move:237:5+1
L9:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/Roles.move:237:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun Roles::has_child_VASP_role [baseline] at /home/ying/diem/language/diem-framework/modules/Roles.move:220:5+124
procedure {:inline 1} $1_Roles_has_child_VASP_role(_$t0: $signer) returns ($ret0: bool)
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:220:5+1
    assume {:print "$at(28,8949,8950)"} true;
    assume {:print "$track_local(4,14,0):", $t0} $t0 == $t0;

    // $t1 := 6 at /home/ying/diem/language/diem-framework/modules/Roles.move:221:27+18
    assume {:print "$at(28,9048,9066)"} true;
    $t1 := 6;
    assume $IsValid'u64'($t1);

    // $t2 := Roles::has_role($t0, $t1) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/Roles.move:221:9+37
    call $t2 := $1_Roles_has_role($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(28,9030,9067)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(4,14):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/Roles.move:221:9+37
    assume {:print "$track_return(4,14,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:222:5+1
    assume {:print "$at(28,9072,9073)"} true;
L1:

    // return $t2 at /home/ying/diem/language/diem-framework/modules/Roles.move:222:5+1
    $ret0 := $t2;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:222:5+1
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/Roles.move:222:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun Roles::has_designated_dealer_role [baseline] at /home/ying/diem/language/diem-framework/modules/Roles.move:204:5+138
procedure {:inline 1} $1_Roles_has_designated_dealer_role(_$t0: $signer) returns ($ret0: bool)
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:204:5+1
    assume {:print "$at(28,8399,8400)"} true;
    assume {:print "$track_local(4,15,0):", $t0} $t0 == $t0;

    // $t1 := 2 at /home/ying/diem/language/diem-framework/modules/Roles.move:205:27+25
    assume {:print "$at(28,8505,8530)"} true;
    $t1 := 2;
    assume $IsValid'u64'($t1);

    // $t2 := Roles::has_role($t0, $t1) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/Roles.move:205:9+44
    call $t2 := $1_Roles_has_role($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(28,8487,8531)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(4,15):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/Roles.move:205:9+44
    assume {:print "$track_return(4,15,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:206:5+1
    assume {:print "$at(28,8536,8537)"} true;
L1:

    // return $t2 at /home/ying/diem/language/diem-framework/modules/Roles.move:206:5+1
    $ret0 := $t2;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:206:5+1
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/Roles.move:206:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun Roles::has_parent_VASP_role [baseline] at /home/ying/diem/language/diem-framework/modules/Roles.move:216:5+126
procedure {:inline 1} $1_Roles_has_parent_VASP_role(_$t0: $signer) returns ($ret0: bool)
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:216:5+1
    assume {:print "$at(28,8817,8818)"} true;
    assume {:print "$track_local(4,17,0):", $t0} $t0 == $t0;

    // $t1 := 5 at /home/ying/diem/language/diem-framework/modules/Roles.move:217:27+19
    assume {:print "$at(28,8917,8936)"} true;
    $t1 := 5;
    assume $IsValid'u64'($t1);

    // $t2 := Roles::has_role($t0, $t1) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/Roles.move:217:9+38
    call $t2 := $1_Roles_has_role($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(28,8899,8937)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(4,17):", $t3} $t3 == $t3;
        goto L2;
    }

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/Roles.move:217:9+38
    assume {:print "$track_return(4,17,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:218:5+1
    assume {:print "$at(28,8942,8943)"} true;
L1:

    // return $t2 at /home/ying/diem/language/diem-framework/modules/Roles.move:218:5+1
    $ret0 := $t2;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:218:5+1
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/Roles.move:218:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun Roles::has_role [baseline] at /home/ying/diem/language/diem-framework/modules/Roles.move:190:5+210
procedure {:inline 1} $1_Roles_has_role(_$t0: $signer, _$t1: int) returns ($ret0: bool)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: $1_Roles_RoleId;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: bool;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:190:5+1
    assume {:print "$at(28,7907,7908)"} true;
    assume {:print "$track_local(4,18,0):", $t0} $t0 == $t0;

    // trace_local[role_id]($t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:190:5+1
    assume {:print "$track_local(4,18,1):", $t1} $t1 == $t1;

    // $t4 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:191:19+27
    assume {:print "$at(28,7994,8021)"} true;

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/Roles.move:191:19+27
    assume $IsValid'address'($t4);

    // assume Eq<address>($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:191:19+27
    assume $IsEqual'address'($t4, $1_Signer_spec_address_of($t0));

    // $t4 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:191:19+27

    // trace_local[addr]($t4) at /home/ying/diem/language/diem-framework/modules/Roles.move:191:12+4
    assume {:print "$track_local(4,18,3):", $t4} $t4 == $t4;

    // $t5 := exists<Roles::RoleId>($t4) at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+6
    assume {:print "$at(28,8030,8036)"} true;
    $t5 := $ResourceExists($1_Roles_RoleId_$memory, $t4);

    // if ($t5) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
    if ($t5) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Roles.move:193:37+4
    assume {:print "$at(28,8087,8091)"} true;
L0:

    // $t6 := get_global<Roles::RoleId>($t4) on_abort goto L5 with $t7 at /home/ying/diem/language/diem-framework/modules/Roles.move:193:15+13
    if (!$ResourceExists($1_Roles_RoleId_$memory, $t4)) {
        call $ExecFailureAbort();
    } else {
        $t6 := $ResourceValue($1_Roles_RoleId_$memory, $t4);
    }
    if ($abort_flag) {
        assume {:print "$at(28,8065,8078)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(4,18):", $t7} $t7 == $t7;
        goto L5;
    }

    // $t8 := get_field<Roles::RoleId>.role_id($t6) at /home/ying/diem/language/diem-framework/modules/Roles.move:193:15+35
    $t8 := $role_id#$1_Roles_RoleId($t6);

    // $t9 := ==($t8, $t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:193:51+2
    $t9 := $IsEqual'u64'($t8, $t1);

    // $t2 := $t9 at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
    assume {:print "$at(28,8030,8111)"} true;
    $t2 := $t9;

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
    assume {:print "$track_local(4,18,2):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
L2:

    // $t10 := false at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
    $t10 := false;
    assume $IsValid'bool'($t10);

    // $t2 := $t10 at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
    $t2 := $t10;

    // trace_local[tmp#$2]($t10) at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
    assume {:print "$track_local(4,18,2):", $t10} $t10 == $t10;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
L3:

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/Roles.move:192:8+81
    assume {:print "$track_return(4,18,0):", $t2} $t2 == $t2;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Roles.move:194:5+1
    assume {:print "$at(28,8116,8117)"} true;
L4:

    // return $t2 at /home/ying/diem/language/diem-framework/modules/Roles.move:194:5+1
    $ret0 := $t2;
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Roles.move:194:5+1
L5:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/Roles.move:194:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:63:5+153
function {:inline} $1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig, validator_operator_addr: int): bool {
    $ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, validator_operator_addr)
}

// struct ValidatorOperatorConfig::ValidatorOperatorConfig at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:9:5+141
type {:datatype} $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
function {:constructor} $1_ValidatorOperatorConfig_ValidatorOperatorConfig($human_name: Vec (int)): $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
function {:inline} $Update'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'_human_name(s: $1_ValidatorOperatorConfig_ValidatorOperatorConfig, x: Vec (int)): $1_ValidatorOperatorConfig_ValidatorOperatorConfig {
    $1_ValidatorOperatorConfig_ValidatorOperatorConfig(x)
}
function $IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'(s: $1_ValidatorOperatorConfig_ValidatorOperatorConfig): bool {
    $IsValid'vec'u8''($human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig(s))
}
function {:inline} $IsEqual'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'(s1: $1_ValidatorOperatorConfig_ValidatorOperatorConfig, s2: $1_ValidatorOperatorConfig_ValidatorOperatorConfig): bool {
    s1 == s2
}
var $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig;

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_ValidatorConfig_Config'(v: Vec ($1_ValidatorConfig_Config)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_ValidatorConfig_Config'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_VASPDomain_VASPDomain'(v: Vec ($1_VASPDomain_VASPDomain)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_VASPDomain_VASPDomain'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_DiemAccount_KeyRotationCapability'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_DiemAccount_WithdrawCapability'(v), 0)
}

// fun Vector::singleton<DiemAccount::KeyRotationCapability> [baseline] at /home/ying/diem/language/move-stdlib/modules/Vector.move:46:5+131
procedure {:inline 1} $1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'(_$t0: $1_DiemAccount_KeyRotationCapability) returns ($ret0: Vec ($1_DiemAccount_KeyRotationCapability))
{
    // declare local variables
    var $t1: Vec ($1_DiemAccount_KeyRotationCapability);
    var $t2: int;
    var $t3: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability));
    var $t4: Vec ($1_DiemAccount_KeyRotationCapability);
    var $t0: $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'vec'$1_DiemAccount_KeyRotationCapability'': Vec ($1_DiemAccount_KeyRotationCapability);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t3));

    // bytecode translation starts here
    // trace_local[e]($t0) at /home/ying/diem/language/move-stdlib/modules/Vector.move:46:5+1
    assume {:print "$at(50,2067,2068)"} true;
    assume {:print "$track_local(6,13,0):", $t0} $t0 == $t0;

    // $t1 := Vector::empty<#0>() on_abort goto L2 with $t2 at /home/ying/diem/language/move-stdlib/modules/Vector.move:47:17+7
    assume {:print "$at(50,2144,2151)"} true;
    call $t1 := $1_Vector_empty'$1_DiemAccount_KeyRotationCapability'();
    if ($abort_flag) {
        assume {:print "$at(50,2144,2151)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(6,13):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_local[v]($t1) at /home/ying/diem/language/move-stdlib/modules/Vector.move:47:13+1
    assume {:print "$track_local(6,13,1):", $t1} $t1 == $t1;

    // $t3 := borrow_local($t1) at /home/ying/diem/language/move-stdlib/modules/Vector.move:48:19+6
    assume {:print "$at(50,2171,2177)"} true;
    $t3 := $Mutation($Local(1), EmptyVec(), $t1);

    // Vector::push_back<#0>($t3, $t0) on_abort goto L2 with $t2 at /home/ying/diem/language/move-stdlib/modules/Vector.move:48:9+20
    call $t3 := $1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'($t3, $t0);
    if ($abort_flag) {
        assume {:print "$at(50,2161,2181)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(6,13):", $t2} $t2 == $t2;
        goto L2;
    }

    // write_back[LocalRoot($t1)@]($t3) at /home/ying/diem/language/move-stdlib/modules/Vector.move:48:9+20
    $t1 := $Dereference($t3);

    // $t4 := move($t1) at /home/ying/diem/language/move-stdlib/modules/Vector.move:49:9+1
    assume {:print "$at(50,2191,2192)"} true;
    $t4 := $t1;

    // trace_return[0]($t4) at /home/ying/diem/language/move-stdlib/modules/Vector.move:49:9+1
    assume {:print "$track_return(6,13,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/move-stdlib/modules/Vector.move:50:5+1
    assume {:print "$at(50,2197,2198)"} true;
L1:

    // return $t4 at /home/ying/diem/language/move-stdlib/modules/Vector.move:50:5+1
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/move-stdlib/modules/Vector.move:50:5+1
L2:

    // abort($t2) at /home/ying/diem/language/move-stdlib/modules/Vector.move:50:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:86:5+170
function {:inline} $1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'(t: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): $1_DiemAccount_KeyRotationCapability {
    $1_Vector_$borrow'$1_DiemAccount_KeyRotationCapability'($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(t), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:86:5+170
function {:inline} $1_Option_$borrow'$1_DiemAccount_WithdrawCapability'(t: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): $1_DiemAccount_WithdrawCapability {
    $1_Vector_$borrow'$1_DiemAccount_WithdrawCapability'($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(t), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:51:5+95
function {:inline} $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'(t: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    $1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:51:5+95
function {:inline} $1_Option_$is_none'$1_DiemAccount_WithdrawCapability'(t: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    $1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_ValidatorConfig_Config'(t: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    !$1_Vector_$is_empty'$1_ValidatorConfig_Config'($vec#$1_Option_Option'$1_ValidatorConfig_Config'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'(t: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    !$1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_DiemAccount_WithdrawCapability'(t: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    !$1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(t))
}

// struct Option::Option<address> at /home/ying/diem/language/move-stdlib/modules/Option.move:8:5+81
type {:datatype} $1_Option_Option'address';
function {:constructor} $1_Option_Option'address'($vec: Vec (int)): $1_Option_Option'address';
function {:inline} $Update'$1_Option_Option'address''_vec(s: $1_Option_Option'address', x: Vec (int)): $1_Option_Option'address' {
    $1_Option_Option'address'(x)
}
function $IsValid'$1_Option_Option'address''(s: $1_Option_Option'address'): bool {
    $IsValid'vec'address''($vec#$1_Option_Option'address'(s))
}
function {:inline} $IsEqual'$1_Option_Option'address''(s1: $1_Option_Option'address', s2: $1_Option_Option'address'): bool {
    s1 == s2
}

// struct Option::Option<ValidatorConfig::Config> at /home/ying/diem/language/move-stdlib/modules/Option.move:8:5+81
type {:datatype} $1_Option_Option'$1_ValidatorConfig_Config';
function {:constructor} $1_Option_Option'$1_ValidatorConfig_Config'($vec: Vec ($1_ValidatorConfig_Config)): $1_Option_Option'$1_ValidatorConfig_Config';
function {:inline} $Update'$1_Option_Option'$1_ValidatorConfig_Config''_vec(s: $1_Option_Option'$1_ValidatorConfig_Config', x: Vec ($1_ValidatorConfig_Config)): $1_Option_Option'$1_ValidatorConfig_Config' {
    $1_Option_Option'$1_ValidatorConfig_Config'(x)
}
function $IsValid'$1_Option_Option'$1_ValidatorConfig_Config''(s: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    $IsValid'vec'$1_ValidatorConfig_Config''($vec#$1_Option_Option'$1_ValidatorConfig_Config'(s))
}
function {:inline} $IsEqual'$1_Option_Option'$1_ValidatorConfig_Config''(s1: $1_Option_Option'$1_ValidatorConfig_Config', s2: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    s1 == s2
}

// struct Option::Option<DiemAccount::KeyRotationCapability> at /home/ying/diem/language/move-stdlib/modules/Option.move:8:5+81
type {:datatype} $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
function {:constructor} $1_Option_Option'$1_DiemAccount_KeyRotationCapability'($vec: Vec ($1_DiemAccount_KeyRotationCapability)): $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
function {:inline} $Update'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''_vec(s: $1_Option_Option'$1_DiemAccount_KeyRotationCapability', x: Vec ($1_DiemAccount_KeyRotationCapability)): $1_Option_Option'$1_DiemAccount_KeyRotationCapability' {
    $1_Option_Option'$1_DiemAccount_KeyRotationCapability'(x)
}
function $IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''(s: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    $IsValid'vec'$1_DiemAccount_KeyRotationCapability''($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(s))
}
function {:inline} $IsEqual'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''(s1: $1_Option_Option'$1_DiemAccount_KeyRotationCapability', s2: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    s1 == s2
}

// struct Option::Option<DiemAccount::WithdrawCapability> at /home/ying/diem/language/move-stdlib/modules/Option.move:8:5+81
type {:datatype} $1_Option_Option'$1_DiemAccount_WithdrawCapability';
function {:constructor} $1_Option_Option'$1_DiemAccount_WithdrawCapability'($vec: Vec ($1_DiemAccount_WithdrawCapability)): $1_Option_Option'$1_DiemAccount_WithdrawCapability';
function {:inline} $Update'$1_Option_Option'$1_DiemAccount_WithdrawCapability''_vec(s: $1_Option_Option'$1_DiemAccount_WithdrawCapability', x: Vec ($1_DiemAccount_WithdrawCapability)): $1_Option_Option'$1_DiemAccount_WithdrawCapability' {
    $1_Option_Option'$1_DiemAccount_WithdrawCapability'(x)
}
function $IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''(s: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    $IsValid'vec'$1_DiemAccount_WithdrawCapability''($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(s))
}
function {:inline} $IsEqual'$1_Option_Option'$1_DiemAccount_WithdrawCapability''(s1: $1_Option_Option'$1_DiemAccount_WithdrawCapability', s2: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    s1 == s2
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:84:5+84
function {:inline} $1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): bool {
    $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:229:5+176
function {:inline} $1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig, addr: int): bool {
    ($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, addr) && $1_Option_$is_some'$1_ValidatorConfig_Config'($config#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, addr))))
}

// struct ValidatorConfig::ValidatorConfig at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:22:5+260
type {:datatype} $1_ValidatorConfig_ValidatorConfig;
function {:constructor} $1_ValidatorConfig_ValidatorConfig($config: $1_Option_Option'$1_ValidatorConfig_Config', $operator_account: $1_Option_Option'address', $human_name: Vec (int)): $1_ValidatorConfig_ValidatorConfig;
function {:inline} $Update'$1_ValidatorConfig_ValidatorConfig'_config(s: $1_ValidatorConfig_ValidatorConfig, x: $1_Option_Option'$1_ValidatorConfig_Config'): $1_ValidatorConfig_ValidatorConfig {
    $1_ValidatorConfig_ValidatorConfig(x, $operator_account#$1_ValidatorConfig_ValidatorConfig(s), $human_name#$1_ValidatorConfig_ValidatorConfig(s))
}
function {:inline} $Update'$1_ValidatorConfig_ValidatorConfig'_operator_account(s: $1_ValidatorConfig_ValidatorConfig, x: $1_Option_Option'address'): $1_ValidatorConfig_ValidatorConfig {
    $1_ValidatorConfig_ValidatorConfig($config#$1_ValidatorConfig_ValidatorConfig(s), x, $human_name#$1_ValidatorConfig_ValidatorConfig(s))
}
function {:inline} $Update'$1_ValidatorConfig_ValidatorConfig'_human_name(s: $1_ValidatorConfig_ValidatorConfig, x: Vec (int)): $1_ValidatorConfig_ValidatorConfig {
    $1_ValidatorConfig_ValidatorConfig($config#$1_ValidatorConfig_ValidatorConfig(s), $operator_account#$1_ValidatorConfig_ValidatorConfig(s), x)
}
function $IsValid'$1_ValidatorConfig_ValidatorConfig'(s: $1_ValidatorConfig_ValidatorConfig): bool {
    $IsValid'$1_Option_Option'$1_ValidatorConfig_Config''($config#$1_ValidatorConfig_ValidatorConfig(s))
      && $IsValid'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig(s))
      && $IsValid'vec'u8''($human_name#$1_ValidatorConfig_ValidatorConfig(s))
}
function {:inline} $IsEqual'$1_ValidatorConfig_ValidatorConfig'(s1: $1_ValidatorConfig_ValidatorConfig, s2: $1_ValidatorConfig_ValidatorConfig): bool {
    s1 == s2
}
var $1_ValidatorConfig_ValidatorConfig_$memory: $Memory $1_ValidatorConfig_ValidatorConfig;

// struct ValidatorConfig::Config at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:16:5+178
type {:datatype} $1_ValidatorConfig_Config;
function {:constructor} $1_ValidatorConfig_Config($consensus_pubkey: Vec (int), $validator_network_addresses: Vec (int), $fullnode_network_addresses: Vec (int)): $1_ValidatorConfig_Config;
function {:inline} $Update'$1_ValidatorConfig_Config'_consensus_pubkey(s: $1_ValidatorConfig_Config, x: Vec (int)): $1_ValidatorConfig_Config {
    $1_ValidatorConfig_Config(x, $validator_network_addresses#$1_ValidatorConfig_Config(s), $fullnode_network_addresses#$1_ValidatorConfig_Config(s))
}
function {:inline} $Update'$1_ValidatorConfig_Config'_validator_network_addresses(s: $1_ValidatorConfig_Config, x: Vec (int)): $1_ValidatorConfig_Config {
    $1_ValidatorConfig_Config($consensus_pubkey#$1_ValidatorConfig_Config(s), x, $fullnode_network_addresses#$1_ValidatorConfig_Config(s))
}
function {:inline} $Update'$1_ValidatorConfig_Config'_fullnode_network_addresses(s: $1_ValidatorConfig_Config, x: Vec (int)): $1_ValidatorConfig_Config {
    $1_ValidatorConfig_Config($consensus_pubkey#$1_ValidatorConfig_Config(s), $validator_network_addresses#$1_ValidatorConfig_Config(s), x)
}
function $IsValid'$1_ValidatorConfig_Config'(s: $1_ValidatorConfig_Config): bool {
    $IsValid'vec'u8''($consensus_pubkey#$1_ValidatorConfig_Config(s))
      && $IsValid'vec'u8''($validator_network_addresses#$1_ValidatorConfig_Config(s))
      && $IsValid'vec'u8''($fullnode_network_addresses#$1_ValidatorConfig_Config(s))
}
function {:inline} $IsEqual'$1_ValidatorConfig_Config'(s1: $1_ValidatorConfig_Config, s2: $1_ValidatorConfig_Config): bool {
    s1 == s2
}

// spec fun at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:258:10+64
function {:inline} $1_SlidingNonce_spec_try_record_nonce(account: $signer, seq_nonce: int): int;
axiom (forall account: $signer, seq_nonce: int ::
(var $$res := $1_SlidingNonce_spec_try_record_nonce(account, seq_nonce);
$IsValid'u64'($$res)));

// struct SlidingNonce::SlidingNonce at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:11:5+341
type {:datatype} $1_SlidingNonce_SlidingNonce;
function {:constructor} $1_SlidingNonce_SlidingNonce($min_nonce: int, $nonce_mask: int): $1_SlidingNonce_SlidingNonce;
function {:inline} $Update'$1_SlidingNonce_SlidingNonce'_min_nonce(s: $1_SlidingNonce_SlidingNonce, x: int): $1_SlidingNonce_SlidingNonce {
    $1_SlidingNonce_SlidingNonce(x, $nonce_mask#$1_SlidingNonce_SlidingNonce(s))
}
function {:inline} $Update'$1_SlidingNonce_SlidingNonce'_nonce_mask(s: $1_SlidingNonce_SlidingNonce, x: int): $1_SlidingNonce_SlidingNonce {
    $1_SlidingNonce_SlidingNonce($min_nonce#$1_SlidingNonce_SlidingNonce(s), x)
}
function $IsValid'$1_SlidingNonce_SlidingNonce'(s: $1_SlidingNonce_SlidingNonce): bool {
    $IsValid'u64'($min_nonce#$1_SlidingNonce_SlidingNonce(s))
      && $IsValid'u128'($nonce_mask#$1_SlidingNonce_SlidingNonce(s))
}
function {:inline} $IsEqual'$1_SlidingNonce_SlidingNonce'(s1: $1_SlidingNonce_SlidingNonce, s2: $1_SlidingNonce_SlidingNonce): bool {
    s1 == s2
}
var $1_SlidingNonce_SlidingNonce_$memory: $Memory $1_SlidingNonce_SlidingNonce;

// fun SlidingNonce::record_nonce_or_abort [baseline] at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+212
procedure {:inline 1} $1_SlidingNonce_record_nonce_or_abort(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'$1_SlidingNonce_SlidingNonce': $1_SlidingNonce_SlidingNonce;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+1
    assume {:print "$at(31,1585,1586)"} true;
    assume {:print "$track_local(10,1,0):", $t0} $t0 == $t0;

    // trace_local[seq_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:35:5+1
    assume {:print "$track_local(10,1,1):", $t1} $t1 == $t1;

    // $t5 := opaque begin: SlidingNonce::try_record_nonce($t0, $t1) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume {:print "$at(31,1695,1731)"} true;

    // assume Identical($t6, Not(exists<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0)))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume ($t6 == !$ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0)));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
L5:

    // assume And(Not(exists<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0))), Eq(5, $t7)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume (!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(5, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume {:print "$at(31,1695,1731)"} true;
    assume {:print "$track_abort(10,1):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
L4:

    // modifies global<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_SlidingNonce_SlidingNonce';
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceUpdate($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0), $temp_0'$1_SlidingNonce_SlidingNonce');
    } else {
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceRemove($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0));
    }

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume $IsValid'u64'($t5);

    // assume Eq<u64>($t5, SlidingNonce::spec_try_record_nonce($t0, $t1)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume $IsEqual'u64'($t5, $1_SlidingNonce_spec_try_record_nonce($t0, $t1));

    // assume exists<SlidingNonce::SlidingNonce>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36
    assume $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $1_Signer_spec_address_of($t0));

    // $t5 := opaque end: SlidingNonce::try_record_nonce($t0, $t1) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:20+36

    // trace_local[code]($t5) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:36:13+4
    assume {:print "$track_local(10,1,4):", $t5} $t5 == $t5;

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:24+1
    assume {:print "$at(31,1756,1757)"} true;
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := ==($t5, $t8) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:21+2
    $t9 := $IsEqual'u64'($t5, $t8);

    // $t10 := opaque begin: Errors::invalid_argument($t5) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:27+30

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:27+30
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:27+30
    assume $IsEqual'u64'($t10, 7);

    // $t10 := opaque end: Errors::invalid_argument($t5) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:27+30

    // trace_local[tmp#$3]($t10) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    assume {:print "$track_local(10,1,3):", $t10} $t10 == $t10;

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    assume {:print "$track_local(10,1,2):", $t9} $t9 == $t9;

    // if ($t9) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    if ($t9) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
L1:

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    assume {:print "$at(31,1741,1790)"} true;
    assume {:print "$track_abort(10,1):", $t10} $t10 == $t10;

    // $t7 := move($t10) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    $t7 := $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:9+49
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:37:58+1
L0:

    // label L2 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:38:5+1
    assume {:print "$at(31,1796,1797)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:38:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:38:5+1
L3:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:38:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:95:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): $1_DiemSystem_DiemSystem {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:457:9+84
function {:inline} $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory: $Memory $1_DiemConfig_Configuration): bool {
    $ResourceExists($1_DiemConfig_Configuration_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:461:9+99
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, 173345816)
}

// struct DiemConfig::DiemConfig<DiemSystem::DiemSystem> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($payload: $1_DiemSystem_DiemSystem): $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem', x: $1_DiemSystem_DiemSystem): $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem' {
    $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''(s: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    $IsValid'$1_DiemSystem_DiemSystem'($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''(s1: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem', s2: $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';

// struct DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';
function {:constructor} $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'($payload: $1_RegisteredCurrencies_RegisteredCurrencies): $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''_payload(s: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies', x: $1_RegisteredCurrencies_RegisteredCurrencies): $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies' {
    $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''(s: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    $IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'($payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''(s1: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies', s2: $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';

// struct DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($payload: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption): $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption', x: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption): $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption' {
    $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''(s: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    $IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''(s1: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption', s2: $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';

// struct DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'($payload: $1_DiemVMConfig_DiemVMConfig): $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig', x: $1_DiemVMConfig_DiemVMConfig): $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig' {
    $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''(s: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): bool {
    $IsValid'$1_DiemVMConfig_DiemVMConfig'($payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''(s1: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig', s2: $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';

// struct DiemConfig::DiemConfig<DiemVersion::DiemVersion> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'($payload: $1_DiemVersion_DiemVersion): $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion', x: $1_DiemVersion_DiemVersion): $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion' {
    $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''(s: $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): bool {
    $IsValid'$1_DiemVersion_DiemVersion'($payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''(s1: $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion', s2: $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion';

// struct DiemConfig::Configuration at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:31:5+306
type {:datatype} $1_DiemConfig_Configuration;
function {:constructor} $1_DiemConfig_Configuration($epoch: int, $last_reconfiguration_time: int, $events: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent'): $1_DiemConfig_Configuration;
function {:inline} $Update'$1_DiemConfig_Configuration'_epoch(s: $1_DiemConfig_Configuration, x: int): $1_DiemConfig_Configuration {
    $1_DiemConfig_Configuration(x, $last_reconfiguration_time#$1_DiemConfig_Configuration(s), $events#$1_DiemConfig_Configuration(s))
}
function {:inline} $Update'$1_DiemConfig_Configuration'_last_reconfiguration_time(s: $1_DiemConfig_Configuration, x: int): $1_DiemConfig_Configuration {
    $1_DiemConfig_Configuration($epoch#$1_DiemConfig_Configuration(s), x, $events#$1_DiemConfig_Configuration(s))
}
function {:inline} $Update'$1_DiemConfig_Configuration'_events(s: $1_DiemConfig_Configuration, x: $1_Event_EventHandle'$1_DiemConfig_NewEpochEvent'): $1_DiemConfig_Configuration {
    $1_DiemConfig_Configuration($epoch#$1_DiemConfig_Configuration(s), $last_reconfiguration_time#$1_DiemConfig_Configuration(s), x)
}
function $IsValid'$1_DiemConfig_Configuration'(s: $1_DiemConfig_Configuration): bool {
    $IsValid'u64'($epoch#$1_DiemConfig_Configuration(s))
      && $IsValid'u64'($last_reconfiguration_time#$1_DiemConfig_Configuration(s))
      && $IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''($events#$1_DiemConfig_Configuration(s))
}
function {:inline} $IsEqual'$1_DiemConfig_Configuration'(s1: $1_DiemConfig_Configuration, s2: $1_DiemConfig_Configuration): bool {
    s1 == s2
}
var $1_DiemConfig_Configuration_$memory: $Memory $1_DiemConfig_Configuration;

// struct DiemConfig::ModifyConfigCapability<DiemSystem::DiemSystem> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:41:5+65
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem' {
    $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''(s1: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem', s2: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';

// struct DiemConfig::NewEpochEvent at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:26:5+64
type {:datatype} $1_DiemConfig_NewEpochEvent;
function {:constructor} $1_DiemConfig_NewEpochEvent($epoch: int): $1_DiemConfig_NewEpochEvent;
function {:inline} $Update'$1_DiemConfig_NewEpochEvent'_epoch(s: $1_DiemConfig_NewEpochEvent, x: int): $1_DiemConfig_NewEpochEvent {
    $1_DiemConfig_NewEpochEvent(x)
}
function $IsValid'$1_DiemConfig_NewEpochEvent'(s: $1_DiemConfig_NewEpochEvent): bool {
    $IsValid'u64'($epoch#$1_DiemConfig_NewEpochEvent(s))
}
function {:inline} $IsEqual'$1_DiemConfig_NewEpochEvent'(s1: $1_DiemConfig_NewEpochEvent, s2: $1_DiemConfig_NewEpochEvent): bool {
    s1 == s2
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:647:10+105
function {:inline} $1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): Vec ($1_DiemSystem_ValidatorInfo) {
    $validators#$1_DiemSystem_DiemSystem($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))
}

// struct DiemSystem::DiemSystem at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:48:5+198
type {:datatype} $1_DiemSystem_DiemSystem;
function {:constructor} $1_DiemSystem_DiemSystem($scheme: int, $validators: Vec ($1_DiemSystem_ValidatorInfo)): $1_DiemSystem_DiemSystem;
function {:inline} $Update'$1_DiemSystem_DiemSystem'_scheme(s: $1_DiemSystem_DiemSystem, x: int): $1_DiemSystem_DiemSystem {
    $1_DiemSystem_DiemSystem(x, $validators#$1_DiemSystem_DiemSystem(s))
}
function {:inline} $Update'$1_DiemSystem_DiemSystem'_validators(s: $1_DiemSystem_DiemSystem, x: Vec ($1_DiemSystem_ValidatorInfo)): $1_DiemSystem_DiemSystem {
    $1_DiemSystem_DiemSystem($scheme#$1_DiemSystem_DiemSystem(s), x)
}
function $IsValid'$1_DiemSystem_DiemSystem'(s: $1_DiemSystem_DiemSystem): bool {
    $IsValid'u8'($scheme#$1_DiemSystem_DiemSystem(s))
      && $IsValid'vec'$1_DiemSystem_ValidatorInfo''($validators#$1_DiemSystem_DiemSystem(s))
}
function {:inline} $IsEqual'$1_DiemSystem_DiemSystem'(s1: $1_DiemSystem_DiemSystem, s2: $1_DiemSystem_DiemSystem): bool {
    s1 == s2
}

// struct DiemSystem::CapabilityHolder at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:39:5+242
type {:datatype} $1_DiemSystem_CapabilityHolder;
function {:constructor} $1_DiemSystem_CapabilityHolder($cap: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'): $1_DiemSystem_CapabilityHolder;
function {:inline} $Update'$1_DiemSystem_CapabilityHolder'_cap(s: $1_DiemSystem_CapabilityHolder, x: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'): $1_DiemSystem_CapabilityHolder {
    $1_DiemSystem_CapabilityHolder(x)
}
function $IsValid'$1_DiemSystem_CapabilityHolder'(s: $1_DiemSystem_CapabilityHolder): bool {
    $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''($cap#$1_DiemSystem_CapabilityHolder(s))
}
function {:inline} $IsEqual'$1_DiemSystem_CapabilityHolder'(s1: $1_DiemSystem_CapabilityHolder, s2: $1_DiemSystem_CapabilityHolder): bool {
    s1 == s2
}
var $1_DiemSystem_CapabilityHolder_$memory: $Memory $1_DiemSystem_CapabilityHolder;

// struct DiemSystem::ValidatorInfo at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:18:5+600
type {:datatype} $1_DiemSystem_ValidatorInfo;
function {:constructor} $1_DiemSystem_ValidatorInfo($addr: int, $consensus_voting_power: int, $config: $1_ValidatorConfig_Config, $last_config_update_time: int): $1_DiemSystem_ValidatorInfo;
function {:inline} $Update'$1_DiemSystem_ValidatorInfo'_addr(s: $1_DiemSystem_ValidatorInfo, x: int): $1_DiemSystem_ValidatorInfo {
    $1_DiemSystem_ValidatorInfo(x, $consensus_voting_power#$1_DiemSystem_ValidatorInfo(s), $config#$1_DiemSystem_ValidatorInfo(s), $last_config_update_time#$1_DiemSystem_ValidatorInfo(s))
}
function {:inline} $Update'$1_DiemSystem_ValidatorInfo'_consensus_voting_power(s: $1_DiemSystem_ValidatorInfo, x: int): $1_DiemSystem_ValidatorInfo {
    $1_DiemSystem_ValidatorInfo($addr#$1_DiemSystem_ValidatorInfo(s), x, $config#$1_DiemSystem_ValidatorInfo(s), $last_config_update_time#$1_DiemSystem_ValidatorInfo(s))
}
function {:inline} $Update'$1_DiemSystem_ValidatorInfo'_config(s: $1_DiemSystem_ValidatorInfo, x: $1_ValidatorConfig_Config): $1_DiemSystem_ValidatorInfo {
    $1_DiemSystem_ValidatorInfo($addr#$1_DiemSystem_ValidatorInfo(s), $consensus_voting_power#$1_DiemSystem_ValidatorInfo(s), x, $last_config_update_time#$1_DiemSystem_ValidatorInfo(s))
}
function {:inline} $Update'$1_DiemSystem_ValidatorInfo'_last_config_update_time(s: $1_DiemSystem_ValidatorInfo, x: int): $1_DiemSystem_ValidatorInfo {
    $1_DiemSystem_ValidatorInfo($addr#$1_DiemSystem_ValidatorInfo(s), $consensus_voting_power#$1_DiemSystem_ValidatorInfo(s), $config#$1_DiemSystem_ValidatorInfo(s), x)
}
function $IsValid'$1_DiemSystem_ValidatorInfo'(s: $1_DiemSystem_ValidatorInfo): bool {
    $IsValid'address'($addr#$1_DiemSystem_ValidatorInfo(s))
      && $IsValid'u64'($consensus_voting_power#$1_DiemSystem_ValidatorInfo(s))
      && $IsValid'$1_ValidatorConfig_Config'($config#$1_DiemSystem_ValidatorInfo(s))
      && $IsValid'u64'($last_config_update_time#$1_DiemSystem_ValidatorInfo(s))
}
function {:inline} $IsEqual'$1_DiemSystem_ValidatorInfo'(s1: $1_DiemSystem_ValidatorInfo, s2: $1_DiemSystem_ValidatorInfo): bool {
    s1 == s2
}

// struct FixedPoint32::FixedPoint32 at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:17:5+56
type {:datatype} $1_FixedPoint32_FixedPoint32;
function {:constructor} $1_FixedPoint32_FixedPoint32($value: int): $1_FixedPoint32_FixedPoint32;
function {:inline} $Update'$1_FixedPoint32_FixedPoint32'_value(s: $1_FixedPoint32_FixedPoint32, x: int): $1_FixedPoint32_FixedPoint32 {
    $1_FixedPoint32_FixedPoint32(x)
}
function $IsValid'$1_FixedPoint32_FixedPoint32'(s: $1_FixedPoint32_FixedPoint32): bool {
    $IsValid'u64'($value#$1_FixedPoint32_FixedPoint32(s))
}
function {:inline} $IsEqual'$1_FixedPoint32_FixedPoint32'(s1: $1_FixedPoint32_FixedPoint32, s2: $1_FixedPoint32_FixedPoint32): bool {
    s1 == s2
}

// struct RegisteredCurrencies::RegisteredCurrencies at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:13:5+101
type {:datatype} $1_RegisteredCurrencies_RegisteredCurrencies;
function {:constructor} $1_RegisteredCurrencies_RegisteredCurrencies($currency_codes: Vec (Vec (int))): $1_RegisteredCurrencies_RegisteredCurrencies;
function {:inline} $Update'$1_RegisteredCurrencies_RegisteredCurrencies'_currency_codes(s: $1_RegisteredCurrencies_RegisteredCurrencies, x: Vec (Vec (int))): $1_RegisteredCurrencies_RegisteredCurrencies {
    $1_RegisteredCurrencies_RegisteredCurrencies(x)
}
function $IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'(s: $1_RegisteredCurrencies_RegisteredCurrencies): bool {
    $IsValid'vec'vec'u8'''($currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies(s))
}
function {:inline} $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'(s1: $1_RegisteredCurrencies_RegisteredCurrencies, s2: $1_RegisteredCurrencies_RegisteredCurrencies): bool {
    s1 == s2
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1408:5+184
function {:inline} $1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    ($1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && !$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'($ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1408:5+184
function {:inline} $1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    ($1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && !$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'($ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1408:5+184
function {:inline} $1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0'): bool {
    ($1_Diem_$is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && !$is_synthetic#$1_Diem_CurrencyInfo'#0'($ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, 173345816)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'#0'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1826:9+108
function {:inline} $1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1826:9+108
function {:inline} $1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1826:9+108
function {:inline} $1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'#0'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1852:9+122
function {:inline} $1_Diem_spec_has_mint_capability'$1_XUS_XUS'($1_Diem_MintCapability'$1_XUS_XUS'_$memory: $Memory $1_Diem_MintCapability'$1_XUS_XUS', addr: int): bool {
    $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1852:9+122
function {:inline} $1_Diem_spec_has_mint_capability'$1_XDX_XDX'($1_Diem_MintCapability'$1_XDX_XDX'_$memory: $Memory $1_Diem_MintCapability'$1_XDX_XDX', addr: int): bool {
    $ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1852:9+122
function {:inline} $1_Diem_spec_has_mint_capability'#0'($1_Diem_MintCapability'#0'_$memory: $Memory $1_Diem_MintCapability'#0', addr: int): bool {
    $ResourceExists($1_Diem_MintCapability'#0'_$memory, addr)
}

// struct Diem::Diem<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:24:5+134
type {:datatype} $1_Diem_Diem'$1_XUS_XUS';
function {:constructor} $1_Diem_Diem'$1_XUS_XUS'($value: int): $1_Diem_Diem'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_Diem'$1_XUS_XUS''_value(s: $1_Diem_Diem'$1_XUS_XUS', x: int): $1_Diem_Diem'$1_XUS_XUS' {
    $1_Diem_Diem'$1_XUS_XUS'(x)
}
function $IsValid'$1_Diem_Diem'$1_XUS_XUS''(s: $1_Diem_Diem'$1_XUS_XUS'): bool {
    $IsValid'u64'($value#$1_Diem_Diem'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_Diem'$1_XUS_XUS''(s1: $1_Diem_Diem'$1_XUS_XUS', s2: $1_Diem_Diem'$1_XUS_XUS'): bool {
    s1 == s2
}

// struct Diem::Diem<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:24:5+134
type {:datatype} $1_Diem_Diem'$1_XDX_XDX';
function {:constructor} $1_Diem_Diem'$1_XDX_XDX'($value: int): $1_Diem_Diem'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_Diem'$1_XDX_XDX''_value(s: $1_Diem_Diem'$1_XDX_XDX', x: int): $1_Diem_Diem'$1_XDX_XDX' {
    $1_Diem_Diem'$1_XDX_XDX'(x)
}
function $IsValid'$1_Diem_Diem'$1_XDX_XDX''(s: $1_Diem_Diem'$1_XDX_XDX'): bool {
    $IsValid'u64'($value#$1_Diem_Diem'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_Diem'$1_XDX_XDX''(s1: $1_Diem_Diem'$1_XDX_XDX', s2: $1_Diem_Diem'$1_XDX_XDX'): bool {
    s1 == s2
}

// struct Diem::Diem<#0> at /home/ying/diem/language/diem-framework/modules/Diem.move:24:5+134
type {:datatype} $1_Diem_Diem'#0';
function {:constructor} $1_Diem_Diem'#0'($value: int): $1_Diem_Diem'#0';
function {:inline} $Update'$1_Diem_Diem'#0''_value(s: $1_Diem_Diem'#0', x: int): $1_Diem_Diem'#0' {
    $1_Diem_Diem'#0'(x)
}
function $IsValid'$1_Diem_Diem'#0''(s: $1_Diem_Diem'#0'): bool {
    $IsValid'u64'($value#$1_Diem_Diem'#0'(s))
}
function {:inline} $IsEqual'$1_Diem_Diem'#0''(s1: $1_Diem_Diem'#0', s2: $1_Diem_Diem'#0'): bool {
    s1 == s2
}

// struct Diem::BurnCapability<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:37:5+58
type {:datatype} $1_Diem_BurnCapability'$1_XDX_XDX';
function {:constructor} $1_Diem_BurnCapability'$1_XDX_XDX'($dummy_field: bool): $1_Diem_BurnCapability'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_BurnCapability'$1_XDX_XDX''_dummy_field(s: $1_Diem_BurnCapability'$1_XDX_XDX', x: bool): $1_Diem_BurnCapability'$1_XDX_XDX' {
    $1_Diem_BurnCapability'$1_XDX_XDX'(x)
}
function $IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''(s: $1_Diem_BurnCapability'$1_XDX_XDX'): bool {
    $IsValid'bool'($dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_BurnCapability'$1_XDX_XDX''(s1: $1_Diem_BurnCapability'$1_XDX_XDX', s2: $1_Diem_BurnCapability'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_Diem_BurnCapability'$1_XDX_XDX'_$memory: $Memory $1_Diem_BurnCapability'$1_XDX_XDX';

// struct Diem::BurnEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:58:5+323
type {:datatype} $1_Diem_BurnEvent;
function {:constructor} $1_Diem_BurnEvent($amount: int, $currency_code: Vec (int), $preburn_address: int): $1_Diem_BurnEvent;
function {:inline} $Update'$1_Diem_BurnEvent'_amount(s: $1_Diem_BurnEvent, x: int): $1_Diem_BurnEvent {
    $1_Diem_BurnEvent(x, $currency_code#$1_Diem_BurnEvent(s), $preburn_address#$1_Diem_BurnEvent(s))
}
function {:inline} $Update'$1_Diem_BurnEvent'_currency_code(s: $1_Diem_BurnEvent, x: Vec (int)): $1_Diem_BurnEvent {
    $1_Diem_BurnEvent($amount#$1_Diem_BurnEvent(s), x, $preburn_address#$1_Diem_BurnEvent(s))
}
function {:inline} $Update'$1_Diem_BurnEvent'_preburn_address(s: $1_Diem_BurnEvent, x: int): $1_Diem_BurnEvent {
    $1_Diem_BurnEvent($amount#$1_Diem_BurnEvent(s), $currency_code#$1_Diem_BurnEvent(s), x)
}
function $IsValid'$1_Diem_BurnEvent'(s: $1_Diem_BurnEvent): bool {
    $IsValid'u64'($amount#$1_Diem_BurnEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_BurnEvent(s))
      && $IsValid'address'($preburn_address#$1_Diem_BurnEvent(s))
}
function {:inline} $IsEqual'$1_Diem_BurnEvent'(s1: $1_Diem_BurnEvent, s2: $1_Diem_BurnEvent): bool {
    s1 == s2
}

// struct Diem::CancelBurnEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:83:5+327
type {:datatype} $1_Diem_CancelBurnEvent;
function {:constructor} $1_Diem_CancelBurnEvent($amount: int, $currency_code: Vec (int), $preburn_address: int): $1_Diem_CancelBurnEvent;
function {:inline} $Update'$1_Diem_CancelBurnEvent'_amount(s: $1_Diem_CancelBurnEvent, x: int): $1_Diem_CancelBurnEvent {
    $1_Diem_CancelBurnEvent(x, $currency_code#$1_Diem_CancelBurnEvent(s), $preburn_address#$1_Diem_CancelBurnEvent(s))
}
function {:inline} $Update'$1_Diem_CancelBurnEvent'_currency_code(s: $1_Diem_CancelBurnEvent, x: Vec (int)): $1_Diem_CancelBurnEvent {
    $1_Diem_CancelBurnEvent($amount#$1_Diem_CancelBurnEvent(s), x, $preburn_address#$1_Diem_CancelBurnEvent(s))
}
function {:inline} $Update'$1_Diem_CancelBurnEvent'_preburn_address(s: $1_Diem_CancelBurnEvent, x: int): $1_Diem_CancelBurnEvent {
    $1_Diem_CancelBurnEvent($amount#$1_Diem_CancelBurnEvent(s), $currency_code#$1_Diem_CancelBurnEvent(s), x)
}
function $IsValid'$1_Diem_CancelBurnEvent'(s: $1_Diem_CancelBurnEvent): bool {
    $IsValid'u64'($amount#$1_Diem_CancelBurnEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_CancelBurnEvent(s))
      && $IsValid'address'($preburn_address#$1_Diem_CancelBurnEvent(s))
}
function {:inline} $IsEqual'$1_Diem_CancelBurnEvent'(s1: $1_Diem_CancelBurnEvent, s2: $1_Diem_CancelBurnEvent): bool {
    s1 == s2
}

// struct Diem::CurrencyInfo<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:111:5+2308
type {:datatype} $1_Diem_CurrencyInfo'$1_XUS_XUS';
function {:constructor} $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value: int, $preburn_value: int, $to_xdx_exchange_rate: $1_FixedPoint32_FixedPoint32, $is_synthetic: bool, $scaling_factor: int, $fractional_part: int, $currency_code: Vec (int), $can_mint: bool, $mint_events: $1_Event_EventHandle'$1_Diem_MintEvent', $burn_events: $1_Event_EventHandle'$1_Diem_BurnEvent', $preburn_events: $1_Event_EventHandle'$1_Diem_PreburnEvent', $cancel_burn_events: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', $exchange_rate_update_events: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_total_value(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: int): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'(x, $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_preburn_value(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: int): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_to_xdx_exchange_rate(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_FixedPoint32_FixedPoint32): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_is_synthetic(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: bool): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_scaling_factor(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: int): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_fractional_part(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: int): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_currency_code(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: Vec (int)): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_can_mint(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: bool): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_mint_events(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_Event_EventHandle'$1_Diem_MintEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_burn_events(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_Event_EventHandle'$1_Diem_BurnEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_preburn_events(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_Event_EventHandle'$1_Diem_PreburnEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_cancel_burn_events(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_Event_EventHandle'$1_Diem_CancelBurnEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x, $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XUS_XUS''_exchange_rate_update_events(s: $1_Diem_CurrencyInfo'$1_XUS_XUS', x: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'$1_XUS_XUS' {
    $1_Diem_CurrencyInfo'$1_XUS_XUS'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s), x)
}
function $IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''(s: $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $IsValid'u128'($total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'u64'($preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_FixedPoint32_FixedPoint32'($to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'bool'($is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'u64'($scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'u64'($fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'bool'($can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''($mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''($burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''($preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''($cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''($exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_CurrencyInfo'$1_XUS_XUS''(s1: $1_Diem_CurrencyInfo'$1_XUS_XUS', s2: $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS';

// struct Diem::CurrencyInfo<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:111:5+2308
type {:datatype} $1_Diem_CurrencyInfo'$1_XDX_XDX';
function {:constructor} $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value: int, $preburn_value: int, $to_xdx_exchange_rate: $1_FixedPoint32_FixedPoint32, $is_synthetic: bool, $scaling_factor: int, $fractional_part: int, $currency_code: Vec (int), $can_mint: bool, $mint_events: $1_Event_EventHandle'$1_Diem_MintEvent', $burn_events: $1_Event_EventHandle'$1_Diem_BurnEvent', $preburn_events: $1_Event_EventHandle'$1_Diem_PreburnEvent', $cancel_burn_events: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', $exchange_rate_update_events: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_total_value(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: int): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'(x, $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_preburn_value(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: int): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_to_xdx_exchange_rate(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_FixedPoint32_FixedPoint32): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_is_synthetic(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: bool): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_scaling_factor(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: int): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_fractional_part(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: int): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_currency_code(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: Vec (int)): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_can_mint(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: bool): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_mint_events(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_Event_EventHandle'$1_Diem_MintEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_burn_events(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_Event_EventHandle'$1_Diem_BurnEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_preburn_events(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_Event_EventHandle'$1_Diem_PreburnEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_cancel_burn_events(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_Event_EventHandle'$1_Diem_CancelBurnEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x, $exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_exchange_rate_update_events(s: $1_Diem_CurrencyInfo'$1_XDX_XDX', x: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'$1_XDX_XDX' {
    $1_Diem_CurrencyInfo'$1_XDX_XDX'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s), x)
}
function $IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''(s: $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $IsValid'u128'($total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'u64'($preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_FixedPoint32_FixedPoint32'($to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'bool'($is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'u64'($scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'u64'($fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'bool'($can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''($mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''($burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''($preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''($cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''($exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_CurrencyInfo'$1_XDX_XDX''(s1: $1_Diem_CurrencyInfo'$1_XDX_XDX', s2: $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX';

// struct Diem::CurrencyInfo<#0> at /home/ying/diem/language/diem-framework/modules/Diem.move:111:5+2308
type {:datatype} $1_Diem_CurrencyInfo'#0';
function {:constructor} $1_Diem_CurrencyInfo'#0'($total_value: int, $preburn_value: int, $to_xdx_exchange_rate: $1_FixedPoint32_FixedPoint32, $is_synthetic: bool, $scaling_factor: int, $fractional_part: int, $currency_code: Vec (int), $can_mint: bool, $mint_events: $1_Event_EventHandle'$1_Diem_MintEvent', $burn_events: $1_Event_EventHandle'$1_Diem_BurnEvent', $preburn_events: $1_Event_EventHandle'$1_Diem_PreburnEvent', $cancel_burn_events: $1_Event_EventHandle'$1_Diem_CancelBurnEvent', $exchange_rate_update_events: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'#0';
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_total_value(s: $1_Diem_CurrencyInfo'#0', x: int): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'(x, $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_preburn_value(s: $1_Diem_CurrencyInfo'#0', x: int): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), x, $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_to_xdx_exchange_rate(s: $1_Diem_CurrencyInfo'#0', x: $1_FixedPoint32_FixedPoint32): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), x, $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_is_synthetic(s: $1_Diem_CurrencyInfo'#0', x: bool): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), x, $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_scaling_factor(s: $1_Diem_CurrencyInfo'#0', x: int): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), x, $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_fractional_part(s: $1_Diem_CurrencyInfo'#0', x: int): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), x, $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_currency_code(s: $1_Diem_CurrencyInfo'#0', x: Vec (int)): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), x, $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_can_mint(s: $1_Diem_CurrencyInfo'#0', x: bool): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), x, $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_mint_events(s: $1_Diem_CurrencyInfo'#0', x: $1_Event_EventHandle'$1_Diem_MintEvent'): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), x, $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_burn_events(s: $1_Diem_CurrencyInfo'#0', x: $1_Event_EventHandle'$1_Diem_BurnEvent'): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), x, $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_preburn_events(s: $1_Diem_CurrencyInfo'#0', x: $1_Event_EventHandle'$1_Diem_PreburnEvent'): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), x, $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_cancel_burn_events(s: $1_Diem_CurrencyInfo'#0', x: $1_Event_EventHandle'$1_Diem_CancelBurnEvent'): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), x, $exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $Update'$1_Diem_CurrencyInfo'#0''_exchange_rate_update_events(s: $1_Diem_CurrencyInfo'#0', x: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent'): $1_Diem_CurrencyInfo'#0' {
    $1_Diem_CurrencyInfo'#0'($total_value#$1_Diem_CurrencyInfo'#0'(s), $preburn_value#$1_Diem_CurrencyInfo'#0'(s), $to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s), $is_synthetic#$1_Diem_CurrencyInfo'#0'(s), $scaling_factor#$1_Diem_CurrencyInfo'#0'(s), $fractional_part#$1_Diem_CurrencyInfo'#0'(s), $currency_code#$1_Diem_CurrencyInfo'#0'(s), $can_mint#$1_Diem_CurrencyInfo'#0'(s), $mint_events#$1_Diem_CurrencyInfo'#0'(s), $burn_events#$1_Diem_CurrencyInfo'#0'(s), $preburn_events#$1_Diem_CurrencyInfo'#0'(s), $cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s), x)
}
function $IsValid'$1_Diem_CurrencyInfo'#0''(s: $1_Diem_CurrencyInfo'#0'): bool {
    $IsValid'u128'($total_value#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'u64'($preburn_value#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_FixedPoint32_FixedPoint32'($to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'bool'($is_synthetic#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'u64'($scaling_factor#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'u64'($fractional_part#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'bool'($can_mint#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''($mint_events#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''($burn_events#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''($preburn_events#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''($cancel_burn_events#$1_Diem_CurrencyInfo'#0'(s))
      && $IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''($exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'(s))
}
function {:inline} $IsEqual'$1_Diem_CurrencyInfo'#0''(s1: $1_Diem_CurrencyInfo'#0', s2: $1_Diem_CurrencyInfo'#0'): bool {
    s1 == s2
}
var $1_Diem_CurrencyInfo'#0'_$memory: $Memory $1_Diem_CurrencyInfo'#0';

// struct Diem::MintCapability<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:33:5+58
type {:datatype} $1_Diem_MintCapability'$1_XUS_XUS';
function {:constructor} $1_Diem_MintCapability'$1_XUS_XUS'($dummy_field: bool): $1_Diem_MintCapability'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_MintCapability'$1_XUS_XUS''_dummy_field(s: $1_Diem_MintCapability'$1_XUS_XUS', x: bool): $1_Diem_MintCapability'$1_XUS_XUS' {
    $1_Diem_MintCapability'$1_XUS_XUS'(x)
}
function $IsValid'$1_Diem_MintCapability'$1_XUS_XUS''(s: $1_Diem_MintCapability'$1_XUS_XUS'): bool {
    $IsValid'bool'($dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_MintCapability'$1_XUS_XUS''(s1: $1_Diem_MintCapability'$1_XUS_XUS', s2: $1_Diem_MintCapability'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_Diem_MintCapability'$1_XUS_XUS'_$memory: $Memory $1_Diem_MintCapability'$1_XUS_XUS';

// struct Diem::MintCapability<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:33:5+58
type {:datatype} $1_Diem_MintCapability'$1_XDX_XDX';
function {:constructor} $1_Diem_MintCapability'$1_XDX_XDX'($dummy_field: bool): $1_Diem_MintCapability'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_MintCapability'$1_XDX_XDX''_dummy_field(s: $1_Diem_MintCapability'$1_XDX_XDX', x: bool): $1_Diem_MintCapability'$1_XDX_XDX' {
    $1_Diem_MintCapability'$1_XDX_XDX'(x)
}
function $IsValid'$1_Diem_MintCapability'$1_XDX_XDX''(s: $1_Diem_MintCapability'$1_XDX_XDX'): bool {
    $IsValid'bool'($dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_MintCapability'$1_XDX_XDX''(s1: $1_Diem_MintCapability'$1_XDX_XDX', s2: $1_Diem_MintCapability'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_Diem_MintCapability'$1_XDX_XDX'_$memory: $Memory $1_Diem_MintCapability'$1_XDX_XDX';

// struct Diem::MintCapability<#0> at /home/ying/diem/language/diem-framework/modules/Diem.move:33:5+58
type {:datatype} $1_Diem_MintCapability'#0';
function {:constructor} $1_Diem_MintCapability'#0'($dummy_field: bool): $1_Diem_MintCapability'#0';
function {:inline} $Update'$1_Diem_MintCapability'#0''_dummy_field(s: $1_Diem_MintCapability'#0', x: bool): $1_Diem_MintCapability'#0' {
    $1_Diem_MintCapability'#0'(x)
}
function $IsValid'$1_Diem_MintCapability'#0''(s: $1_Diem_MintCapability'#0'): bool {
    $IsValid'bool'($dummy_field#$1_Diem_MintCapability'#0'(s))
}
function {:inline} $IsEqual'$1_Diem_MintCapability'#0''(s1: $1_Diem_MintCapability'#0', s2: $1_Diem_MintCapability'#0'): bool {
    s1 == s2
}
var $1_Diem_MintCapability'#0'_$memory: $Memory $1_Diem_MintCapability'#0';

// struct Diem::MintEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:44:5+199
type {:datatype} $1_Diem_MintEvent;
function {:constructor} $1_Diem_MintEvent($amount: int, $currency_code: Vec (int)): $1_Diem_MintEvent;
function {:inline} $Update'$1_Diem_MintEvent'_amount(s: $1_Diem_MintEvent, x: int): $1_Diem_MintEvent {
    $1_Diem_MintEvent(x, $currency_code#$1_Diem_MintEvent(s))
}
function {:inline} $Update'$1_Diem_MintEvent'_currency_code(s: $1_Diem_MintEvent, x: Vec (int)): $1_Diem_MintEvent {
    $1_Diem_MintEvent($amount#$1_Diem_MintEvent(s), x)
}
function $IsValid'$1_Diem_MintEvent'(s: $1_Diem_MintEvent): bool {
    $IsValid'u64'($amount#$1_Diem_MintEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_MintEvent(s))
}
function {:inline} $IsEqual'$1_Diem_MintEvent'(s1: $1_Diem_MintEvent, s2: $1_Diem_MintEvent): bool {
    s1 == s2
}

// struct Diem::Preburn<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:170:5+240
type {:datatype} $1_Diem_Preburn'$1_XUS_XUS';
function {:constructor} $1_Diem_Preburn'$1_XUS_XUS'($to_burn: $1_Diem_Diem'$1_XUS_XUS'): $1_Diem_Preburn'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_Preburn'$1_XUS_XUS''_to_burn(s: $1_Diem_Preburn'$1_XUS_XUS', x: $1_Diem_Diem'$1_XUS_XUS'): $1_Diem_Preburn'$1_XUS_XUS' {
    $1_Diem_Preburn'$1_XUS_XUS'(x)
}
function $IsValid'$1_Diem_Preburn'$1_XUS_XUS''(s: $1_Diem_Preburn'$1_XUS_XUS'): bool {
    $IsValid'$1_Diem_Diem'$1_XUS_XUS''($to_burn#$1_Diem_Preburn'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_Preburn'$1_XUS_XUS''(s1: $1_Diem_Preburn'$1_XUS_XUS', s2: $1_Diem_Preburn'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_Diem_Preburn'$1_XUS_XUS'_$memory: $Memory $1_Diem_Preburn'$1_XUS_XUS';

// struct Diem::Preburn<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/Diem.move:170:5+240
type {:datatype} $1_Diem_Preburn'$1_XDX_XDX';
function {:constructor} $1_Diem_Preburn'$1_XDX_XDX'($to_burn: $1_Diem_Diem'$1_XDX_XDX'): $1_Diem_Preburn'$1_XDX_XDX';
function {:inline} $Update'$1_Diem_Preburn'$1_XDX_XDX''_to_burn(s: $1_Diem_Preburn'$1_XDX_XDX', x: $1_Diem_Diem'$1_XDX_XDX'): $1_Diem_Preburn'$1_XDX_XDX' {
    $1_Diem_Preburn'$1_XDX_XDX'(x)
}
function $IsValid'$1_Diem_Preburn'$1_XDX_XDX''(s: $1_Diem_Preburn'$1_XDX_XDX'): bool {
    $IsValid'$1_Diem_Diem'$1_XDX_XDX''($to_burn#$1_Diem_Preburn'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_Diem_Preburn'$1_XDX_XDX''(s1: $1_Diem_Preburn'$1_XDX_XDX', s2: $1_Diem_Preburn'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_Diem_Preburn'$1_XDX_XDX'_$memory: $Memory $1_Diem_Preburn'$1_XDX_XDX';

// struct Diem::Preburn<#0> at /home/ying/diem/language/diem-framework/modules/Diem.move:170:5+240
type {:datatype} $1_Diem_Preburn'#0';
function {:constructor} $1_Diem_Preburn'#0'($to_burn: $1_Diem_Diem'#0'): $1_Diem_Preburn'#0';
function {:inline} $Update'$1_Diem_Preburn'#0''_to_burn(s: $1_Diem_Preburn'#0', x: $1_Diem_Diem'#0'): $1_Diem_Preburn'#0' {
    $1_Diem_Preburn'#0'(x)
}
function $IsValid'$1_Diem_Preburn'#0''(s: $1_Diem_Preburn'#0'): bool {
    $IsValid'$1_Diem_Diem'#0''($to_burn#$1_Diem_Preburn'#0'(s))
}
function {:inline} $IsEqual'$1_Diem_Preburn'#0''(s1: $1_Diem_Preburn'#0', s2: $1_Diem_Preburn'#0'): bool {
    s1 == s2
}
var $1_Diem_Preburn'#0'_$memory: $Memory $1_Diem_Preburn'#0';

// struct Diem::PreburnEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:70:5+355
type {:datatype} $1_Diem_PreburnEvent;
function {:constructor} $1_Diem_PreburnEvent($amount: int, $currency_code: Vec (int), $preburn_address: int): $1_Diem_PreburnEvent;
function {:inline} $Update'$1_Diem_PreburnEvent'_amount(s: $1_Diem_PreburnEvent, x: int): $1_Diem_PreburnEvent {
    $1_Diem_PreburnEvent(x, $currency_code#$1_Diem_PreburnEvent(s), $preburn_address#$1_Diem_PreburnEvent(s))
}
function {:inline} $Update'$1_Diem_PreburnEvent'_currency_code(s: $1_Diem_PreburnEvent, x: Vec (int)): $1_Diem_PreburnEvent {
    $1_Diem_PreburnEvent($amount#$1_Diem_PreburnEvent(s), x, $preburn_address#$1_Diem_PreburnEvent(s))
}
function {:inline} $Update'$1_Diem_PreburnEvent'_preburn_address(s: $1_Diem_PreburnEvent, x: int): $1_Diem_PreburnEvent {
    $1_Diem_PreburnEvent($amount#$1_Diem_PreburnEvent(s), $currency_code#$1_Diem_PreburnEvent(s), x)
}
function $IsValid'$1_Diem_PreburnEvent'(s: $1_Diem_PreburnEvent): bool {
    $IsValid'u64'($amount#$1_Diem_PreburnEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_Diem_PreburnEvent(s))
      && $IsValid'address'($preburn_address#$1_Diem_PreburnEvent(s))
}
function {:inline} $IsEqual'$1_Diem_PreburnEvent'(s1: $1_Diem_PreburnEvent, s2: $1_Diem_PreburnEvent): bool {
    s1 == s2
}

// struct Diem::ToXDXExchangeRateUpdateEvent at /home/ying/diem/language/diem-framework/modules/Diem.move:94:5+424
type {:datatype} $1_Diem_ToXDXExchangeRateUpdateEvent;
function {:constructor} $1_Diem_ToXDXExchangeRateUpdateEvent($currency_code: Vec (int), $new_to_xdx_exchange_rate: int): $1_Diem_ToXDXExchangeRateUpdateEvent;
function {:inline} $Update'$1_Diem_ToXDXExchangeRateUpdateEvent'_currency_code(s: $1_Diem_ToXDXExchangeRateUpdateEvent, x: Vec (int)): $1_Diem_ToXDXExchangeRateUpdateEvent {
    $1_Diem_ToXDXExchangeRateUpdateEvent(x, $new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent(s))
}
function {:inline} $Update'$1_Diem_ToXDXExchangeRateUpdateEvent'_new_to_xdx_exchange_rate(s: $1_Diem_ToXDXExchangeRateUpdateEvent, x: int): $1_Diem_ToXDXExchangeRateUpdateEvent {
    $1_Diem_ToXDXExchangeRateUpdateEvent($currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent(s), x)
}
function $IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'(s: $1_Diem_ToXDXExchangeRateUpdateEvent): bool {
    $IsValid'vec'u8''($currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent(s))
      && $IsValid'u64'($new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent(s))
}
function {:inline} $IsEqual'$1_Diem_ToXDXExchangeRateUpdateEvent'(s1: $1_Diem_ToXDXExchangeRateUpdateEvent, s2: $1_Diem_ToXDXExchangeRateUpdateEvent): bool {
    s1 == s2
}

// fun Diem::zero<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1121:5+127
procedure {:inline 1} $1_Diem_zero'$1_XUS_XUS'() returns ($ret0: $1_Diem_Diem'$1_XUS_XUS')
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $t3: $1_Diem_Diem'$1_XUS_XUS';
    var $temp_0'$1_Diem_Diem'$1_XUS_XUS'': $1_Diem_Diem'$1_XUS_XUS';

    // bytecode translation starts here
    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume {:print "$at(11,53923,53953)"} true;

    // assume Identical($t0, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume ($t0 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
L4:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(5, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume {:print "$at(11,53923,53953)"} true;
    assume {:print "$track_abort(18,44):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
L3:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30

    // $t2 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1123:33+1
    assume {:print "$at(11,53987,53988)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack Diem::Diem<#0>($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1123:9+27
    $t3 := $1_Diem_Diem'$1_XUS_XUS'($t2);

    // trace_return[0]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1123:9+27
    assume {:print "$track_return(18,44,0):", $t3} $t3 == $t3;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
    assume {:print "$at(11,53995,53996)"} true;
L1:

    // return $t3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
    $ret0 := $t3;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun Diem::zero<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1121:5+127
procedure {:inline 1} $1_Diem_zero'$1_XDX_XDX'() returns ($ret0: $1_Diem_Diem'$1_XDX_XDX')
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $t3: $1_Diem_Diem'$1_XDX_XDX';
    var $temp_0'$1_Diem_Diem'$1_XDX_XDX'': $1_Diem_Diem'$1_XDX_XDX';

    // bytecode translation starts here
    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume {:print "$at(11,53923,53953)"} true;

    // assume Identical($t0, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume ($t0 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
L4:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'num'(5, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume {:print "$at(11,53923,53953)"} true;
    assume {:print "$track_abort(18,44):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
L3:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30

    // $t2 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1123:33+1
    assume {:print "$at(11,53987,53988)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack Diem::Diem<#0>($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1123:9+27
    $t3 := $1_Diem_Diem'$1_XDX_XDX'($t2);

    // trace_return[0]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1123:9+27
    assume {:print "$track_return(18,44,0):", $t3} $t3 == $t3;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
    assume {:print "$at(11,53995,53996)"} true;
L1:

    // return $t3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
    $ret0 := $t3;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun Diem::zero<#0> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1121:5+127
procedure {:inline 1} $1_Diem_zero'#0'() returns ($ret0: $1_Diem_Diem'#0')
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $t3: $1_Diem_Diem'#0';
    var $temp_0'$1_Diem_Diem'#0'': $1_Diem_Diem'#0';

    // bytecode translation starts here
    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume {:print "$at(11,53923,53953)"} true;

    // assume Identical($t0, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume ($t0 == !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
L4:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(5, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    assume {:print "$at(11,53923,53953)"} true;
    assume {:print "$track_abort(18,44):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30
L3:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1122:9+30

    // $t2 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1123:33+1
    assume {:print "$at(11,53987,53988)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // $t3 := pack Diem::Diem<#0>($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1123:9+27
    $t3 := $1_Diem_Diem'#0'($t2);

    // trace_return[0]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1123:9+27
    assume {:print "$track_return(18,44,0):", $t3} $t3 == $t3;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
    assume {:print "$at(11,53995,53996)"} true;
L1:

    // return $t3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
    $ret0 := $t3;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1124:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// struct AccountLimits::AccountLimitMutationCapability at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:11:5+51
type {:datatype} $1_AccountLimits_AccountLimitMutationCapability;
function {:constructor} $1_AccountLimits_AccountLimitMutationCapability($dummy_field: bool): $1_AccountLimits_AccountLimitMutationCapability;
function {:inline} $Update'$1_AccountLimits_AccountLimitMutationCapability'_dummy_field(s: $1_AccountLimits_AccountLimitMutationCapability, x: bool): $1_AccountLimits_AccountLimitMutationCapability {
    $1_AccountLimits_AccountLimitMutationCapability(x)
}
function $IsValid'$1_AccountLimits_AccountLimitMutationCapability'(s: $1_AccountLimits_AccountLimitMutationCapability): bool {
    $IsValid'bool'($dummy_field#$1_AccountLimits_AccountLimitMutationCapability(s))
}
function {:inline} $IsEqual'$1_AccountLimits_AccountLimitMutationCapability'(s1: $1_AccountLimits_AccountLimitMutationCapability, s2: $1_AccountLimits_AccountLimitMutationCapability): bool {
    s1 == s2
}

// struct AccountLimits::LimitsDefinition<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:17:5+406
type {:datatype} $1_AccountLimits_LimitsDefinition'$1_XUS_XUS';
function {:constructor} $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($max_inflow: int, $max_outflow: int, $time_period: int, $max_holding: int): $1_AccountLimits_LimitsDefinition'$1_XUS_XUS';
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''_max_inflow(s: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS', x: int): $1_AccountLimits_LimitsDefinition'$1_XUS_XUS' {
    $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(x, $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''_max_outflow(s: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS', x: int): $1_AccountLimits_LimitsDefinition'$1_XUS_XUS' {
    $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), x, $time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''_time_period(s: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS', x: int): $1_AccountLimits_LimitsDefinition'$1_XUS_XUS' {
    $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), x, $max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''_max_holding(s: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS', x: int): $1_AccountLimits_LimitsDefinition'$1_XUS_XUS' {
    $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), $time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s), x)
}
function $IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''(s: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'): bool {
    $IsValid'u64'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
      && $IsValid'u64'($max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
      && $IsValid'u64'($time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
      && $IsValid'u64'($max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''(s1: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS', s2: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory: $Memory $1_AccountLimits_LimitsDefinition'$1_XUS_XUS';

// struct AccountLimits::LimitsDefinition<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:17:5+406
type {:datatype} $1_AccountLimits_LimitsDefinition'$1_XDX_XDX';
function {:constructor} $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($max_inflow: int, $max_outflow: int, $time_period: int, $max_holding: int): $1_AccountLimits_LimitsDefinition'$1_XDX_XDX';
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''_max_inflow(s: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX', x: int): $1_AccountLimits_LimitsDefinition'$1_XDX_XDX' {
    $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(x, $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''_max_outflow(s: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX', x: int): $1_AccountLimits_LimitsDefinition'$1_XDX_XDX' {
    $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), x, $time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''_time_period(s: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX', x: int): $1_AccountLimits_LimitsDefinition'$1_XDX_XDX' {
    $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), x, $max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''_max_holding(s: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX', x: int): $1_AccountLimits_LimitsDefinition'$1_XDX_XDX' {
    $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), $time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s), x)
}
function $IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''(s: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'): bool {
    $IsValid'u64'($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
      && $IsValid'u64'($max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
      && $IsValid'u64'($time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
      && $IsValid'u64'($max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''(s1: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX', s2: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory: $Memory $1_AccountLimits_LimitsDefinition'$1_XDX_XDX';

// struct XUS::XUS at /home/ying/diem/language/diem-framework/modules/XUS.move:10:5+14
type {:datatype} $1_XUS_XUS;
function {:constructor} $1_XUS_XUS($dummy_field: bool): $1_XUS_XUS;
function {:inline} $Update'$1_XUS_XUS'_dummy_field(s: $1_XUS_XUS, x: bool): $1_XUS_XUS {
    $1_XUS_XUS(x)
}
function $IsValid'$1_XUS_XUS'(s: $1_XUS_XUS): bool {
    $IsValid'bool'($dummy_field#$1_XUS_XUS(s))
}
function {:inline} $IsEqual'$1_XUS_XUS'(s1: $1_XUS_XUS, s2: $1_XUS_XUS): bool {
    s1 == s2
}

// spec fun at /home/ying/diem/language/diem-framework/modules/XDX.move:133:9+80
function {:inline} $1_XDX_reserve_exists($1_XDX_Reserve_$memory: $Memory $1_XDX_Reserve): bool {
    $ResourceExists($1_XDX_Reserve_$memory, 173345816)
}

// struct XDX::XDX at /home/ying/diem/language/diem-framework/modules/XDX.move:15:5+14
type {:datatype} $1_XDX_XDX;
function {:constructor} $1_XDX_XDX($dummy_field: bool): $1_XDX_XDX;
function {:inline} $Update'$1_XDX_XDX'_dummy_field(s: $1_XDX_XDX, x: bool): $1_XDX_XDX {
    $1_XDX_XDX(x)
}
function $IsValid'$1_XDX_XDX'(s: $1_XDX_XDX): bool {
    $IsValid'bool'($dummy_field#$1_XDX_XDX(s))
}
function {:inline} $IsEqual'$1_XDX_XDX'(s1: $1_XDX_XDX, s2: $1_XDX_XDX): bool {
    s1 == s2
}

// struct XDX::Reserve at /home/ying/diem/language/diem-framework/modules/XDX.move:24:5+677
type {:datatype} $1_XDX_Reserve;
function {:constructor} $1_XDX_Reserve($mint_cap: $1_Diem_MintCapability'$1_XDX_XDX', $burn_cap: $1_Diem_BurnCapability'$1_XDX_XDX', $preburn_cap: $1_Diem_Preburn'$1_XDX_XDX'): $1_XDX_Reserve;
function {:inline} $Update'$1_XDX_Reserve'_mint_cap(s: $1_XDX_Reserve, x: $1_Diem_MintCapability'$1_XDX_XDX'): $1_XDX_Reserve {
    $1_XDX_Reserve(x, $burn_cap#$1_XDX_Reserve(s), $preburn_cap#$1_XDX_Reserve(s))
}
function {:inline} $Update'$1_XDX_Reserve'_burn_cap(s: $1_XDX_Reserve, x: $1_Diem_BurnCapability'$1_XDX_XDX'): $1_XDX_Reserve {
    $1_XDX_Reserve($mint_cap#$1_XDX_Reserve(s), x, $preburn_cap#$1_XDX_Reserve(s))
}
function {:inline} $Update'$1_XDX_Reserve'_preburn_cap(s: $1_XDX_Reserve, x: $1_Diem_Preburn'$1_XDX_XDX'): $1_XDX_Reserve {
    $1_XDX_Reserve($mint_cap#$1_XDX_Reserve(s), $burn_cap#$1_XDX_Reserve(s), x)
}
function $IsValid'$1_XDX_Reserve'(s: $1_XDX_Reserve): bool {
    $IsValid'$1_Diem_MintCapability'$1_XDX_XDX''($mint_cap#$1_XDX_Reserve(s))
      && $IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''($burn_cap#$1_XDX_Reserve(s))
      && $IsValid'$1_Diem_Preburn'$1_XDX_XDX''($preburn_cap#$1_XDX_Reserve(s))
}
function {:inline} $IsEqual'$1_XDX_Reserve'(s1: $1_XDX_Reserve, s2: $1_XDX_Reserve): bool {
    s1 == s2
}
var $1_XDX_Reserve_$memory: $Memory $1_XDX_Reserve;

// spec fun at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:108:5+90
function {:inline} $1_VASPDomain_$has_vasp_domains($1_VASPDomain_VASPDomains_$memory: $Memory $1_VASPDomain_VASPDomains, addr: int): bool {
    $ResourceExists($1_VASPDomain_VASPDomains_$memory, addr)
}

// struct VASPDomain::VASPDomain at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:25:5+110
type {:datatype} $1_VASPDomain_VASPDomain;
function {:constructor} $1_VASPDomain_VASPDomain($domain: Vec (int)): $1_VASPDomain_VASPDomain;
function {:inline} $Update'$1_VASPDomain_VASPDomain'_domain(s: $1_VASPDomain_VASPDomain, x: Vec (int)): $1_VASPDomain_VASPDomain {
    $1_VASPDomain_VASPDomain(x)
}
function $IsValid'$1_VASPDomain_VASPDomain'(s: $1_VASPDomain_VASPDomain): bool {
    $IsValid'vec'u8''($domain#$1_VASPDomain_VASPDomain(s))
}
function {:inline} $IsEqual'$1_VASPDomain_VASPDomain'(s1: $1_VASPDomain_VASPDomain, s2: $1_VASPDomain_VASPDomain): bool {
    s1 == s2
}

// struct VASPDomain::VASPDomainEvent at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:39:5+256
type {:datatype} $1_VASPDomain_VASPDomainEvent;
function {:constructor} $1_VASPDomain_VASPDomainEvent($removed: bool, $domain: $1_VASPDomain_VASPDomain, $address: int): $1_VASPDomain_VASPDomainEvent;
function {:inline} $Update'$1_VASPDomain_VASPDomainEvent'_removed(s: $1_VASPDomain_VASPDomainEvent, x: bool): $1_VASPDomain_VASPDomainEvent {
    $1_VASPDomain_VASPDomainEvent(x, $domain#$1_VASPDomain_VASPDomainEvent(s), $address#$1_VASPDomain_VASPDomainEvent(s))
}
function {:inline} $Update'$1_VASPDomain_VASPDomainEvent'_domain(s: $1_VASPDomain_VASPDomainEvent, x: $1_VASPDomain_VASPDomain): $1_VASPDomain_VASPDomainEvent {
    $1_VASPDomain_VASPDomainEvent($removed#$1_VASPDomain_VASPDomainEvent(s), x, $address#$1_VASPDomain_VASPDomainEvent(s))
}
function {:inline} $Update'$1_VASPDomain_VASPDomainEvent'_address(s: $1_VASPDomain_VASPDomainEvent, x: int): $1_VASPDomain_VASPDomainEvent {
    $1_VASPDomain_VASPDomainEvent($removed#$1_VASPDomain_VASPDomainEvent(s), $domain#$1_VASPDomain_VASPDomainEvent(s), x)
}
function $IsValid'$1_VASPDomain_VASPDomainEvent'(s: $1_VASPDomain_VASPDomainEvent): bool {
    $IsValid'bool'($removed#$1_VASPDomain_VASPDomainEvent(s))
      && $IsValid'$1_VASPDomain_VASPDomain'($domain#$1_VASPDomain_VASPDomainEvent(s))
      && $IsValid'address'($address#$1_VASPDomain_VASPDomainEvent(s))
}
function {:inline} $IsEqual'$1_VASPDomain_VASPDomainEvent'(s1: $1_VASPDomain_VASPDomainEvent, s2: $1_VASPDomain_VASPDomainEvent): bool {
    s1 == s2
}

// struct VASPDomain::VASPDomainManager at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:33:5+235
type {:datatype} $1_VASPDomain_VASPDomainManager;
function {:constructor} $1_VASPDomain_VASPDomainManager($vasp_domain_events: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent'): $1_VASPDomain_VASPDomainManager;
function {:inline} $Update'$1_VASPDomain_VASPDomainManager'_vasp_domain_events(s: $1_VASPDomain_VASPDomainManager, x: $1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent'): $1_VASPDomain_VASPDomainManager {
    $1_VASPDomain_VASPDomainManager(x)
}
function $IsValid'$1_VASPDomain_VASPDomainManager'(s: $1_VASPDomain_VASPDomainManager): bool {
    $IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''($vasp_domain_events#$1_VASPDomain_VASPDomainManager(s))
}
function {:inline} $IsEqual'$1_VASPDomain_VASPDomainManager'(s1: $1_VASPDomain_VASPDomainManager, s2: $1_VASPDomain_VASPDomainManager): bool {
    s1 == s2
}
var $1_VASPDomain_VASPDomainManager_$memory: $Memory $1_VASPDomain_VASPDomainManager;

// struct VASPDomain::VASPDomains at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:12:5+142
type {:datatype} $1_VASPDomain_VASPDomains;
function {:constructor} $1_VASPDomain_VASPDomains($domains: Vec ($1_VASPDomain_VASPDomain)): $1_VASPDomain_VASPDomains;
function {:inline} $Update'$1_VASPDomain_VASPDomains'_domains(s: $1_VASPDomain_VASPDomains, x: Vec ($1_VASPDomain_VASPDomain)): $1_VASPDomain_VASPDomains {
    $1_VASPDomain_VASPDomains(x)
}
function $IsValid'$1_VASPDomain_VASPDomains'(s: $1_VASPDomain_VASPDomains): bool {
    $IsValid'vec'$1_VASPDomain_VASPDomain''($domains#$1_VASPDomain_VASPDomains(s))
}
function {:inline} $IsEqual'$1_VASPDomain_VASPDomains'(s1: $1_VASPDomain_VASPDomains, s2: $1_VASPDomain_VASPDomains): bool {
    s1 == s2
}
var $1_VASPDomain_VASPDomains_$memory: $Memory $1_VASPDomain_VASPDomains;

// fun VASPDomain::publish_vasp_domains [baseline] at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+380
procedure {:inline 1} $1_VASPDomain_publish_vasp_domains(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: Vec ($1_VASPDomain_VASPDomain);
    var $t14: $1_VASPDomain_VASPDomains;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:93:9+54
    assume {:print "$at(36,3464,3518)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // trace_local[vasp_account]($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:80:5+1
    assume {:print "$at(36,3043,3044)"} true;
    assume {:print "$track_local(22,5,0):", $t0} $t0 == $t0;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    assume {:print "$at(36,3131,3175)"} true;

    // assume Identical($t6, Or(Not(exists<Roles::RoleId>($t5)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 5))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    assume ($t6 == (!$ResourceExists($1_Roles_RoleId_$memory, $t5) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 5)));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
L5:

    // assume Or(And(Not(exists<Roles::RoleId>($t5)), Eq(5, $t7)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 5), Eq(3, $t7))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t5) && $IsEqual'num'(5, $t7)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 5) && $IsEqual'num'(3, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    assume {:print "$at(36,3131,3175)"} true;
    assume {:print "$track_abort(22,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44
L4:

    // opaque end: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:83:9+44

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:34+32
    assume {:print "$at(36,3226,3258)"} true;

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:34+32
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:34+32
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:34+32

    // $t9 := exists<VASPDomain::VASPDomains>($t8) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:14+6
    $t9 := $ResourceExists($1_VASPDomain_VASPDomains_$memory, $t8);

    // $t10 := !($t9) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:85:13+1
    call $t10 := $Not($t9);

    // $t11 := 0 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:86:39+13
    assume {:print "$at(36,3299,3312)"} true;
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // $t12 := opaque begin: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:86:13+40

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:86:13+40
    assume $IsValid'u64'($t12);

    // assume Eq<u64>($t12, 6) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:86:13+40
    assume $IsEqual'u64'($t12, 6);

    // $t12 := opaque end: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:86:13+40

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    assume {:print "$at(36,3185,3323)"} true;
    assume {:print "$track_local(22,5,2):", $t12} $t12 == $t12;

    // trace_local[tmp#$1]($t10) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    assume {:print "$track_local(22,5,1):", $t10} $t10 == $t10;

    // if ($t10) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    assume {:print "$at(36,3185,3323)"} true;
    assume {:print "$track_abort(22,5):", $t12} $t12 == $t12;

    // $t7 := move($t12) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    $t7 := $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:84:9+138
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:88:17+12
    assume {:print "$at(36,3341,3353)"} true;
L0:

    // $t13 := Vector::empty<VASPDomain::VASPDomain>() on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:89:22+15
    assume {:print "$at(36,3390,3405)"} true;
    call $t13 := $1_Vector_empty'$1_VASPDomain_VASPDomain'();
    if ($abort_flag) {
        assume {:print "$at(36,3390,3405)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(22,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // $t14 := pack VASPDomain::VASPDomains($t13) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:88:31+61
    assume {:print "$at(36,3355,3416)"} true;
    $t14 := $1_VASPDomain_VASPDomains($t13);

    // move_to<VASPDomain::VASPDomains>($t14, $t0) on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:88:9+7
    if ($ResourceExists($1_VASPDomain_VASPDomains_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_VASPDomain_VASPDomains_$memory := $ResourceUpdate($1_VASPDomain_VASPDomains_$memory, $1_Signer_spec_address_of($t0), $t14);
    }
    if ($abort_flag) {
        assume {:print "$at(36,3333,3340)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(22,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:91:5+1
    assume {:print "$at(36,3422,3423)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:91:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:91:5+1
L3:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:91:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:164:5+80
function {:inline} $1_VASP_$is_child($1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP, addr: int): bool {
    $ResourceExists($1_VASP_ChildVASP_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:154:5+82
function {:inline} $1_VASP_$is_parent($1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, addr: int): bool {
    $ResourceExists($1_VASP_ParentVASP_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:174:5+89
function {:inline} $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP, $1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, addr: int): bool {
    ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) || $1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:141:9+207
function {:inline} $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP, $1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, addr: int): int {
    if ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr)) then (addr) else ($parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:197:10+168
function {:inline} $1_VASP_spec_is_same_vasp($1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP, $1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, addr1: int, addr2: int): bool {
    (($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr1) && $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr2)) && $IsEqual'address'($1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr1), $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr2)))
}

// struct VASP::ChildVASP at /home/ying/diem/language/diem-framework/modules/VASP.move:21:5+54
type {:datatype} $1_VASP_ChildVASP;
function {:constructor} $1_VASP_ChildVASP($parent_vasp_addr: int): $1_VASP_ChildVASP;
function {:inline} $Update'$1_VASP_ChildVASP'_parent_vasp_addr(s: $1_VASP_ChildVASP, x: int): $1_VASP_ChildVASP {
    $1_VASP_ChildVASP(x)
}
function $IsValid'$1_VASP_ChildVASP'(s: $1_VASP_ChildVASP): bool {
    $IsValid'address'($parent_vasp_addr#$1_VASP_ChildVASP(s))
}
function {:inline} $IsEqual'$1_VASP_ChildVASP'(s1: $1_VASP_ChildVASP, s2: $1_VASP_ChildVASP): bool {
    s1 == s2
}
var $1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP;

// struct VASP::ParentVASP at /home/ying/diem/language/diem-framework/modules/VASP.move:15:5+121
type {:datatype} $1_VASP_ParentVASP;
function {:constructor} $1_VASP_ParentVASP($num_children: int): $1_VASP_ParentVASP;
function {:inline} $Update'$1_VASP_ParentVASP'_num_children(s: $1_VASP_ParentVASP, x: int): $1_VASP_ParentVASP {
    $1_VASP_ParentVASP(x)
}
function $IsValid'$1_VASP_ParentVASP'(s: $1_VASP_ParentVASP): bool {
    $IsValid'u64'($num_children#$1_VASP_ParentVASP(s))
}
function {:inline} $IsEqual'$1_VASP_ParentVASP'(s1: $1_VASP_ParentVASP, s2: $1_VASP_ParentVASP): bool {
    s1 == s2
}
var $1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP;

// spec fun at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:44:5+118
function {:inline} $1_TransactionFee_$is_coin_initialized'$1_XUS_XUS'($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory: $Memory $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    $ResourceExists($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, 186537453)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:48:5+69
function {:inline} $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory: $Memory $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    $1_TransactionFee_$is_coin_initialized'$1_XUS_XUS'($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory)
}

// struct TransactionFee::TransactionFee<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:13:5+124
type {:datatype} $1_TransactionFee_TransactionFee'$1_XUS_XUS';
function {:constructor} $1_TransactionFee_TransactionFee'$1_XUS_XUS'($balance: $1_Diem_Diem'$1_XUS_XUS', $preburn: $1_Diem_Preburn'$1_XUS_XUS'): $1_TransactionFee_TransactionFee'$1_XUS_XUS';
function {:inline} $Update'$1_TransactionFee_TransactionFee'$1_XUS_XUS''_balance(s: $1_TransactionFee_TransactionFee'$1_XUS_XUS', x: $1_Diem_Diem'$1_XUS_XUS'): $1_TransactionFee_TransactionFee'$1_XUS_XUS' {
    $1_TransactionFee_TransactionFee'$1_XUS_XUS'(x, $preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_TransactionFee_TransactionFee'$1_XUS_XUS''_preburn(s: $1_TransactionFee_TransactionFee'$1_XUS_XUS', x: $1_Diem_Preburn'$1_XUS_XUS'): $1_TransactionFee_TransactionFee'$1_XUS_XUS' {
    $1_TransactionFee_TransactionFee'$1_XUS_XUS'($balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'(s), x)
}
function $IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''(s: $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    $IsValid'$1_Diem_Diem'$1_XUS_XUS''($balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'(s))
      && $IsValid'$1_Diem_Preburn'$1_XUS_XUS''($preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_TransactionFee_TransactionFee'$1_XUS_XUS''(s1: $1_TransactionFee_TransactionFee'$1_XUS_XUS', s2: $1_TransactionFee_TransactionFee'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory: $Memory $1_TransactionFee_TransactionFee'$1_XUS_XUS';

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:121:10+85
function {:inline} $1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential, addr: int): bool {
    $ResourceExists($1_DualAttestation_Credential_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:545:9+78
function {:inline} $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory: $Memory $1_DualAttestation_Limit): bool {
    $ResourceExists($1_DualAttestation_Limit_$memory, 173345816)
}

// struct DualAttestation::BaseUrlRotationEvent at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:57:5+257
type {:datatype} $1_DualAttestation_BaseUrlRotationEvent;
function {:constructor} $1_DualAttestation_BaseUrlRotationEvent($new_base_url: Vec (int), $time_rotated_seconds: int): $1_DualAttestation_BaseUrlRotationEvent;
function {:inline} $Update'$1_DualAttestation_BaseUrlRotationEvent'_new_base_url(s: $1_DualAttestation_BaseUrlRotationEvent, x: Vec (int)): $1_DualAttestation_BaseUrlRotationEvent {
    $1_DualAttestation_BaseUrlRotationEvent(x, $time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent(s))
}
function {:inline} $Update'$1_DualAttestation_BaseUrlRotationEvent'_time_rotated_seconds(s: $1_DualAttestation_BaseUrlRotationEvent, x: int): $1_DualAttestation_BaseUrlRotationEvent {
    $1_DualAttestation_BaseUrlRotationEvent($new_base_url#$1_DualAttestation_BaseUrlRotationEvent(s), x)
}
function $IsValid'$1_DualAttestation_BaseUrlRotationEvent'(s: $1_DualAttestation_BaseUrlRotationEvent): bool {
    $IsValid'vec'u8''($new_base_url#$1_DualAttestation_BaseUrlRotationEvent(s))
      && $IsValid'u64'($time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent(s))
}
function {:inline} $IsEqual'$1_DualAttestation_BaseUrlRotationEvent'(s1: $1_DualAttestation_BaseUrlRotationEvent, s2: $1_DualAttestation_BaseUrlRotationEvent): bool {
    s1 == s2
}

// struct DualAttestation::ComplianceKeyRotationEvent at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:49:5+303
type {:datatype} $1_DualAttestation_ComplianceKeyRotationEvent;
function {:constructor} $1_DualAttestation_ComplianceKeyRotationEvent($new_compliance_public_key: Vec (int), $time_rotated_seconds: int): $1_DualAttestation_ComplianceKeyRotationEvent;
function {:inline} $Update'$1_DualAttestation_ComplianceKeyRotationEvent'_new_compliance_public_key(s: $1_DualAttestation_ComplianceKeyRotationEvent, x: Vec (int)): $1_DualAttestation_ComplianceKeyRotationEvent {
    $1_DualAttestation_ComplianceKeyRotationEvent(x, $time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent(s))
}
function {:inline} $Update'$1_DualAttestation_ComplianceKeyRotationEvent'_time_rotated_seconds(s: $1_DualAttestation_ComplianceKeyRotationEvent, x: int): $1_DualAttestation_ComplianceKeyRotationEvent {
    $1_DualAttestation_ComplianceKeyRotationEvent($new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent(s), x)
}
function $IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'(s: $1_DualAttestation_ComplianceKeyRotationEvent): bool {
    $IsValid'vec'u8''($new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent(s))
      && $IsValid'u64'($time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent(s))
}
function {:inline} $IsEqual'$1_DualAttestation_ComplianceKeyRotationEvent'(s1: $1_DualAttestation_ComplianceKeyRotationEvent, s2: $1_DualAttestation_ComplianceKeyRotationEvent): bool {
    s1 == s2
}

// struct DualAttestation::Credential at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:19:5+1467
type {:datatype} $1_DualAttestation_Credential;
function {:constructor} $1_DualAttestation_Credential($human_name: Vec (int), $base_url: Vec (int), $compliance_public_key: Vec (int), $expiration_date: int, $compliance_key_rotation_events: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent', $base_url_rotation_events: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent'): $1_DualAttestation_Credential;
function {:inline} $Update'$1_DualAttestation_Credential'_human_name(s: $1_DualAttestation_Credential, x: Vec (int)): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential(x, $base_url#$1_DualAttestation_Credential(s), $compliance_public_key#$1_DualAttestation_Credential(s), $expiration_date#$1_DualAttestation_Credential(s), $compliance_key_rotation_events#$1_DualAttestation_Credential(s), $base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $Update'$1_DualAttestation_Credential'_base_url(s: $1_DualAttestation_Credential, x: Vec (int)): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential($human_name#$1_DualAttestation_Credential(s), x, $compliance_public_key#$1_DualAttestation_Credential(s), $expiration_date#$1_DualAttestation_Credential(s), $compliance_key_rotation_events#$1_DualAttestation_Credential(s), $base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $Update'$1_DualAttestation_Credential'_compliance_public_key(s: $1_DualAttestation_Credential, x: Vec (int)): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential($human_name#$1_DualAttestation_Credential(s), $base_url#$1_DualAttestation_Credential(s), x, $expiration_date#$1_DualAttestation_Credential(s), $compliance_key_rotation_events#$1_DualAttestation_Credential(s), $base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $Update'$1_DualAttestation_Credential'_expiration_date(s: $1_DualAttestation_Credential, x: int): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential($human_name#$1_DualAttestation_Credential(s), $base_url#$1_DualAttestation_Credential(s), $compliance_public_key#$1_DualAttestation_Credential(s), x, $compliance_key_rotation_events#$1_DualAttestation_Credential(s), $base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $Update'$1_DualAttestation_Credential'_compliance_key_rotation_events(s: $1_DualAttestation_Credential, x: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent'): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential($human_name#$1_DualAttestation_Credential(s), $base_url#$1_DualAttestation_Credential(s), $compliance_public_key#$1_DualAttestation_Credential(s), $expiration_date#$1_DualAttestation_Credential(s), x, $base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $Update'$1_DualAttestation_Credential'_base_url_rotation_events(s: $1_DualAttestation_Credential, x: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent'): $1_DualAttestation_Credential {
    $1_DualAttestation_Credential($human_name#$1_DualAttestation_Credential(s), $base_url#$1_DualAttestation_Credential(s), $compliance_public_key#$1_DualAttestation_Credential(s), $expiration_date#$1_DualAttestation_Credential(s), $compliance_key_rotation_events#$1_DualAttestation_Credential(s), x)
}
function $IsValid'$1_DualAttestation_Credential'(s: $1_DualAttestation_Credential): bool {
    $IsValid'vec'u8''($human_name#$1_DualAttestation_Credential(s))
      && $IsValid'vec'u8''($base_url#$1_DualAttestation_Credential(s))
      && $IsValid'vec'u8''($compliance_public_key#$1_DualAttestation_Credential(s))
      && $IsValid'u64'($expiration_date#$1_DualAttestation_Credential(s))
      && $IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''($compliance_key_rotation_events#$1_DualAttestation_Credential(s))
      && $IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''($base_url_rotation_events#$1_DualAttestation_Credential(s))
}
function {:inline} $IsEqual'$1_DualAttestation_Credential'(s1: $1_DualAttestation_Credential, s2: $1_DualAttestation_Credential): bool {
    s1 == s2
}
var $1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential;

// struct DualAttestation::Limit at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:44:5+58
type {:datatype} $1_DualAttestation_Limit;
function {:constructor} $1_DualAttestation_Limit($micro_xdx_limit: int): $1_DualAttestation_Limit;
function {:inline} $Update'$1_DualAttestation_Limit'_micro_xdx_limit(s: $1_DualAttestation_Limit, x: int): $1_DualAttestation_Limit {
    $1_DualAttestation_Limit(x)
}
function $IsValid'$1_DualAttestation_Limit'(s: $1_DualAttestation_Limit): bool {
    $IsValid'u64'($micro_xdx_limit#$1_DualAttestation_Limit(s))
}
function {:inline} $IsEqual'$1_DualAttestation_Limit'(s1: $1_DualAttestation_Limit, s2: $1_DualAttestation_Limit): bool {
    s1 == s2
}
var $1_DualAttestation_Limit_$memory: $Memory $1_DualAttestation_Limit;

// fun DualAttestation::rotate_base_url [baseline] at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:126:5+527
procedure {:inline 1} $1_DualAttestation_rotate_base_url(_$t0: $signer, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: $Mutation ($1_DualAttestation_Credential);
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent';
    var $t10: $1_DualAttestation_BaseUrlRotationEvent;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: $Mutation ($1_DualAttestation_Credential);
    var $t17: $Mutation (Vec (int));
    var $t18: $Mutation ($1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent');
    var $t19: int;
    var $t20: bool;
    var $t21: $1_DualAttestation_BaseUrlRotationEvent;
    var $t0: $signer;
    var $t1: Vec (int);
    var $temp_0'$1_DualAttestation_Credential': $1_DualAttestation_Credential;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t16));
    assume IsEmptyVec(p#$Mutation($t17));
    assume IsEmptyVec(p#$Mutation($t18));

    // bytecode translation starts here
    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:143:9+46
    assume {:print "$at(22,6672,6718)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:157:9+46
    assume {:print "$at(22,7171,7217)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:167:9+46
    assume {:print "$at(22,7616,7662)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // assume Identical($t9, select DualAttestation::Credential.base_url_rotation_events(global<DualAttestation::Credential>($t8))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:168:9+65
    assume {:print "$at(22,7671,7736)"} true;
    assume ($t9 == $base_url_rotation_events#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory, $t8)));

    // assume Identical($t10, pack DualAttestation::BaseUrlRotationEvent($t1, DiemTimestamp::spec_now_seconds())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:169:9+147
    assume {:print "$at(22,7745,7892)"} true;
    assume ($t10 == $1_DualAttestation_BaseUrlRotationEvent($t1, $1_DiemTimestamp_spec_now_seconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:126:5+1
    assume {:print "$at(22,5925,5926)"} true;
    assume {:print "$track_local(25,12,0):", $t0} $t0 == $t0;

    // trace_local[new_url]($t1) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:126:5+1
    assume {:print "$track_local(25,12,1):", $t1} $t1 == $t1;

    // $t11 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:127:20+27
    assume {:print "$at(22,6032,6059)"} true;

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:127:20+27
    assume $IsValid'address'($t11);

    // assume Eq<address>($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:127:20+27
    assume $IsEqual'address'($t11, $1_Signer_spec_address_of($t0));

    // $t11 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:127:20+27

    // trace_local[addr]($t11) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:127:13+4
    assume {:print "$track_local(25,12,4):", $t11} $t11 == $t11;

    // $t12 := exists<DualAttestation::Credential>($t11) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:16+6
    assume {:print "$at(22,6076,6082)"} true;
    $t12 := $ResourceExists($1_DualAttestation_Credential_$memory, $t11);

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:64+11
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::not_published($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:42+34

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:42+34
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 5) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:42+34
    assume $IsEqual'u64'($t14, 5);

    // $t14 := opaque end: Errors::not_published($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:42+34

    // trace_local[tmp#$3]($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:9+68
    assume {:print "$track_local(25,12,3):", $t14} $t14 == $t14;

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:9+68
    assume {:print "$track_local(25,12,2):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:9+68
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:9+68
L1:

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:9+68
    assume {:print "$at(22,6069,6137)"} true;
    assume {:print "$track_abort(25,12):", $t14} $t14 == $t14;

    // $t15 := move($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:9+68
    $t15 := $t14;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:128:9+68
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:129:56+4
    assume {:print "$at(22,6194,6198)"} true;
L0:

    // $t16 := borrow_global<DualAttestation::Credential>($t11) on_abort goto L3 with $t15 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:129:26+17
    if (!$ResourceExists($1_DualAttestation_Credential_$memory, $t11)) {
        call $ExecFailureAbort();
    } else {
        $t16 := $Mutation($Global($t11), EmptyVec(), $ResourceValue($1_DualAttestation_Credential_$memory, $t11));
    }
    if ($abort_flag) {
        assume {:print "$at(22,6164,6181)"} true;
        $t15 := $abort_code;
        assume {:print "$track_abort(25,12):", $t15} $t15 == $t15;
        goto L3;
    }

    // trace_local[credential]($t16) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:129:13+10
    $temp_0'$1_DualAttestation_Credential' := $Dereference($t16);
    assume {:print "$track_local(25,12,5):", $temp_0'$1_DualAttestation_Credential'} $temp_0'$1_DualAttestation_Credential' == $temp_0'$1_DualAttestation_Credential';

    // $t17 := borrow_field<DualAttestation::Credential>.base_url($t16) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:130:9+19
    assume {:print "$at(22,6209,6228)"} true;
    $t17 := $ChildMutation($t16, 1, $base_url#$1_DualAttestation_Credential($Dereference($t16)));

    // write_ref($t17, $t1) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:130:9+34
    $t17 := $UpdateMutation($t17, $t1);

    // write_back[Reference($t16).base_url]($t17) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:130:9+34
    $t16 := $UpdateMutation($t16, $Update'$1_DualAttestation_Credential'_base_url($Dereference($t16), $Dereference($t17)));

    // $t18 := borrow_field<DualAttestation::Credential>.base_url_rotation_events($t16) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:131:27+40
    assume {:print "$at(22,6271,6311)"} true;
    $t18 := $ChildMutation($t16, 5, $base_url_rotation_events#$1_DualAttestation_Credential($Dereference($t16)));

    // $t19 := opaque begin: DiemTimestamp::now_seconds() at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28
    assume {:print "$at(22,6405,6433)"} true;

    // assume Identical($t20, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28
    assume ($t20 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t20) goto L6 else goto L4 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28
    if ($t20) { goto L6; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28
L5:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t15)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t15));

    // trace_abort($t15) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28
    assume {:print "$at(22,6405,6433)"} true;
    assume {:print "$track_abort(25,12):", $t15} $t15 == $t15;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28
L4:

    // assume WellFormed($t19) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28
    assume $IsValid'u64'($t19);

    // assume Eq<u64>($t19, Div(DiemTimestamp::spec_now_microseconds(), 1000000)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28
    assume $IsEqual'u64'($t19, ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) div 1000000));

    // $t19 := opaque end: DiemTimestamp::now_seconds() at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:133:35+28

    // $t21 := pack DualAttestation::BaseUrlRotationEvent($t1, $t19) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:131:69+131
    assume {:print "$at(22,6313,6444)"} true;
    $t21 := $1_DualAttestation_BaseUrlRotationEvent($t1, $t19);

    // Event::emit_event<DualAttestation::BaseUrlRotationEvent>($t18, $t21) on_abort goto L3 with $t15 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:131:9+192
    call $t18 := $1_Event_emit_event'$1_DualAttestation_BaseUrlRotationEvent'($t18, $t21);
    if ($abort_flag) {
        assume {:print "$at(22,6253,6445)"} true;
        $t15 := $abort_code;
        assume {:print "$track_abort(25,12):", $t15} $t15 == $t15;
        goto L3;
    }

    // write_back[DualAttestation::Credential@]($t16) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:131:9+192
    $1_DualAttestation_Credential_$memory := $ResourceUpdate($1_DualAttestation_Credential_$memory, $GlobalLocationAddress($t16),
        $Dereference($t16));

    // label L2 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:135:5+1
    assume {:print "$at(22,6451,6452)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:135:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:135:5+1
L3:

    // abort($t15) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:135:5+1
    $abort_code := $t15;
    $abort_flag := true;
    return;

    // label L6 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L6:

    // destroy($t16) at <internal>:1:1+10

    // destroy($t18) at <internal>:1:1+10

    // goto L5 at <internal>:1:1+10
    goto L5;

}

// fun DualAttestation::rotate_compliance_public_key [baseline] at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:177:5+715
procedure {:inline 1} $1_DualAttestation_rotate_compliance_public_key(_$t0: $signer, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: $Mutation ($1_DualAttestation_Credential);
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent';
    var $t12: $1_DualAttestation_ComplianceKeyRotationEvent;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: $Mutation ($1_DualAttestation_Credential);
    var $t22: $Mutation (Vec (int));
    var $t23: $Mutation ($1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent');
    var $t24: int;
    var $t25: bool;
    var $t26: $1_DualAttestation_ComplianceKeyRotationEvent;
    var $t0: $signer;
    var $t1: Vec (int);
    var $temp_0'$1_DualAttestation_Credential': $1_DualAttestation_Credential;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t21));
    assume IsEmptyVec(p#$Mutation($t22));
    assume IsEmptyVec(p#$Mutation($t23));

    // bytecode translation starts here
    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:201:9+46
    assume {:print "$at(22,9028,9074)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:212:9+46
    assume {:print "$at(22,9492,9538)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:221:9+46
    assume {:print "$at(22,9998,10044)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // assume Identical($t11, select DualAttestation::Credential.compliance_key_rotation_events(global<DualAttestation::Credential>($t10))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:222:9+71
    assume {:print "$at(22,10053,10124)"} true;
    assume ($t11 == $compliance_key_rotation_events#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory, $t10)));

    // assume Identical($t12, pack DualAttestation::ComplianceKeyRotationEvent($t1, DiemTimestamp::spec_now_seconds())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:223:9+166
    assume {:print "$at(22,10133,10299)"} true;
    assume ($t12 == $1_DualAttestation_ComplianceKeyRotationEvent($t1, $1_DiemTimestamp_spec_now_seconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:177:5+1
    assume {:print "$at(22,8002,8003)"} true;
    assume {:print "$track_local(25,13,0):", $t0} $t0 == $t0;

    // trace_local[new_key]($t1) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:177:5+1
    assume {:print "$track_local(25,13,1):", $t1} $t1 == $t1;

    // $t13 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:181:20+27
    assume {:print "$at(22,8145,8172)"} true;

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:181:20+27
    assume $IsValid'address'($t13);

    // assume Eq<address>($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:181:20+27
    assume $IsEqual'address'($t13, $1_Signer_spec_address_of($t0));

    // $t13 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:181:20+27

    // trace_local[addr]($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:181:13+4
    assume {:print "$track_local(25,13,6):", $t13} $t13 == $t13;

    // $t14 := exists<DualAttestation::Credential>($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:16+6
    assume {:print "$at(22,8189,8195)"} true;
    $t14 := $ResourceExists($1_DualAttestation_Credential_$memory, $t13);

    // $t15 := 0 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:64+11
    $t15 := 0;
    assume $IsValid'u64'($t15);

    // $t16 := opaque begin: Errors::not_published($t15) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:42+34

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:42+34
    assume $IsValid'u64'($t16);

    // assume Eq<u64>($t16, 5) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:42+34
    assume $IsEqual'u64'($t16, 5);

    // $t16 := opaque end: Errors::not_published($t15) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:42+34

    // trace_local[tmp#$3]($t16) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:9+68
    assume {:print "$track_local(25,13,3):", $t16} $t16 == $t16;

    // trace_local[tmp#$2]($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:9+68
    assume {:print "$track_local(25,13,2):", $t14} $t14 == $t14;

    // if ($t14) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:9+68
    if ($t14) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:9+68
L1:

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:9+68
    assume {:print "$at(22,8182,8250)"} true;
    assume {:print "$track_abort(25,13):", $t16} $t16 == $t16;

    // $t17 := move($t16) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:9+68
    $t17 := $t16;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:182:9+68
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:51+12
    assume {:print "$at(22,8302,8314)"} true;
L0:

    // $t18 := Signature::ed25519_validate_pubkey($t1) on_abort goto L5 with $t17 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:16+48
    call $t18 := $1_Signature_ed25519_validate_pubkey($t1);
    if ($abort_flag) {
        assume {:print "$at(22,8267,8315)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(25,13):", $t17} $t17 == $t17;
        goto L5;
    }

    // $t19 := 2 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:91+19
    $t19 := 2;
    assume $IsValid'u64'($t19);

    // $t20 := opaque begin: Errors::invalid_argument($t19) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:66+45

    // assume WellFormed($t20) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:66+45
    assume $IsValid'u64'($t20);

    // assume Eq<u64>($t20, 7) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:66+45
    assume $IsEqual'u64'($t20, 7);

    // $t20 := opaque end: Errors::invalid_argument($t19) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:66+45

    // trace_local[tmp#$5]($t20) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:9+103
    assume {:print "$track_local(25,13,5):", $t20} $t20 == $t20;

    // trace_local[tmp#$4]($t18) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:9+103
    assume {:print "$track_local(25,13,4):", $t18} $t18 == $t18;

    // if ($t18) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:9+103
    if ($t18) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:9+103
L3:

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:9+103
    assume {:print "$at(22,8260,8363)"} true;
    assume {:print "$track_abort(25,13):", $t20} $t20 == $t20;

    // $t17 := move($t20) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:9+103
    $t17 := $t20;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:183:9+103
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:184:56+4
    assume {:print "$at(22,8420,8424)"} true;
L2:

    // $t21 := borrow_global<DualAttestation::Credential>($t13) on_abort goto L5 with $t17 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:184:26+17
    if (!$ResourceExists($1_DualAttestation_Credential_$memory, $t13)) {
        call $ExecFailureAbort();
    } else {
        $t21 := $Mutation($Global($t13), EmptyVec(), $ResourceValue($1_DualAttestation_Credential_$memory, $t13));
    }
    if ($abort_flag) {
        assume {:print "$at(22,8390,8407)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(25,13):", $t17} $t17 == $t17;
        goto L5;
    }

    // trace_local[credential]($t21) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:184:13+10
    $temp_0'$1_DualAttestation_Credential' := $Dereference($t21);
    assume {:print "$track_local(25,13,7):", $temp_0'$1_DualAttestation_Credential'} $temp_0'$1_DualAttestation_Credential' == $temp_0'$1_DualAttestation_Credential';

    // $t22 := borrow_field<DualAttestation::Credential>.compliance_public_key($t21) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:185:9+32
    assume {:print "$at(22,8435,8467)"} true;
    $t22 := $ChildMutation($t21, 2, $compliance_public_key#$1_DualAttestation_Credential($Dereference($t21)));

    // write_ref($t22, $t1) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:185:9+47
    $t22 := $UpdateMutation($t22, $t1);

    // write_back[Reference($t21).compliance_public_key]($t22) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:185:9+47
    $t21 := $UpdateMutation($t21, $Update'$1_DualAttestation_Credential'_compliance_public_key($Dereference($t21), $Dereference($t22)));

    // $t23 := borrow_field<DualAttestation::Credential>.compliance_key_rotation_events($t21) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:186:27+46
    assume {:print "$at(22,8510,8556)"} true;
    $t23 := $ChildMutation($t21, 4, $compliance_key_rotation_events#$1_DualAttestation_Credential($Dereference($t21)));

    // $t24 := opaque begin: DiemTimestamp::now_seconds() at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28
    assume {:print "$at(22,8669,8697)"} true;

    // assume Identical($t25, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28
    assume ($t25 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t25) goto L8 else goto L6 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28
    if ($t25) { goto L8; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28
L7:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t17)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t17));

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28
    assume {:print "$at(22,8669,8697)"} true;
    assume {:print "$track_abort(25,13):", $t17} $t17 == $t17;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28
L6:

    // assume WellFormed($t24) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28
    assume $IsValid'u64'($t24);

    // assume Eq<u64>($t24, Div(DiemTimestamp::spec_now_microseconds(), 1000000)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28
    assume $IsEqual'u64'($t24, ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) div 1000000));

    // $t24 := opaque end: DiemTimestamp::now_seconds() at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:188:35+28

    // $t26 := pack DualAttestation::ComplianceKeyRotationEvent($t1, $t24) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:186:75+150
    assume {:print "$at(22,8558,8708)"} true;
    $t26 := $1_DualAttestation_ComplianceKeyRotationEvent($t1, $t24);

    // Event::emit_event<DualAttestation::ComplianceKeyRotationEvent>($t23, $t26) on_abort goto L5 with $t17 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:186:9+217
    call $t23 := $1_Event_emit_event'$1_DualAttestation_ComplianceKeyRotationEvent'($t23, $t26);
    if ($abort_flag) {
        assume {:print "$at(22,8492,8709)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(25,13):", $t17} $t17 == $t17;
        goto L5;
    }

    // write_back[DualAttestation::Credential@]($t21) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:186:9+217
    $1_DualAttestation_Credential_$memory := $ResourceUpdate($1_DualAttestation_Credential_$memory, $GlobalLocationAddress($t21),
        $Dereference($t21));

    // label L4 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:191:5+1
    assume {:print "$at(22,8716,8717)"} true;
L4:

    // return () at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:191:5+1
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:191:5+1
L5:

    // abort($t17) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:191:5+1
    $abort_code := $t17;
    $abort_flag := true;
    return;

    // label L8 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L8:

    // destroy($t21) at <internal>:1:1+10

    // destroy($t23) at <internal>:1:1+10

    // goto L7 at <internal>:1:1+10
    goto L7;

}

// struct DiemTransactionPublishingOption::DiemTransactionPublishingOption at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:24:5+381
type {:datatype} $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
function {:constructor} $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($script_allow_list: Vec (Vec (int)), $module_publishing_allowed: bool): $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
function {:inline} $Update'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_script_allow_list(s: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption, x: Vec (Vec (int))): $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption {
    $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(x, $module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s))
}
function {:inline} $Update'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_module_publishing_allowed(s: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption, x: bool): $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption {
    $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s), x)
}
function $IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption): bool {
    $IsValid'vec'vec'u8'''($script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s))
      && $IsValid'bool'($module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption(s))
}
function {:inline} $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s1: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption, s2: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption): bool {
    s1 == s2
}

// struct DesignatedDealer::Dealer at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:14:5+130
type {:datatype} $1_DesignatedDealer_Dealer;
function {:constructor} $1_DesignatedDealer_Dealer($mint_event_handle: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent'): $1_DesignatedDealer_Dealer;
function {:inline} $Update'$1_DesignatedDealer_Dealer'_mint_event_handle(s: $1_DesignatedDealer_Dealer, x: $1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent'): $1_DesignatedDealer_Dealer {
    $1_DesignatedDealer_Dealer(x)
}
function $IsValid'$1_DesignatedDealer_Dealer'(s: $1_DesignatedDealer_Dealer): bool {
    $IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''($mint_event_handle#$1_DesignatedDealer_Dealer(s))
}
function {:inline} $IsEqual'$1_DesignatedDealer_Dealer'(s1: $1_DesignatedDealer_Dealer, s2: $1_DesignatedDealer_Dealer): bool {
    s1 == s2
}
var $1_DesignatedDealer_Dealer_$memory: $Memory $1_DesignatedDealer_Dealer;

// struct DesignatedDealer::ReceivedMintEvent at /home/ying/diem/language/diem-framework/modules/DesignatedDealer.move:38:5+286
type {:datatype} $1_DesignatedDealer_ReceivedMintEvent;
function {:constructor} $1_DesignatedDealer_ReceivedMintEvent($currency_code: Vec (int), $destination_address: int, $amount: int): $1_DesignatedDealer_ReceivedMintEvent;
function {:inline} $Update'$1_DesignatedDealer_ReceivedMintEvent'_currency_code(s: $1_DesignatedDealer_ReceivedMintEvent, x: Vec (int)): $1_DesignatedDealer_ReceivedMintEvent {
    $1_DesignatedDealer_ReceivedMintEvent(x, $destination_address#$1_DesignatedDealer_ReceivedMintEvent(s), $amount#$1_DesignatedDealer_ReceivedMintEvent(s))
}
function {:inline} $Update'$1_DesignatedDealer_ReceivedMintEvent'_destination_address(s: $1_DesignatedDealer_ReceivedMintEvent, x: int): $1_DesignatedDealer_ReceivedMintEvent {
    $1_DesignatedDealer_ReceivedMintEvent($currency_code#$1_DesignatedDealer_ReceivedMintEvent(s), x, $amount#$1_DesignatedDealer_ReceivedMintEvent(s))
}
function {:inline} $Update'$1_DesignatedDealer_ReceivedMintEvent'_amount(s: $1_DesignatedDealer_ReceivedMintEvent, x: int): $1_DesignatedDealer_ReceivedMintEvent {
    $1_DesignatedDealer_ReceivedMintEvent($currency_code#$1_DesignatedDealer_ReceivedMintEvent(s), $destination_address#$1_DesignatedDealer_ReceivedMintEvent(s), x)
}
function $IsValid'$1_DesignatedDealer_ReceivedMintEvent'(s: $1_DesignatedDealer_ReceivedMintEvent): bool {
    $IsValid'vec'u8''($currency_code#$1_DesignatedDealer_ReceivedMintEvent(s))
      && $IsValid'address'($destination_address#$1_DesignatedDealer_ReceivedMintEvent(s))
      && $IsValid'u64'($amount#$1_DesignatedDealer_ReceivedMintEvent(s))
}
function {:inline} $IsEqual'$1_DesignatedDealer_ReceivedMintEvent'(s1: $1_DesignatedDealer_ReceivedMintEvent, s2: $1_DesignatedDealer_ReceivedMintEvent): bool {
    s1 == s2
}

// struct ChainId::ChainId at /home/ying/diem/language/diem-framework/modules/ChainId.move:10:5+45
type {:datatype} $1_ChainId_ChainId;
function {:constructor} $1_ChainId_ChainId($id: int): $1_ChainId_ChainId;
function {:inline} $Update'$1_ChainId_ChainId'_id(s: $1_ChainId_ChainId, x: int): $1_ChainId_ChainId {
    $1_ChainId_ChainId(x)
}
function $IsValid'$1_ChainId_ChainId'(s: $1_ChainId_ChainId): bool {
    $IsValid'u8'($id#$1_ChainId_ChainId(s))
}
function {:inline} $IsEqual'$1_ChainId_ChainId'(s1: $1_ChainId_ChainId, s2: $1_ChainId_ChainId): bool {
    s1 == s2
}
var $1_ChainId_ChainId_$memory: $Memory $1_ChainId_ChainId;

// struct BitVector::BitVector at /home/ying/diem/language/move-stdlib/modules/BitVector.move:14:5+100
type {:datatype} $1_BitVector_BitVector;
function {:constructor} $1_BitVector_BitVector($length: int, $bit_field: Vec (bool)): $1_BitVector_BitVector;
function {:inline} $Update'$1_BitVector_BitVector'_length(s: $1_BitVector_BitVector, x: int): $1_BitVector_BitVector {
    $1_BitVector_BitVector(x, $bit_field#$1_BitVector_BitVector(s))
}
function {:inline} $Update'$1_BitVector_BitVector'_bit_field(s: $1_BitVector_BitVector, x: Vec (bool)): $1_BitVector_BitVector {
    $1_BitVector_BitVector($length#$1_BitVector_BitVector(s), x)
}
function $IsValid'$1_BitVector_BitVector'(s: $1_BitVector_BitVector): bool {
    $IsValid'u64'($length#$1_BitVector_BitVector(s))
      && $IsValid'vec'bool''($bit_field#$1_BitVector_BitVector(s))
}
function {:inline} $IsEqual'$1_BitVector_BitVector'(s1: $1_BitVector_BitVector, s2: $1_BitVector_BitVector): bool {
    s1 == s2
}

// fun BitVector::set [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:54:5+257
procedure {:inline 1} $1_BitVector_set(_$t0: $Mutation ($1_BitVector_BitVector), _$t1: int) returns ($ret0: $Mutation ($1_BitVector_BitVector))
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $Mutation (bool);
    var $t5: Vec (bool);
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: $Mutation (Vec (bool));
    var $t12: $Mutation (bool);
    var $t13: bool;
    var $t0: $Mutation ($1_BitVector_BitVector);
    var $t1: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t11));
    assume IsEmptyVec(p#$Mutation($t12));

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:54:5+1
    assume {:print "$at(43,1539,1540)"} true;
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,4,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // trace_local[bit_index]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:54:5+1
    assume {:print "$track_local(29,4,1):", $t1} $t1 == $t1;

    // $t5 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:43+20
    assume {:print "$at(43,1641,1661)"} true;
    $t5 := $bit_field#$1_BitVector_BitVector($Dereference($t0));

    // $t6 := Vector::length<bool>($t5) on_abort goto L3 with $t7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:28+36
    call $t6 := $1_Vector_length'bool'($t5);
    if ($abort_flag) {
        assume {:print "$at(43,1626,1662)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(29,4):", $t7} $t7 == $t7;
        goto L3;
    }

    // $t8 := <($t1, $t6) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:26+1
    call $t8 := $Lt($t1, $t6);

    // $t9 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:91+6
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // $t10 := opaque begin: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:66+32

    // assume WellFormed($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:66+32
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:66+32
    assume $IsEqual'u64'($t10, 7);

    // $t10 := opaque end: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:66+32

    // trace_local[tmp#$3]($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    assume {:print "$track_local(29,4,3):", $t10} $t10 == $t10;

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    assume {:print "$track_local(29,4,2):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
L1:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90

    // trace_abort($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    assume {:print "$at(43,1607,1697)"} true;
    assume {:print "$track_abort(29,4):", $t10} $t10 == $t10;

    // $t7 := move($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    $t7 := $t10;

    // goto L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:55:9+90
    goto L3;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:56:41+9
    assume {:print "$at(43,1739,1748)"} true;
L0:

    // $t11 := borrow_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:56:36+24
    $t11 := $ChildMutation($t0, 1, $bit_field#$1_BitVector_BitVector($Dereference($t0)));

    // $t12 := Vector::borrow_mut<bool>($t11, $t1) on_abort goto L3 with $t7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:56:17+55
    call $t12,$t11 := $1_Vector_borrow_mut'bool'($t11, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,1715,1770)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(29,4):", $t7} $t7 == $t7;
        goto L3;
    }

    // trace_local[x]($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:56:13+1
    $temp_0'bool' := $Dereference($t12);
    assume {:print "$track_local(29,4,4):", $temp_0'bool'} $temp_0'bool' == $temp_0'bool';

    // $t13 := true at /home/ying/diem/language/move-stdlib/modules/BitVector.move:57:14+4
    assume {:print "$at(43,1785,1789)"} true;
    $t13 := true;
    assume $IsValid'bool'($t13);

    // write_ref($t12, $t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:57:9+9
    $t12 := $UpdateMutation($t12, $t13);

    // write_back[Reference($t11)[]]($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:57:9+9
    $t11 := $UpdateMutation($t11, UpdateVec($Dereference($t11), ReadVec(p#$Mutation($t12), LenVec(p#$Mutation($t11))), $Dereference($t12)));

    // write_back[Reference($t0).bit_field]($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:57:9+9
    $t0 := $UpdateMutation($t0, $Update'$1_BitVector_BitVector'_bit_field($Dereference($t0), $Dereference($t11)));

    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:57:18+1
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,4,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:58:5+1
    assume {:print "$at(43,1795,1796)"} true;
L2:

    // return () at /home/ying/diem/language/move-stdlib/modules/BitVector.move:58:5+1
    $ret0 := $t0;
    return;

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:58:5+1
L3:

    // abort($t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:58:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun BitVector::is_index_set [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:116:5+233
procedure {:inline 1} $1_BitVector_is_index_set(_$t0: $1_BitVector_BitVector, _$t1: int) returns ($ret0: bool)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: Vec (bool);
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: Vec (bool);
    var $t11: bool;
    var $t0: $1_BitVector_BitVector;
    var $t1: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:116:5+1
    assume {:print "$at(43,3773,3774)"} true;
    assume {:print "$track_local(29,0,0):", $t0} $t0 == $t0;

    // trace_local[bit_index]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:116:5+1
    assume {:print "$track_local(29,0,1):", $t1} $t1 == $t1;

    // $t4 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:43+20
    assume {:print "$at(43,3886,3906)"} true;
    $t4 := $bit_field#$1_BitVector_BitVector($t0);

    // $t5 := Vector::length<bool>($t4) on_abort goto L3 with $t6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:28+36
    call $t5 := $1_Vector_length'bool'($t4);
    if ($abort_flag) {
        assume {:print "$at(43,3871,3907)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(29,0):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t7 := <($t1, $t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:26+1
    call $t7 := $Lt($t1, $t5);

    // $t8 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:91+6
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := opaque begin: Errors::invalid_argument($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:66+32

    // assume WellFormed($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:66+32
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:66+32
    assume $IsEqual'u64'($t9, 7);

    // $t9 := opaque end: Errors::invalid_argument($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:66+32

    // trace_local[tmp#$3]($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    assume {:print "$track_local(29,0,3):", $t9} $t9 == $t9;

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    assume {:print "$track_local(29,0,2):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
L1:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90

    // trace_abort($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    assume {:print "$at(43,3852,3942)"} true;
    assume {:print "$track_abort(29,0):", $t9} $t9 == $t9;

    // $t6 := move($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    $t6 := $t9;

    // goto L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:117:9+90
    goto L3;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:118:26+9
    assume {:print "$at(43,3969,3978)"} true;
L0:

    // $t10 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:118:25+20
    $t10 := $bit_field#$1_BitVector_BitVector($t0);

    // $t11 := Vector::borrow<bool>($t10, $t1) on_abort goto L3 with $t6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:118:10+47
    call $t11 := $1_Vector_borrow'bool'($t10, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,3953,4000)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(29,0):", $t6} $t6 == $t6;
        goto L3;
    }

    // trace_return[0]($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:118:9+48
    assume {:print "$track_return(29,0,0):", $t11} $t11 == $t11;

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:119:5+1
    assume {:print "$at(43,4005,4006)"} true;
L2:

    // return $t11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:119:5+1
    $ret0 := $t11;
    return;

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:119:5+1
L3:

    // abort($t6) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:119:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun BitVector::longest_set_sequence_starting_at [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:145:5+476
procedure {:inline 1} $1_BitVector_longest_set_sequence_starting_at(_$t0: $1_BitVector_BitVector, _$t1: int) returns ($ret0: int)
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: bool;
    var $t12: bool;
    var $t13: bool;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t0: $1_BitVector_BitVector;
    var $t1: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:145:5+1
    assume {:print "$at(43,4895,4896)"} true;
    assume {:print "$track_local(29,2,0):", $t0} $t0 == $t0;

    // trace_local[start_index]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:145:5+1
    assume {:print "$track_local(29,2,1):", $t1} $t1 == $t1;

    // $t5 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:30+16
    assume {:print "$at(43,5016,5032)"} true;
    $t5 := $length#$1_BitVector_BitVector($t0);

    // $t6 := <($t1, $t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:28+1
    call $t6 := $Lt($t1, $t5);

    // $t7 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:73+6
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := opaque begin: Errors::invalid_argument($t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:48+32

    // assume WellFormed($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:48+32
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:48+32
    assume $IsEqual'u64'($t8, 7);

    // $t8 := opaque end: Errors::invalid_argument($t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:48+32

    // trace_local[tmp#$3]($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    assume {:print "$track_local(29,2,3):", $t8} $t8 == $t8;

    // trace_local[tmp#$2]($t6) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    assume {:print "$track_local(29,2,2):", $t6} $t6 == $t6;

    // if ($t6) goto L0 else goto L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    if ($t6) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
L1:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72

    // trace_abort($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    assume {:print "$at(43,4995,5067)"} true;
    assume {:print "$track_abort(29,2):", $t8} $t8 == $t8;

    // $t9 := move($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    $t9 := $t8;

    // goto L11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:146:9+72
    goto L11;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:147:21+11
    assume {:print "$at(43,5089,5100)"} true;
L0:

    // trace_local[index]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:147:13+5
    assume {:print "$track_local(29,2,4):", $t1} $t1 == $t1;

    // label L8 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    assume {:print "$at(43,5211,5216)"} true;
L8:

    // havoc[val]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t10;
    assume $IsValid'u64'($t10);

    // havoc[val]($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t11;
    assume $IsValid'bool'($t11);

    // havoc[val]($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t12;
    assume $IsValid'bool'($t12);

    // havoc[val]($t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t13;
    assume $IsValid'bool'($t13);

    // havoc[val]($t14) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t14;
    assume $IsValid'u64'($t14);

    // havoc[val]($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    havoc $t15;
    assume $IsValid'u64'($t15);

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:16+5
    assume !$abort_flag;

    // $t10 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:24+16
    $t10 := $length#$1_BitVector_BitVector($t0);

    // $t11 := <($t1, $t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:22+1
    call $t11 := $Lt($t1, $t10);

    // if ($t11) goto L2 else goto L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:9+131
    if ($t11) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:9+131
L3:

    // goto L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:150:9+131
    goto L4;

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:31+9
    assume {:print "$at(43,5269,5278)"} true;
L2:

    // $t12 := BitVector::is_index_set($t0, $t1) on_abort goto L11 with $t9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:18+30
    call $t12 := $1_BitVector_is_index_set($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,5256,5286)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(29,2):", $t9} $t9 == $t9;
        goto L11;
    }

    // $t13 := !($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:17+1
    call $t13 := $Not($t12);

    // if ($t13) goto L5 else goto L6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:13+42
    if ($t13) { goto L5; } else { goto L6; }

    // label L6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:13+42
L6:

    // goto L7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:13+42
    goto L7;

    // label L5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:50+5
L5:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:50+5

    // goto L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:151:50+5
    goto L4;

    // label L7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:152:21+5
    assume {:print "$at(43,5315,5320)"} true;
L7:

    // $t14 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:152:29+1
    $t14 := 1;
    assume $IsValid'u64'($t14);

    // $t15 := +($t1, $t14) on_abort goto L11 with $t9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:152:27+1
    call $t15 := $AddU64($t1, $t14);
    if ($abort_flag) {
        assume {:print "$at(43,5321,5322)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(29,2):", $t9} $t9 == $t9;
        goto L11;
    }

    // trace_local[index]($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:152:13+5
    assume {:print "$track_local(29,2,4):", $t15} $t15 == $t15;

    // goto L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:152:30+1
    goto L9;

    // label L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:9+5
    assume {:print "$at(43,5346,5351)"} true;
L4:

    // $t16 := -($t1, $t1) on_abort goto L11 with $t9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:15+1
    call $t16 := $Sub($t1, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,5352,5353)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(29,2):", $t9} $t9 == $t9;
        goto L11;
    }

    // trace_return[0]($t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:9+19
    assume {:print "$track_return(29,2,0):", $t16} $t16 == $t16;

    // goto L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:9+19
    goto L10;

    // label L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:9+5
    // Loop invariant checking block for the loop started with header: L8
L9:

    // stop() at /home/ying/diem/language/move-stdlib/modules/BitVector.move:155:9+5
    assume false;
    return;

    // label L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:156:5+1
    assume {:print "$at(43,5370,5371)"} true;
L10:

    // return $t16 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:156:5+1
    $ret0 := $t16;
    return;

    // label L11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:156:5+1
L11:

    // abort($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:156:5+1
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// fun BitVector::new [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:19:5+687
procedure {:inline 1} $1_BitVector_new(_$t0: int) returns ($ret0: $1_BitVector_BitVector)
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: Vec (bool);
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: bool;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: bool;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: $Mutation (Vec (bool));
    var $t22: Vec (bool);
    var $t23: $1_BitVector_BitVector;
    var $t0: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'bool'': Vec (bool);
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t21));

    // bytecode translation starts here
    // trace_local[length]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:19:5+1
    assume {:print "$at(43,432,433)"} true;
    assume {:print "$track_local(29,3,0):", $t0} $t0 == $t0;

    // $t7 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:25+1
    assume {:print "$at(43,497,498)"} true;
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := >($t0, $t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:23+1
    call $t8 := $Gt($t0, $t7);

    // $t9 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:53+7
    $t9 := 1;
    assume $IsValid'u64'($t9);

    // $t10 := opaque begin: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:28+33

    // assume WellFormed($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:28+33
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:28+33
    assume $IsEqual'u64'($t10, 7);

    // $t10 := opaque end: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:28+33

    // trace_local[tmp#$2]($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    assume {:print "$track_local(29,3,2):", $t10} $t10 == $t10;

    // trace_local[tmp#$1]($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    assume {:print "$track_local(29,3,1):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    if ($t8) { goto L0; } else { goto L11; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
L1:

    // trace_abort($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    assume {:print "$at(43,481,534)"} true;
    assume {:print "$track_abort(29,3):", $t10} $t10 == $t10;

    // $t11 := move($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    $t11 := $t10;

    // goto L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:20:9+53
    goto L10;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:16+6
    assume {:print "$at(43,551,557)"} true;
L0:

    // $t12 := 1024 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:25+8
    $t12 := 1024;
    assume $IsValid'u64'($t12);

    // $t13 := <($t0, $t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:23+1
    call $t13 := $Lt($t0, $t12);

    // $t14 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:60+7
    $t14 := 1;
    assume $IsValid'u64'($t14);

    // $t15 := opaque begin: Errors::invalid_argument($t14) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:35+33

    // assume WellFormed($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:35+33
    assume $IsValid'u64'($t15);

    // assume Eq<u64>($t15, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:35+33
    assume $IsEqual'u64'($t15, 7);

    // $t15 := opaque end: Errors::invalid_argument($t14) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:35+33

    // trace_local[tmp#$4]($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    assume {:print "$track_local(29,3,4):", $t15} $t15 == $t15;

    // trace_local[tmp#$3]($t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    assume {:print "$track_local(29,3,3):", $t13} $t13 == $t13;

    // if ($t13) goto L2 else goto L12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    if ($t13) { goto L2; } else { goto L12; }

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
L3:

    // trace_abort($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    assume {:print "$at(43,544,604)"} true;
    assume {:print "$track_abort(29,3):", $t15} $t15 == $t15;

    // $t11 := move($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    $t11 := $t15;

    // goto L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:21:9+60
    goto L10;

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:22:23+1
    assume {:print "$at(43,628,629)"} true;
L2:

    // $t16 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:22:23+1
    $t16 := 0;
    assume $IsValid'u64'($t16);

    // trace_local[counter]($t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:22:13+7
    assume {:print "$track_local(29,3,6):", $t16} $t16 == $t16;

    // $t5 := Vector::empty<bool>() on_abort goto L10 with $t11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:23:25+15
    assume {:print "$at(43,655,670)"} true;
    call $t5 := $1_Vector_empty'bool'();
    if ($abort_flag) {
        assume {:print "$at(43,655,670)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(29,3):", $t11} $t11 == $t11;
        goto L10;
    }

    // trace_local[bit_field]($t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:23:13+9
    assume {:print "$track_local(29,3,5):", $t5} $t5 == $t5;

    // label L7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:24:17+106
    assume {:print "$at(43,688,794)"} true;
L7:

    // assert Le($t16, $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:25:13+28
    assume {:print "$at(43,707,735)"} true;
    assert {:msg "assert_failed(43,707,735): base case of the loop invariant does not hold"}
      ($t16 <= $t0);

    // assert Eq<num>(Len<bool>($t5), $t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    assume {:print "$at(43,748,784)"} true;
    assert {:msg "assert_failed(43,748,784): base case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($t5), $t16);

    // havoc[val]($t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t5;
    assume $IsValid'vec'bool''($t5);

    // havoc[val]($t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[val]($t17) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t17;
    assume $IsValid'bool'($t17);

    // havoc[val]($t18) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t18;
    assume $IsValid'bool'($t18);

    // havoc[val]($t19) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t19;
    assume $IsValid'u64'($t19);

    // havoc[val]($t20) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t20;
    assume $IsValid'u64'($t20);

    // havoc[mut_all]($t21) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    havoc $t21;
    assume $IsValid'vec'bool''($Dereference($t21));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    assume !$abort_flag;

    // assume Le($t16, $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:25:13+28
    assume {:print "$at(43,707,735)"} true;
    assume ($t16 <= $t0);

    // assume Eq<num>(Len<bool>($t5), $t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    assume {:print "$at(43,748,784)"} true;
    assume $IsEqual'num'(LenVec($t5), $t16);

    // $t17 := <($t16, $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:28:22+1
    assume {:print "$at(43,817,818)"} true;
    call $t17 := $Lt($t16, $t0);

    // if ($t17) goto L4 else goto L5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:24:9+249
    assume {:print "$at(43,680,929)"} true;
    if ($t17) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:24:9+249
L5:

    // goto L6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:24:9+249
    goto L6;

    // label L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:29:31+14
    assume {:print "$at(43,861,875)"} true;
L4:

    // $t21 := borrow_local($t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:29:31+14
    $t21 := $Mutation($Local(5), EmptyVec(), $t5);

    // $t18 := false at /home/ying/diem/language/move-stdlib/modules/BitVector.move:29:47+5
    $t18 := false;
    assume $IsValid'bool'($t18);

    // Vector::push_back<bool>($t21, $t18) on_abort goto L10 with $t11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:29:13+40
    call $t21 := $1_Vector_push_back'bool'($t21, $t18);
    if ($abort_flag) {
        assume {:print "$at(43,843,883)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(29,3):", $t11} $t11 == $t11;
        goto L10;
    }

    // write_back[LocalRoot($t5)@]($t21) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:29:13+40
    $t5 := $Dereference($t21);

    // $t19 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:30:33+1
    assume {:print "$at(43,917,918)"} true;
    $t19 := 1;
    assume $IsValid'u64'($t19);

    // $t20 := +($t16, $t19) on_abort goto L10 with $t11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:30:31+1
    call $t20 := $AddU64($t16, $t19);
    if ($abort_flag) {
        assume {:print "$at(43,915,916)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(29,3):", $t11} $t11 == $t11;
        goto L10;
    }

    // trace_local[counter]($t20) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:30:13+7
    assume {:print "$track_local(29,3,6):", $t20} $t20 == $t20;

    // goto L8 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:30:34+1
    goto L8;

    // label L6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:32:9+99
    assume {:print "$at(43,939,1038)"} true;
L6:

    // assert Eq<u64>($t16, $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:33:13+25
    assume {:print "$at(43,958,983)"} true;
    assert {:msg "assert_failed(43,958,983): unknown assertion failed"}
      $IsEqual'u64'($t16, $t0);

    // assert Eq<num>(Len<bool>($t5), $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:34:13+32
    assume {:print "$at(43,996,1028)"} true;
    assert {:msg "assert_failed(43,996,1028): unknown assertion failed"}
      $IsEqual'num'(LenVec($t5), $t0);

    // $t22 := move($t5) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:39:13+9
    assume {:print "$at(43,1093,1102)"} true;
    $t22 := $t5;

    // $t23 := pack BitVector::BitVector($t0, $t22) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:37:9+64
    assume {:print "$at(43,1049,1113)"} true;
    $t23 := $1_BitVector_BitVector($t0, $t22);

    // trace_return[0]($t23) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:37:9+64
    assume {:print "$track_return(29,3,0):", $t23} $t23 == $t23;

    // goto L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:37:9+64
    goto L9;

    // label L8 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:32:9+99
    // Loop invariant checking block for the loop started with header: L7
    assume {:print "$at(43,939,1038)"} true;
L8:

    // assert Le($t20, $t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:25:13+28
    assume {:print "$at(43,707,735)"} true;
    assert {:msg "assert_failed(43,707,735): induction case of the loop invariant does not hold"}
      ($t20 <= $t0);

    // assert Eq<num>(Len<bool>($t5), $t20) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    assume {:print "$at(43,748,784)"} true;
    assert {:msg "assert_failed(43,748,784): induction case of the loop invariant does not hold"}
      $IsEqual'num'(LenVec($t5), $t20);

    // stop() at /home/ying/diem/language/move-stdlib/modules/BitVector.move:26:13+36
    assume false;
    return;

    // label L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:41:5+1
    assume {:print "$at(43,1118,1119)"} true;
L9:

    // return $t23 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:41:5+1
    $ret0 := $t23;
    return;

    // label L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:41:5+1
L10:

    // abort($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:41:5+1
    $abort_code := $t11;
    $abort_flag := true;
    return;

    // label L11 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L11:

    // destroy($t21) at <internal>:1:1+10

    // goto L1 at <internal>:1:1+10
    goto L1;

    // label L12 at <internal>:1:1+10
L12:

    // destroy($t21) at <internal>:1:1+10

    // goto L3 at <internal>:1:1+10
    goto L3;

}

// fun BitVector::shift_left [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:87:5+800
procedure {:inline 1} $1_BitVector_shift_left(_$t0: $Mutation ($1_BitVector_BitVector), _$t1: int) returns ($ret0: $Mutation ($1_BitVector_BitVector))
{
    // declare local variables
    var $t2: $Mutation ($1_BitVector_BitVector);
    var $t3: int;
    var $t4: $Mutation (bool);
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: Vec (bool);
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: bool;
    var $t15: bool;
    var $t16: int;
    var $t17: int;
    var $t18: $Mutation (Vec (bool));
    var $t19: $Mutation (bool);
    var $t20: int;
    var $t21: bool;
    var $t22: $1_BitVector_BitVector;
    var $t23: bool;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t27: int;
    var $t28: int;
    var $t29: int;
    var $t30: int;
    var $t31: bool;
    var $t32: int;
    var $t33: int;
    var $t0: $Mutation ($1_BitVector_BitVector);
    var $t1: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t18));
    assume IsEmptyVec(p#$Mutation($t19));

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:87:5+1
    assume {:print "$at(43,2839,2840)"} true;
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,5,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // trace_local[amount]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:87:5+1
    assume {:print "$track_local(29,5,1):", $t1} $t1 == $t1;

    // $t8 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:23+16
    assume {:print "$at(43,2925,2941)"} true;
    $t8 := $length#$1_BitVector_BitVector($Dereference($t0));

    // $t9 := >=($t1, $t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:20+2
    call $t9 := $Ge($t1, $t8);

    // if ($t9) goto L0 else goto L25 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    if ($t9) { goto L0; } else { goto L25; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
L1:

    // goto L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    goto L2;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:89:38+9
    assume {:print "$at(43,2982,2991)"} true;
L0:

    // $t10 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:89:37+20
    $t10 := $bit_field#$1_BitVector_BitVector($Dereference($t0));

    // $t11 := Vector::length<bool>($t10) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:89:22+36
    call $t11 := $1_Vector_length'bool'($t10);
    if ($abort_flag) {
        assume {:print "$at(43,2966,3002)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[len]($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:89:16+3
    assume {:print "$track_local(29,5,7):", $t11} $t11 == $t11;

    // $t13 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:90:20+1
    assume {:print "$at(43,3023,3024)"} true;
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // trace_local[i]($t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:90:16+1
    assume {:print "$track_local(29,5,5):", $t13} $t13 == $t13;

    // label L6 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    assume {:print "$at(43,3044,3045)"} true;
L6:

    // havoc[val]($t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t13;
    assume $IsValid'u64'($t13);

    // havoc[val]($t14) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t14;
    assume $IsValid'bool'($t14);

    // havoc[val]($t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t15;
    assume $IsValid'bool'($t15);

    // havoc[val]($t16) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t16;
    assume $IsValid'u64'($t16);

    // havoc[val]($t17) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t17;
    assume $IsValid'u64'($t17);

    // havoc[mut]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $temp_0'$1_BitVector_BitVector';
    $t0 := $UpdateMutation($t0, $temp_0'$1_BitVector_BitVector');
    assume $IsValid'$1_BitVector_BitVector'($Dereference($t0));

    // havoc[mut_all]($t18) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t18;
    assume $IsValid'vec'bool''($Dereference($t18));

    // havoc[mut_all]($t19) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    havoc $t19;
    assume $IsValid'bool'($Dereference($t19));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:19+1
    assume !$abort_flag;

    // $t14 := <($t13, $t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:21+1
    call $t14 := $Lt($t13, $t11);

    // if ($t14) goto L3 else goto L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:12+161
    if ($t14) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:12+161
L4:

    // goto L5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:91:12+161
    goto L5;

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:92:51+9
    assume {:print "$at(43,3105,3114)"} true;
L3:

    // $t18 := borrow_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:92:46+24
    $t18 := $ChildMutation($t0, 1, $bit_field#$1_BitVector_BitVector($Dereference($t0)));

    // $t19 := Vector::borrow_mut<bool>($t18, $t13) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:92:27+47
    call $t19,$t18 := $1_Vector_borrow_mut'bool'($t18, $t13);
    if ($abort_flag) {
        assume {:print "$at(43,3081,3128)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[elem]($t19) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:92:20+4
    $temp_0'bool' := $Dereference($t19);
    assume {:print "$track_local(29,5,4):", $temp_0'bool'} $temp_0'bool' == $temp_0'bool';

    // $t15 := false at /home/ying/diem/language/move-stdlib/modules/BitVector.move:93:24+5
    assume {:print "$at(43,3153,3158)"} true;
    $t15 := false;
    assume $IsValid'bool'($t15);

    // write_ref($t19, $t15) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:93:16+13
    $t19 := $UpdateMutation($t19, $t15);

    // write_back[Reference($t18)[]]($t19) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:93:16+13
    $t18 := $UpdateMutation($t18, UpdateVec($Dereference($t18), ReadVec(p#$Mutation($t19), LenVec(p#$Mutation($t18))), $Dereference($t19)));

    // write_back[Reference($t0).bit_field]($t18) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:93:16+13
    $t0 := $UpdateMutation($t0, $Update'$1_BitVector_BitVector'_bit_field($Dereference($t0), $Dereference($t18)));

    // $t16 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:94:24+1
    assume {:print "$at(43,3183,3184)"} true;
    $t16 := 1;
    assume $IsValid'u64'($t16);

    // $t17 := +($t13, $t16) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:94:22+1
    call $t17 := $AddU64($t13, $t16);
    if ($abort_flag) {
        assume {:print "$at(43,3181,3182)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[i]($t17) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:94:16+1
    assume {:print "$track_local(29,5,5):", $t17} $t17 == $t17;

    // goto L20 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:94:25+1
    goto L20;

    // label L5 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    assume {:print "$at(43,2911,3633)"} true;
L5:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722

    // goto L7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    goto L7;

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:97:21+6
    assume {:print "$at(43,3237,3243)"} true;
L2:

    // trace_local[i#1]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:97:17+1
    assume {:print "$track_local(29,5,6):", $t1} $t1 == $t1;

    // label L15 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    assume {:print "$at(43,3265,3266)"} true;
L15:

    // havoc[val]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t1;
    assume $IsValid'u64'($t1);

    // havoc[val]($t20) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t20;
    assume $IsValid'u64'($t20);

    // havoc[val]($t21) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t21;
    assume $IsValid'bool'($t21);

    // havoc[val]($t22) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t22;
    assume $IsValid'$1_BitVector_BitVector'($t22);

    // havoc[val]($t23) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t23;
    assume $IsValid'bool'($t23);

    // havoc[val]($t24) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t24;
    assume $IsValid'u64'($t24);

    // havoc[val]($t25) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t25;
    assume $IsValid'u64'($t25);

    // havoc[val]($t26) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t26;
    assume $IsValid'u64'($t26);

    // havoc[val]($t27) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $t27;
    assume $IsValid'u64'($t27);

    // havoc[mut]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    havoc $temp_0'$1_BitVector_BitVector';
    $t0 := $UpdateMutation($t0, $temp_0'$1_BitVector_BitVector');
    assume $IsValid'$1_BitVector_BitVector'($Dereference($t0));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:20+1
    assume !$abort_flag;

    // $t20 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:24+16
    $t20 := $length#$1_BitVector_BitVector($Dereference($t0));

    // $t21 := <($t1, $t20) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:22+1
    call $t21 := $Lt($t1, $t20);

    // if ($t21) goto L8 else goto L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:13+197
    if ($t21) { goto L8; } else { goto L9; }

    // label L9 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:13+197
L9:

    // goto L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:99:13+197
    goto L10;

    // label L8 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:34+9
    assume {:print "$at(43,3322,3331)"} true;
L8:

    // trace_local[tmp#$3]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:33+14
    assume {:print "$track_local(29,5,3):", $t1} $t1 == $t1;

    // trace_local[tmp#$2]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:33+14
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,5,2):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // $t22 := read_ref($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:33+14
    $t22 := $Dereference($t0);

    // $t23 := BitVector::is_index_set($t22, $t1) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:21+26
    call $t23 := $1_BitVector_is_index_set($t22, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,3309,3335)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // if ($t23) goto L11 else goto L12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:17+108
    if ($t23) { goto L11; } else { goto L12; }

    // label L12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:17+108
L12:

    // goto L13 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:17+108
    goto L13;

    // label L11 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:53+9
L11:

    // $t24 := -($t1, $t1) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:66+1
    call $t24 := $Sub($t1, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,3354,3355)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // BitVector::set($t0, $t24) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:49+26
    call $t0 := $1_BitVector_set($t0, $t24);
    if ($abort_flag) {
        assume {:print "$at(43,3337,3363)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // goto L14 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:100:49+26
    goto L14;

    // label L13 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:101:28+9
    assume {:print "$at(43,3391,3400)"} true;
L13:

    // $t25 := -($t1, $t1) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:101:41+1
    call $t25 := $Sub($t1, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,3404,3405)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // BitVector::unset($t0, $t25) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:101:22+28
    call $t0 := $1_BitVector_unset($t0, $t25);
    if ($abort_flag) {
        assume {:print "$at(43,3385,3413)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // label L14 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:102:21+1
    assume {:print "$at(43,3435,3436)"} true;
L14:

    // $t26 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:102:25+1
    $t26 := 1;
    assume $IsValid'u64'($t26);

    // $t27 := +($t1, $t26) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:102:23+1
    call $t27 := $AddU64($t1, $t26);
    if ($abort_flag) {
        assume {:print "$at(43,3437,3438)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[i#1]($t27) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:102:17+1
    assume {:print "$track_local(29,5,6):", $t27} $t27 == $t27;

    // goto L21 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:102:26+1
    goto L21;

    // label L10 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:105:17+9
    assume {:print "$at(43,3474,3483)"} true;
L10:

    // $t28 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:105:17+16
    $t28 := $length#$1_BitVector_BitVector($Dereference($t0));

    // $t29 := -($t28, $t1) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:105:34+1
    call $t29 := $Sub($t28, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,3491,3492)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[i#1]($t29) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:105:13+1
    assume {:print "$track_local(29,5,6):", $t29} $t29 == $t29;

    // label L19 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    assume {:print "$at(43,3521,3522)"} true;
L19:

    // havoc[val]($t29) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $t29;
    assume $IsValid'u64'($t29);

    // havoc[val]($t30) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $t30;
    assume $IsValid'u64'($t30);

    // havoc[val]($t31) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $t31;
    assume $IsValid'bool'($t31);

    // havoc[val]($t32) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $t32;
    assume $IsValid'u64'($t32);

    // havoc[val]($t33) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $t33;
    assume $IsValid'u64'($t33);

    // havoc[mut]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    havoc $temp_0'$1_BitVector_BitVector';
    $t0 := $UpdateMutation($t0, $temp_0'$1_BitVector_BitVector');
    assume $IsValid'$1_BitVector_BitVector'($Dereference($t0));

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:20+1
    assume !$abort_flag;

    // $t30 := get_field<BitVector::BitVector>.length($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:24+16
    $t30 := $length#$1_BitVector_BitVector($Dereference($t0));

    // $t31 := <($t29, $t30) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:22+1
    call $t31 := $Lt($t29, $t30);

    // if ($t31) goto L16 else goto L17 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:13+108
    if ($t31) { goto L16; } else { goto L17; }

    // label L17 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:13+108
L17:

    // goto L18 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:107:13+108
    goto L18;

    // label L16 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:108:23+9
    assume {:print "$at(43,3567,3576)"} true;
L16:

    // BitVector::unset($t0, $t29) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:108:17+19
    call $t0 := $1_BitVector_unset($t0, $t29);
    if ($abort_flag) {
        assume {:print "$at(43,3561,3580)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // $t32 := 1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:109:25+1
    assume {:print "$at(43,3606,3607)"} true;
    $t32 := 1;
    assume $IsValid'u64'($t32);

    // $t33 := +($t29, $t32) on_abort goto L24 with $t12 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:109:23+1
    call $t33 := $AddU64($t29, $t32);
    if ($abort_flag) {
        assume {:print "$at(43,3604,3605)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(29,5):", $t12} $t12 == $t12;
        goto L24;
    }

    // trace_local[i#1]($t33) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:109:17+1
    assume {:print "$track_local(29,5,6):", $t33} $t33 == $t33;

    // goto L22 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:109:26+1
    goto L22;

    // label L18 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    assume {:print "$at(43,2911,3633)"} true;
L18:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722

    // label L7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
L7:

    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,5,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // goto L23 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    goto L23;

    // label L20 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    // Loop invariant checking block for the loop started with header: L6
L20:

    // stop() at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    assume false;
    return;

    // label L21 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    // Loop invariant checking block for the loop started with header: L15
L21:

    // stop() at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    assume false;
    return;

    // label L22 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    // Loop invariant checking block for the loop started with header: L19
L22:

    // stop() at /home/ying/diem/language/move-stdlib/modules/BitVector.move:88:9+722
    assume false;
    return;

    // label L23 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:112:5+1
    assume {:print "$at(43,3638,3639)"} true;
L23:

    // return () at /home/ying/diem/language/move-stdlib/modules/BitVector.move:112:5+1
    $ret0 := $t0;
    return;

    // label L24 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:112:5+1
L24:

    // abort($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:112:5+1
    $abort_code := $t12;
    $abort_flag := true;
    return;

    // label L25 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L25:

    // destroy($t18) at <internal>:1:1+10

    // destroy($t19) at <internal>:1:1+10

    // goto L1 at <internal>:1:1+10
    goto L1;

}

// fun BitVector::unset [baseline] at /home/ying/diem/language/move-stdlib/modules/BitVector.move:70:5+260
procedure {:inline 1} $1_BitVector_unset(_$t0: $Mutation ($1_BitVector_BitVector), _$t1: int) returns ($ret0: $Mutation ($1_BitVector_BitVector))
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $Mutation (bool);
    var $t5: Vec (bool);
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: $Mutation (Vec (bool));
    var $t12: $Mutation (bool);
    var $t13: bool;
    var $t0: $Mutation ($1_BitVector_BitVector);
    var $t1: int;
    var $temp_0'$1_BitVector_BitVector': $1_BitVector_BitVector;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t11));
    assume IsEmptyVec(p#$Mutation($t12));

    // bytecode translation starts here
    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:70:5+1
    assume {:print "$at(43,2160,2161)"} true;
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,6,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // trace_local[bit_index]($t1) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:70:5+1
    assume {:print "$track_local(29,6,1):", $t1} $t1 == $t1;

    // $t5 := get_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:43+20
    assume {:print "$at(43,2264,2284)"} true;
    $t5 := $bit_field#$1_BitVector_BitVector($Dereference($t0));

    // $t6 := Vector::length<bool>($t5) on_abort goto L3 with $t7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:28+36
    call $t6 := $1_Vector_length'bool'($t5);
    if ($abort_flag) {
        assume {:print "$at(43,2249,2285)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(29,6):", $t7} $t7 == $t7;
        goto L3;
    }

    // $t8 := <($t1, $t6) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:26+1
    call $t8 := $Lt($t1, $t6);

    // $t9 := 0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:91+6
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // $t10 := opaque begin: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:66+32

    // assume WellFormed($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:66+32
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:66+32
    assume $IsEqual'u64'($t10, 7);

    // $t10 := opaque end: Errors::invalid_argument($t9) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:66+32

    // trace_local[tmp#$3]($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    assume {:print "$track_local(29,6,3):", $t10} $t10 == $t10;

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    assume {:print "$track_local(29,6,2):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
L1:

    // destroy($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90

    // trace_abort($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    assume {:print "$at(43,2230,2320)"} true;
    assume {:print "$track_abort(29,6):", $t10} $t10 == $t10;

    // $t7 := move($t10) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    $t7 := $t10;

    // goto L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:71:9+90
    goto L3;

    // label L0 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:72:41+9
    assume {:print "$at(43,2362,2371)"} true;
L0:

    // $t11 := borrow_field<BitVector::BitVector>.bit_field($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:72:36+24
    $t11 := $ChildMutation($t0, 1, $bit_field#$1_BitVector_BitVector($Dereference($t0)));

    // $t12 := Vector::borrow_mut<bool>($t11, $t1) on_abort goto L3 with $t7 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:72:17+55
    call $t12,$t11 := $1_Vector_borrow_mut'bool'($t11, $t1);
    if ($abort_flag) {
        assume {:print "$at(43,2338,2393)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(29,6):", $t7} $t7 == $t7;
        goto L3;
    }

    // trace_local[x]($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:72:13+1
    $temp_0'bool' := $Dereference($t12);
    assume {:print "$track_local(29,6,4):", $temp_0'bool'} $temp_0'bool' == $temp_0'bool';

    // $t13 := false at /home/ying/diem/language/move-stdlib/modules/BitVector.move:73:14+5
    assume {:print "$at(43,2408,2413)"} true;
    $t13 := false;
    assume $IsValid'bool'($t13);

    // write_ref($t12, $t13) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:73:9+10
    $t12 := $UpdateMutation($t12, $t13);

    // write_back[Reference($t11)[]]($t12) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:73:9+10
    $t11 := $UpdateMutation($t11, UpdateVec($Dereference($t11), ReadVec(p#$Mutation($t12), LenVec(p#$Mutation($t11))), $Dereference($t12)));

    // write_back[Reference($t0).bit_field]($t11) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:73:9+10
    $t0 := $UpdateMutation($t0, $Update'$1_BitVector_BitVector'_bit_field($Dereference($t0), $Dereference($t11)));

    // trace_local[bitvector]($t0) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:73:19+1
    $temp_0'$1_BitVector_BitVector' := $Dereference($t0);
    assume {:print "$track_local(29,6,0):", $temp_0'$1_BitVector_BitVector'} $temp_0'$1_BitVector_BitVector' == $temp_0'$1_BitVector_BitVector';

    // label L2 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:74:5+1
    assume {:print "$at(43,2419,2420)"} true;
L2:

    // return () at /home/ying/diem/language/move-stdlib/modules/BitVector.move:74:5+1
    $ret0 := $t0;
    return;

    // label L3 at /home/ying/diem/language/move-stdlib/modules/BitVector.move:74:5+1
L3:

    // abort($t7) at /home/ying/diem/language/move-stdlib/modules/BitVector.move:74:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// struct CRSN::CRSN at /home/ying/diem/language/diem-framework/modules/CRSN.move:23:5+96
type {:datatype} $1_CRSN_CRSN;
function {:constructor} $1_CRSN_CRSN($min_nonce: int, $size: int, $slots: $1_BitVector_BitVector): $1_CRSN_CRSN;
function {:inline} $Update'$1_CRSN_CRSN'_min_nonce(s: $1_CRSN_CRSN, x: int): $1_CRSN_CRSN {
    $1_CRSN_CRSN(x, $size#$1_CRSN_CRSN(s), $slots#$1_CRSN_CRSN(s))
}
function {:inline} $Update'$1_CRSN_CRSN'_size(s: $1_CRSN_CRSN, x: int): $1_CRSN_CRSN {
    $1_CRSN_CRSN($min_nonce#$1_CRSN_CRSN(s), x, $slots#$1_CRSN_CRSN(s))
}
function {:inline} $Update'$1_CRSN_CRSN'_slots(s: $1_CRSN_CRSN, x: $1_BitVector_BitVector): $1_CRSN_CRSN {
    $1_CRSN_CRSN($min_nonce#$1_CRSN_CRSN(s), $size#$1_CRSN_CRSN(s), x)
}
function $IsValid'$1_CRSN_CRSN'(s: $1_CRSN_CRSN): bool {
    $IsValid'u64'($min_nonce#$1_CRSN_CRSN(s))
      && $IsValid'u64'($size#$1_CRSN_CRSN(s))
      && $IsValid'$1_BitVector_BitVector'($slots#$1_CRSN_CRSN(s))
}
function {:inline} $IsEqual'$1_CRSN_CRSN'(s1: $1_CRSN_CRSN, s2: $1_CRSN_CRSN): bool {
    s1 == s2
}
var $1_CRSN_CRSN_$memory: $Memory $1_CRSN_CRSN;

// fun CRSN::publish [baseline] at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+450
procedure {:inline 1} $1_CRSN_publish(_$t0: $signer, _$t1: int, _$t2: int) returns ()
{
    // declare local variables
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: bool;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: bool;
    var $t21: int;
    var $t22: int;
    var $t23: $1_BitVector_BitVector;
    var $t24: $1_CRSN_CRSN;
    var $t0: $signer;
    var $t1: int;
    var $t2: int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+1
    assume {:print "$at(7,1719,1720)"} true;
    assume {:print "$track_local(30,3,0):", $t0} $t0 == $t0;

    // trace_local[min_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+1
    assume {:print "$track_local(30,3,1):", $t1} $t1 == $t1;

    // trace_local[size]($t2) at /home/ying/diem/language/diem-framework/modules/CRSN.move:44:5+1
    assume {:print "$track_local(30,3,2):", $t2} $t2 == $t2;

    // $t9 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:26+27
    assume {:print "$at(7,1818,1845)"} true;

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:26+27
    assume $IsValid'address'($t9);

    // assume Eq<address>($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:26+27
    assume $IsEqual'address'($t9, $1_Signer_spec_address_of($t0));

    // $t9 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:26+27

    // $t10 := CRSN::has_crsn($t9) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:17+37
    call $t10 := $1_CRSN_has_crsn($t9);
    if ($abort_flag) {
        assume {:print "$at(7,1809,1846)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(30,3):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t12 := !($t10) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:16+1
    call $t12 := $Not($t10);

    // $t13 := 1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:78+9
    $t13 := 1;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::invalid_state($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:56+32

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:56+32
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:56+32
    assume $IsEqual'u64'($t14, 1);

    // $t14 := opaque end: Errors::invalid_state($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:56+32

    // trace_local[tmp#$4]($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    assume {:print "$track_local(30,3,4):", $t14} $t14 == $t14;

    // trace_local[tmp#$3]($t12) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    assume {:print "$track_local(30,3,3):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    assume {:print "$at(7,1801,1881)"} true;
    assume {:print "$track_abort(30,3):", $t14} $t14 == $t14;

    // $t11 := move($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    $t11 := $t14;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:45:9+80
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:16+4
    assume {:print "$at(7,1898,1902)"} true;
L0:

    // $t15 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:23+1
    $t15 := 0;
    assume $IsValid'u64'($t15);

    // $t16 := >($t2, $t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:21+1
    call $t16 := $Gt($t2, $t15);

    // $t17 := 2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:51+15
    $t17 := 2;
    assume $IsValid'u64'($t17);

    // $t18 := opaque begin: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:26+41

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:26+41
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 7) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:26+41
    assume $IsEqual'u64'($t18, 7);

    // $t18 := opaque end: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:26+41

    // trace_local[tmp#$6]($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    assume {:print "$track_local(30,3,6):", $t18} $t18 == $t18;

    // trace_local[tmp#$5]($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    assume {:print "$track_local(30,3,5):", $t16} $t16 == $t16;

    // if ($t16) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    if ($t16) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    assume {:print "$at(7,1891,1950)"} true;
    assume {:print "$track_abort(30,3):", $t18} $t18 == $t18;

    // $t11 := move($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    $t11 := $t18;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:46:9+59
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:16+4
    assume {:print "$at(7,1967,1971)"} true;
L2:

    // $t19 := 256 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:24+13
    $t19 := 256;
    assume $IsValid'u64'($t19);

    // $t20 := <=($t2, $t19) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:21+2
    call $t20 := $Le($t2, $t19);

    // $t21 := 3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:64+20
    $t21 := 3;
    assume $IsValid'u64'($t21);

    // $t22 := opaque begin: Errors::invalid_argument($t21) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:39+46

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:39+46
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 7) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:39+46
    assume $IsEqual'u64'($t22, 7);

    // $t22 := opaque end: Errors::invalid_argument($t21) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:39+46

    // trace_local[tmp#$8]($t22) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    assume {:print "$track_local(30,3,8):", $t22} $t22 == $t22;

    // trace_local[tmp#$7]($t20) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    assume {:print "$track_local(30,3,7):", $t20} $t20 == $t20;

    // if ($t20) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    if ($t20) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
L5:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    assume {:print "$at(7,1960,2037)"} true;
    assume {:print "$track_abort(30,3):", $t22} $t22 == $t22;

    // $t11 := move($t22) at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    $t11 := $t22;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:47:9+77
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:48:17+7
    assume {:print "$at(7,2055,2062)"} true;
L4:

    // $t23 := BitVector::new($t2) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/CRSN.move:51:20+20
    assume {:print "$at(7,2131,2151)"} true;
    call $t23 := $1_BitVector_new($t2);
    if ($abort_flag) {
        assume {:print "$at(7,2131,2151)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(30,3):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t24 := pack CRSN::CRSN($t1, $t2, $t23) at /home/ying/diem/language/diem-framework/modules/CRSN.move:48:26+98
    assume {:print "$at(7,2064,2162)"} true;
    $t24 := $1_CRSN_CRSN($t1, $t2, $t23);

    // move_to<CRSN::CRSN>($t24, $t0) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/CRSN.move:48:9+7
    if ($ResourceExists($1_CRSN_CRSN_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_CRSN_CRSN_$memory := $ResourceUpdate($1_CRSN_CRSN_$memory, $1_Signer_spec_address_of($t0), $t24);
    }
    if ($abort_flag) {
        assume {:print "$at(7,2047,2054)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(30,3):", $t11} $t11 == $t11;
        goto L7;
    }

    // label L6 at /home/ying/diem/language/diem-framework/modules/CRSN.move:53:5+1
    assume {:print "$at(7,2168,2169)"} true;
L6:

    // return () at /home/ying/diem/language/diem-framework/modules/CRSN.move:53:5+1
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/CRSN.move:53:5+1
L7:

    // abort($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:53:5+1
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

// fun CRSN::force_expire [baseline] at /home/ying/diem/language/diem-framework/modules/CRSN.move:131:5+514
procedure {:inline 1} $1_CRSN_force_expire(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: $Mutation ($1_CRSN_CRSN);
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: $Mutation ($1_CRSN_CRSN);
    var $t18: $Mutation ($1_BitVector_BitVector);
    var $t19: int;
    var $t20: int;
    var $t21: $Mutation (int);
    var $t0: $signer;
    var $t1: int;
    var $temp_0'$1_CRSN_CRSN': $1_CRSN_CRSN;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t17));
    assume IsEmptyVec(p#$Mutation($t18));
    assume IsEmptyVec(p#$Mutation($t21));

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:131:5+1
    assume {:print "$at(7,5580,5581)"} true;
    assume {:print "$track_local(30,1,0):", $t0} $t0 == $t0;

    // trace_local[shift_amount]($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:131:5+1
    assume {:print "$track_local(30,1,1):", $t1} $t1 == $t1;

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:31+1
    assume {:print "$at(7,5691,5692)"} true;
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := >($t1, $t8) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:29+1
    call $t9 := $Gt($t1, $t8);

    // $t10 := 4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:59+14
    $t10 := 4;
    assume $IsValid'u64'($t10);

    // $t11 := opaque begin: Errors::invalid_argument($t10) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:34+40

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:34+40
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 7) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:34+40
    assume $IsEqual'u64'($t11, 7);

    // $t11 := opaque end: Errors::invalid_argument($t10) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:34+40

    // trace_local[tmp#$3]($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    assume {:print "$track_local(30,1,3):", $t11} $t11 == $t11;

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    assume {:print "$track_local(30,1,2):", $t9} $t9 == $t9;

    // if ($t9) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    if ($t9) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    assume {:print "$at(7,5669,5735)"} true;
    assume {:print "$track_abort(30,1):", $t11} $t11 == $t11;

    // $t12 := move($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    $t12 := $t11;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:133:9+66
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:39+7
    assume {:print "$at(7,5775,5782)"} true;
L0:

    // $t13 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:20+27

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:20+27
    assume $IsValid'address'($t13);

    // assume Eq<address>($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:20+27
    assume $IsEqual'address'($t13, $1_Signer_spec_address_of($t0));

    // $t13 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:20+27

    // trace_local[addr]($t13) at /home/ying/diem/language/diem-framework/modules/CRSN.move:134:13+4
    assume {:print "$track_local(30,1,6):", $t13} $t13 == $t13;

    // $t14 := CRSN::has_crsn($t13) on_abort goto L5 with $t12 at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:16+14
    assume {:print "$at(7,5800,5814)"} true;
    call $t14 := $1_CRSN_has_crsn($t13);
    if ($abort_flag) {
        assume {:print "$at(7,5800,5814)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(30,1):", $t12} $t12 == $t12;
        goto L5;
    }

    // $t15 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:54+8
    $t15 := 0;
    assume $IsValid'u64'($t15);

    // $t16 := opaque begin: Errors::invalid_state($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:32+31

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:32+31
    assume $IsValid'u64'($t16);

    // assume Eq<u64>($t16, 1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:32+31
    assume $IsEqual'u64'($t16, 1);

    // $t16 := opaque end: Errors::invalid_state($t15) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:32+31

    // trace_local[tmp#$5]($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    assume {:print "$track_local(30,1,5):", $t16} $t16 == $t16;

    // trace_local[tmp#$4]($t14) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    assume {:print "$track_local(30,1,4):", $t14} $t14 == $t14;

    // if ($t14) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    if ($t14) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
L3:

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    assume {:print "$at(7,5793,5848)"} true;
    assume {:print "$track_abort(30,1):", $t16} $t16 == $t16;

    // $t12 := move($t16) at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    $t12 := $t16;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:135:9+55
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:136:44+4
    assume {:print "$at(7,5893,5897)"} true;
L2:

    // $t17 := borrow_global<CRSN::CRSN>($t13) on_abort goto L5 with $t12 at /home/ying/diem/language/diem-framework/modules/CRSN.move:136:20+17
    if (!$ResourceExists($1_CRSN_CRSN_$memory, $t13)) {
        call $ExecFailureAbort();
    } else {
        $t17 := $Mutation($Global($t13), EmptyVec(), $ResourceValue($1_CRSN_CRSN_$memory, $t13));
    }
    if ($abort_flag) {
        assume {:print "$at(7,5869,5886)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(30,1):", $t12} $t12 == $t12;
        goto L5;
    }

    // trace_local[crsn]($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:136:13+4
    $temp_0'$1_CRSN_CRSN' := $Dereference($t17);
    assume {:print "$track_local(30,1,7):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // $t18 := borrow_field<CRSN::CRSN>.slots($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:138:31+15
    assume {:print "$at(7,5931,5946)"} true;
    $t18 := $ChildMutation($t17, 2, $slots#$1_CRSN_CRSN($Dereference($t17)));

    // BitVector::shift_left($t18, $t1) on_abort goto L5 with $t12 at /home/ying/diem/language/diem-framework/modules/CRSN.move:138:9+52
    call $t18 := $1_BitVector_shift_left($t18, $t1);
    if ($abort_flag) {
        assume {:print "$at(7,5909,5961)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(30,1):", $t12} $t12 == $t12;
        goto L5;
    }

    // write_back[Reference($t17).slots]($t18) at /home/ying/diem/language/diem-framework/modules/CRSN.move:138:9+52
    $t17 := $UpdateMutation($t17, $Update'$1_CRSN_CRSN'_slots($Dereference($t17), $Dereference($t18)));

    // $t19 := get_field<CRSN::CRSN>.min_nonce($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:140:26+14
    assume {:print "$at(7,5989,6003)"} true;
    $t19 := $min_nonce#$1_CRSN_CRSN($Dereference($t17));

    // $t20 := +($t19, $t1) on_abort goto L5 with $t12 at /home/ying/diem/language/diem-framework/modules/CRSN.move:140:41+1
    call $t20 := $AddU64($t19, $t1);
    if ($abort_flag) {
        assume {:print "$at(7,6004,6005)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(30,1):", $t12} $t12 == $t12;
        goto L5;
    }

    // $t21 := borrow_field<CRSN::CRSN>.min_nonce($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:140:9+14
    $t21 := $ChildMutation($t17, 0, $min_nonce#$1_CRSN_CRSN($Dereference($t17)));

    // write_ref($t21, $t20) at /home/ying/diem/language/diem-framework/modules/CRSN.move:140:9+46
    $t21 := $UpdateMutation($t21, $t20);

    // write_back[Reference($t17).min_nonce]($t21) at /home/ying/diem/language/diem-framework/modules/CRSN.move:140:9+46
    $t17 := $UpdateMutation($t17, $Update'$1_CRSN_CRSN'_min_nonce($Dereference($t17), $Dereference($t21)));

    // CRSN::shift_window_right($t17) on_abort goto L5 with $t12 at /home/ying/diem/language/diem-framework/modules/CRSN.move:142:9+24
    assume {:print "$at(7,6063,6087)"} true;
    call $t17 := $1_CRSN_shift_window_right($t17);
    if ($abort_flag) {
        assume {:print "$at(7,6063,6087)"} true;
        $t12 := $abort_code;
        assume {:print "$track_abort(30,1):", $t12} $t12 == $t12;
        goto L5;
    }

    // write_back[CRSN::CRSN@]($t17) at /home/ying/diem/language/diem-framework/modules/CRSN.move:142:9+24
    $1_CRSN_CRSN_$memory := $ResourceUpdate($1_CRSN_CRSN_$memory, $GlobalLocationAddress($t17),
        $Dereference($t17));

    // label L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:143:5+1
    assume {:print "$at(7,6093,6094)"} true;
L4:

    // return () at /home/ying/diem/language/diem-framework/modules/CRSN.move:143:5+1
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:143:5+1
L5:

    // abort($t12) at /home/ying/diem/language/diem-framework/modules/CRSN.move:143:5+1
    $abort_code := $t12;
    $abort_flag := true;
    return;

}

// fun CRSN::has_crsn [baseline] at /home/ying/diem/language/diem-framework/modules/CRSN.move:146:5+75
procedure {:inline 1} $1_CRSN_has_crsn(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:146:5+1
    assume {:print "$at(7,6176,6177)"} true;
    assume {:print "$track_local(30,2,0):", $t0} $t0 == $t0;

    // $t1 := exists<CRSN::CRSN>($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:147:9+6
    assume {:print "$at(7,6227,6233)"} true;
    $t1 := $ResourceExists($1_CRSN_CRSN_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/CRSN.move:147:9+18
    assume {:print "$track_return(30,2,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:148:5+1
    assume {:print "$at(7,6250,6251)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:148:5+1
    $ret0 := $t1;
    return;

}

// fun CRSN::shift_window_right [baseline] at /home/ying/diem/language/diem-framework/modules/CRSN.move:150:5+320
procedure {:inline 1} $1_CRSN_shift_window_right(_$t0: $Mutation ($1_CRSN_CRSN)) returns ($ret0: $Mutation ($1_CRSN_CRSN))
{
    // declare local variables
    var $t1: int;
    var $t2: $1_BitVector_BitVector;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: $Mutation ($1_BitVector_BitVector);
    var $t9: int;
    var $t10: int;
    var $t11: $Mutation (int);
    var $t0: $Mutation ($1_CRSN_CRSN);
    var $temp_0'$1_CRSN_CRSN': $1_CRSN_CRSN;
    var $temp_0'u64': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t11));

    // bytecode translation starts here
    // trace_local[crsn]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:150:5+1
    assume {:print "$at(7,6257,6258)"} true;
    $temp_0'$1_CRSN_CRSN' := $Dereference($t0);
    assume {:print "$track_local(30,5,0):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // $t2 := get_field<CRSN::CRSN>.slots($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:65+11
    assume {:print "$at(7,6363,6374)"} true;
    $t2 := $slots#$1_CRSN_CRSN($Dereference($t0));

    // $t3 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:78+1
    $t3 := 0;
    assume $IsValid'u64'($t3);

    // $t4 := BitVector::longest_set_sequence_starting_at($t2, $t3) on_abort goto L4 with $t5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:21+59
    call $t4 := $1_BitVector_longest_set_sequence_starting_at($t2, $t3);
    if ($abort_flag) {
        assume {:print "$at(7,6319,6378)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(30,5):", $t5} $t5 == $t5;
        goto L4;
    }

    // trace_local[index]($t4) at /home/ying/diem/language/diem-framework/modules/CRSN.move:151:13+5
    assume {:print "$track_local(30,5,1):", $t4} $t4 == $t4;

    // $t6 := 0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:22+1
    assume {:print "$at(7,6457,6458)"} true;
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // $t7 := ==($t4, $t6) at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:19+2
    $t7 := $IsEqual'u64'($t4, $t6);

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:9+22
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:9+22
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:9+22
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6
L0:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6

    // trace_local[crsn]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6
    $temp_0'$1_CRSN_CRSN' := $Dereference($t0);
    assume {:print "$track_local(30,5,0):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // goto L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:154:25+6
    goto L3;

    // label L2 at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:36+4
    assume {:print "$at(7,6503,6507)"} true;
L2:

    // $t8 := borrow_field<CRSN::CRSN>.slots($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:31+15
    $t8 := $ChildMutation($t0, 2, $slots#$1_CRSN_CRSN($Dereference($t0)));

    // BitVector::shift_left($t8, $t4) on_abort goto L4 with $t5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:9+45
    call $t8 := $1_BitVector_shift_left($t8, $t4);
    if ($abort_flag) {
        assume {:print "$at(7,6476,6521)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(30,5):", $t5} $t5 == $t5;
        goto L4;
    }

    // write_back[Reference($t0).slots]($t8) at /home/ying/diem/language/diem-framework/modules/CRSN.move:155:9+45
    $t0 := $UpdateMutation($t0, $Update'$1_CRSN_CRSN'_slots($Dereference($t0), $Dereference($t8)));

    // $t9 := get_field<CRSN::CRSN>.min_nonce($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:26+14
    assume {:print "$at(7,6548,6562)"} true;
    $t9 := $min_nonce#$1_CRSN_CRSN($Dereference($t0));

    // $t10 := +($t9, $t4) on_abort goto L4 with $t5 at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:41+1
    call $t10 := $AddU64($t9, $t4);
    if ($abort_flag) {
        assume {:print "$at(7,6563,6564)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(30,5):", $t5} $t5 == $t5;
        goto L4;
    }

    // $t11 := borrow_field<CRSN::CRSN>.min_nonce($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:9+14
    $t11 := $ChildMutation($t0, 0, $min_nonce#$1_CRSN_CRSN($Dereference($t0)));

    // write_ref($t11, $t10) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:9+39
    $t11 := $UpdateMutation($t11, $t10);

    // write_back[Reference($t0).min_nonce]($t11) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:9+39
    $t0 := $UpdateMutation($t0, $Update'$1_CRSN_CRSN'_min_nonce($Dereference($t0), $Dereference($t11)));

    // trace_local[crsn]($t0) at /home/ying/diem/language/diem-framework/modules/CRSN.move:156:48+1
    $temp_0'$1_CRSN_CRSN' := $Dereference($t0);
    assume {:print "$track_local(30,5,0):", $temp_0'$1_CRSN_CRSN'} $temp_0'$1_CRSN_CRSN' == $temp_0'$1_CRSN_CRSN';

    // label L3 at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
    assume {:print "$at(7,6576,6577)"} true;
L3:

    // return () at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
    $ret0 := $t0;
    return;

    // label L4 at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
L4:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/CRSN.move:157:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:160:5+163
function {:inline} $1_AccountFreezing_$account_is_frozen($1_AccountFreezing_FreezingBit_$memory: $Memory $1_AccountFreezing_FreezingBit, addr: int): bool {
    ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr) && $is_frozen#$1_AccountFreezing_FreezingBit($ResourceValue($1_AccountFreezing_FreezingBit_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:231:9+141
function {:inline} $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory: $Memory $1_AccountFreezing_FreezingBit, addr: int): bool {
    ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr) && !$is_frozen#$1_AccountFreezing_FreezingBit($ResourceValue($1_AccountFreezing_FreezingBit_$memory, addr)))
}

// struct AccountFreezing::FreezeAccountEvent at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:22:5+208
type {:datatype} $1_AccountFreezing_FreezeAccountEvent;
function {:constructor} $1_AccountFreezing_FreezeAccountEvent($initiator_address: int, $frozen_address: int): $1_AccountFreezing_FreezeAccountEvent;
function {:inline} $Update'$1_AccountFreezing_FreezeAccountEvent'_initiator_address(s: $1_AccountFreezing_FreezeAccountEvent, x: int): $1_AccountFreezing_FreezeAccountEvent {
    $1_AccountFreezing_FreezeAccountEvent(x, $frozen_address#$1_AccountFreezing_FreezeAccountEvent(s))
}
function {:inline} $Update'$1_AccountFreezing_FreezeAccountEvent'_frozen_address(s: $1_AccountFreezing_FreezeAccountEvent, x: int): $1_AccountFreezing_FreezeAccountEvent {
    $1_AccountFreezing_FreezeAccountEvent($initiator_address#$1_AccountFreezing_FreezeAccountEvent(s), x)
}
function $IsValid'$1_AccountFreezing_FreezeAccountEvent'(s: $1_AccountFreezing_FreezeAccountEvent): bool {
    $IsValid'address'($initiator_address#$1_AccountFreezing_FreezeAccountEvent(s))
      && $IsValid'address'($frozen_address#$1_AccountFreezing_FreezeAccountEvent(s))
}
function {:inline} $IsEqual'$1_AccountFreezing_FreezeAccountEvent'(s1: $1_AccountFreezing_FreezeAccountEvent, s2: $1_AccountFreezing_FreezeAccountEvent): bool {
    s1 == s2
}

// struct AccountFreezing::FreezeEventsHolder at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:16:5+169
type {:datatype} $1_AccountFreezing_FreezeEventsHolder;
function {:constructor} $1_AccountFreezing_FreezeEventsHolder($freeze_event_handle: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent', $unfreeze_event_handle: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent'): $1_AccountFreezing_FreezeEventsHolder;
function {:inline} $Update'$1_AccountFreezing_FreezeEventsHolder'_freeze_event_handle(s: $1_AccountFreezing_FreezeEventsHolder, x: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent'): $1_AccountFreezing_FreezeEventsHolder {
    $1_AccountFreezing_FreezeEventsHolder(x, $unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s))
}
function {:inline} $Update'$1_AccountFreezing_FreezeEventsHolder'_unfreeze_event_handle(s: $1_AccountFreezing_FreezeEventsHolder, x: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent'): $1_AccountFreezing_FreezeEventsHolder {
    $1_AccountFreezing_FreezeEventsHolder($freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s), x)
}
function $IsValid'$1_AccountFreezing_FreezeEventsHolder'(s: $1_AccountFreezing_FreezeEventsHolder): bool {
    $IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''($freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s))
      && $IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''($unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder(s))
}
function {:inline} $IsEqual'$1_AccountFreezing_FreezeEventsHolder'(s1: $1_AccountFreezing_FreezeEventsHolder, s2: $1_AccountFreezing_FreezeEventsHolder): bool {
    s1 == s2
}
var $1_AccountFreezing_FreezeEventsHolder_$memory: $Memory $1_AccountFreezing_FreezeEventsHolder;

// struct AccountFreezing::FreezingBit at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:11:5+164
type {:datatype} $1_AccountFreezing_FreezingBit;
function {:constructor} $1_AccountFreezing_FreezingBit($is_frozen: bool): $1_AccountFreezing_FreezingBit;
function {:inline} $Update'$1_AccountFreezing_FreezingBit'_is_frozen(s: $1_AccountFreezing_FreezingBit, x: bool): $1_AccountFreezing_FreezingBit {
    $1_AccountFreezing_FreezingBit(x)
}
function $IsValid'$1_AccountFreezing_FreezingBit'(s: $1_AccountFreezing_FreezingBit): bool {
    $IsValid'bool'($is_frozen#$1_AccountFreezing_FreezingBit(s))
}
function {:inline} $IsEqual'$1_AccountFreezing_FreezingBit'(s1: $1_AccountFreezing_FreezingBit, s2: $1_AccountFreezing_FreezingBit): bool {
    s1 == s2
}
var $1_AccountFreezing_FreezingBit_$memory: $Memory $1_AccountFreezing_FreezingBit;

// struct AccountFreezing::UnfreezeAccountEvent at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:30:5+216
type {:datatype} $1_AccountFreezing_UnfreezeAccountEvent;
function {:constructor} $1_AccountFreezing_UnfreezeAccountEvent($initiator_address: int, $unfrozen_address: int): $1_AccountFreezing_UnfreezeAccountEvent;
function {:inline} $Update'$1_AccountFreezing_UnfreezeAccountEvent'_initiator_address(s: $1_AccountFreezing_UnfreezeAccountEvent, x: int): $1_AccountFreezing_UnfreezeAccountEvent {
    $1_AccountFreezing_UnfreezeAccountEvent(x, $unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent(s))
}
function {:inline} $Update'$1_AccountFreezing_UnfreezeAccountEvent'_unfrozen_address(s: $1_AccountFreezing_UnfreezeAccountEvent, x: int): $1_AccountFreezing_UnfreezeAccountEvent {
    $1_AccountFreezing_UnfreezeAccountEvent($initiator_address#$1_AccountFreezing_UnfreezeAccountEvent(s), x)
}
function $IsValid'$1_AccountFreezing_UnfreezeAccountEvent'(s: $1_AccountFreezing_UnfreezeAccountEvent): bool {
    $IsValid'address'($initiator_address#$1_AccountFreezing_UnfreezeAccountEvent(s))
      && $IsValid'address'($unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent(s))
}
function {:inline} $IsEqual'$1_AccountFreezing_UnfreezeAccountEvent'(s1: $1_AccountFreezing_UnfreezeAccountEvent, s2: $1_AccountFreezing_UnfreezeAccountEvent): bool {
    s1 == s2
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1611:5+213
function {:inline} $1_DiemAccount_$authentication_key($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): Vec (int) {
    $authentication_key#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1617:5+247
function {:inline} $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1641:5+95
function {:inline} $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, check_addr: int): bool {
    $ResourceExists($1_DiemAccount_DiemAccount_$memory, check_addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1636:5+118
function {:inline} $1_DiemAccount_$key_rotation_capability_address(cap: $1_DiemAccount_KeyRotationCapability): int {
    $account_address#$1_DiemAccount_KeyRotationCapability(cap)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2470:9+155
function {:inline} $1_DiemAccount_spec_get_key_rotation_cap_field($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_Option_Option'$1_DiemAccount_KeyRotationCapability' {
    $key_rotation_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2475:9+145
function {:inline} $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_DiemAccount_KeyRotationCapability {
    $1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'($1_DiemAccount_spec_get_key_rotation_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2480:9+129
function {:inline} $1_DiemAccount_spec_has_key_rotation_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($1_DiemAccount_spec_get_key_rotation_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2486:9+183
function {:inline} $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    ($1_DiemAccount_spec_has_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr) && $IsEqual'address'(addr, $account_address#$1_DiemAccount_KeyRotationCapability($1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2497:9+144
function {:inline} $1_DiemAccount_spec_get_withdraw_cap_field($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_Option_Option'$1_DiemAccount_WithdrawCapability' {
    $withdraw_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2502:9+134
function {:inline} $1_DiemAccount_spec_get_withdraw_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): $1_DiemAccount_WithdrawCapability {
    $1_Option_$borrow'$1_DiemAccount_WithdrawCapability'($1_DiemAccount_spec_get_withdraw_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2507:9+121
function {:inline} $1_DiemAccount_spec_has_withdraw_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    $1_Option_$is_some'$1_DiemAccount_WithdrawCapability'($1_DiemAccount_spec_get_withdraw_cap_field($1_DiemAccount_DiemAccount_$memory, addr))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2512:9+171
function {:inline} $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    ($1_DiemAccount_spec_has_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr) && $IsEqual'address'(addr, $account_address#$1_DiemAccount_WithdrawCapability($1_DiemAccount_spec_get_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2518:9+171
function {:inline} $1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) && $1_Option_$is_none'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr))))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2526:10+208
function {:inline} $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds, $1_AccountFreezing_FreezingBit_$memory: $Memory $1_AccountFreezing_FreezingBit, $1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, sender: $signer): bool {
    (var addr := $1_Signer_spec_address_of(sender); (($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)) && !$1_AccountFreezing_$account_is_frozen($1_AccountFreezing_FreezingBit_$memory, addr)))
}

// struct DiemAccount::DiemAccount at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:37:5+1558
type {:datatype} $1_DiemAccount_DiemAccount;
function {:constructor} $1_DiemAccount_DiemAccount($authentication_key: Vec (int), $withdraw_capability: $1_Option_Option'$1_DiemAccount_WithdrawCapability', $key_rotation_capability: $1_Option_Option'$1_DiemAccount_KeyRotationCapability', $received_events: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent', $sent_events: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent', $sequence_number: int): $1_DiemAccount_DiemAccount;
function {:inline} $Update'$1_DiemAccount_DiemAccount'_authentication_key(s: $1_DiemAccount_DiemAccount, x: Vec (int)): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount(x, $withdraw_capability#$1_DiemAccount_DiemAccount(s), $key_rotation_capability#$1_DiemAccount_DiemAccount(s), $received_events#$1_DiemAccount_DiemAccount(s), $sent_events#$1_DiemAccount_DiemAccount(s), $sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $Update'$1_DiemAccount_DiemAccount'_withdraw_capability(s: $1_DiemAccount_DiemAccount, x: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount($authentication_key#$1_DiemAccount_DiemAccount(s), x, $key_rotation_capability#$1_DiemAccount_DiemAccount(s), $received_events#$1_DiemAccount_DiemAccount(s), $sent_events#$1_DiemAccount_DiemAccount(s), $sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $Update'$1_DiemAccount_DiemAccount'_key_rotation_capability(s: $1_DiemAccount_DiemAccount, x: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount($authentication_key#$1_DiemAccount_DiemAccount(s), $withdraw_capability#$1_DiemAccount_DiemAccount(s), x, $received_events#$1_DiemAccount_DiemAccount(s), $sent_events#$1_DiemAccount_DiemAccount(s), $sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $Update'$1_DiemAccount_DiemAccount'_received_events(s: $1_DiemAccount_DiemAccount, x: $1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent'): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount($authentication_key#$1_DiemAccount_DiemAccount(s), $withdraw_capability#$1_DiemAccount_DiemAccount(s), $key_rotation_capability#$1_DiemAccount_DiemAccount(s), x, $sent_events#$1_DiemAccount_DiemAccount(s), $sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $Update'$1_DiemAccount_DiemAccount'_sent_events(s: $1_DiemAccount_DiemAccount, x: $1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent'): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount($authentication_key#$1_DiemAccount_DiemAccount(s), $withdraw_capability#$1_DiemAccount_DiemAccount(s), $key_rotation_capability#$1_DiemAccount_DiemAccount(s), $received_events#$1_DiemAccount_DiemAccount(s), x, $sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $Update'$1_DiemAccount_DiemAccount'_sequence_number(s: $1_DiemAccount_DiemAccount, x: int): $1_DiemAccount_DiemAccount {
    $1_DiemAccount_DiemAccount($authentication_key#$1_DiemAccount_DiemAccount(s), $withdraw_capability#$1_DiemAccount_DiemAccount(s), $key_rotation_capability#$1_DiemAccount_DiemAccount(s), $received_events#$1_DiemAccount_DiemAccount(s), $sent_events#$1_DiemAccount_DiemAccount(s), x)
}
function $IsValid'$1_DiemAccount_DiemAccount'(s: $1_DiemAccount_DiemAccount): bool {
    $IsValid'vec'u8''($authentication_key#$1_DiemAccount_DiemAccount(s))
      && $IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''($withdraw_capability#$1_DiemAccount_DiemAccount(s))
      && $IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($key_rotation_capability#$1_DiemAccount_DiemAccount(s))
      && $IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''($received_events#$1_DiemAccount_DiemAccount(s))
      && $IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''($sent_events#$1_DiemAccount_DiemAccount(s))
      && $IsValid'u64'($sequence_number#$1_DiemAccount_DiemAccount(s))
}
function {:inline} $IsEqual'$1_DiemAccount_DiemAccount'(s1: $1_DiemAccount_DiemAccount, s2: $1_DiemAccount_DiemAccount): bool {
    s1 == s2
}
var $1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount;

// struct DiemAccount::AccountOperationsCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:94:5+167
type {:datatype} $1_DiemAccount_AccountOperationsCapability;
function {:constructor} $1_DiemAccount_AccountOperationsCapability($limits_cap: $1_AccountLimits_AccountLimitMutationCapability, $creation_events: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent'): $1_DiemAccount_AccountOperationsCapability;
function {:inline} $Update'$1_DiemAccount_AccountOperationsCapability'_limits_cap(s: $1_DiemAccount_AccountOperationsCapability, x: $1_AccountLimits_AccountLimitMutationCapability): $1_DiemAccount_AccountOperationsCapability {
    $1_DiemAccount_AccountOperationsCapability(x, $creation_events#$1_DiemAccount_AccountOperationsCapability(s))
}
function {:inline} $Update'$1_DiemAccount_AccountOperationsCapability'_creation_events(s: $1_DiemAccount_AccountOperationsCapability, x: $1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent'): $1_DiemAccount_AccountOperationsCapability {
    $1_DiemAccount_AccountOperationsCapability($limits_cap#$1_DiemAccount_AccountOperationsCapability(s), x)
}
function $IsValid'$1_DiemAccount_AccountOperationsCapability'(s: $1_DiemAccount_AccountOperationsCapability): bool {
    $IsValid'$1_AccountLimits_AccountLimitMutationCapability'($limits_cap#$1_DiemAccount_AccountOperationsCapability(s))
      && $IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''($creation_events#$1_DiemAccount_AccountOperationsCapability(s))
}
function {:inline} $IsEqual'$1_DiemAccount_AccountOperationsCapability'(s1: $1_DiemAccount_AccountOperationsCapability, s2: $1_DiemAccount_AccountOperationsCapability): bool {
    s1 == s2
}
var $1_DiemAccount_AccountOperationsCapability_$memory: $Memory $1_DiemAccount_AccountOperationsCapability;

// struct DiemAccount::AdminTransactionEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:130:5+150
type {:datatype} $1_DiemAccount_AdminTransactionEvent;
function {:constructor} $1_DiemAccount_AdminTransactionEvent($committed_timestamp_secs: int): $1_DiemAccount_AdminTransactionEvent;
function {:inline} $Update'$1_DiemAccount_AdminTransactionEvent'_committed_timestamp_secs(s: $1_DiemAccount_AdminTransactionEvent, x: int): $1_DiemAccount_AdminTransactionEvent {
    $1_DiemAccount_AdminTransactionEvent(x)
}
function $IsValid'$1_DiemAccount_AdminTransactionEvent'(s: $1_DiemAccount_AdminTransactionEvent): bool {
    $IsValid'u64'($committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent(s))
}
function {:inline} $IsEqual'$1_DiemAccount_AdminTransactionEvent'(s1: $1_DiemAccount_AdminTransactionEvent, s2: $1_DiemAccount_AdminTransactionEvent): bool {
    s1 == s2
}

// struct DiemAccount::Balance<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:67:5+261
type {:datatype} $1_DiemAccount_Balance'$1_XUS_XUS';
function {:constructor} $1_DiemAccount_Balance'$1_XUS_XUS'($coin: $1_Diem_Diem'$1_XUS_XUS'): $1_DiemAccount_Balance'$1_XUS_XUS';
function {:inline} $Update'$1_DiemAccount_Balance'$1_XUS_XUS''_coin(s: $1_DiemAccount_Balance'$1_XUS_XUS', x: $1_Diem_Diem'$1_XUS_XUS'): $1_DiemAccount_Balance'$1_XUS_XUS' {
    $1_DiemAccount_Balance'$1_XUS_XUS'(x)
}
function $IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''(s: $1_DiemAccount_Balance'$1_XUS_XUS'): bool {
    $IsValid'$1_Diem_Diem'$1_XUS_XUS''($coin#$1_DiemAccount_Balance'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_DiemAccount_Balance'$1_XUS_XUS''(s1: $1_DiemAccount_Balance'$1_XUS_XUS', s2: $1_DiemAccount_Balance'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_DiemAccount_Balance'$1_XUS_XUS'_$memory: $Memory $1_DiemAccount_Balance'$1_XUS_XUS';

// struct DiemAccount::Balance<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:67:5+261
type {:datatype} $1_DiemAccount_Balance'$1_XDX_XDX';
function {:constructor} $1_DiemAccount_Balance'$1_XDX_XDX'($coin: $1_Diem_Diem'$1_XDX_XDX'): $1_DiemAccount_Balance'$1_XDX_XDX';
function {:inline} $Update'$1_DiemAccount_Balance'$1_XDX_XDX''_coin(s: $1_DiemAccount_Balance'$1_XDX_XDX', x: $1_Diem_Diem'$1_XDX_XDX'): $1_DiemAccount_Balance'$1_XDX_XDX' {
    $1_DiemAccount_Balance'$1_XDX_XDX'(x)
}
function $IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''(s: $1_DiemAccount_Balance'$1_XDX_XDX'): bool {
    $IsValid'$1_Diem_Diem'$1_XDX_XDX''($coin#$1_DiemAccount_Balance'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_DiemAccount_Balance'$1_XDX_XDX''(s1: $1_DiemAccount_Balance'$1_XDX_XDX', s2: $1_DiemAccount_Balance'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_DiemAccount_Balance'$1_XDX_XDX'_$memory: $Memory $1_DiemAccount_Balance'$1_XDX_XDX';

// struct DiemAccount::Balance<#0> at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:67:5+261
type {:datatype} $1_DiemAccount_Balance'#0';
function {:constructor} $1_DiemAccount_Balance'#0'($coin: $1_Diem_Diem'#0'): $1_DiemAccount_Balance'#0';
function {:inline} $Update'$1_DiemAccount_Balance'#0''_coin(s: $1_DiemAccount_Balance'#0', x: $1_Diem_Diem'#0'): $1_DiemAccount_Balance'#0' {
    $1_DiemAccount_Balance'#0'(x)
}
function $IsValid'$1_DiemAccount_Balance'#0''(s: $1_DiemAccount_Balance'#0'): bool {
    $IsValid'$1_Diem_Diem'#0''($coin#$1_DiemAccount_Balance'#0'(s))
}
function {:inline} $IsEqual'$1_DiemAccount_Balance'#0''(s1: $1_DiemAccount_Balance'#0', s2: $1_DiemAccount_Balance'#0'): bool {
    s1 == s2
}
var $1_DiemAccount_Balance'#0'_$memory: $Memory $1_DiemAccount_Balance'#0';

// struct DiemAccount::CreateAccountEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:136:5+179
type {:datatype} $1_DiemAccount_CreateAccountEvent;
function {:constructor} $1_DiemAccount_CreateAccountEvent($created: int, $role_id: int): $1_DiemAccount_CreateAccountEvent;
function {:inline} $Update'$1_DiemAccount_CreateAccountEvent'_created(s: $1_DiemAccount_CreateAccountEvent, x: int): $1_DiemAccount_CreateAccountEvent {
    $1_DiemAccount_CreateAccountEvent(x, $role_id#$1_DiemAccount_CreateAccountEvent(s))
}
function {:inline} $Update'$1_DiemAccount_CreateAccountEvent'_role_id(s: $1_DiemAccount_CreateAccountEvent, x: int): $1_DiemAccount_CreateAccountEvent {
    $1_DiemAccount_CreateAccountEvent($created#$1_DiemAccount_CreateAccountEvent(s), x)
}
function $IsValid'$1_DiemAccount_CreateAccountEvent'(s: $1_DiemAccount_CreateAccountEvent): bool {
    $IsValid'address'($created#$1_DiemAccount_CreateAccountEvent(s))
      && $IsValid'u64'($role_id#$1_DiemAccount_CreateAccountEvent(s))
}
function {:inline} $IsEqual'$1_DiemAccount_CreateAccountEvent'(s1: $1_DiemAccount_CreateAccountEvent, s2: $1_DiemAccount_CreateAccountEvent): bool {
    s1 == s2
}

// struct DiemAccount::DiemWriteSetManager at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:100:5+115
type {:datatype} $1_DiemAccount_DiemWriteSetManager;
function {:constructor} $1_DiemAccount_DiemWriteSetManager($upgrade_events: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent'): $1_DiemAccount_DiemWriteSetManager;
function {:inline} $Update'$1_DiemAccount_DiemWriteSetManager'_upgrade_events(s: $1_DiemAccount_DiemWriteSetManager, x: $1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent'): $1_DiemAccount_DiemWriteSetManager {
    $1_DiemAccount_DiemWriteSetManager(x)
}
function $IsValid'$1_DiemAccount_DiemWriteSetManager'(s: $1_DiemAccount_DiemWriteSetManager): bool {
    $IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''($upgrade_events#$1_DiemAccount_DiemWriteSetManager(s))
}
function {:inline} $IsEqual'$1_DiemAccount_DiemWriteSetManager'(s1: $1_DiemAccount_DiemWriteSetManager, s2: $1_DiemAccount_DiemWriteSetManager): bool {
    s1 == s2
}
var $1_DiemAccount_DiemWriteSetManager_$memory: $Memory $1_DiemAccount_DiemWriteSetManager;

// struct DiemAccount::KeyRotationCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:86:5+208
type {:datatype} $1_DiemAccount_KeyRotationCapability;
function {:constructor} $1_DiemAccount_KeyRotationCapability($account_address: int): $1_DiemAccount_KeyRotationCapability;
function {:inline} $Update'$1_DiemAccount_KeyRotationCapability'_account_address(s: $1_DiemAccount_KeyRotationCapability, x: int): $1_DiemAccount_KeyRotationCapability {
    $1_DiemAccount_KeyRotationCapability(x)
}
function $IsValid'$1_DiemAccount_KeyRotationCapability'(s: $1_DiemAccount_KeyRotationCapability): bool {
    $IsValid'address'($account_address#$1_DiemAccount_KeyRotationCapability(s))
}
function {:inline} $IsEqual'$1_DiemAccount_KeyRotationCapability'(s1: $1_DiemAccount_KeyRotationCapability, s2: $1_DiemAccount_KeyRotationCapability): bool {
    s1 == s2
}

// struct DiemAccount::ReceivedPaymentEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:118:5+363
type {:datatype} $1_DiemAccount_ReceivedPaymentEvent;
function {:constructor} $1_DiemAccount_ReceivedPaymentEvent($amount: int, $currency_code: Vec (int), $payer: int, $metadata: Vec (int)): $1_DiemAccount_ReceivedPaymentEvent;
function {:inline} $Update'$1_DiemAccount_ReceivedPaymentEvent'_amount(s: $1_DiemAccount_ReceivedPaymentEvent, x: int): $1_DiemAccount_ReceivedPaymentEvent {
    $1_DiemAccount_ReceivedPaymentEvent(x, $currency_code#$1_DiemAccount_ReceivedPaymentEvent(s), $payer#$1_DiemAccount_ReceivedPaymentEvent(s), $metadata#$1_DiemAccount_ReceivedPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_ReceivedPaymentEvent'_currency_code(s: $1_DiemAccount_ReceivedPaymentEvent, x: Vec (int)): $1_DiemAccount_ReceivedPaymentEvent {
    $1_DiemAccount_ReceivedPaymentEvent($amount#$1_DiemAccount_ReceivedPaymentEvent(s), x, $payer#$1_DiemAccount_ReceivedPaymentEvent(s), $metadata#$1_DiemAccount_ReceivedPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_ReceivedPaymentEvent'_payer(s: $1_DiemAccount_ReceivedPaymentEvent, x: int): $1_DiemAccount_ReceivedPaymentEvent {
    $1_DiemAccount_ReceivedPaymentEvent($amount#$1_DiemAccount_ReceivedPaymentEvent(s), $currency_code#$1_DiemAccount_ReceivedPaymentEvent(s), x, $metadata#$1_DiemAccount_ReceivedPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_ReceivedPaymentEvent'_metadata(s: $1_DiemAccount_ReceivedPaymentEvent, x: Vec (int)): $1_DiemAccount_ReceivedPaymentEvent {
    $1_DiemAccount_ReceivedPaymentEvent($amount#$1_DiemAccount_ReceivedPaymentEvent(s), $currency_code#$1_DiemAccount_ReceivedPaymentEvent(s), $payer#$1_DiemAccount_ReceivedPaymentEvent(s), x)
}
function $IsValid'$1_DiemAccount_ReceivedPaymentEvent'(s: $1_DiemAccount_ReceivedPaymentEvent): bool {
    $IsValid'u64'($amount#$1_DiemAccount_ReceivedPaymentEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_DiemAccount_ReceivedPaymentEvent(s))
      && $IsValid'address'($payer#$1_DiemAccount_ReceivedPaymentEvent(s))
      && $IsValid'vec'u8''($metadata#$1_DiemAccount_ReceivedPaymentEvent(s))
}
function {:inline} $IsEqual'$1_DiemAccount_ReceivedPaymentEvent'(s1: $1_DiemAccount_ReceivedPaymentEvent, s2: $1_DiemAccount_ReceivedPaymentEvent): bool {
    s1 == s2
}

// struct DiemAccount::SentPaymentEvent at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:106:5+346
type {:datatype} $1_DiemAccount_SentPaymentEvent;
function {:constructor} $1_DiemAccount_SentPaymentEvent($amount: int, $currency_code: Vec (int), $payee: int, $metadata: Vec (int)): $1_DiemAccount_SentPaymentEvent;
function {:inline} $Update'$1_DiemAccount_SentPaymentEvent'_amount(s: $1_DiemAccount_SentPaymentEvent, x: int): $1_DiemAccount_SentPaymentEvent {
    $1_DiemAccount_SentPaymentEvent(x, $currency_code#$1_DiemAccount_SentPaymentEvent(s), $payee#$1_DiemAccount_SentPaymentEvent(s), $metadata#$1_DiemAccount_SentPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_SentPaymentEvent'_currency_code(s: $1_DiemAccount_SentPaymentEvent, x: Vec (int)): $1_DiemAccount_SentPaymentEvent {
    $1_DiemAccount_SentPaymentEvent($amount#$1_DiemAccount_SentPaymentEvent(s), x, $payee#$1_DiemAccount_SentPaymentEvent(s), $metadata#$1_DiemAccount_SentPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_SentPaymentEvent'_payee(s: $1_DiemAccount_SentPaymentEvent, x: int): $1_DiemAccount_SentPaymentEvent {
    $1_DiemAccount_SentPaymentEvent($amount#$1_DiemAccount_SentPaymentEvent(s), $currency_code#$1_DiemAccount_SentPaymentEvent(s), x, $metadata#$1_DiemAccount_SentPaymentEvent(s))
}
function {:inline} $Update'$1_DiemAccount_SentPaymentEvent'_metadata(s: $1_DiemAccount_SentPaymentEvent, x: Vec (int)): $1_DiemAccount_SentPaymentEvent {
    $1_DiemAccount_SentPaymentEvent($amount#$1_DiemAccount_SentPaymentEvent(s), $currency_code#$1_DiemAccount_SentPaymentEvent(s), $payee#$1_DiemAccount_SentPaymentEvent(s), x)
}
function $IsValid'$1_DiemAccount_SentPaymentEvent'(s: $1_DiemAccount_SentPaymentEvent): bool {
    $IsValid'u64'($amount#$1_DiemAccount_SentPaymentEvent(s))
      && $IsValid'vec'u8''($currency_code#$1_DiemAccount_SentPaymentEvent(s))
      && $IsValid'address'($payee#$1_DiemAccount_SentPaymentEvent(s))
      && $IsValid'vec'u8''($metadata#$1_DiemAccount_SentPaymentEvent(s))
}
function {:inline} $IsEqual'$1_DiemAccount_SentPaymentEvent'(s1: $1_DiemAccount_SentPaymentEvent, s2: $1_DiemAccount_SentPaymentEvent): bool {
    s1 == s2
}

// struct DiemAccount::WithdrawCapability at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:77:5+202
type {:datatype} $1_DiemAccount_WithdrawCapability;
function {:constructor} $1_DiemAccount_WithdrawCapability($account_address: int): $1_DiemAccount_WithdrawCapability;
function {:inline} $Update'$1_DiemAccount_WithdrawCapability'_account_address(s: $1_DiemAccount_WithdrawCapability, x: int): $1_DiemAccount_WithdrawCapability {
    $1_DiemAccount_WithdrawCapability(x)
}
function $IsValid'$1_DiemAccount_WithdrawCapability'(s: $1_DiemAccount_WithdrawCapability): bool {
    $IsValid'address'($account_address#$1_DiemAccount_WithdrawCapability(s))
}
function {:inline} $IsEqual'$1_DiemAccount_WithdrawCapability'(s1: $1_DiemAccount_WithdrawCapability, s2: $1_DiemAccount_WithdrawCapability): bool {
    s1 == s2
}

// fun DiemAccount::add_currency<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1535:5+766
procedure {:inline 1} $1_DiemAccount_add_currency'$1_XUS_XUS'(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: bool;
    var $t16: int;
    var $t17: int;
    var $t18: bool;
    var $t19: bool;
    var $t20: int;
    var $t21: int;
    var $t22: $1_Diem_Diem'$1_XUS_XUS';
    var $t23: $1_DiemAccount_Balance'$1_XUS_XUS';
    var $t0: $signer;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1555:9+44
    assume {:print "$at(12,71254,71298)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1535:5+1
    assume {:print "$at(12,70406,70407)"} true;
    assume {:print "$track_local(32,2,0):", $t0} $t0 == $t0;

    // $t9 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27
    assume {:print "$at(12,70484,70511)"} true;

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27
    assume $IsValid'address'($t9);

    // assume Eq<address>($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27
    assume $IsEqual'address'($t9, $1_Signer_spec_address_of($t0));

    // $t9 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27

    // trace_local[addr]($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:13+4
    assume {:print "$track_local(32,2,7):", $t9} $t9 == $t9;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume {:print "$at(12,70587,70620)"} true;

    // assume Identical($t10, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume ($t10 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t10) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    if ($t10) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
L9:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t11)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(5, $t11));

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume {:print "$at(12,70587,70620)"} true;
    assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    goto L7;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
L8:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33

    // $t12 := DiemAccount::exists_at($t9) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:16+15
    assume {:print "$at(12,70637,70652)"} true;
    call $t12 := $1_DiemAccount_exists_at($t9);
    if ($abort_flag) {
        assume {:print "$at(12,70637,70652)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:55+8
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::not_published($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31
    assume $IsEqual'u64'($t14, 5);

    // $t14 := opaque end: Errors::not_published($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31

    // trace_local[tmp#$2]($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    assume {:print "$track_local(32,2,2):", $t14} $t14 == $t14;

    // trace_local[tmp#$1]($t12) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    assume {:print "$track_local(32,2,1):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    assume {:print "$at(12,70630,70686)"} true;
    assume {:print "$track_abort(32,2):", $t14} $t14 == $t14;

    // $t11 := move($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    $t11 := $t14;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1542:37+7
    assume {:print "$at(12,70813,70820)"} true;
L0:

    // $t15 := Roles::can_hold_balance($t0) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1542:13+32
    call $t15 := $1_Roles_can_hold_balance($t0);
    if ($abort_flag) {
        assume {:print "$at(12,70789,70821)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t16 := 4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:38+24
    assume {:print "$at(12,70860,70884)"} true;
    $t16 := 4;
    assume $IsValid'u64'($t16);

    // $t17 := opaque begin: Errors::invalid_argument($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50

    // assume WellFormed($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50
    assume $IsValid'u64'($t17);

    // assume Eq<u64>($t17, 7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50
    assume $IsEqual'u64'($t17, 7);

    // $t17 := opaque end: Errors::invalid_argument($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50

    // trace_local[tmp#$4]($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    assume {:print "$at(12,70769,70895)"} true;
    assume {:print "$track_local(32,2,4):", $t17} $t17 == $t17;

    // trace_local[tmp#$3]($t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    assume {:print "$track_local(32,2,3):", $t15} $t15 == $t15;

    // if ($t15) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    if ($t15) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    assume {:print "$at(12,70769,70895)"} true;
    assume {:print "$track_abort(32,2):", $t17} $t17 == $t17;

    // $t11 := move($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    $t11 := $t17;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1547:37+4
    assume {:print "$at(12,71016,71020)"} true;
L2:

    // $t18 := exists<DiemAccount::Balance<#0>>($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1547:14+6
    $t18 := $ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, $t9);

    // $t19 := !($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1547:13+1
    call $t19 := $Not($t18);

    // $t20 := 15 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:39+22
    assume {:print "$at(12,71061,71083)"} true;
    $t20 := 15;
    assume $IsValid'u64'($t20);

    // $t21 := opaque begin: Errors::already_published($t20) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49

    // assume WellFormed($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49
    assume $IsValid'u64'($t21);

    // assume Eq<u64>($t21, 6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49
    assume $IsEqual'u64'($t21, 6);

    // $t21 := opaque end: Errors::already_published($t20) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49

    // trace_local[tmp#$6]($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    assume {:print "$at(12,70972,71094)"} true;
    assume {:print "$track_local(32,2,6):", $t21} $t21 == $t21;

    // trace_local[tmp#$5]($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    assume {:print "$track_local(32,2,5):", $t19} $t19 == $t19;

    // if ($t19) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    if ($t19) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
L5:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122

    // trace_abort($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    assume {:print "$at(12,70972,71094)"} true;
    assume {:print "$track_abort(32,2):", $t21} $t21 == $t21;

    // $t11 := move($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    $t11 := $t21;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:17+7
    assume {:print "$at(12,71113,71120)"} true;
L4:

    // $t22 := Diem::zero<#0>() on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:48+19
    call $t22 := $1_Diem_zero'$1_XUS_XUS'();
    if ($abort_flag) {
        assume {:print "$at(12,71144,71163)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t23 := pack DiemAccount::Balance<#0>($t22) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:26+43
    $t23 := $1_DiemAccount_Balance'$1_XUS_XUS'($t22);

    // move_to<DiemAccount::Balance<#0>>($t23, $t0) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:9+7
    if ($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_DiemAccount_Balance'$1_XUS_XUS'_$memory := $ResourceUpdate($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0), $t23);
    }
    if ($abort_flag) {
        assume {:print "$at(12,71105,71112)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
    assume {:print "$at(12,71171,71172)"} true;
L6:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
L7:

    // abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

// fun DiemAccount::add_currency<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1535:5+766
procedure {:inline 1} $1_DiemAccount_add_currency'$1_XDX_XDX'(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: bool;
    var $t16: int;
    var $t17: int;
    var $t18: bool;
    var $t19: bool;
    var $t20: int;
    var $t21: int;
    var $t22: $1_Diem_Diem'$1_XDX_XDX';
    var $t23: $1_DiemAccount_Balance'$1_XDX_XDX';
    var $t0: $signer;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1555:9+44
    assume {:print "$at(12,71254,71298)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1535:5+1
    assume {:print "$at(12,70406,70407)"} true;
    assume {:print "$track_local(32,2,0):", $t0} $t0 == $t0;

    // $t9 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27
    assume {:print "$at(12,70484,70511)"} true;

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27
    assume $IsValid'address'($t9);

    // assume Eq<address>($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27
    assume $IsEqual'address'($t9, $1_Signer_spec_address_of($t0));

    // $t9 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27

    // trace_local[addr]($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:13+4
    assume {:print "$track_local(32,2,7):", $t9} $t9 == $t9;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume {:print "$at(12,70587,70620)"} true;

    // assume Identical($t10, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume ($t10 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t10) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    if ($t10) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
L9:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t11)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'num'(5, $t11));

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume {:print "$at(12,70587,70620)"} true;
    assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    goto L7;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
L8:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33

    // $t12 := DiemAccount::exists_at($t9) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:16+15
    assume {:print "$at(12,70637,70652)"} true;
    call $t12 := $1_DiemAccount_exists_at($t9);
    if ($abort_flag) {
        assume {:print "$at(12,70637,70652)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:55+8
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::not_published($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31
    assume $IsEqual'u64'($t14, 5);

    // $t14 := opaque end: Errors::not_published($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31

    // trace_local[tmp#$2]($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    assume {:print "$track_local(32,2,2):", $t14} $t14 == $t14;

    // trace_local[tmp#$1]($t12) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    assume {:print "$track_local(32,2,1):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    assume {:print "$at(12,70630,70686)"} true;
    assume {:print "$track_abort(32,2):", $t14} $t14 == $t14;

    // $t11 := move($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    $t11 := $t14;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1542:37+7
    assume {:print "$at(12,70813,70820)"} true;
L0:

    // $t15 := Roles::can_hold_balance($t0) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1542:13+32
    call $t15 := $1_Roles_can_hold_balance($t0);
    if ($abort_flag) {
        assume {:print "$at(12,70789,70821)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t16 := 4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:38+24
    assume {:print "$at(12,70860,70884)"} true;
    $t16 := 4;
    assume $IsValid'u64'($t16);

    // $t17 := opaque begin: Errors::invalid_argument($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50

    // assume WellFormed($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50
    assume $IsValid'u64'($t17);

    // assume Eq<u64>($t17, 7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50
    assume $IsEqual'u64'($t17, 7);

    // $t17 := opaque end: Errors::invalid_argument($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50

    // trace_local[tmp#$4]($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    assume {:print "$at(12,70769,70895)"} true;
    assume {:print "$track_local(32,2,4):", $t17} $t17 == $t17;

    // trace_local[tmp#$3]($t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    assume {:print "$track_local(32,2,3):", $t15} $t15 == $t15;

    // if ($t15) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    if ($t15) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    assume {:print "$at(12,70769,70895)"} true;
    assume {:print "$track_abort(32,2):", $t17} $t17 == $t17;

    // $t11 := move($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    $t11 := $t17;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1547:37+4
    assume {:print "$at(12,71016,71020)"} true;
L2:

    // $t18 := exists<DiemAccount::Balance<#0>>($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1547:14+6
    $t18 := $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, $t9);

    // $t19 := !($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1547:13+1
    call $t19 := $Not($t18);

    // $t20 := 15 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:39+22
    assume {:print "$at(12,71061,71083)"} true;
    $t20 := 15;
    assume $IsValid'u64'($t20);

    // $t21 := opaque begin: Errors::already_published($t20) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49

    // assume WellFormed($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49
    assume $IsValid'u64'($t21);

    // assume Eq<u64>($t21, 6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49
    assume $IsEqual'u64'($t21, 6);

    // $t21 := opaque end: Errors::already_published($t20) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49

    // trace_local[tmp#$6]($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    assume {:print "$at(12,70972,71094)"} true;
    assume {:print "$track_local(32,2,6):", $t21} $t21 == $t21;

    // trace_local[tmp#$5]($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    assume {:print "$track_local(32,2,5):", $t19} $t19 == $t19;

    // if ($t19) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    if ($t19) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
L5:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122

    // trace_abort($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    assume {:print "$at(12,70972,71094)"} true;
    assume {:print "$track_abort(32,2):", $t21} $t21 == $t21;

    // $t11 := move($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    $t11 := $t21;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:17+7
    assume {:print "$at(12,71113,71120)"} true;
L4:

    // $t22 := Diem::zero<#0>() on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:48+19
    call $t22 := $1_Diem_zero'$1_XDX_XDX'();
    if ($abort_flag) {
        assume {:print "$at(12,71144,71163)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t23 := pack DiemAccount::Balance<#0>($t22) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:26+43
    $t23 := $1_DiemAccount_Balance'$1_XDX_XDX'($t22);

    // move_to<DiemAccount::Balance<#0>>($t23, $t0) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:9+7
    if ($ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_DiemAccount_Balance'$1_XDX_XDX'_$memory := $ResourceUpdate($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, $1_Signer_spec_address_of($t0), $t23);
    }
    if ($abort_flag) {
        assume {:print "$at(12,71105,71112)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
    assume {:print "$at(12,71171,71172)"} true;
L6:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
L7:

    // abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

// fun DiemAccount::add_currency<#0> [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1535:5+766
procedure {:inline 1} $1_DiemAccount_add_currency'#0'(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: bool;
    var $t16: int;
    var $t17: int;
    var $t18: bool;
    var $t19: bool;
    var $t20: int;
    var $t21: int;
    var $t22: $1_Diem_Diem'#0';
    var $t23: $1_DiemAccount_Balance'#0';
    var $t0: $signer;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1555:9+44
    assume {:print "$at(12,71254,71298)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1535:5+1
    assume {:print "$at(12,70406,70407)"} true;
    assume {:print "$track_local(32,2,0):", $t0} $t0 == $t0;

    // $t9 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27
    assume {:print "$at(12,70484,70511)"} true;

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27
    assume $IsValid'address'($t9);

    // assume Eq<address>($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27
    assume $IsEqual'address'($t9, $1_Signer_spec_address_of($t0));

    // $t9 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:20+27

    // trace_local[addr]($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1536:13+4
    assume {:print "$track_local(32,2,7):", $t9} $t9 == $t9;

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume {:print "$at(12,70587,70620)"} true;

    // assume Identical($t10, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume ($t10 == !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory));

    // if ($t10) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    if ($t10) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
L9:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t11)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) && $IsEqual'num'(5, $t11));

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    assume {:print "$at(12,70587,70620)"} true;
    assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
    goto L7;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33
L8:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1538:9+33

    // $t12 := DiemAccount::exists_at($t9) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:16+15
    assume {:print "$at(12,70637,70652)"} true;
    call $t12 := $1_DiemAccount_exists_at($t9);
    if ($abort_flag) {
        assume {:print "$at(12,70637,70652)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:55+8
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::not_published($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31
    assume $IsEqual'u64'($t14, 5);

    // $t14 := opaque end: Errors::not_published($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:33+31

    // trace_local[tmp#$2]($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    assume {:print "$track_local(32,2,2):", $t14} $t14 == $t14;

    // trace_local[tmp#$1]($t12) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    assume {:print "$track_local(32,2,1):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    assume {:print "$at(12,70630,70686)"} true;
    assume {:print "$track_abort(32,2):", $t14} $t14 == $t14;

    // $t11 := move($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    $t11 := $t14;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1539:9+56
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1542:37+7
    assume {:print "$at(12,70813,70820)"} true;
L0:

    // $t15 := Roles::can_hold_balance($t0) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1542:13+32
    call $t15 := $1_Roles_can_hold_balance($t0);
    if ($abort_flag) {
        assume {:print "$at(12,70789,70821)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t16 := 4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:38+24
    assume {:print "$at(12,70860,70884)"} true;
    $t16 := 4;
    assume $IsValid'u64'($t16);

    // $t17 := opaque begin: Errors::invalid_argument($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50

    // assume WellFormed($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50
    assume $IsValid'u64'($t17);

    // assume Eq<u64>($t17, 7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50
    assume $IsEqual'u64'($t17, 7);

    // $t17 := opaque end: Errors::invalid_argument($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1543:13+50

    // trace_local[tmp#$4]($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    assume {:print "$at(12,70769,70895)"} true;
    assume {:print "$track_local(32,2,4):", $t17} $t17 == $t17;

    // trace_local[tmp#$3]($t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    assume {:print "$track_local(32,2,3):", $t15} $t15 == $t15;

    // if ($t15) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    if ($t15) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    assume {:print "$at(12,70769,70895)"} true;
    assume {:print "$track_abort(32,2):", $t17} $t17 == $t17;

    // $t11 := move($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    $t11 := $t17;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1541:9+126
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1547:37+4
    assume {:print "$at(12,71016,71020)"} true;
L2:

    // $t18 := exists<DiemAccount::Balance<#0>>($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1547:14+6
    $t18 := $ResourceExists($1_DiemAccount_Balance'#0'_$memory, $t9);

    // $t19 := !($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1547:13+1
    call $t19 := $Not($t18);

    // $t20 := 15 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:39+22
    assume {:print "$at(12,71061,71083)"} true;
    $t20 := 15;
    assume $IsValid'u64'($t20);

    // $t21 := opaque begin: Errors::already_published($t20) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49

    // assume WellFormed($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49
    assume $IsValid'u64'($t21);

    // assume Eq<u64>($t21, 6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49
    assume $IsEqual'u64'($t21, 6);

    // $t21 := opaque end: Errors::already_published($t20) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1548:13+49

    // trace_local[tmp#$6]($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    assume {:print "$at(12,70972,71094)"} true;
    assume {:print "$track_local(32,2,6):", $t21} $t21 == $t21;

    // trace_local[tmp#$5]($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    assume {:print "$track_local(32,2,5):", $t19} $t19 == $t19;

    // if ($t19) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    if ($t19) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
L5:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122

    // trace_abort($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    assume {:print "$at(12,70972,71094)"} true;
    assume {:print "$track_abort(32,2):", $t21} $t21 == $t21;

    // $t11 := move($t21) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    $t11 := $t21;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1546:9+122
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:17+7
    assume {:print "$at(12,71113,71120)"} true;
L4:

    // $t22 := Diem::zero<#0>() on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:48+19
    call $t22 := $1_Diem_zero'#0'();
    if ($abort_flag) {
        assume {:print "$at(12,71144,71163)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // $t23 := pack DiemAccount::Balance<#0>($t22) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:26+43
    $t23 := $1_DiemAccount_Balance'#0'($t22);

    // move_to<DiemAccount::Balance<#0>>($t23, $t0) on_abort goto L7 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1551:9+7
    if ($ResourceExists($1_DiemAccount_Balance'#0'_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_DiemAccount_Balance'#0'_$memory := $ResourceUpdate($1_DiemAccount_Balance'#0'_$memory, $1_Signer_spec_address_of($t0), $t23);
    }
    if ($abort_flag) {
        assume {:print "$at(12,71105,71112)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(32,2):", $t11} $t11 == $t11;
        goto L7;
    }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
    assume {:print "$at(12,71171,71172)"} true;
L6:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
L7:

    // abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1552:5+1
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

// fun DiemAccount::exists_at [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1641:5+95
procedure {:inline 1} $1_DiemAccount_exists_at(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[check_addr]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1641:5+1
    assume {:print "$at(12,74875,74876)"} true;
    assume {:print "$track_local(32,22,0):", $t0} $t0 == $t0;

    // $t1 := exists<DiemAccount::DiemAccount>($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1642:9+6
    assume {:print "$at(12,74933,74939)"} true;
    $t1 := $ResourceExists($1_DiemAccount_DiemAccount_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1642:9+31
    assume {:print "$track_return(32,22,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1643:5+1
    assume {:print "$at(12,74969,74970)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1643:5+1
    $ret0 := $t1;
    return;

}

// fun DiemAccount::delegated_key_rotation_capability [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1617:5+247
procedure {:inline 1} $1_DiemAccount_delegated_key_rotation_capability(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: $1_DiemAccount_DiemAccount;
    var $t8: $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
    var $t9: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1617:5+1
    assume {:print "$at(12,73821,73822)"} true;
    assume {:print "$track_local(32,17,0):", $t0} $t0 == $t0;

    // $t3 := DiemAccount::exists_at($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:16+15
    assume {:print "$at(12,73929,73944)"} true;
    call $t3 := $1_DiemAccount_exists_at($t0);
    if ($abort_flag) {
        assume {:print "$at(12,73929,73944)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(32,17):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t5 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:55+8
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := opaque begin: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:33+31

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:33+31
    assume $IsValid'u64'($t6);

    // assume Eq<u64>($t6, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:33+31
    assume $IsEqual'u64'($t6, 5);

    // $t6 := opaque end: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:33+31

    // trace_local[tmp#$2]($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:9+56
    assume {:print "$track_local(32,17,2):", $t6} $t6 == $t6;

    // trace_local[tmp#$1]($t3) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:9+56
    assume {:print "$track_local(32,17,1):", $t3} $t3 == $t3;

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:9+56
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:9+56
L1:

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:9+56
    assume {:print "$at(12,73922,73978)"} true;
    assume {:print "$track_abort(32,17):", $t6} $t6 == $t6;

    // $t4 := move($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:9+56
    $t4 := $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1619:9+56
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1620:53+4
    assume {:print "$at(12,74032,74036)"} true;
L0:

    // $t7 := get_global<DiemAccount::DiemAccount>($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1620:26+13
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t7 := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(12,74005,74018)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(32,17):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t8 := get_field<DiemAccount::DiemAccount>.key_rotation_capability($t7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1620:25+57
    $t8 := $key_rotation_capability#$1_DiemAccount_DiemAccount($t7);

    // $t9 := opaque begin: Option::is_none<DiemAccount::KeyRotationCapability>($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1620:9+74

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1620:9+74
    assume $IsValid'bool'($t9);

    // assume Eq<bool>($t9, Option::$is_none<DiemAccount::KeyRotationCapability>($t8)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1620:9+74
    assume $IsEqual'bool'($t9, $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($t8));

    // $t9 := opaque end: Option::is_none<DiemAccount::KeyRotationCapability>($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1620:9+74

    // trace_return[0]($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1620:9+74
    assume {:print "$track_return(32,17,0):", $t9} $t9 == $t9;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1621:5+1
    assume {:print "$at(12,74067,74068)"} true;
L2:

    // return $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1621:5+1
    $ret0 := $t9;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1621:5+1
L3:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1621:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun DiemAccount::extract_key_rotation_capability [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:5+649
procedure {:inline 1} $1_DiemAccount_extract_key_rotation_capability(_$t0: $signer) returns ($ret0: $1_DiemAccount_KeyRotationCapability)
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: $Mutation ($1_DiemAccount_DiemAccount);
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: bool;
    var $t12: int;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: $Mutation ($1_DiemAccount_DiemAccount);
    var $t18: $Mutation ($1_Option_Option'$1_DiemAccount_KeyRotationCapability');
    var $t19: $1_DiemAccount_KeyRotationCapability;
    var $t20: $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
    var $t21: bool;
    var $t0: $signer;
    var $temp_0'$1_DiemAccount_DiemAccount': $1_DiemAccount_DiemAccount;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'': $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t5));
    assume IsEmptyVec(p#$Mutation($t17));
    assume IsEmptyVec(p#$Mutation($t18));

    // bytecode translation starts here
    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:954:5+1
    assume {:print "$at(12,42384,42385)"} true;
    assume {:print "$track_local(32,23,0):", $t0} $t0 == $t0;

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:31+27
    assume {:print "$at(12,42525,42552)"} true;

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:31+27
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:31+27
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:31+27

    // trace_local[account_address]($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:956:13+15
    assume {:print "$track_local(32,23,6):", $t8} $t8 == $t8;

    // $t9 := DiemAccount::delegated_key_rotation_capability($t8) on_abort goto L5 with $t10 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:959:14+50
    assume {:print "$at(12,42677,42727)"} true;
    call $t9 := $1_DiemAccount_delegated_key_rotation_capability($t8);
    if ($abort_flag) {
        assume {:print "$at(12,42677,42727)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(32,23):", $t10} $t10 == $t10;
        goto L5;
    }

    // $t11 := !($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:959:13+1
    call $t11 := $Not($t9);

    // $t12 := 9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:960:35+42
    assume {:print "$at(12,42763,42805)"} true;
    $t12 := 9;
    assume $IsValid'u64'($t12);

    // $t13 := opaque begin: Errors::invalid_state($t12) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:960:13+65

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:960:13+65
    assume $IsValid'u64'($t13);

    // assume Eq<u64>($t13, 1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:960:13+65
    assume $IsEqual'u64'($t13, 1);

    // $t13 := opaque end: Errors::invalid_state($t12) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:960:13+65

    // trace_local[tmp#$2]($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+160
    assume {:print "$at(12,42656,42816)"} true;
    assume {:print "$track_local(32,23,2):", $t13} $t13 == $t13;

    // trace_local[tmp#$1]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+160
    assume {:print "$track_local(32,23,1):", $t11} $t11 == $t11;

    // if ($t11) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+160
    if ($t11) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+160
L1:

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+160
    assume {:print "$at(12,42656,42816)"} true;
    assume {:print "$track_abort(32,23):", $t13} $t13 == $t13;

    // $t10 := move($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+160
    $t10 := $t13;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:958:9+160
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:26+15
    assume {:print "$at(12,42843,42858)"} true;
L0:

    // $t14 := DiemAccount::exists_at($t8) on_abort goto L5 with $t10 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:16+26
    call $t14 := $1_DiemAccount_exists_at($t8);
    if ($abort_flag) {
        assume {:print "$at(12,42833,42859)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(32,23):", $t10} $t10 == $t10;
        goto L5;
    }

    // $t15 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:66+8
    $t15 := 0;
    assume $IsValid'u64'($t15);

    // $t16 := opaque begin: Errors::not_published($t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:44+31

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:44+31
    assume $IsValid'u64'($t16);

    // assume Eq<u64>($t16, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:44+31
    assume $IsEqual'u64'($t16, 5);

    // $t16 := opaque end: Errors::not_published($t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:44+31

    // trace_local[tmp#$4]($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:9+67
    assume {:print "$track_local(32,23,4):", $t16} $t16 == $t16;

    // trace_local[tmp#$3]($t14) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:9+67
    assume {:print "$track_local(32,23,3):", $t14} $t14 == $t14;

    // if ($t14) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:9+67
    if ($t14) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:9+67
L3:

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:9+67
    assume {:print "$at(12,42826,42893)"} true;
    assume {:print "$track_abort(32,23):", $t16} $t16 == $t16;

    // $t10 := move($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:9+67
    $t10 := $t16;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:962:9+67
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:963:54+15
    assume {:print "$at(12,42948,42963)"} true;
L2:

    // $t17 := borrow_global<DiemAccount::DiemAccount>($t8) on_abort goto L5 with $t10 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:963:23+17
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t8)) {
        call $ExecFailureAbort();
    } else {
        $t17 := $Mutation($Global($t8), EmptyVec(), $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t8));
    }
    if ($abort_flag) {
        assume {:print "$at(12,42917,42934)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(32,23):", $t10} $t10 == $t10;
        goto L5;
    }

    // trace_local[account#5]($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:963:13+7
    $temp_0'$1_DiemAccount_DiemAccount' := $Dereference($t17);
    assume {:print "$track_local(32,23,5):", $temp_0'$1_DiemAccount_DiemAccount'} $temp_0'$1_DiemAccount_DiemAccount' == $temp_0'$1_DiemAccount_DiemAccount';

    // $t18 := borrow_field<DiemAccount::DiemAccount>.key_rotation_capability($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:25+36
    assume {:print "$at(12,42990,43026)"} true;
    $t18 := $ChildMutation($t17, 2, $key_rotation_capability#$1_DiemAccount_DiemAccount($Dereference($t17)));

    // $t19 := opaque begin: Option::extract<DiemAccount::KeyRotationCapability>($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53

    // $t20 := read_ref($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    $t20 := $Dereference($t18);

    // assume Identical($t21, Option::$is_none<DiemAccount::KeyRotationCapability>($t18)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    assume ($t21 == $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($Dereference($t18)));

    // if ($t21) goto L8 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    if ($t21) { goto L8; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
L7:

    // assume And(Option::$is_none<DiemAccount::KeyRotationCapability>($t18), Eq(7, $t10)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    assume ($1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($Dereference($t18)) && $IsEqual'num'(7, $t10));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    assume {:print "$at(12,42974,43027)"} true;
    assume {:print "$track_abort(32,23):", $t10} $t10 == $t10;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
L6:

    // havoc[mut]($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    havoc $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'';
    $t18 := $UpdateMutation($t18, $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'');
    assume $IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t18));

    // assume And(WellFormed($t18), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec($t18)), 1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    assume ($IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t18)) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($Dereference($t18))) <= 1));

    // assume WellFormed($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    assume $IsValid'$1_DiemAccount_KeyRotationCapability'($t19);

    // assume Eq<DiemAccount::KeyRotationCapability>($t19, Option::$borrow<DiemAccount::KeyRotationCapability>($t20)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    assume $IsEqual'$1_DiemAccount_KeyRotationCapability'($t19, $1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'($t20));

    // assume Option::$is_none<DiemAccount::KeyRotationCapability>($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    assume $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($Dereference($t18));

    // $t19 := opaque end: Option::extract<DiemAccount::KeyRotationCapability>($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53

    // write_back[Reference($t17).key_rotation_capability]($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    $t17 := $UpdateMutation($t17, $Update'$1_DiemAccount_DiemAccount'_key_rotation_capability($Dereference($t17), $Dereference($t18)));

    // pack_ref_deep($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53

    // write_back[DiemAccount::DiemAccount@]($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $GlobalLocationAddress($t17),
        $Dereference($t17));

    // trace_return[0]($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:964:9+53
    assume {:print "$track_return(32,23,0):", $t19} $t19 == $t19;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:965:5+1
    assume {:print "$at(12,43032,43033)"} true;
L4:

    // return $t19 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:965:5+1
    $ret0 := $t19;
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:965:5+1
L5:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:965:5+1
    $abort_code := $t10;
    $abort_flag := true;
    return;

    // label L8 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L8:

    // destroy($t17) at <internal>:1:1+10

    // goto L7 at <internal>:1:1+10
    goto L7;

}

// fun DiemAccount::key_rotation_capability_address [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1636:5+118
procedure {:inline 1} $1_DiemAccount_key_rotation_capability_address(_$t0: $1_DiemAccount_KeyRotationCapability) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t0: $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'address': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[cap]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1636:5+1
    assume {:print "$at(12,74699,74700)"} true;
    assume {:print "$track_local(32,27,0):", $t0} $t0 == $t0;

    // $t1 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1637:9+20
    assume {:print "$at(12,74791,74811)"} true;
    $t1 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1637:9+20
    assume {:print "$track_return(32,27,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1638:5+1
    assume {:print "$at(12,74816,74817)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1638:5+1
    $ret0 := $t1;
    return;

}

// fun DiemAccount::publish_crsn [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1508:5+663
procedure {:inline 1} $1_DiemAccount_publish_crsn(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: $1_DiemAccount_DiemAccount;
    var $t3: int;
    var $t4: $1_DiemAccount_DiemAccount;
    var $t5: int;
    var $t6: int;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'$1_DiemAccount_DiemAccount': $1_DiemAccount_DiemAccount;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1508:5+1
    assume {:print "$at(12,69104,69105)"} true;
    assume {:print "$track_local(32,35,0):", $t0} $t0 == $t0;

    // trace_local[size]($t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1508:5+1
    assume {:print "$track_local(32,35,1):", $t1} $t1 == $t1;

    // $t3 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1510:56+27
    assume {:print "$at(12,69239,69266)"} true;

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1510:56+27
    assume $IsValid'address'($t3);

    // assume Eq<address>($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1510:56+27
    assume $IsEqual'address'($t3, $1_Signer_spec_address_of($t0));

    // $t3 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1510:56+27

    // $t4 := get_global<DiemAccount::DiemAccount>($t3) on_abort goto L2 with $t5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1510:29+13
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t3)) {
        call $ExecFailureAbort();
    } else {
        $t4 := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t3);
    }
    if ($abort_flag) {
        assume {:print "$at(12,69212,69225)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(32,35):", $t5} $t5 == $t5;
        goto L2;
    }

    // trace_local[account_state]($t4) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1510:13+13
    assume {:print "$track_local(32,35,2):", $t4} $t4 == $t4;

    // $t6 := get_field<DiemAccount::DiemAccount>.sequence_number($t4) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1517:32+29
    assume {:print "$at(12,69725,69754)"} true;
    $t6 := $sequence_number#$1_DiemAccount_DiemAccount($t4);

    // CRSN::publish($t0, $t6, $t1) on_abort goto L2 with $t5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1517:9+59
    call $1_CRSN_publish($t0, $t6, $t1);
    if ($abort_flag) {
        assume {:print "$at(12,69702,69761)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(32,35):", $t5} $t5 == $t5;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1518:5+1
    assume {:print "$at(12,69766,69767)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1518:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1518:5+1
L2:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1518:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun DiemAccount::restore_key_rotation_capability [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:986:5+323
procedure {:inline 1} $1_DiemAccount_restore_key_rotation_capability(_$t0: $1_DiemAccount_KeyRotationCapability) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: $Mutation ($1_DiemAccount_DiemAccount);
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: $Mutation ($1_DiemAccount_DiemAccount);
    var $t11: $Mutation ($1_Option_Option'$1_DiemAccount_KeyRotationCapability');
    var $t12: bool;
    var $t0: $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_DiemAccount_DiemAccount': $1_DiemAccount_DiemAccount;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'': $1_Option_Option'$1_DiemAccount_KeyRotationCapability';
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    $t0 := _$t0;
    assume IsEmptyVec(p#$Mutation($t3));
    assume IsEmptyVec(p#$Mutation($t10));
    assume IsEmptyVec(p#$Mutation($t11));

    // bytecode translation starts here
    // trace_local[cap]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:986:5+1
    assume {:print "$at(12,43923,43924)"} true;
    assume {:print "$track_local(32,36,0):", $t0} $t0 == $t0;

    // $t4 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:26+19
    assume {:print "$at(12,44046,44065)"} true;
    $t4 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t5 := DiemAccount::exists_at($t4) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:16+30
    call $t5 := $1_DiemAccount_exists_at($t4);
    if ($abort_flag) {
        assume {:print "$at(12,44036,44066)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(32,36):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t7 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:70+8
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := opaque begin: Errors::not_published($t7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:48+31

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:48+31
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:48+31
    assume $IsEqual'u64'($t8, 5);

    // $t8 := opaque end: Errors::not_published($t7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:48+31

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:9+71
    assume {:print "$track_local(32,36,2):", $t8} $t8 == $t8;

    // trace_local[tmp#$1]($t5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:9+71
    assume {:print "$track_local(32,36,1):", $t5} $t5 == $t5;

    // if ($t5) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:9+71
    if ($t5) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:9+71
L1:

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:9+71
    assume {:print "$at(12,44029,44100)"} true;
    assume {:print "$track_abort(32,36):", $t8} $t8 == $t8;

    // $t6 := move($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:9+71
    $t6 := $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:988:9+71
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:989:54+3
    assume {:print "$at(12,44155,44158)"} true;
L0:

    // $t9 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:989:54+19
    $t9 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t10 := borrow_global<DiemAccount::DiemAccount>($t9) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:989:23+17
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t9)) {
        call $ExecFailureAbort();
    } else {
        $t10 := $Mutation($Global($t9), EmptyVec(), $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t9));
    }
    if ($abort_flag) {
        assume {:print "$at(12,44124,44141)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(32,36):", $t6} $t6 == $t6;
        goto L3;
    }

    // trace_local[account]($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:989:13+7
    $temp_0'$1_DiemAccount_DiemAccount' := $Dereference($t10);
    assume {:print "$track_local(32,36,3):", $temp_0'$1_DiemAccount_DiemAccount'} $temp_0'$1_DiemAccount_DiemAccount' == $temp_0'$1_DiemAccount_DiemAccount';

    // $t11 := borrow_field<DiemAccount::DiemAccount>.key_rotation_capability($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:22+36
    assume {:print "$at(12,44198,44234)"} true;
    $t11 := $ChildMutation($t10, 2, $key_rotation_capability#$1_DiemAccount_DiemAccount($Dereference($t10)));

    // opaque begin: Option::fill<DiemAccount::KeyRotationCapability>($t11, $t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55

    // assume Identical($t12, Option::$is_some<DiemAccount::KeyRotationCapability>($t11)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    assume ($t12 == $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($Dereference($t11)));

    // if ($t12) goto L6 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    if ($t12) { goto L6; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
L5:

    // assume And(Option::$is_some<DiemAccount::KeyRotationCapability>($t11), Eq(7, $t6)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    assume ($1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($Dereference($t11)) && $IsEqual'num'(7, $t6));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    assume {:print "$at(12,44185,44240)"} true;
    assume {:print "$track_abort(32,36):", $t6} $t6 == $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
L4:

    // havoc[mut]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    havoc $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'';
    $t11 := $UpdateMutation($t11, $temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability'');
    assume $IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t11));

    // assume And(WellFormed($t11), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec($t11)), 1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    assume ($IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''($Dereference($t11)) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($Dereference($t11))) <= 1));

    // assume Option::$is_some<DiemAccount::KeyRotationCapability>($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    assume $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'($Dereference($t11));

    // assume Eq<DiemAccount::KeyRotationCapability>(Option::$borrow<DiemAccount::KeyRotationCapability>($t11), $t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    assume $IsEqual'$1_DiemAccount_KeyRotationCapability'($1_Option_$borrow'$1_DiemAccount_KeyRotationCapability'($Dereference($t11)), $t0);

    // opaque end: Option::fill<DiemAccount::KeyRotationCapability>($t11, $t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55

    // write_back[Reference($t10).key_rotation_capability]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    $t10 := $UpdateMutation($t10, $Update'$1_DiemAccount_DiemAccount'_key_rotation_capability($Dereference($t10), $Dereference($t11)));

    // pack_ref_deep($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55

    // write_back[DiemAccount::DiemAccount@]($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:990:9+55
    $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $GlobalLocationAddress($t10),
        $Dereference($t10));

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:991:5+1
    assume {:print "$at(12,44245,44246)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:991:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:991:5+1
L3:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:991:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

    // label L6 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L6:

    // destroy($t10) at <internal>:1:1+10

    // goto L5 at <internal>:1:1+10
    goto L5;

}

// fun DiemAccount::rotate_authentication_key [baseline] at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:915:5+612
procedure {:inline 1} $1_DiemAccount_rotate_authentication_key(_$t0: $1_DiemAccount_KeyRotationCapability, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: $Mutation ($1_DiemAccount_DiemAccount);
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: $Mutation ($1_DiemAccount_DiemAccount);
    var $t14: int;
    var $t15: int;
    var $t16: bool;
    var $t17: int;
    var $t18: int;
    var $t19: $Mutation (Vec (int));
    var $t0: $1_DiemAccount_KeyRotationCapability;
    var $t1: Vec (int);
    var $temp_0'$1_DiemAccount_DiemAccount': $1_DiemAccount_DiemAccount;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t6));
    assume IsEmptyVec(p#$Mutation($t13));
    assume IsEmptyVec(p#$Mutation($t19));

    // bytecode translation starts here
    // trace_local[cap]($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:915:5+1
    assume {:print "$at(12,40537,40538)"} true;
    assume {:print "$track_local(32,38,0):", $t0} $t0 == $t0;

    // trace_local[new_authentication_key]($t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:915:5+1
    assume {:print "$track_local(32,38,1):", $t1} $t1 == $t1;

    // $t7 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:26+19
    assume {:print "$at(12,40711,40730)"} true;
    $t7 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t8 := DiemAccount::exists_at($t7) on_abort goto L5 with $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:16+30
    call $t8 := $1_DiemAccount_exists_at($t7);
    if ($abort_flag) {
        assume {:print "$at(12,40701,40731)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(32,38):", $t9} $t9 == $t9;
        goto L5;
    }

    // $t10 := 0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:70+8
    $t10 := 0;
    assume $IsValid'u64'($t10);

    // $t11 := opaque begin: Errors::not_published($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:48+31

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:48+31
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 5) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:48+31
    assume $IsEqual'u64'($t11, 5);

    // $t11 := opaque end: Errors::not_published($t10) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:48+31

    // trace_local[tmp#$3]($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:9+71
    assume {:print "$track_local(32,38,3):", $t11} $t11 == $t11;

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:9+71
    assume {:print "$track_local(32,38,2):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:9+71
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:9+71
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:9+71

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:9+71
    assume {:print "$at(12,40694,40765)"} true;
    assume {:print "$track_abort(32,38):", $t11} $t11 == $t11;

    // $t9 := move($t11) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:9+71
    $t9 := $t11;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:919:9+71
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:920:70+3
    assume {:print "$at(12,40836,40839)"} true;
L0:

    // $t12 := get_field<DiemAccount::KeyRotationCapability>.account_address($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:920:70+19
    $t12 := $account_address#$1_DiemAccount_KeyRotationCapability($t0);

    // $t13 := borrow_global<DiemAccount::DiemAccount>($t12) on_abort goto L5 with $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:920:39+17
    if (!$ResourceExists($1_DiemAccount_DiemAccount_$memory, $t12)) {
        call $ExecFailureAbort();
    } else {
        $t13 := $Mutation($Global($t12), EmptyVec(), $ResourceValue($1_DiemAccount_DiemAccount_$memory, $t12));
    }
    if ($abort_flag) {
        assume {:print "$at(12,40805,40822)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(32,38):", $t9} $t9 == $t9;
        goto L5;
    }

    // trace_local[sender_account_resource]($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:920:13+23
    $temp_0'$1_DiemAccount_DiemAccount' := $Dereference($t13);
    assume {:print "$track_local(32,38,6):", $temp_0'$1_DiemAccount_DiemAccount'} $temp_0'$1_DiemAccount_DiemAccount' == $temp_0'$1_DiemAccount_DiemAccount';

    // $t14 := Vector::length<u8>($t1) on_abort goto L5 with $t9 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:923:13+39
    assume {:print "$at(12,40941,40980)"} true;
    call $t14 := $1_Vector_length'u8'($t1);
    if ($abort_flag) {
        assume {:print "$at(12,40941,40980)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(32,38):", $t9} $t9 == $t9;
        goto L5;
    }

    // $t15 := 32 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:923:56+2
    $t15 := 32;
    assume $IsValid'u64'($t15);

    // $t16 := ==($t14, $t15) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:923:53+2
    $t16 := $IsEqual'u64'($t14, $t15);

    // $t17 := 8 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:924:38+29
    assume {:print "$at(12,41025,41054)"} true;
    $t17 := 8;
    assume $IsValid'u64'($t17);

    // $t18 := opaque begin: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:924:13+55

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:924:13+55
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 7) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:924:13+55
    assume $IsEqual'u64'($t18, 7);

    // $t18 := opaque end: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:924:13+55

    // trace_local[tmp#$5]($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:922:9+144
    assume {:print "$at(12,40921,41065)"} true;
    assume {:print "$track_local(32,38,5):", $t18} $t18 == $t18;

    // trace_local[tmp#$4]($t16) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:922:9+144
    assume {:print "$track_local(32,38,4):", $t16} $t16 == $t16;

    // if ($t16) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:922:9+144
    if ($t16) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:922:9+144
L3:

    // pack_ref_deep($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:922:9+144

    // destroy($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:922:9+144

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:922:9+144
    assume {:print "$at(12,40921,41065)"} true;
    assume {:print "$track_abort(32,38):", $t18} $t18 == $t18;

    // $t9 := move($t18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:922:9+144
    $t9 := $t18;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:922:9+144
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:926:54+22
    assume {:print "$at(12,41120,41142)"} true;
L2:

    // $t19 := borrow_field<DiemAccount::DiemAccount>.authentication_key($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:926:9+42
    $t19 := $ChildMutation($t13, 0, $authentication_key#$1_DiemAccount_DiemAccount($Dereference($t13)));

    // write_ref($t19, $t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:926:9+67
    $t19 := $UpdateMutation($t19, $t1);

    // write_back[Reference($t13).authentication_key]($t19) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:926:9+67
    $t13 := $UpdateMutation($t13, $Update'$1_DiemAccount_DiemAccount'_authentication_key($Dereference($t13), $Dereference($t19)));

    // pack_ref_deep($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:926:9+67

    // write_back[DiemAccount::DiemAccount@]($t13) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:926:9+67
    $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $GlobalLocationAddress($t13),
        $Dereference($t13));

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:927:5+1
    assume {:print "$at(12,41148,41149)"} true;
L4:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:927:5+1
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:927:5+1
L5:

    // abort($t9) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:927:5+1
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/Authenticator.move:69:10+72
function {:inline} $1_Authenticator_spec_ed25519_authentication_key(public_key: Vec (int)): Vec (int);
axiom (forall public_key: Vec (int) ::
(var $$res := $1_Authenticator_spec_ed25519_authentication_key(public_key);
$IsValid'vec'u8''($$res)));

// spec fun at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:134:5+94
function {:inline} $1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory: $Memory $1_SharedEd25519PublicKey_SharedEd25519PublicKey, addr: int): bool {
    $ResourceExists($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, addr)
}

// struct SharedEd25519PublicKey::SharedEd25519PublicKey at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:13:5+268
type {:datatype} $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
function {:constructor} $1_SharedEd25519PublicKey_SharedEd25519PublicKey($key: Vec (int), $rotation_cap: $1_DiemAccount_KeyRotationCapability): $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
function {:inline} $Update'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'_key(s: $1_SharedEd25519PublicKey_SharedEd25519PublicKey, x: Vec (int)): $1_SharedEd25519PublicKey_SharedEd25519PublicKey {
    $1_SharedEd25519PublicKey_SharedEd25519PublicKey(x, $rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey(s))
}
function {:inline} $Update'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'_rotation_cap(s: $1_SharedEd25519PublicKey_SharedEd25519PublicKey, x: $1_DiemAccount_KeyRotationCapability): $1_SharedEd25519PublicKey_SharedEd25519PublicKey {
    $1_SharedEd25519PublicKey_SharedEd25519PublicKey($key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey(s), x)
}
function $IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'(s: $1_SharedEd25519PublicKey_SharedEd25519PublicKey): bool {
    $IsValid'vec'u8''($key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey(s))
      && $IsValid'$1_DiemAccount_KeyRotationCapability'($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey(s))
}
function {:inline} $IsEqual'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'(s1: $1_SharedEd25519PublicKey_SharedEd25519PublicKey, s2: $1_SharedEd25519PublicKey_SharedEd25519PublicKey): bool {
    s1 == s2
}
var $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory: $Memory $1_SharedEd25519PublicKey_SharedEd25519PublicKey;

// fun SharedEd25519PublicKey::publish [baseline] at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
procedure {:inline 1} $1_SharedEd25519PublicKey_publish(_$t0: $signer, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: Vec (int);
    var $t9: int;
    var $t10: $1_DiemAccount_KeyRotationCapability;
    var $t11: int;
    var $t12: $Mutation ($1_SharedEd25519PublicKey_SharedEd25519PublicKey);
    var $t13: int;
    var $t14: bool;
    var $t15: bool;
    var $t16: int;
    var $t17: int;
    var $t18: $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $t0: $signer;
    var $t1: Vec (int);
    var $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey': $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t12));

    // bytecode translation starts here
    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:46:9+44
    assume {:print "$at(29,1991,2035)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:60:9+44
    assume {:print "$at(29,2531,2575)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+1
    assume {:print "$at(29,1433,1434)"} true;
    assume {:print "$track_local(34,2,0):", $t0} $t0 == $t0;

    // trace_local[key]($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+1
    assume {:print "$track_local(34,2,1):", $t1} $t1 == $t1;

    // $t8 := [] at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:32:18+3
    assume {:print "$at(29,1547,1550)"} true;
    $t8 := $EmptyVec'u8'();
    assume $IsValid'vec'u8''($t8);

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // $t10 := DiemAccount::extract_key_rotation_capability($t0) on_abort goto L3 with $t11 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:33:27+53
    assume {:print "$at(29,1578,1631)"} true;
    call $t10 := $1_DiemAccount_extract_key_rotation_capability($t0);
    if ($abort_flag) {
        assume {:print "$at(29,1578,1631)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(34,2):", $t11} $t11 == $t11;
        goto L3;
    }

    // $t4 := pack SharedEd25519PublicKey::SharedEd25519PublicKey($t8, $t10) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:31:17+136
    assume {:print "$at(29,1505,1641)"} true;
    $t4 := $1_SharedEd25519PublicKey_SharedEd25519PublicKey($t8, $t10);

    // trace_local[t]($t4) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:31:13+1
    assume {:print "$track_local(34,2,4):", $t4} $t4 == $t4;

    // $t12 := borrow_local($t4) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:35:21+6
    assume {:print "$at(29,1663,1669)"} true;
    $t12 := $Mutation($Local(4), EmptyVec(), $t4);

    // SharedEd25519PublicKey::rotate_key_($t12, $t1) on_abort goto L3 with $t11 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:35:9+24
    call $t12 := $1_SharedEd25519PublicKey_rotate_key_($t12, $t1);
    if ($abort_flag) {
        assume {:print "$at(29,1651,1675)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(34,2):", $t11} $t11 == $t11;
        goto L3;
    }

    // write_back[LocalRoot($t4)@]($t12) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:35:9+24
    $t4 := $Dereference($t12);

    // $t13 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:27+27
    assume {:print "$at(29,1703,1730)"} true;

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:27+27
    assume $IsValid'address'($t13);

    // assume Eq<address>($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:27+27
    assume $IsEqual'address'($t13, $1_Signer_spec_address_of($t0));

    // $t13 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:27+27

    // $t14 := SharedEd25519PublicKey::exists_at($t13) on_abort goto L3 with $t11 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:17+38
    call $t14 := $1_SharedEd25519PublicKey_exists_at($t13);
    if ($abort_flag) {
        assume {:print "$at(29,1693,1731)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(34,2):", $t11} $t11 == $t11;
        goto L3;
    }

    // $t15 := !($t14) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:16+1
    call $t15 := $Not($t14);

    // $t16 := 1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:83+11
    $t16 := 1;
    assume $IsValid'u64'($t16);

    // $t17 := opaque begin: Errors::already_published($t16) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:57+38

    // assume WellFormed($t17) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:57+38
    assume $IsValid'u64'($t17);

    // assume Eq<u64>($t17, 6) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:57+38
    assume $IsEqual'u64'($t17, 6);

    // $t17 := opaque end: Errors::already_published($t16) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:57+38

    // trace_local[tmp#$3]($t17) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:9+87
    assume {:print "$track_local(34,2,3):", $t17} $t17 == $t17;

    // trace_local[tmp#$2]($t15) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:9+87
    assume {:print "$track_local(34,2,2):", $t15} $t15 == $t15;

    // if ($t15) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:9+87
    if ($t15) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:9+87
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:9+87

    // trace_abort($t17) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:9+87
    assume {:print "$at(29,1685,1772)"} true;
    assume {:print "$track_abort(34,2):", $t17} $t17 == $t17;

    // $t11 := move($t17) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:9+87
    $t11 := $t17;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:36:9+87
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:37:17+7
    assume {:print "$at(29,1790,1797)"} true;
L0:

    // $t18 := move($t4) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:37:26+1
    $t18 := $t4;

    // move_to<SharedEd25519PublicKey::SharedEd25519PublicKey>($t18, $t0) on_abort goto L3 with $t11 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:37:9+7
    if ($ResourceExists($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory := $ResourceUpdate($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $1_Signer_spec_address_of($t0), $t18);
    }
    if ($abort_flag) {
        assume {:print "$at(29,1782,1789)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(34,2):", $t11} $t11 == $t11;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:38:5+1
    assume {:print "$at(29,1807,1808)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:38:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:38:5+1
L3:

    // abort($t11) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:38:5+1
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

// fun SharedEd25519PublicKey::exists_at [baseline] at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:134:5+94
procedure {:inline 1} $1_SharedEd25519PublicKey_exists_at(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:134:5+1
    assume {:print "$at(29,5758,5759)"} true;
    assume {:print "$track_local(34,0,0):", $t0} $t0 == $t0;

    // $t1 := exists<SharedEd25519PublicKey::SharedEd25519PublicKey>($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:135:9+6
    assume {:print "$at(29,5810,5816)"} true;
    $t1 := $ResourceExists($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:135:9+36
    assume {:print "$track_return(34,0,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:136:5+1
    assume {:print "$at(29,5851,5852)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:136:5+1
    $ret0 := $t1;
    return;

}

// fun SharedEd25519PublicKey::rotate_key [baseline] at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
procedure {:inline 1} $1_SharedEd25519PublicKey_rotate_key(_$t0: $signer, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: $Mutation ($1_SharedEd25519PublicKey_SharedEd25519PublicKey);
    var $t0: $signer;
    var $t1: Vec (int);
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t12));

    // bytecode translation starts here
    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:115:9+44
    assume {:print "$at(29,4896,4940)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:122:9+44
    assume {:print "$at(29,5201,5245)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+1
    assume {:print "$at(29,4383,4384)"} true;
    assume {:print "$track_local(34,3,0):", $t0} $t0 == $t0;

    // trace_local[new_public_key]($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+1
    assume {:print "$track_local(34,3,1):", $t1} $t1 == $t1;

    // $t7 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:104:20+27
    assume {:print "$at(29,4504,4531)"} true;

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:104:20+27
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:104:20+27
    assume $IsEqual'address'($t7, $1_Signer_spec_address_of($t0));

    // $t7 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:104:20+27

    // trace_local[addr]($t7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:104:13+4
    assume {:print "$track_local(34,3,4):", $t7} $t7 == $t7;

    // $t8 := SharedEd25519PublicKey::exists_at($t7) on_abort goto L3 with $t9 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:16+15
    assume {:print "$at(29,4548,4563)"} true;
    call $t8 := $1_SharedEd25519PublicKey_exists_at($t7);
    if ($abort_flag) {
        assume {:print "$at(29,4548,4563)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(34,3):", $t9} $t9 == $t9;
        goto L3;
    }

    // $t10 := 1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:55+11
    $t10 := 1;
    assume $IsValid'u64'($t10);

    // $t11 := opaque begin: Errors::not_published($t10) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:33+34

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:33+34
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 5) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:33+34
    assume $IsEqual'u64'($t11, 5);

    // $t11 := opaque end: Errors::not_published($t10) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:33+34

    // trace_local[tmp#$3]($t11) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:9+59
    assume {:print "$track_local(34,3,3):", $t11} $t11 == $t11;

    // trace_local[tmp#$2]($t8) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:9+59
    assume {:print "$track_local(34,3,2):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:9+59
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:9+59
L1:

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:9+59
    assume {:print "$at(29,4541,4600)"} true;
    assume {:print "$track_abort(34,3):", $t11} $t11 == $t11;

    // $t9 := move($t11) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:9+59
    $t9 := $t11;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:105:9+59
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:106:63+4
    assume {:print "$at(29,4664,4668)"} true;
L0:

    // $t12 := borrow_global<SharedEd25519PublicKey::SharedEd25519PublicKey>($t7) on_abort goto L3 with $t9 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:106:21+17
    if (!$ResourceExists($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t7)) {
        call $ExecFailureAbort();
    } else {
        $t12 := $Mutation($Global($t7), EmptyVec(), $ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t7));
    }
    if ($abort_flag) {
        assume {:print "$at(29,4622,4639)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(34,3):", $t9} $t9 == $t9;
        goto L3;
    }

    // SharedEd25519PublicKey::rotate_key_($t12, $t1) on_abort goto L3 with $t9 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:106:9+76
    call $t12 := $1_SharedEd25519PublicKey_rotate_key_($t12, $t1);
    if ($abort_flag) {
        assume {:print "$at(29,4610,4686)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(34,3):", $t9} $t9 == $t9;
        goto L3;
    }

    // write_back[SharedEd25519PublicKey::SharedEd25519PublicKey@]($t12) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:106:9+76
    $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory := $ResourceUpdate($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $GlobalLocationAddress($t12),
        $Dereference($t12));

    // label L2 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:107:5+1
    assume {:print "$at(29,4692,4693)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:107:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:107:5+1
L3:

    // abort($t9) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:107:5+1
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// fun SharedEd25519PublicKey::rotate_key_ [baseline] at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
procedure {:inline 1} $1_SharedEd25519PublicKey_rotate_key_(_$t0: $Mutation ($1_SharedEd25519PublicKey_SharedEd25519PublicKey), _$t1: Vec (int)) returns ($ret0: $Mutation ($1_SharedEd25519PublicKey_SharedEd25519PublicKey))
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: $1_DiemAccount_KeyRotationCapability;
    var $t9: Vec (int);
    var $t10: $Mutation (Vec (int));
    var $t0: $Mutation ($1_SharedEd25519PublicKey_SharedEd25519PublicKey);
    var $t1: Vec (int);
    var $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey': $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t10));

    // bytecode translation starts here
    // trace_local[shared_key]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+1
    assume {:print "$at(29,2729,2730)"} true;
    $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey' := $Dereference($t0);
    assume {:print "$track_local(34,4,0):", $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'} $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey' == $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey';

    // trace_local[new_public_key]($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+1
    assume {:print "$track_local(34,4,1):", $t1} $t1 == $t1;

    // $t4 := Signature::ed25519_validate_pubkey($t1) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:69:13+55
    assume {:print "$at(29,2898,2953)"} true;
    call $t4 := $1_Signature_ed25519_validate_pubkey($t1);
    if ($abort_flag) {
        assume {:print "$at(29,2898,2953)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(34,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t6 := 0 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:70:38+21
    assume {:print "$at(29,2992,3013)"} true;
    $t6 := 0;
    assume $IsValid'u64'($t6);

    // $t7 := opaque begin: Errors::invalid_argument($t6) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:70:13+47

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:70:13+47
    assume $IsValid'u64'($t7);

    // assume Eq<u64>($t7, 7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:70:13+47
    assume $IsEqual'u64'($t7, 7);

    // $t7 := opaque end: Errors::invalid_argument($t6) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:70:13+47

    // trace_local[tmp#$3]($t7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    assume {:print "$at(29,2878,3024)"} true;
    assume {:print "$track_local(34,4,3):", $t7} $t7 == $t7;

    // trace_local[tmp#$2]($t4) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    assume {:print "$track_local(34,4,2):", $t4} $t4 == $t4;

    // if ($t4) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    if ($t4) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    assume {:print "$at(29,2878,3024)"} true;
    assume {:print "$track_abort(34,4):", $t7} $t7 == $t7;

    // $t5 := move($t7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    $t5 := $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:73:14+10
    assume {:print "$at(29,3087,3097)"} true;
L0:

    // $t8 := get_field<SharedEd25519PublicKey::SharedEd25519PublicKey>.rotation_cap($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:73:13+24
    $t8 := $rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($Dereference($t0));

    // $t9 := opaque begin: Authenticator::ed25519_authentication_key($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:74:13+62
    assume {:print "$at(29,3124,3186)"} true;

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:74:13+62
    assume $IsValid'vec'u8''($t9);

    // assume Eq<vector<u8>>($t9, Authenticator::spec_ed25519_authentication_key($t1)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:74:13+62
    assume $IsEqual'vec'u8''($t9, $1_Authenticator_spec_ed25519_authentication_key($t1));

    // $t9 := opaque end: Authenticator::ed25519_authentication_key($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:74:13+62

    // DiemAccount::rotate_authentication_key($t8, $t9) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:72:9+162
    assume {:print "$at(29,3034,3196)"} true;
    call $1_DiemAccount_rotate_authentication_key($t8, $t9);
    if ($abort_flag) {
        assume {:print "$at(29,3034,3196)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(34,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t10 := borrow_field<SharedEd25519PublicKey::SharedEd25519PublicKey>.key($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:76:9+14
    assume {:print "$at(29,3206,3220)"} true;
    $t10 := $ChildMutation($t0, 0, $key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($Dereference($t0)));

    // write_ref($t10, $t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:76:9+31
    $t10 := $UpdateMutation($t10, $t1);

    // write_back[Reference($t0).key]($t10) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:76:9+31
    $t0 := $UpdateMutation($t0, $Update'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'_key($Dereference($t0), $Dereference($t10)));

    // trace_local[shared_key]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:76:40+1
    $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey' := $Dereference($t0);
    assume {:print "$track_local(34,4,0):", $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'} $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey' == $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey';

    // label L2 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:77:5+1
    assume {:print "$at(29,3243,3244)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:77:5+1
    $ret0 := $t0;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:77:5+1
L3:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:77:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:244:9+111
function {:inline} $1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory: $Memory $1_RecoveryAddress_RecoveryAddress, addr: int): bool {
    $ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:250:9+197
function {:inline} $1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory: $Memory $1_RecoveryAddress_RecoveryAddress, recovery_address: int): Vec ($1_DiemAccount_KeyRotationCapability) {
    $rotation_caps#$1_RecoveryAddress_RecoveryAddress($ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, recovery_address))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:258:9+325
function {:inline} $1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory: $Memory $1_RecoveryAddress_RecoveryAddress, recovery_address: int, addr: int): bool {
    (exists i: int :: $IsValid'u64'(i) && (((0 <= i) && (i < LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, recovery_address)))))  && ($IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, recovery_address), i)), addr)))
}

// struct RecoveryAddress::RecoveryAddress at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:17:5+91
type {:datatype} $1_RecoveryAddress_RecoveryAddress;
function {:constructor} $1_RecoveryAddress_RecoveryAddress($rotation_caps: Vec ($1_DiemAccount_KeyRotationCapability)): $1_RecoveryAddress_RecoveryAddress;
function {:inline} $Update'$1_RecoveryAddress_RecoveryAddress'_rotation_caps(s: $1_RecoveryAddress_RecoveryAddress, x: Vec ($1_DiemAccount_KeyRotationCapability)): $1_RecoveryAddress_RecoveryAddress {
    $1_RecoveryAddress_RecoveryAddress(x)
}
function $IsValid'$1_RecoveryAddress_RecoveryAddress'(s: $1_RecoveryAddress_RecoveryAddress): bool {
    $IsValid'vec'$1_DiemAccount_KeyRotationCapability''($rotation_caps#$1_RecoveryAddress_RecoveryAddress(s))
}
function {:inline} $IsEqual'$1_RecoveryAddress_RecoveryAddress'(s1: $1_RecoveryAddress_RecoveryAddress, s2: $1_RecoveryAddress_RecoveryAddress): bool {
    s1 == s2
}
var $1_RecoveryAddress_RecoveryAddress_$memory: $Memory $1_RecoveryAddress_RecoveryAddress;

// fun RecoveryAddress::publish [baseline] at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
procedure {:inline 1} $1_RecoveryAddress_publish(_$t0: $signer, _$t1: $1_DiemAccount_KeyRotationCapability) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: bool;
    var $t18: int;
    var $t19: int;
    var $t20: bool;
    var $t21: bool;
    var $t22: int;
    var $t23: int;
    var $t24: Vec ($1_DiemAccount_KeyRotationCapability);
    var $t25: $1_RecoveryAddress_RecoveryAddress;
    var $t0: $signer;
    var $t1: $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:69:9+53
    assume {:print "$at(26,3500,3553)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:78:9+53
    assume {:print "$at(26,3959,4012)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // trace_local[recovery_account]($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1
    assume {:print "$at(26,2276,2277)"} true;
    assume {:print "$track_local(35,1,0):", $t0} $t0 == $t0;

    // trace_local[rotation_cap]($t1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1
    assume {:print "$track_local(35,1,1):", $t1} $t1 == $t1;

    // $t11 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:44:20+36
    assume {:print "$at(26,2380,2416)"} true;

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:44:20+36
    assume $IsValid'address'($t11);

    // assume Eq<address>($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:44:20+36
    assume $IsEqual'address'($t11, $1_Signer_spec_address_of($t0));

    // $t11 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:44:20+36

    // trace_local[addr]($t11) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:44:13+4
    assume {:print "$track_local(35,1,8):", $t11} $t11 == $t11;

    // $t12 := opaque begin: VASP::is_vasp($t11) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:16+19
    assume {:print "$at(26,2485,2504)"} true;

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:16+19
    assume $IsValid'bool'($t12);

    // assume Eq<bool>($t12, VASP::$is_vasp($t11)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:16+19
    assume $IsEqual'bool'($t12, $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t11));

    // $t12 := opaque end: VASP::is_vasp($t11) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:16+19

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:62+11
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:37+37

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:37+37
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 7) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:37+37
    assume $IsEqual'u64'($t14, 7);

    // $t14 := opaque end: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:37+37

    // trace_local[tmp#$3]($t14) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:9+66
    assume {:print "$track_local(35,1,3):", $t14} $t14 == $t14;

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:9+66
    assume {:print "$track_local(35,1,2):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:9+66
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:9+66
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:9+66

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:9+66
    assume {:print "$at(26,2478,2544)"} true;
    assume {:print "$track_abort(35,1):", $t14} $t14 == $t14;

    // $t15 := move($t14) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:9+66
    $t15 := $t14;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:46:9+66
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:53:59+13
    assume {:print "$at(26,2948,2961)"} true;
L0:

    // $t16 := DiemAccount::key_rotation_capability_address($t1) on_abort goto L7 with $t15 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:53:14+59
    call $t16 := $1_DiemAccount_key_rotation_capability_address($t1);
    if ($abort_flag) {
        assume {:print "$at(26,2903,2962)"} true;
        $t15 := $abort_code;
        assume {:print "$track_abort(35,1):", $t15} $t15 == $t15;
        goto L7;
    }

    // $t17 := ==($t16, $t11) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:53:74+2
    $t17 := $IsEqual'address'($t16, $t11);

    // $t18 := 1 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:54:39+30
    assume {:print "$at(26,3010,3040)"} true;
    $t18 := 1;
    assume $IsValid'u64'($t18);

    // $t19 := opaque begin: Errors::invalid_argument($t18) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:54:14+56

    // assume WellFormed($t19) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:54:14+56
    assume $IsValid'u64'($t19);

    // assume Eq<u64>($t19, 7) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:54:14+56
    assume $IsEqual'u64'($t19, 7);

    // $t19 := opaque end: Errors::invalid_argument($t18) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:54:14+56

    // trace_local[tmp#$5]($t19) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:52:9+169
    assume {:print "$at(26,2882,3051)"} true;
    assume {:print "$track_local(35,1,5):", $t19} $t19 == $t19;

    // trace_local[tmp#$4]($t17) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:52:9+169
    assume {:print "$track_local(35,1,4):", $t17} $t17 == $t17;

    // if ($t17) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:52:9+169
    if ($t17) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:52:9+169
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:52:9+169

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:52:9+169
    assume {:print "$at(26,2882,3051)"} true;
    assume {:print "$track_abort(35,1):", $t19} $t19 == $t19;

    // $t15 := move($t19) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:52:9+169
    $t15 := $t19;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:52:9+169
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:41+4
    assume {:print "$at(26,3093,3097)"} true;
L2:

    // $t20 := exists<RecoveryAddress::RecoveryAddress>($t11) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:17+6
    $t20 := $ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory, $t11);

    // $t21 := !($t20) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:16+1
    call $t21 := $Not($t20);

    // $t22 := 5 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:74+17
    $t22 := 5;
    assume $IsValid'u64'($t22);

    // $t23 := opaque begin: Errors::already_published($t22) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:48+44

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:48+44
    assume $IsValid'u64'($t23);

    // assume Eq<u64>($t23, 6) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:48+44
    assume $IsEqual'u64'($t23, 6);

    // $t23 := opaque end: Errors::already_published($t22) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:48+44

    // trace_local[tmp#$7]($t23) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:9+84
    assume {:print "$track_local(35,1,7):", $t23} $t23 == $t23;

    // trace_local[tmp#$6]($t21) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:9+84
    assume {:print "$track_local(35,1,6):", $t21} $t21 == $t21;

    // if ($t21) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:9+84
    if ($t21) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:9+84
L5:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:9+84

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:9+84
    assume {:print "$at(26,3061,3145)"} true;
    assume {:print "$track_abort(35,1):", $t23} $t23 == $t23;

    // $t15 := move($t23) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:9+84
    $t15 := $t23;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:56:9+84
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:58:13+16
    assume {:print "$at(26,3176,3192)"} true;
L4:

    // $t24 := Vector::singleton<DiemAccount::KeyRotationCapability>($t1) on_abort goto L7 with $t15 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:59:46+31
    assume {:print "$at(26,3239,3270)"} true;
    call $t24 := $1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'($t1);
    if ($abort_flag) {
        assume {:print "$at(26,3239,3270)"} true;
        $t15 := $abort_code;
        assume {:print "$track_abort(35,1):", $t15} $t15 == $t15;
        goto L7;
    }

    // $t25 := pack RecoveryAddress::RecoveryAddress($t24) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:59:13+66
    $t25 := $1_RecoveryAddress_RecoveryAddress($t24);

    // move_to<RecoveryAddress::RecoveryAddress>($t25, $t0) on_abort goto L7 with $t15 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:57:9+7
    assume {:print "$at(26,3155,3162)"} true;
    if ($ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_RecoveryAddress_RecoveryAddress_$memory := $ResourceUpdate($1_RecoveryAddress_RecoveryAddress_$memory, $1_Signer_spec_address_of($t0), $t25);
    }
    if ($abort_flag) {
        assume {:print "$at(26,3155,3162)"} true;
        $t15 := $abort_code;
        assume {:print "$track_abort(35,1):", $t15} $t15 == $t15;
        goto L7;
    }

    // label L6 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:61:5+1
    assume {:print "$at(26,3287,3288)"} true;
L6:

    // return () at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:61:5+1
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:61:5+1
L7:

    // abort($t15) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:61:5+1
    $abort_code := $t15;
    $abort_flag := true;
    return;

}

// fun RecoveryAddress::rotate_authentication_key [baseline] at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
procedure {:inline 1} $1_RecoveryAddress_rotate_authentication_key(_$t0: $signer, _$t1: int, _$t2: int, _$t3: Vec (int)) returns ()
{
    // declare local variables
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: $1_DiemAccount_KeyRotationCapability;
    var $t10: Vec ($1_DiemAccount_KeyRotationCapability);
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: bool;
    var $t20: bool;
    var $t21: bool;
    var $t22: int;
    var $t23: int;
    var $t24: $1_RecoveryAddress_RecoveryAddress;
    var $t25: Vec ($1_DiemAccount_KeyRotationCapability);
    var $t26: int;
    var $t27: int;
    var $t28: bool;
    var $t29: $1_DiemAccount_KeyRotationCapability;
    var $t30: int;
    var $t31: bool;
    var $t32: int;
    var $t33: int;
    var $t34: int;
    var $t35: int;
    var $t0: $signer;
    var $t1: int;
    var $t2: int;
    var $t3: Vec (int);
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'$1_DiemAccount_KeyRotationCapability'': Vec ($1_DiemAccount_KeyRotationCapability);
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1
    assume {:print "$at(26,4427,4428)"} true;
    assume {:print "$track_local(35,2,0):", $t0} $t0 == $t0;

    // trace_local[recovery_address]($t1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1
    assume {:print "$track_local(35,2,1):", $t1} $t1 == $t1;

    // trace_local[to_recover]($t2) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1
    assume {:print "$track_local(35,2,2):", $t2} $t2 == $t2;

    // trace_local[new_key]($t3) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1
    assume {:print "$track_local(35,2,3):", $t3} $t3 == $t3;

    // $t14 := exists<RecoveryAddress::RecoveryAddress>($t1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:16+6
    assume {:print "$at(26,4705,4711)"} true;
    $t14 := $ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory, $t1);

    // $t15 := 5 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:81+17
    $t15 := 5;
    assume $IsValid'u64'($t15);

    // $t16 := opaque begin: Errors::not_published($t15) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:59+40

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:59+40
    assume $IsValid'u64'($t16);

    // assume Eq<u64>($t16, 5) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:59+40
    assume $IsEqual'u64'($t16, 5);

    // $t16 := opaque end: Errors::not_published($t15) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:59+40

    // trace_local[tmp#$5]($t16) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:9+91
    assume {:print "$track_local(35,2,5):", $t16} $t16 == $t16;

    // trace_local[tmp#$4]($t14) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:9+91
    assume {:print "$track_local(35,2,4):", $t14} $t14 == $t14;

    // if ($t14) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:9+91
    if ($t14) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:9+91
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:9+91

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:9+91
    assume {:print "$at(26,4698,4789)"} true;
    assume {:print "$track_abort(35,2):", $t16} $t16 == $t16;

    // $t17 := move($t16) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:9+91
    $t17 := $t16;

    // goto L17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:94:9+91
    goto L17;

    // label L0 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:95:41+7
    assume {:print "$at(26,4831,4838)"} true;
L0:

    // $t18 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:95:22+27

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:95:22+27
    assume $IsValid'address'($t18);

    // assume Eq<address>($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:95:22+27
    assume $IsEqual'address'($t18, $1_Signer_spec_address_of($t0));

    // $t18 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:95:22+27

    // trace_local[sender]($t18) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:95:13+6
    assume {:print "$track_local(35,2,13):", $t18} $t18 == $t18;

    // $t19 := ==($t18, $t2) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:20+2
    assume {:print "$at(26,4962,4964)"} true;
    $t19 := $IsEqual'address'($t18, $t2);

    // if ($t19) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
    if ($t19) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
L3:

    // goto L4 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
L2:

    // $t20 := true at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
    $t20 := true;
    assume $IsValid'bool'($t20);

    // $t8 := $t20 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
    $t8 := $t20;

    // trace_local[tmp#$8]($t20) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
    assume {:print "$track_local(35,2,8):", $t20} $t20 == $t20;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:100:13+6
    assume {:print "$at(26,5069,5075)"} true;
L4:

    // $t21 := ==($t18, $t1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:100:20+2
    $t21 := $IsEqual'address'($t18, $t1);

    // $t8 := $t21 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
    assume {:print "$at(26,4955,5095)"} true;
    $t8 := $t21;

    // trace_local[tmp#$8]($t21) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
    assume {:print "$track_local(35,2,8):", $t21} $t21 == $t21;

    // label L5 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:98:13+140
L5:

    // $t22 := 2 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:101:38+18
    assume {:print "$at(26,5134,5152)"} true;
    $t22 := 2;
    assume $IsValid'u64'($t22);

    // $t23 := opaque begin: Errors::invalid_argument($t22) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:101:13+44

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:101:13+44
    assume $IsValid'u64'($t23);

    // assume Eq<u64>($t23, 7) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:101:13+44
    assume $IsEqual'u64'($t23, 7);

    // $t23 := opaque end: Errors::invalid_argument($t22) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:101:13+44

    // trace_local[tmp#$7]($t23) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:96:9+314
    assume {:print "$at(26,4849,5163)"} true;
    assume {:print "$track_local(35,2,7):", $t23} $t23 == $t23;

    // trace_local[tmp#$6]($t8) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:96:9+314
    assume {:print "$track_local(35,2,6):", $t8} $t8 == $t8;

    // if ($t8) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:96:9+314
    if ($t8) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:96:9+314
L7:

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:96:9+314
    assume {:print "$at(26,4849,5163)"} true;
    assume {:print "$track_abort(35,2):", $t23} $t23 == $t23;

    // $t17 := move($t23) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:96:9+314
    $t17 := $t23;

    // goto L17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:96:9+314
    goto L17;

    // label L6 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:104:52+16
    assume {:print "$at(26,5217,5233)"} true;
L6:

    // $t24 := get_global<RecoveryAddress::RecoveryAddress>($t1) on_abort goto L17 with $t17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:104:21+13
    if (!$ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory, $t1)) {
        call $ExecFailureAbort();
    } else {
        $t24 := $ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $t1);
    }
    if ($abort_flag) {
        assume {:print "$at(26,5186,5199)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(35,2):", $t17} $t17 == $t17;
        goto L17;
    }

    // $t25 := get_field<RecoveryAddress::RecoveryAddress>.rotation_caps($t24) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:104:20+63
    $t25 := $rotation_caps#$1_RecoveryAddress_RecoveryAddress($t24);

    // trace_local[caps]($t25) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:104:13+4
    assume {:print "$track_local(35,2,10):", $t25} $t25 == $t25;

    // $t26 := 0 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:105:17+1
    assume {:print "$at(26,5266,5267)"} true;
    $t26 := 0;
    assume $IsValid'u64'($t26);

    // trace_local[i]($t26) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:105:13+1
    assume {:print "$track_local(35,2,11):", $t26} $t26 == $t26;

    // $t27 := Vector::length<DiemAccount::KeyRotationCapability>($t25) on_abort goto L17 with $t17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:106:19+20
    assume {:print "$at(26,5287,5307)"} true;
    call $t27 := $1_Vector_length'$1_DiemAccount_KeyRotationCapability'($t25);
    if ($abort_flag) {
        assume {:print "$at(26,5287,5307)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(35,2):", $t17} $t17 == $t17;
        goto L17;
    }

    // trace_local[len]($t27) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:106:13+3
    assume {:print "$track_local(35,2,12):", $t27} $t27 == $t27;

    // label L14 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:108:13+139
    assume {:print "$at(26,5338,5477)"} true;
L14:

    // assert Le($t26, $t27) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:109:17+19
    assume {:print "$at(26,5361,5380)"} true;
    assert {:msg "assert_failed(26,5361,5380): base case of the loop invariant does not hold"}
      ($t26 <= $t27);

    // assert forall j: Range(0, $t26): Neq<address>(select DiemAccount::KeyRotationCapability.account_address(Index($t25, j)), $t2) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    assume {:print "$at(26,5397,5463)"} true;
    assert {:msg "assert_failed(26,5397,5463): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t26); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    (!$IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($t25, j)), $t2)))));

    // havoc[val]($t26) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    havoc $t26;
    assume $IsValid'u64'($t26);

    // havoc[val]($t28) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    havoc $t28;
    assume $IsValid'bool'($t28);

    // havoc[val]($t29) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    havoc $t29;
    assume $IsValid'$1_DiemAccount_KeyRotationCapability'($t29);

    // havoc[val]($t30) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    havoc $t30;
    assume $IsValid'address'($t30);

    // havoc[val]($t31) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    havoc $t31;
    assume $IsValid'bool'($t31);

    // havoc[val]($t32) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    havoc $t32;
    assume $IsValid'u64'($t32);

    // havoc[val]($t33) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    havoc $t33;
    assume $IsValid'u64'($t33);

    // assume Not(AbortFlag()) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    assume !$abort_flag;

    // assume Le($t26, $t27) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:109:17+19
    assume {:print "$at(26,5361,5380)"} true;
    assume ($t26 <= $t27);

    // assume forall j: Range(0, $t26): Neq<address>(select DiemAccount::KeyRotationCapability.account_address(Index($t25, j)), $t2) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    assume {:print "$at(26,5397,5463)"} true;
    assume (var $range_0 := $Range(0, $t26); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    (!$IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($t25, j)), $t2)))));

    // $t28 := <($t26, $t27) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:112:16+1
    assume {:print "$at(26,5494,5495)"} true;
    call $t28 := $Lt($t26, $t27);

    // if ($t28) goto L8 else goto L9 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:107:9+475
    assume {:print "$at(26,5317,5792)"} true;
    if ($t28) { goto L8; } else { goto L9; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:107:9+475
L9:

    // goto L10 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:107:9+475
    goto L10;

    // label L8 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:115:38+4
    assume {:print "$at(26,5559,5563)"} true;
L8:

    // $t29 := Vector::borrow<DiemAccount::KeyRotationCapability>($t25, $t26) on_abort goto L17 with $t17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:115:23+23
    call $t29 := $1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'($t25, $t26);
    if ($abort_flag) {
        assume {:print "$at(26,5544,5567)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(35,2):", $t17} $t17 == $t17;
        goto L17;
    }

    // trace_local[cap]($t29) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:115:17+3
    assume {:print "$track_local(35,2,9):", $t29} $t29 == $t29;

    // $t30 := DiemAccount::key_rotation_capability_address($t29) on_abort goto L17 with $t17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:116:17+49
    assume {:print "$at(26,5585,5634)"} true;
    call $t30 := $1_DiemAccount_key_rotation_capability_address($t29);
    if ($abort_flag) {
        assume {:print "$at(26,5585,5634)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(35,2):", $t17} $t17 == $t17;
        goto L17;
    }

    // $t31 := ==($t30, $t2) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:116:67+2
    $t31 := $IsEqual'address'($t30, $t2);

    // if ($t31) goto L11 else goto L12 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:116:13+178
    if ($t31) { goto L11; } else { goto L12; }

    // label L12 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:116:13+178
L12:

    // goto L13 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:116:13+178
    goto L13;

    // label L11 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:117:17+52
    assume {:print "$at(26,5669,5721)"} true;
L11:

    // destroy($t25) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:117:17+52

    // DiemAccount::rotate_authentication_key($t29, $t3) on_abort goto L17 with $t17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:117:17+52
    call $1_DiemAccount_rotate_authentication_key($t29, $t3);
    if ($abort_flag) {
        assume {:print "$at(26,5669,5721)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(35,2):", $t17} $t17 == $t17;
        goto L17;
    }

    // goto L16 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:118:17+6
    assume {:print "$at(26,5739,5745)"} true;
    goto L16;

    // label L13 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:116:13+178
    assume {:print "$at(26,5581,5759)"} true;
L13:

    // destroy($t29) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:116:13+178

    // $t32 := 1 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:120:21+1
    assume {:print "$at(26,5781,5782)"} true;
    $t32 := 1;
    assume $IsValid'u64'($t32);

    // $t33 := +($t26, $t32) on_abort goto L17 with $t17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:120:19+1
    call $t33 := $AddU64($t26, $t32);
    if ($abort_flag) {
        assume {:print "$at(26,5779,5780)"} true;
        $t17 := $abort_code;
        assume {:print "$track_abort(35,2):", $t17} $t17 == $t17;
        goto L17;
    }

    // trace_local[i]($t33) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:120:13+1
    assume {:print "$track_local(35,2,11):", $t33} $t33 == $t33;

    // goto L15 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:120:13+9
    goto L15;

    // label L10 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:122:9+123
    assume {:print "$at(26,5802,5925)"} true;
L10:

    // assert Eq<u64>($t26, $t27) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:123:13+16
    assume {:print "$at(26,5821,5837)"} true;
    assert {:msg "assert_failed(26,5821,5837): unknown assertion failed"}
      $IsEqual'u64'($t26, $t27);

    // assert forall j: Range(0, $t27): Neq<address>(select DiemAccount::KeyRotationCapability.account_address(Index($t25, j)), $t2) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:124:13+65
    assume {:print "$at(26,5850,5915)"} true;
    assert {:msg "assert_failed(26,5850,5915): unknown assertion failed"}
      (var $range_0 := $Range(0, $t27); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    (!$IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($t25, j)), $t2)))));

    // $t34 := 4 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:127:40+24
    assume {:print "$at(26,6044,6068)"} true;
    $t34 := 4;
    assume $IsValid'u64'($t34);

    // $t35 := opaque begin: Errors::invalid_argument($t34) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:127:15+50

    // assume WellFormed($t35) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:127:15+50
    assume $IsValid'u64'($t35);

    // assume Eq<u64>($t35, 7) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:127:15+50
    assume $IsEqual'u64'($t35, 7);

    // $t35 := opaque end: Errors::invalid_argument($t34) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:127:15+50

    // trace_abort($t35) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:127:9+56
    assume {:print "$at(26,6013,6069)"} true;
    assume {:print "$track_abort(35,2):", $t35} $t35 == $t35;

    // $t17 := move($t35) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:127:9+56
    $t17 := $t35;

    // goto L17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:127:9+56
    goto L17;

    // label L15 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:122:9+123
    // Loop invariant checking block for the loop started with header: L14
    assume {:print "$at(26,5802,5925)"} true;
L15:

    // assert Le($t33, $t27) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:109:17+19
    assume {:print "$at(26,5361,5380)"} true;
    assert {:msg "assert_failed(26,5361,5380): induction case of the loop invariant does not hold"}
      ($t33 <= $t27);

    // assert forall j: Range(0, $t33): Neq<address>(select DiemAccount::KeyRotationCapability.account_address(Index($t25, j)), $t2) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    assume {:print "$at(26,5397,5463)"} true;
    assert {:msg "assert_failed(26,5397,5463): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t33); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    (!$IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($t25, j)), $t2)))));

    // stop() at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:110:17+66
    assume false;
    return;

    // label L16 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:128:5+1
    assume {:print "$at(26,6074,6075)"} true;
L16:

    // return () at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:128:5+1
    return;

    // label L17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:128:5+1
L17:

    // abort($t17) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:128:5+1
    $abort_code := $t17;
    $abort_flag := true;
    return;

}

// fun RecoveryAddress::add_rotation_capability [baseline] at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
procedure {:inline 1} $1_RecoveryAddress_add_rotation_capability(_$t0: $1_DiemAccount_KeyRotationCapability, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability));
    var $t9: int;
    var $t10: int;
    var $t11: bool;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: bool;
    var $t17: int;
    var $t18: int;
    var $t19: $Mutation ($1_RecoveryAddress_RecoveryAddress);
    var $t20: $Mutation (Vec ($1_DiemAccount_KeyRotationCapability));
    var $t21: Vec ($1_DiemAccount_KeyRotationCapability);
    var $t22: int;
    var $t23: int;
    var $t24: bool;
    var $t25: int;
    var $t26: int;
    var $t0: $1_DiemAccount_KeyRotationCapability;
    var $t1: int;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'$1_DiemAccount_KeyRotationCapability'': Vec ($1_DiemAccount_KeyRotationCapability);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t19));
    assume IsEmptyVec(p#$Mutation($t20));

    // bytecode translation starts here
    // assume Identical($t10, DiemAccount::$key_rotation_capability_address($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:182:9+82
    assume {:print "$at(26,8811,8893)"} true;
    assume ($t10 == $1_DiemAccount_$key_rotation_capability_address($t0));

    // trace_local[to_recover]($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+1
    assume {:print "$at(26,7358,7359)"} true;
    assume {:print "$track_local(35,0,0):", $t0} $t0 == $t0;

    // trace_local[recovery_address]($t1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+1
    assume {:print "$track_local(35,0,1):", $t1} $t1 == $t1;

    // $t11 := exists<RecoveryAddress::RecoveryAddress>($t1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:16+6
    assume {:print "$at(26,7575,7581)"} true;
    $t11 := $ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory, $t1);

    // $t12 := 5 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:81+17
    $t12 := 5;
    assume $IsValid'u64'($t12);

    // $t13 := opaque begin: Errors::not_published($t12) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:59+40

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:59+40
    assume $IsValid'u64'($t13);

    // assume Eq<u64>($t13, 5) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:59+40
    assume $IsEqual'u64'($t13, 5);

    // $t13 := opaque end: Errors::not_published($t12) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:59+40

    // trace_local[tmp#$3]($t13) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:9+91
    assume {:print "$track_local(35,0,3):", $t13} $t13 == $t13;

    // trace_local[tmp#$2]($t11) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:9+91
    assume {:print "$track_local(35,0,2):", $t11} $t11 == $t11;

    // if ($t11) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:9+91
    if ($t11) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:9+91
L1:

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:9+91
    assume {:print "$at(26,7568,7659)"} true;
    assume {:print "$track_abort(35,0):", $t13} $t13 == $t13;

    // $t14 := move($t13) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:9+91
    $t14 := $t13;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:157:9+91
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:159:80+11
    assume {:print "$at(26,7828,7839)"} true;
L0:

    // $t15 := DiemAccount::key_rotation_capability_address($t0) on_abort goto L7 with $t14 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:159:35+57
    call $t15 := $1_DiemAccount_key_rotation_capability_address($t0);
    if ($abort_flag) {
        assume {:print "$at(26,7783,7840)"} true;
        $t14 := $abort_code;
        assume {:print "$track_abort(35,0):", $t14} $t14 == $t14;
        goto L7;
    }

    // trace_local[to_recover_address]($t15) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:159:13+18
    assume {:print "$track_local(35,0,9):", $t15} $t15 == $t15;

    // $t16 := opaque begin: VASP::is_same_vasp($t1, $t15) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:161:13+56
    assume {:print "$at(26,7870,7926)"} true;

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:161:13+56
    assume $IsValid'bool'($t16);

    // assume Eq<bool>($t16, VASP::spec_is_same_vasp($t1, $t15)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:161:13+56
    assume $IsEqual'bool'($t16, $1_VASP_spec_is_same_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t1, $t15));

    // $t16 := opaque end: VASP::is_same_vasp($t1, $t15) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:161:13+56

    // $t17 := 3 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:162:38+32
    assume {:print "$at(26,7965,7997)"} true;
    $t17 := 3;
    assume $IsValid'u64'($t17);

    // $t18 := opaque begin: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:162:13+58

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:162:13+58
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 7) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:162:13+58
    assume $IsEqual'u64'($t18, 7);

    // $t18 := opaque end: Errors::invalid_argument($t17) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:162:13+58

    // trace_local[tmp#$5]($t18) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:160:9+158
    assume {:print "$at(26,7850,8008)"} true;
    assume {:print "$track_local(35,0,5):", $t18} $t18 == $t18;

    // trace_local[tmp#$4]($t16) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:160:9+158
    assume {:print "$track_local(35,0,4):", $t16} $t16 == $t16;

    // if ($t16) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:160:9+158
    if ($t16) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:160:9+158
L3:

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:160:9+158
    assume {:print "$at(26,7850,8008)"} true;
    assume {:print "$track_abort(35,0):", $t18} $t18 == $t18;

    // $t14 := move($t18) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:160:9+158
    $t14 := $t18;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:160:9+158
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:165:69+16
    assume {:print "$at(26,8079,8095)"} true;
L2:

    // $t19 := borrow_global<RecoveryAddress::RecoveryAddress>($t1) on_abort goto L7 with $t14 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:165:34+17
    if (!$ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory, $t1)) {
        call $ExecFailureAbort();
    } else {
        $t19 := $Mutation($Global($t1), EmptyVec(), $ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $t1));
    }
    if ($abort_flag) {
        assume {:print "$at(26,8044,8061)"} true;
        $t14 := $abort_code;
        assume {:print "$track_abort(35,0):", $t14} $t14 == $t14;
        goto L7;
    }

    // $t20 := borrow_field<RecoveryAddress::RecoveryAddress>.rotation_caps($t19) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:165:29+71
    $t20 := $ChildMutation($t19, 0, $rotation_caps#$1_RecoveryAddress_RecoveryAddress($Dereference($t19)));

    // trace_local[recovery_caps]($t20) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:165:13+13
    $temp_0'vec'$1_DiemAccount_KeyRotationCapability'' := $Dereference($t20);
    assume {:print "$track_local(35,0,8):", $temp_0'vec'$1_DiemAccount_KeyRotationCapability''} $temp_0'vec'$1_DiemAccount_KeyRotationCapability'' == $temp_0'vec'$1_DiemAccount_KeyRotationCapability'';

    // $t21 := read_ref($t20) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:167:28+13
    assume {:print "$at(26,8155,8168)"} true;
    $t21 := $Dereference($t20);

    // $t22 := Vector::length<DiemAccount::KeyRotationCapability>($t21) on_abort goto L7 with $t14 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:167:13+29
    call $t22 := $1_Vector_length'$1_DiemAccount_KeyRotationCapability'($t21);
    if ($abort_flag) {
        assume {:print "$at(26,8140,8169)"} true;
        $t14 := $abort_code;
        assume {:print "$track_abort(35,0):", $t14} $t14 == $t14;
        goto L7;
    }

    // $t23 := 256 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:167:45+19
    $t23 := 256;
    assume $IsValid'u64'($t23);

    // $t24 := <($t22, $t23) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:167:43+1
    call $t24 := $Lt($t22, $t23);

    // $t25 := 6 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:168:36+20
    assume {:print "$at(26,8228,8248)"} true;
    $t25 := 6;
    assume $IsValid'u64'($t25);

    // $t26 := opaque begin: Errors::limit_exceeded($t25) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:168:13+44

    // assume WellFormed($t26) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:168:13+44
    assume $IsValid'u64'($t26);

    // assume Eq<u64>($t26, 8) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:168:13+44
    assume $IsEqual'u64'($t26, 8);

    // $t26 := opaque end: Errors::limit_exceeded($t25) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:168:13+44

    // trace_local[tmp#$7]($t26) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:166:9+139
    assume {:print "$at(26,8120,8259)"} true;
    assume {:print "$track_local(35,0,7):", $t26} $t26 == $t26;

    // trace_local[tmp#$6]($t24) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:166:9+139
    assume {:print "$track_local(35,0,6):", $t24} $t24 == $t24;

    // if ($t24) goto L4 else goto L8 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:166:9+139
    if ($t24) { goto L4; } else { goto L8; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:166:9+139
L5:

    // destroy($t20) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:166:9+139

    // trace_abort($t26) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:166:9+139
    assume {:print "$at(26,8120,8259)"} true;
    assume {:print "$track_abort(35,0):", $t26} $t26 == $t26;

    // $t14 := move($t26) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:166:9+139
    $t14 := $t26;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:166:9+139
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:171:27+13
    assume {:print "$at(26,8288,8301)"} true;
L4:

    // Vector::push_back<DiemAccount::KeyRotationCapability>($t20, $t0) on_abort goto L7 with $t14 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:171:9+44
    call $t20 := $1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'($t20, $t0);
    if ($abort_flag) {
        assume {:print "$at(26,8270,8314)"} true;
        $t14 := $abort_code;
        assume {:print "$track_abort(35,0):", $t14} $t14 == $t14;
        goto L7;
    }

    // write_back[Reference($t19).rotation_caps]($t20) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:171:9+44
    $t19 := $UpdateMutation($t19, $Update'$1_RecoveryAddress_RecoveryAddress'_rotation_caps($Dereference($t19), $Dereference($t20)));

    // write_back[RecoveryAddress::RecoveryAddress@]($t19) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:171:9+44
    $1_RecoveryAddress_RecoveryAddress_$memory := $ResourceUpdate($1_RecoveryAddress_RecoveryAddress_$memory, $GlobalLocationAddress($t19),
        $Dereference($t19));

    // label L6 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:172:5+1
    assume {:print "$at(26,8320,8321)"} true;
L6:

    // return () at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:172:5+1
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:172:5+1
L7:

    // abort($t14) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:172:5+1
    $abort_code := $t14;
    $abort_flag := true;
    return;

    // label L8 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L8:

    // destroy($t19) at <internal>:1:1+10

    // goto L5 at <internal>:1:1+10
    goto L5;

}

// fun AccountAdministrationScripts::force_expire [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:687:5+126
procedure {:timeLimit 40} $1_AccountAdministrationScripts_force_expire$verify(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:687:5+126
    assume {:print "$at(2,47162,47288)"} true;
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:687:5+126
    assume $IsValid'u64'($t1);

    // assume forall $rsc: ResourceDomain<CRSN::CRSN>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:687:5+126
    assume (forall $a_0: int :: {$ResourceValue($1_CRSN_CRSN_$memory, $a_0)}(var $rsc := $ResourceValue($1_CRSN_CRSN_$memory, $a_0);
    ($IsValid'$1_CRSN_CRSN'($rsc))));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:687:5+1
    assume {:print "$track_local(36,4,0):", $t0} $t0 == $t0;

    // trace_local[shift_amount]($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:687:5+1
    assume {:print "$track_local(36,4,1):", $t1} $t1 == $t1;

    // CRSN::force_expire($t0, $t1) on_abort goto L2 with $t2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:688:9+42
    assume {:print "$at(2,47240,47282)"} true;
    call $1_CRSN_force_expire($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,47240,47282)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(36,4):", $t2} $t2 == $t2;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:689:5+1
    assume {:print "$at(2,47287,47288)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:689:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:689:5+1
L2:

    // abort($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:689:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::rotate_authentication_key [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
procedure {:timeLimit 40} $1_AccountAdministrationScripts_rotate_authentication_key$verify(_$t0: $signer, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: $1_DiemAccount_KeyRotationCapability;
    var $t3: int;
    var $t4: $1_DiemAccount_KeyRotationCapability;
    var $t5: int;
    var $t6: int;
    var $t7: $1_DiemAccount_KeyRotationCapability;
    var $t8: int;
    var $t0: $signer;
    var $t1: Vec (int);
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'signer': $signer;
    var $temp_0'vec'u8'': Vec (int);
    var $1_DiemAccount_DiemAccount_$memory#170: $Memory $1_DiemAccount_DiemAccount;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume {:print "$at(2,14183,14529)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
    assume $IsValid'vec'u8''($t1);

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+346
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:216:9+52
    assume {:print "$at(2,14730,14782)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, DiemAccount::spec_get_key_rotation_cap($t3)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:218:9+83
    assume {:print "$at(2,14858,14941)"} true;
    assume ($t4 == $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t3));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @170 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemAccount_DiemAccount_$memory#170 := $1_DiemAccount_DiemAccount_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+1
    assume {:print "$at(2,14183,14184)"} true;
    assume {:print "$track_local(36,7,0):", $t0} $t0 == $t0;

    // trace_local[new_key]($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:206:5+1
    assume {:print "$track_local(36,7,1):", $t1} $t1 == $t1;

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // $t7 := DiemAccount::extract_key_rotation_capability($t0) on_abort goto L2 with $t8 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:207:39+54
    assume {:print "$at(2,14306,14360)"} true;
    call $t7 := $1_DiemAccount_extract_key_rotation_capability($t0);
    if ($abort_flag) {
        assume {:print "$at(2,14306,14360)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(36,7):", $t8} $t8 == $t8;
        goto L2;
    }

    // trace_local[key_rotation_capability]($t7) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:207:13+23
    assume {:print "$track_local(36,7,2):", $t7} $t7 == $t7;

    // DiemAccount::rotate_authentication_key($t7, $t1) on_abort goto L2 with $t8 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:208:9+73
    assume {:print "$at(2,14370,14443)"} true;
    call $1_DiemAccount_rotate_authentication_key($t7, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,14370,14443)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(36,7):", $t8} $t8 == $t8;
        goto L2;
    }

    // DiemAccount::restore_key_rotation_capability($t7) on_abort goto L2 with $t8 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:209:9+69
    assume {:print "$at(2,14453,14522)"} true;
    call $1_DiemAccount_restore_key_rotation_capability($t7);
    if ($abort_flag) {
        assume {:print "$at(2,14453,14522)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(36,7):", $t8} $t8 == $t8;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:210:5+1
    assume {:print "$at(2,14528,14529)"} true;
L1:

    // assert Not(Not(DiemAccount::$exists_at[@170]($t5))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:973:9+62
    assume {:print "$at(12,43339,43401)"} true;
    assert {:msg "assert_failed(12,43339,43401): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#170, $t5);

    // assert Not(DiemAccount::$delegated_key_rotation_capability[@170](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:9+105
    assume {:print "$at(12,43554,43659)"} true;
    assert {:msg "assert_failed(12,43554,43659): function does not abort under this condition"}
      !$1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#170, $1_Signer_spec_address_of($t0));

    // assert Not(Not(DiemAccount::$exists_at[@170](select DiemAccount::KeyRotationCapability.account_address($t4)))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:936:9+69
    assume {:print "$at(12,41499,41568)"} true;
    assert {:msg "assert_failed(12,41499,41568): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#170, $account_address#$1_DiemAccount_KeyRotationCapability($t4));

    // assert Not(Neq<num>(Len<u8>($t1), 32)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:937:9+74
    assume {:print "$at(12,41577,41651)"} true;
    assert {:msg "assert_failed(12,41577,41651): function does not abort under this condition"}
      !!$IsEqual'num'(LenVec($t1), 32);

    // assert Not(DiemAccount::$delegated_key_rotation_capability[@170](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:9+105
    assume {:print "$at(12,43554,43659)"} true;
    assert {:msg "assert_failed(12,43554,43659): function does not abort under this condition"}
      !$1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#170, $1_Signer_spec_address_of($t0));

    // assert Eq<vector<u8>>(select DiemAccount::DiemAccount.authentication_key(global<DiemAccount::DiemAccount>($t3)), $t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:942:9+79
    assume {:print "$at(12,41782,41861)"} true;
    assert {:msg "assert_failed(12,41782,41861): post-condition does not hold"}
      $IsEqual'vec'u8''($authentication_key#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, $t3)), $t1);

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:942:9+79
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:210:5+1
    assume {:print "$at(2,14528,14529)"} true;
L2:

    // assert Or(Or(Or(Or(Not(DiemAccount::$exists_at[@170]($t5)), DiemAccount::$delegated_key_rotation_capability[@170](Signer::spec_address_of[]($t0))), Not(DiemAccount::$exists_at[@170](select DiemAccount::KeyRotationCapability.account_address($t4)))), Neq<num>(Len<u8>($t1), 32)), DiemAccount::$delegated_key_rotation_capability[@170](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:211:5+1085
    assume {:print "$at(2,14534,15619)"} true;
    assert {:msg "assert_failed(2,14534,15619): abort not covered by any of the `aborts_if` clauses"}
      ((((!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#170, $t5) || $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#170, $1_Signer_spec_address_of($t0))) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#170, $account_address#$1_DiemAccount_KeyRotationCapability($t4))) || !$IsEqual'num'(LenVec($t1), 32)) || $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#170, $1_Signer_spec_address_of($t0)));

    // assert Or(Or(Or(Or(Or(Or(And(Not(DiemAccount::$exists_at[@170]($t5)), Eq(5, $t8)), And(DiemAccount::$delegated_key_rotation_capability[@170](Signer::spec_address_of[]($t0)), Eq(1, $t8))), And(Not(DiemAccount::$exists_at[@170](select DiemAccount::KeyRotationCapability.account_address($t4))), Eq(5, $t8))), And(Neq<num>(Len<u8>($t1), 32), Eq(7, $t8))), And(DiemAccount::$delegated_key_rotation_capability[@170](Signer::spec_address_of[]($t0)), Eq(1, $t8))), Eq(1, $t8)), Eq(7, $t8)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:211:5+1085
    assert {:msg "assert_failed(2,14534,15619): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#170, $t5) && $IsEqual'num'(5, $t8)) || ($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#170, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(1, $t8))) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#170, $account_address#$1_DiemAccount_KeyRotationCapability($t4)) && $IsEqual'num'(5, $t8))) || (!$IsEqual'num'(LenVec($t1), 32) && $IsEqual'num'(7, $t8))) || ($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#170, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(1, $t8))) || $IsEqual'num'(1, $t8)) || $IsEqual'num'(7, $t8));

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:211:5+1085
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::add_currency_to_account [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
procedure {:timeLimit 40} $1_AccountAdministrationScripts_add_currency_to_account$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    var $1_DiemAccount_Balance'#0'_$memory#188: $Memory $1_DiemAccount_Balance'#0';
    var $1_Diem_CurrencyInfo'#0'_$memory#189: $Memory $1_Diem_CurrencyInfo'#0';
    var $1_Roles_RoleId_$memory#190: $Memory $1_Roles_RoleId;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(2,2947,3079)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume Implies(Diem::$is_SCS_currency<#0>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<#0>>(mint_cap_owner1), exists<Diem::MintCapability<#0>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'#0'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<#0>(addr3): Diem::$is_SCS_currency<#0>() at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'#0'($1_Diem_MintCapability'#0'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<#0>>(addr): Diem::spec_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'#0'_$memory, addr))  ==> ($1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where exists<DiemAccount::Balance<#0>>(addr): DiemAccount::$exists_at(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2440:9+123
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemAccount_Balance'#0'_$memory, addr))  ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<#0>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'#0'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'#0''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'#0'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'#0'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<DiemAccount::Balance<#0>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_Balance'#0'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_Balance'#0'_$memory, $a_0);
    ($IsValid'$1_DiemAccount_Balance'#0''($rsc))));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @190 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Roles_RoleId_$memory#190 := $1_Roles_RoleId_$memory;

    // @189 := save_mem(Diem::CurrencyInfo<#0>) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Diem_CurrencyInfo'#0'_$memory#189 := $1_Diem_CurrencyInfo'#0'_$memory;

    // @188 := save_mem(DiemAccount::Balance<#0>) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemAccount_Balance'#0'_$memory#188 := $1_DiemAccount_Balance'#0'_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+1
    assume {:print "$at(2,2947,2948)"} true;
    assume {:print "$track_local(36,0,0):", $t0} $t0 == $t0;

    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1555:9+44
    assume {:print "$at(12,71254,71298)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // DiemAccount::add_currency<#0>($t0) on_abort goto L2 with $t2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:42:9+45
    assume {:print "$at(2,3027,3072)"} true;
    call $1_DiemAccount_add_currency'#0'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,3027,3072)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(36,0):", $t2} $t2 == $t2;
        goto L2;
    }

    // assert forall addr: TypeDomain<address>() where exists<DiemAccount::Balance<#0>>(addr): DiemAccount::$exists_at(addr) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2440:9+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2440:9+123
    assume {:print "$at(12,111430,111553)"} true;
    assert {:msg "assert_failed(12,111430,111553): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemAccount_Balance'#0'_$memory, addr))  ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)));

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:43:5+1
    assume {:print "$at(2,3078,3079)"} true;
L1:

    // assert Not(exists[@188]<DiemAccount::Balance<#0>>(Signer::$address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1565:9+93
    assume {:print "$at(12,71687,71780)"} true;
    assert {:msg "assert_failed(12,71687,71780): function does not abort under this condition"}
      !$ResourceExists($1_DiemAccount_Balance'#0'_$memory#188, $1_Signer_$address_of($t0));

    // assert Not(Not(Diem::spec_is_currency[@189]<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1563:9+67
    assume {:print "$at(11,72689,72756)"} true;
    assert {:msg "assert_failed(11,72689,72756): function does not abort under this condition"}
      !!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#189);

    // assert Not(Not(Roles::$can_hold_balance[@190]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1591:9+74
    assume {:print "$at(12,72750,72824)"} true;
    assert {:msg "assert_failed(12,72750,72824): function does not abort under this condition"}
      !!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0);

    // assert Not(Not(Roles::$can_hold_balance[@190]($t0))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:61:9+74
    assume {:print "$at(2,3874,3948)"} true;
    assert {:msg "assert_failed(2,3874,3948): function does not abort under this condition"}
      !!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0);

    // assert exists<DiemAccount::Balance<#0>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:9+37
    assume {:print "$at(12,72040,72077)"} true;
    assert {:msg "assert_failed(12,72040,72077): post-condition does not hold"}
      $ResourceExists($1_DiemAccount_Balance'#0'_$memory, $1_Signer_spec_address_of($t0));

    // assert Eq<DiemAccount::Balance<#0>>(global<DiemAccount::Balance<#0>>(Signer::spec_address_of($t0)), pack DiemAccount::Balance<#0>(pack Diem::Diem<#0>(0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+101
    assume {:print "$at(12,72086,72187)"} true;
    assert {:msg "assert_failed(12,72086,72187): post-condition does not hold"}
      $IsEqual'$1_DiemAccount_Balance'#0''($ResourceValue($1_DiemAccount_Balance'#0'_$memory, $1_Signer_spec_address_of($t0)), $1_DiemAccount_Balance'#0'($1_Diem_Diem'#0'(0)));

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+101
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:43:5+1
    assume {:print "$at(2,3078,3079)"} true;
L2:

    // assert Or(Or(Or(exists[@188]<DiemAccount::Balance<#0>>(Signer::$address_of[]($t0)), Not(Diem::spec_is_currency[@189]<#0>())), Not(Roles::$can_hold_balance[@190]($t0))), Not(Roles::$can_hold_balance[@190]($t0))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:44:5+870
    assume {:print "$at(2,3084,3954)"} true;
    assert {:msg "assert_failed(2,3084,3954): abort not covered by any of the `aborts_if` clauses"}
      ((($ResourceExists($1_DiemAccount_Balance'#0'_$memory#188, $1_Signer_$address_of($t0)) || !$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#189)) || !$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0)) || !$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0));

    // assert Or(Or(Or(Or(Or(Or(And(exists[@188]<DiemAccount::Balance<#0>>(Signer::$address_of[]($t0)), Eq(6, $t2)), And(Not(Diem::spec_is_currency[@189]<#0>()), Eq(5, $t2))), And(Not(Roles::$can_hold_balance[@190]($t0)), Eq(7, $t2))), And(Not(Roles::$can_hold_balance[@190]($t0)), Eq(7, $t2))), Eq(5, $t2)), Eq(7, $t2)), Eq(6, $t2)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:44:5+870
    assert {:msg "assert_failed(2,3084,3954): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((($ResourceExists($1_DiemAccount_Balance'#0'_$memory#188, $1_Signer_$address_of($t0)) && $IsEqual'num'(6, $t2)) || (!$1_Diem_spec_is_currency'#0'($1_Diem_CurrencyInfo'#0'_$memory#189) && $IsEqual'num'(5, $t2))) || (!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0) && $IsEqual'num'(7, $t2))) || (!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0) && $IsEqual'num'(7, $t2))) || $IsEqual'num'(5, $t2)) || $IsEqual'num'(7, $t2)) || $IsEqual'num'(6, $t2));

    // abort($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:44:5+870
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::add_currency_to_account [verification[instantiated_0]] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
procedure {:timeLimit 40} $1_AccountAdministrationScripts_add_currency_to_account$verify_instantiated_0(_$t0: $signer) returns ()
{
    // function instantiation <XUS::XUS>

    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    var $1_DiemAccount_Balance'$1_XUS_XUS'_$memory#188: $Memory $1_DiemAccount_Balance'$1_XUS_XUS';
    var $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#189: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $1_Roles_RoleId_$memory#190: $Memory $1_Roles_RoleId;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(2,2947,3079)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume Implies(Diem::$is_SCS_currency<XUS::XUS>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner1), exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<XUS::XUS>(addr3): Diem::$is_SCS_currency<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'$1_XUS_XUS'($1_Diem_MintCapability'$1_XUS_XUS'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<XUS::XUS>>(addr): Diem::spec_is_currency<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, addr))  ==> ($1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where exists<DiemAccount::Balance<XUS::XUS>>(addr): DiemAccount::$exists_at(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2440:9+123
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr))  ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XUS::XUS>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<DiemAccount::Balance<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''($rsc))));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @190 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Roles_RoleId_$memory#190 := $1_Roles_RoleId_$memory;

    // @189 := save_mem(Diem::CurrencyInfo<XUS::XUS>) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#189 := $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory;

    // @188 := save_mem(DiemAccount::Balance<XUS::XUS>) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemAccount_Balance'$1_XUS_XUS'_$memory#188 := $1_DiemAccount_Balance'$1_XUS_XUS'_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+1
    assume {:print "$at(2,2947,2948)"} true;
    assume {:print "$track_local(36,0,0):", $t0} $t0 == $t0;

    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1555:9+44
    assume {:print "$at(12,71254,71298)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // DiemAccount::add_currency<XUS::XUS>($t0) on_abort goto L2 with $t2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:42:9+45
    assume {:print "$at(2,3027,3072)"} true;
    call $1_DiemAccount_add_currency'$1_XUS_XUS'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,3027,3072)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(36,0):", $t2} $t2 == $t2;
        goto L2;
    }

    // assert forall addr: TypeDomain<address>() where exists<DiemAccount::Balance<XUS::XUS>>(addr): DiemAccount::$exists_at(addr) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2440:9+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2440:9+123
    assume {:print "$at(12,111430,111553)"} true;
    assert {:msg "assert_failed(12,111430,111553): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr))  ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)));

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:43:5+1
    assume {:print "$at(2,3078,3079)"} true;
L1:

    // assert Not(exists[@188]<DiemAccount::Balance<XUS::XUS>>(Signer::$address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1565:9+93
    assume {:print "$at(12,71687,71780)"} true;
    assert {:msg "assert_failed(12,71687,71780): function does not abort under this condition"}
      !$ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory#188, $1_Signer_$address_of($t0));

    // assert Not(Not(Diem::spec_is_currency[@189]<XUS::XUS>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1563:9+67
    assume {:print "$at(11,72689,72756)"} true;
    assert {:msg "assert_failed(11,72689,72756): function does not abort under this condition"}
      !!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#189);

    // assert Not(Not(Roles::$can_hold_balance[@190]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1591:9+74
    assume {:print "$at(12,72750,72824)"} true;
    assert {:msg "assert_failed(12,72750,72824): function does not abort under this condition"}
      !!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0);

    // assert Not(Not(Roles::$can_hold_balance[@190]($t0))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:61:9+74
    assume {:print "$at(2,3874,3948)"} true;
    assert {:msg "assert_failed(2,3874,3948): function does not abort under this condition"}
      !!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0);

    // assert exists<DiemAccount::Balance<XUS::XUS>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:9+37
    assume {:print "$at(12,72040,72077)"} true;
    assert {:msg "assert_failed(12,72040,72077): post-condition does not hold"}
      $ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0));

    // assert Eq<DiemAccount::Balance<XUS::XUS>>(global<DiemAccount::Balance<XUS::XUS>>(Signer::spec_address_of($t0)), pack DiemAccount::Balance<XUS::XUS>(pack Diem::Diem<XUS::XUS>(0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+101
    assume {:print "$at(12,72086,72187)"} true;
    assert {:msg "assert_failed(12,72086,72187): post-condition does not hold"}
      $IsEqual'$1_DiemAccount_Balance'$1_XUS_XUS''($ResourceValue($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0)), $1_DiemAccount_Balance'$1_XUS_XUS'($1_Diem_Diem'$1_XUS_XUS'(0)));

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+101
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:43:5+1
    assume {:print "$at(2,3078,3079)"} true;
L2:

    // assert Or(Or(Or(exists[@188]<DiemAccount::Balance<XUS::XUS>>(Signer::$address_of[]($t0)), Not(Diem::spec_is_currency[@189]<XUS::XUS>())), Not(Roles::$can_hold_balance[@190]($t0))), Not(Roles::$can_hold_balance[@190]($t0))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:44:5+870
    assume {:print "$at(2,3084,3954)"} true;
    assert {:msg "assert_failed(2,3084,3954): abort not covered by any of the `aborts_if` clauses"}
      ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory#188, $1_Signer_$address_of($t0)) || !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#189)) || !$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0)) || !$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0));

    // assert Or(Or(Or(Or(Or(Or(And(exists[@188]<DiemAccount::Balance<XUS::XUS>>(Signer::$address_of[]($t0)), Eq(6, $t2)), And(Not(Diem::spec_is_currency[@189]<XUS::XUS>()), Eq(5, $t2))), And(Not(Roles::$can_hold_balance[@190]($t0)), Eq(7, $t2))), And(Not(Roles::$can_hold_balance[@190]($t0)), Eq(7, $t2))), Eq(5, $t2)), Eq(7, $t2)), Eq(6, $t2)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:44:5+870
    assert {:msg "assert_failed(2,3084,3954): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory#188, $1_Signer_$address_of($t0)) && $IsEqual'num'(6, $t2)) || (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory#189) && $IsEqual'num'(5, $t2))) || (!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0) && $IsEqual'num'(7, $t2))) || (!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0) && $IsEqual'num'(7, $t2))) || $IsEqual'num'(5, $t2)) || $IsEqual'num'(7, $t2)) || $IsEqual'num'(6, $t2));

    // abort($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:44:5+870
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::add_currency_to_account [verification[instantiated_1]] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
procedure {:timeLimit 40} $1_AccountAdministrationScripts_add_currency_to_account$verify_instantiated_1(_$t0: $signer) returns ()
{
    // function instantiation <XDX::XDX>

    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    var $1_DiemAccount_Balance'$1_XDX_XDX'_$memory#188: $Memory $1_DiemAccount_Balance'$1_XDX_XDX';
    var $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#189: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $1_Roles_RoleId_$memory#190: $Memory $1_Roles_RoleId;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(2,2947,3079)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume Implies(Diem::$is_SCS_currency<XDX::XDX>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner1), exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<XDX::XDX>(addr3): Diem::$is_SCS_currency<XDX::XDX>() at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'$1_XDX_XDX'($1_Diem_MintCapability'$1_XDX_XDX'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<XDX::XDX>>(addr): Diem::spec_is_currency<XDX::XDX>() at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, addr))  ==> ($1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where exists<DiemAccount::Balance<XDX::XDX>>(addr): DiemAccount::$exists_at(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2440:9+123
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr))  ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XDX::XDX>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<DiemAccount::Balance<XDX::XDX>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+132
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, $a_0);
    ($IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''($rsc))));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @190 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Roles_RoleId_$memory#190 := $1_Roles_RoleId_$memory;

    // @189 := save_mem(Diem::CurrencyInfo<XDX::XDX>) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#189 := $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory;

    // @188 := save_mem(DiemAccount::Balance<XDX::XDX>) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemAccount_Balance'$1_XDX_XDX'_$memory#188 := $1_DiemAccount_Balance'$1_XDX_XDX'_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:41:5+1
    assume {:print "$at(2,2947,2948)"} true;
    assume {:print "$track_local(36,0,0):", $t0} $t0 == $t0;

    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1555:9+44
    assume {:print "$at(12,71254,71298)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // DiemAccount::add_currency<XDX::XDX>($t0) on_abort goto L2 with $t2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:42:9+45
    assume {:print "$at(2,3027,3072)"} true;
    call $1_DiemAccount_add_currency'$1_XDX_XDX'($t0);
    if ($abort_flag) {
        assume {:print "$at(2,3027,3072)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(36,0):", $t2} $t2 == $t2;
        goto L2;
    }

    // assert forall addr: TypeDomain<address>() where exists<DiemAccount::Balance<XDX::XDX>>(addr): DiemAccount::$exists_at(addr) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2440:9+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2440:9+123
    assume {:print "$at(12,111430,111553)"} true;
    assert {:msg "assert_failed(12,111430,111553): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr))  ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)));

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:43:5+1
    assume {:print "$at(2,3078,3079)"} true;
L1:

    // assert Not(exists[@188]<DiemAccount::Balance<XDX::XDX>>(Signer::$address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1565:9+93
    assume {:print "$at(12,71687,71780)"} true;
    assert {:msg "assert_failed(12,71687,71780): function does not abort under this condition"}
      !$ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory#188, $1_Signer_$address_of($t0));

    // assert Not(Not(Diem::spec_is_currency[@189]<XDX::XDX>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1563:9+67
    assume {:print "$at(11,72689,72756)"} true;
    assert {:msg "assert_failed(11,72689,72756): function does not abort under this condition"}
      !!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#189);

    // assert Not(Not(Roles::$can_hold_balance[@190]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1591:9+74
    assume {:print "$at(12,72750,72824)"} true;
    assert {:msg "assert_failed(12,72750,72824): function does not abort under this condition"}
      !!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0);

    // assert Not(Not(Roles::$can_hold_balance[@190]($t0))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:61:9+74
    assume {:print "$at(2,3874,3948)"} true;
    assert {:msg "assert_failed(2,3874,3948): function does not abort under this condition"}
      !!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0);

    // assert exists<DiemAccount::Balance<XDX::XDX>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1573:9+37
    assume {:print "$at(12,72040,72077)"} true;
    assert {:msg "assert_failed(12,72040,72077): post-condition does not hold"}
      $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, $1_Signer_spec_address_of($t0));

    // assert Eq<DiemAccount::Balance<XDX::XDX>>(global<DiemAccount::Balance<XDX::XDX>>(Signer::spec_address_of($t0)), pack DiemAccount::Balance<XDX::XDX>(pack Diem::Diem<XDX::XDX>(0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+101
    assume {:print "$at(12,72086,72187)"} true;
    assert {:msg "assert_failed(12,72086,72187): post-condition does not hold"}
      $IsEqual'$1_DiemAccount_Balance'$1_XDX_XDX''($ResourceValue($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, $1_Signer_spec_address_of($t0)), $1_DiemAccount_Balance'$1_XDX_XDX'($1_Diem_Diem'$1_XDX_XDX'(0)));

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1574:9+101
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:43:5+1
    assume {:print "$at(2,3078,3079)"} true;
L2:

    // assert Or(Or(Or(exists[@188]<DiemAccount::Balance<XDX::XDX>>(Signer::$address_of[]($t0)), Not(Diem::spec_is_currency[@189]<XDX::XDX>())), Not(Roles::$can_hold_balance[@190]($t0))), Not(Roles::$can_hold_balance[@190]($t0))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:44:5+870
    assume {:print "$at(2,3084,3954)"} true;
    assert {:msg "assert_failed(2,3084,3954): abort not covered by any of the `aborts_if` clauses"}
      ((($ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory#188, $1_Signer_$address_of($t0)) || !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#189)) || !$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0)) || !$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0));

    // assert Or(Or(Or(Or(Or(Or(And(exists[@188]<DiemAccount::Balance<XDX::XDX>>(Signer::$address_of[]($t0)), Eq(6, $t2)), And(Not(Diem::spec_is_currency[@189]<XDX::XDX>()), Eq(5, $t2))), And(Not(Roles::$can_hold_balance[@190]($t0)), Eq(7, $t2))), And(Not(Roles::$can_hold_balance[@190]($t0)), Eq(7, $t2))), Eq(5, $t2)), Eq(7, $t2)), Eq(6, $t2)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:44:5+870
    assert {:msg "assert_failed(2,3084,3954): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((($ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory#188, $1_Signer_$address_of($t0)) && $IsEqual'num'(6, $t2)) || (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory#189) && $IsEqual'num'(5, $t2))) || (!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0) && $IsEqual'num'(7, $t2))) || (!$1_Roles_$can_hold_balance($1_Roles_RoleId_$memory#190, $t0) && $IsEqual'num'(7, $t2))) || $IsEqual'num'(5, $t2)) || $IsEqual'num'(7, $t2)) || $IsEqual'num'(6, $t2));

    // abort($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:44:5+870
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::add_recovery_rotation_capability [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
procedure {:timeLimit 40} $1_AccountAdministrationScripts_add_recovery_rotation_capability$verify(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: $1_DiemAccount_KeyRotationCapability;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: $1_DiemAccount_KeyRotationCapability;
    var $t8: int;
    var $t9: int;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'address': int;
    var $temp_0'signer': $signer;
    var $1_DiemAccount_DiemAccount_$memory#182: $Memory $1_DiemAccount_DiemAccount;
    var $1_RecoveryAddress_RecoveryAddress_$memory#183: $Memory $1_RecoveryAddress_RecoveryAddress;
    var $1_VASP_ChildVASP_$memory#184: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#185: $Memory $1_VASP_ParentVASP;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(2,7646,7916)"} true;
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): And(Gt(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps(addr)), 0), Eq<address>(select DiemAccount::KeyRotationCapability.account_address(Index(RecoveryAddress::spec_get_rotation_caps(addr), 0)), addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:200:9+226
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> (((LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr)) > 0) && $IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr), 0)), addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    assume $IsValid'address'($t1);

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<RecoveryAddress::RecoveryAddress>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+270
    assume (forall $a_0: int :: {$ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0)}(var $rsc := $ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0);
    ($IsValid'$1_RecoveryAddress_RecoveryAddress'($rsc))));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:118:9+55
    assume {:print "$at(2,8327,8382)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, DiemAccount::spec_get_key_rotation_cap($t2)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:119:9+64
    assume {:print "$at(2,8391,8455)"} true;
    assume ($t3 == $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t2));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume Identical($t5, DiemAccount::$key_rotation_capability_address($t3)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:182:9+82
    assume {:print "$at(26,8811,8893)"} true;
    assume ($t5 == $1_DiemAccount_$key_rotation_capability_address($t3));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @184 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_VASP_ChildVASP_$memory#184 := $1_VASP_ChildVASP_$memory;

    // @185 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_VASP_ParentVASP_$memory#185 := $1_VASP_ParentVASP_$memory;

    // @182 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemAccount_DiemAccount_$memory#182 := $1_DiemAccount_DiemAccount_$memory;

    // @183 := save_mem(RecoveryAddress::RecoveryAddress) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_RecoveryAddress_RecoveryAddress_$memory#183 := $1_RecoveryAddress_RecoveryAddress_$memory;

    // trace_local[to_recover_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+1
    assume {:print "$at(2,7646,7647)"} true;
    assume {:print "$track_local(36,1,0):", $t0} $t0 == $t0;

    // trace_local[recovery_address]($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:105:5+1
    assume {:print "$track_local(36,1,1):", $t1} $t1 == $t1;

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // $t7 := DiemAccount::extract_key_rotation_capability($t0) on_abort goto L2 with $t8 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:107:13+65
    assume {:print "$at(2,7817,7882)"} true;
    call $t7 := $1_DiemAccount_extract_key_rotation_capability($t0);
    if ($abort_flag) {
        assume {:print "$at(2,7817,7882)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(36,1):", $t8} $t8 == $t8;
        goto L2;
    }

    // assume Identical($t9, DiemAccount::$key_rotation_capability_address($t7)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:182:9+82
    assume {:print "$at(26,8811,8893)"} true;
    assume ($t9 == $1_DiemAccount_$key_rotation_capability_address($t7));

    // RecoveryAddress::add_rotation_capability($t7, $t1) on_abort goto L2 with $t8 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:106:9+147
    assume {:print "$at(2,7763,7910)"} true;
    call $1_RecoveryAddress_add_rotation_capability($t7, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,7763,7910)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(36,1):", $t8} $t8 == $t8;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:109:5+1
    assume {:print "$at(2,7915,7916)"} true;
L1:

    // assert Not(Not(DiemAccount::$exists_at[@182]($t4))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:973:9+62
    assume {:print "$at(12,43339,43401)"} true;
    assert {:msg "assert_failed(12,43339,43401): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#182, $t4);

    // assert Not(DiemAccount::$delegated_key_rotation_capability[@182](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:9+105
    assume {:print "$at(12,43554,43659)"} true;
    assert {:msg "assert_failed(12,43554,43659): function does not abort under this condition"}
      !$1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#182, $1_Signer_spec_address_of($t0));

    // assert Not(Not(RecoveryAddress::spec_is_recovery_address[@183]($t1))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:180:9+81
    assume {:print "$at(26,8590,8671)"} true;
    assert {:msg "assert_failed(26,8590,8671): function does not abort under this condition"}
      !!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#183, $t1);

    // assert Not(Ge(Len<DiemAccount::KeyRotationCapability>(select RecoveryAddress::RecoveryAddress.rotation_caps(global[@183]<RecoveryAddress::RecoveryAddress>($t1))), 256)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:181:9+122
    assume {:print "$at(26,8680,8802)"} true;
    assert {:msg "assert_failed(26,8680,8802): function does not abort under this condition"}
      !(LenVec($rotation_caps#$1_RecoveryAddress_RecoveryAddress($ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory#183, $t1))) >= 256);

    // assert Not(Not(VASP::spec_is_same_vasp[@184, @185]($t1, $t5))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:183:9+103
    assume {:print "$at(26,8902,9005)"} true;
    assert {:msg "assert_failed(26,8902,9005): function does not abort under this condition"}
      !!$1_VASP_spec_is_same_vasp($1_VASP_ChildVASP_$memory#184, $1_VASP_ParentVASP_$memory#185, $t1, $t5);

    // assert DiemAccount::$delegated_key_rotation_capability(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+76
    assume {:print "$at(12,43753,43829)"} true;
    assert {:msg "assert_failed(12,43753,43829): post-condition does not hold"}
      $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, $1_Signer_spec_address_of($t0));

    // assert Eq<DiemAccount::KeyRotationCapability>(Index(RecoveryAddress::spec_get_rotation_caps($t1), Sub(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps($t1)), 1)), $t3) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:125:9+163
    assume {:print "$at(2,8578,8741)"} true;
    assert {:msg "assert_failed(2,8578,8741): post-condition does not hold"}
      $IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, $t1), (LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, $t1)) - 1)), $t3);

    // return () at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:125:9+163
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:109:5+1
    assume {:print "$at(2,7915,7916)"} true;
L2:

    // assert Or(Or(Or(Or(Not(DiemAccount::$exists_at[@182]($t4)), DiemAccount::$delegated_key_rotation_capability[@182](Signer::spec_address_of[]($t0))), Not(RecoveryAddress::spec_is_recovery_address[@183]($t1))), Ge(Len<DiemAccount::KeyRotationCapability>(select RecoveryAddress::RecoveryAddress.rotation_caps(global[@183]<RecoveryAddress::RecoveryAddress>($t1))), 256)), Not(VASP::spec_is_same_vasp[@184, @185]($t1, $t5))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:110:5+999
    assume {:print "$at(2,7921,8920)"} true;
    assert {:msg "assert_failed(2,7921,8920): abort not covered by any of the `aborts_if` clauses"}
      ((((!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#182, $t4) || $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#182, $1_Signer_spec_address_of($t0))) || !$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#183, $t1)) || (LenVec($rotation_caps#$1_RecoveryAddress_RecoveryAddress($ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory#183, $t1))) >= 256)) || !$1_VASP_spec_is_same_vasp($1_VASP_ChildVASP_$memory#184, $1_VASP_ParentVASP_$memory#185, $t1, $t5));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(And(Not(DiemAccount::$exists_at[@182]($t4)), Eq(5, $t8)), And(DiemAccount::$delegated_key_rotation_capability[@182](Signer::spec_address_of[]($t0)), Eq(1, $t8))), And(Not(RecoveryAddress::spec_is_recovery_address[@183]($t1)), Eq(5, $t8))), And(Ge(Len<DiemAccount::KeyRotationCapability>(select RecoveryAddress::RecoveryAddress.rotation_caps(global[@183]<RecoveryAddress::RecoveryAddress>($t1))), 256), Eq(8, $t8))), And(Not(VASP::spec_is_same_vasp[@184, @185]($t1, $t5)), Eq(7, $t8))), Eq(1, $t8)), Eq(5, $t8)), Eq(8, $t8)), Eq(7, $t8)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:110:5+999
    assert {:msg "assert_failed(2,7921,8920): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((((!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#182, $t4) && $IsEqual'num'(5, $t8)) || ($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#182, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(1, $t8))) || (!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#183, $t1) && $IsEqual'num'(5, $t8))) || ((LenVec($rotation_caps#$1_RecoveryAddress_RecoveryAddress($ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory#183, $t1))) >= 256) && $IsEqual'num'(8, $t8))) || (!$1_VASP_spec_is_same_vasp($1_VASP_ChildVASP_$memory#184, $1_VASP_ParentVASP_$memory#185, $t1, $t5) && $IsEqual'num'(7, $t8))) || $IsEqual'num'(1, $t8)) || $IsEqual'num'(5, $t8)) || $IsEqual'num'(8, $t8)) || $IsEqual'num'(7, $t8));

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:110:5+999
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::create_recovery_address [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
procedure {:timeLimit 40} $1_AccountAdministrationScripts_create_recovery_address$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: $1_DiemAccount_KeyRotationCapability;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: $1_DiemAccount_KeyRotationCapability;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    var $1_DiemAccount_DiemAccount_$memory#164: $Memory $1_DiemAccount_DiemAccount;
    var $1_VASP_ChildVASP_$memory#165: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#166: $Memory $1_VASP_ParentVASP;
    var $1_RecoveryAddress_RecoveryAddress_$memory#167: $Memory $1_RecoveryAddress_RecoveryAddress;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(2,40620,40786)"} true;
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): And(Gt(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps(addr)), 0), Eq<address>(select DiemAccount::KeyRotationCapability.account_address(Index(RecoveryAddress::spec_get_rotation_caps(addr), 0)), addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:200:9+226
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> (((LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr)) > 0) && $IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr), 0)), addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<RecoveryAddress::RecoveryAddress>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+166
    assume (forall $a_0: int :: {$ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0)}(var $rsc := $ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0);
    ($IsValid'$1_RecoveryAddress_RecoveryAddress'($rsc))));

    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:580:9+52
    assume {:print "$at(2,41120,41172)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // assume Identical($t2, DiemAccount::spec_get_key_rotation_cap($t1)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:581:9+72
    assume {:print "$at(2,41181,41253)"} true;
    assume ($t2 == $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t1));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:69:9+53
    assume {:print "$at(26,3500,3553)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @165 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_VASP_ChildVASP_$memory#165 := $1_VASP_ChildVASP_$memory;

    // @166 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_VASP_ParentVASP_$memory#166 := $1_VASP_ParentVASP_$memory;

    // @164 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemAccount_DiemAccount_$memory#164 := $1_DiemAccount_DiemAccount_$memory;

    // @167 := save_mem(RecoveryAddress::RecoveryAddress) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_RecoveryAddress_RecoveryAddress_$memory#167 := $1_RecoveryAddress_RecoveryAddress_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:568:5+1
    assume {:print "$at(2,40620,40621)"} true;
    assume {:print "$track_local(36,2,0):", $t0} $t0 == $t0;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // $t6 := DiemAccount::extract_key_rotation_capability($t0) on_abort goto L2 with $t7 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:569:44+54
    assume {:print "$at(2,40725,40779)"} true;
    call $t6 := $1_DiemAccount_extract_key_rotation_capability($t0);
    if ($abort_flag) {
        assume {:print "$at(2,40725,40779)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(36,2):", $t7} $t7 == $t7;
        goto L2;
    }

    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:69:9+53
    assume {:print "$at(26,3500,3553)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:78:9+53
    assume {:print "$at(26,3959,4012)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // RecoveryAddress::publish($t0, $t6) on_abort goto L2 with $t7 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:569:9+90
    assume {:print "$at(2,40690,40780)"} true;
    call $1_RecoveryAddress_publish($t0, $t6);
    if ($abort_flag) {
        assume {:print "$at(2,40690,40780)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(36,2):", $t7} $t7 == $t7;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:570:5+1
    assume {:print "$at(2,40785,40786)"} true;
L1:

    // assert Not(Not(DiemAccount::$exists_at[@164]($t3))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:973:9+62
    assume {:print "$at(12,43339,43401)"} true;
    assert {:msg "assert_failed(12,43339,43401): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#164, $t3);

    // assert Not(DiemAccount::$delegated_key_rotation_capability[@164](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:9+105
    assume {:print "$at(12,43554,43659)"} true;
    assert {:msg "assert_failed(12,43554,43659): function does not abort under this condition"}
      !$1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#164, $1_Signer_spec_address_of($t0));

    // assert Not(Not(VASP::$is_vasp[@165, @166]($t4))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:70:9+61
    assume {:print "$at(26,3562,3623)"} true;
    assert {:msg "assert_failed(26,3562,3623): function does not abort under this condition"}
      !!$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#165, $1_VASP_ParentVASP_$memory#166, $t4);

    // assert Not(RecoveryAddress::spec_is_recovery_address[@167]($t4)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:71:9+72
    assume {:print "$at(26,3632,3704)"} true;
    assert {:msg "assert_failed(26,3632,3704): function does not abort under this condition"}
      !$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#167, $t4);

    // assert Not(Neq<address>(DiemAccount::$key_rotation_capability_address[]($t2), $t4)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:72:9+119
    assume {:print "$at(26,3713,3832)"} true;
    assert {:msg "assert_failed(26,3713,3832): function does not abort under this condition"}
      !!$IsEqual'address'($1_DiemAccount_$key_rotation_capability_address($t2), $t4);

    // assert DiemAccount::$delegated_key_rotation_capability(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:982:9+76
    assume {:print "$at(12,43753,43829)"} true;
    assert {:msg "assert_failed(12,43753,43829): post-condition does not hold"}
      $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, $1_Signer_spec_address_of($t0));

    // assert RecoveryAddress::spec_is_recovery_address($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:588:9+64
    assume {:print "$at(2,41403,41467)"} true;
    assert {:msg "assert_failed(2,41403,41467): post-condition does not hold"}
      $1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, $t1);

    // assert Eq<num>(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps($t1)), 1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:589:9+72
    assume {:print "$at(2,41476,41548)"} true;
    assert {:msg "assert_failed(2,41476,41548): post-condition does not hold"}
      $IsEqual'num'(LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, $t1)), 1);

    // assert Eq<DiemAccount::KeyRotationCapability>(Index(RecoveryAddress::spec_get_rotation_caps($t1), 0), $t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:590:9+81
    assume {:print "$at(2,41557,41638)"} true;
    assert {:msg "assert_failed(2,41557,41638): post-condition does not hold"}
      $IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, $t1), 0), $t2);

    // return () at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:590:9+81
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:570:5+1
    assume {:print "$at(2,40785,40786)"} true;
L2:

    // assert Or(Or(Or(Or(Not(DiemAccount::$exists_at[@164]($t3)), DiemAccount::$delegated_key_rotation_capability[@164](Signer::spec_address_of[]($t0))), Not(VASP::$is_vasp[@165, @166]($t4))), RecoveryAddress::spec_is_recovery_address[@167]($t4)), Neq<address>(DiemAccount::$key_rotation_capability_address[]($t2), $t4)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:572:5+993
    assume {:print "$at(2,40792,41785)"} true;
    assert {:msg "assert_failed(2,40792,41785): abort not covered by any of the `aborts_if` clauses"}
      ((((!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#164, $t3) || $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#164, $1_Signer_spec_address_of($t0))) || !$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#165, $1_VASP_ParentVASP_$memory#166, $t4)) || $1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#167, $t4)) || !$IsEqual'address'($1_DiemAccount_$key_rotation_capability_address($t2), $t4));

    // assert Or(Or(Or(Or(Or(Or(Or(And(Not(DiemAccount::$exists_at[@164]($t3)), Eq(5, $t7)), And(DiemAccount::$delegated_key_rotation_capability[@164](Signer::spec_address_of[]($t0)), Eq(1, $t7))), And(Not(VASP::$is_vasp[@165, @166]($t4)), Eq(7, $t7))), And(RecoveryAddress::spec_is_recovery_address[@167]($t4), Eq(6, $t7))), And(Neq<address>(DiemAccount::$key_rotation_capability_address[]($t2), $t4), Eq(7, $t7))), Eq(1, $t7)), Eq(7, $t7)), Eq(6, $t7)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:572:5+993
    assert {:msg "assert_failed(2,40792,41785): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#164, $t3) && $IsEqual'num'(5, $t7)) || ($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#164, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(1, $t7))) || (!$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#165, $1_VASP_ParentVASP_$memory#166, $t4) && $IsEqual'num'(7, $t7))) || ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#167, $t4) && $IsEqual'num'(6, $t7))) || (!$IsEqual'address'($1_DiemAccount_$key_rotation_capability_address($t2), $t4) && $IsEqual'num'(7, $t7))) || $IsEqual'num'(1, $t7)) || $IsEqual'num'(7, $t7)) || $IsEqual'num'(6, $t7));

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:572:5+993
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::create_vasp_domains [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
procedure {:timeLimit 40} $1_AccountAdministrationScripts_create_vasp_domains$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    var $1_Roles_RoleId_$memory#148: $Memory $1_Roles_RoleId;
    var $1_VASPDomain_VASPDomains_$memory#149: $Memory $1_VASPDomain_VASPDomains;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(2,43170,43284)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomains>(): And(WellFormed($rsc), And(And(forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Le(Len<u8>(select VASPDomain::VASPDomain.domain(Index(select VASPDomain::VASPDomains.domains($rsc), i))), 63), forall i: Range(0, Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): forall j: Range(Add(i, 1), Len<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains($rsc))): Neq<VASPDomain::VASPDomain>(Index(select VASPDomain::VASPDomains.domains($rsc), i), Index(select VASPDomain::VASPDomains.domains($rsc), j))), forall $elem: select VASPDomain::VASPDomains.domains($rsc): Le(Len<u8>(select VASPDomain::VASPDomain.domain($elem)), 63))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+114
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomains_$memory, $a_0);
    (($IsValid'$1_VASPDomain_VASPDomains'($rsc) && (((var $range_1 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_2: int :: $InRange($range_1, $i_2) ==> (var i := $i_2;
    ((LenVec($domain#$1_VASPDomain_VASPDomain(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i))) <= 63))))) && (var $range_3 := $Range(0, LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_4: int :: $InRange($range_3, $i_4) ==> (var i := $i_4;
    ((var $range_5 := $Range((i + 1), LenVec($domains#$1_VASPDomain_VASPDomains($rsc))); (forall $i_6: int :: $InRange($range_5, $i_6) ==> (var j := $i_6;
    (!$IsEqual'$1_VASPDomain_VASPDomain'(ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), i), ReadVec($domains#$1_VASPDomain_VASPDomains($rsc), j))))))))))) && (var $range_7 := $domains#$1_VASPDomain_VASPDomains($rsc); (forall $i_8: int :: InRangeVec($range_7, $i_8) ==> (var $elem := ReadVec($range_7, $i_8);
    ((LenVec($domain#$1_VASPDomain_VASPDomain($elem)) <= 63))))))))));

    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:625:9+49
    assume {:print "$at(2,43409,43458)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @148 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_Roles_RoleId_$memory#148 := $1_Roles_RoleId_$memory;

    // @149 := save_mem(VASPDomain::VASPDomains) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_VASPDomain_VASPDomains_$memory#149 := $1_VASPDomain_VASPDomains_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:617:5+1
    assume {:print "$at(2,43170,43171)"} true;
    assume {:print "$track_local(36,3,0):", $t0} $t0 == $t0;

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:93:9+54
    assume {:print "$at(36,3464,3518)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // VASPDomain::publish_vasp_domains($t0) on_abort goto L2 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:618:9+42
    assume {:print "$at(2,43236,43278)"} true;
    call $1_VASPDomain_publish_vasp_domains($t0);
    if ($abort_flag) {
        assume {:print "$at(2,43236,43278)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(36,3):", $t5} $t5 == $t5;
        goto L2;
    }

    // assert forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume {:print "$at(12,108890,109035)"} true;
    assert {:msg "assert_failed(12,108890,109035): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:619:5+1
    assume {:print "$at(2,43283,43284)"} true;
L1:

    // assert Not(Not(exists[@148]<Roles::RoleId>($t2))) at /home/ying/diem/language/diem-framework/modules/Roles.move:553:9+59
    assume {:print "$at(28,24626,24685)"} true;
    assert {:msg "assert_failed(28,24626,24685): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#148, $t2);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@148]<Roles::RoleId>($t2)), 5)) at /home/ying/diem/language/diem-framework/modules/Roles.move:554:9+89
    assume {:print "$at(28,24694,24783)"} true;
    assert {:msg "assert_failed(28,24694,24783): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#148, $t2)), 5);

    // assert Not(VASPDomain::$has_vasp_domains[@149]($t1)) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:100:9+69
    assume {:print "$at(36,3762,3831)"} true;
    assert {:msg "assert_failed(36,3762,3831): function does not abort under this condition"}
      !$1_VASPDomain_$has_vasp_domains($1_VASPDomain_VASPDomains_$memory#149, $t1);

    // assert exists<VASPDomain::VASPDomains>($t1) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:104:9+39
    assume {:print "$at(36,3918,3957)"} true;
    assert {:msg "assert_failed(36,3918,3957): post-condition does not hold"}
      $ResourceExists($1_VASPDomain_VASPDomains_$memory, $t1);

    // assert Vector::$is_empty<VASPDomain::VASPDomain>(select VASPDomain::VASPDomains.domains(global<VASPDomain::VASPDomains>($t1))) at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:105:9+65
    assume {:print "$at(36,3966,4031)"} true;
    assert {:msg "assert_failed(36,3966,4031): post-condition does not hold"}
      $1_Vector_$is_empty'$1_VASPDomain_VASPDomain'($domains#$1_VASPDomain_VASPDomains($ResourceValue($1_VASPDomain_VASPDomains_$memory, $t1)));

    // return () at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:105:9+65
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:619:5+1
    assume {:print "$at(2,43283,43284)"} true;
L2:

    // assert Or(Or(Not(exists[@148]<Roles::RoleId>($t2)), Neq<u64>(select Roles::RoleId.role_id(global[@148]<Roles::RoleId>($t2)), 5)), VASPDomain::$has_vasp_domains[@149]($t1)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:620:5+567
    assume {:print "$at(2,43289,43856)"} true;
    assert {:msg "assert_failed(2,43289,43856): abort not covered by any of the `aborts_if` clauses"}
      ((!$ResourceExists($1_Roles_RoleId_$memory#148, $t2) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#148, $t2)), 5)) || $1_VASPDomain_$has_vasp_domains($1_VASPDomain_VASPDomains_$memory#149, $t1));

    // assert Or(Or(Or(Or(And(Not(exists[@148]<Roles::RoleId>($t2)), Eq(5, $t5)), And(Neq<u64>(select Roles::RoleId.role_id(global[@148]<Roles::RoleId>($t2)), 5), Eq(3, $t5))), And(VASPDomain::$has_vasp_domains[@149]($t1), Eq(6, $t5))), Eq(6, $t5)), Eq(3, $t5)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:620:5+567
    assert {:msg "assert_failed(2,43289,43856): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((!$ResourceExists($1_Roles_RoleId_$memory#148, $t2) && $IsEqual'num'(5, $t5)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#148, $t2)), 5) && $IsEqual'num'(3, $t5))) || ($1_VASPDomain_$has_vasp_domains($1_VASPDomain_VASPDomains_$memory#149, $t1) && $IsEqual'num'(6, $t5))) || $IsEqual'num'(6, $t5)) || $IsEqual'num'(3, $t5));

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:620:5+567
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::opt_in_to_crsn [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
procedure {:timeLimit 40} $1_AccountAdministrationScripts_opt_in_to_crsn$verify(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume {:print "$at(2,45429,45558)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    assume $IsValid'u64'($t1);

    // assume forall $rsc: ResourceDomain<CRSN::CRSN>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    assume (forall $a_0: int :: {$ResourceValue($1_CRSN_CRSN_$memory, $a_0)}(var $rsc := $ResourceValue($1_CRSN_CRSN_$memory, $a_0);
    ($IsValid'$1_CRSN_CRSN'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+129
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+1
    assume {:print "$track_local(36,5,0):", $t0} $t0 == $t0;

    // trace_local[crsn_size]($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:659:5+1
    assume {:print "$track_local(36,5,1):", $t1} $t1 == $t1;

    // DiemAccount::publish_crsn($t0, $t1) on_abort goto L2 with $t2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:660:9+46
    assume {:print "$at(2,45506,45552)"} true;
    call $1_DiemAccount_publish_crsn($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,45506,45552)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(36,5):", $t2} $t2 == $t2;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:661:5+1
    assume {:print "$at(2,45557,45558)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:661:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:661:5+1
L2:

    // abort($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:661:5+1
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::publish_shared_ed25519_public_key [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
procedure {:timeLimit 40} $1_AccountAdministrationScripts_publish_shared_ed25519_public_key$verify(_$t0: $signer, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t0: $signer;
    var $t1: Vec (int);
    var $temp_0'signer': $signer;
    var $temp_0'vec'u8'': Vec (int);
    var $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#186: $Memory $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $1_DiemAccount_DiemAccount_$memory#187: $Memory $1_DiemAccount_DiemAccount;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume {:print "$at(2,11448,11611)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    assume $IsValid'vec'u8''($t1);

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<SharedEd25519PublicKey::SharedEd25519PublicKey>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+163
    assume (forall $a_0: int :: {$ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0)}(var $rsc := $ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0);
    ($IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'($rsc))));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:46:9+44
    assume {:print "$at(29,1991,2035)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:60:9+44
    assume {:print "$at(29,2531,2575)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @187 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemAccount_DiemAccount_$memory#187 := $1_DiemAccount_DiemAccount_$memory;

    // @186 := save_mem(SharedEd25519PublicKey::SharedEd25519PublicKey) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#186 := $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+1
    assume {:print "$at(2,11448,11449)"} true;
    assume {:print "$track_local(36,6,0):", $t0} $t0 == $t0;

    // trace_local[public_key]($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:163:5+1
    assume {:print "$track_local(36,6,1):", $t1} $t1 == $t1;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:46:9+44
    assume {:print "$at(29,1991,2035)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:60:9+44
    assume {:print "$at(29,2531,2575)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // SharedEd25519PublicKey::publish($t0, $t1) on_abort goto L2 with $t8 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:164:9+53
    assume {:print "$at(2,11552,11605)"} true;
    call $1_SharedEd25519PublicKey_publish($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,11552,11605)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(36,6):", $t8} $t8 == $t8;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:165:5+1
    assume {:print "$at(2,11610,11611)"} true;
L1:

    // assert Not(SharedEd25519PublicKey::$exists_at[@186]($t2)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:55:9+57
    assume {:print "$at(29,2376,2433)"} true;
    assert {:msg "assert_failed(29,2376,2433): function does not abort under this condition"}
      !$1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#186, $t2);

    // assert Not(Not(DiemAccount::$exists_at[@187]($t3))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:973:9+62
    assume {:print "$at(12,43339,43401)"} true;
    assert {:msg "assert_failed(12,43339,43401): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#187, $t3);

    // assert Not(DiemAccount::$delegated_key_rotation_capability[@187](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:9+105
    assume {:print "$at(12,43554,43659)"} true;
    assert {:msg "assert_failed(12,43554,43659): function does not abort under this condition"}
      !$1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#187, $1_Signer_spec_address_of($t0));

    // assert Not(Not(Signature::$ed25519_validate_pubkey[]($t1))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:85:9+92
    assume {:print "$at(29,3470,3562)"} true;
    assert {:msg "assert_failed(29,3470,3562): function does not abort under this condition"}
      !!$1_Signature_$ed25519_validate_pubkey($t1);

    // assert Not(Not(DiemAccount::$exists_at[@187](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(pack SharedEd25519PublicKey::SharedEd25519PublicKey([], DiemAccount::spec_get_key_rotation_cap[@187]($t2))))))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:936:9+69
    assume {:print "$at(12,41499,41568)"} true;
    assert {:msg "assert_failed(12,41499,41568): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#187, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($1_SharedEd25519PublicKey_SharedEd25519PublicKey($EmptyVec'u8'(), $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory#187, $t2)))));

    // assert Not(Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:937:9+74
    assume {:print "$at(12,41577,41651)"} true;
    assert {:msg "assert_failed(12,41577,41651): function does not abort under this condition"}
      !!$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32);

    // assert SharedEd25519PublicKey::$exists_at($t4) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:62:9+24
    assume {:print "$at(29,2585,2609)"} true;
    assert {:msg "assert_failed(29,2585,2609): post-condition does not hold"}
      $1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t4);

    // assert Eq<vector<u8>>(select SharedEd25519PublicKey::SharedEd25519PublicKey.key(global<SharedEd25519PublicKey::SharedEd25519PublicKey>($t4)), $t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:94:9+41
    assume {:print "$at(29,3908,3949)"} true;
    assert {:msg "assert_failed(29,3908,3949): post-condition does not hold"}
      $IsEqual'vec'u8''($key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t4)), $t1);

    // return () at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:94:9+41
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:165:5+1
    assume {:print "$at(2,11610,11611)"} true;
L2:

    // assert Or(Or(Or(Or(Or(SharedEd25519PublicKey::$exists_at[@186]($t2), Not(DiemAccount::$exists_at[@187]($t3))), DiemAccount::$delegated_key_rotation_capability[@187](Signer::spec_address_of[]($t0))), Not(Signature::$ed25519_validate_pubkey[]($t1))), Not(DiemAccount::$exists_at[@187](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(pack SharedEd25519PublicKey::SharedEd25519PublicKey([], DiemAccount::spec_get_key_rotation_cap[@187]($t2))))))), Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:166:5+504
    assume {:print "$at(2,11616,12120)"} true;
    assert {:msg "assert_failed(2,11616,12120): abort not covered by any of the `aborts_if` clauses"}
      ((((($1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#186, $t2) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#187, $t3)) || $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#187, $1_Signer_spec_address_of($t0))) || !$1_Signature_$ed25519_validate_pubkey($t1)) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#187, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($1_SharedEd25519PublicKey_SharedEd25519PublicKey($EmptyVec'u8'(), $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory#187, $t2)))))) || !$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(And(SharedEd25519PublicKey::$exists_at[@186]($t2), Eq(6, $t8)), And(Not(DiemAccount::$exists_at[@187]($t3)), Eq(5, $t8))), And(DiemAccount::$delegated_key_rotation_capability[@187](Signer::spec_address_of[]($t0)), Eq(1, $t8))), And(Not(Signature::$ed25519_validate_pubkey[]($t1)), Eq(7, $t8))), And(Not(DiemAccount::$exists_at[@187](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(pack SharedEd25519PublicKey::SharedEd25519PublicKey([], DiemAccount::spec_get_key_rotation_cap[@187]($t2)))))), Eq(5, $t8))), And(Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32), Eq(7, $t8))), Eq(1, $t8)), Eq(6, $t8)), Eq(7, $t8)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:166:5+504
    assert {:msg "assert_failed(2,11616,12120): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((($1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#186, $t2) && $IsEqual'num'(6, $t8)) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#187, $t3) && $IsEqual'num'(5, $t8))) || ($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#187, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(1, $t8))) || (!$1_Signature_$ed25519_validate_pubkey($t1) && $IsEqual'num'(7, $t8))) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#187, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($1_SharedEd25519PublicKey_SharedEd25519PublicKey($EmptyVec'u8'(), $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory#187, $t2))))) && $IsEqual'num'(5, $t8))) || (!$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32) && $IsEqual'num'(7, $t8))) || $IsEqual'num'(1, $t8)) || $IsEqual'num'(6, $t8)) || $IsEqual'num'(7, $t8));

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:166:5+504
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::rotate_authentication_key_with_nonce [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
procedure {:timeLimit 40} $1_AccountAdministrationScripts_rotate_authentication_key_with_nonce$verify(_$t0: $signer, _$t1: int, _$t2: Vec (int)) returns ()
{
    // declare local variables
    var $t3: $1_DiemAccount_KeyRotationCapability;
    var $t4: int;
    var $t5: $1_DiemAccount_KeyRotationCapability;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: $1_DiemAccount_KeyRotationCapability;
    var $t0: $signer;
    var $t1: int;
    var $t2: Vec (int);
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_SlidingNonce_SlidingNonce_$memory#179: $Memory $1_SlidingNonce_SlidingNonce;
    var $1_DiemAccount_DiemAccount_$memory#180: $Memory $1_DiemAccount_DiemAccount;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume {:print "$at(2,18843,19290)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    assume $IsValid'u64'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    assume $IsValid'vec'u8''($t2);

    // assume forall $rsc: ResourceDomain<SlidingNonce::SlidingNonce>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    assume (forall $a_0: int :: {$ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0)}(var $rsc := $ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0);
    ($IsValid'$1_SlidingNonce_SlidingNonce'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+447
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:278:9+52
    assume {:print "$at(2,19502,19554)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume Identical($t5, DiemAccount::spec_get_key_rotation_cap($t4)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:281:9+83
    assume {:print "$at(2,19709,19792)"} true;
    assume ($t5 == $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t4));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @179 := save_mem(SlidingNonce::SlidingNonce) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_SlidingNonce_SlidingNonce_$memory#179 := $1_SlidingNonce_SlidingNonce_$memory;

    // @180 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemAccount_DiemAccount_$memory#180 := $1_DiemAccount_DiemAccount_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+1
    assume {:print "$at(2,18843,18844)"} true;
    assume {:print "$track_local(36,8,0):", $t0} $t0 == $t0;

    // trace_local[sliding_nonce]($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+1
    assume {:print "$track_local(36,8,1):", $t1} $t1 == $t1;

    // trace_local[new_key]($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:267:5+1
    assume {:print "$track_local(36,8,2):", $t2} $t2 == $t2;

    // SlidingNonce::record_nonce_or_abort($t0, $t1) on_abort goto L2 with $t7 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:268:9+60
    assume {:print "$at(2,18967,19027)"} true;
    call $1_SlidingNonce_record_nonce_or_abort($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,18967,19027)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(36,8):", $t7} $t7 == $t7;
        goto L2;
    }

    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // $t9 := DiemAccount::extract_key_rotation_capability($t0) on_abort goto L2 with $t7 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:269:39+54
    assume {:print "$at(2,19067,19121)"} true;
    call $t9 := $1_DiemAccount_extract_key_rotation_capability($t0);
    if ($abort_flag) {
        assume {:print "$at(2,19067,19121)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(36,8):", $t7} $t7 == $t7;
        goto L2;
    }

    // trace_local[key_rotation_capability]($t9) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:269:13+23
    assume {:print "$track_local(36,8,3):", $t9} $t9 == $t9;

    // DiemAccount::rotate_authentication_key($t9, $t2) on_abort goto L2 with $t7 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:270:9+73
    assume {:print "$at(2,19131,19204)"} true;
    call $1_DiemAccount_rotate_authentication_key($t9, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,19131,19204)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(36,8):", $t7} $t7 == $t7;
        goto L2;
    }

    // DiemAccount::restore_key_rotation_capability($t9) on_abort goto L2 with $t7 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:271:9+69
    assume {:print "$at(2,19214,19283)"} true;
    call $1_DiemAccount_restore_key_rotation_capability($t9);
    if ($abort_flag) {
        assume {:print "$at(2,19214,19283)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(36,8):", $t7} $t7 == $t7;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:272:5+1
    assume {:print "$at(2,19289,19290)"} true;
L1:

    // assert Not(Not(exists[@179]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:47:9+93
    assume {:print "$at(31,1971,2064)"} true;
    assert {:msg "assert_failed(31,1971,2064): function does not abort under this condition"}
      !!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#179, $1_Signer_spec_address_of($t0));

    // assert Not(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:48:9+87
    assume {:print "$at(31,2073,2160)"} true;
    assert {:msg "assert_failed(31,2073,2160): function does not abort under this condition"}
      !!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0);

    // assert Not(Not(DiemAccount::$exists_at[@180]($t6))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:973:9+62
    assume {:print "$at(12,43339,43401)"} true;
    assert {:msg "assert_failed(12,43339,43401): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#180, $t6);

    // assert Not(DiemAccount::$delegated_key_rotation_capability[@180](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:9+105
    assume {:print "$at(12,43554,43659)"} true;
    assert {:msg "assert_failed(12,43554,43659): function does not abort under this condition"}
      !$1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#180, $1_Signer_spec_address_of($t0));

    // assert Not(Not(DiemAccount::$exists_at[@180](select DiemAccount::KeyRotationCapability.account_address($t5)))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:936:9+69
    assume {:print "$at(12,41499,41568)"} true;
    assert {:msg "assert_failed(12,41499,41568): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#180, $account_address#$1_DiemAccount_KeyRotationCapability($t5));

    // assert Not(Neq<num>(Len<u8>($t2), 32)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:937:9+74
    assume {:print "$at(12,41577,41651)"} true;
    assert {:msg "assert_failed(12,41577,41651): function does not abort under this condition"}
      !!$IsEqual'num'(LenVec($t2), 32);

    // assert Not(DiemAccount::$delegated_key_rotation_capability[@180](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:9+105
    assume {:print "$at(12,43554,43659)"} true;
    assert {:msg "assert_failed(12,43554,43659): function does not abort under this condition"}
      !$1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#180, $1_Signer_spec_address_of($t0));

    // assert Eq<vector<u8>>(select DiemAccount::DiemAccount.authentication_key(global<DiemAccount::DiemAccount>($t4)), $t2) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:942:9+79
    assume {:print "$at(12,41782,41861)"} true;
    assert {:msg "assert_failed(12,41782,41861): post-condition does not hold"}
      $IsEqual'vec'u8''($authentication_key#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, $t4)), $t2);

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:942:9+79
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:272:5+1
    assume {:print "$at(2,19289,19290)"} true;
L2:

    // assert Or(Or(Or(Or(Or(Or(Not(exists[@179]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0)), Not(DiemAccount::$exists_at[@180]($t6))), DiemAccount::$delegated_key_rotation_capability[@180](Signer::spec_address_of[]($t0))), Not(DiemAccount::$exists_at[@180](select DiemAccount::KeyRotationCapability.account_address($t5)))), Neq<num>(Len<u8>($t2), 32)), DiemAccount::$delegated_key_rotation_capability[@180](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:273:5+1210
    assume {:print "$at(2,19295,20505)"} true;
    assert {:msg "assert_failed(2,19295,20505): abort not covered by any of the `aborts_if` clauses"}
      ((((((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#179, $1_Signer_spec_address_of($t0)) || !$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0)) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#180, $t6)) || $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#180, $1_Signer_spec_address_of($t0))) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#180, $account_address#$1_DiemAccount_KeyRotationCapability($t5))) || !$IsEqual'num'(LenVec($t2), 32)) || $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#180, $1_Signer_spec_address_of($t0)));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists[@179]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Eq(5, $t7)), And(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t1), 0), Eq(7, $t7))), And(Not(DiemAccount::$exists_at[@180]($t6)), Eq(5, $t7))), And(DiemAccount::$delegated_key_rotation_capability[@180](Signer::spec_address_of[]($t0)), Eq(1, $t7))), And(Not(DiemAccount::$exists_at[@180](select DiemAccount::KeyRotationCapability.account_address($t5))), Eq(5, $t7))), And(Neq<num>(Len<u8>($t2), 32), Eq(7, $t7))), And(DiemAccount::$delegated_key_rotation_capability[@180](Signer::spec_address_of[]($t0)), Eq(1, $t7))), Eq(7, $t7)), Eq(1, $t7)), Eq(5, $t7)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:273:5+1210
    assert {:msg "assert_failed(2,19295,20505): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#179, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(5, $t7)) || (!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t1), 0) && $IsEqual'num'(7, $t7))) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#180, $t6) && $IsEqual'num'(5, $t7))) || ($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#180, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(1, $t7))) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#180, $account_address#$1_DiemAccount_KeyRotationCapability($t5)) && $IsEqual'num'(5, $t7))) || (!$IsEqual'num'(LenVec($t2), 32) && $IsEqual'num'(7, $t7))) || ($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#180, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(1, $t7))) || $IsEqual'num'(7, $t7)) || $IsEqual'num'(1, $t7)) || $IsEqual'num'(5, $t7));

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:273:5+1210
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::rotate_authentication_key_with_nonce_admin [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
procedure {:timeLimit 40} $1_AccountAdministrationScripts_rotate_authentication_key_with_nonce_admin$verify(_$t0: $signer, _$t1: $signer, _$t2: int, _$t3: Vec (int)) returns ()
{
    // declare local variables
    var $t4: $1_DiemAccount_KeyRotationCapability;
    var $t5: int;
    var $t6: $1_DiemAccount_KeyRotationCapability;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: $1_DiemAccount_KeyRotationCapability;
    var $t0: $signer;
    var $t1: $signer;
    var $t2: int;
    var $t3: Vec (int);
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_SlidingNonce_SlidingNonce_$memory#176: $Memory $1_SlidingNonce_SlidingNonce;
    var $1_DiemAccount_DiemAccount_$memory#177: $Memory $1_DiemAccount_DiemAccount;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume {:print "$at(2,24035,24511)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    assume $IsValid'u64'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    assume $IsValid'vec'u8''($t3);

    // assume forall $rsc: ResourceDomain<SlidingNonce::SlidingNonce>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    assume (forall $a_0: int :: {$ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0)}(var $rsc := $ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0);
    ($IsValid'$1_SlidingNonce_SlidingNonce'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+476
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume Identical($t5, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:343:9+52
    assume {:print "$at(2,24763,24815)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t1));

    // assume Identical($t6, DiemAccount::spec_get_key_rotation_cap($t5)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:346:9+83
    assume {:print "$at(2,24991,25074)"} true;
    assume ($t6 == $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t5));

    // assume Identical($t7, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t1));

    // assume DiemAccount::prologue_guarantees($t1) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t1);

    // assume Roles::$has_diem_root_role($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:359:9+47
    assume {:print "$at(2,25656,25703)"} true;
    assume $1_Roles_$has_diem_root_role($1_Roles_RoleId_$memory, $t0);

    // @176 := save_mem(SlidingNonce::SlidingNonce) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:359:9+47
    $1_SlidingNonce_SlidingNonce_$memory#176 := $1_SlidingNonce_SlidingNonce_$memory;

    // @177 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:359:9+47
    $1_DiemAccount_DiemAccount_$memory#177 := $1_DiemAccount_DiemAccount_$memory;

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+1
    assume {:print "$at(2,24035,24036)"} true;
    assume {:print "$track_local(36,9,0):", $t0} $t0 == $t0;

    // trace_local[account]($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+1
    assume {:print "$track_local(36,9,1):", $t1} $t1 == $t1;

    // trace_local[sliding_nonce]($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+1
    assume {:print "$track_local(36,9,2):", $t2} $t2 == $t2;

    // trace_local[new_key]($t3) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:331:5+1
    assume {:print "$track_local(36,9,3):", $t3} $t3 == $t3;

    // SlidingNonce::record_nonce_or_abort($t0, $t2) on_abort goto L2 with $t8 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:332:9+63
    assume {:print "$at(2,24185,24248)"} true;
    call $1_SlidingNonce_record_nonce_or_abort($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,24185,24248)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(36,9):", $t8} $t8 == $t8;
        goto L2;
    }

    // assume Identical($t9, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t1));

    // $t10 := DiemAccount::extract_key_rotation_capability($t1) on_abort goto L2 with $t8 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:333:39+54
    assume {:print "$at(2,24288,24342)"} true;
    call $t10 := $1_DiemAccount_extract_key_rotation_capability($t1);
    if ($abort_flag) {
        assume {:print "$at(2,24288,24342)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(36,9):", $t8} $t8 == $t8;
        goto L2;
    }

    // trace_local[key_rotation_capability]($t10) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:333:13+23
    assume {:print "$track_local(36,9,4):", $t10} $t10 == $t10;

    // DiemAccount::rotate_authentication_key($t10, $t3) on_abort goto L2 with $t8 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:334:9+73
    assume {:print "$at(2,24352,24425)"} true;
    call $1_DiemAccount_rotate_authentication_key($t10, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,24352,24425)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(36,9):", $t8} $t8 == $t8;
        goto L2;
    }

    // DiemAccount::restore_key_rotation_capability($t10) on_abort goto L2 with $t8 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:335:9+69
    assume {:print "$at(2,24435,24504)"} true;
    call $1_DiemAccount_restore_key_rotation_capability($t10);
    if ($abort_flag) {
        assume {:print "$at(2,24435,24504)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(36,9):", $t8} $t8 == $t8;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:336:5+1
    assume {:print "$at(2,24510,24511)"} true;
L1:

    // assert Not(Not(exists[@176]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:47:9+93
    assume {:print "$at(31,1971,2064)"} true;
    assert {:msg "assert_failed(31,1971,2064): function does not abort under this condition"}
      !!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#176, $1_Signer_spec_address_of($t0));

    // assert Not(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t2), 0)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:48:9+87
    assume {:print "$at(31,2073,2160)"} true;
    assert {:msg "assert_failed(31,2073,2160): function does not abort under this condition"}
      !!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t2), 0);

    // assert Not(Not(DiemAccount::$exists_at[@177]($t7))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:973:9+62
    assume {:print "$at(12,43339,43401)"} true;
    assert {:msg "assert_failed(12,43339,43401): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#177, $t7);

    // assert Not(DiemAccount::$delegated_key_rotation_capability[@177](Signer::spec_address_of[]($t1))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:9+105
    assume {:print "$at(12,43554,43659)"} true;
    assert {:msg "assert_failed(12,43554,43659): function does not abort under this condition"}
      !$1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#177, $1_Signer_spec_address_of($t1));

    // assert Not(Not(DiemAccount::$exists_at[@177](select DiemAccount::KeyRotationCapability.account_address($t6)))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:936:9+69
    assume {:print "$at(12,41499,41568)"} true;
    assert {:msg "assert_failed(12,41499,41568): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#177, $account_address#$1_DiemAccount_KeyRotationCapability($t6));

    // assert Not(Neq<num>(Len<u8>($t3), 32)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:937:9+74
    assume {:print "$at(12,41577,41651)"} true;
    assert {:msg "assert_failed(12,41577,41651): function does not abort under this condition"}
      !!$IsEqual'num'(LenVec($t3), 32);

    // assert Not(DiemAccount::$delegated_key_rotation_capability[@177](Signer::spec_address_of[]($t1))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:9+105
    assume {:print "$at(12,43554,43659)"} true;
    assert {:msg "assert_failed(12,43554,43659): function does not abort under this condition"}
      !$1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#177, $1_Signer_spec_address_of($t1));

    // assert Eq<vector<u8>>(select DiemAccount::DiemAccount.authentication_key(global<DiemAccount::DiemAccount>($t5)), $t3) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:942:9+79
    assume {:print "$at(12,41782,41861)"} true;
    assert {:msg "assert_failed(12,41782,41861): post-condition does not hold"}
      $IsEqual'vec'u8''($authentication_key#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, $t5)), $t3);

    // return () at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:942:9+79
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:336:5+1
    assume {:print "$at(2,24510,24511)"} true;
L2:

    // assert Or(Or(Or(Or(Or(Or(Not(exists[@176]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t2), 0)), Not(DiemAccount::$exists_at[@177]($t7))), DiemAccount::$delegated_key_rotation_capability[@177](Signer::spec_address_of[]($t1))), Not(DiemAccount::$exists_at[@177](select DiemAccount::KeyRotationCapability.account_address($t6)))), Neq<num>(Len<u8>($t3), 32)), DiemAccount::$delegated_key_rotation_capability[@177](Signer::spec_address_of[]($t1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:337:5+1489
    assume {:print "$at(2,24516,26005)"} true;
    assert {:msg "assert_failed(2,24516,26005): abort not covered by any of the `aborts_if` clauses"}
      ((((((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#176, $1_Signer_spec_address_of($t0)) || !$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t2), 0)) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#177, $t7)) || $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#177, $1_Signer_spec_address_of($t1))) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#177, $account_address#$1_DiemAccount_KeyRotationCapability($t6))) || !$IsEqual'num'(LenVec($t3), 32)) || $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#177, $1_Signer_spec_address_of($t1)));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists[@176]<SlidingNonce::SlidingNonce>(Signer::spec_address_of[]($t0))), Eq(5, $t8)), And(Neq<u64>(SlidingNonce::spec_try_record_nonce[]($t0, $t2), 0), Eq(7, $t8))), And(Not(DiemAccount::$exists_at[@177]($t7)), Eq(5, $t8))), And(DiemAccount::$delegated_key_rotation_capability[@177](Signer::spec_address_of[]($t1)), Eq(1, $t8))), And(Not(DiemAccount::$exists_at[@177](select DiemAccount::KeyRotationCapability.account_address($t6))), Eq(5, $t8))), And(Neq<num>(Len<u8>($t3), 32), Eq(7, $t8))), And(DiemAccount::$delegated_key_rotation_capability[@177](Signer::spec_address_of[]($t1)), Eq(1, $t8))), Eq(7, $t8)), Eq(1, $t8)), Eq(5, $t8)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:337:5+1489
    assert {:msg "assert_failed(2,24516,26005): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((((!$ResourceExists($1_SlidingNonce_SlidingNonce_$memory#176, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(5, $t8)) || (!$IsEqual'u64'($1_SlidingNonce_spec_try_record_nonce($t0, $t2), 0) && $IsEqual'num'(7, $t8))) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#177, $t7) && $IsEqual'num'(5, $t8))) || ($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#177, $1_Signer_spec_address_of($t1)) && $IsEqual'num'(1, $t8))) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#177, $account_address#$1_DiemAccount_KeyRotationCapability($t6)) && $IsEqual'num'(5, $t8))) || (!$IsEqual'num'(LenVec($t3), 32) && $IsEqual'num'(7, $t8))) || ($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#177, $1_Signer_spec_address_of($t1)) && $IsEqual'num'(1, $t8))) || $IsEqual'num'(7, $t8)) || $IsEqual'num'(1, $t8)) || $IsEqual'num'(5, $t8));

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:337:5+1489
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::rotate_authentication_key_with_recovery_address [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
procedure {:timeLimit 40} $1_AccountAdministrationScripts_rotate_authentication_key_with_recovery_address$verify(_$t0: $signer, _$t1: int, _$t2: int, _$t3: Vec (int)) returns ()
{
    // declare local variables
    var $t4: int;
    var $t5: int;
    var $t0: $signer;
    var $t1: int;
    var $t2: int;
    var $t3: Vec (int);
    var $temp_0'address': int;
    var $temp_0'signer': $signer;
    var $temp_0'vec'u8'': Vec (int);
    var $1_RecoveryAddress_RecoveryAddress_$memory#146: $Memory $1_RecoveryAddress_RecoveryAddress;
    var $1_DiemAccount_DiemAccount_$memory#147: $Memory $1_DiemAccount_DiemAccount;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume {:print "$at(2,29812,30134)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): And(Gt(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps(addr)), 0), Eq<address>(select DiemAccount::KeyRotationCapability.account_address(Index(RecoveryAddress::spec_get_rotation_caps(addr), 0)), addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:200:9+226
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> (((LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr)) > 0) && $IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr), 0)), addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    assume $IsValid'address'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    assume $IsValid'vec'u8''($t3);

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<RecoveryAddress::RecoveryAddress>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+322
    assume (forall $a_0: int :: {$ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0)}(var $rsc := $ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0);
    ($IsValid'$1_RecoveryAddress_RecoveryAddress'($rsc))));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:424:9+52
    assume {:print "$at(2,30950,31002)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @147 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemAccount_DiemAccount_$memory#147 := $1_DiemAccount_DiemAccount_$memory;

    // @146 := save_mem(RecoveryAddress::RecoveryAddress) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_RecoveryAddress_RecoveryAddress_$memory#146 := $1_RecoveryAddress_RecoveryAddress_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+1
    assume {:print "$at(2,29812,29813)"} true;
    assume {:print "$track_local(36,10,0):", $t0} $t0 == $t0;

    // trace_local[recovery_address]($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+1
    assume {:print "$track_local(36,10,1):", $t1} $t1 == $t1;

    // trace_local[to_recover]($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+1
    assume {:print "$track_local(36,10,2):", $t2} $t2 == $t2;

    // trace_local[new_key]($t3) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:399:5+1
    assume {:print "$track_local(36,10,3):", $t3} $t3 == $t3;

    // RecoveryAddress::rotate_authentication_key($t0, $t1, $t2, $t3) on_abort goto L2 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:405:9+91
    assume {:print "$at(2,30037,30128)"} true;
    call $1_RecoveryAddress_rotate_authentication_key($t0, $t1, $t2, $t3);
    if ($abort_flag) {
        assume {:print "$at(2,30037,30128)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(36,10):", $t5} $t5 == $t5;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:406:5+1
    assume {:print "$at(2,30133,30134)"} true;
L1:

    // assert Not(Not(RecoveryAddress::spec_is_recovery_address[@146]($t1))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:138:9+81
    assume {:print "$at(26,6392,6473)"} true;
    assert {:msg "assert_failed(26,6392,6473): function does not abort under this condition"}
      !!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#146, $t1);

    // assert Not(Not(DiemAccount::$exists_at[@147]($t2))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:139:9+73
    assume {:print "$at(26,6482,6555)"} true;
    assert {:msg "assert_failed(26,6482,6555): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#147, $t2);

    // assert Not(Neq<num>(Len<u8>($t3), 32)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:140:9+59
    assume {:print "$at(26,6564,6623)"} true;
    assert {:msg "assert_failed(26,6564,6623): function does not abort under this condition"}
      !!$IsEqual'num'(LenVec($t3), 32);

    // assert Not(Not(RecoveryAddress::spec_holds_key_rotation_cap_for[@146]($t1, $t2))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:141:9+103
    assume {:print "$at(26,6632,6735)"} true;
    assert {:msg "assert_failed(26,6632,6735): function does not abort under this condition"}
      !!$1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#146, $t1, $t2);

    // assert Not(Not(Or(Eq<address>(Signer::spec_address_of[]($t0), $t1), Eq<address>(Signer::spec_address_of[]($t0), $t2)))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:142:9+166
    assume {:print "$at(26,6744,6910)"} true;
    assert {:msg "assert_failed(26,6744,6910): function does not abort under this condition"}
      !!($IsEqual'address'($1_Signer_spec_address_of($t0), $t1) || $IsEqual'address'($1_Signer_spec_address_of($t0), $t2));

    // assert Not(Not(RecoveryAddress::spec_holds_key_rotation_cap_for[@146]($t1, $t2))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:425:9+120
    assume {:print "$at(2,31011,31131)"} true;
    assert {:msg "assert_failed(2,31011,31131): function does not abort under this condition"}
      !!$1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#146, $t1, $t2);

    // assert Not(Not(Or(Eq<address>($t4, $t1), Eq<address>($t4, $t2)))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:426:9+106
    assume {:print "$at(2,31140,31246)"} true;
    assert {:msg "assert_failed(2,31140,31246): function does not abort under this condition"}
      !!($IsEqual'address'($t4, $t1) || $IsEqual'address'($t4, $t2));

    // assert Eq<vector<u8>>(DiemAccount::$authentication_key($t2), $t3) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:148:9+63
    assume {:print "$at(26,7032,7095)"} true;
    assert {:msg "assert_failed(26,7032,7095): post-condition does not hold"}
      $IsEqual'vec'u8''($1_DiemAccount_$authentication_key($1_DiemAccount_DiemAccount_$memory, $t2), $t3);

    // return () at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:148:9+63
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:406:5+1
    assume {:print "$at(2,30133,30134)"} true;
L2:

    // assert Or(Or(Or(Or(Or(Or(Not(RecoveryAddress::spec_is_recovery_address[@146]($t1)), Not(DiemAccount::$exists_at[@147]($t2))), Neq<num>(Len<u8>($t3), 32)), Not(RecoveryAddress::spec_holds_key_rotation_cap_for[@146]($t1, $t2))), Not(Or(Eq<address>(Signer::spec_address_of[]($t0), $t1), Eq<address>(Signer::spec_address_of[]($t0), $t2)))), Not(RecoveryAddress::spec_holds_key_rotation_cap_for[@146]($t1, $t2))), Not(Or(Eq<address>($t4, $t1), Eq<address>($t4, $t2)))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:407:5+1113
    assume {:print "$at(2,30139,31252)"} true;
    assert {:msg "assert_failed(2,30139,31252): abort not covered by any of the `aborts_if` clauses"}
      ((((((!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#146, $t1) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#147, $t2)) || !$IsEqual'num'(LenVec($t3), 32)) || !$1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#146, $t1, $t2)) || !($IsEqual'address'($1_Signer_spec_address_of($t0), $t1) || $IsEqual'address'($1_Signer_spec_address_of($t0), $t2))) || !$1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#146, $t1, $t2)) || !($IsEqual'address'($t4, $t1) || $IsEqual'address'($t4, $t2)));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(And(Not(RecoveryAddress::spec_is_recovery_address[@146]($t1)), Eq(5, $t5)), And(Not(DiemAccount::$exists_at[@147]($t2)), Eq(5, $t5))), And(Neq<num>(Len<u8>($t3), 32), Eq(7, $t5))), And(Not(RecoveryAddress::spec_holds_key_rotation_cap_for[@146]($t1, $t2)), Eq(7, $t5))), And(Not(Or(Eq<address>(Signer::spec_address_of[]($t0), $t1), Eq<address>(Signer::spec_address_of[]($t0), $t2))), Eq(7, $t5))), And(Not(RecoveryAddress::spec_holds_key_rotation_cap_for[@146]($t1, $t2)), Eq(7, $t5))), And(Not(Or(Eq<address>($t4, $t1), Eq<address>($t4, $t2))), Eq(7, $t5))), Eq(5, $t5)), Eq(7, $t5)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:407:5+1113
    assert {:msg "assert_failed(2,30139,31252): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((((!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#146, $t1) && $IsEqual'num'(5, $t5)) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#147, $t2) && $IsEqual'num'(5, $t5))) || (!$IsEqual'num'(LenVec($t3), 32) && $IsEqual'num'(7, $t5))) || (!$1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#146, $t1, $t2) && $IsEqual'num'(7, $t5))) || (!($IsEqual'address'($1_Signer_spec_address_of($t0), $t1) || $IsEqual'address'($1_Signer_spec_address_of($t0), $t2)) && $IsEqual'num'(7, $t5))) || (!$1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#146, $t1, $t2) && $IsEqual'num'(7, $t5))) || (!($IsEqual'address'($t4, $t1) || $IsEqual'address'($t4, $t2)) && $IsEqual'num'(7, $t5))) || $IsEqual'num'(5, $t5)) || $IsEqual'num'(7, $t5));

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:407:5+1113
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::rotate_dual_attestation_info [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
procedure {:timeLimit 40} $1_AccountAdministrationScripts_rotate_dual_attestation_info$verify(_$t0: $signer, _$t1: Vec (int), _$t2: Vec (int)) returns ()
{
    // declare local variables
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent';
    var $t9: $1_DualAttestation_BaseUrlRotationEvent;
    var $t10: int;
    var $t11: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent';
    var $t12: $1_DualAttestation_ComplianceKeyRotationEvent;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: $1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent';
    var $t17: $1_DualAttestation_BaseUrlRotationEvent;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t21: int;
    var $t22: $1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent';
    var $t23: $1_DualAttestation_ComplianceKeyRotationEvent;
    var $t0: $signer;
    var $t1: Vec (int);
    var $t2: Vec (int);
    var $temp_0'signer': $signer;
    var $temp_0'vec'u8'': Vec (int);
    var $1_DualAttestation_Credential_$memory#191: $Memory $1_DualAttestation_Credential;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(2,33995,34243)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    assume $IsValid'vec'u8''($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    assume $IsValid'vec'u8''($t2);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<DualAttestation::Credential>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+248
    assume (forall $a_0: int :: {$ResourceValue($1_DualAttestation_Credential_$memory, $a_0)}(var $rsc := $ResourceValue($1_DualAttestation_Credential_$memory, $a_0);
    ($IsValid'$1_DualAttestation_Credential'($rsc))));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:143:9+46
    assume {:print "$at(22,6672,6718)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:157:9+46
    assume {:print "$at(22,7171,7217)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:201:9+46
    assume {:print "$at(22,9028,9074)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:212:9+46
    assume {:print "$at(22,9492,9538)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:167:9+46
    assume {:print "$at(22,7616,7662)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, select DualAttestation::Credential.base_url_rotation_events(global<DualAttestation::Credential>($t7))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:168:9+65
    assume {:print "$at(22,7671,7736)"} true;
    assume ($t8 == $base_url_rotation_events#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory, $t7)));

    // assume Identical($t9, pack DualAttestation::BaseUrlRotationEvent($t1, DiemTimestamp::spec_now_seconds())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:169:9+147
    assume {:print "$at(22,7745,7892)"} true;
    assume ($t9 == $1_DualAttestation_BaseUrlRotationEvent($t1, $1_DiemTimestamp_spec_now_seconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:221:9+46
    assume {:print "$at(22,9998,10044)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // assume Identical($t11, select DualAttestation::Credential.compliance_key_rotation_events(global<DualAttestation::Credential>($t10))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:222:9+71
    assume {:print "$at(22,10053,10124)"} true;
    assume ($t11 == $compliance_key_rotation_events#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory, $t10)));

    // assume Identical($t12, pack DualAttestation::ComplianceKeyRotationEvent($t2, DiemTimestamp::spec_now_seconds())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:223:9+166
    assume {:print "$at(22,10133,10299)"} true;
    assume ($t12 == $1_DualAttestation_ComplianceKeyRotationEvent($t2, $1_DiemTimestamp_spec_now_seconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @192 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @191 := save_mem(DualAttestation::Credential) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DualAttestation_Credential_$memory#191 := $1_DualAttestation_Credential_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+1
    assume {:print "$at(2,33995,33996)"} true;
    assume {:print "$track_local(36,11,0):", $t0} $t0 == $t0;

    // trace_local[new_url]($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+1
    assume {:print "$track_local(36,11,1):", $t1} $t1 == $t1;

    // trace_local[new_key]($t2) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:466:5+1
    assume {:print "$track_local(36,11,2):", $t2} $t2 == $t2;

    // assume Identical($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:143:9+46
    assume {:print "$at(22,6672,6718)"} true;
    assume ($t13 == $1_Signer_spec_address_of($t0));

    // assume Identical($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:157:9+46
    assume {:print "$at(22,7171,7217)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t0));

    // assume Identical($t15, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:167:9+46
    assume {:print "$at(22,7616,7662)"} true;
    assume ($t15 == $1_Signer_spec_address_of($t0));

    // assume Identical($t16, select DualAttestation::Credential.base_url_rotation_events(global<DualAttestation::Credential>($t15))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:168:9+65
    assume {:print "$at(22,7671,7736)"} true;
    assume ($t16 == $base_url_rotation_events#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory, $t15)));

    // assume Identical($t17, pack DualAttestation::BaseUrlRotationEvent($t1, DiemTimestamp::spec_now_seconds())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:169:9+147
    assume {:print "$at(22,7745,7892)"} true;
    assume ($t17 == $1_DualAttestation_BaseUrlRotationEvent($t1, $1_DiemTimestamp_spec_now_seconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // DualAttestation::rotate_base_url($t0, $t1) on_abort goto L2 with $t18 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:467:9+51
    assume {:print "$at(2,34112,34163)"} true;
    call $1_DualAttestation_rotate_base_url($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,34112,34163)"} true;
        $t18 := $abort_code;
        assume {:print "$track_abort(36,11):", $t18} $t18 == $t18;
        goto L2;
    }

    // assume Identical($t19, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:201:9+46
    assume {:print "$at(22,9028,9074)"} true;
    assume ($t19 == $1_Signer_spec_address_of($t0));

    // assume Identical($t20, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:212:9+46
    assume {:print "$at(22,9492,9538)"} true;
    assume ($t20 == $1_Signer_spec_address_of($t0));

    // assume Identical($t21, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:221:9+46
    assume {:print "$at(22,9998,10044)"} true;
    assume ($t21 == $1_Signer_spec_address_of($t0));

    // assume Identical($t22, select DualAttestation::Credential.compliance_key_rotation_events(global<DualAttestation::Credential>($t21))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:222:9+71
    assume {:print "$at(22,10053,10124)"} true;
    assume ($t22 == $compliance_key_rotation_events#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory, $t21)));

    // assume Identical($t23, pack DualAttestation::ComplianceKeyRotationEvent($t2, DiemTimestamp::spec_now_seconds())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:223:9+166
    assume {:print "$at(22,10133,10299)"} true;
    assume ($t23 == $1_DualAttestation_ComplianceKeyRotationEvent($t2, $1_DiemTimestamp_spec_now_seconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // DualAttestation::rotate_compliance_public_key($t0, $t2) on_abort goto L2 with $t18 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:468:9+64
    assume {:print "$at(2,34173,34237)"} true;
    call $1_DualAttestation_rotate_compliance_public_key($t0, $t2);
    if ($abort_flag) {
        assume {:print "$at(2,34173,34237)"} true;
        $t18 := $abort_code;
        assume {:print "$track_abort(36,11):", $t18} $t18 == $t18;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:469:5+1
    assume {:print "$at(2,34242,34243)"} true;
L1:

    // assert Not(Not(DualAttestation::spec_has_credential[@191]($t3))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:152:9+64
    assume {:print "$at(22,6999,7063)"} true;
    assert {:msg "assert_failed(22,6999,7063): function does not abort under this condition"}
      !!$1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory#191, $t3);

    // assert Not(Not(DiemTimestamp::$is_operating[@192]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192);

    // assert Not(Not(Signature::$ed25519_validate_pubkey[]($t2))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:206:9+85
    assume {:print "$at(22,9286,9371)"} true;
    assert {:msg "assert_failed(22,9286,9371): function does not abort under this condition"}
      !!$1_Signature_$ed25519_validate_pubkey($t2);

    // assert Not(Not(DualAttestation::spec_has_credential[@191]($t5))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:152:9+64
    assume {:print "$at(22,6999,7063)"} true;
    assert {:msg "assert_failed(22,6999,7063): function does not abort under this condition"}
      !!$1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory#191, $t5);

    // assert Not(Not(DiemTimestamp::$is_operating[@192]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192);

    // assert Not(Not(DualAttestation::spec_has_credential[@191](Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:152:9+64
    assume {:print "$at(22,6999,7063)"} true;
    assert {:msg "assert_failed(22,6999,7063): function does not abort under this condition"}
      !!$1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory#191, $1_Signer_spec_address_of($t0));

    // assert Eq<vector<u8>>(select DualAttestation::Credential.base_url(global<DualAttestation::Credential>($t4)), $t1) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:159:9+55
    assume {:print "$at(22,7227,7282)"} true;
    assert {:msg "assert_failed(22,7227,7282): post-condition does not hold"}
      $IsEqual'vec'u8''($base_url#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory, $t4)), $t1);

    // assert forall addr1: TypeDomain<address>() where Neq<address>(addr1, $t4): Eq<vector<u8>>(select DualAttestation::Credential.base_url(global<DualAttestation::Credential>(addr1)), select DualAttestation::Credential.base_url(global[@191]<DualAttestation::Credential>(addr1))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:161:9+142
    assume {:print "$at(22,7368,7510)"} true;
    assert {:msg "assert_failed(22,7368,7510): post-condition does not hold"}
      (forall addr1: int :: $IsValid'address'(addr1) ==> (!$IsEqual'address'(addr1, $t4))  ==> ($IsEqual'vec'u8''($base_url#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory, addr1)), $base_url#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory#191, addr1)))));

    // assert Eq<vector<u8>>(select DualAttestation::Credential.compliance_public_key(global<DualAttestation::Credential>($t6)), $t2) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:213:9+68
    assume {:print "$at(22,9547,9615)"} true;
    assert {:msg "assert_failed(22,9547,9615): post-condition does not hold"}
      $IsEqual'vec'u8''($compliance_public_key#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory, $t6)), $t2);

    // assert forall addr1: TypeDomain<address>() where Neq<address>(addr1, $t6): Eq<vector<u8>>(select DualAttestation::Credential.compliance_public_key(global<DualAttestation::Credential>(addr1)), select DualAttestation::Credential.compliance_public_key(global[@191]<DualAttestation::Credential>(addr1))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:215:9+169
    assume {:print "$at(22,9711,9880)"} true;
    assert {:msg "assert_failed(22,9711,9880): post-condition does not hold"}
      (forall addr1: int :: $IsValid'address'(addr1) ==> (!$IsEqual'address'(addr1, $t6))  ==> ($IsEqual'vec'u8''($compliance_public_key#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory, addr1)), $compliance_public_key#$1_DualAttestation_Credential($ResourceValue($1_DualAttestation_Credential_$memory#191, addr1)))));

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), $t9, $t8)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:173:9+20
    assume {:print "$at(22,7901,7921)"} true;
    assert {:msg "assert_failed(22,7901,7921): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'($EmptyEventStore, $t8, $t9); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludes(ExtendEventStore(ExtendEventStore(EmptyEventStore(), $t9, $t8), $t12, $t11)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:227:9+20
    assume {:print "$at(22,10308,10328)"} true;
    assert {:msg "assert_failed(22,10308,10328): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$1_DualAttestation_ComplianceKeyRotationEvent'($ExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'($EmptyEventStore, $t8, $t9), $t11, $t12); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(ExtendEventStore(EmptyEventStore(), $t9, $t8), $t12, $t11)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:470:5+1001
    assume {:print "$at(2,34248,35249)"} true;
    assert {:msg "assert_failed(2,34248,35249): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $ExtendEventStore'$1_DualAttestation_ComplianceKeyRotationEvent'($ExtendEventStore'$1_DualAttestation_BaseUrlRotationEvent'($EmptyEventStore, $t8, $t9), $t11, $t12); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:470:5+1001
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:469:5+1
    assume {:print "$at(2,34242,34243)"} true;
L2:

    // assert Or(Or(Or(Or(Or(Not(DualAttestation::spec_has_credential[@191]($t3)), Not(DiemTimestamp::$is_operating[@192]())), Not(Signature::$ed25519_validate_pubkey[]($t2))), Not(DualAttestation::spec_has_credential[@191]($t5))), Not(DiemTimestamp::$is_operating[@192]())), Not(DualAttestation::spec_has_credential[@191](Signer::spec_address_of[]($t0)))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:470:5+1001
    assume {:print "$at(2,34248,35249)"} true;
    assert {:msg "assert_failed(2,34248,35249): abort not covered by any of the `aborts_if` clauses"}
      (((((!$1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory#191, $t3) || !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192)) || !$1_Signature_$ed25519_validate_pubkey($t2)) || !$1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory#191, $t5)) || !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192)) || !$1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory#191, $1_Signer_spec_address_of($t0)));

    // assert Or(Or(Or(Or(Or(Or(Or(And(Not(DualAttestation::spec_has_credential[@191]($t3)), Eq(5, $t18)), And(Not(DiemTimestamp::$is_operating[@192]()), Eq(1, $t18))), And(Not(Signature::$ed25519_validate_pubkey[]($t2)), Eq(7, $t18))), And(Not(DualAttestation::spec_has_credential[@191]($t5)), Eq(5, $t18))), And(Not(DiemTimestamp::$is_operating[@192]()), Eq(1, $t18))), And(Not(DualAttestation::spec_has_credential[@191](Signer::spec_address_of[]($t0))), Eq(5, $t18))), Eq(5, $t18)), Eq(7, $t18)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:470:5+1001
    assert {:msg "assert_failed(2,34248,35249): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((!$1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory#191, $t3) && $IsEqual'num'(5, $t18)) || (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192) && $IsEqual'num'(1, $t18))) || (!$1_Signature_$ed25519_validate_pubkey($t2) && $IsEqual'num'(7, $t18))) || (!$1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory#191, $t5) && $IsEqual'num'(5, $t18))) || (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#192) && $IsEqual'num'(1, $t18))) || (!$1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory#191, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(5, $t18))) || $IsEqual'num'(5, $t18)) || $IsEqual'num'(7, $t18));

    // abort($t18) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:470:5+1001
    $abort_code := $t18;
    $abort_flag := true;
    return;

}

// fun AccountAdministrationScripts::rotate_shared_ed25519_public_key [verification] at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
procedure {:timeLimit 40} $1_AccountAdministrationScripts_rotate_shared_ed25519_public_key$verify(_$t0: $signer, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t0: $signer;
    var $t1: Vec (int);
    var $temp_0'signer': $signer;
    var $temp_0'vec'u8'': Vec (int);
    var $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#158: $Memory $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $1_DiemAccount_DiemAccount_$memory#159: $Memory $1_DiemAccount_DiemAccount;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume {:print "$at(2,37466,37631)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    assume $IsValid'vec'u8''($t1);

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<SharedEd25519PublicKey::SharedEd25519PublicKey>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+165
    assume (forall $a_0: int :: {$ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0)}(var $rsc := $ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0);
    ($IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'($rsc))));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:115:9+44
    assume {:print "$at(29,4896,4940)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:122:9+44
    assume {:print "$at(29,5201,5245)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume DiemAccount::prologue_guarantees($t0) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    assume {:print "$at(12,115659,115696)"} true;
    assume $1_DiemAccount_prologue_guarantees($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_AccountFreezing_FreezingBit_$memory, $1_DiemAccount_DiemAccount_$memory, $t0);

    // @159 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_DiemAccount_DiemAccount_$memory#159 := $1_DiemAccount_DiemAccount_$memory;

    // @158 := save_mem(SharedEd25519PublicKey::SharedEd25519PublicKey) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2534:9+37
    $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#158 := $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+1
    assume {:print "$at(2,37466,37467)"} true;
    assume {:print "$track_local(36,12,0):", $t0} $t0 == $t0;

    // trace_local[public_key]($t1) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:521:5+1
    assume {:print "$track_local(36,12,1):", $t1} $t1 == $t1;

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:115:9+44
    assume {:print "$at(29,4896,4940)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:122:9+44
    assume {:print "$at(29,5201,5245)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // SharedEd25519PublicKey::rotate_key($t0, $t1) on_abort goto L2 with $t6 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:522:9+56
    assume {:print "$at(2,37569,37625)"} true;
    call $1_SharedEd25519PublicKey_rotate_key($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(2,37569,37625)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(36,12):", $t6} $t6 == $t6;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:523:5+1
    assume {:print "$at(2,37630,37631)"} true;
L1:

    // assert Not(Not(SharedEd25519PublicKey::$exists_at[@158]($t2))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:116:9+54
    assume {:print "$at(29,4949,5003)"} true;
    assert {:msg "assert_failed(29,4949,5003): function does not abort under this condition"}
      !!$1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#158, $t2);

    // assert Not(Not(Signature::$ed25519_validate_pubkey[]($t1))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:85:9+92
    assume {:print "$at(29,3470,3562)"} true;
    assert {:msg "assert_failed(29,3470,3562): function does not abort under this condition"}
      !!$1_Signature_$ed25519_validate_pubkey($t1);

    // assert Not(Not(DiemAccount::$exists_at[@159](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(global[@158]<SharedEd25519PublicKey::SharedEd25519PublicKey>($t2)))))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:936:9+69
    assume {:print "$at(12,41499,41568)"} true;
    assert {:msg "assert_failed(12,41499,41568): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#159, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#158, $t2))));

    // assert Not(Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:937:9+74
    assume {:print "$at(12,41577,41651)"} true;
    assert {:msg "assert_failed(12,41577,41651): function does not abort under this condition"}
      !!$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32);

    // assert Eq<vector<u8>>(select SharedEd25519PublicKey::SharedEd25519PublicKey.key(global<SharedEd25519PublicKey::SharedEd25519PublicKey>($t3)), $t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:94:9+41
    assume {:print "$at(29,3908,3949)"} true;
    assert {:msg "assert_failed(29,3908,3949): post-condition does not hold"}
      $IsEqual'vec'u8''($key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t3)), $t1);

    // return () at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:94:9+41
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:523:5+1
    assume {:print "$at(2,37630,37631)"} true;
L2:

    // assert Or(Or(Or(Not(SharedEd25519PublicKey::$exists_at[@158]($t2)), Not(Signature::$ed25519_validate_pubkey[]($t1))), Not(DiemAccount::$exists_at[@159](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(global[@158]<SharedEd25519PublicKey::SharedEd25519PublicKey>($t2)))))), Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:524:5+490
    assume {:print "$at(2,37636,38126)"} true;
    assert {:msg "assert_failed(2,37636,38126): abort not covered by any of the `aborts_if` clauses"}
      (((!$1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#158, $t2) || !$1_Signature_$ed25519_validate_pubkey($t1)) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#159, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#158, $t2))))) || !$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32));

    // assert Or(Or(Or(Or(Or(And(Not(SharedEd25519PublicKey::$exists_at[@158]($t2)), Eq(5, $t6)), And(Not(Signature::$ed25519_validate_pubkey[]($t1)), Eq(7, $t6))), And(Not(DiemAccount::$exists_at[@159](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(global[@158]<SharedEd25519PublicKey::SharedEd25519PublicKey>($t2))))), Eq(5, $t6))), And(Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32), Eq(7, $t6))), Eq(5, $t6)), Eq(7, $t6)) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:524:5+490
    assert {:msg "assert_failed(2,37636,38126): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((!$1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#158, $t2) && $IsEqual'num'(5, $t6)) || (!$1_Signature_$ed25519_validate_pubkey($t1) && $IsEqual'num'(7, $t6))) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#159, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#158, $t2)))) && $IsEqual'num'(5, $t6))) || (!$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32) && $IsEqual'num'(7, $t6))) || $IsEqual'num'(5, $t6)) || $IsEqual'num'(7, $t6));

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/AccountAdministrationScripts.move:524:5+490
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:55:5+75
function {:inline} $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory: $Memory $1_DiemBlock_BlockMetadata): bool {
    $ResourceExists($1_DiemBlock_BlockMetadata_$memory, 173345816)
}

// struct DiemBlock::BlockMetadata at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:9:5+236
type {:datatype} $1_DiemBlock_BlockMetadata;
function {:constructor} $1_DiemBlock_BlockMetadata($height: int, $new_block_events: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent'): $1_DiemBlock_BlockMetadata;
function {:inline} $Update'$1_DiemBlock_BlockMetadata'_height(s: $1_DiemBlock_BlockMetadata, x: int): $1_DiemBlock_BlockMetadata {
    $1_DiemBlock_BlockMetadata(x, $new_block_events#$1_DiemBlock_BlockMetadata(s))
}
function {:inline} $Update'$1_DiemBlock_BlockMetadata'_new_block_events(s: $1_DiemBlock_BlockMetadata, x: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent'): $1_DiemBlock_BlockMetadata {
    $1_DiemBlock_BlockMetadata($height#$1_DiemBlock_BlockMetadata(s), x)
}
function $IsValid'$1_DiemBlock_BlockMetadata'(s: $1_DiemBlock_BlockMetadata): bool {
    $IsValid'u64'($height#$1_DiemBlock_BlockMetadata(s))
      && $IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''($new_block_events#$1_DiemBlock_BlockMetadata(s))
}
function {:inline} $IsEqual'$1_DiemBlock_BlockMetadata'(s1: $1_DiemBlock_BlockMetadata, s2: $1_DiemBlock_BlockMetadata): bool {
    s1 == s2
}
var $1_DiemBlock_BlockMetadata_$memory: $Memory $1_DiemBlock_BlockMetadata;

// struct DiemBlock::NewBlockEvent at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:16:5+234
type {:datatype} $1_DiemBlock_NewBlockEvent;
function {:constructor} $1_DiemBlock_NewBlockEvent($round: int, $proposer: int, $previous_block_votes: Vec (int), $time_microseconds: int): $1_DiemBlock_NewBlockEvent;
function {:inline} $Update'$1_DiemBlock_NewBlockEvent'_round(s: $1_DiemBlock_NewBlockEvent, x: int): $1_DiemBlock_NewBlockEvent {
    $1_DiemBlock_NewBlockEvent(x, $proposer#$1_DiemBlock_NewBlockEvent(s), $previous_block_votes#$1_DiemBlock_NewBlockEvent(s), $time_microseconds#$1_DiemBlock_NewBlockEvent(s))
}
function {:inline} $Update'$1_DiemBlock_NewBlockEvent'_proposer(s: $1_DiemBlock_NewBlockEvent, x: int): $1_DiemBlock_NewBlockEvent {
    $1_DiemBlock_NewBlockEvent($round#$1_DiemBlock_NewBlockEvent(s), x, $previous_block_votes#$1_DiemBlock_NewBlockEvent(s), $time_microseconds#$1_DiemBlock_NewBlockEvent(s))
}
function {:inline} $Update'$1_DiemBlock_NewBlockEvent'_previous_block_votes(s: $1_DiemBlock_NewBlockEvent, x: Vec (int)): $1_DiemBlock_NewBlockEvent {
    $1_DiemBlock_NewBlockEvent($round#$1_DiemBlock_NewBlockEvent(s), $proposer#$1_DiemBlock_NewBlockEvent(s), x, $time_microseconds#$1_DiemBlock_NewBlockEvent(s))
}
function {:inline} $Update'$1_DiemBlock_NewBlockEvent'_time_microseconds(s: $1_DiemBlock_NewBlockEvent, x: int): $1_DiemBlock_NewBlockEvent {
    $1_DiemBlock_NewBlockEvent($round#$1_DiemBlock_NewBlockEvent(s), $proposer#$1_DiemBlock_NewBlockEvent(s), $previous_block_votes#$1_DiemBlock_NewBlockEvent(s), x)
}
function $IsValid'$1_DiemBlock_NewBlockEvent'(s: $1_DiemBlock_NewBlockEvent): bool {
    $IsValid'u64'($round#$1_DiemBlock_NewBlockEvent(s))
      && $IsValid'address'($proposer#$1_DiemBlock_NewBlockEvent(s))
      && $IsValid'vec'address''($previous_block_votes#$1_DiemBlock_NewBlockEvent(s))
      && $IsValid'u64'($time_microseconds#$1_DiemBlock_NewBlockEvent(s))
}
function {:inline} $IsEqual'$1_DiemBlock_NewBlockEvent'(s1: $1_DiemBlock_NewBlockEvent, s2: $1_DiemBlock_NewBlockEvent): bool {
    s1 == s2
}

// struct DiemVMConfig::DiemVMConfig at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:13:5+120
type {:datatype} $1_DiemVMConfig_DiemVMConfig;
function {:constructor} $1_DiemVMConfig_DiemVMConfig($gas_schedule: $1_DiemVMConfig_GasSchedule): $1_DiemVMConfig_DiemVMConfig;
function {:inline} $Update'$1_DiemVMConfig_DiemVMConfig'_gas_schedule(s: $1_DiemVMConfig_DiemVMConfig, x: $1_DiemVMConfig_GasSchedule): $1_DiemVMConfig_DiemVMConfig {
    $1_DiemVMConfig_DiemVMConfig(x)
}
function $IsValid'$1_DiemVMConfig_DiemVMConfig'(s: $1_DiemVMConfig_DiemVMConfig): bool {
    $IsValid'$1_DiemVMConfig_GasSchedule'($gas_schedule#$1_DiemVMConfig_DiemVMConfig(s))
}
function {:inline} $IsEqual'$1_DiemVMConfig_DiemVMConfig'(s1: $1_DiemVMConfig_DiemVMConfig, s2: $1_DiemVMConfig_DiemVMConfig): bool {
    s1 == s2
}

// struct DiemVMConfig::GasConstants at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:35:5+1690
type {:datatype} $1_DiemVMConfig_GasConstants;
function {:constructor} $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost: int, $global_memory_per_byte_write_cost: int, $min_transaction_gas_units: int, $large_transaction_cutoff: int, $intrinsic_gas_per_byte: int, $maximum_number_of_gas_units: int, $min_price_per_gas_unit: int, $max_price_per_gas_unit: int, $max_transaction_size_in_bytes: int, $gas_unit_scaling_factor: int, $default_account_size: int): $1_DiemVMConfig_GasConstants;
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_global_memory_per_byte_cost(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants(x, $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_global_memory_per_byte_write_cost(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), x, $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_min_transaction_gas_units(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), x, $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_large_transaction_cutoff(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), x, $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_intrinsic_gas_per_byte(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), x, $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_maximum_number_of_gas_units(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), x, $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_min_price_per_gas_unit(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), x, $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_max_price_per_gas_unit(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), x, $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_max_transaction_size_in_bytes(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), x, $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_gas_unit_scaling_factor(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), x, $default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasConstants'_default_account_size(s: $1_DiemVMConfig_GasConstants, x: int): $1_DiemVMConfig_GasConstants {
    $1_DiemVMConfig_GasConstants($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s), $global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s), $min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s), $large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s), $intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s), $maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s), $min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s), $max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s), $gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s), x)
}
function $IsValid'$1_DiemVMConfig_GasConstants'(s: $1_DiemVMConfig_GasConstants): bool {
    $IsValid'u64'($global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($min_transaction_gas_units#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($large_transaction_cutoff#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($min_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($max_price_per_gas_unit#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants(s))
      && $IsValid'u64'($default_account_size#$1_DiemVMConfig_GasConstants(s))
}
function {:inline} $IsEqual'$1_DiemVMConfig_GasConstants'(s1: $1_DiemVMConfig_GasConstants, s2: $1_DiemVMConfig_GasConstants): bool {
    s1 == s2
}

// struct DiemVMConfig::GasSchedule at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:29:5+164
type {:datatype} $1_DiemVMConfig_GasSchedule;
function {:constructor} $1_DiemVMConfig_GasSchedule($instruction_schedule: Vec (int), $native_schedule: Vec (int), $gas_constants: $1_DiemVMConfig_GasConstants): $1_DiemVMConfig_GasSchedule;
function {:inline} $Update'$1_DiemVMConfig_GasSchedule'_instruction_schedule(s: $1_DiemVMConfig_GasSchedule, x: Vec (int)): $1_DiemVMConfig_GasSchedule {
    $1_DiemVMConfig_GasSchedule(x, $native_schedule#$1_DiemVMConfig_GasSchedule(s), $gas_constants#$1_DiemVMConfig_GasSchedule(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasSchedule'_native_schedule(s: $1_DiemVMConfig_GasSchedule, x: Vec (int)): $1_DiemVMConfig_GasSchedule {
    $1_DiemVMConfig_GasSchedule($instruction_schedule#$1_DiemVMConfig_GasSchedule(s), x, $gas_constants#$1_DiemVMConfig_GasSchedule(s))
}
function {:inline} $Update'$1_DiemVMConfig_GasSchedule'_gas_constants(s: $1_DiemVMConfig_GasSchedule, x: $1_DiemVMConfig_GasConstants): $1_DiemVMConfig_GasSchedule {
    $1_DiemVMConfig_GasSchedule($instruction_schedule#$1_DiemVMConfig_GasSchedule(s), $native_schedule#$1_DiemVMConfig_GasSchedule(s), x)
}
function $IsValid'$1_DiemVMConfig_GasSchedule'(s: $1_DiemVMConfig_GasSchedule): bool {
    $IsValid'vec'u8''($instruction_schedule#$1_DiemVMConfig_GasSchedule(s))
      && $IsValid'vec'u8''($native_schedule#$1_DiemVMConfig_GasSchedule(s))
      && $IsValid'$1_DiemVMConfig_GasConstants'($gas_constants#$1_DiemVMConfig_GasSchedule(s))
}
function {:inline} $IsEqual'$1_DiemVMConfig_GasSchedule'(s1: $1_DiemVMConfig_GasSchedule, s2: $1_DiemVMConfig_GasSchedule): bool {
    s1 == s2
}

// struct DiemVersion::DiemVersion at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:9:5+68
type {:datatype} $1_DiemVersion_DiemVersion;
function {:constructor} $1_DiemVersion_DiemVersion($major: int): $1_DiemVersion_DiemVersion;
function {:inline} $Update'$1_DiemVersion_DiemVersion'_major(s: $1_DiemVersion_DiemVersion, x: int): $1_DiemVersion_DiemVersion {
    $1_DiemVersion_DiemVersion(x)
}
function $IsValid'$1_DiemVersion_DiemVersion'(s: $1_DiemVersion_DiemVersion): bool {
    $IsValid'u64'($major#$1_DiemVersion_DiemVersion(s))
}
function {:inline} $IsEqual'$1_DiemVersion_DiemVersion'(s1: $1_DiemVersion_DiemVersion, s2: $1_DiemVersion_DiemVersion): bool {
    s1 == s2
}
