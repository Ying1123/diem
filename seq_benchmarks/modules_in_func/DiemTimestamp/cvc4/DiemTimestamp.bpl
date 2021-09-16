
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

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:138:5+89
function {:inline} $1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    !$ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:158:5+90
function {:inline} $1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): bool {
    $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:120:10+104
function {:inline} $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds): int {
    $microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816))
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

// fun DiemTimestamp::assert_genesis [verification] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:143:5+102
procedure {:timeLimit 40} $1_DiemTimestamp_assert_genesis$verify() returns ()
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#122: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:143:5+102
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,5968,6070)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:143:5+102
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // @122 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:143:5+1
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#122 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // $t2 := DiemTimestamp::is_genesis() on_abort goto L3 with $t3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:16+12
    assume {:print "$at(18,6013,6025)"} true;
    call $t2 := $1_DiemTimestamp_is_genesis();
    if ($abort_flag) {
        assume {:print "$at(18,6013,6025)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(3,0):", $t3} $t3 == $t3;
        goto L3;
    }

    // $t4 := 0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:52+12
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := opaque begin: Errors::invalid_state($t4) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:30+35

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:30+35
    assume $IsValid'u64'($t5);

    // assume Eq<u64>($t5, 1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:30+35
    assume $IsEqual'u64'($t5, 1);

    // $t5 := opaque end: Errors::invalid_state($t4) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:30+35

    // trace_local[tmp#$1]($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:9+57
    assume {:print "$track_local(3,0,1):", $t5} $t5 == $t5;

    // trace_local[tmp#$0]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:9+57
    assume {:print "$track_local(3,0,0):", $t2} $t2 == $t2;

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:9+57
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:9+57
L1:

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:9+57
    assume {:print "$at(18,6006,6063)"} true;
    assume {:print "$track_abort(3,0):", $t5} $t5 == $t5;

    // $t3 := move($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:9+57
    $t3 := $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:9+57
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:144:66+1
L0:

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:145:5+1
    assume {:print "$at(18,6069,6070)"} true;
L2:

    // assert Not(Not(DiemTimestamp::$is_genesis[@122]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:153:9+51
    assume {:print "$at(18,6290,6341)"} true;
    assert {:msg "assert_failed(18,6290,6341): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#122);

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:153:9+51
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:145:5+1
    assume {:print "$at(18,6069,6070)"} true;
L3:

    // assert Not(DiemTimestamp::$is_genesis[@122]()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:146:5+93
    assume {:print "$at(18,6075,6168)"} true;
    assert {:msg "assert_failed(18,6075,6168): abort not covered by any of the `aborts_if` clauses"}
      !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#122);

    // assert And(Not(DiemTimestamp::$is_genesis[@122]()), Eq(1, $t3)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:146:5+93
    assert {:msg "assert_failed(18,6075,6168): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#122) && $IsEqual'num'(1, $t3));

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:146:5+93
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun DiemTimestamp::assert_operating [verification] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:163:5+108
procedure {:timeLimit 40} $1_DiemTimestamp_assert_operating$verify() returns ()
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#121: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:163:5+108
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,6710,6818)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:163:5+108
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // @121 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:163:5+1
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#121 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // $t2 := DiemTimestamp::is_operating() on_abort goto L3 with $t3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:16+14
    assume {:print "$at(18,6757,6771)"} true;
    call $t2 := $1_DiemTimestamp_is_operating();
    if ($abort_flag) {
        assume {:print "$at(18,6757,6771)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(3,1):", $t3} $t3 == $t3;
        goto L3;
    }

    // $t4 := 1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:54+14
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := opaque begin: Errors::invalid_state($t4) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:32+37

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:32+37
    assume $IsValid'u64'($t5);

    // assume Eq<u64>($t5, 1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:32+37
    assume $IsEqual'u64'($t5, 1);

    // $t5 := opaque end: Errors::invalid_state($t4) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:32+37

    // trace_local[tmp#$1]($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:9+61
    assume {:print "$track_local(3,1,1):", $t5} $t5 == $t5;

    // trace_local[tmp#$0]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:9+61
    assume {:print "$track_local(3,1,0):", $t2} $t2 == $t2;

    // if ($t2) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:9+61
    if ($t2) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:9+61
L1:

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:9+61
    assume {:print "$at(18,6750,6811)"} true;
    assume {:print "$track_abort(3,1):", $t5} $t5 == $t5;

    // $t3 := move($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:9+61
    $t3 := $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:9+61
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:164:70+1
L0:

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:165:5+1
    assume {:print "$at(18,6817,6818)"} true;
L2:

    // assert Not(Not(DiemTimestamp::$is_operating[@121]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#121);

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:165:5+1
    assume {:print "$at(18,6817,6818)"} true;
L3:

    // assert Not(DiemTimestamp::$is_operating[@121]()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:166:5+97
    assume {:print "$at(18,6823,6920)"} true;
    assert {:msg "assert_failed(18,6823,6920): abort not covered by any of the `aborts_if` clauses"}
      !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#121);

    // assert And(Not(DiemTimestamp::$is_operating[@121]()), Eq(1, $t3)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:166:5+97
    assert {:msg "assert_failed(18,6823,6920): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#121) && $IsEqual'num'(1, $t3));

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:166:5+97
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun DiemTimestamp::is_genesis [baseline] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:138:5+89
procedure {:inline 1} $1_DiemTimestamp_is_genesis() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $t2: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:139:42+9
    assume {:print "$at(18,5897,5906)"} true;
    $t0 := 173345816;
    assume $IsValid'address'($t0);

    // $t1 := exists<DiemTimestamp::CurrentTimeMicroseconds>($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:139:10+6
    $t1 := $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t0);

    // $t2 := !($t1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:139:9+1
    call $t2 := $Not($t1);

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:139:9+43
    assume {:print "$track_return(3,2,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:140:5+1
    assume {:print "$at(18,5912,5913)"} true;
L1:

    // return $t2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:140:5+1
    $ret0 := $t2;
    return;

}

// fun DiemTimestamp::is_genesis [verification] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:138:5+89
procedure {:timeLimit 40} $1_DiemTimestamp_is_genesis$verify() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $t2: bool;
    var $temp_0'bool': bool;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:138:5+89
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,5824,5913)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:138:5+89
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // $t0 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:139:42+9
    assume {:print "$at(18,5897,5906)"} true;
    $t0 := 173345816;
    assume $IsValid'address'($t0);

    // $t1 := exists<DiemTimestamp::CurrentTimeMicroseconds>($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:139:10+6
    $t1 := $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t0);

    // $t2 := !($t1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:139:9+1
    call $t2 := $Not($t1);

    // trace_return[0]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:139:9+43
    assume {:print "$track_return(3,2,0):", $t2} $t2 == $t2;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:140:5+1
    assume {:print "$at(18,5912,5913)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:140:5+1
    assert {:msg "assert_failed(18,5912,5913): function does not abort under this condition"}
      !false;

    // return $t2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:140:5+1
    $ret0 := $t2;
    return;

}

// fun DiemTimestamp::is_operating [baseline] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:158:5+90
procedure {:inline 1} $1_DiemTimestamp_is_operating() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:159:41+9
    assume {:print "$at(18,6626,6635)"} true;
    $t0 := 173345816;
    assume $IsValid'address'($t0);

    // $t1 := exists<DiemTimestamp::CurrentTimeMicroseconds>($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:159:9+6
    $t1 := $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:159:9+42
    assume {:print "$track_return(3,3,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:160:5+1
    assume {:print "$at(18,6641,6642)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:160:5+1
    $ret0 := $t1;
    return;

}

// fun DiemTimestamp::is_operating [verification] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:158:5+90
procedure {:timeLimit 40} $1_DiemTimestamp_is_operating$verify() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:158:5+90
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,6552,6642)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:158:5+90
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // $t0 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:159:41+9
    assume {:print "$at(18,6626,6635)"} true;
    $t0 := 173345816;
    assume $IsValid'address'($t0);

    // $t1 := exists<DiemTimestamp::CurrentTimeMicroseconds>($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:159:9+6
    $t1 := $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:159:9+42
    assume {:print "$track_return(3,3,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:160:5+1
    assume {:print "$at(18,6641,6642)"} true;
L1:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:160:5+1
    assert {:msg "assert_failed(18,6641,6642): function does not abort under this condition"}
      !false;

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:160:5+1
    $ret0 := $t1;
    return;

}

// fun DiemTimestamp::now_microseconds [verification] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:111:5+174
procedure {:timeLimit 40} $1_DiemTimestamp_now_microseconds$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $t3: $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $t4: int;
    var $temp_0'u64': int;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#135: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:111:5+174
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,4844,5018)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:118:17+6
    assume {:print "$at(18,5124,5130)"} true;
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // @135 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:111:5+1
    assume {:print "$at(18,4844,4845)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#135 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // opaque begin: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:112:9+18
    assume {:print "$at(18,4922,4940)"} true;

    // assume Identical($t0, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:112:9+18
    assume ($t0 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:112:9+18
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:112:9+18
L4:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t1)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:112:9+18
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:112:9+18
    assume {:print "$at(18,4922,4940)"} true;
    assume {:print "$track_abort(3,4):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:112:9+18
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:112:9+18
L3:

    // opaque end: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:112:9+18

    // $t2 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:113:48+9
    assume {:print "$at(18,4989,4998)"} true;
    $t2 := 173345816;
    assume $IsValid'address'($t2);

    // $t3 := get_global<DiemTimestamp::CurrentTimeMicroseconds>($t2) on_abort goto L2 with $t1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:113:9+13
    if (!$ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t2)) {
        call $ExecFailureAbort();
    } else {
        $t3 := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(18,4950,4963)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(3,4):", $t1} $t1 == $t1;
        goto L2;
    }

    // $t4 := get_field<DiemTimestamp::CurrentTimeMicroseconds>.microseconds($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:113:9+62
    $t4 := $microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($t3);

    // trace_return[0]($t4) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:113:9+62
    assume {:print "$track_return(3,4,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:114:5+1
    assume {:print "$at(18,5017,5018)"} true;
L1:

    // assert Not(Not(DiemTimestamp::$is_operating[@135]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#135);

    // assert Eq<u64>($t4, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:118:9+42
    assume {:print "$at(18,5116,5158)"} true;
    assert {:msg "assert_failed(18,5116,5158): post-condition does not hold"}
      $IsEqual'u64'($t4, $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // return $t4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:118:9+42
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:114:5+1
    assume {:print "$at(18,5017,5018)"} true;
L2:

    // assert Not(DiemTimestamp::$is_operating[@135]()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:115:5+141
    assume {:print "$at(18,5023,5164)"} true;
    assert {:msg "assert_failed(18,5023,5164): abort not covered by any of the `aborts_if` clauses"}
      !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#135);

    // assert And(Not(DiemTimestamp::$is_operating[@135]()), Eq(1, $t1)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:115:5+141
    assert {:msg "assert_failed(18,5023,5164): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#135) && $IsEqual'num'(1, $t1));

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:115:5+141
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun DiemTimestamp::now_seconds [verification] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
procedure {:timeLimit 40} $1_DiemTimestamp_now_seconds$verify() returns ($ret0: int)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $temp_0'u64': int;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#141: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,5326,5449)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+123
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:131:17+6
    assume {:print "$at(18,5550,5556)"} true;
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // @141 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:125:5+1
    assume {:print "$at(18,5326,5327)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#141 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // $t0 := opaque begin: DiemTimestamp::now_microseconds() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18
    assume {:print "$at(18,5399,5417)"} true;

    // assume Identical($t1, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18
    assume ($t1 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t1) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18
    if ($t1) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18
L4:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t2)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t2));

    // trace_abort($t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18
    assume {:print "$at(18,5399,5417)"} true;
    assume {:print "$track_abort(3,5):", $t2} $t2 == $t2;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18
L3:

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18
    assume $IsValid'u64'($t0);

    // assume Eq<u64>($t0, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18
    assume $IsEqual'u64'($t0, $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // $t0 := opaque end: DiemTimestamp::now_microseconds() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+18

    // $t3 := 1000000 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:30+23
    $t3 := 1000000;
    assume $IsValid'u64'($t3);

    // $t4 := /($t0, $t3) on_abort goto L2 with $t2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:28+1
    call $t4 := $Div($t0, $t3);
    if ($abort_flag) {
        assume {:print "$at(18,5418,5419)"} true;
        $t2 := $abort_code;
        assume {:print "$track_abort(3,5):", $t2} $t2 == $t2;
        goto L2;
    }

    // trace_return[0]($t4) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:126:9+44
    assume {:print "$track_return(3,5,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:127:5+1
    assume {:print "$at(18,5448,5449)"} true;
L1:

    // assert Not(Not(DiemTimestamp::$is_operating[@141]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#141);

    // assert Eq<u64>($t4, Div(DiemTimestamp::spec_now_microseconds(), 1000000)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:131:9+69
    assume {:print "$at(18,5542,5611)"} true;
    assert {:msg "assert_failed(18,5542,5611): post-condition does not hold"}
      $IsEqual'u64'($t4, ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) div 1000000));

    // return $t4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:131:9+69
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:127:5+1
    assume {:print "$at(18,5448,5449)"} true;
L2:

    // assert Not(DiemTimestamp::$is_operating[@141]()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:128:5+163
    assume {:print "$at(18,5454,5617)"} true;
    assert {:msg "assert_failed(18,5454,5617): abort not covered by any of the `aborts_if` clauses"}
      !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#141);

    // assert And(Not(DiemTimestamp::$is_operating[@141]()), Eq(1, $t2)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:128:5+163
    assert {:msg "assert_failed(18,5454,5617): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#141) && $IsEqual'num'(1, $t2));

    // abort($t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:128:5+163
    $abort_code := $t2;
    $abort_flag := true;
    return;

}

// fun DiemTimestamp::set_time_has_started [baseline] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:5+248
procedure {:inline 1} $1_DiemTimestamp_set_time_has_started(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:5+1
    assume {:print "$at(18,1665,1666)"} true;
    assume {:print "$track_local(3,6,0):", $t0} $t0 == $t0;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    assume {:print "$at(18,1736,1752)"} true;

    // assume Identical($t2, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    assume ($t2 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t2) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    if ($t2) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t3)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    assume {:print "$at(18,1736,1752)"} true;
    assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    assume {:print "$at(18,1762,1805)"} true;

    // assume Identical($t4, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    assume ($t4 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t4) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    if ($t4) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
L6:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t3)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    assume {:print "$at(18,1762,1805)"} true;
    assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
L5:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43

    // $t5 := 0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:61+1
    assume {:print "$at(18,1867,1868)"} true;
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := pack DiemTimestamp::CurrentTimeMicroseconds($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:21+43
    $t6 := $1_DiemTimestamp_CurrentTimeMicroseconds($t5);

    // move_to<DiemTimestamp::CurrentTimeMicroseconds>($t6, $t0) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:40:9+7
    assume {:print "$at(18,1880,1887)"} true;
    if ($ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_DiemTimestamp_CurrentTimeMicroseconds_$memory := $ResourceUpdate($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_Signer_spec_address_of($t0), $t6);
    }
    if ($abort_flag) {
        assume {:print "$at(18,1880,1887)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:41:5+1
    assume {:print "$at(18,1912,1913)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:41:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:41:5+1
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:41:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun DiemTimestamp::set_time_has_started [verification] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:5+248
procedure {:timeLimit 40} $1_DiemTimestamp_set_time_has_started$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#138: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#272: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:5+248
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,1665,1913)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:5+248
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:5+248
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // @138 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:5+1
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#138 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:5+1
    assume {:print "$track_local(3,6,0):", $t0} $t0 == $t0;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    assume {:print "$at(18,1736,1752)"} true;

    // assume Identical($t2, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    assume ($t2 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t2) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    if ($t2) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t3)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    assume {:print "$at(18,1736,1752)"} true;
    assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:37:9+16

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    assume {:print "$at(18,1762,1805)"} true;

    // assume Identical($t4, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    assume ($t4 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t4) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    if ($t4) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
L6:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t3)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    assume {:print "$at(18,1762,1805)"} true;
    assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43
L5:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:38:9+43

    // $t5 := 0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:61+1
    assume {:print "$at(18,1867,1868)"} true;
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := pack DiemTimestamp::CurrentTimeMicroseconds($t5) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:39:21+43
    $t6 := $1_DiemTimestamp_CurrentTimeMicroseconds($t5);

    // @272 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:36:5+248
    // state save for global update invariants
    assume {:print "$at(18,1665,1913)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#272 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // move_to<DiemTimestamp::CurrentTimeMicroseconds>($t6, $t0) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:40:9+7
    assume {:print "$at(18,1880,1887)"} true;
    if ($ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_DiemTimestamp_CurrentTimeMicroseconds_$memory := $ResourceUpdate($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $1_Signer_spec_address_of($t0), $t6);
    }
    if ($abort_flag) {
        assume {:print "$at(18,1880,1887)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(3,6):", $t3} $t3 == $t3;
        goto L2;
    }

    // assert Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,7328,7400)"} true;
    assert {:msg "assert_failed(18,7328,7400): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating[@272](), Le(DiemTimestamp::spec_now_microseconds[@272](), DiemTimestamp::spec_now_microseconds())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:185:9+109
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:185:9+109
    assume {:print "$at(18,7468,7577)"} true;
    assert {:msg "assert_failed(18,7468,7577): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#272) ==> ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#272) <= $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:41:5+1
    assume {:print "$at(18,1912,1913)"} true;
L1:

    // assert Not(Not(DiemTimestamp::$is_genesis[@138]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:153:9+51
    assume {:print "$at(18,6290,6341)"} true;
    assert {:msg "assert_failed(18,6290,6341): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#138);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:9+86
    assume {:print "$at(9,1379,1465)"} true;
    assert {:msg "assert_failed(9,1379,1465): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816);

    // assert DiemTimestamp::$is_operating() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:50:9+23
    assume {:print "$at(18,2380,2403)"} true;
    assert {:msg "assert_failed(18,2380,2403): post-condition does not hold"}
      $1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory);

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:50:9+23
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:41:5+1
    assume {:print "$at(18,1912,1913)"} true;
L2:

    // assert Or(Not(DiemTimestamp::$is_genesis[@138]()), Neq<address>(Signer::spec_address_of[]($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:42:5+491
    assume {:print "$at(18,1918,2409)"} true;
    assert {:msg "assert_failed(18,1918,2409): abort not covered by any of the `aborts_if` clauses"}
      (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#138) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // assert Or(And(Not(DiemTimestamp::$is_genesis[@138]()), Eq(1, $t3)), And(Neq<address>(Signer::spec_address_of[]($t0), a550c18), Eq(2, $t3))) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:42:5+491
    assert {:msg "assert_failed(18,1918,2409): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#138) && $IsEqual'num'(1, $t3)) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t3)));

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:42:5+491
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun DiemTimestamp::update_global_time [verification] at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
procedure {:timeLimit 40} $1_DiemTimestamp_update_global_time$verify(_$t0: $signer, _$t1: int, _$t2: int) returns ()
{
    // declare local variables
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: $Mutation ($1_DiemTimestamp_CurrentTimeMicroseconds);
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: $Mutation ($1_DiemTimestamp_CurrentTimeMicroseconds);
    var $t15: int;
    var $t16: int;
    var $t17: bool;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: bool;
    var $t22: int;
    var $t23: int;
    var $t24: $Mutation (int);
    var $t25: int;
    var $t0: $signer;
    var $t1: int;
    var $t2: int;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies: [int]bool;
    var $temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds': $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#140: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#273: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory#274: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion';
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    assume IsEmptyVec(p#$Mutation($t7));
    assume IsEmptyVec(p#$Mutation($t14));
    assume IsEmptyVec(p#$Mutation($t24));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,3247,4041)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    assume $IsValid'u64'($t2);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume Identical($t9, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:91:9+34
    assume {:print "$at(18,4165,4199)"} true;
    assume ($t9 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume CanModify<DiemTimestamp::CurrentTimeMicroseconds>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:89:9+52
    assume {:print "$at(18,4103,4155)"} true;
    assume $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies[173345816];

    // @140 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:89:9+52
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#140 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+1
    assume {:print "$at(18,3247,3248)"} true;
    assume {:print "$track_local(3,8,0):", $t0} $t0 == $t0;

    // trace_local[proposer]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+1
    assume {:print "$track_local(3,8,1):", $t1} $t1 == $t1;

    // trace_local[timestamp]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+1
    assume {:print "$track_local(3,8,2):", $t2} $t2 == $t2;

    // opaque begin: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+18
    assume {:print "$at(18,3403,3421)"} true;

    // assume Identical($t10, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+18
    assume ($t10 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t10) goto L10 else goto L9 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+18
    if ($t10) { goto L10; } else { goto L9; }

    // label L10 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+18
L10:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t11)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+18
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t11));

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+18
    assume {:print "$at(18,3403,3421)"} true;
    assume {:print "$track_abort(3,8):", $t11} $t11 == $t11;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+18
    goto L8;

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+18
L9:

    // opaque end: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:72:9+18

    // opaque begin: CoreAddresses::assert_vm($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:9+33
    assume {:print "$at(18,3480,3513)"} true;

    // assume Identical($t12, Neq<address>(Signer::spec_address_of($t0), 0)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:9+33
    assume ($t12 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 0));

    // if ($t12) goto L12 else goto L11 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:9+33
    if ($t12) { goto L12; } else { goto L11; }

    // label L12 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:9+33
L12:

    // assume And(Neq<address>(Signer::spec_address_of($t0), 0), Eq(2, $t11)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:9+33
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 0) && $IsEqual'num'(2, $t11));

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:9+33
    assume {:print "$at(18,3480,3513)"} true;
    assume {:print "$track_abort(3,8):", $t11} $t11 == $t11;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:9+33
    goto L8;

    // label L11 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:9+33
L11:

    // opaque end: CoreAddresses::assert_vm($t0) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:74:9+33

    // $t13 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:76:71+9
    assume {:print "$at(18,3586,3595)"} true;
    $t13 := 173345816;
    assume $IsValid'address'($t13);

    // assert CanModify<DiemTimestamp::CurrentTimeMicroseconds>($t13) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:76:28+17
    assert {:msg "assert_failed(18,3543,3560): caller does not have permission to modify `DiemTimestamp::CurrentTimeMicroseconds` at given address"}
      $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies[$t13];

    // $t14 := borrow_global<DiemTimestamp::CurrentTimeMicroseconds>($t13) on_abort goto L8 with $t11 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:76:28+17
    if (!$ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t13)) {
        call $ExecFailureAbort();
    } else {
        $t14 := $Mutation($Global($t13), EmptyVec(), $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $t13));
    }
    if ($abort_flag) {
        assume {:print "$at(18,3543,3560)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(3,8):", $t11} $t11 == $t11;
        goto L8;
    }

    // trace_local[global_timer]($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:76:13+12
    $temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds' := $Dereference($t14);
    assume {:print "$track_local(3,8,7):", $temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'} $temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds' == $temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds';

    // $t15 := get_field<DiemTimestamp::CurrentTimeMicroseconds>.microseconds($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:77:19+25
    assume {:print "$at(18,3616,3641)"} true;
    $t15 := $microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($Dereference($t14));

    // trace_local[now]($t15) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:77:13+3
    assume {:print "$track_local(3,8,8):", $t15} $t15 == $t15;

    // $t16 := 0x0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:78:25+11
    assume {:print "$at(18,3667,3678)"} true;
    $t16 := 0;
    assume $IsValid'address'($t16);

    // $t17 := ==($t1, $t16) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:78:22+2
    $t17 := $IsEqual'address'($t1, $t16);

    // if ($t17) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:78:9+336
    if ($t17) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:78:9+336
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:78:9+336
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:20+3
    assume {:print "$at(18,3782,3785)"} true;
L0:

    // $t18 := ==($t15, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:24+2
    $t18 := $IsEqual'u64'($t15, $t2);

    // $t19 := 2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:63+10
    $t19 := 2;
    assume $IsValid'u64'($t19);

    // $t20 := opaque begin: Errors::invalid_argument($t19) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:38+36

    // assume WellFormed($t20) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:38+36
    assume $IsValid'u64'($t20);

    // assume Eq<u64>($t20, 7) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:38+36
    assume $IsEqual'u64'($t20, 7);

    // $t20 := opaque end: Errors::invalid_argument($t19) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:38+36

    // trace_local[tmp#$4]($t20) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:13+62
    assume {:print "$track_local(3,8,4):", $t20} $t20 == $t20;

    // trace_local[tmp#$3]($t18) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:13+62
    assume {:print "$track_local(3,8,3):", $t18} $t18 == $t18;

    // if ($t18) goto L3 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:13+62
    if ($t18) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:13+62
L4:

    // destroy($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:13+62

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:13+62
    assume {:print "$at(18,3775,3837)"} true;
    assume {:print "$track_abort(3,8):", $t20} $t20 == $t20;

    // $t11 := move($t20) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:13+62
    $t11 := $t20;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:13+62
    goto L8;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:75+1
L3:

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:80:75+1
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:20+3
    assume {:print "$at(18,3922,3925)"} true;
L2:

    // $t21 := <($t15, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:24+1
    call $t21 := $Lt($t15, $t2);

    // $t22 := 2 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:62+10
    $t22 := 2;
    assume $IsValid'u64'($t22);

    // $t23 := opaque begin: Errors::invalid_argument($t22) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:37+36

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:37+36
    assume $IsValid'u64'($t23);

    // assume Eq<u64>($t23, 7) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:37+36
    assume $IsEqual'u64'($t23, 7);

    // $t23 := opaque end: Errors::invalid_argument($t22) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:37+36

    // trace_local[tmp#$6]($t23) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:13+61
    assume {:print "$track_local(3,8,6):", $t23} $t23 == $t23;

    // trace_local[tmp#$5]($t21) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:13+61
    assume {:print "$track_local(3,8,5):", $t21} $t21 == $t21;

    // if ($t21) goto L5 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:13+61
    if ($t21) { goto L5; } else { goto L6; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:13+61
L6:

    // destroy($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:13+61

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:13+61
    assume {:print "$at(18,3915,3976)"} true;
    assume {:print "$track_abort(3,8):", $t23} $t23 == $t23;

    // $t11 := move($t23) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:13+61
    $t11 := $t23;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:83:13+61
    goto L8;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:85:37+9
    assume {:print "$at(18,4025,4034)"} true;
L5:

    // $t24 := borrow_field<DiemTimestamp::CurrentTimeMicroseconds>.microseconds($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:85:9+25
    $t24 := $ChildMutation($t14, 0, $microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds($Dereference($t14)));

    // write_ref($t24, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:85:9+37
    $t24 := $UpdateMutation($t24, $t2);

    // write_back[Reference($t14).microseconds]($t24) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:85:9+37
    $t14 := $UpdateMutation($t14, $Update'$1_DiemTimestamp_CurrentTimeMicroseconds'_microseconds($Dereference($t14), $Dereference($t24)));

    // @273 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    // state save for global update invariants
    assume {:print "$at(18,3247,4041)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#273 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @274 := save_mem(DiemConfig::DiemConfig<DiemVersion::DiemVersion>) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:67:5+794
    $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory#274 := $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory;

    // write_back[DiemTimestamp::CurrentTimeMicroseconds@]($t14) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:85:9+37
    assume {:print "$at(18,3997,4034)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory := $ResourceUpdate($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $GlobalLocationAddress($t14),
        $Dereference($t14));

    // assert Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,7328,7400)"} true;
    assert {:msg "assert_failed(18,7328,7400): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating[@273](), Le(DiemTimestamp::spec_now_microseconds[@273](), DiemTimestamp::spec_now_microseconds())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:185:9+109
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:185:9+109
    assume {:print "$at(18,7468,7577)"} true;
    assert {:msg "assert_failed(18,7468,7577): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#273) ==> ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#273) <= $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // assert Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume {:print "$at(28,19472,19582)"} true;
    assert {:msg "assert_failed(28,19472,19582): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume {:print "$at(28,19981,20111)"} true;
    assert {:msg "assert_failed(28,19981,20111): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assert Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume {:print "$at(31,14007,14109)"} true;
    assert {:msg "assert_failed(31,14007,14109): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume {:print "$at(31,14119,14231)"} true;
    assert {:msg "assert_failed(31,14119,14231): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    assume {:print "$at(14,18414,18490)"} true;
    assert {:msg "assert_failed(14,18414,18490): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    assume {:print "$at(17,27551,27716)"} true;
    assert {:msg "assert_failed(17,27551,27716): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    assume {:print "$at(27,3536,3648)"} true;
    assert {:msg "assert_failed(27,3536,3648): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume {:print "$at(41,2283,2366)"} true;
    assert {:msg "assert_failed(41,2283,2366): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    assume {:print "$at(41,2643,2769)"} true;
    assert {:msg "assert_failed(41,2643,2769): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    assume {:print "$at(40,5607,5682)"} true;
    assert {:msg "assert_failed(40,5607,5682): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume {:print "$at(40,5738,5821)"} true;
    assert {:msg "assert_failed(40,5738,5821): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    assume {:print "$at(40,6295,6421)"} true;
    assert {:msg "assert_failed(40,6295,6421): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    assume {:print "$at(33,6639,6714)"} true;
    assert {:msg "assert_failed(33,6639,6714): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    assume {:print "$at(22,24115,24193)"} true;
    assert {:msg "assert_failed(22,24115,24193): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    assume {:print "$at(19,6945,7080)"} true;
    assert {:msg "assert_failed(19,6945,7080): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    assume {:print "$at(8,1850,1935)"} true;
    assert {:msg "assert_failed(8,1850,1935): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    assume {:print "$at(4,7550,7658)"} true;
    assert {:msg "assert_failed(4,7550,7658): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    assume {:print "$at(4,7852,7960)"} true;
    assert {:msg "assert_failed(4,7852,7960): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    assume {:print "$at(4,8125,8243)"} true;
    assert {:msg "assert_failed(4,8125,8243): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assert Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    assume {:print "$at(4,8499,8595)"} true;
    assert {:msg "assert_failed(4,8499,8595): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    assume {:print "$at(12,106356,106461)"} true;
    assert {:msg "assert_failed(12,106356,106461): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    assume {:print "$at(12,106532,106629)"} true;
    assert {:msg "assert_failed(12,106532,106629): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    assume {:print "$at(13,4727,4802)"} true;
    assert {:msg "assert_failed(13,4727,4802): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    assume {:print "$at(20,9517,9621)"} true;
    assert {:msg "assert_failed(20,9517,9621): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    assume {:print "$at(21,2608,2711)"} true;
    assert {:msg "assert_failed(21,2608,2711): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), Le(select DiemVersion::DiemVersion.major(DiemConfig::$get[@274]<DiemVersion::DiemVersion>()), select DiemVersion::DiemVersion.major(DiemConfig::$get<DiemVersion::DiemVersion>()))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:101:9+177
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:101:9+177
    assume {:print "$at(21,3945,4122)"} true;
    assert {:msg "assert_failed(21,3945,4122): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($major#$1_DiemVersion_DiemVersion($1_DiemConfig_$get'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory#274)) <= $major#$1_DiemVersion_DiemVersion($1_DiemConfig_$get'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory))));

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:86:5+1
    assume {:print "$at(18,4040,4041)"} true;
L7:

    // assume Identical($t25, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:92:9+44
    assume {:print "$at(18,4208,4252)"} true;
    assume ($t25 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assert Not(Not(DiemTimestamp::$is_operating[@140]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#140);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t0), 0)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:65:9+88
    assume {:print "$at(9,2616,2704)"} true;
    assert {:msg "assert_failed(9,2616,2704): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t0), 0);

    // assert Not((if Eq<address>($t1, 0) {{let ; Neq<u64>($t9, $t2)}} else {{let ; Ge($t9, $t2)}})) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:100:9+225
    assume {:print "$at(18,4560,4785)"} true;
    assert {:msg "assert_failed(18,4560,4785): function does not abort under this condition"}
      !if ($IsEqual'address'($t1, 0)) then (!$IsEqual'u64'($t9, $t2)) else (($t9 >= $t2));

    // assert Eq<u64>($t25, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:97:9+30
    assume {:print "$at(18,4428,4458)"} true;
    assert {:msg "assert_failed(18,4428,4458): post-condition does not hold"}
      $IsEqual'u64'($t25, $t2);

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:97:9+30
    return;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:86:5+1
    assume {:print "$at(18,4040,4041)"} true;
L8:

    // assert Or(Or(Not(DiemTimestamp::$is_operating[@140]()), Neq<address>(Signer::spec_address_of[]($t0), 0)), (if Eq<address>($t1, 0) {{let ; Neq<u64>($t9, $t2)}} else {{let ; Ge($t9, $t2)}})) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:87:5+745
    assume {:print "$at(18,4046,4791)"} true;
    assert {:msg "assert_failed(18,4046,4791): abort not covered by any of the `aborts_if` clauses"}
      ((!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#140) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 0)) || if ($IsEqual'address'($t1, 0)) then (!$IsEqual'u64'($t9, $t2)) else (($t9 >= $t2)));

    // assert Or(Or(And(Not(DiemTimestamp::$is_operating[@140]()), Eq(1, $t11)), And(Neq<address>(Signer::spec_address_of[]($t0), 0), Eq(2, $t11))), And((if Eq<address>($t1, 0) {{let ; Neq<u64>($t9, $t2)}} else {{let ; Ge($t9, $t2)}}), Eq(7, $t11))) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:87:5+745
    assert {:msg "assert_failed(18,4046,4791): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#140) && $IsEqual'num'(1, $t11)) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 0) && $IsEqual'num'(2, $t11))) || (if ($IsEqual'address'($t1, 0)) then (!$IsEqual'u64'($t9, $t2)) else (($t9 >= $t2)) && $IsEqual'num'(7, $t11)));

    // abort($t11) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:87:5+745
    $abort_code := $t11;
    $abort_flag := true;
    return;

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
function {:inline} $1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'(v: Vec ($1_DiemAccount_KeyRotationCapability)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_DiemAccount_KeyRotationCapability'(v), 0)
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Vector.move:91:5+86
function {:inline} $1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'(v: Vec ($1_DiemAccount_WithdrawCapability)): bool {
    $IsEqual'u64'($1_Vector_$length'$1_DiemAccount_WithdrawCapability'(v), 0)
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

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:95:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'): $1_DiemSystem_DiemSystem {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:95:5+260
function {:inline} $1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'): $1_RegisteredCurrencies_RegisteredCurrencies {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'($ResourceValue($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:95:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:95:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemConsensusConfig_DiemConsensusConfig'($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'): $1_DiemConsensusConfig_DiemConsensusConfig {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:95:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'): $1_DiemVMConfig_DiemVMConfig {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:95:5+260
function {:inline} $1_DiemConfig_$get'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'): $1_DiemVersion_DiemVersion {
    (var addr := 173345816; $payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'($ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:206:5+94
function {:inline} $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory: $Memory $1_DiemConfig_DisableReconfiguration): bool {
    !$ResourceExists($1_DiemConfig_DisableReconfiguration_$memory, 173345816)
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
function {:inline} $1_DiemConfig_spec_is_published'$1_DiemConsensusConfig_DiemConsensusConfig'($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'): bool {
    $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, 173345816)
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

// struct DiemConfig::DiemConfig<DiemConsensusConfig::DiemConsensusConfig> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:18:5+156
type {:datatype} $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig';
function {:constructor} $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'($payload: $1_DiemConsensusConfig_DiemConsensusConfig): $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig';
function {:inline} $Update'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''_payload(s: $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig', x: $1_DiemConsensusConfig_DiemConsensusConfig): $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig' {
    $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'(x)
}
function $IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''(s: $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'): bool {
    $IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'($payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''(s1: $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig', s2: $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'): bool {
    s1 == s2
}
var $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory: $Memory $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig';

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

// struct DiemConfig::DisableReconfiguration at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:44:5+40
type {:datatype} $1_DiemConfig_DisableReconfiguration;
function {:constructor} $1_DiemConfig_DisableReconfiguration($dummy_field: bool): $1_DiemConfig_DisableReconfiguration;
function {:inline} $Update'$1_DiemConfig_DisableReconfiguration'_dummy_field(s: $1_DiemConfig_DisableReconfiguration, x: bool): $1_DiemConfig_DisableReconfiguration {
    $1_DiemConfig_DisableReconfiguration(x)
}
function $IsValid'$1_DiemConfig_DisableReconfiguration'(s: $1_DiemConfig_DisableReconfiguration): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_DisableReconfiguration(s))
}
function {:inline} $IsEqual'$1_DiemConfig_DisableReconfiguration'(s1: $1_DiemConfig_DisableReconfiguration, s2: $1_DiemConfig_DisableReconfiguration): bool {
    s1 == s2
}
var $1_DiemConfig_DisableReconfiguration_$memory: $Memory $1_DiemConfig_DisableReconfiguration;

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

// struct DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:41:5+65
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies' {
    $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''(s: $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''(s1: $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies', s2: $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies';

// struct DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:41:5+65
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption' {
    $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''(s1: $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption', s2: $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';

// struct DiemConfig::ModifyConfigCapability<DiemConsensusConfig::DiemConsensusConfig> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:41:5+65
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig' {
    $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''(s1: $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig', s2: $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig';

// struct DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:41:5+65
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig' {
    $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''(s1: $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig', s2: $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig';

// struct DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion> at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:41:5+65
type {:datatype} $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion';
function {:constructor} $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'($dummy_field: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion';
function {:inline} $Update'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''_dummy_field(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion', x: bool): $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion' {
    $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'(x)
}
function $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''(s: $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'): bool {
    $IsValid'bool'($dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'(s))
}
function {:inline} $IsEqual'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''(s1: $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion', s2: $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'): bool {
    s1 == s2
}
var $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory: $Memory $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion';

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

// fun DiemSystem::initialize_validator_set [baseline] at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:99:5+583
procedure {:inline 1} $1_DiemSystem_initialize_validator_set(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: Vec ($1_DiemSystem_ValidatorInfo);
    var $t12: $1_DiemSystem_DiemSystem;
    var $t13: int;
    var $t14: $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';
    var $t15: bool;
    var $t16: int;
    var $t17: bool;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: $1_DiemSystem_CapabilityHolder;
    var $t0: $signer;
    var $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies: [int]bool;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'': $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'': $1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_DiemConfig_Configuration_$memory#172: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:122:9+50
    assume {:print "$at(17,5446,5496)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:99:5+1
    assume {:print "$at(17,4630,4631)"} true;
    assume {:print "$track_local(14,5,0):", $t0} $t0 == $t0;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:102:9+31
    assume {:print "$at(17,4712,4743)"} true;

    // assume Identical($t6, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:102:9+31
    assume ($t6 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:102:9+31
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:102:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t7)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:102:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:102:9+31
    assume {:print "$at(17,4712,4743)"} true;
    assume {:print "$track_abort(14,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:102:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:102:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:102:9+31

    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:9+35
    assume {:print "$at(17,4753,4788)"} true;

    // assume Identical($t9, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t8))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:9+35
    assume ($t9 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t8)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t9) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:9+35
    if ($t9) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:9+35
L7:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t7)), And(Not(exists<Roles::RoleId>($t8)), Eq(5, $t7))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 0), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t7)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t8) && $IsEqual'num'(5, $t7))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 0) && $IsEqual'num'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:9+35
    assume {:print "$at(17,4753,4788)"} true;
    assume {:print "$track_abort(14,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:9+35
L6:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:103:9+35

    // $t10 := 0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:108:25+1
    assume {:print "$at(17,4945,4946)"} true;
    $t10 := 0;
    assume $IsValid'u8'($t10);

    // $t11 := Vector::empty<DiemSystem::ValidatorInfo>() on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:109:29+15
    assume {:print "$at(17,4976,4991)"} true;
    call $t11 := $1_Vector_empty'$1_DiemSystem_ValidatorInfo'();
    if ($abort_flag) {
        assume {:print "$at(17,4976,4991)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(14,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // $t12 := pack DiemSystem::DiemSystem($t10, $t11) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:107:13+98
    assume {:print "$at(17,4908,5006)"} true;
    $t12 := $1_DiemSystem_DiemSystem($t10, $t11);

    // assume Identical($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t13 == $1_Signer_spec_address_of($t0));

    // $t14 := opaque begin: DiemConfig::publish_new_config_and_get_capability<DiemSystem::DiemSystem>($t0, $t12) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    assume {:print "$at(17,4809,5017)"} true;

    // assume Identical($t15, Or(Or(Or(Not(exists<Roles::RoleId>($t13)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18)), exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    assume ($t15 == (((!$ResourceExists($1_Roles_RoleId_$memory, $t13) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)) || $ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816)));

    // if ($t15) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    if ($t15) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
L9:

    // assume Or(Or(Or(And(Not(exists<Roles::RoleId>($t13)), Eq(5, $t7)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t7))), And(exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18), Eq(6, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    assume ((((!$ResourceExists($1_Roles_RoleId_$memory, $t13) && $IsEqual'num'(5, $t7)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0) && $IsEqual'num'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t7))) || ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816) && $IsEqual'num'(6, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    assume {:print "$at(17,4809,5017)"} true;
    assume {:print "$track_abort(14,5):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
L8:

    // @172 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    $1_DiemConfig_Configuration_$memory#172 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'';
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, 173345816);
    }

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    assume $IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''($t14);

    // assume DiemConfig::spec_is_published<DiemSystem::DiemSystem>() at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    assume $1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory);

    // assume Eq<DiemSystem::DiemSystem>(DiemConfig::$get<DiemSystem::DiemSystem>(), $t12) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    assume $IsEqual'$1_DiemSystem_DiemSystem'($1_DiemConfig_$get'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), $t12);

    // assume Eq<bool>(DiemConfig::spec_has_config[@172](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#172), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // $t14 := opaque end: DiemConfig::publish_new_config_and_get_capability<DiemSystem::DiemSystem>($t0, $t12) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:19+208

    // trace_local[cap]($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:105:13+3
    assume {:print "$track_local(14,5,3):", $t14} $t14 == $t14;

    // $t16 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:113:39+9
    assume {:print "$at(17,5073,5082)"} true;
    $t16 := 173345816;
    assume $IsValid'address'($t16);

    // $t17 := exists<DiemSystem::CapabilityHolder>($t16) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:113:14+6
    $t17 := $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, $t16);

    // $t18 := !($t17) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:113:13+1
    call $t18 := $Not($t17);

    // $t19 := 0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:114:39+18
    assume {:print "$at(17,5123,5141)"} true;
    $t19 := 0;
    assume $IsValid'u64'($t19);

    // $t20 := opaque begin: Errors::already_published($t19) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:114:13+45

    // assume WellFormed($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:114:13+45
    assume $IsValid'u64'($t20);

    // assume Eq<u64>($t20, 6) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:114:13+45
    assume $IsEqual'u64'($t20, 6);

    // $t20 := opaque end: Errors::already_published($t19) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:114:13+45

    // trace_local[tmp#$2]($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:9+125
    assume {:print "$at(17,5027,5152)"} true;
    assume {:print "$track_local(14,5,2):", $t20} $t20 == $t20;

    // trace_local[tmp#$1]($t18) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:9+125
    assume {:print "$track_local(14,5,1):", $t18} $t18 == $t18;

    // if ($t18) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:9+125
    if ($t18) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:9+125
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:9+125

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:9+125
    assume {:print "$at(17,5027,5152)"} true;
    assume {:print "$track_abort(14,5):", $t20} $t20 == $t20;

    // $t7 := move($t20) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:9+125
    $t7 := $t20;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:112:9+125
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:116:17+10
    assume {:print "$at(17,5170,5180)"} true;
L0:

    // $t21 := pack DiemSystem::CapabilityHolder($t14) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:116:29+24
    $t21 := $1_DiemSystem_CapabilityHolder($t14);

    // move_to<DiemSystem::CapabilityHolder>($t21, $t0) on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:116:9+7
    if ($ResourceExists($1_DiemSystem_CapabilityHolder_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_DiemSystem_CapabilityHolder_$memory := $ResourceUpdate($1_DiemSystem_CapabilityHolder_$memory, $1_Signer_spec_address_of($t0), $t21);
    }
    if ($abort_flag) {
        assume {:print "$at(17,5162,5169)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(14,5):", $t7} $t7 == $t7;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:117:5+1
    assume {:print "$at(17,5212,5213)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:117:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:117:5+1
L3:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:117:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:204:10+244
function {:inline} $1_FixedPoint32_spec_create_from_rational(numerator: int, denominator: int): $1_FixedPoint32_FixedPoint32 {
    if ($IsEqual'num'(numerator, denominator)) then ($1_FixedPoint32_FixedPoint32(1)) else ($1_FixedPoint32_FixedPoint32(2))
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

// fun RegisteredCurrencies::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:22:5+280
procedure {:inline 1} $1_RegisteredCurrencies_initialize(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: Vec (Vec (int));
    var $t8: $1_RegisteredCurrencies_RegisteredCurrencies;
    var $t9: int;
    var $t10: bool;
    var $t0: $signer;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'': $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'': $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $1_DiemConfig_Configuration_$memory#218: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:22:5+1
    assume {:print "$at(27,847,848)"} true;
    assume {:print "$track_local(17,1,0):", $t0} $t0 == $t0;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    assume {:print "$at(27,900,931)"} true;

    // assume Identical($t3, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    assume ($t3 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t4)) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    assume {:print "$at(27,900,931)"} true;
    assume {:print "$track_abort(17,1):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:23:9+31

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    assume {:print "$at(27,941,976)"} true;

    // assume Identical($t6, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t5))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    assume ($t6 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t5)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t6) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    if ($t6) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t4)), And(Not(exists<Roles::RoleId>($t5)), Eq(5, $t4))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 0), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t4)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t5) && $IsEqual'num'(5, $t4))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 0) && $IsEqual'num'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    assume {:print "$at(27,941,976)"} true;
    assume {:print "$track_abort(17,1):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:24:9+35

    // $t7 := Vector::empty<vector<u8>>() on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:52+15
    assume {:print "$at(27,1093,1108)"} true;
    call $t7 := $1_Vector_empty'vec'u8''();
    if ($abort_flag) {
        assume {:print "$at(27,1093,1108)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(17,1):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t8 := pack RegisteredCurrencies::RegisteredCurrencies($t7) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:27:13+56
    $t8 := $1_RegisteredCurrencies_RegisteredCurrencies($t7);

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<RegisteredCurrencies::RegisteredCurrencies>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume {:print "$at(27,986,1120)"} true;

    // assume Identical($t10, Or(Or(Or(Or(DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>(), exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume ($t10 == (((($1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t10) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    if ($t10) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>(), exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t9)), Eq(5, $t4))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume (((($1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t9) && $IsEqual'num'(5, $t4))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0) && $IsEqual'num'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume {:print "$at(27,986,1120)"} true;
    assume {:print "$track_abort(17,1):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
L7:

    // @218 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    $1_DiemConfig_Configuration_$memory#218 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'';
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'');
    } else {
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816);
    }

    // modifies global<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(a550c18) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'';
        $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816, $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816);
    }

    // assume exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory);

    // assume Eq<RegisteredCurrencies::RegisteredCurrencies>(DiemConfig::$get<RegisteredCurrencies::RegisteredCurrencies>(), $t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory), $t8);

    // assume Eq<bool>(DiemConfig::spec_has_config[@218](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#218), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<RegisteredCurrencies::RegisteredCurrencies>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:25:9+134

    // label L1 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:29:5+1
    assume {:print "$at(27,1126,1127)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:29:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:29:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:29:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun RegisteredCurrencies::add_currency_code [baseline] at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:49:5+449
procedure {:inline 1} $1_RegisteredCurrencies_add_currency_code(_$t0: $signer, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $1_RegisteredCurrencies_RegisteredCurrencies;
    var $t5: $1_DiemConfig_Configuration;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: $1_RegisteredCurrencies_RegisteredCurrencies;
    var $t10: Vec (Vec (int));
    var $t11: bool;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: $Mutation ($1_RegisteredCurrencies_RegisteredCurrencies);
    var $t16: $Mutation (Vec (Vec (int)));
    var $t17: $1_RegisteredCurrencies_RegisteredCurrencies;
    var $t18: $1_DiemConfig_Configuration;
    var $t19: int;
    var $t20: bool;
    var $t0: $signer;
    var $t1: Vec (int);
    var $temp_0'$1_DiemConfig_Configuration': $1_DiemConfig_Configuration;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'': $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies';
    var $temp_0'$1_RegisteredCurrencies_RegisteredCurrencies': $1_RegisteredCurrencies_RegisteredCurrencies;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_DiemConfig_Configuration_$memory#178: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t15));
    assume IsEmptyVec(p#$Mutation($t16));

    // bytecode translation starts here
    // assume Identical($t5, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t5 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t6, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t6 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:49:5+1
    assume {:print "$at(27,1822,1823)"} true;
    assume {:print "$track_local(17,0,0):", $t0} $t0 == $t0;

    // trace_local[currency_code]($t1) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:49:5+1
    assume {:print "$track_local(17,0,1):", $t1} $t1 == $t1;

    // $t4 := opaque begin: DiemConfig::get<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume {:print "$at(27,1945,1984)"} true;

    // assume Identical($t7, Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume ($t7 == !$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816));

    // if ($t7) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    if ($t7) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
L5:

    // assume And(Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18)), Eq(5, $t8)) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume (!$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816) && $IsEqual'num'(5, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume {:print "$at(27,1945,1984)"} true;
    assume {:print "$track_abort(17,0):", $t8} $t8 == $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
L4:

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume $IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'($t4);

    // assume Eq<RegisteredCurrencies::RegisteredCurrencies>($t4, DiemConfig::$get<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39
    assume $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'($t4, $1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // $t4 := opaque end: DiemConfig::get<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:22+39

    // trace_local[config]($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:53:13+6
    assume {:print "$track_local(17,0,4):", $t4} $t4 == $t4;

    // $t9 := copy($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:32+6
    assume {:print "$at(27,2033,2039)"} true;
    $t9 := $t4;

    // $t10 := get_field<RegisteredCurrencies::RegisteredCurrencies>.currency_codes($t9) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:31+22
    $t10 := $currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies($t9);

    // $t11 := Vector::contains<vector<u8>>($t10, $t1) on_abort goto L3 with $t8 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:14+56
    call $t11 := $1_Vector_contains'vec'u8''($t10, $t1);
    if ($abort_flag) {
        assume {:print "$at(27,2015,2071)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(17,0):", $t8} $t8 == $t8;
        goto L3;
    }

    // $t12 := !($t11) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:55:13+1
    call $t12 := $Not($t11);

    // $t13 := 0 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:38+28
    assume {:print "$at(27,2110,2138)"} true;
    $t13 := 0;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:13+54

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:13+54
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 7) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:13+54
    assume $IsEqual'u64'($t14, 7);

    // $t14 := opaque end: Errors::invalid_argument($t13) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:56:13+54

    // trace_local[tmp#$3]($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    assume {:print "$at(27,1994,2149)"} true;
    assume {:print "$track_local(17,0,3):", $t14} $t14 == $t14;

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    assume {:print "$track_local(17,0,2):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    assume {:print "$at(27,1994,2149)"} true;
    assume {:print "$track_abort(17,0):", $t14} $t14 == $t14;

    // $t8 := move($t14) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    $t8 := $t14;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:54:9+155
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:32+6
    assume {:print "$at(27,2182,2188)"} true;
L0:

    // $t15 := borrow_local($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:32+6
    $t15 := $Mutation($Local(4), EmptyVec(), $t4);

    // $t16 := borrow_field<RegisteredCurrencies::RegisteredCurrencies>.currency_codes($t15) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:27+26
    $t16 := $ChildMutation($t15, 0, $currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies($Dereference($t15)));

    // Vector::push_back<vector<u8>>($t16, $t1) on_abort goto L3 with $t8 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:9+60
    call $t16 := $1_Vector_push_back'vec'u8''($t16, $t1);
    if ($abort_flag) {
        assume {:print "$at(27,2159,2219)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(17,0):", $t8} $t8 == $t8;
        goto L3;
    }

    // write_back[Reference($t15).currency_codes]($t16) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:9+60
    $t15 := $UpdateMutation($t15, $Update'$1_RegisteredCurrencies_RegisteredCurrencies'_currency_codes($Dereference($t15), $Dereference($t16)));

    // write_back[LocalRoot($t4)@]($t15) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:58:9+60
    $t4 := $Dereference($t15);

    // $t17 := move($t4) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:37+6
    assume {:print "$at(27,2257,2263)"} true;
    $t17 := $t4;

    // assume Identical($t18, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t18 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t19, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t19 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume {:print "$at(27,2229,2264)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque begin: DiemConfig::set<RegisteredCurrencies::RegisteredCurrencies>($t0, $t17) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35

    // assume Identical($t20, Or(Or(Not(exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18))), And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t18), 18446744073709551615)), Lt($t19, select DiemConfig::Configuration.last_reconfiguration_time($t18))))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume ($t20 == ((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0)) || !$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816)) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t18) < 18446744073709551615)) && ($t19 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t18)))));

    // if ($t20) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    if ($t20) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
L7:

    // assume Or(Or(And(Not(exists<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(Signer::spec_address_of($t0))), Eq(4, $t8)), And(Not(exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18)), Eq(5, $t8))), And(And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t18), 18446744073709551615)), Lt($t19, select DiemConfig::Configuration.last_reconfiguration_time($t18))), Eq(1, $t8))) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume (((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(4, $t8)) || (!$ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816) && $IsEqual'num'(5, $t8))) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t18) < 18446744073709551615)) && ($t19 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t18))) && $IsEqual'num'(1, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume {:print "$at(27,2229,2264)"} true;
    assume {:print "$track_abort(17,0):", $t8} $t8 == $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
L6:

    // @178 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    $1_DiemConfig_Configuration_$memory#178 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::Configuration>(a550c18) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, 173345816, $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, 173345816);
    }

    // modifies global<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(a550c18) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'';
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'');
    } else {
        $1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, 173345816);
    }

    // assume DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>() at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory);

    // assume Eq<RegisteredCurrencies::RegisteredCurrencies>(DiemConfig::$get<RegisteredCurrencies::RegisteredCurrencies>(), $t17) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume $IsEqual'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_$get'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory), $t17);

    // assume Eq<bool>(DiemConfig::spec_has_config[@178](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#178), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::set<RegisteredCurrencies::RegisteredCurrencies>($t0, $t17) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:59:9+35

    // label L2 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:5+1
    assume {:print "$at(27,2270,2271)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:5+1
L3:

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:60:5+1
    $abort_code := $t8;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1408:5+184
function {:inline} $1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    ($1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && !$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'($ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1408:5+184
function {:inline} $1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    ($1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && !$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'($ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1430:10+117
function {:inline} $1_Diem_spec_scaling_factor'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): int {
    $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1826:9+108
function {:inline} $1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1826:9+108
function {:inline} $1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1852:9+122
function {:inline} $1_Diem_spec_has_mint_capability'$1_XUS_XUS'($1_Diem_MintCapability'$1_XUS_XUS'_$memory: $Memory $1_Diem_MintCapability'$1_XUS_XUS', addr: int): bool {
    $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1852:9+122
function {:inline} $1_Diem_spec_has_mint_capability'$1_XDX_XDX'($1_Diem_MintCapability'$1_XDX_XDX'_$memory: $Memory $1_Diem_MintCapability'$1_XDX_XDX', addr: int): bool {
    $ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, addr)
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

// struct Diem::BurnCapability<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/Diem.move:37:5+58
type {:datatype} $1_Diem_BurnCapability'$1_XUS_XUS';
function {:constructor} $1_Diem_BurnCapability'$1_XUS_XUS'($dummy_field: bool): $1_Diem_BurnCapability'$1_XUS_XUS';
function {:inline} $Update'$1_Diem_BurnCapability'$1_XUS_XUS''_dummy_field(s: $1_Diem_BurnCapability'$1_XUS_XUS', x: bool): $1_Diem_BurnCapability'$1_XUS_XUS' {
    $1_Diem_BurnCapability'$1_XUS_XUS'(x)
}
function $IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''(s: $1_Diem_BurnCapability'$1_XUS_XUS'): bool {
    $IsValid'bool'($dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_Diem_BurnCapability'$1_XUS_XUS''(s1: $1_Diem_BurnCapability'$1_XUS_XUS', s2: $1_Diem_BurnCapability'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_Diem_BurnCapability'$1_XUS_XUS'_$memory: $Memory $1_Diem_BurnCapability'$1_XUS_XUS';

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

// fun Diem::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:248:5+247
procedure {:inline 1} $1_Diem_initialize(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:248:5+1
    assume {:print "$at(11,12701,12702)"} true;
    assume {:print "$track_local(18,16,0):", $t0} $t0 == $t0;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    assume {:print "$at(11,12769,12800)"} true;

    // assume Identical($t3, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    assume ($t3 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    assume {:print "$at(11,12769,12800)"} true;
    assume {:print "$track_abort(18,16):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/Diem.move:251:9+31

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    assume {:print "$at(11,12844,12887)"} true;

    // assume Identical($t5, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    assume ($t5 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
L6:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    assume {:print "$at(11,12844,12887)"} true;
    assume {:print "$track_abort(18,16):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43
L5:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:253:9+43

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // RegisteredCurrencies::initialize($t0) on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:254:9+44
    assume {:print "$at(11,12897,12941)"} true;
    call $1_RegisteredCurrencies_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(11,12897,12941)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(18,16):", $t4} $t4 == $t4;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:255:5+1
    assume {:print "$at(11,12947,12948)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:255:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:255:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:255:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun Diem::create_preburn<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:550:5+248
procedure {:inline 1} $1_Diem_create_preburn'$1_XUS_XUS'(_$t0: $signer) returns ($ret0: $1_Diem_Preburn'$1_XUS_XUS')
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: $1_Diem_Diem'$1_XUS_XUS';
    var $t7: $1_Diem_Preburn'$1_XUS_XUS';
    var $t0: $signer;
    var $temp_0'$1_Diem_Preburn'$1_XUS_XUS'': $1_Diem_Preburn'$1_XUS_XUS';
    var $temp_0'signer': $signer;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:550:5+1
    assume {:print "$at(11,26110,26111)"} true;
    assume {:print "$track_local(18,11,0):", $t0} $t0 == $t0;

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume {:print "$at(11,26210,26255)"} true;

    // assume Identical($t3, Or(Or(Not(exists<Roles::RoleId>($t2)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume ($t3 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t2) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
L4:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t2)), Eq(5, $t4)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t2) && $IsEqual'num'(5, $t4)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1) && $IsEqual'num'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume {:print "$at(11,26210,26255)"} true;
    assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
L3:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume {:print "$at(11,26265,26295)"} true;

    // assume Identical($t5, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume ($t5 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
L6:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(5, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume {:print "$at(11,26265,26295)"} true;
    assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
L5:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30

    // $t6 := Diem::zero<#0>() on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:555:38+16
    assume {:print "$at(11,26334,26350)"} true;
    call $t6 := $1_Diem_zero'$1_XUS_XUS'();
    if ($abort_flag) {
        assume {:print "$at(11,26334,26350)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t7 := pack Diem::Preburn<#0>($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:555:9+47
    $t7 := $1_Diem_Preburn'$1_XUS_XUS'($t6);

    // trace_return[0]($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:555:9+47
    assume {:print "$track_return(18,11,0):", $t7} $t7 == $t7;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    assume {:print "$at(11,26357,26358)"} true;
L1:

    // return $t7 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    $ret0 := $t7;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun Diem::create_preburn<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:550:5+248
procedure {:inline 1} $1_Diem_create_preburn'$1_XDX_XDX'(_$t0: $signer) returns ($ret0: $1_Diem_Preburn'$1_XDX_XDX')
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: $1_Diem_Diem'$1_XDX_XDX';
    var $t7: $1_Diem_Preburn'$1_XDX_XDX';
    var $t0: $signer;
    var $temp_0'$1_Diem_Preburn'$1_XDX_XDX'': $1_Diem_Preburn'$1_XDX_XDX';
    var $temp_0'signer': $signer;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:550:5+1
    assume {:print "$at(11,26110,26111)"} true;
    assume {:print "$track_local(18,11,0):", $t0} $t0 == $t0;

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume {:print "$at(11,26210,26255)"} true;

    // assume Identical($t3, Or(Or(Not(exists<Roles::RoleId>($t2)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume ($t3 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t2) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t3) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    if ($t3) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
L4:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t2)), Eq(5, $t4)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t2)), 1), Eq(3, $t4))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t4))) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t2) && $IsEqual'num'(5, $t4)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t2)), 1) && $IsEqual'num'(3, $t4))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t4)));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    assume {:print "$at(11,26210,26255)"} true;
    assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45
L3:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:553:9+45

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume {:print "$at(11,26265,26295)"} true;

    // assume Identical($t5, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume ($t5 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
L6:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t4)) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'num'(5, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    assume {:print "$at(11,26265,26295)"} true;
    assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30
L5:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:554:9+30

    // $t6 := Diem::zero<#0>() on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:555:38+16
    assume {:print "$at(11,26334,26350)"} true;
    call $t6 := $1_Diem_zero'$1_XDX_XDX'();
    if ($abort_flag) {
        assume {:print "$at(11,26334,26350)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(18,11):", $t4} $t4 == $t4;
        goto L2;
    }

    // $t7 := pack Diem::Preburn<#0>($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:555:9+47
    $t7 := $1_Diem_Preburn'$1_XDX_XDX'($t6);

    // trace_return[0]($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:555:9+47
    assume {:print "$track_return(18,11,0):", $t7} $t7 == $t7;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    assume {:print "$at(11,26357,26358)"} true;
L1:

    // return $t7 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    $ret0 := $t7;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:556:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun Diem::publish_burn_capability<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:265:5+417
procedure {:inline 1} $1_Diem_publish_burn_capability'$1_XUS_XUS'(_$t0: $signer, _$t1: $1_Diem_BurnCapability'$1_XUS_XUS') returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: bool;
    var $t11: bool;
    var $t12: int;
    var $t13: int;
    var $t0: $signer;
    var $t1: $1_Diem_BurnCapability'$1_XUS_XUS';
    var $temp_0'$1_Diem_BurnCapability'$1_XUS_XUS'': $1_Diem_BurnCapability'$1_XUS_XUS';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:265:5+1
    assume {:print "$at(11,13418,13419)"} true;
    assume {:print "$track_local(18,27,0):", $t0} $t0 == $t0;

    // trace_local[cap]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:265:5+1
    assume {:print "$track_local(18,27,1):", $t1} $t1 == $t1;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    assume {:print "$at(11,13548,13593)"} true;

    // assume Identical($t6, Or(Or(Not(exists<Roles::RoleId>($t5)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    assume ($t6 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t5) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t6) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    if ($t6) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t5)), Eq(5, $t7)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 1), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t7))) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t5) && $IsEqual'num'(5, $t7)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 1) && $IsEqual'num'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    assume {:print "$at(11,13548,13593)"} true;
    assume {:print "$track_abort(18,27):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:269:9+45

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    assume {:print "$at(11,13603,13633)"} true;

    // assume Identical($t8, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    assume ($t8 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t8) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    if ($t8) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
L7:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t7)) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(5, $t7));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    assume {:print "$at(11,13603,13633)"} true;
    assume {:print "$track_abort(18,27):", $t7} $t7 == $t7;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30
L6:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:270:9+30

    // $t9 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:47+30
    assume {:print "$at(11,13697,13727)"} true;

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:47+30
    assume $IsValid'address'($t9);

    // assume Eq<address>($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:47+30
    assume $IsEqual'address'($t9, $1_Signer_spec_address_of($t0));

    // $t9 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:47+30

    // $t10 := exists<Diem::BurnCapability<#0>>($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:14+6
    $t10 := $ResourceExists($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $t9);

    // $t11 := !($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:272:13+1
    call $t11 := $Not($t10);

    // $t12 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:273:39+16
    assume {:print "$at(11,13768,13784)"} true;
    $t12 := 0;
    assume $IsValid'u64'($t12);

    // $t13 := opaque begin: Errors::already_published($t12) at /home/ying/diem/language/diem-framework/modules/Diem.move:273:13+43

    // assume WellFormed($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:273:13+43
    assume $IsValid'u64'($t13);

    // assume Eq<u64>($t13, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:273:13+43
    assume $IsEqual'u64'($t13, 6);

    // $t13 := opaque end: Errors::already_published($t12) at /home/ying/diem/language/diem-framework/modules/Diem.move:273:13+43

    // trace_local[tmp#$3]($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    assume {:print "$at(11,13643,13795)"} true;
    assume {:print "$track_local(18,27,3):", $t13} $t13 == $t13;

    // trace_local[tmp#$2]($t11) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    assume {:print "$track_local(18,27,2):", $t11} $t11 == $t11;

    // if ($t11) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    if ($t11) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    assume {:print "$at(11,13643,13795)"} true;
    assume {:print "$track_abort(18,27):", $t13} $t13 == $t13;

    // $t7 := move($t13) at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    $t7 := $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:271:9+152
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:275:17+10
    assume {:print "$at(11,13813,13823)"} true;
L0:

    // move_to<Diem::BurnCapability<#0>>($t1, $t0) on_abort goto L3 with $t7 at /home/ying/diem/language/diem-framework/modules/Diem.move:275:9+7
    if ($ResourceExists($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_BurnCapability'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0), $t1);
    }
    if ($abort_flag) {
        assume {:print "$at(11,13805,13812)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(18,27):", $t7} $t7 == $t7;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:276:5+1
    assume {:print "$at(11,13834,13835)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:276:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:276:5+1
L3:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/Diem.move:276:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun Diem::register_SCS_currency<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1311:5+913
procedure {:inline 1} $1_Diem_register_SCS_currency'$1_XUS_XUS'(_$t0: $signer, _$t1: $signer, _$t2: $1_FixedPoint32_FixedPoint32, _$t3: int, _$t4: int, _$t5: Vec (int)) returns ()
{
    // declare local variables
    var $t6: bool;
    var $t7: int;
    var $t8: $1_Diem_BurnCapability'$1_XUS_XUS';
    var $t9: $1_Diem_MintCapability'$1_XUS_XUS';
    var $t10: int;
    var $t11: int;
    var $t12: $1_DiemConfig_Configuration;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: bool;
    var $t22: bool;
    var $t23: int;
    var $t24: $1_DiemConfig_Configuration;
    var $t25: int;
    var $t26: $1_Diem_MintCapability'$1_XUS_XUS';
    var $t27: $1_Diem_BurnCapability'$1_XUS_XUS';
    var $t28: int;
    var $t29: bool;
    var $t30: bool;
    var $t31: int;
    var $t32: int;
    var $t33: int;
    var $t0: $signer;
    var $t1: $signer;
    var $t2: $1_FixedPoint32_FixedPoint32;
    var $t3: int;
    var $t4: int;
    var $t5: Vec (int);
    var $temp_0'$1_Diem_BurnCapability'$1_XUS_XUS'': $1_Diem_BurnCapability'$1_XUS_XUS';
    var $temp_0'$1_Diem_MintCapability'$1_XUS_XUS'': $1_Diem_MintCapability'$1_XUS_XUS';
    var $temp_0'$1_FixedPoint32_FixedPoint32': $1_FixedPoint32_FixedPoint32;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;
    $t5 := _$t5;

    // bytecode translation starts here
    // assume Identical($t10, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t1));

    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // assume Identical($t12, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t12 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t13, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t13 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t14, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t1));

    // assume Identical($t15, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume ($t15 == $1_Signer_spec_address_of($t1));

    // assume Identical($t16, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume ($t16 == $1_Signer_spec_address_of($t1));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1311:5+1
    assume {:print "$at(11,62134,62135)"} true;
    assume {:print "$track_local(18,31,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1311:5+1
    assume {:print "$track_local(18,31,1):", $t1} $t1 == $t1;

    // trace_local[to_xdx_exchange_rate]($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1311:5+1
    assume {:print "$track_local(18,31,2):", $t2} $t2 == $t2;

    // trace_local[scaling_factor]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1311:5+1
    assume {:print "$track_local(18,31,3):", $t3} $t3 == $t3;

    // trace_local[fractional_part]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1311:5+1
    assume {:print "$track_local(18,31,4):", $t4} $t4 == $t4;

    // trace_local[currency_code]($t5) at /home/ying/diem/language/diem-framework/modules/Diem.move:1311:5+1
    assume {:print "$track_local(18,31,5):", $t5} $t5 == $t5;

    // assume Identical($t17, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t17 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:9+45
    assume {:print "$at(11,62390,62435)"} true;

    // assume Identical($t18, Or(Or(Not(exists<Roles::RoleId>($t17)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t17)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:9+45
    assume ($t18 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t17) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t17)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)));

    // if ($t18) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:9+45
    if ($t18) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t17)), Eq(5, $t19)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t17)), 1), Eq(3, $t19))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t19))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t17) && $IsEqual'num'(5, $t19)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t17)), 1) && $IsEqual'num'(3, $t19))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t19)));

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:9+45
    assume {:print "$at(11,62390,62435)"} true;
    assume {:print "$track_abort(18,31):", $t19} $t19 == $t19;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1319:9+45

    // assume Identical($t20, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t20 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:9+35
    assume {:print "$at(11,62445,62480)"} true;

    // assume Identical($t21, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t20))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t20)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:9+35
    assume ($t21 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t20)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t20)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t21) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:9+35
    if ($t21) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:9+35
L7:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t19)), And(Not(exists<Roles::RoleId>($t20)), Eq(5, $t19))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t20)), 0), Eq(3, $t19))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t19))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t19)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t20) && $IsEqual'num'(5, $t19))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t20)), 0) && $IsEqual'num'(3, $t19))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t19)));

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:9+35
    assume {:print "$at(11,62445,62480)"} true;
    assume {:print "$track_abort(18,31):", $t19} $t19 == $t19;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:9+35
L6:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1320:9+35

    // $t22 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1325:17+5
    assume {:print "$at(11,62640,62645)"} true;
    $t22 := false;
    assume $IsValid'bool'($t22);

    // assume Identical($t23, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t23 == $1_Signer_spec_address_of($t0));

    // assume Identical($t24, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t24 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t25, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t25 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // ($t26, $t27) := Diem::register_currency<#0>($t0, $t2, $t22, $t3, $t4, $t5) on_abort goto L3 with $t19 at /home/ying/diem/language/diem-framework/modules/Diem.move:1322:13+245
    assume {:print "$at(11,62529,62774)"} true;
    call $t26,$t27 := $1_Diem_register_currency'$1_XUS_XUS'($t0, $t2, $t22, $t3, $t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(11,62529,62774)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(18,31):", $t19} $t19 == $t19;
        goto L3;
    }

    // trace_local[burn_cap]($t27) at /home/ying/diem/language/diem-framework/modules/Diem.move:1321:24+8
    assume {:print "$at(11,62505,62513)"} true;
    assume {:print "$track_local(18,31,8):", $t27} $t27 == $t27;

    // trace_local[mint_cap]($t26) at /home/ying/diem/language/diem-framework/modules/Diem.move:1321:14+8
    assume {:print "$track_local(18,31,9):", $t26} $t26 == $t26;

    // $t28 := opaque begin: Signer::address_of($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1331:47+30
    assume {:print "$at(11,62838,62868)"} true;

    // assume WellFormed($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1331:47+30
    assume $IsValid'address'($t28);

    // assume Eq<address>($t28, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1331:47+30
    assume $IsEqual'address'($t28, $1_Signer_spec_address_of($t1));

    // $t28 := opaque end: Signer::address_of($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1331:47+30

    // $t29 := exists<Diem::MintCapability<#0>>($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1331:14+6
    $t29 := $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $t28);

    // $t30 := !($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1331:13+1
    call $t30 := $Not($t29);

    // $t31 := 9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1332:39+16
    assume {:print "$at(11,62909,62925)"} true;
    $t31 := 9;
    assume $IsValid'u64'($t31);

    // $t32 := opaque begin: Errors::already_published($t31) at /home/ying/diem/language/diem-framework/modules/Diem.move:1332:13+43

    // assume WellFormed($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1332:13+43
    assume $IsValid'u64'($t32);

    // assume Eq<u64>($t32, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1332:13+43
    assume $IsEqual'u64'($t32, 6);

    // $t32 := opaque end: Errors::already_published($t31) at /home/ying/diem/language/diem-framework/modules/Diem.move:1332:13+43

    // trace_local[tmp#$7]($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1330:9+152
    assume {:print "$at(11,62784,62936)"} true;
    assume {:print "$track_local(18,31,7):", $t32} $t32 == $t32;

    // trace_local[tmp#$6]($t30) at /home/ying/diem/language/diem-framework/modules/Diem.move:1330:9+152
    assume {:print "$track_local(18,31,6):", $t30} $t30 == $t30;

    // if ($t30) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1330:9+152
    if ($t30) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1330:9+152
L1:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1330:9+152

    // trace_abort($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1330:9+152
    assume {:print "$at(11,62784,62936)"} true;
    assume {:print "$track_abort(18,31):", $t32} $t32 == $t32;

    // $t19 := move($t32) at /home/ying/diem/language/diem-framework/modules/Diem.move:1330:9+152
    $t19 := $t32;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1330:9+152
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1334:17+10
    assume {:print "$at(11,62954,62964)"} true;
L0:

    // move_to<Diem::MintCapability<#0>>($t26, $t1) on_abort goto L3 with $t19 at /home/ying/diem/language/diem-framework/modules/Diem.move:1334:9+7
    if ($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t1))) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_MintCapability'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t1), $t26);
    }
    if ($abort_flag) {
        assume {:print "$at(11,62946,62953)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(18,31):", $t19} $t19 == $t19;
        goto L3;
    }

    // assume Identical($t33, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t33 == $1_Signer_spec_address_of($t1));

    // Diem::publish_burn_capability<#0>($t1, $t27) on_abort goto L3 with $t19 at /home/ying/diem/language/diem-framework/modules/Diem.move:1335:9+55
    assume {:print "$at(11,62985,63040)"} true;
    call $1_Diem_publish_burn_capability'$1_XUS_XUS'($t1, $t27);
    if ($abort_flag) {
        assume {:print "$at(11,62985,63040)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(18,31):", $t19} $t19 == $t19;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1336:5+1
    assume {:print "$at(11,63046,63047)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:1336:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1336:5+1
L3:

    // abort($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1336:5+1
    $abort_code := $t19;
    $abort_flag := true;
    return;

}

// fun Diem::scaling_factor<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1425:5+192
procedure {:inline 1} $1_Diem_scaling_factor'$1_XDX_XDX'() returns ($ret0: int)
{
    // declare local variables
    var $t0: bool;
    var $t1: int;
    var $t2: int;
    var $t3: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t4: int;
    var $temp_0'u64': int;

    // bytecode translation starts here
    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1427:9+30
    assume {:print "$at(11,66819,66849)"} true;

    // assume Identical($t0, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1427:9+30
    assume ($t0 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t0) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1427:9+30
    if ($t0) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1427:9+30
L4:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t1)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1427:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'num'(5, $t1));

    // trace_abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1427:9+30
    assume {:print "$at(11,66819,66849)"} true;
    assume {:print "$track_abort(18,35):", $t1} $t1 == $t1;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1427:9+30
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1427:9+30
L3:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1427:9+30

    // $t2 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/Diem.move:1428:47+13
    assume {:print "$at(11,66897,66910)"} true;
    $t2 := 173345816;
    assume $IsValid'address'($t2);

    // $t3 := get_global<Diem::CurrencyInfo<#0>>($t2) on_abort goto L2 with $t1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1428:9+13
    if (!$ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t2)) {
        call $ExecFailureAbort();
    } else {
        $t3 := $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t2);
    }
    if ($abort_flag) {
        assume {:print "$at(11,66859,66872)"} true;
        $t1 := $abort_code;
        assume {:print "$track_abort(18,35):", $t1} $t1 == $t1;
        goto L2;
    }

    // $t4 := get_field<Diem::CurrencyInfo<#0>>.scaling_factor($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1428:9+67
    $t4 := $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($t3);

    // trace_return[0]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1428:9+67
    assume {:print "$track_return(18,35,0):", $t4} $t4 == $t4;

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1429:5+1
    assume {:print "$at(11,66931,66932)"} true;
L1:

    // return $t4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1429:5+1
    $ret0 := $t4;
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1429:5+1
L2:

    // abort($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1429:5+1
    $abort_code := $t1;
    $abort_flag := true;
    return;

}

// fun Diem::register_currency<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1676
procedure {:inline 1} $1_Diem_register_currency'$1_XUS_XUS'(_$t0: $signer, _$t1: $1_FixedPoint32_FixedPoint32, _$t2: bool, _$t3: int, _$t4: int, _$t5: Vec (int)) returns ($ret0: $1_Diem_MintCapability'$1_XUS_XUS', $ret1: $1_Diem_BurnCapability'$1_XUS_XUS')
{
    // declare local variables
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: $1_DiemConfig_Configuration;
    var $t13: int;
    var $t14: int;
    var $t15: bool;
    var $t16: int;
    var $t17: bool;
    var $t18: int;
    var $t19: bool;
    var $t20: bool;
    var $t21: int;
    var $t22: int;
    var $t23: int;
    var $t24: bool;
    var $t25: int;
    var $t26: bool;
    var $t27: bool;
    var $t28: int;
    var $t29: int;
    var $t30: int;
    var $t31: int;
    var $t32: bool;
    var $t33: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t34: $1_Event_EventHandle'$1_Diem_BurnEvent';
    var $t35: $1_Event_EventHandle'$1_Diem_PreburnEvent';
    var $t36: $1_Event_EventHandle'$1_Diem_CancelBurnEvent';
    var $t37: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent';
    var $t38: $1_Diem_CurrencyInfo'$1_XUS_XUS';
    var $t39: $1_DiemConfig_Configuration;
    var $t40: int;
    var $t41: bool;
    var $t42: $1_Diem_MintCapability'$1_XUS_XUS';
    var $t43: bool;
    var $t44: $1_Diem_BurnCapability'$1_XUS_XUS';
    var $t0: $signer;
    var $t1: $1_FixedPoint32_FixedPoint32;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: Vec (int);
    var $temp_0'$1_Diem_BurnCapability'$1_XUS_XUS'': $1_Diem_BurnCapability'$1_XUS_XUS';
    var $temp_0'$1_Diem_MintCapability'$1_XUS_XUS'': $1_Diem_MintCapability'$1_XUS_XUS';
    var $temp_0'$1_FixedPoint32_FixedPoint32': $1_FixedPoint32_FixedPoint32;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;
    $t5 := _$t5;

    // bytecode translation starts here
    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // assume Identical($t12, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t12 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t13, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t13 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$at(11,59063,59064)"} true;
    assume {:print "$track_local(18,32,0):", $t0} $t0 == $t0;

    // trace_local[to_xdx_exchange_rate]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$track_local(18,32,1):", $t1} $t1 == $t1;

    // trace_local[is_synthetic]($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$track_local(18,32,2):", $t2} $t2 == $t2;

    // trace_local[scaling_factor]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$track_local(18,32,3):", $t3} $t3 == $t3;

    // trace_local[fractional_part]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$track_local(18,32,4):", $t4} $t4 == $t4;

    // trace_local[currency_code]($t5) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$track_local(18,32,5):", $t5} $t5 == $t5;

    // assume Identical($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    assume {:print "$at(11,59372,59407)"} true;

    // assume Identical($t15, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t14))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    assume ($t15 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t14)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t15) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    if ($t15) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
L11:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16)), And(Not(exists<Roles::RoleId>($t14)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0), Eq(3, $t16))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t16)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t14) && $IsEqual'num'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0) && $IsEqual'num'(3, $t16))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    assume {:print "$at(11,59372,59407)"} true;
    assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    goto L9;

    // label L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
L10:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35

    // opaque begin: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    assume {:print "$at(11,59500,59547)"} true;

    // assume Identical($t17, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    assume ($t17 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t17) goto L13 else goto L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    if ($t17) { goto L13; } else { goto L12; }

    // label L13 at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
L13:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t16));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    assume {:print "$at(11,59500,59547)"} true;
    assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    goto L9;

    // label L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
L12:

    // opaque end: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47

    // $t18 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:45+30
    assume {:print "$at(11,59609,59639)"} true;

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:45+30
    assume $IsValid'address'($t18);

    // assume Eq<address>($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:45+30
    assume $IsEqual'address'($t18, $1_Signer_spec_address_of($t0));

    // $t18 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:45+30

    // $t19 := exists<Diem::CurrencyInfo<#0>>($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:14+6
    $t19 := $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $t18);

    // $t20 := !($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:13+1
    call $t20 := $Not($t19);

    // $t21 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:39+14
    assume {:print "$at(11,59680,59694)"} true;
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // $t22 := opaque begin: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:13+41

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:13+41
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:13+41
    assume $IsEqual'u64'($t22, 6);

    // $t22 := opaque end: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:13+41

    // trace_local[tmp#$7]($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    assume {:print "$at(11,59557,59705)"} true;
    assume {:print "$track_local(18,32,7):", $t22} $t22 == $t22;

    // trace_local[tmp#$6]($t20) at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    assume {:print "$track_local(18,32,6):", $t20} $t20 == $t20;

    // if ($t20) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    if ($t20) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    assume {:print "$at(11,59557,59705)"} true;
    assume {:print "$track_abort(18,32):", $t22} $t22 == $t22;

    // $t16 := move($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    $t16 := $t22;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    goto L9;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+1
    assume {:print "$at(11,59722,59723)"} true;
L0:

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+1
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := <($t23, $t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:18+1
    call $t24 := $Lt($t23, $t3);

    // if ($t24) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    if ($t24) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
L3:

    // goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:38+14
L2:

    // $t25 := 10000000000 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:56+18
    $t25 := 10000000000;
    assume $IsValid'u64'($t25);

    // $t26 := <=($t3, $t25) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:53+2
    call $t26 := $Le($t3, $t25);

    // $t10 := $t26 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    $t10 := $t26;

    // trace_local[tmp#$10]($t26) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    assume {:print "$track_local(18,32,10):", $t26} $t26 == $t26;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
L4:

    // $t27 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    $t27 := false;
    assume $IsValid'bool'($t27);

    // $t10 := $t27 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    $t10 := $t27;

    // trace_local[tmp#$10]($t27) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    assume {:print "$track_local(18,32,10):", $t27} $t27 == $t27;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
L5:

    // $t28 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:101+14
    $t28 := 1;
    assume $IsValid'u64'($t28);

    // $t29 := opaque begin: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:76+40

    // assume WellFormed($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:76+40
    assume $IsValid'u64'($t29);

    // assume Eq<u64>($t29, 7) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:76+40
    assume $IsEqual'u64'($t29, 7);

    // $t29 := opaque end: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:76+40

    // trace_local[tmp#$9]($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    assume {:print "$track_local(18,32,9):", $t29} $t29 == $t29;

    // trace_local[tmp#$8]($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    assume {:print "$track_local(18,32,8):", $t10} $t10 == $t10;

    // if ($t10) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    if ($t10) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
L7:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108

    // trace_abort($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    assume {:print "$at(11,59715,59823)"} true;
    assume {:print "$track_abort(18,32):", $t29} $t29 == $t29;

    // $t16 := move($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    $t16 := $t29;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    goto L9;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1259:17+10
    assume {:print "$at(11,59841,59851)"} true;
L6:

    // $t30 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1260:26+1
    assume {:print "$at(11,59903,59904)"} true;
    $t30 := 0;
    assume $IsValid'u128'($t30);

    // $t31 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1261:28+1
    assume {:print "$at(11,59933,59934)"} true;
    $t31 := 0;
    assume $IsValid'u64'($t31);

    // $t32 := true at /home/ying/diem/language/diem-framework/modules/Diem.move:1267:23+4
    assume {:print "$at(11,60122,60126)"} true;
    $t32 := true;
    assume $IsValid'bool'($t32);

    // $t33 := Event::new_event_handle<Diem::MintEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1268:26+46
    assume {:print "$at(11,60153,60199)"} true;
    call $t33 := $1_Event_new_event_handle'$1_Diem_MintEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(11,60153,60199)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t34 := Event::new_event_handle<Diem::BurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1269:26+46
    assume {:print "$at(11,60226,60272)"} true;
    call $t34 := $1_Event_new_event_handle'$1_Diem_BurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(11,60226,60272)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t35 := Event::new_event_handle<Diem::PreburnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1270:29+49
    assume {:print "$at(11,60302,60351)"} true;
    call $t35 := $1_Event_new_event_handle'$1_Diem_PreburnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(11,60302,60351)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t36 := Event::new_event_handle<Diem::CancelBurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1271:33+52
    assume {:print "$at(11,60385,60437)"} true;
    call $t36 := $1_Event_new_event_handle'$1_Diem_CancelBurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(11,60385,60437)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t37 := Event::new_event_handle<Diem::ToXDXExchangeRateUpdateEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1272:42+65
    assume {:print "$at(11,60480,60545)"} true;
    call $t37 := $1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(11,60480,60545)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t38 := pack Diem::CurrencyInfo<#0>($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37) at /home/ying/diem/language/diem-framework/modules/Diem.move:1259:29+702
    assume {:print "$at(11,59853,60555)"} true;
    $t38 := $1_Diem_CurrencyInfo'$1_XUS_XUS'($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37);

    // move_to<Diem::CurrencyInfo<#0>>($t38, $t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1259:9+7
    if ($ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0), $t38);
    }
    if ($abort_flag) {
        assume {:print "$at(11,59833,59840)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // assume Identical($t39, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t39 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t40, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t40 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // RegisteredCurrencies::add_currency_code($t0, $t5) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1274:9+101
    assume {:print "$at(11,60566,60667)"} true;
    call $1_RegisteredCurrencies_add_currency_code($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(11,60566,60667)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t41 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:10+26
    assume {:print "$at(11,60678,60704)"} true;
    $t41 := false;
    assume $IsValid'bool'($t41);

    // $t42 := pack Diem::MintCapability<#0>($t41) at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:10+26
    $t42 := $1_Diem_MintCapability'$1_XUS_XUS'($t41);

    // $t43 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:38+26
    $t43 := false;
    assume $IsValid'bool'($t43);

    // $t44 := pack Diem::BurnCapability<#0>($t43) at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:38+26
    $t44 := $1_Diem_BurnCapability'$1_XUS_XUS'($t43);

    // trace_return[0]($t42) at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:9+56
    assume {:print "$track_return(18,32,0):", $t42} $t42 == $t42;

    // trace_return[1]($t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:9+56
    assume {:print "$track_return(18,32,1):", $t44} $t44 == $t44;

    // label L8 at /home/ying/diem/language/diem-framework/modules/Diem.move:1279:5+1
    assume {:print "$at(11,60738,60739)"} true;
L8:

    // return ($t42, $t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1279:5+1
    $ret0 := $t42;
    $ret1 := $t44;
    return;

    // label L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1279:5+1
L9:

    // abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1279:5+1
    $abort_code := $t16;
    $abort_flag := true;
    return;

}

// fun Diem::register_currency<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1676
procedure {:inline 1} $1_Diem_register_currency'$1_XDX_XDX'(_$t0: $signer, _$t1: $1_FixedPoint32_FixedPoint32, _$t2: bool, _$t3: int, _$t4: int, _$t5: Vec (int)) returns ($ret0: $1_Diem_MintCapability'$1_XDX_XDX', $ret1: $1_Diem_BurnCapability'$1_XDX_XDX')
{
    // declare local variables
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: $1_DiemConfig_Configuration;
    var $t13: int;
    var $t14: int;
    var $t15: bool;
    var $t16: int;
    var $t17: bool;
    var $t18: int;
    var $t19: bool;
    var $t20: bool;
    var $t21: int;
    var $t22: int;
    var $t23: int;
    var $t24: bool;
    var $t25: int;
    var $t26: bool;
    var $t27: bool;
    var $t28: int;
    var $t29: int;
    var $t30: int;
    var $t31: int;
    var $t32: bool;
    var $t33: $1_Event_EventHandle'$1_Diem_MintEvent';
    var $t34: $1_Event_EventHandle'$1_Diem_BurnEvent';
    var $t35: $1_Event_EventHandle'$1_Diem_PreburnEvent';
    var $t36: $1_Event_EventHandle'$1_Diem_CancelBurnEvent';
    var $t37: $1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent';
    var $t38: $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $t39: $1_DiemConfig_Configuration;
    var $t40: int;
    var $t41: bool;
    var $t42: $1_Diem_MintCapability'$1_XDX_XDX';
    var $t43: bool;
    var $t44: $1_Diem_BurnCapability'$1_XDX_XDX';
    var $t0: $signer;
    var $t1: $1_FixedPoint32_FixedPoint32;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: Vec (int);
    var $temp_0'$1_Diem_BurnCapability'$1_XDX_XDX'': $1_Diem_BurnCapability'$1_XDX_XDX';
    var $temp_0'$1_Diem_MintCapability'$1_XDX_XDX'': $1_Diem_MintCapability'$1_XDX_XDX';
    var $temp_0'$1_FixedPoint32_FixedPoint32': $1_FixedPoint32_FixedPoint32;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;
    $t5 := _$t5;

    // bytecode translation starts here
    // assume Identical($t11, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t0));

    // assume Identical($t12, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t12 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t13, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t13 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$at(11,59063,59064)"} true;
    assume {:print "$track_local(18,32,0):", $t0} $t0 == $t0;

    // trace_local[to_xdx_exchange_rate]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$track_local(18,32,1):", $t1} $t1 == $t1;

    // trace_local[is_synthetic]($t2) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$track_local(18,32,2):", $t2} $t2 == $t2;

    // trace_local[scaling_factor]($t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$track_local(18,32,3):", $t3} $t3 == $t3;

    // trace_local[fractional_part]($t4) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$track_local(18,32,4):", $t4} $t4 == $t4;

    // trace_local[currency_code]($t5) at /home/ying/diem/language/diem-framework/modules/Diem.move:1242:5+1
    assume {:print "$track_local(18,32,5):", $t5} $t5 == $t5;

    // assume Identical($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    assume {:print "$at(11,59372,59407)"} true;

    // assume Identical($t15, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t14))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    assume ($t15 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t14)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t15) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    if ($t15) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
L11:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16)), And(Not(exists<Roles::RoleId>($t14)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 0), Eq(3, $t16))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t16)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t14) && $IsEqual'num'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 0) && $IsEqual'num'(3, $t16))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    assume {:print "$at(11,59372,59407)"} true;
    assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
    goto L9;

    // label L10 at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35
L10:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1251:9+35

    // opaque begin: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    assume {:print "$at(11,59500,59547)"} true;

    // assume Identical($t17, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    assume ($t17 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t17) goto L13 else goto L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    if ($t17) { goto L13; } else { goto L12; }

    // label L13 at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
L13:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t16)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t16));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    assume {:print "$at(11,59500,59547)"} true;
    assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
    goto L9;

    // label L12 at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47
L12:

    // opaque end: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1253:9+47

    // $t18 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:45+30
    assume {:print "$at(11,59609,59639)"} true;

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:45+30
    assume $IsValid'address'($t18);

    // assume Eq<address>($t18, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:45+30
    assume $IsEqual'address'($t18, $1_Signer_spec_address_of($t0));

    // $t18 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:45+30

    // $t19 := exists<Diem::CurrencyInfo<#0>>($t18) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:14+6
    $t19 := $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t18);

    // $t20 := !($t19) at /home/ying/diem/language/diem-framework/modules/Diem.move:1255:13+1
    call $t20 := $Not($t19);

    // $t21 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:39+14
    assume {:print "$at(11,59680,59694)"} true;
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // $t22 := opaque begin: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:13+41

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:13+41
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:13+41
    assume $IsEqual'u64'($t22, 6);

    // $t22 := opaque end: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/Diem.move:1256:13+41

    // trace_local[tmp#$7]($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    assume {:print "$at(11,59557,59705)"} true;
    assume {:print "$track_local(18,32,7):", $t22} $t22 == $t22;

    // trace_local[tmp#$6]($t20) at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    assume {:print "$track_local(18,32,6):", $t20} $t20 == $t20;

    // if ($t20) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    if ($t20) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    assume {:print "$at(11,59557,59705)"} true;
    assume {:print "$track_abort(18,32):", $t22} $t22 == $t22;

    // $t16 := move($t22) at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    $t16 := $t22;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1254:9+148
    goto L9;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+1
    assume {:print "$at(11,59722,59723)"} true;
L0:

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+1
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := <($t23, $t3) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:18+1
    call $t24 := $Lt($t23, $t3);

    // if ($t24) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    if ($t24) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
L3:

    // goto L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    goto L4;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:38+14
L2:

    // $t25 := 10000000000 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:56+18
    $t25 := 10000000000;
    assume $IsValid'u64'($t25);

    // $t26 := <=($t3, $t25) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:53+2
    call $t26 := $Le($t3, $t25);

    // $t10 := $t26 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    $t10 := $t26;

    // trace_local[tmp#$10]($t26) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    assume {:print "$track_local(18,32,10):", $t26} $t26 == $t26;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    goto L5;

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
L4:

    // $t27 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    $t27 := false;
    assume $IsValid'bool'($t27);

    // $t10 := $t27 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    $t10 := $t27;

    // trace_local[tmp#$10]($t27) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
    assume {:print "$track_local(18,32,10):", $t27} $t27 == $t27;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:16+58
L5:

    // $t28 := 1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:101+14
    $t28 := 1;
    assume $IsValid'u64'($t28);

    // $t29 := opaque begin: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:76+40

    // assume WellFormed($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:76+40
    assume $IsValid'u64'($t29);

    // assume Eq<u64>($t29, 7) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:76+40
    assume $IsEqual'u64'($t29, 7);

    // $t29 := opaque end: Errors::invalid_argument($t28) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:76+40

    // trace_local[tmp#$9]($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    assume {:print "$track_local(18,32,9):", $t29} $t29 == $t29;

    // trace_local[tmp#$8]($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    assume {:print "$track_local(18,32,8):", $t10} $t10 == $t10;

    // if ($t10) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    if ($t10) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
L7:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108

    // trace_abort($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    assume {:print "$at(11,59715,59823)"} true;
    assume {:print "$track_abort(18,32):", $t29} $t29 == $t29;

    // $t16 := move($t29) at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    $t16 := $t29;

    // goto L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1258:9+108
    goto L9;

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1259:17+10
    assume {:print "$at(11,59841,59851)"} true;
L6:

    // $t30 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1260:26+1
    assume {:print "$at(11,59903,59904)"} true;
    $t30 := 0;
    assume $IsValid'u128'($t30);

    // $t31 := 0 at /home/ying/diem/language/diem-framework/modules/Diem.move:1261:28+1
    assume {:print "$at(11,59933,59934)"} true;
    $t31 := 0;
    assume $IsValid'u64'($t31);

    // $t32 := true at /home/ying/diem/language/diem-framework/modules/Diem.move:1267:23+4
    assume {:print "$at(11,60122,60126)"} true;
    $t32 := true;
    assume $IsValid'bool'($t32);

    // $t33 := Event::new_event_handle<Diem::MintEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1268:26+46
    assume {:print "$at(11,60153,60199)"} true;
    call $t33 := $1_Event_new_event_handle'$1_Diem_MintEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(11,60153,60199)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t34 := Event::new_event_handle<Diem::BurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1269:26+46
    assume {:print "$at(11,60226,60272)"} true;
    call $t34 := $1_Event_new_event_handle'$1_Diem_BurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(11,60226,60272)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t35 := Event::new_event_handle<Diem::PreburnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1270:29+49
    assume {:print "$at(11,60302,60351)"} true;
    call $t35 := $1_Event_new_event_handle'$1_Diem_PreburnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(11,60302,60351)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t36 := Event::new_event_handle<Diem::CancelBurnEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1271:33+52
    assume {:print "$at(11,60385,60437)"} true;
    call $t36 := $1_Event_new_event_handle'$1_Diem_CancelBurnEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(11,60385,60437)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t37 := Event::new_event_handle<Diem::ToXDXExchangeRateUpdateEvent>($t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1272:42+65
    assume {:print "$at(11,60480,60545)"} true;
    call $t37 := $1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(11,60480,60545)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t38 := pack Diem::CurrencyInfo<#0>($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37) at /home/ying/diem/language/diem-framework/modules/Diem.move:1259:29+702
    assume {:print "$at(11,59853,60555)"} true;
    $t38 := $1_Diem_CurrencyInfo'$1_XDX_XDX'($t30, $t31, $t1, $t2, $t3, $t4, $t5, $t32, $t33, $t34, $t35, $t36, $t37);

    // move_to<Diem::CurrencyInfo<#0>>($t38, $t0) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1259:9+7
    if ($ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $1_Signer_spec_address_of($t0), $t38);
    }
    if ($abort_flag) {
        assume {:print "$at(11,59833,59840)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // assume Identical($t39, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t39 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t40, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t40 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // RegisteredCurrencies::add_currency_code($t0, $t5) on_abort goto L9 with $t16 at /home/ying/diem/language/diem-framework/modules/Diem.move:1274:9+101
    assume {:print "$at(11,60566,60667)"} true;
    call $1_RegisteredCurrencies_add_currency_code($t0, $t5);
    if ($abort_flag) {
        assume {:print "$at(11,60566,60667)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(18,32):", $t16} $t16 == $t16;
        goto L9;
    }

    // $t41 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:10+26
    assume {:print "$at(11,60678,60704)"} true;
    $t41 := false;
    assume $IsValid'bool'($t41);

    // $t42 := pack Diem::MintCapability<#0>($t41) at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:10+26
    $t42 := $1_Diem_MintCapability'$1_XDX_XDX'($t41);

    // $t43 := false at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:38+26
    $t43 := false;
    assume $IsValid'bool'($t43);

    // $t44 := pack Diem::BurnCapability<#0>($t43) at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:38+26
    $t44 := $1_Diem_BurnCapability'$1_XDX_XDX'($t43);

    // trace_return[0]($t42) at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:9+56
    assume {:print "$track_return(18,32,0):", $t42} $t42 == $t42;

    // trace_return[1]($t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1278:9+56
    assume {:print "$track_return(18,32,1):", $t44} $t44 == $t44;

    // label L8 at /home/ying/diem/language/diem-framework/modules/Diem.move:1279:5+1
    assume {:print "$at(11,60738,60739)"} true;
L8:

    // return ($t42, $t44) at /home/ying/diem/language/diem-framework/modules/Diem.move:1279:5+1
    $ret0 := $t42;
    $ret1 := $t44;
    return;

    // label L9 at /home/ying/diem/language/diem-framework/modules/Diem.move:1279:5+1
L9:

    // abort($t16) at /home/ying/diem/language/diem-framework/modules/Diem.move:1279:5+1
    $abort_code := $t16;
    $abort_flag := true;
    return;

}

// fun Diem::update_minting_ability<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/Diem.move:1524:5+365
procedure {:inline 1} $1_Diem_update_minting_ability'$1_XDX_XDX'(_$t0: $signer, _$t1: bool) returns ()
{
    // declare local variables
    var $t2: $Mutation ($1_Diem_CurrencyInfo'$1_XDX_XDX');
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: $Mutation ($1_Diem_CurrencyInfo'$1_XDX_XDX');
    var $t10: $Mutation (bool);
    var $t0: $signer;
    var $t1: bool;
    var $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'': $1_Diem_CurrencyInfo'$1_XDX_XDX';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t10));

    // bytecode translation starts here
    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1524:5+1
    assume {:print "$at(11,71147,71148)"} true;
    assume {:print "$track_local(18,37,0):", $t0} $t0 == $t0;

    // trace_local[can_mint]($t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1524:5+1
    assume {:print "$track_local(18,37,1):", $t1} $t1 == $t1;

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1529:9+45
    assume {:print "$at(11,71291,71336)"} true;

    // assume Identical($t5, Or(Or(Not(exists<Roles::RoleId>($t4)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1529:9+45
    assume ($t5 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t4) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1529:9+45
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Diem.move:1529:9+45
L4:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t6)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/Diem.move:1529:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'num'(5, $t6)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1) && $IsEqual'num'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1529:9+45
    assume {:print "$at(11,71291,71336)"} true;
    assume {:print "$track_abort(18,37):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1529:9+45
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Diem.move:1529:9+45
L3:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/Diem.move:1529:9+45

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1530:9+30
    assume {:print "$at(11,71346,71376)"} true;

    // assume Identical($t7, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/Diem.move:1530:9+30
    assume ($t7 == !$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // if ($t7) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1530:9+30
    if ($t7) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1530:9+30
L6:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t6)) at /home/ying/diem/language/diem-framework/modules/Diem.move:1530:9+30
    assume (!$1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) && $IsEqual'num'(5, $t6));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1530:9+30
    assume {:print "$at(11,71346,71376)"} true;
    assume {:print "$track_abort(18,37):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1530:9+30
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Diem.move:1530:9+30
L5:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/Diem.move:1530:9+30

    // $t8 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/Diem.move:1531:71+13
    assume {:print "$at(11,71448,71461)"} true;
    $t8 := 173345816;
    assume $IsValid'address'($t8);

    // $t9 := borrow_global<Diem::CurrencyInfo<#0>>($t8) on_abort goto L2 with $t6 at /home/ying/diem/language/diem-framework/modules/Diem.move:1531:29+17
    if (!$ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t8)) {
        call $ExecFailureAbort();
    } else {
        $t9 := $Mutation($Global($t8), EmptyVec(), $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $t8));
    }
    if ($abort_flag) {
        assume {:print "$at(11,71406,71423)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(18,37):", $t6} $t6 == $t6;
        goto L2;
    }

    // trace_local[currency_info]($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1531:13+13
    $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'' := $Dereference($t9);
    assume {:print "$track_local(18,37,2):", $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''} $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'' == $temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX'';

    // $t10 := borrow_field<Diem::CurrencyInfo<#0>>.can_mint($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1532:9+22
    assume {:print "$at(11,71472,71494)"} true;
    $t10 := $ChildMutation($t9, 7, $can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'($Dereference($t9)));

    // write_ref($t10, $t1) at /home/ying/diem/language/diem-framework/modules/Diem.move:1532:9+33
    $t10 := $UpdateMutation($t10, $t1);

    // write_back[Reference($t9).can_mint]($t10) at /home/ying/diem/language/diem-framework/modules/Diem.move:1532:9+33
    $t9 := $UpdateMutation($t9, $Update'$1_Diem_CurrencyInfo'$1_XDX_XDX''_can_mint($Dereference($t9), $Dereference($t10)));

    // pack_ref_deep($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1532:9+33

    // write_back[Diem::CurrencyInfo<#0>@]($t9) at /home/ying/diem/language/diem-framework/modules/Diem.move:1532:9+33
    $1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory := $ResourceUpdate($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $GlobalLocationAddress($t9),
        $Dereference($t9));

    // label L1 at /home/ying/diem/language/diem-framework/modules/Diem.move:1533:5+1
    assume {:print "$at(11,71511,71512)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/Diem.move:1533:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Diem.move:1533:5+1
L2:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/Diem.move:1533:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

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

// struct AccountLimits::Window<XUS::XUS> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:37:5+492
type {:datatype} $1_AccountLimits_Window'$1_XUS_XUS';
function {:constructor} $1_AccountLimits_Window'$1_XUS_XUS'($window_start: int, $window_inflow: int, $window_outflow: int, $tracked_balance: int, $limit_address: int): $1_AccountLimits_Window'$1_XUS_XUS';
function {:inline} $Update'$1_AccountLimits_Window'$1_XUS_XUS''_window_start(s: $1_AccountLimits_Window'$1_XUS_XUS', x: int): $1_AccountLimits_Window'$1_XUS_XUS' {
    $1_AccountLimits_Window'$1_XUS_XUS'(x, $window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'(s), $window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'(s), $tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'(s), $limit_address#$1_AccountLimits_Window'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'$1_XUS_XUS''_window_inflow(s: $1_AccountLimits_Window'$1_XUS_XUS', x: int): $1_AccountLimits_Window'$1_XUS_XUS' {
    $1_AccountLimits_Window'$1_XUS_XUS'($window_start#$1_AccountLimits_Window'$1_XUS_XUS'(s), x, $window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'(s), $tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'(s), $limit_address#$1_AccountLimits_Window'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'$1_XUS_XUS''_window_outflow(s: $1_AccountLimits_Window'$1_XUS_XUS', x: int): $1_AccountLimits_Window'$1_XUS_XUS' {
    $1_AccountLimits_Window'$1_XUS_XUS'($window_start#$1_AccountLimits_Window'$1_XUS_XUS'(s), $window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'(s), x, $tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'(s), $limit_address#$1_AccountLimits_Window'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'$1_XUS_XUS''_tracked_balance(s: $1_AccountLimits_Window'$1_XUS_XUS', x: int): $1_AccountLimits_Window'$1_XUS_XUS' {
    $1_AccountLimits_Window'$1_XUS_XUS'($window_start#$1_AccountLimits_Window'$1_XUS_XUS'(s), $window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'(s), $window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'(s), x, $limit_address#$1_AccountLimits_Window'$1_XUS_XUS'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'$1_XUS_XUS''_limit_address(s: $1_AccountLimits_Window'$1_XUS_XUS', x: int): $1_AccountLimits_Window'$1_XUS_XUS' {
    $1_AccountLimits_Window'$1_XUS_XUS'($window_start#$1_AccountLimits_Window'$1_XUS_XUS'(s), $window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'(s), $window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'(s), $tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'(s), x)
}
function $IsValid'$1_AccountLimits_Window'$1_XUS_XUS''(s: $1_AccountLimits_Window'$1_XUS_XUS'): bool {
    $IsValid'u64'($window_start#$1_AccountLimits_Window'$1_XUS_XUS'(s))
      && $IsValid'u64'($window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'(s))
      && $IsValid'u64'($window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'(s))
      && $IsValid'u64'($tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'(s))
      && $IsValid'address'($limit_address#$1_AccountLimits_Window'$1_XUS_XUS'(s))
}
function {:inline} $IsEqual'$1_AccountLimits_Window'$1_XUS_XUS''(s1: $1_AccountLimits_Window'$1_XUS_XUS', s2: $1_AccountLimits_Window'$1_XUS_XUS'): bool {
    s1 == s2
}
var $1_AccountLimits_Window'$1_XUS_XUS'_$memory: $Memory $1_AccountLimits_Window'$1_XUS_XUS';

// struct AccountLimits::Window<XDX::XDX> at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:37:5+492
type {:datatype} $1_AccountLimits_Window'$1_XDX_XDX';
function {:constructor} $1_AccountLimits_Window'$1_XDX_XDX'($window_start: int, $window_inflow: int, $window_outflow: int, $tracked_balance: int, $limit_address: int): $1_AccountLimits_Window'$1_XDX_XDX';
function {:inline} $Update'$1_AccountLimits_Window'$1_XDX_XDX''_window_start(s: $1_AccountLimits_Window'$1_XDX_XDX', x: int): $1_AccountLimits_Window'$1_XDX_XDX' {
    $1_AccountLimits_Window'$1_XDX_XDX'(x, $window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'(s), $window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'(s), $tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'(s), $limit_address#$1_AccountLimits_Window'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'$1_XDX_XDX''_window_inflow(s: $1_AccountLimits_Window'$1_XDX_XDX', x: int): $1_AccountLimits_Window'$1_XDX_XDX' {
    $1_AccountLimits_Window'$1_XDX_XDX'($window_start#$1_AccountLimits_Window'$1_XDX_XDX'(s), x, $window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'(s), $tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'(s), $limit_address#$1_AccountLimits_Window'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'$1_XDX_XDX''_window_outflow(s: $1_AccountLimits_Window'$1_XDX_XDX', x: int): $1_AccountLimits_Window'$1_XDX_XDX' {
    $1_AccountLimits_Window'$1_XDX_XDX'($window_start#$1_AccountLimits_Window'$1_XDX_XDX'(s), $window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'(s), x, $tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'(s), $limit_address#$1_AccountLimits_Window'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'$1_XDX_XDX''_tracked_balance(s: $1_AccountLimits_Window'$1_XDX_XDX', x: int): $1_AccountLimits_Window'$1_XDX_XDX' {
    $1_AccountLimits_Window'$1_XDX_XDX'($window_start#$1_AccountLimits_Window'$1_XDX_XDX'(s), $window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'(s), $window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'(s), x, $limit_address#$1_AccountLimits_Window'$1_XDX_XDX'(s))
}
function {:inline} $Update'$1_AccountLimits_Window'$1_XDX_XDX''_limit_address(s: $1_AccountLimits_Window'$1_XDX_XDX', x: int): $1_AccountLimits_Window'$1_XDX_XDX' {
    $1_AccountLimits_Window'$1_XDX_XDX'($window_start#$1_AccountLimits_Window'$1_XDX_XDX'(s), $window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'(s), $window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'(s), $tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'(s), x)
}
function $IsValid'$1_AccountLimits_Window'$1_XDX_XDX''(s: $1_AccountLimits_Window'$1_XDX_XDX'): bool {
    $IsValid'u64'($window_start#$1_AccountLimits_Window'$1_XDX_XDX'(s))
      && $IsValid'u64'($window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'(s))
      && $IsValid'u64'($window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'(s))
      && $IsValid'u64'($tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'(s))
      && $IsValid'address'($limit_address#$1_AccountLimits_Window'$1_XDX_XDX'(s))
}
function {:inline} $IsEqual'$1_AccountLimits_Window'$1_XDX_XDX''(s1: $1_AccountLimits_Window'$1_XDX_XDX', s2: $1_AccountLimits_Window'$1_XDX_XDX'): bool {
    s1 == s2
}
var $1_AccountLimits_Window'$1_XDX_XDX'_$memory: $Memory $1_AccountLimits_Window'$1_XDX_XDX';

// fun AccountLimits::publish_unrestricted_limits<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:5+515
procedure {:inline 1} $1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: $signer;
    var $t8: int;
    var $t9: bool;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: $1_AccountLimits_LimitsDefinition'$1_XUS_XUS';
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[publish_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:5+1
    assume {:print "$at(5,8044,8045)"} true;
    assume {:print "$track_local(19,8,0):", $t0} $t0 == $t0;

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:49+35
    assume {:print "$at(5,8185,8220)"} true;

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:49+35
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:49+35
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:49+35

    // $t9 := exists<AccountLimits::LimitsDefinition<#0>>($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:14+6
    $t9 := $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $t8);

    // $t10 := !($t9) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+1
    call $t10 := $Not($t9);

    // $t11 := 0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:39+18
    assume {:print "$at(5,8261,8279)"} true;
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // $t12 := opaque begin: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:13+45

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:13+45
    assume $IsValid'u64'($t12);

    // assume Eq<u64>($t12, 6) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:13+45
    assume $IsEqual'u64'($t12, 6);

    // $t12 := opaque end: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:13+45

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    assume {:print "$at(5,8129,8290)"} true;
    assume {:print "$track_local(19,8,2):", $t12} $t12 == $t12;

    // trace_local[tmp#$1]($t10) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    assume {:print "$track_local(19,8,1):", $t10} $t10 == $t10;

    // if ($t10) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    assume {:print "$at(5,8129,8290)"} true;
    assume {:print "$track_abort(19,8):", $t12} $t12 == $t12;

    // $t13 := move($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    $t13 := $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:193:13+15
    assume {:print "$at(5,8321,8336)"} true;
L0:

    // trace_local[tmp#$7]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:193:13+15
    assume {:print "$track_local(19,8,7):", $t0} $t0 == $t0;

    // $t14 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:195:29+7
    assume {:print "$at(5,8407,8414)"} true;
    $t14 := 18446744073709551615;
    assume $IsValid'u64'($t14);

    // $t15 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:196:30+7
    assume {:print "$at(5,8445,8452)"} true;
    $t15 := 18446744073709551615;
    assume $IsValid'u64'($t15);

    // $t16 := 86400000000 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:198:30+7
    assume {:print "$at(5,8521,8528)"} true;
    $t16 := 86400000000;
    assume $IsValid'u64'($t16);

    // $t17 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:30+7
    assume {:print "$at(5,8483,8490)"} true;
    $t17 := 18446744073709551615;
    assume $IsValid'u64'($t17);

    // $t18 := pack AccountLimits::LimitsDefinition<#0>($t14, $t15, $t16, $t17) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:194:13+193
    assume {:print "$at(5,8350,8543)"} true;
    $t18 := $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($t14, $t15, $t16, $t17);

    // move_to<AccountLimits::LimitsDefinition<#0>>($t18, $t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:192:9+7
    assume {:print "$at(5,8300,8307)"} true;
    if ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory := $ResourceUpdate($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0), $t18);
    }
    if ($abort_flag) {
        assume {:print "$at(5,8300,8307)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(19,8):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:201:5+1
    assume {:print "$at(5,8558,8559)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:201:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:201:5+1
L3:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:201:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// fun AccountLimits::publish_unrestricted_limits<XDX::XDX> [baseline] at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:5+515
procedure {:inline 1} $1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: $signer;
    var $t8: int;
    var $t9: bool;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: $1_AccountLimits_LimitsDefinition'$1_XDX_XDX';
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[publish_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:187:5+1
    assume {:print "$at(5,8044,8045)"} true;
    assume {:print "$track_local(19,8,0):", $t0} $t0 == $t0;

    // $t8 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:49+35
    assume {:print "$at(5,8185,8220)"} true;

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:49+35
    assume $IsValid'address'($t8);

    // assume Eq<address>($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:49+35
    assume $IsEqual'address'($t8, $1_Signer_spec_address_of($t0));

    // $t8 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:49+35

    // $t9 := exists<AccountLimits::LimitsDefinition<#0>>($t8) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:14+6
    $t9 := $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $t8);

    // $t10 := !($t9) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:189:13+1
    call $t10 := $Not($t9);

    // $t11 := 0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:39+18
    assume {:print "$at(5,8261,8279)"} true;
    $t11 := 0;
    assume $IsValid'u64'($t11);

    // $t12 := opaque begin: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:13+45

    // assume WellFormed($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:13+45
    assume $IsValid'u64'($t12);

    // assume Eq<u64>($t12, 6) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:13+45
    assume $IsEqual'u64'($t12, 6);

    // $t12 := opaque end: Errors::already_published($t11) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:190:13+45

    // trace_local[tmp#$2]($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    assume {:print "$at(5,8129,8290)"} true;
    assume {:print "$track_local(19,8,2):", $t12} $t12 == $t12;

    // trace_local[tmp#$1]($t10) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    assume {:print "$track_local(19,8,1):", $t10} $t10 == $t10;

    // if ($t10) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    if ($t10) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161

    // trace_abort($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    assume {:print "$at(5,8129,8290)"} true;
    assume {:print "$track_abort(19,8):", $t12} $t12 == $t12;

    // $t13 := move($t12) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    $t13 := $t12;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:188:9+161
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:193:13+15
    assume {:print "$at(5,8321,8336)"} true;
L0:

    // trace_local[tmp#$7]($t0) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:193:13+15
    assume {:print "$track_local(19,8,7):", $t0} $t0 == $t0;

    // $t14 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:195:29+7
    assume {:print "$at(5,8407,8414)"} true;
    $t14 := 18446744073709551615;
    assume $IsValid'u64'($t14);

    // $t15 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:196:30+7
    assume {:print "$at(5,8445,8452)"} true;
    $t15 := 18446744073709551615;
    assume $IsValid'u64'($t15);

    // $t16 := 86400000000 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:198:30+7
    assume {:print "$at(5,8521,8528)"} true;
    $t16 := 86400000000;
    assume $IsValid'u64'($t16);

    // $t17 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:197:30+7
    assume {:print "$at(5,8483,8490)"} true;
    $t17 := 18446744073709551615;
    assume $IsValid'u64'($t17);

    // $t18 := pack AccountLimits::LimitsDefinition<#0>($t14, $t15, $t16, $t17) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:194:13+193
    assume {:print "$at(5,8350,8543)"} true;
    $t18 := $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($t14, $t15, $t16, $t17);

    // move_to<AccountLimits::LimitsDefinition<#0>>($t18, $t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:192:9+7
    assume {:print "$at(5,8300,8307)"} true;
    if ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory := $ResourceUpdate($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $1_Signer_spec_address_of($t0), $t18);
    }
    if ($abort_flag) {
        assume {:print "$at(5,8300,8307)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(19,8):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:201:5+1
    assume {:print "$at(5,8558,8559)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:201:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:201:5+1
L3:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:201:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

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

// fun XUS::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/XUS.move:13:5+595
procedure {:inline 1} $1_XUS_initialize(_$t0: $signer, _$t1: $signer) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: $1_DiemConfig_Configuration;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t21: int;
    var $t22: int;
    var $t23: $1_FixedPoint32_FixedPoint32;
    var $t24: bool;
    var $t25: int;
    var $t26: int;
    var $t27: Vec (int);
    var $t28: int;
    var $t29: int;
    var $t30: $1_DiemConfig_Configuration;
    var $t31: int;
    var $t32: int;
    var $t33: int;
    var $t34: int;
    var $t0: $signer;
    var $t1: $signer;
    var $temp_0'signer': $signer;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t2, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t1));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t4 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t5, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t5 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t6, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t1));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t1));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/XUS.move:13:5+1
    assume {:print "$at(41,429,430)"} true;
    assume {:print "$track_local(20,0,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/XUS.move:13:5+1
    assume {:print "$track_local(20,0,1):", $t1} $t1 == $t1;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    assume {:print "$at(41,526,557)"} true;

    // assume Identical($t9, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    assume ($t9 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t9) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    if ($t9) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t10)) at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t10));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    assume {:print "$at(41,526,557)"} true;
    assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XUS.move:17:9+31

    // assume Identical($t11, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    assume {:print "$at(41,567,612)"} true;

    // assume Identical($t12, Or(Or(Not(exists<Roles::RoleId>($t11)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t11)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    assume ($t12 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t11) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t11)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)));

    // if ($t12) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    if ($t12) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
L6:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t11)), Eq(5, $t10)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t11)), 1), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t10))) at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t11) && $IsEqual'num'(5, $t10)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t11)), 1) && $IsEqual'num'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    assume {:print "$at(41,567,612)"} true;
    assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45
L5:

    // opaque end: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/XUS.move:18:9+45

    // assume Identical($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t13 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    assume {:print "$at(41,622,657)"} true;

    // assume Identical($t14, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t13))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    assume ($t14 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t13)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t14) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    if ($t14) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
L8:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t10)), And(Not(exists<Roles::RoleId>($t13)), Eq(5, $t10))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t13)), 0), Eq(3, $t10))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t10))) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t10)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t13) && $IsEqual'num'(5, $t10))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t13)), 0) && $IsEqual'num'(3, $t10))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    assume {:print "$at(41,622,657)"} true;
    assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35
L7:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/XUS.move:19:9+35

    // $t15 := 1 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:48+1
    assume {:print "$at(41,796,797)"} true;
    $t15 := 1;
    assume $IsValid'u64'($t15);

    // $t16 := 1 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:51+1
    $t16 := 1;
    assume $IsValid'u64'($t16);

    // assume Identical($t17, Shl($t15, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:184:9+39
    assume {:print "$at(46,8340,8379)"} true;
    assume ($t17 == $shl($t15, 64));

    // assume Identical($t18, Shl($t16, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:185:9+43
    assume {:print "$at(46,8388,8431)"} true;
    assume ($t18 == $shl($t16, 32));

    // assume Identical($t19, Div($t17, $t18)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+53
    assume {:print "$at(46,8440,8493)"} true;
    assume ($t19 == ($t17 div $t18));

    // assume Identical($t20, Shl($t15, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:184:9+39
    assume {:print "$at(46,8340,8379)"} true;
    assume ($t20 == $shl($t15, 64));

    // assume Identical($t21, Shl($t16, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:185:9+43
    assume {:print "$at(46,8388,8431)"} true;
    assume ($t21 == $shl($t16, 32));

    // assume Identical($t22, Div($t20, $t21)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+53
    assume {:print "$at(46,8440,8493)"} true;
    assume ($t22 == ($t20 div $t21));

    // $t23 := opaque begin: FixedPoint32::create_from_rational($t15, $t16) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume {:print "$at(41,761,801)"} true;

    // assume Identical($t24, Or(Or(Eq<num>($t21, 0), And(Eq<num>($t22, 0), Neq<num>($t20, 0))), Gt($t22, 18446744073709551615))) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume ($t24 == (($IsEqual'num'($t21, 0) || ($IsEqual'num'($t22, 0) && !$IsEqual'num'($t20, 0))) || ($t22 > 18446744073709551615)));

    // if ($t24) goto L10 else goto L9 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    if ($t24) { goto L10; } else { goto L9; }

    // label L10 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
L10:

    // assume Or(Or(And(Eq<num>($t21, 0), Eq(7, $t10)), And(And(Eq<num>($t22, 0), Neq<num>($t20, 0)), Eq(7, $t10))), And(Gt($t22, 18446744073709551615), Eq(8, $t10))) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume ((($IsEqual'num'($t21, 0) && $IsEqual'num'(7, $t10)) || (($IsEqual'num'($t22, 0) && !$IsEqual'num'($t20, 0)) && $IsEqual'num'(7, $t10))) || (($t22 > 18446744073709551615) && $IsEqual'num'(8, $t10)));

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume {:print "$at(41,761,801)"} true;
    assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    goto L2;

    // label L9 at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
L9:

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume $IsValid'$1_FixedPoint32_FixedPoint32'($t23);

    // assume Eq<FixedPoint32::FixedPoint32>($t23, FixedPoint32::spec_create_from_rational($t15, $t16)) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40
    assume $IsEqual'$1_FixedPoint32_FixedPoint32'($t23, $1_FixedPoint32_spec_create_from_rational($t15, $t16));

    // $t23 := opaque end: FixedPoint32::create_from_rational($t15, $t16) at /home/ying/diem/language/diem-framework/modules/XUS.move:23:13+40

    // $t25 := 1000000 at /home/ying/diem/language/diem-framework/modules/XUS.move:24:13+7
    assume {:print "$at(41,839,846)"} true;
    $t25 := 1000000;
    assume $IsValid'u64'($t25);

    // $t26 := 100 at /home/ying/diem/language/diem-framework/modules/XUS.move:25:13+3
    assume {:print "$at(41,885,888)"} true;
    $t26 := 100;
    assume $IsValid'u64'($t26);

    // $t27 := [88, 85, 83] at /home/ying/diem/language/diem-framework/modules/XUS.move:26:13+6
    assume {:print "$at(41,932,938)"} true;
    $t27 := MakeVec3(88, 85, 83);
    assume $IsValid'vec'u8''($t27);

    // assume Identical($t28, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t28 == $1_Signer_spec_address_of($t1));

    // assume Identical($t29, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t29 == $1_Signer_spec_address_of($t0));

    // assume Identical($t30, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t30 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t31, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t31 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t32, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t32 == $1_Signer_spec_address_of($t1));

    // assume Identical($t33, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume ($t33 == $1_Signer_spec_address_of($t1));

    // assume Identical($t34, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume ($t34 == $1_Signer_spec_address_of($t1));

    // Diem::register_SCS_currency<XUS::XUS>($t0, $t1, $t23, $t25, $t26, $t27) on_abort goto L2 with $t10 at /home/ying/diem/language/diem-framework/modules/XUS.move:20:9+281
    assume {:print "$at(41,667,948)"} true;
    call $1_Diem_register_SCS_currency'$1_XUS_XUS'($t0, $t1, $t23, $t25, $t26, $t27);
    if ($abort_flag) {
        assume {:print "$at(41,667,948)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;
        goto L2;
    }

    // AccountLimits::publish_unrestricted_limits<XUS::XUS>($t0) on_abort goto L2 with $t10 at /home/ying/diem/language/diem-framework/modules/XUS.move:28:9+59
    assume {:print "$at(41,958,1017)"} true;
    call $1_AccountLimits_publish_unrestricted_limits'$1_XUS_XUS'($t0);
    if ($abort_flag) {
        assume {:print "$at(41,958,1017)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(20,0):", $t10} $t10 == $t10;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/XUS.move:29:5+1
    assume {:print "$at(41,1023,1024)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/XUS.move:29:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/XUS.move:29:5+1
L2:

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/XUS.move:29:5+1
    $abort_code := $t10;
    $abort_flag := true;
    return;

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

// fun XDX::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/XDX.move:48:5+973
procedure {:inline 1} $1_XDX_initialize(_$t0: $signer, _$t1: $signer) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $1_Diem_BurnCapability'$1_XDX_XDX';
    var $t5: $1_Diem_MintCapability'$1_XDX_XDX';
    var $t6: $1_Diem_Preburn'$1_XDX_XDX';
    var $t7: int;
    var $t8: $1_DiemConfig_Configuration;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: bool;
    var $t13: int;
    var $t14: bool;
    var $t15: int;
    var $t16: bool;
    var $t17: bool;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t21: int;
    var $t22: int;
    var $t23: int;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t27: int;
    var $t28: $1_FixedPoint32_FixedPoint32;
    var $t29: bool;
    var $t30: bool;
    var $t31: int;
    var $t32: int;
    var $t33: Vec (int);
    var $t34: int;
    var $t35: $1_DiemConfig_Configuration;
    var $t36: int;
    var $t37: $1_Diem_MintCapability'$1_XDX_XDX';
    var $t38: $1_Diem_BurnCapability'$1_XDX_XDX';
    var $t39: bool;
    var $t40: int;
    var $t41: int;
    var $t42: $1_Diem_Preburn'$1_XDX_XDX';
    var $t43: $1_XDX_Reserve;
    var $t0: $signer;
    var $t1: $signer;
    var $temp_0'$1_Diem_BurnCapability'$1_XDX_XDX'': $1_Diem_BurnCapability'$1_XDX_XDX';
    var $temp_0'$1_Diem_MintCapability'$1_XDX_XDX'': $1_Diem_MintCapability'$1_XDX_XDX';
    var $temp_0'$1_Diem_Preburn'$1_XDX_XDX'': $1_Diem_Preburn'$1_XDX_XDX';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t8 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t9, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t9 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // assume Identical($t11, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t1));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:48:5+1
    assume {:print "$at(40,2318,2319)"} true;
    assume {:print "$track_local(21,0,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/XDX.move:48:5+1
    assume {:print "$track_local(21,0,1):", $t1} $t1 == $t1;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    assume {:print "$at(40,2415,2446)"} true;

    // assume Identical($t12, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    assume ($t12 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t12) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    if ($t12) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t13)) at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t13));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    assume {:print "$at(40,2415,2446)"} true;
    assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/XDX.move:52:9+31

    // opaque begin: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    assume {:print "$at(40,2490,2537)"} true;

    // assume Identical($t14, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    assume ($t14 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t14) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    if ($t14) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
L7:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t13)) at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t13));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    assume {:print "$at(40,2490,2537)"} true;
    assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47
L6:

    // opaque end: CoreAddresses::assert_currency_info($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:54:9+47

    // $t15 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/XDX.move:56:33+9
    assume {:print "$at(40,2606,2615)"} true;
    $t15 := 173345816;
    assume $IsValid'address'($t15);

    // $t16 := exists<XDX::Reserve>($t15) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:17+6
    $t16 := $ResourceExists($1_XDX_Reserve_$memory, $t15);

    // $t17 := !($t16) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:16+1
    call $t17 := $Not($t16);

    // $t18 := 0 at /home/ying/diem/language/diem-framework/modules/XDX.move:56:71+8
    $t18 := 0;
    assume $IsValid'u64'($t18);

    // $t19 := opaque begin: Errors::already_published($t18) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:45+35

    // assume WellFormed($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:45+35
    assume $IsValid'u64'($t19);

    // assume Eq<u64>($t19, 6) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:45+35
    assume $IsEqual'u64'($t19, 6);

    // $t19 := opaque end: Errors::already_published($t18) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:45+35

    // trace_local[tmp#$3]($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    assume {:print "$track_local(21,0,3):", $t19} $t19 == $t19;

    // trace_local[tmp#$2]($t17) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    assume {:print "$track_local(21,0,2):", $t17} $t17 == $t17;

    // if ($t17) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    if ($t17) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
L1:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    assume {:print "$at(40,2582,2654)"} true;
    assume {:print "$track_abort(21,0):", $t19} $t19 == $t19;

    // $t13 := move($t19) at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    $t13 := $t19;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:56:9+72
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/XDX.move:58:13+10
    assume {:print "$at(40,2733,2743)"} true;
L0:

    // $t20 := 1 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:48+1
    assume {:print "$at(40,2792,2793)"} true;
    $t20 := 1;
    assume $IsValid'u64'($t20);

    // $t21 := 1 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:51+1
    $t21 := 1;
    assume $IsValid'u64'($t21);

    // assume Identical($t22, Shl($t20, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:184:9+39
    assume {:print "$at(46,8340,8379)"} true;
    assume ($t22 == $shl($t20, 64));

    // assume Identical($t23, Shl($t21, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:185:9+43
    assume {:print "$at(46,8388,8431)"} true;
    assume ($t23 == $shl($t21, 32));

    // assume Identical($t24, Div($t22, $t23)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+53
    assume {:print "$at(46,8440,8493)"} true;
    assume ($t24 == ($t22 div $t23));

    // assume Identical($t25, Shl($t20, 64)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:184:9+39
    assume {:print "$at(46,8340,8379)"} true;
    assume ($t25 == $shl($t20, 64));

    // assume Identical($t26, Shl($t21, 32)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:185:9+43
    assume {:print "$at(46,8388,8431)"} true;
    assume ($t26 == $shl($t21, 32));

    // assume Identical($t27, Div($t25, $t26)) at /home/ying/diem/language/move-stdlib/modules/FixedPoint32.move:186:9+53
    assume {:print "$at(46,8440,8493)"} true;
    assume ($t27 == ($t25 div $t26));

    // $t28 := opaque begin: FixedPoint32::create_from_rational($t20, $t21) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume {:print "$at(40,2757,2797)"} true;

    // assume Identical($t29, Or(Or(Eq<num>($t26, 0), And(Eq<num>($t27, 0), Neq<num>($t25, 0))), Gt($t27, 18446744073709551615))) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume ($t29 == (($IsEqual'num'($t26, 0) || ($IsEqual'num'($t27, 0) && !$IsEqual'num'($t25, 0))) || ($t27 > 18446744073709551615)));

    // if ($t29) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    if ($t29) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
L9:

    // assume Or(Or(And(Eq<num>($t26, 0), Eq(7, $t13)), And(And(Eq<num>($t27, 0), Neq<num>($t25, 0)), Eq(7, $t13))), And(Gt($t27, 18446744073709551615), Eq(8, $t13))) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume ((($IsEqual'num'($t26, 0) && $IsEqual'num'(7, $t13)) || (($IsEqual'num'($t27, 0) && !$IsEqual'num'($t25, 0)) && $IsEqual'num'(7, $t13))) || (($t27 > 18446744073709551615) && $IsEqual'num'(8, $t13)));

    // trace_abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume {:print "$at(40,2757,2797)"} true;
    assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
L8:

    // assume WellFormed($t28) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume $IsValid'$1_FixedPoint32_FixedPoint32'($t28);

    // assume Eq<FixedPoint32::FixedPoint32>($t28, FixedPoint32::spec_create_from_rational($t20, $t21)) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40
    assume $IsEqual'$1_FixedPoint32_FixedPoint32'($t28, $1_FixedPoint32_spec_create_from_rational($t20, $t21));

    // $t28 := opaque end: FixedPoint32::create_from_rational($t20, $t21) at /home/ying/diem/language/diem-framework/modules/XDX.move:59:13+40

    // $t30 := true at /home/ying/diem/language/diem-framework/modules/XDX.move:60:13+4
    assume {:print "$at(40,2835,2839)"} true;
    $t30 := true;
    assume $IsValid'bool'($t30);

    // $t31 := 1000000 at /home/ying/diem/language/diem-framework/modules/XDX.move:61:13+7
    assume {:print "$at(40,2872,2879)"} true;
    $t31 := 1000000;
    assume $IsValid'u64'($t31);

    // $t32 := 1000 at /home/ying/diem/language/diem-framework/modules/XDX.move:62:13+4
    assume {:print "$at(40,2918,2922)"} true;
    $t32 := 1000;
    assume $IsValid'u64'($t32);

    // $t33 := [88, 68, 88] at /home/ying/diem/language/diem-framework/modules/XDX.move:63:13+6
    assume {:print "$at(40,2965,2971)"} true;
    $t33 := MakeVec3(88, 68, 88);
    assume $IsValid'vec'u8''($t33);

    // assume Identical($t34, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t34 == $1_Signer_spec_address_of($t0));

    // assume Identical($t35, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t35 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t36, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t36 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // ($t37, $t38) := Diem::register_currency<XDX::XDX>($t0, $t28, $t30, $t31, $t32, $t33) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:57:36+290
    assume {:print "$at(40,2691,2981)"} true;
    call $t37,$t38 := $1_Diem_register_currency'$1_XDX_XDX'($t0, $t28, $t30, $t31, $t32, $t33);
    if ($abort_flag) {
        assume {:print "$at(40,2691,2981)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // trace_local[burn_cap]($t38) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:24+8
    assume {:print "$track_local(21,0,4):", $t38} $t38 == $t38;

    // trace_local[mint_cap]($t37) at /home/ying/diem/language/diem-framework/modules/XDX.move:57:14+8
    assume {:print "$track_local(21,0,5):", $t37} $t37 == $t37;

    // $t39 := false at /home/ying/diem/language/diem-framework/modules/XDX.move:66:55+5
    assume {:print "$at(40,3070,3075)"} true;
    $t39 := false;
    assume $IsValid'bool'($t39);

    // assume Identical($t40, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t40 == $1_Signer_spec_address_of($t1));

    // Diem::update_minting_ability<XDX::XDX>($t1, $t39) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:66:9+52
    assume {:print "$at(40,3024,3076)"} true;
    call $1_Diem_update_minting_ability'$1_XDX_XDX'($t1, $t39);
    if ($abort_flag) {
        assume {:print "$at(40,3024,3076)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // AccountLimits::publish_unrestricted_limits<XDX::XDX>($t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:67:9+59
    assume {:print "$at(40,3086,3145)"} true;
    call $1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'($t0);
    if ($abort_flag) {
        assume {:print "$at(40,3086,3145)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // assume Identical($t41, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t41 == $1_Signer_spec_address_of($t1));

    // $t42 := Diem::create_preburn<XDX::XDX>($t1) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:68:27+37
    assume {:print "$at(40,3173,3210)"} true;
    call $t42 := $1_Diem_create_preburn'$1_XDX_XDX'($t1);
    if ($abort_flag) {
        assume {:print "$at(40,3173,3210)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // trace_local[preburn_cap]($t42) at /home/ying/diem/language/diem-framework/modules/XDX.move:68:13+11
    assume {:print "$track_local(21,0,6):", $t42} $t42 == $t42;

    // $t43 := pack XDX::Reserve($t37, $t38, $t42) at /home/ying/diem/language/diem-framework/modules/XDX.move:69:29+43
    assume {:print "$at(40,3240,3283)"} true;
    $t43 := $1_XDX_Reserve($t37, $t38, $t42);

    // move_to<XDX::Reserve>($t43, $t0) on_abort goto L3 with $t13 at /home/ying/diem/language/diem-framework/modules/XDX.move:69:9+7
    if ($ResourceExists($1_XDX_Reserve_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_XDX_Reserve_$memory := $ResourceUpdate($1_XDX_Reserve_$memory, $1_Signer_spec_address_of($t0), $t43);
    }
    if ($abort_flag) {
        assume {:print "$at(40,3220,3227)"} true;
        $t13 := $abort_code;
        assume {:print "$track_abort(21,0):", $t13} $t13 == $t13;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/XDX.move:70:5+1
    assume {:print "$at(40,3290,3291)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/XDX.move:70:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/XDX.move:70:5+1
L3:

    // abort($t13) at /home/ying/diem/language/diem-framework/modules/XDX.move:70:5+1
    $abort_code := $t13;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASPDomain.move:298:5+106
function {:inline} $1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory: $Memory $1_VASPDomain_VASPDomainManager): bool {
    $ResourceExists($1_VASPDomain_VASPDomainManager_$memory, 186537453)
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

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:164:5+80
function {:inline} $1_VASP_$is_child($1_VASP_ChildVASP_$memory: $Memory $1_VASP_ChildVASP, addr: int): bool {
    $ResourceExists($1_VASP_ChildVASP_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:154:5+82
function {:inline} $1_VASP_$is_parent($1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, addr: int): bool {
    $ResourceExists($1_VASP_ParentVASP_$memory, addr)
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

// fun TransactionFee::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:23:5+253
procedure {:inline 1} $1_TransactionFee_initialize(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t0: $signer;
    var $temp_0'signer': $signer;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:23:5+1
    assume {:print "$at(33,873,874)"} true;
    assume {:print "$track_local(24,2,0):", $t0} $t0 == $t0;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    assume {:print "$at(33,941,972)"} true;

    // assume Identical($t2, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    assume ($t2 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t2) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    if ($t2) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t3)) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t3));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    assume {:print "$at(33,941,972)"} true;
    assume {:print "$track_abort(24,2):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:26:9+31

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    assume {:print "$at(33,982,1027)"} true;

    // assume Identical($t5, Or(Or(Not(exists<Roles::RoleId>($t4)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    assume ($t5 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t4) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t5) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    if ($t5) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
L6:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t3)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1), Eq(3, $t3))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t3))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'num'(5, $t3)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1) && $IsEqual'num'(3, $t3))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t3)));

    // trace_abort($t3) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    assume {:print "$at(33,982,1027)"} true;
    assume {:print "$track_abort(24,2):", $t3} $t3 == $t3;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45
L5:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:27:9+45

    // TransactionFee::add_txn_fee_currency<XUS::XUS>($t0) on_abort goto L2 with $t3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:29:9+37
    assume {:print "$at(33,1082,1119)"} true;
    call $1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'($t0);
    if ($abort_flag) {
        assume {:print "$at(33,1082,1119)"} true;
        $t3 := $abort_code;
        assume {:print "$track_abort(24,2):", $t3} $t3 == $t3;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:5+1
    assume {:print "$at(33,1125,1126)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:5+1
L2:

    // abort($t3) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:30:5+1
    $abort_code := $t3;
    $abort_flag := true;
    return;

}

// fun TransactionFee::add_txn_fee_currency<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:55:5+501
procedure {:inline 1} $1_TransactionFee_add_txn_fee_currency'$1_XUS_XUS'(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: bool;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: $1_Diem_Diem'$1_XUS_XUS';
    var $t12: int;
    var $t13: $1_Diem_Preburn'$1_XUS_XUS';
    var $t14: $1_TransactionFee_TransactionFee'$1_XUS_XUS';
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:55:5+1
    assume {:print "$at(33,2089,2090)"} true;
    assume {:print "$track_local(24,0,0):", $t0} $t0 == $t0;

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    assume {:print "$at(33,2162,2207)"} true;

    // assume Identical($t4, Or(Or(Not(exists<Roles::RoleId>($t3)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    assume ($t4 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t3) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t4) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    if ($t4) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t3)), Eq(5, $t5)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 1), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t3) && $IsEqual'num'(5, $t5)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 1) && $IsEqual'num'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    assume {:print "$at(33,2162,2207)"} true;
    assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:56:9+45

    // opaque begin: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    assume {:print "$at(33,2217,2253)"} true;

    // assume Identical($t6, Not(Diem::spec_is_currency<#0>())) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    assume ($t6 == !$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // if ($t6) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    if ($t6) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
L7:

    // assume And(Not(Diem::spec_is_currency<#0>()), Eq(5, $t5)) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    assume (!$1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) && $IsEqual'num'(5, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    assume {:print "$at(33,2217,2253)"} true;
    assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36
L6:

    // opaque end: Diem::assert_is_currency<#0>() at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:57:9+36

    // $t7 := TransactionFee::is_coin_initialized<#0>() on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:59:14+31
    assume {:print "$at(33,2284,2315)"} true;
    call $t7 := $1_TransactionFee_is_coin_initialized'$1_XUS_XUS'();
    if ($abort_flag) {
        assume {:print "$at(33,2284,2315)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t8 := !($t7) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:59:13+1
    call $t8 := $Not($t7);

    // $t9 := 0 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:39+16
    assume {:print "$at(33,2355,2371)"} true;
    $t9 := 0;
    assume $IsValid'u64'($t9);

    // $t10 := opaque begin: Errors::already_published($t9) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:13+43

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:13+43
    assume $IsValid'u64'($t10);

    // assume Eq<u64>($t10, 6) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:13+43
    assume $IsEqual'u64'($t10, 6);

    // $t10 := opaque end: Errors::already_published($t9) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:60:13+43

    // trace_local[tmp#$2]($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    assume {:print "$at(33,2263,2382)"} true;
    assume {:print "$track_local(24,0,2):", $t10} $t10 == $t10;

    // trace_local[tmp#$1]($t8) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    assume {:print "$track_local(24,0,1):", $t8} $t8 == $t8;

    // if ($t8) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    if ($t8) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119

    // trace_abort($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    assume {:print "$at(33,2263,2382)"} true;
    assume {:print "$track_abort(24,0):", $t10} $t10 == $t10;

    // $t5 := move($t10) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    $t5 := $t10;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:58:9+119
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:63:13+10
    assume {:print "$at(33,2413,2423)"} true;
L0:

    // $t11 := Diem::zero<#0>() on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:65:26+12
    assume {:print "$at(33,2489,2501)"} true;
    call $t11 := $1_Diem_zero'$1_XUS_XUS'();
    if ($abort_flag) {
        assume {:print "$at(33,2489,2501)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // $t13 := Diem::create_preburn<#0>($t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:66:26+32
    assume {:print "$at(33,2528,2560)"} true;
    call $t13 := $1_Diem_create_preburn'$1_XUS_XUS'($t0);
    if ($abort_flag) {
        assume {:print "$at(33,2528,2560)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t14 := pack TransactionFee::TransactionFee<#0>($t11, $t13) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:64:13+137
    assume {:print "$at(33,2437,2574)"} true;
    $t14 := $1_TransactionFee_TransactionFee'$1_XUS_XUS'($t11, $t13);

    // move_to<TransactionFee::TransactionFee<#0>>($t14, $t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:62:9+7
    assume {:print "$at(33,2392,2399)"} true;
    if ($ResourceExists($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory := $ResourceUpdate($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $1_Signer_spec_address_of($t0), $t14);
    }
    if ($abort_flag) {
        assume {:print "$at(33,2392,2399)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(24,0):", $t5} $t5 == $t5;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:69:5+1
    assume {:print "$at(33,2589,2590)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:69:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:69:5+1
L3:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:69:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun TransactionFee::is_coin_initialized<XUS::XUS> [baseline] at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:44:5+118
procedure {:inline 1} $1_TransactionFee_is_coin_initialized'$1_XUS_XUS'() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := 0xb1e55ed at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:45:42+19
    assume {:print "$at(33,1752,1771)"} true;
    $t0 := 186537453;
    assume $IsValid'address'($t0);

    // $t1 := exists<TransactionFee::TransactionFee<#0>>($t0) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:45:9+6
    $t1 := $ResourceExists($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:45:9+53
    assume {:print "$track_return(24,3,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:46:5+1
    assume {:print "$at(33,1777,1778)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:46:5+1
    $ret0 := $t1;
    return;

}

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

// fun DualAttestation::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:5+574
procedure {:inline 1} $1_DualAttestation_initialize(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: bool;
    var $t10: int;
    var $t11: bool;
    var $t12: bool;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t21: bool;
    var $t22: int;
    var $t23: int;
    var $t24: int;
    var $t25: $1_DualAttestation_Limit;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u128': int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t6, Mul(1000, Diem::spec_scaling_factor<XDX::XDX>())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:500:9+86
    assume {:print "$at(22,22272,22358)"} true;
    assume ($t6 == (1000 * $1_Diem_spec_scaling_factor'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:483:5+1
    assume {:print "$at(22,21468,21469)"} true;
    assume {:print "$track_local(25,10,0):", $t0} $t0 == $t0;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+31
    assume {:print "$at(22,21521,21552)"} true;

    // assume Identical($t7, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+31
    assume ($t7 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t7) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+31
    if ($t7) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+31
L7:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t8)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+31
    assume {:print "$at(22,21521,21552)"} true;
    assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+31
    goto L5;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+31
L6:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:484:9+31

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+43
    assume {:print "$at(22,21562,21605)"} true;

    // assume Identical($t9, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+43
    assume ($t9 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t9) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+43
    if ($t9) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+43
L9:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t8)) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+43
    assume {:print "$at(22,21562,21605)"} true;
    assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+43
    goto L5;

    // label L8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+43
L8:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:485:9+43

    // $t10 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:31+9
    assume {:print "$at(22,21664,21673)"} true;
    $t10 := 173345816;
    assume $IsValid'address'($t10);

    // $t11 := exists<DualAttestation::Limit>($t10) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:17+6
    $t11 := $ResourceExists($1_DualAttestation_Limit_$memory, $t10);

    // $t12 := !($t11) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:16+1
    call $t12 := $Not($t11);

    // $t13 := 1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:69+6
    $t13 := 1;
    assume $IsValid'u64'($t13);

    // $t14 := opaque begin: Errors::already_published($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:43+33

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:43+33
    assume $IsValid'u64'($t14);

    // assume Eq<u64>($t14, 6) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:43+33
    assume $IsEqual'u64'($t14, 6);

    // $t14 := opaque end: Errors::already_published($t13) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:43+33

    // trace_local[tmp#$2]($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+68
    assume {:print "$track_local(25,10,2):", $t14} $t14 == $t14;

    // trace_local[tmp#$1]($t12) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+68
    assume {:print "$track_local(25,10,1):", $t12} $t12 == $t12;

    // if ($t12) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+68
    if ($t12) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+68
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+68

    // trace_abort($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+68
    assume {:print "$at(22,21642,21710)"} true;
    assume {:print "$track_abort(25,10):", $t14} $t14 == $t14;

    // $t8 := move($t14) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+68
    $t8 := $t14;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:486:9+68
    goto L5;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:30+30
    assume {:print "$at(22,21741,21771)"} true;
L0:

    // $t15 := 1000 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:30+30
    $t15 := 1000;
    assume $IsValid'u64'($t15);

    // $t16 := (u128)($t15) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:29+40
    call $t16 := $CastU128($t15);
    if ($abort_flag) {
        assume {:print "$at(22,21740,21780)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t17 := Diem::scaling_factor<XDX::XDX>() on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:73+27
    call $t17 := $1_Diem_scaling_factor'$1_XDX_XDX'();
    if ($abort_flag) {
        assume {:print "$at(22,21784,21811)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t18 := (u128)($t17) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:72+37
    call $t18 := $CastU128($t17);
    if ($abort_flag) {
        assume {:print "$at(22,21783,21820)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t19 := *($t16, $t18) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:70+1
    call $t19 := $MulU128($t16, $t18);
    if ($abort_flag) {
        assume {:print "$at(22,21781,21782)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // trace_local[initial_limit]($t19) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:487:13+13
    assume {:print "$track_local(25,10,5):", $t19} $t19 == $t19;

    // $t20 := 18446744073709551615 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:33+7
    assume {:print "$at(22,21854,21861)"} true;
    $t20 := 18446744073709551615;
    assume $IsValid'u128'($t20);

    // $t21 := <=($t19, $t20) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:30+2
    call $t21 := $Le($t19, $t20);

    // $t22 := 1 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:65+6
    $t22 := 1;
    assume $IsValid'u64'($t22);

    // $t23 := opaque begin: Errors::limit_exceeded($t22) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:42+30

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:42+30
    assume $IsValid'u64'($t23);

    // assume Eq<u64>($t23, 8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:42+30
    assume $IsEqual'u64'($t23, 8);

    // $t23 := opaque end: Errors::limit_exceeded($t22) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:42+30

    // trace_local[tmp#$4]($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:9+64
    assume {:print "$track_local(25,10,4):", $t23} $t23 == $t23;

    // trace_local[tmp#$3]($t21) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:9+64
    assume {:print "$track_local(25,10,3):", $t21} $t21 == $t21;

    // if ($t21) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:9+64
    if ($t21) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:9+64
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:9+64

    // trace_abort($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:9+64
    assume {:print "$at(22,21830,21894)"} true;
    assume {:print "$track_abort(25,10):", $t23} $t23 == $t23;

    // $t8 := move($t23) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:9+64
    $t8 := $t23;

    // goto L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:488:9+64
    goto L5;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:490:13+10
    assume {:print "$at(22,21925,21935)"} true;
L2:

    // $t24 := (u64)($t19) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:492:34+22
    assume {:print "$at(22,21990,22012)"} true;
    call $t24 := $CastU64($t19);
    if ($abort_flag) {
        assume {:print "$at(22,21990,22012)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // $t25 := pack DualAttestation::Limit($t24) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:491:13+77
    assume {:print "$at(22,21949,22026)"} true;
    $t25 := $1_DualAttestation_Limit($t24);

    // move_to<DualAttestation::Limit>($t25, $t0) on_abort goto L5 with $t8 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:489:9+7
    assume {:print "$at(22,21904,21911)"} true;
    if ($ResourceExists($1_DualAttestation_Limit_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_DualAttestation_Limit_$memory := $ResourceUpdate($1_DualAttestation_Limit_$memory, $1_Signer_spec_address_of($t0), $t25);
    }
    if ($abort_flag) {
        assume {:print "$at(22,21904,21911)"} true;
        $t8 := $abort_code;
        assume {:print "$track_abort(25,10):", $t8} $t8 == $t8;
        goto L5;
    }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:495:5+1
    assume {:print "$at(22,22041,22042)"} true;
L4:

    // return () at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:495:5+1
    return;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:495:5+1
L5:

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:495:5+1
    $abort_code := $t8;
    $abort_flag := true;
    return;

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

// fun DiemTransactionPublishingOption::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+436
procedure {:inline 1} $1_DiemTransactionPublishingOption_initialize(_$t0: $signer, _$t1: Vec (Vec (int)), _$t2: bool) returns ()
{
    // declare local variables
    var $t3: int;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption;
    var $t10: int;
    var $t11: bool;
    var $t0: $signer;
    var $t1: Vec (Vec (int));
    var $t2: bool;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'': $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'': $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    var $1_DiemConfig_Configuration_$memory#208: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // bytecode translation starts here
    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    assume {:print "$at(19,1560,1561)"} true;
    assume {:print "$track_local(26,1,0):", $t0} $t0 == $t0;

    // trace_local[script_allow_list]($t1) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    assume {:print "$track_local(26,1,1):", $t1} $t1 == $t1;

    // trace_local[module_publishing_allowed]($t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:35:5+1
    assume {:print "$track_local(26,1,2):", $t2} $t2 == $t2;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    assume {:print "$at(19,1716,1747)"} true;

    // assume Identical($t5, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    assume ($t5 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t5) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    if ($t5) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t6)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t6));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    assume {:print "$at(19,1716,1747)"} true;
    assume {:print "$track_abort(26,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:40:9+31

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume {:print "$at(19,1757,1792)"} true;

    // assume Identical($t8, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t7))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t7)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume ($t8 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t7)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t7)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t8) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    if ($t8) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6)), And(Not(exists<Roles::RoleId>($t7)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t7)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t6)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t7) && $IsEqual'num'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t7)), 0) && $IsEqual'num'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    assume {:print "$at(19,1757,1792)"} true;
    assume {:print "$track_abort(26,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:41:9+35

    // $t9 := pack DiemTransactionPublishingOption::DiemTransactionPublishingOption($t1, $t2) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:45:13+108
    assume {:print "$at(19,1871,1979)"} true;
    $t9 := $1_DiemTransactionPublishingOption_DiemTransactionPublishingOption($t1, $t2);

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume {:print "$at(19,1803,1989)"} true;

    // assume Identical($t11, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t10))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume ($t11 == (((($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t10)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t11) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    if ($t11) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t10)), Eq(5, $t6))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 0), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume (((($1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t10) && $IsEqual'num'(5, $t6))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 0) && $IsEqual'num'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume {:print "$at(19,1803,1989)"} true;
    assume {:print "$track_abort(26,1):", $t6} $t6 == $t6;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
L7:

    // @208 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    $1_DiemConfig_Configuration_$memory#208 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'';
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816);
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816, $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, 173345816);
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>() at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory);

    // assume Eq<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(DiemConfig::$get<DiemTransactionPublishingOption::DiemTransactionPublishingOption>(), $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $IsEqual'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_$get'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory), $t9);

    // assume Eq<bool>(DiemConfig::spec_has_config[@208](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#208), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemTransactionPublishingOption::DiemTransactionPublishingOption>($t0, $t9) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:43:9+186

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:49:5+1
    assume {:print "$at(19,1995,1996)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:49:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:49:5+1
L2:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:49:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

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

// fun AccountFreezing::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:5+508
procedure {:inline 1} $1_AccountFreezing_initialize(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
    var $t12: $1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent';
    var $t13: $1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent';
    var $t14: $1_AccountFreezing_FreezeEventsHolder;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:63:9+47
    assume {:print "$at(4,2353,2400)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:48:5+1
    assume {:print "$at(4,1690,1691)"} true;
    assume {:print "$track_local(31,4,0):", $t0} $t0 == $t0;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+31
    assume {:print "$at(4,1743,1774)"} true;

    // assume Identical($t4, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+31
    assume ($t4 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t4) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+31
    if ($t4) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t5)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+31
    assume {:print "$at(4,1743,1774)"} true;
    assume {:print "$track_abort(31,4):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:49:9+31

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+43
    assume {:print "$at(4,1784,1827)"} true;

    // assume Identical($t6, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+43
    assume ($t6 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t6) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+43
    if ($t6) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+43
L7:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+43
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+43
    assume {:print "$at(4,1784,1827)"} true;
    assume {:print "$track_abort(31,4):", $t5} $t5 == $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+43
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+43
L6:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:50:9+43

    // $t7 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:41+30
    assume {:print "$at(4,1885,1915)"} true;

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:41+30
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:41+30
    assume $IsEqual'address'($t7, $1_Signer_spec_address_of($t0));

    // $t7 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:41+30

    // $t8 := exists<AccountFreezing::FreezeEventsHolder>($t7) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:14+6
    $t8 := $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, $t7);

    // $t9 := !($t8) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:52:13+1
    call $t9 := $Not($t8);

    // $t10 := 1 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:39+21
    assume {:print "$at(4,1956,1977)"} true;
    $t10 := 1;
    assume $IsValid'u64'($t10);

    // $t11 := opaque begin: Errors::already_published($t10) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:13+48

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:13+48
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 6) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:13+48
    assume $IsEqual'u64'($t11, 6);

    // $t11 := opaque end: Errors::already_published($t10) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:53:13+48

    // trace_local[tmp#$2]($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+151
    assume {:print "$at(4,1837,1988)"} true;
    assume {:print "$track_local(31,4,2):", $t11} $t11 == $t11;

    // trace_local[tmp#$1]($t9) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+151
    assume {:print "$track_local(31,4,1):", $t9} $t9 == $t9;

    // if ($t9) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+151
    if ($t9) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+151
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+151

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+151
    assume {:print "$at(4,1837,1988)"} true;
    assume {:print "$track_abort(31,4):", $t11} $t11 == $t11;

    // $t5 := move($t11) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+151
    $t5 := $t11;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:51:9+151
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:55:17+10
    assume {:print "$at(4,2006,2016)"} true;
L0:

    // $t12 := Event::new_event_handle<AccountFreezing::FreezeAccountEvent>($t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:56:34+35
    assume {:print "$at(4,2072,2107)"} true;
    call $t12 := $1_Event_new_event_handle'$1_AccountFreezing_FreezeAccountEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(4,2072,2107)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(31,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t13 := Event::new_event_handle<AccountFreezing::UnfreezeAccountEvent>($t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:57:36+35
    assume {:print "$at(4,2144,2179)"} true;
    call $t13 := $1_Event_new_event_handle'$1_AccountFreezing_UnfreezeAccountEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(4,2144,2179)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(31,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // $t14 := pack AccountFreezing::FreezeEventsHolder($t12, $t13) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:55:29+172
    assume {:print "$at(4,2018,2190)"} true;
    $t14 := $1_AccountFreezing_FreezeEventsHolder($t12, $t13);

    // move_to<AccountFreezing::FreezeEventsHolder>($t14, $t0) on_abort goto L3 with $t5 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:55:9+7
    if ($ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_AccountFreezing_FreezeEventsHolder_$memory := $ResourceUpdate($1_AccountFreezing_FreezeEventsHolder_$memory, $1_Signer_spec_address_of($t0), $t14);
    }
    if ($abort_flag) {
        assume {:print "$at(4,1998,2005)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(31,4):", $t5} $t5 == $t5;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:59:5+1
    assume {:print "$at(4,2197,2198)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:59:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:59:5+1
L3:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:59:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1617:5+247
function {:inline} $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, addr: int): bool {
    $1_Option_$is_none'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($ResourceValue($1_DiemAccount_DiemAccount_$memory, addr)))
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1641:5+95
function {:inline} $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, check_addr: int): bool {
    $ResourceExists($1_DiemAccount_DiemAccount_$memory, check_addr)
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

// fun DiemBlock::is_initialized [baseline] at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:55:5+75
procedure {:inline 1} $1_DiemBlock_is_initialized() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := 0xa550c18 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:56:31+9
    assume {:print "$at(13,2101,2110)"} true;
    $t0 := 173345816;
    assume $IsValid'address'($t0);

    // $t1 := exists<DiemBlock::BlockMetadata>($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:56:9+6
    $t1 := $ResourceExists($1_DiemBlock_BlockMetadata_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:56:9+32
    assume {:print "$track_return(37,3,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:57:5+1
    assume {:print "$at(13,2116,2117)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:57:5+1
    $ret0 := $t1;
    return;

}

// fun DiemBlock::initialize_block_metadata [baseline] at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:32:5+531
procedure {:inline 1} $1_DiemBlock_initialize_block_metadata(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: bool;
    var $t6: bool;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $1_Event_EventHandle'$1_DiemBlock_NewBlockEvent';
    var $t12: $1_DiemBlock_BlockMetadata;
    var $t0: $signer;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:32:5+1
    assume {:print "$at(13,1130,1131)"} true;
    assume {:print "$track_local(37,2,0):", $t0} $t0 == $t0;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    assume {:print "$at(13,1195,1226)"} true;

    // assume Identical($t3, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    assume ($t3 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t3) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    if ($t3) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
L5:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t4)) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    assume {:print "$at(13,1195,1226)"} true;
    assume {:print "$track_abort(37,2):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31
L4:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:33:9+31

    // opaque begin: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    assume {:print "$at(13,1312,1352)"} true;

    // assume Identical($t5, Neq<address>(Signer::spec_address_of($t0), a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    assume ($t5 == !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816));

    // if ($t5) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    if ($t5) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
L7:

    // assume And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t4)) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    assume (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t4));

    // trace_abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    assume {:print "$at(13,1312,1352)"} true;
    assume {:print "$track_abort(37,2):", $t4} $t4 == $t4;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40
L6:

    // opaque end: CoreAddresses::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:35:9+40

    // $t6 := DiemBlock::is_initialized() on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:17+16
    assume {:print "$at(13,1371,1387)"} true;
    call $t6 := $1_DiemBlock_is_initialized();
    if ($abort_flag) {
        assume {:print "$at(13,1371,1387)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(37,2):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t7 := !($t6) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:16+1
    call $t7 := $Not($t6);

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:61+15
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := opaque begin: Errors::already_published($t8) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:35+42

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:35+42
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 6) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:35+42
    assume $IsEqual'u64'($t9, 6);

    // $t9 := opaque end: Errors::already_published($t8) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:35+42

    // trace_local[tmp#$2]($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    assume {:print "$track_local(37,2,2):", $t9} $t9 == $t9;

    // trace_local[tmp#$1]($t7) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    assume {:print "$track_local(37,2,1):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    assume {:print "$at(13,1363,1432)"} true;
    assume {:print "$track_abort(37,2):", $t9} $t9 == $t9;

    // $t4 := move($t9) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    $t4 := $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:37:9+69
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:39:13+7
    assume {:print "$at(13,1478,1485)"} true;
L0:

    // $t10 := 0 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:41:25+1
    assume {:print "$at(13,1539,1540)"} true;
    $t10 := 0;
    assume $IsValid'u64'($t10);

    // $t11 := Event::new_event_handle<DiemBlock::NewBlockEvent>($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:42:35+53
    assume {:print "$at(13,1576,1629)"} true;
    call $t11 := $1_Event_new_event_handle'$1_DiemBlock_NewBlockEvent'($t0);
    if ($abort_flag) {
        assume {:print "$at(13,1576,1629)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(37,2):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t12 := pack DiemBlock::BlockMetadata($t10, $t11) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:40:13+145
    assume {:print "$at(13,1499,1644)"} true;
    $t12 := $1_DiemBlock_BlockMetadata($t10, $t11);

    // move_to<DiemBlock::BlockMetadata>($t12, $t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:38:9+7
    assume {:print "$at(13,1442,1449)"} true;
    if ($ResourceExists($1_DiemBlock_BlockMetadata_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_DiemBlock_BlockMetadata_$memory := $ResourceUpdate($1_DiemBlock_BlockMetadata_$memory, $1_Signer_spec_address_of($t0), $t12);
    }
    if ($abort_flag) {
        assume {:print "$at(13,1442,1449)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(37,2):", $t4} $t4 == $t4;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:45:5+1
    assume {:print "$at(13,1660,1661)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:45:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:45:5+1
L3:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:45:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// struct DiemConsensusConfig::DiemConsensusConfig at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:8:5+84
type {:datatype} $1_DiemConsensusConfig_DiemConsensusConfig;
function {:constructor} $1_DiemConsensusConfig_DiemConsensusConfig($config: Vec (int)): $1_DiemConsensusConfig_DiemConsensusConfig;
function {:inline} $Update'$1_DiemConsensusConfig_DiemConsensusConfig'_config(s: $1_DiemConsensusConfig_DiemConsensusConfig, x: Vec (int)): $1_DiemConsensusConfig_DiemConsensusConfig {
    $1_DiemConsensusConfig_DiemConsensusConfig(x)
}
function $IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'(s: $1_DiemConsensusConfig_DiemConsensusConfig): bool {
    $IsValid'vec'u8''($config#$1_DiemConsensusConfig_DiemConsensusConfig(s))
}
function {:inline} $IsEqual'$1_DiemConsensusConfig_DiemConsensusConfig'(s1: $1_DiemConsensusConfig_DiemConsensusConfig, s2: $1_DiemConsensusConfig_DiemConsensusConfig): bool {
    s1 == s2
}

// fun DiemConsensusConfig::set [baseline] at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:28:5+212
procedure {:inline 1} $1_DiemConsensusConfig_set(_$t0: $signer, _$t1: Vec (int)) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: $1_DiemConfig_Configuration;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: $1_DiemConsensusConfig_DiemConsensusConfig;
    var $t9: $1_DiemConfig_Configuration;
    var $t10: int;
    var $t11: bool;
    var $t0: $signer;
    var $t1: Vec (int);
    var $temp_0'$1_DiemConfig_Configuration': $1_DiemConfig_Configuration;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'': $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'vec'u8'': Vec (int);
    var $1_DiemConfig_Configuration_$memory#185: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t3 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t4, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t4 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:28:5+1
    assume {:print "$at(15,1092,1093)"} true;
    assume {:print "$track_local(38,1,0):", $t0} $t0 == $t0;

    // trace_local[config]($t1) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:28:5+1
    assume {:print "$track_local(38,1,1):", $t1} $t1 == $t1;

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:29:9+35
    assume {:print "$at(15,1158,1193)"} true;

    // assume Identical($t6, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t5))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:29:9+35
    assume ($t6 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t5)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t6) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:29:9+35
    if ($t6) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:29:9+35
L4:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t7)), And(Not(exists<Roles::RoleId>($t5)), Eq(5, $t7))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t5)), 0), Eq(3, $t7))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:29:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t7)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t5) && $IsEqual'num'(5, $t7))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t5)), 0) && $IsEqual'num'(3, $t7))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:29:9+35
    assume {:print "$at(15,1158,1193)"} true;
    assume {:print "$track_abort(38,1):", $t7} $t7 == $t7;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:29:9+35
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:29:9+35
L3:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:29:9+35

    // $t8 := pack DiemConsensusConfig::DiemConsensusConfig($t1) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:33:13+30
    assume {:print "$at(15,1257,1287)"} true;
    $t8 := $1_DiemConsensusConfig_DiemConsensusConfig($t1);

    // assume Identical($t9, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t9 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t10, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t10 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    assume {:print "$at(15,1204,1297)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque begin: DiemConfig::set<DiemConsensusConfig::DiemConsensusConfig>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93

    // assume Identical($t11, Or(Or(Not(exists<DiemConfig::ModifyConfigCapability<DiemConsensusConfig::DiemConsensusConfig>>(Signer::spec_address_of($t0))), Not(exists<DiemConfig::DiemConfig<DiemConsensusConfig::DiemConsensusConfig>>(a550c18))), And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t9), 18446744073709551615)), Lt($t10, select DiemConfig::Configuration.last_reconfiguration_time($t9))))) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    assume ($t11 == ((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, $1_Signer_spec_address_of($t0)) || !$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, 173345816)) || (((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t9) < 18446744073709551615)) && ($t10 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t9)))));

    // if ($t11) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    if ($t11) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
L6:

    // assume Or(Or(And(Not(exists<DiemConfig::ModifyConfigCapability<DiemConsensusConfig::DiemConsensusConfig>>(Signer::spec_address_of($t0))), Eq(4, $t7)), And(Not(exists<DiemConfig::DiemConfig<DiemConsensusConfig::DiemConsensusConfig>>(a550c18)), Eq(5, $t7))), And(And(And(And(And(DiemTimestamp::$is_operating(), DiemConfig::$reconfiguration_enabled()), Gt(DiemTimestamp::spec_now_microseconds(), 0)), Lt(select DiemConfig::Configuration.epoch($t9), 18446744073709551615)), Lt($t10, select DiemConfig::Configuration.last_reconfiguration_time($t9))), Eq(1, $t7))) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    assume (((!$ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(4, $t7)) || (!$ResourceExists($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, 173345816) && $IsEqual'num'(5, $t7))) || ((((($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $1_DiemConfig_$reconfiguration_enabled($1_DiemConfig_DisableReconfiguration_$memory)) && ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) > 0)) && ($epoch#$1_DiemConfig_Configuration($t9) < 18446744073709551615)) && ($t10 < $last_reconfiguration_time#$1_DiemConfig_Configuration($t9))) && $IsEqual'num'(1, $t7)));

    // trace_abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    assume {:print "$at(15,1204,1297)"} true;
    assume {:print "$track_abort(38,1):", $t7} $t7 == $t7;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
L5:

    // @185 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    $1_DiemConfig_Configuration_$memory#185 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::Configuration>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, 173345816, $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, 173345816);
    }

    // modifies global<DiemConfig::DiemConfig<DiemConsensusConfig::DiemConsensusConfig>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'';
        $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, 173345816);
    }

    // assume DiemConfig::spec_is_published<DiemConsensusConfig::DiemConsensusConfig>() at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    assume $1_DiemConfig_spec_is_published'$1_DiemConsensusConfig_DiemConsensusConfig'($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory);

    // assume Eq<DiemConsensusConfig::DiemConsensusConfig>(DiemConfig::$get<DiemConsensusConfig::DiemConsensusConfig>(), $t8) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    assume $IsEqual'$1_DiemConsensusConfig_DiemConsensusConfig'($1_DiemConfig_$get'$1_DiemConsensusConfig_DiemConsensusConfig'($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory), $t8);

    // assume Eq<bool>(DiemConfig::spec_has_config[@185](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#185), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::set<DiemConsensusConfig::DiemConsensusConfig>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:31:9+93

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:35:5+1
    assume {:print "$at(15,1303,1304)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:35:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:35:5+1
L2:

    // abort($t7) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:35:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun DiemConsensusConfig::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:13:5+196
procedure {:inline 1} $1_DiemConsensusConfig_initialize(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: Vec (int);
    var $t7: $1_DiemConsensusConfig_DiemConsensusConfig;
    var $t8: int;
    var $t9: bool;
    var $t0: $signer;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'': $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'': $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $1_DiemConfig_Configuration_$memory#190: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;

    // bytecode translation starts here
    // assume Identical($t1, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t1 == $1_Signer_spec_address_of($t0));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:13:5+1
    assume {:print "$at(15,430,431)"} true;
    assume {:print "$track_local(38,0,0):", $t0} $t0 == $t0;

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:14:9+35
    assume {:print "$at(15,483,518)"} true;

    // assume Identical($t4, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t3))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:14:9+35
    assume ($t4 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t3)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t4) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:14:9+35
    if ($t4) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:14:9+35
L4:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5)), And(Not(exists<Roles::RoleId>($t3)), Eq(5, $t5))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t3)), 0), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:14:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t5)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t3) && $IsEqual'num'(5, $t5))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t3)), 0) && $IsEqual'num'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:14:9+35
    assume {:print "$at(15,483,518)"} true;
    assume {:print "$track_abort(38,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:14:9+35
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:14:9+35
L3:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:14:9+35

    // $t6 := Vector::empty<u8>() on_abort goto L2 with $t5 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:82+15
    assume {:print "$at(15,601,616)"} true;
    call $t6 := $1_Vector_empty'u8'();
    if ($abort_flag) {
        assume {:print "$at(15,601,616)"} true;
        $t5 := $abort_code;
        assume {:print "$track_abort(38,0):", $t5} $t5 == $t5;
        goto L2;
    }

    // $t7 := pack DiemConsensusConfig::DiemConsensusConfig($t6) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:52+47
    $t7 := $1_DiemConsensusConfig_DiemConsensusConfig($t6);

    // assume Identical($t8, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemConsensusConfig::DiemConsensusConfig>($t0, $t7) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    assume {:print "$at(15,528,619)"} true;

    // assume Identical($t9, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemConsensusConfig::DiemConsensusConfig>(), exists<DiemConfig::ModifyConfigCapability<DiemConsensusConfig::DiemConsensusConfig>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t8))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    assume ($t9 == (((($1_DiemConfig_spec_is_published'$1_DiemConsensusConfig_DiemConsensusConfig'($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t8)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t9) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    if ($t9) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
L6:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemConsensusConfig::DiemConsensusConfig>(), exists<DiemConfig::ModifyConfigCapability<DiemConsensusConfig::DiemConsensusConfig>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t8)), Eq(5, $t5))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t8)), 0), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    assume (((($1_DiemConfig_spec_is_published'$1_DiemConsensusConfig_DiemConsensusConfig'($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t8) && $IsEqual'num'(5, $t5))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t8)), 0) && $IsEqual'num'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    assume {:print "$at(15,528,619)"} true;
    assume {:print "$track_abort(38,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
L5:

    // @190 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    $1_DiemConfig_Configuration_$memory#190 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemConsensusConfig::DiemConsensusConfig>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'';
        $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, 173345816);
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemConsensusConfig::DiemConsensusConfig>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, 173345816, $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, 173345816);
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemConsensusConfig::DiemConsensusConfig>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemConsensusConfig::DiemConsensusConfig>() at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    assume $1_DiemConfig_spec_is_published'$1_DiemConsensusConfig_DiemConsensusConfig'($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory);

    // assume Eq<DiemConsensusConfig::DiemConsensusConfig>(DiemConfig::$get<DiemConsensusConfig::DiemConsensusConfig>(), $t7) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    assume $IsEqual'$1_DiemConsensusConfig_DiemConsensusConfig'($1_DiemConfig_$get'$1_DiemConsensusConfig_DiemConsensusConfig'($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory), $t7);

    // assume Eq<bool>(DiemConfig::spec_has_config[@190](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#190), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemConsensusConfig::DiemConsensusConfig>($t0, $t7) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:15:9+91

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:16:5+1
    assume {:print "$at(15,625,626)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:16:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:16:5+1
L2:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:16:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

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

// fun DiemVMConfig::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:73:5+1150
procedure {:inline 1} $1_DiemVMConfig_initialize(_$t0: $signer, _$t1: Vec (int), _$t2: Vec (int)) returns ()
{
    // declare local variables
    var $t3: $1_DiemVMConfig_GasConstants;
    var $t4: $1_DiemVMConfig_GasConstants;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: int;
    var $t21: int;
    var $t22: $1_DiemVMConfig_GasConstants;
    var $t23: $1_DiemVMConfig_GasSchedule;
    var $t24: $1_DiemVMConfig_DiemVMConfig;
    var $t25: int;
    var $t26: bool;
    var $t0: $signer;
    var $t1: Vec (int);
    var $t2: Vec (int);
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'': $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'': $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'vec'u8'': Vec (int);
    var $1_DiemConfig_Configuration_$memory#202: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // bytecode translation starts here
    // assume Identical($t4, pack DiemVMConfig::GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:109:9+528
    assume {:print "$at(20,4599,5127)"} true;
    assume ($t4 == $1_DiemVMConfig_GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:73:5+1
    assume {:print "$at(20,3418,3419)"} true;
    assume {:print "$track_local(39,0,0):", $t0} $t0 == $t0;

    // trace_local[instruction_schedule]($t1) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:73:5+1
    assume {:print "$track_local(39,0,1):", $t1} $t1 == $t1;

    // trace_local[native_schedule]($t2) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:73:5+1
    assume {:print "$track_local(39,0,2):", $t2} $t2 == $t2;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    assume {:print "$at(20,3565,3596)"} true;

    // assume Identical($t7, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    assume ($t7 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t7) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    if ($t7) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t8)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t8));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    assume {:print "$at(20,3565,3596)"} true;
    assume {:print "$track_abort(39,0):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:78:9+31

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    assume {:print "$at(20,3694,3729)"} true;

    // assume Identical($t10, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    assume ($t10 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t10) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    if ($t10) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t8)), And(Not(exists<Roles::RoleId>($t9)), Eq(5, $t8))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0), Eq(3, $t8))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t8))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t8)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t9) && $IsEqual'num'(5, $t8))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0) && $IsEqual'num'(3, $t8))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    assume {:print "$at(20,3694,3729)"} true;
    assume {:print "$track_abort(39,0):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:81:9+35

    // $t11 := 4 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:84:42+1
    assume {:print "$at(20,3816,3817)"} true;
    $t11 := 4;
    assume $IsValid'u64'($t11);

    // $t12 := 9 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:85:48+1
    assume {:print "$at(20,3866,3867)"} true;
    $t12 := 9;
    assume $IsValid'u64'($t12);

    // $t13 := 600 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:86:40+3
    assume {:print "$at(20,3908,3911)"} true;
    $t13 := 600;
    assume $IsValid'u64'($t13);

    // $t14 := 600 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:87:39+3
    assume {:print "$at(20,3951,3954)"} true;
    $t14 := 600;
    assume $IsValid'u64'($t14);

    // $t15 := 8 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:88:37+1
    assume {:print "$at(20,3992,3993)"} true;
    $t15 := 8;
    assume $IsValid'u64'($t15);

    // $t16 := 4000000 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:89:42+7
    assume {:print "$at(20,4036,4043)"} true;
    $t16 := 4000000;
    assume $IsValid'u64'($t16);

    // $t17 := 0 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:90:37+1
    assume {:print "$at(20,4081,4082)"} true;
    $t17 := 0;
    assume $IsValid'u64'($t17);

    // $t18 := 10000 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:91:37+5
    assume {:print "$at(20,4120,4125)"} true;
    $t18 := 10000;
    assume $IsValid'u64'($t18);

    // $t19 := 4096 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:92:44+4
    assume {:print "$at(20,4170,4174)"} true;
    $t19 := 4096;
    assume $IsValid'u64'($t19);

    // $t20 := 1000 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:93:38+4
    assume {:print "$at(20,4213,4217)"} true;
    $t20 := 1000;
    assume $IsValid'u64'($t20);

    // $t21 := 800 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:94:35+3
    assume {:print "$at(20,4253,4256)"} true;
    $t21 := 800;
    assume $IsValid'u64'($t21);

    // $t22 := pack DiemVMConfig::GasConstants($t11, $t12, $t13, $t14, $t15, $t16, $t17, $t18, $t19, $t20, $t21) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:83:29+507
    assume {:print "$at(20,3760,4267)"} true;
    $t22 := $1_DiemVMConfig_GasConstants($t11, $t12, $t13, $t14, $t15, $t16, $t17, $t18, $t19, $t20, $t21);

    // $t23 := pack DiemVMConfig::GasSchedule($t1, $t2, $t22) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:100:31+145
    assume {:print "$at(20,4391,4536)"} true;
    $t23 := $1_DiemVMConfig_GasSchedule($t1, $t2, $t22);

    // $t24 := pack DiemVMConfig::DiemVMConfig($t23) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:99:13+204
    assume {:print "$at(20,4346,4550)"} true;
    $t24 := $1_DiemVMConfig_DiemVMConfig($t23);

    // assume Identical($t25, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t25 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemVMConfig::DiemVMConfig>($t0, $t24) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume {:print "$at(20,4278,4561)"} true;

    // assume Identical($t26, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>(), exists<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t25))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t25)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume ($t26 == (((($1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t25)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t25)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t26) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    if ($t26) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>(), exists<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t25)), Eq(5, $t8))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t25)), 0), Eq(3, $t8))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t8))) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume (((($1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t25) && $IsEqual'num'(5, $t8))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t25)), 0) && $IsEqual'num'(3, $t8))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t8)));

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume {:print "$at(20,4278,4561)"} true;
    assume {:print "$track_abort(39,0):", $t8} $t8 == $t8;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
L7:

    // @202 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    $1_DiemConfig_Configuration_$memory#202 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'';
        $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816);
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816, $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, 173345816);
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>() at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory);

    // assume Eq<DiemVMConfig::DiemVMConfig>(DiemConfig::$get<DiemVMConfig::DiemVMConfig>(), $t24) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume $IsEqual'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_$get'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory), $t24);

    // assume Eq<bool>(DiemConfig::spec_has_config[@202](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#202), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemVMConfig::DiemVMConfig>($t0, $t24) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:97:9+283

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:107:5+1
    assume {:print "$at(20,4567,4568)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:107:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:107:5+1
L2:

    // abort($t8) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:107:5+1
    $abort_code := $t8;
    $abort_flag := true;
    return;

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

// fun DiemVersion::initialize [baseline] at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:17:5+298
procedure {:inline 1} $1_DiemVersion_initialize(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: bool;
    var $t8: $1_DiemVersion_DiemVersion;
    var $t9: int;
    var $t10: bool;
    var $t0: $signer;
    var $t1: int;
    var $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'': $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion';
    var $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'': $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion';
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_DiemConfig_Configuration_$memory#196: $Memory $1_DiemConfig_Configuration;
    $t0 := _$t0;
    $t1 := _$t1;

    // bytecode translation starts here
    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume Identical($t3, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t3 == $1_Signer_spec_address_of($t0));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:17:5+1
    assume {:print "$at(21,618,619)"} true;
    assume {:print "$track_local(40,0,0):", $t0} $t0 == $t0;

    // trace_local[initial_version]($t1) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:17:5+1
    assume {:print "$track_local(40,0,1):", $t1} $t1 == $t1;

    // opaque begin: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    assume {:print "$at(21,693,724)"} true;

    // assume Identical($t4, Not(DiemTimestamp::$is_genesis())) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    assume ($t4 == !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t4) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    if ($t4) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
L4:

    // assume And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t5)) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    assume (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t5));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    assume {:print "$at(21,693,724)"} true;
    assume {:print "$track_abort(40,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31
L3:

    // opaque end: DiemTimestamp::assert_genesis() at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:18:9+31

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    assume {:print "$at(21,734,769)"} true;

    // assume Identical($t7, Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), Not(exists<Roles::RoleId>($t6))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t6)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    assume ($t7 == (((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t6)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t6)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t7) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    if ($t7) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
L6:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5)), And(Not(exists<Roles::RoleId>($t6)), Eq(5, $t5))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t6)), 0), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t5)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t6) && $IsEqual'num'(5, $t5))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t6)), 0) && $IsEqual'num'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    assume {:print "$at(21,734,769)"} true;
    assume {:print "$track_abort(40,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35
L5:

    // opaque end: Roles::assert_diem_root($t0) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:19:9+35

    // $t8 := pack DiemVersion::DiemVersion($t1) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:22:13+38
    assume {:print "$at(21,860,898)"} true;
    $t8 := $1_DiemVersion_DiemVersion($t1);

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // opaque begin: DiemConfig::publish_new_config<DiemVersion::DiemVersion>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume {:print "$at(21,779,909)"} true;

    // assume Identical($t10, Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVersion::DiemVersion>(), exists<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(Signer::spec_address_of($t0))), Not(exists<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0)), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume ($t10 == (((($1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_Signer_spec_address_of($t0))) || !$ResourceExists($1_Roles_RoleId_$memory, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t10) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    if ($t10) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
L8:

    // assume Or(Or(Or(Or(DiemConfig::spec_is_published<DiemVersion::DiemVersion>(), exists<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(Signer::spec_address_of($t0))), And(Not(exists<Roles::RoleId>($t9)), Eq(5, $t5))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t9)), 0), Eq(3, $t5))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t5))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume (((($1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory) || $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_Signer_spec_address_of($t0))) || (!$ResourceExists($1_Roles_RoleId_$memory, $t9) && $IsEqual'num'(5, $t5))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t9)), 0) && $IsEqual'num'(3, $t5))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t5)));

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume {:print "$at(21,779,909)"} true;
    assume {:print "$track_abort(40,0):", $t5} $t5 == $t5;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
L7:

    // @196 := save_mem(DiemConfig::Configuration) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    $1_DiemConfig_Configuration_$memory#196 := $1_DiemConfig_Configuration_$memory;

    // modifies global<DiemConfig::DiemConfig<DiemVersion::DiemVersion>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'';
        $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory := $ResourceUpdate($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, 173345816, $temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'');
    } else {
        $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory := $ResourceRemove($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, 173345816);
    }

    // modifies global<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(a550c18) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'';
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory := $ResourceUpdate($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, 173345816, $temp_0'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'');
    } else {
        $1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory := $ResourceRemove($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, 173345816);
    }

    // assume exists<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume $ResourceExists($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $1_Signer_spec_address_of($t0));

    // assume DiemConfig::spec_is_published<DiemVersion::DiemVersion>() at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory);

    // assume Eq<DiemVersion::DiemVersion>(DiemConfig::$get<DiemVersion::DiemVersion>(), $t8) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume $IsEqual'$1_DiemVersion_DiemVersion'($1_DiemConfig_$get'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory), $t8);

    // assume Eq<bool>(DiemConfig::spec_has_config[@196](), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130
    assume $IsEqual'bool'($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory#196), $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // opaque end: DiemConfig::publish_new_config<DiemVersion::DiemVersion>($t0, $t8) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:20:9+130

    // label L1 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:24:5+1
    assume {:print "$at(21,915,916)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:24:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:24:5+1
L2:

    // abort($t5) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:24:5+1
    $abort_code := $t5;
    $abort_flag := true;
    return;

}

// fun Genesis::initialize_internal [verification] at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
procedure {:timeLimit 40} $1_Genesis_initialize_internal$verify(_$t0: $signer, _$t1: $signer, _$t2: Vec (int), _$t3: Vec (int), _$t4: Vec (Vec (int)), _$t5: bool, _$t6: Vec (int), _$t7: Vec (int), _$t8: int, _$t9: int, _$t10: Vec (int)) returns ()
{
    // declare local variables
    var $t11: $1_DiemAccount_KeyRotationCapability;
    var $t12: $1_DiemAccount_KeyRotationCapability;
    var $t13: Vec (int);
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: bool;
    var $t22: bool;
    var $t23: $1_DiemConfig_Configuration;
    var $t24: int;
    var $t25: int;
    var $t26: int;
    var $t27: int;
    var $t28: int;
    var $t29: int;
    var $t30: $1_DiemConfig_Configuration;
    var $t31: int;
    var $t32: int;
    var $t33: int;
    var $t34: int;
    var $t35: int;
    var $t36: $1_DiemConfig_Configuration;
    var $t37: int;
    var $t38: int;
    var $t39: int;
    var $t40: int;
    var $t41: int;
    var $t42: int;
    var $t43: int;
    var $t44: int;
    var $t45: int;
    var $t46: int;
    var $t47: int;
    var $t48: $1_DiemAccount_KeyRotationCapability;
    var $t49: int;
    var $t50: $1_DiemAccount_KeyRotationCapability;
    var $t51: int;
    var $t52: int;
    var $t53: $1_DiemVMConfig_GasConstants;
    var $t54: int;
    var $t55: int;
    var $t56: int;
    var $t57: $1_DiemConfig_Configuration;
    var $t58: int;
    var $t0: $signer;
    var $t1: $signer;
    var $t2: Vec (int);
    var $t3: Vec (int);
    var $t4: Vec (Vec (int));
    var $t5: bool;
    var $t6: Vec (int);
    var $t7: Vec (int);
    var $t8: int;
    var $t9: int;
    var $t10: Vec (int);
    var $temp_0'$1_AccountFreezing_FreezingBit': $1_AccountFreezing_FreezingBit;
    var $temp_0'$1_ChainId_ChainId': $1_ChainId_ChainId;
    var $temp_0'$1_DiemAccount_AccountOperationsCapability': $1_DiemAccount_AccountOperationsCapability;
    var $temp_0'$1_DiemAccount_DiemAccount': $1_DiemAccount_DiemAccount;
    var $temp_0'$1_DiemAccount_DiemWriteSetManager': $1_DiemAccount_DiemWriteSetManager;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'$1_DiemConfig_Configuration': $1_DiemConfig_Configuration;
    var $temp_0'$1_Event_EventHandleGenerator': $1_Event_EventHandleGenerator;
    var $temp_0'$1_Roles_RoleId': $1_Roles_RoleId;
    var $temp_0'$1_SlidingNonce_SlidingNonce': $1_SlidingNonce_SlidingNonce;
    var $temp_0'$1_VASPDomain_VASPDomainManager': $1_VASPDomain_VASPDomainManager;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'u8': int;
    var $temp_0'vec'u8'': Vec (int);
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#275: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory#276: $Memory $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion';
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;
    $t4 := _$t4;
    $t5 := _$t5;
    $t6 := _$t6;
    $t7 := _$t7;
    $t8 := _$t8;
    $t9 := _$t9;
    $t10 := _$t10;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(23,1972,4462)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume forall config_address: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(config_address): Eq<address>(config_address, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:441:9+163
    assume (forall config_address: int :: $IsValid'address'(config_address) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, config_address))  ==> ($IsEqual'address'(config_address, 173345816)));

    // assume forall config_address: TypeDomain<address>() where exists<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(config_address): Eq<address>(config_address, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:441:9+163
    assume (forall config_address: int :: $IsValid'address'(config_address) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, config_address))  ==> ($IsEqual'address'(config_address, 173345816)));

    // assume forall config_address: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(config_address): Eq<address>(config_address, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:441:9+163
    assume (forall config_address: int :: $IsValid'address'(config_address) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, config_address))  ==> ($IsEqual'address'(config_address, 173345816)));

    // assume forall config_address: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemConsensusConfig::DiemConsensusConfig>>(config_address): Eq<address>(config_address, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:441:9+163
    assume (forall config_address: int :: $IsValid'address'(config_address) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, config_address))  ==> ($IsEqual'address'(config_address, 173345816)));

    // assume forall config_address: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig>>(config_address): Eq<address>(config_address, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:441:9+163
    assume (forall config_address: int :: $IsValid'address'(config_address) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, config_address))  ==> ($IsEqual'address'(config_address, 173345816)));

    // assume forall config_address: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemVersion::DiemVersion>>(config_address): Eq<address>(config_address, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:441:9+163
    assume (forall config_address: int :: $IsValid'address'(config_address) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, config_address))  ==> ($IsEqual'address'(config_address, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assume forall addr: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:600:9+105
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Eq<u64>(select DiemSystem::ValidatorInfo.consensus_voting_power(Index(DiemSystem::spec_get_validators(), i1)), 1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:680:8+133
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($IsEqual'u64'($consensus_voting_power#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)), 1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assume forall mint_cap_owner: TypeDomain<address>() where exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner): Roles::spec_has_treasury_compliance_role_addr(mint_cap_owner) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1596:9+197
    assume (forall mint_cap_owner: int :: $IsValid'address'(mint_cap_owner) ==> ($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner))  ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, mint_cap_owner)));

    // assume Implies(Diem::$is_SCS_currency<XUS::XUS>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner1), exists<Diem::MintCapability<XUS::XUS>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'$1_XUS_XUS'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume Implies(Diem::$is_SCS_currency<XDX::XDX>(), forall mint_cap_owner1: TypeDomain<address>(), mint_cap_owner2: TypeDomain<address>() where And(exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner1), exists<Diem::MintCapability<XDX::XDX>>(mint_cap_owner2)): Eq<address>(mint_cap_owner1, mint_cap_owner2)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1605:9+379
    assume ($1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory) ==> (forall mint_cap_owner1: int, mint_cap_owner2: int :: $IsValid'address'(mint_cap_owner1) ==> $IsValid'address'(mint_cap_owner2) ==> (($ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner1) && $ResourceExists($1_Diem_MintCapability'$1_XDX_XDX'_$memory, mint_cap_owner2)))  ==> ($IsEqual'address'(mint_cap_owner1, mint_cap_owner2))));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<XUS::XUS>(addr3): Diem::$is_SCS_currency<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'$1_XUS_XUS'($1_Diem_MintCapability'$1_XUS_XUS'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // assume forall addr3: TypeDomain<address>() where Diem::spec_has_mint_capability<XDX::XDX>(addr3): Diem::$is_SCS_currency<XDX::XDX>() at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1614:9+147
    assume (forall addr3: int :: $IsValid'address'(addr3) ==> ($1_Diem_spec_has_mint_capability'$1_XDX_XDX'($1_Diem_MintCapability'$1_XDX_XDX'_$memory, addr3))  ==> ($1_Diem_$is_SCS_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // assume forall addr1: TypeDomain<address>(): Implies(exists<Diem::BurnCapability<XUS::XUS>>(addr1), Roles::spec_has_treasury_compliance_role_addr(addr1)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1675:9+188
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($ResourceExists($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, addr1) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr1))));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<XUS::XUS>>(addr): Diem::spec_is_currency<XUS::XUS>() at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XUS_XUS'_$memory, addr))  ==> ($1_Diem_spec_is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory)));

    // assume forall addr: TypeDomain<address>() where exists<Diem::Preburn<XDX::XDX>>(addr): Diem::spec_is_currency<XDX::XDX>() at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/Diem.move:1767:9+133
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Diem_Preburn'$1_XDX_XDX'_$memory, addr))  ==> ($1_Diem_spec_is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // assume forall window_addr: TypeDomain<address>() where exists<AccountLimits::Window<XUS::XUS>>(window_addr): exists<AccountLimits::LimitsDefinition<XUS::XUS>>(select AccountLimits::Window.limit_address(global<AccountLimits::Window<XUS::XUS>>(window_addr))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:544:9+208
    assume (forall window_addr: int :: $IsValid'address'(window_addr) ==> ($ResourceExists($1_AccountLimits_Window'$1_XUS_XUS'_$memory, window_addr))  ==> ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $limit_address#$1_AccountLimits_Window'$1_XUS_XUS'($ResourceValue($1_AccountLimits_Window'$1_XUS_XUS'_$memory, window_addr)))));

    // assume forall window_addr: TypeDomain<address>() where exists<AccountLimits::Window<XDX::XDX>>(window_addr): exists<AccountLimits::LimitsDefinition<XDX::XDX>>(select AccountLimits::Window.limit_address(global<AccountLimits::Window<XDX::XDX>>(window_addr))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountLimits.move:544:9+208
    assume (forall window_addr: int :: $IsValid'address'(window_addr) ==> ($ResourceExists($1_AccountLimits_Window'$1_XDX_XDX'_$memory, window_addr))  ==> ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $limit_address#$1_AccountLimits_Window'$1_XDX_XDX'($ResourceValue($1_AccountLimits_Window'$1_XDX_XDX'_$memory, window_addr)))));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where exists<AccountLimits::LimitsDefinition<XUS::XUS>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:65:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where exists<AccountLimits::LimitsDefinition<XDX::XDX>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:144:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assume forall addr: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemConsensusConfig::DiemConsensusConfig>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConsensusConfig.move:53:9+114
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assume forall addr: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:223:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assume forall addr: TypeDomain<address>() where exists<DiemConfig::DiemConfig<DiemVersion::DiemVersion>>(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:77:9+106
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'vec'u8''($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'vec'u8''($t3);

    // assume WellFormed($t4) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'vec'vec'u8'''($t4);

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'bool'($t5);

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'vec'u8''($t6);

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'vec'u8''($t7);

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'u8'($t8);

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'u64'($t9);

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume $IsValid'vec'u8''($t10);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<SlidingNonce::SlidingNonce>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0)}(var $rsc := $ResourceValue($1_SlidingNonce_SlidingNonce_$memory, $a_0);
    ($IsValid'$1_SlidingNonce_SlidingNonce'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::Configuration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_Configuration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_Configuration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_Configuration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DisableReconfiguration>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DisableReconfiguration_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DisableReconfiguration'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemSystem::DiemSystem>>(): And(WellFormed($rsc), forall i: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))), j: Range(0, Len<DiemSystem::ValidatorInfo>(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)))): Implies(Eq<address>(select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), i)), select DiemSystem::ValidatorInfo.addr(Index(select DiemSystem::DiemSystem.validators(select DiemConfig::DiemConfig.payload($rsc)), j))), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory, $a_0);
    (($IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''($rsc) && (var $range_1 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (var $range_2 := $Range(0, LenVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)))); (forall $i_3: int, $i_4: int :: $InRange($range_1, $i_3) ==> $InRange($range_2, $i_4) ==> (var i := $i_3;
    (var j := $i_4;
    (($IsEqual'address'($addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), i)), $addr#$1_DiemSystem_ValidatorInfo(ReadVec($validators#$1_DiemSystem_DiemSystem($payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'($rsc)), j))) ==> $IsEqual'num'(i, j))))))))))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<RegisteredCurrencies::RegisteredCurrencies>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<RegisteredCurrencies::RegisteredCurrencies>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemTransactionPublishingOption::DiemTransactionPublishingOption>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemConsensusConfig::DiemConsensusConfig>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemConsensusConfig::DiemConsensusConfig>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemVMConfig::DiemVMConfig>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemVMConfig::DiemVMConfig>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::DiemConfig<DiemVersion::DiemVersion>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemConfig::ModifyConfigCapability<DiemVersion::DiemVersion>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory, $a_0);
    ($IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''($rsc))));

    // assume forall $rsc: ResourceDomain<DiemSystem::CapabilityHolder>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemSystem_CapabilityHolder_$memory, $a_0);
    ($IsValid'$1_DiemSystem_CapabilityHolder'($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::BurnCapability<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_BurnCapability'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XUS::XUS>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<Diem::MintCapability<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_MintCapability'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_Diem_MintCapability'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<Diem::CurrencyInfo<XDX::XDX>>(): And(WellFormed($rsc), And(Lt(0, select Diem::CurrencyInfo.scaling_factor($rsc)), Le(select Diem::CurrencyInfo.scaling_factor($rsc), 10000000000))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, $a_0);
    (($IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''($rsc) && ((0 < $scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc)) && ($scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'($rsc) <= 10000000000))))));

    // assume forall $rsc: ResourceDomain<AccountLimits::LimitsDefinition<XUS::XUS>>(): And(WellFormed($rsc), And(And(And(Gt(select AccountLimits::LimitsDefinition.max_inflow($rsc), 0), Gt(select AccountLimits::LimitsDefinition.max_outflow($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.time_period($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.max_holding($rsc), 0))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, $a_0);
    (($IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''($rsc) && (((($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0) && ($max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0)) && ($time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0)) && ($max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'($rsc) > 0))))));

    // assume forall $rsc: ResourceDomain<AccountLimits::LimitsDefinition<XDX::XDX>>(): And(WellFormed($rsc), And(And(And(Gt(select AccountLimits::LimitsDefinition.max_inflow($rsc), 0), Gt(select AccountLimits::LimitsDefinition.max_outflow($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.time_period($rsc), 0)), Gt(select AccountLimits::LimitsDefinition.max_holding($rsc), 0))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, $a_0);
    (($IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''($rsc) && (((($max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0) && ($max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0)) && ($time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0)) && ($max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'($rsc) > 0))))));

    // assume forall $rsc: ResourceDomain<XDX::Reserve>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_XDX_Reserve_$memory, $a_0)}(var $rsc := $ResourceValue($1_XDX_Reserve_$memory, $a_0);
    ($IsValid'$1_XDX_Reserve'($rsc))));

    // assume forall $rsc: ResourceDomain<VASPDomain::VASPDomainManager>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASPDomain_VASPDomainManager_$memory, $a_0);
    ($IsValid'$1_VASPDomain_VASPDomainManager'($rsc))));

    // assume forall $rsc: ResourceDomain<TransactionFee::TransactionFee<XUS::XUS>>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $a_0)}(var $rsc := $ResourceValue($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory, $a_0);
    ($IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''($rsc))));

    // assume forall $rsc: ResourceDomain<DualAttestation::Limit>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DualAttestation_Limit_$memory, $a_0)}(var $rsc := $ResourceValue($1_DualAttestation_Limit_$memory, $a_0);
    ($IsValid'$1_DualAttestation_Limit'($rsc))));

    // assume forall $rsc: ResourceDomain<ChainId::ChainId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_ChainId_ChainId_$memory, $a_0)}(var $rsc := $ResourceValue($1_ChainId_ChainId_$memory, $a_0);
    ($IsValid'$1_ChainId_ChainId'($rsc))));

    // assume forall $rsc: ResourceDomain<AccountFreezing::FreezeEventsHolder>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_AccountFreezing_FreezeEventsHolder_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountFreezing_FreezeEventsHolder_$memory, $a_0);
    ($IsValid'$1_AccountFreezing_FreezeEventsHolder'($rsc))));

    // assume forall $rsc: ResourceDomain<AccountFreezing::FreezingBit>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_AccountFreezing_FreezingBit_$memory, $a_0)}(var $rsc := $ResourceValue($1_AccountFreezing_FreezingBit_$memory, $a_0);
    ($IsValid'$1_AccountFreezing_FreezingBit'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<DiemAccount::AccountOperationsCapability>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_AccountOperationsCapability_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_AccountOperationsCapability_$memory, $a_0);
    ($IsValid'$1_DiemAccount_AccountOperationsCapability'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemWriteSetManager>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemWriteSetManager_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemWriteSetManager_$memory, $a_0);
    ($IsValid'$1_DiemAccount_DiemWriteSetManager'($rsc))));

    // assume forall $rsc: ResourceDomain<DiemBlock::BlockMetadata>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    assume (forall $a_0: int :: {$ResourceValue($1_DiemBlock_BlockMetadata_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemBlock_BlockMetadata_$memory, $a_0);
    ($IsValid'$1_DiemBlock_BlockMetadata'($rsc))));

    // trace_local[dr_account]($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,1):", $t1} $t1 == $t1;

    // trace_local[dr_auth_key]($t2) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,2):", $t2} $t2 == $t2;

    // trace_local[tc_auth_key]($t3) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,3):", $t3} $t3 == $t3;

    // trace_local[initial_script_allow_list]($t4) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,4):", $t4} $t4 == $t4;

    // trace_local[is_open_module]($t5) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,5):", $t5} $t5 == $t5;

    // trace_local[instruction_schedule]($t6) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,6):", $t6} $t6 == $t6;

    // trace_local[native_schedule]($t7) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,7):", $t7} $t7 == $t7;

    // trace_local[chain_id]($t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,8):", $t8} $t8 == $t8;

    // trace_local[initial_diem_version]($t9) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,9):", $t9} $t9 == $t9;

    // trace_local[consensus_config]($t10) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+1
    assume {:print "$track_local(41,2,10):", $t10} $t10 == $t10;

    // $t13 := [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:45+35
    assume {:print "$at(23,2432,2467)"} true;
    $t13 := ConcatVec(ConcatVec(ConcatVec(MakeVec4(0, 0, 0, 0), MakeVec4(0, 0, 0, 0)), MakeVec4(0, 0, 0, 0)), MakeVec4(0, 0, 0, 0));
    assume $IsValid'vec'u8''($t13);

    // assume Identical($t14, a550c18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1236:9+24
    assume {:print "$at(12,55329,55353)"} true;
    assume ($t14 == 173345816);

    // assume Identical($t15, a550c18) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1260:9+24
    assume {:print "$at(12,56523,56547)"} true;
    assume ($t15 == 173345816);

    // assume Identical($t16, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1305:9+34
    assume {:print "$at(12,58957,58991)"} true;
    assume ($t16 == 186537453);

    // assume Identical($t17, b1e55ed) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1325:9+34
    assume {:print "$at(12,60047,60081)"} true;
    assume ($t17 == 186537453);

    // opaque begin: DiemAccount::initialize($t0, $t13) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume {:print "$at(23,2396,2468)"} true;

    // assume Identical($t18, Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Neq<address>(Signer::spec_address_of($t0), a550c18), exists<SlidingNonce::SlidingNonce>(a550c18)), exists<DiemAccount::AccountOperationsCapability>(a550c18)), exists<DiemAccount::DiemWriteSetManager>(a550c18)), exists<AccountFreezing::FreezingBit>(a550c18)), Not(DiemTimestamp::$is_genesis())), exists<Roles::RoleId>(a550c18)), Neq<num>(Add(16, Len<u8>($t13)), 32)), exists<SlidingNonce::SlidingNonce>(b1e55ed)), VASPDomain::$tc_domain_manager_exists()), Not(DiemTimestamp::$is_genesis())), exists<Roles::RoleId>(b1e55ed)), exists<AccountFreezing::FreezingBit>(b1e55ed))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume ($t18 == ((((((((((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) || $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816)) || $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816)) || $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816)) || $ResourceExists($1_AccountFreezing_FreezingBit_$memory, 173345816)) || !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)) || $ResourceExists($1_Roles_RoleId_$memory, 173345816)) || !$IsEqual'num'((16 + LenVec($t13)), 32)) || $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453)) || $1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory)) || !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)) || $ResourceExists($1_Roles_RoleId_$memory, 186537453)) || $ResourceExists($1_AccountFreezing_FreezingBit_$memory, 186537453)));

    // if ($t18) goto L4 else goto L3 at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    if ($t18) { goto L4; } else { goto L3; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
L4:

    // assume Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t19)), And(exists<SlidingNonce::SlidingNonce>(a550c18), Eq(6, $t19))), And(exists<DiemAccount::AccountOperationsCapability>(a550c18), Eq(6, $t19))), And(exists<DiemAccount::DiemWriteSetManager>(a550c18), Eq(6, $t19))), And(exists<AccountFreezing::FreezingBit>(a550c18), Eq(6, $t19))), And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t19))), And(exists<Roles::RoleId>(a550c18), Eq(6, $t19))), And(Neq<num>(Add(16, Len<u8>($t13)), 32), Eq(7, $t19))), And(exists<SlidingNonce::SlidingNonce>(b1e55ed), Eq(6, $t19))), And(VASPDomain::$tc_domain_manager_exists(), Eq(6, $t19))), And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t19))), And(exists<Roles::RoleId>(b1e55ed), Eq(6, $t19))), And(exists<AccountFreezing::FreezingBit>(b1e55ed), Eq(6, $t19))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume (((((((((((((!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t19)) || ($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816) && $IsEqual'num'(6, $t19))) || ($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816) && $IsEqual'num'(6, $t19))) || ($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816) && $IsEqual'num'(6, $t19))) || ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, 173345816) && $IsEqual'num'(6, $t19))) || (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t19))) || ($ResourceExists($1_Roles_RoleId_$memory, 173345816) && $IsEqual'num'(6, $t19))) || (!$IsEqual'num'((16 + LenVec($t13)), 32) && $IsEqual'num'(7, $t19))) || ($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453) && $IsEqual'num'(6, $t19))) || ($1_VASPDomain_$tc_domain_manager_exists($1_VASPDomain_VASPDomainManager_$memory) && $IsEqual'num'(6, $t19))) || (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t19))) || ($ResourceExists($1_Roles_RoleId_$memory, 186537453) && $IsEqual'num'(6, $t19))) || ($ResourceExists($1_AccountFreezing_FreezingBit_$memory, 186537453) && $IsEqual'num'(6, $t19)));

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume {:print "$at(23,2396,2468)"} true;
    assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    goto L2;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
L3:

    // modifies global<Roles::RoleId>(a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, 173345816, $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, 173345816);
    }

    // modifies global<Roles::RoleId>(b1e55ed) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, 186537453, $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, 186537453);
    }

    // modifies global<Event::EventHandleGenerator>($t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Event_EventHandleGenerator';
        $1_Event_EventHandleGenerator_$memory := $ResourceUpdate($1_Event_EventHandleGenerator_$memory, $t14, $temp_0'$1_Event_EventHandleGenerator');
    } else {
        $1_Event_EventHandleGenerator_$memory := $ResourceRemove($1_Event_EventHandleGenerator_$memory, $t14);
    }

    // modifies global<DiemAccount::DiemAccount>($t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_DiemAccount';
        $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $t14, $temp_0'$1_DiemAccount_DiemAccount');
    } else {
        $1_DiemAccount_DiemAccount_$memory := $ResourceRemove($1_DiemAccount_DiemAccount_$memory, $t14);
    }

    // modifies global<DiemAccount::AccountOperationsCapability>($t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_AccountOperationsCapability';
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceUpdate($1_DiemAccount_AccountOperationsCapability_$memory, $t14, $temp_0'$1_DiemAccount_AccountOperationsCapability');
    } else {
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceRemove($1_DiemAccount_AccountOperationsCapability_$memory, $t14);
    }

    // modifies global<DiemAccount::DiemWriteSetManager>($t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_DiemWriteSetManager';
        $1_DiemAccount_DiemWriteSetManager_$memory := $ResourceUpdate($1_DiemAccount_DiemWriteSetManager_$memory, $t14, $temp_0'$1_DiemAccount_DiemWriteSetManager');
    } else {
        $1_DiemAccount_DiemWriteSetManager_$memory := $ResourceRemove($1_DiemAccount_DiemWriteSetManager_$memory, $t14);
    }

    // modifies global<SlidingNonce::SlidingNonce>($t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_SlidingNonce_SlidingNonce';
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceUpdate($1_SlidingNonce_SlidingNonce_$memory, $t14, $temp_0'$1_SlidingNonce_SlidingNonce');
    } else {
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceRemove($1_SlidingNonce_SlidingNonce_$memory, $t14);
    }

    // modifies global<Roles::RoleId>($t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, $t14, $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, $t14);
    }

    // modifies global<AccountFreezing::FreezingBit>($t14) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_AccountFreezing_FreezingBit';
        $1_AccountFreezing_FreezingBit_$memory := $ResourceUpdate($1_AccountFreezing_FreezingBit_$memory, $t14, $temp_0'$1_AccountFreezing_FreezingBit');
    } else {
        $1_AccountFreezing_FreezingBit_$memory := $ResourceRemove($1_AccountFreezing_FreezingBit_$memory, $t14);
    }

    // modifies global<DiemAccount::DiemAccount>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_DiemAccount';
        $1_DiemAccount_DiemAccount_$memory := $ResourceUpdate($1_DiemAccount_DiemAccount_$memory, $t16, $temp_0'$1_DiemAccount_DiemAccount');
    } else {
        $1_DiemAccount_DiemAccount_$memory := $ResourceRemove($1_DiemAccount_DiemAccount_$memory, $t16);
    }

    // modifies global<SlidingNonce::SlidingNonce>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_SlidingNonce_SlidingNonce';
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceUpdate($1_SlidingNonce_SlidingNonce_$memory, $t16, $temp_0'$1_SlidingNonce_SlidingNonce');
    } else {
        $1_SlidingNonce_SlidingNonce_$memory := $ResourceRemove($1_SlidingNonce_SlidingNonce_$memory, $t16);
    }

    // modifies global<Roles::RoleId>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Roles_RoleId';
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, $t16, $temp_0'$1_Roles_RoleId');
    } else {
        $1_Roles_RoleId_$memory := $ResourceRemove($1_Roles_RoleId_$memory, $t16);
    }

    // modifies global<AccountFreezing::FreezingBit>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_AccountFreezing_FreezingBit';
        $1_AccountFreezing_FreezingBit_$memory := $ResourceUpdate($1_AccountFreezing_FreezingBit_$memory, $t16, $temp_0'$1_AccountFreezing_FreezingBit');
    } else {
        $1_AccountFreezing_FreezingBit_$memory := $ResourceRemove($1_AccountFreezing_FreezingBit_$memory, $t16);
    }

    // modifies global<DiemAccount::AccountOperationsCapability>(a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemAccount_AccountOperationsCapability';
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceUpdate($1_DiemAccount_AccountOperationsCapability_$memory, 173345816, $temp_0'$1_DiemAccount_AccountOperationsCapability');
    } else {
        $1_DiemAccount_AccountOperationsCapability_$memory := $ResourceRemove($1_DiemAccount_AccountOperationsCapability_$memory, 173345816);
    }

    // modifies global<Event::EventHandleGenerator>(b1e55ed) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Event_EventHandleGenerator';
        $1_Event_EventHandleGenerator_$memory := $ResourceUpdate($1_Event_EventHandleGenerator_$memory, 186537453, $temp_0'$1_Event_EventHandleGenerator');
    } else {
        $1_Event_EventHandleGenerator_$memory := $ResourceRemove($1_Event_EventHandleGenerator_$memory, 186537453);
    }

    // modifies global<VASPDomain::VASPDomainManager>($t16) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_VASPDomain_VASPDomainManager';
        $1_VASPDomain_VASPDomainManager_$memory := $ResourceUpdate($1_VASPDomain_VASPDomainManager_$memory, $t16, $temp_0'$1_VASPDomain_VASPDomainManager');
    } else {
        $1_VASPDomain_VASPDomainManager_$memory := $ResourceRemove($1_VASPDomain_VASPDomainManager_$memory, $t16);
    }

    // assume exists<Roles::RoleId>(a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $ResourceExists($1_Roles_RoleId_$memory, 173345816);

    // assume Eq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(a550c18)), 0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, 173345816)), 0);

    // assume exists<Roles::RoleId>(b1e55ed) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $ResourceExists($1_Roles_RoleId_$memory, 186537453);

    // assume Eq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(b1e55ed)), 1) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, 186537453)), 1);

    // assume exists<DiemAccount::AccountOperationsCapability>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, $t15);

    // assume exists<DiemAccount::DiemWriteSetManager>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, $t15);

    // assume exists<SlidingNonce::SlidingNonce>($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $t15);

    // assume Roles::spec_has_diem_root_role_addr($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, $t15);

    // assume DiemAccount::$exists_at($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, $t15);

    // assume AccountFreezing::spec_account_is_not_frozen($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, $t15);

    // assume DiemAccount::spec_holds_own_key_rotation_cap($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t15);

    // assume DiemAccount::spec_holds_own_withdraw_cap($t15) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, $t15);

    // assume exists<DiemAccount::AccountOperationsCapability>(a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816);

    // assume Roles::spec_has_treasury_compliance_role_addr($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, $t17);

    // assume DiemAccount::$exists_at($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, $t17);

    // assume exists<SlidingNonce::SlidingNonce>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, $t17);

    // assume AccountFreezing::spec_account_is_not_frozen($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, $t17);

    // assume DiemAccount::spec_holds_own_key_rotation_cap($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, $t17);

    // assume DiemAccount::spec_holds_own_withdraw_cap($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, $t17);

    // assume exists<VASPDomain::VASPDomainManager>($t17) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72
    assume $ResourceExists($1_VASPDomain_VASPDomainManager_$memory, $t17);

    // opaque end: DiemAccount::initialize($t0, $t13) at /home/ying/diem/language/diem-framework/modules/Genesis.move:71:9+72

    // assume Identical($t20, Signer::$address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ChainId.move:27:9+45
    assume {:print "$at(8,1038,1083)"} true;
    assume ($t20 == $1_Signer_$address_of($t0));

    // opaque begin: ChainId::initialize($t0, $t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41
    assume {:print "$at(23,2479,2520)"} true;

    // assume Identical($t21, Or(Or(Not(DiemTimestamp::$is_genesis()), Neq<address>(Signer::spec_address_of($t0), a550c18)), exists<ChainId::ChainId>($t20))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41
    assume ($t21 == ((!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)) || $ResourceExists($1_ChainId_ChainId_$memory, $t20)));

    // if ($t21) goto L6 else goto L5 at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41
    if ($t21) { goto L6; } else { goto L5; }

    // label L6 at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41
L6:

    // assume Or(Or(And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t19)), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t19))), And(exists<ChainId::ChainId>($t20), Eq(6, $t19))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41
    assume (((!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t19)) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t19))) || ($ResourceExists($1_ChainId_ChainId_$memory, $t20) && $IsEqual'num'(6, $t19)));

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41
    assume {:print "$at(23,2479,2520)"} true;
    assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41
    goto L2;

    // label L5 at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41
L5:

    // modifies global<ChainId::ChainId>($t20) at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_ChainId_ChainId';
        $1_ChainId_ChainId_$memory := $ResourceUpdate($1_ChainId_ChainId_$memory, $t20, $temp_0'$1_ChainId_ChainId');
    } else {
        $1_ChainId_ChainId_$memory := $ResourceRemove($1_ChainId_ChainId_$memory, $t20);
    }

    // assume exists<ChainId::ChainId>($t20) at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41
    assume $ResourceExists($1_ChainId_ChainId_$memory, $t20);

    // opaque end: ChainId::initialize($t0, $t8) at /home/ying/diem/language/diem-framework/modules/Genesis.move:73:9+41

    // opaque begin: DiemConfig::initialize($t0) at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+34
    assume {:print "$at(23,2564,2598)"} true;

    // assume Identical($t22, Or(Or(DiemConfig::spec_has_config(), Not(DiemTimestamp::$is_genesis())), Neq<address>(Signer::spec_address_of($t0), a550c18))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+34
    assume ($t22 == (($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory) || !$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816)));

    // if ($t22) goto L8 else goto L7 at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+34
    if ($t22) { goto L8; } else { goto L7; }

    // label L8 at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+34
L8:

    // assume Or(Or(And(DiemConfig::spec_has_config(), Eq(6, $t19)), And(Not(DiemTimestamp::$is_genesis()), Eq(1, $t19))), And(Neq<address>(Signer::spec_address_of($t0), a550c18), Eq(2, $t19))) at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+34
    assume ((($1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory) && $IsEqual'num'(6, $t19)) || (!$1_DiemTimestamp_$is_genesis($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t19))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 173345816) && $IsEqual'num'(2, $t19)));

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+34
    assume {:print "$at(23,2564,2598)"} true;
    assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;

    // goto L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+34
    goto L2;

    // label L7 at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+34
L7:

    // modifies global<DiemConfig::Configuration>(a550c18) at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+34
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_DiemConfig_Configuration';
        $1_DiemConfig_Configuration_$memory := $ResourceUpdate($1_DiemConfig_Configuration_$memory, 173345816, $temp_0'$1_DiemConfig_Configuration');
    } else {
        $1_DiemConfig_Configuration_$memory := $ResourceRemove($1_DiemConfig_Configuration_$memory, 173345816);
    }

    // modifies global<Event::EventHandleGenerator>(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Genesis.move:76:9+34
    havoc $temp_0'bool';
    if ($temp_0'bool') {
        havoc $temp_0'$1_Event_EventHandleGenerator';
        $1_Event_EventHandleGenerator_$memory := $ResourceUpdate($1_Event_EventHandleGenerator_$memory, $1_Signer_spec_address_of($t0), $temp_0'$1_Event_EventHandleGenerator');
    } else {
        $1_Event_EventHandleGenerator_$memory := $ResourceRemove($1_Event_EventHandleGenerator_$memory, $1_Signer_spec_address_of($t0));
    }

    // assume Identical($t23, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:88:9+56
    assume {:print "$at(14,3460,3516)"} true;
    assume ($t23 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume DiemConfig::spec_has_config() at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:88:9+56
    assume $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory);

    // assume Eq<u64>(select DiemConfig::Configuration.epoch($t23), 0) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:88:9+56
    assume $IsEqual'u64'($epoch#$1_DiemConfig_Configuration($t23), 0);

    // assume Eq<u64>(select DiemConfig::Configuration.last_reconfiguration_time($t23), 0) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:88:9+56
    assume $IsEqual'u64'($last_reconfiguration_time#$1_DiemConfig_Configuration($t23), 0);

    // opaque end: DiemConfig::initialize($t0) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:88:9+56

    // assume Identical($t24, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t24 == $1_Signer_spec_address_of($t0));

    // assume Identical($t25, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t25 == $1_Signer_spec_address_of($t0));

    // DiemConsensusConfig::initialize($t0) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:79:9+43
    assume {:print "$at(23,2643,2686)"} true;
    call $1_DiemConsensusConfig_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(23,2643,2686)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t26, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t26 == $1_Signer_spec_address_of($t0));

    // assume Identical($t27, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t27 == $1_Signer_spec_address_of($t0));

    // Diem::initialize($t0) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:82:9+28
    assume {:print "$at(23,2723,2751)"} true;
    call $1_Diem_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(23,2723,2751)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t28, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t28 == $1_Signer_spec_address_of($t1));

    // assume Identical($t29, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t29 == $1_Signer_spec_address_of($t0));

    // assume Identical($t30, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t30 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t31, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t31 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t32, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t32 == $1_Signer_spec_address_of($t1));

    // assume Identical($t33, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t33 == $1_Signer_spec_address_of($t0));

    // assume Identical($t34, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t34 == $1_Signer_spec_address_of($t1));

    // XUS::initialize($t0, $t1) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:85:9+39
    assume {:print "$at(23,2788,2827)"} true;
    call $1_XUS_initialize($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(23,2788,2827)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t35, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t35 == $1_Signer_spec_address_of($t0));

    // assume Identical($t36, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t36 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t37, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t37 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // assume Identical($t38, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t38 == $1_Signer_spec_address_of($t0));

    // assume Identical($t39, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t39 == $1_Signer_spec_address_of($t1));

    // XDX::initialize($t0, $t1) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:87:9+39
    assume {:print "$at(23,2838,2877)"} true;
    call $1_XDX_initialize($t0, $t1);
    if ($abort_flag) {
        assume {:print "$at(23,2838,2877)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t40, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:63:9+47
    assume {:print "$at(4,2353,2400)"} true;
    assume ($t40 == $1_Signer_spec_address_of($t0));

    // AccountFreezing::initialize($t0) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:89:9+39
    assume {:print "$at(23,2888,2927)"} true;
    call $1_AccountFreezing_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(23,2888,2927)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t41, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t41 == $1_Signer_spec_address_of($t1));

    // TransactionFee::initialize($t1) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:90:9+38
    assume {:print "$at(23,2937,2975)"} true;
    call $1_TransactionFee_initialize($t1);
    if ($abort_flag) {
        assume {:print "$at(23,2937,2975)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t42, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:122:9+50
    assume {:print "$at(17,5446,5496)"} true;
    assume ($t42 == $1_Signer_spec_address_of($t0));

    // assume Identical($t43, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t43 == $1_Signer_spec_address_of($t0));

    // DiemSystem::initialize_validator_set($t0) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:92:9+48
    assume {:print "$at(23,2986,3034)"} true;
    call $1_DiemSystem_initialize_validator_set($t0);
    if ($abort_flag) {
        assume {:print "$at(23,2986,3034)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t44, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t44 == $1_Signer_spec_address_of($t0));

    // assume Identical($t45, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t45 == $1_Signer_spec_address_of($t0));

    // DiemVersion::initialize($t0, $t9) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:93:9+57
    assume {:print "$at(23,3044,3101)"} true;
    call $1_DiemVersion_initialize($t0, $t9);
    if ($abort_flag) {
        assume {:print "$at(23,3044,3101)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t46, Mul(1000, Diem::spec_scaling_factor<XDX::XDX>())) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:500:9+86
    assume {:print "$at(22,22272,22358)"} true;
    assume ($t46 == (1000 * $1_Diem_spec_scaling_factor'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory)));

    // DualAttestation::initialize($t0) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:94:9+39
    assume {:print "$at(23,3111,3150)"} true;
    call $1_DualAttestation_initialize($t0);
    if ($abort_flag) {
        assume {:print "$at(23,3111,3150)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // DiemBlock::initialize_block_metadata($t0) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:95:9+48
    assume {:print "$at(23,3160,3208)"} true;
    call $1_DiemBlock_initialize_block_metadata($t0);
    if ($abort_flag) {
        assume {:print "$at(23,3160,3208)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t47, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t47 == $1_Signer_spec_address_of($t0));

    // $t48 := DiemAccount::extract_key_rotation_capability($t0) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:99:33+56
    assume {:print "$at(23,3347,3403)"} true;
    call $t48 := $1_DiemAccount_extract_key_rotation_capability($t0);
    if ($abort_flag) {
        assume {:print "$at(23,3347,3403)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // trace_local[dr_rotate_key_cap]($t48) at /home/ying/diem/language/diem-framework/modules/Genesis.move:99:13+17
    assume {:print "$track_local(41,2,11):", $t48} $t48 == $t48;

    // DiemAccount::rotate_authentication_key($t48, $t2) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:100:9+71
    assume {:print "$at(23,3413,3484)"} true;
    call $1_DiemAccount_rotate_authentication_key($t48, $t2);
    if ($abort_flag) {
        assume {:print "$at(23,3413,3484)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // DiemAccount::restore_key_rotation_capability($t48) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:101:9+63
    assume {:print "$at(23,3494,3557)"} true;
    call $1_DiemAccount_restore_key_rotation_capability($t48);
    if ($abort_flag) {
        assume {:print "$at(23,3494,3557)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t49, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t49 == $1_Signer_spec_address_of($t1));

    // $t50 := DiemAccount::extract_key_rotation_capability($t1) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:103:33+56
    assume {:print "$at(23,3592,3648)"} true;
    call $t50 := $1_DiemAccount_extract_key_rotation_capability($t1);
    if ($abort_flag) {
        assume {:print "$at(23,3592,3648)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // trace_local[tc_rotate_key_cap]($t50) at /home/ying/diem/language/diem-framework/modules/Genesis.move:103:13+17
    assume {:print "$track_local(41,2,12):", $t50} $t50 == $t50;

    // DiemAccount::rotate_authentication_key($t50, $t3) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:104:9+71
    assume {:print "$at(23,3658,3729)"} true;
    call $1_DiemAccount_rotate_authentication_key($t50, $t3);
    if ($abort_flag) {
        assume {:print "$at(23,3658,3729)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // DiemAccount::restore_key_rotation_capability($t50) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:105:9+63
    assume {:print "$at(23,3739,3802)"} true;
    call $1_DiemAccount_restore_key_rotation_capability($t50);
    if ($abort_flag) {
        assume {:print "$at(23,3739,3802)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t51, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t51 == $1_Signer_spec_address_of($t0));

    // assume Identical($t52, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t52 == $1_Signer_spec_address_of($t0));

    // DiemTransactionPublishingOption::initialize($t0, $t4, $t5) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:107:9+145
    assume {:print "$at(23,3813,3958)"} true;
    call $1_DiemTransactionPublishingOption_initialize($t0, $t4, $t5);
    if ($abort_flag) {
        assume {:print "$at(23,3813,3958)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t53, pack DiemVMConfig::GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800)) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:109:9+528
    assume {:print "$at(20,4599,5127)"} true;
    assume ($t53 == $1_DiemVMConfig_GasConstants(4, 9, 600, 600, 8, 4000000, 0, 10000, 4096, 1000, 800));

    // assume Identical($t54, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t54 == $1_Signer_spec_address_of($t0));

    // assume Identical($t55, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume ($t55 == $1_Signer_spec_address_of($t0));

    // DiemVMConfig::initialize($t0, $t6, $t7) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:113:9+122
    assume {:print "$at(23,3969,4091)"} true;
    call $1_DiemVMConfig_initialize($t0, $t6, $t7);
    if ($abort_flag) {
        assume {:print "$at(23,3969,4091)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assume Identical($t56, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t56 == $1_Signer_spec_address_of($t0));

    // assume Identical($t57, global<DiemConfig::Configuration>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:366:9+46
    assume {:print "$at(14,15793,15839)"} true;
    assume ($t57 == $ResourceValue($1_DiemConfig_Configuration_$memory, 173345816));

    // assume Identical($t58, DiemTimestamp::spec_now_microseconds()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:367:9+58
    assume {:print "$at(14,15848,15906)"} true;
    assume ($t58 == $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // DiemConsensusConfig::set($t0, $t10) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:119:9+54
    assume {:print "$at(23,4102,4156)"} true;
    call $1_DiemConsensusConfig_set($t0, $t10);
    if ($abort_flag) {
        assume {:print "$at(23,4102,4156)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // @275 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    // state save for global update invariants
    assume {:print "$at(23,1972,4462)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#275 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @276 := save_mem(DiemConfig::DiemConfig<DiemVersion::DiemVersion>) at /home/ying/diem/language/diem-framework/modules/Genesis.move:58:5+2490
    $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory#276 := $1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory;

    // DiemTimestamp::set_time_has_started($t0) on_abort goto L2 with $t19 at /home/ying/diem/language/diem-framework/modules/Genesis.move:124:9+47
    assume {:print "$at(23,4408,4455)"} true;
    call $1_DiemTimestamp_set_time_has_started($t0);
    if ($abort_flag) {
        assume {:print "$at(23,4408,4455)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(41,2):", $t19} $t19 == $t19;
        goto L2;
    }

    // assert Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(18,7328,7400)"} true;
    assert {:msg "assert_failed(18,7328,7400): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating[@275](), Le(DiemTimestamp::spec_now_microseconds[@275](), DiemTimestamp::spec_now_microseconds())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:185:9+109
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:185:9+109
    assume {:print "$at(18,7468,7577)"} true;
    assert {:msg "assert_failed(18,7468,7577): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#275) ==> ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#275) <= $1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // assert Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume {:print "$at(28,19472,19582)"} true;
    assert {:msg "assert_failed(28,19472,19582): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume {:print "$at(28,19981,20111)"} true;
    assert {:msg "assert_failed(28,19981,20111): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assert Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume {:print "$at(31,14007,14109)"} true;
    assert {:msg "assert_failed(31,14007,14109): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume {:print "$at(31,14119,14231)"} true;
    assert {:msg "assert_failed(31,14119,14231): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    assume {:print "$at(14,18414,18490)"} true;
    assert {:msg "assert_failed(14,18414,18490): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    assume {:print "$at(17,27551,27716)"} true;
    assert {:msg "assert_failed(17,27551,27716): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    assume {:print "$at(27,3536,3648)"} true;
    assert {:msg "assert_failed(27,3536,3648): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume {:print "$at(41,2283,2366)"} true;
    assert {:msg "assert_failed(41,2283,2366): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    assume {:print "$at(41,2643,2769)"} true;
    assert {:msg "assert_failed(41,2643,2769): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    assume {:print "$at(40,5607,5682)"} true;
    assert {:msg "assert_failed(40,5607,5682): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume {:print "$at(40,5738,5821)"} true;
    assert {:msg "assert_failed(40,5738,5821): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    assume {:print "$at(40,6295,6421)"} true;
    assert {:msg "assert_failed(40,6295,6421): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    assume {:print "$at(33,6639,6714)"} true;
    assert {:msg "assert_failed(33,6639,6714): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    assume {:print "$at(22,24115,24193)"} true;
    assert {:msg "assert_failed(22,24115,24193): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    assume {:print "$at(19,6945,7080)"} true;
    assert {:msg "assert_failed(19,6945,7080): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    assume {:print "$at(8,1850,1935)"} true;
    assert {:msg "assert_failed(8,1850,1935): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    assume {:print "$at(4,7550,7658)"} true;
    assert {:msg "assert_failed(4,7550,7658): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    assume {:print "$at(4,7852,7960)"} true;
    assert {:msg "assert_failed(4,7852,7960): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    assume {:print "$at(4,8125,8243)"} true;
    assert {:msg "assert_failed(4,8125,8243): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assert Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    assume {:print "$at(4,8499,8595)"} true;
    assert {:msg "assert_failed(4,8499,8595): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    assume {:print "$at(12,106356,106461)"} true;
    assert {:msg "assert_failed(12,106356,106461): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    assume {:print "$at(12,106532,106629)"} true;
    assert {:msg "assert_failed(12,106532,106629): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assert Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    assume {:print "$at(13,4727,4802)"} true;
    assert {:msg "assert_failed(13,4727,4802): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    assume {:print "$at(20,9517,9621)"} true;
    assert {:msg "assert_failed(20,9517,9621): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    assume {:print "$at(21,2608,2711)"} true;
    assert {:msg "assert_failed(21,2608,2711): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assert Implies(DiemTimestamp::$is_operating(), Le(select DiemVersion::DiemVersion.major(DiemConfig::$get[@276]<DiemVersion::DiemVersion>()), select DiemVersion::DiemVersion.major(DiemConfig::$get<DiemVersion::DiemVersion>()))) at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:101:9+177
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:101:9+177
    assume {:print "$at(21,3945,4122)"} true;
    assert {:msg "assert_failed(21,3945,4122): global memory invariant does not hold"}
      ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($major#$1_DiemVersion_DiemVersion($1_DiemConfig_$get'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory#276)) <= $major#$1_DiemVersion_DiemVersion($1_DiemConfig_$get'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory))));

    // label L1 at /home/ying/diem/language/diem-framework/modules/Genesis.move:125:5+1
    assume {:print "$at(23,4461,4462)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/Genesis.move:125:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/Genesis.move:125:5+1
L2:

    // abort($t19) at /home/ying/diem/language/diem-framework/modules/Genesis.move:125:5+1
    $abort_code := $t19;
    $abort_flag := true;
    return;

}
