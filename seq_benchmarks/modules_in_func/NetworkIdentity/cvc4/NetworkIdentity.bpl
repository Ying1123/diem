
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
// Native Event implementation for element type `$1_NetworkIdentity_NetworkIdentityChangeNotification`

// Map type specific handle to universal one.
type $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification' = $1_Event_EventHandle;

function {:inline} $IsEqual'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''(a: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification', b: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification'): bool {
    a == b
}

function $IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''(h: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification'): bool {
    true
}

// Embed event `$1_NetworkIdentity_NetworkIdentityChangeNotification` into universal $EventRep
function {:constructor} $ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'(e: $1_NetworkIdentity_NetworkIdentityChangeNotification): $EventRep;
axiom (forall v1, v2: $1_NetworkIdentity_NetworkIdentityChangeNotification :: {$ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'(v1), $ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'(v2)}
    $IsEqual'$1_NetworkIdentity_NetworkIdentityChangeNotification'(v1, v2) <==> $ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'(v1) == $ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'(v2));

// Creates a new event handle. This ensures each time it is called that a unique new abstract event handler is
// returned.
// TODO: we should check (and abort with the right code) if no generator exists for the signer.
procedure {:inline 1} $1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'(signer: $signer) returns (res: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification') {
    assume $1_Event_EventHandles[res] == false;
    $1_Event_EventHandles := $1_Event_EventHandles[res := true];
}

// This boogie procedure is the model of `emit_event`. This model abstracts away the `counter` behavior, thus not
// mutating (or increasing) `counter`.
procedure {:inline 1} $1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'(handle_mut: $Mutation $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification', msg: $1_NetworkIdentity_NetworkIdentityChangeNotification)
returns (res: $Mutation $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification') {
    var handle: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification';
    handle := $Dereference(handle_mut);
    $es := $ExtendEventStore'$1_NetworkIdentity_NetworkIdentityChangeNotification'($es, handle, msg);
    res := handle_mut;
}

procedure {:inline 1} $1_Event_destroy_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'(handle: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification') {
}

function {:inline} $ExtendEventStore'$1_NetworkIdentity_NetworkIdentityChangeNotification'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification', msg: $1_NetworkIdentity_NetworkIdentityChangeNotification): $EventStore {
    (var stream := streams#$EventStore(es)[handle];
    (var stream_new := ExtendMultiset(stream, $ToEventRep'$1_NetworkIdentity_NetworkIdentityChangeNotification'(msg));
    $EventStore(counter#$EventStore(es)+1, streams#$EventStore(es)[handle := stream_new])))
}

function {:inline} $CondExtendEventStore'$1_NetworkIdentity_NetworkIdentityChangeNotification'(
        es: $EventStore, handle: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification', msg: $1_NetworkIdentity_NetworkIdentityChangeNotification, cond: bool): $EventStore {
    if cond then
        $ExtendEventStore'$1_NetworkIdentity_NetworkIdentityChangeNotification'(es, handle, msg)
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

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_ValidatorConfig_Config'(t: $1_Option_Option'$1_ValidatorConfig_Config'): bool {
    !$1_Vector_$is_empty'$1_ValidatorConfig_Config'($vec#$1_Option_Option'$1_ValidatorConfig_Config'(t))
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

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XUS_XUS'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory, 173345816)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/Diem.move:1404:5+102
function {:inline} $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory: $Memory $1_Diem_CurrencyInfo'$1_XDX_XDX'): bool {
    $ResourceExists($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory, 173345816)
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

// spec fun at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:1641:5+95
function {:inline} $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory: $Memory $1_DiemAccount_DiemAccount, check_addr: int): bool {
    $ResourceExists($1_DiemAccount_DiemAccount_$memory, check_addr)
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

// spec fun at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:61:5+123
function {:inline} $1_NetworkIdentity_$tc_network_identity_event_handle_exists($1_NetworkIdentity_NetworkIdentityEventHandle_$memory: $Memory $1_NetworkIdentity_NetworkIdentityEventHandle): bool {
    $ResourceExists($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, 186537453)
}

// struct NetworkIdentity::NetworkIdentity at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:11:5+78
type {:datatype} $1_NetworkIdentity_NetworkIdentity;
function {:constructor} $1_NetworkIdentity_NetworkIdentity($identities: Vec (Vec (int))): $1_NetworkIdentity_NetworkIdentity;
function {:inline} $Update'$1_NetworkIdentity_NetworkIdentity'_identities(s: $1_NetworkIdentity_NetworkIdentity, x: Vec (Vec (int))): $1_NetworkIdentity_NetworkIdentity {
    $1_NetworkIdentity_NetworkIdentity(x)
}
function $IsValid'$1_NetworkIdentity_NetworkIdentity'(s: $1_NetworkIdentity_NetworkIdentity): bool {
    $IsValid'vec'vec'u8'''($identities#$1_NetworkIdentity_NetworkIdentity(s))
}
function {:inline} $IsEqual'$1_NetworkIdentity_NetworkIdentity'(s1: $1_NetworkIdentity_NetworkIdentity, s2: $1_NetworkIdentity_NetworkIdentity): bool {
    s1 == s2
}
var $1_NetworkIdentity_NetworkIdentity_$memory: $Memory $1_NetworkIdentity_NetworkIdentity;

// struct NetworkIdentity::NetworkIdentityChangeNotification at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:24:5+318
type {:datatype} $1_NetworkIdentity_NetworkIdentityChangeNotification;
function {:constructor} $1_NetworkIdentity_NetworkIdentityChangeNotification($account: int, $identities: Vec (Vec (int)), $time_rotated_seconds: int): $1_NetworkIdentity_NetworkIdentityChangeNotification;
function {:inline} $Update'$1_NetworkIdentity_NetworkIdentityChangeNotification'_account(s: $1_NetworkIdentity_NetworkIdentityChangeNotification, x: int): $1_NetworkIdentity_NetworkIdentityChangeNotification {
    $1_NetworkIdentity_NetworkIdentityChangeNotification(x, $identities#$1_NetworkIdentity_NetworkIdentityChangeNotification(s), $time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification(s))
}
function {:inline} $Update'$1_NetworkIdentity_NetworkIdentityChangeNotification'_identities(s: $1_NetworkIdentity_NetworkIdentityChangeNotification, x: Vec (Vec (int))): $1_NetworkIdentity_NetworkIdentityChangeNotification {
    $1_NetworkIdentity_NetworkIdentityChangeNotification($account#$1_NetworkIdentity_NetworkIdentityChangeNotification(s), x, $time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification(s))
}
function {:inline} $Update'$1_NetworkIdentity_NetworkIdentityChangeNotification'_time_rotated_seconds(s: $1_NetworkIdentity_NetworkIdentityChangeNotification, x: int): $1_NetworkIdentity_NetworkIdentityChangeNotification {
    $1_NetworkIdentity_NetworkIdentityChangeNotification($account#$1_NetworkIdentity_NetworkIdentityChangeNotification(s), $identities#$1_NetworkIdentity_NetworkIdentityChangeNotification(s), x)
}
function $IsValid'$1_NetworkIdentity_NetworkIdentityChangeNotification'(s: $1_NetworkIdentity_NetworkIdentityChangeNotification): bool {
    $IsValid'address'($account#$1_NetworkIdentity_NetworkIdentityChangeNotification(s))
      && $IsValid'vec'vec'u8'''($identities#$1_NetworkIdentity_NetworkIdentityChangeNotification(s))
      && $IsValid'u64'($time_rotated_seconds#$1_NetworkIdentity_NetworkIdentityChangeNotification(s))
}
function {:inline} $IsEqual'$1_NetworkIdentity_NetworkIdentityChangeNotification'(s1: $1_NetworkIdentity_NetworkIdentityChangeNotification, s2: $1_NetworkIdentity_NetworkIdentityChangeNotification): bool {
    s1 == s2
}

// struct NetworkIdentity::NetworkIdentityEventHandle at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:18:5+186
type {:datatype} $1_NetworkIdentity_NetworkIdentityEventHandle;
function {:constructor} $1_NetworkIdentity_NetworkIdentityEventHandle($identity_change_events: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification'): $1_NetworkIdentity_NetworkIdentityEventHandle;
function {:inline} $Update'$1_NetworkIdentity_NetworkIdentityEventHandle'_identity_change_events(s: $1_NetworkIdentity_NetworkIdentityEventHandle, x: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification'): $1_NetworkIdentity_NetworkIdentityEventHandle {
    $1_NetworkIdentity_NetworkIdentityEventHandle(x)
}
function $IsValid'$1_NetworkIdentity_NetworkIdentityEventHandle'(s: $1_NetworkIdentity_NetworkIdentityEventHandle): bool {
    $IsValid'$1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification''($identity_change_events#$1_NetworkIdentity_NetworkIdentityEventHandle(s))
}
function {:inline} $IsEqual'$1_NetworkIdentity_NetworkIdentityEventHandle'(s1: $1_NetworkIdentity_NetworkIdentityEventHandle, s2: $1_NetworkIdentity_NetworkIdentityEventHandle): bool {
    s1 == s2
}
var $1_NetworkIdentity_NetworkIdentityEventHandle_$memory: $Memory $1_NetworkIdentity_NetworkIdentityEventHandle;

// fun NetworkIdentity::get [verification] at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:76:5+294
procedure {:timeLimit 40} $1_NetworkIdentity_get$verify(_$t0: int) returns ($ret0: Vec (Vec (int)))
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: $1_NetworkIdentity_NetworkIdentity;
    var $t8: Vec (Vec (int));
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    var $1_NetworkIdentity_NetworkIdentity_$memory#120: $Memory $1_NetworkIdentity_NetworkIdentity;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:85:17+6
    assume {:print "$at(24,3101,3107)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<NetworkIdentity::NetworkIdentity>(): And(WellFormed($rsc), forall i: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($rsc))), j: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($rsc))): Implies(Eq<vector<u8>>(Index(select NetworkIdentity::NetworkIdentity.identities($rsc), i), Index(select NetworkIdentity::NetworkIdentity.identities($rsc), j)), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:85:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $a_0)}(var $rsc := $ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $a_0);
    (($IsValid'$1_NetworkIdentity_NetworkIdentity'($rsc) && (var $range_1 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc))); (var $range_2 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc))); (forall $i_3: int, $i_4: int :: $InRange($range_1, $i_3) ==> $InRange($range_2, $i_4) ==> (var i := $i_3;
    (var j := $i_4;
    (($IsEqual'vec'u8''(ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc), i), ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc), j)) ==> $IsEqual'num'(i, j))))))))))));

    // @120 := save_mem(NetworkIdentity::NetworkIdentity) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:76:5+1
    assume {:print "$at(24,2690,2691)"} true;
    $1_NetworkIdentity_NetworkIdentity_$memory#120 := $1_NetworkIdentity_NetworkIdentity_$memory;

    // trace_local[account_addr]($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:76:5+1
    assume {:print "$track_local(42,2,0):", $t0} $t0 == $t0;

    // $t3 := exists<NetworkIdentity::NetworkIdentity>($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:78:13+6
    assume {:print "$at(24,2803,2809)"} true;
    $t3 := $ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory, $t0);

    // $t4 := 0 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:79:35+24
    assume {:print "$at(24,2876,2900)"} true;
    $t4 := 0;
    assume $IsValid'u64'($t4);

    // $t5 := opaque begin: Errors::not_published($t4) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:79:13+47

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:79:13+47
    assume $IsValid'u64'($t5);

    // assume Eq<u64>($t5, 5) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:79:13+47
    assume $IsEqual'u64'($t5, 5);

    // $t5 := opaque end: Errors::not_published($t4) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:79:13+47

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:77:9+128
    assume {:print "$at(24,2783,2911)"} true;
    assume {:print "$track_local(42,2,2):", $t5} $t5 == $t5;

    // trace_local[tmp#$1]($t3) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:77:9+128
    assume {:print "$track_local(42,2,1):", $t3} $t3 == $t3;

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:77:9+128
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:77:9+128
L1:

    // trace_abort($t5) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:77:9+128
    assume {:print "$at(24,2783,2911)"} true;
    assume {:print "$track_abort(42,2):", $t5} $t5 == $t5;

    // $t6 := move($t5) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:77:9+128
    $t6 := $t5;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:77:9+128
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:81:42+12
    assume {:print "$at(24,2954,2966)"} true;
L0:

    // $t7 := get_global<NetworkIdentity::NetworkIdentity>($t0) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:81:11+13
    if (!$ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t7 := $ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(24,2923,2936)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(42,2):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t8 := get_field<NetworkIdentity::NetworkIdentity>.identities($t7) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:81:10+56
    $t8 := $identities#$1_NetworkIdentity_NetworkIdentity($t7);

    // trace_return[0]($t8) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:81:9+57
    assume {:print "$track_return(42,2,0):", $t8} $t8 == $t8;

    // label L2 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:82:5+1
    assume {:print "$at(24,2983,2984)"} true;
L2:

    // assert Not(Not(exists[@120]<NetworkIdentity::NetworkIdentity>($t0))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:84:9+76
    assume {:print "$at(24,3008,3084)"} true;
    assert {:msg "assert_failed(24,3008,3084): function does not abort under this condition"}
      !!$ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory#120, $t0);

    // assert Eq<vector<vector<u8>>>($t8, select NetworkIdentity::NetworkIdentity.identities(global<NetworkIdentity::NetworkIdentity>($t0))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:85:9+67
    assume {:print "$at(24,3093,3160)"} true;
    assert {:msg "assert_failed(24,3093,3160): post-condition does not hold"}
      $IsEqual'vec'vec'u8'''($t8, $identities#$1_NetworkIdentity_NetworkIdentity($ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $t0)));

    // return $t8 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:85:9+67
    $ret0 := $t8;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:82:5+1
    assume {:print "$at(24,2983,2984)"} true;
L3:

    // assert Not(exists[@120]<NetworkIdentity::NetworkIdentity>($t0)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:83:5+177
    assume {:print "$at(24,2989,3166)"} true;
    assert {:msg "assert_failed(24,2989,3166): abort not covered by any of the `aborts_if` clauses"}
      !$ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory#120, $t0);

    // assert And(Not(exists[@120]<NetworkIdentity::NetworkIdentity>($t0)), Eq(5, $t6)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:83:5+177
    assert {:msg "assert_failed(24,2989,3166): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory#120, $t0) && $IsEqual'num'(5, $t6));

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:83:5+177
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun NetworkIdentity::add_members_internal [verification] at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:213:5+1778
procedure {:timeLimit 40} $1_NetworkIdentity_add_members_internal$verify(_$t0: $Mutation (Vec (#0)), _$t1: Vec (#0)) returns ($ret0: bool, $ret1: $Mutation (Vec (#0)))
{
    // declare local variables
    var $t2: $Mutation (Vec (#0));
    var $t3: #0;
    var $t4: #0;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: Vec (#0);
    var $t9: Vec (#0);
    var $t10: Vec (#0);
    var $t11: Vec (#0);
    var $t12: Vec (#0);
    var $t13: Vec (#0);
    var $t14: Vec (#0);
    var $t15: Vec (#0);
    var $t16: Vec (#0);
    var $t17: Vec (#0);
    var $t18: Vec (#0);
    var $t19: Vec (#0);
    var $t20: Vec (#0);
    var $t21: int;
    var $t22: int;
    var $t23: Vec (#0);
    var $t24: int;
    var $t25: int;
    var $t26: bool;
    var $t27: #0;
    var $t28: Vec (#0);
    var $t29: bool;
    var $t30: bool;
    var $t31: int;
    var $t32: int;
    var $t33: Vec (#0);
    var $t34: int;
    var $t35: bool;
    var $t0: $Mutation (Vec (#0));
    var $t1: Vec (#0);
    var $temp_0'#0': #0;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'#0'': Vec (#0);
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:262:17+6
    assume {:print "$at(24,11558,11564)"} true;
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:262:17+6
    assume $IsValid'vec'#0''($t1);

    // assume forall i: Range(0, Len<#0>($t0)), j: Range(0, Len<#0>($t0)): Implies(Eq<#0>(Index($t0, i), Index($t0, j)), Eq<num>(i, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume {:print "$at(24,16207,16304)"} true;
    assume (var $range_0 := $Range(0, LenVec($Dereference($t0))); (var $range_1 := $Range(0, LenVec($Dereference($t0))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var i := $i_2;
    (var j := $i_3;
    (($IsEqual'#0'(ReadVec($Dereference($t0), i), ReadVec($Dereference($t0), j)) ==> $IsEqual'num'(i, j))))))));

    // $t8 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t8 := $Dereference($t0);

    // $t9 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t9 := $Dereference($t0);

    // $t10 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t10 := $Dereference($t0);

    // $t11 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t11 := $Dereference($t0);

    // $t12 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t12 := $Dereference($t0);

    // $t13 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t13 := $Dereference($t0);

    // $t14 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t14 := $Dereference($t0);

    // $t15 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t15 := $Dereference($t0);

    // $t16 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t16 := $Dereference($t0);

    // $t17 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t17 := $Dereference($t0);

    // $t18 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t18 := $Dereference($t0);

    // $t19 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t19 := $Dereference($t0);

    // $t20 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t20 := $Dereference($t0);

    // trace_local[members]($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:213:5+1
    assume {:print "$at(24,9244,9245)"} true;
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(42,1,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // trace_local[to_add]($t1) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:213:5+1
    assume {:print "$track_local(42,1,1):", $t1} $t1 == $t1;

    // $t21 := Vector::length<#0>($t1) on_abort goto L10 with $t22 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:217:26+22
    assume {:print "$at(24,9379,9401)"} true;
    call $t21 := $1_Vector_length'#0'($t1);
    if ($abort_flag) {
        assume {:print "$at(24,9379,9401)"} true;
        $t22 := $abort_code;
        assume {:print "$track_abort(42,1):", $t22} $t22 == $t22;
        goto L10;
    }

    // trace_local[num_to_add]($t21) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:217:13+10
    assume {:print "$track_local(42,1,7):", $t21} $t21 == $t21;

    // $t23 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:218:43+7
    assume {:print "$at(24,9445,9452)"} true;
    $t23 := $Dereference($t0);

    // $t24 := Vector::length<#0>($t23) on_abort goto L10 with $t22 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:218:28+23
    call $t24 := $1_Vector_length'#0'($t23);
    if ($abort_flag) {
        assume {:print "$at(24,9430,9453)"} true;
        $t22 := $abort_code;
        assume {:print "$track_abort(42,1):", $t22} $t22 == $t22;
        goto L10;
    }

    // trace_local[num_existing]($t24) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:218:13+12
    assume {:print "$track_local(42,1,6):", $t24} $t24 == $t24;

    // $t25 := 0 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:220:17+1
    assume {:print "$at(24,9472,9473)"} true;
    $t25 := 0;
    assume $IsValid'u64'($t25);

    // trace_local[i]($t25) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:220:13+1
    assume {:print "$track_local(42,1,5):", $t25} $t25 == $t25;

    // label L7 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:222:13+1216
    assume {:print "$at(24,9504,10720)"} true;
L7:

    // assert Le($t25, $t21) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:223:17+26
    assume {:print "$at(24,9527,9553)"} true;
    assert {:msg "assert_failed(24,9527,9553): base case of the loop invariant does not hold"}
      ($t25 <= $t21);

    // assert Ge(Len<#0>($t0), Len<#0>($t13)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:225:17+44
    assume {:print "$at(24,9622,9666)"} true;
    assert {:msg "assert_failed(24,9622,9666): base case of the loop invariant does not hold"}
      (LenVec($Dereference($t0)) >= LenVec($t13));

    // assert forall j: Range(0, Len<#0>($t0)), k: Range(0, Len<#0>($t0)): Implies(Eq<#0>(Index($t0, j), Index($t0, k)), Eq<num>(j, k)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:227:17+97
    assume {:print "$at(24,9759,9856)"} true;
    assert {:msg "assert_failed(24,9759,9856): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (var $range_1 := $Range(0, LenVec($Dereference($t0))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var j := $i_2;
    (var k := $i_3;
    (($IsEqual'#0'(ReadVec($Dereference($t0), j), ReadVec($Dereference($t0), k)) ==> $IsEqual'num'(j, k))))))));

    // assert forall j: Range(0, Len<#0>($t14)): Eq<#0>(Index($t0, j), Index($t14, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:229:17+74
    assume {:print "$at(24,9966,10040)"} true;
    assert {:msg "assert_failed(24,9966,10040): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($t14)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), j), ReadVec($t14, j))))));

    // assert forall j: Range(Len<#0>($t15), Len<#0>($t0)): ContainsVec<#0>(Slice($t1, Range(0, $t25)), Index($t0, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:231:17+90
    assume {:print "$at(24,10159,10249)"} true;
    assert {:msg "assert_failed(24,10159,10249): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(LenVec($t15), LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($ContainsVec'#0'($SliceVecByRange($t1, $Range(0, $t25)), ReadVec($Dereference($t0), j))))));

    // assert forall j: Range(0, $t25): ContainsVec<#0>($t0, Index($t1, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:233:17+57
    assume {:print "$at(24,10353,10410)"} true;
    assert {:msg "assert_failed(24,10353,10410): base case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t25); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($ContainsVec'#0'($Dereference($t0), ReadVec($t1, j))))));

    // assert Iff(Eq<num>(Len<#0>($t0), Len<#0>($t16)), forall j: Range(0, $t25): ContainsVec<#0>($t16, Index($t1, j))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    assume {:print "$at(24,10603,10706)"} true;
    assert {:msg "assert_failed(24,10603,10706): base case of the loop invariant does not hold"}
      ($IsEqual'num'(LenVec($Dereference($t0)), LenVec($t16)) <==> (var $range_0 := $Range(0, $t25); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($ContainsVec'#0'($t16, ReadVec($t1, j)))))));

    // havoc[val]($t25) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    havoc $t25;
    assume $IsValid'u64'($t25);

    // havoc[val]($t26) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    havoc $t26;
    assume $IsValid'bool'($t26);

    // havoc[val]($t27) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    havoc $t27;
    assume $IsValid'#0'($t27);

    // havoc[val]($t28) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    havoc $t28;
    assume $IsValid'vec'#0''($t28);

    // havoc[val]($t29) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    havoc $t29;
    assume $IsValid'bool'($t29);

    // havoc[val]($t30) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    havoc $t30;
    assume $IsValid'bool'($t30);

    // havoc[val]($t31) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    havoc $t31;
    assume $IsValid'u64'($t31);

    // havoc[val]($t32) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    havoc $t32;
    assume $IsValid'u64'($t32);

    // havoc[mut]($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    havoc $temp_0'vec'#0'';
    $t0 := $UpdateMutation($t0, $temp_0'vec'#0'');
    assume $IsValid'vec'#0''($Dereference($t0));

    // assume Not(AbortFlag()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    assume !$abort_flag;

    // assume Le($t25, $t21) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:223:17+26
    assume {:print "$at(24,9527,9553)"} true;
    assume ($t25 <= $t21);

    // assume Ge(Len<#0>($t0), Len<#0>($t9)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:225:17+44
    assume {:print "$at(24,9622,9666)"} true;
    assume (LenVec($Dereference($t0)) >= LenVec($t9));

    // assume forall j: Range(0, Len<#0>($t0)), k: Range(0, Len<#0>($t0)): Implies(Eq<#0>(Index($t0, j), Index($t0, k)), Eq<num>(j, k)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:227:17+97
    assume {:print "$at(24,9759,9856)"} true;
    assume (var $range_0 := $Range(0, LenVec($Dereference($t0))); (var $range_1 := $Range(0, LenVec($Dereference($t0))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var j := $i_2;
    (var k := $i_3;
    (($IsEqual'#0'(ReadVec($Dereference($t0), j), ReadVec($Dereference($t0), k)) ==> $IsEqual'num'(j, k))))))));

    // assume forall j: Range(0, Len<#0>($t10)): Eq<#0>(Index($t0, j), Index($t10, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:229:17+74
    assume {:print "$at(24,9966,10040)"} true;
    assume (var $range_0 := $Range(0, LenVec($t10)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), j), ReadVec($t10, j))))));

    // assume forall j: Range(Len<#0>($t11), Len<#0>($t0)): ContainsVec<#0>(Slice($t1, Range(0, $t25)), Index($t0, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:231:17+90
    assume {:print "$at(24,10159,10249)"} true;
    assume (var $range_0 := $Range(LenVec($t11), LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($ContainsVec'#0'($SliceVecByRange($t1, $Range(0, $t25)), ReadVec($Dereference($t0), j))))));

    // assume forall j: Range(0, $t25): ContainsVec<#0>($t0, Index($t1, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:233:17+57
    assume {:print "$at(24,10353,10410)"} true;
    assume (var $range_0 := $Range(0, $t25); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($ContainsVec'#0'($Dereference($t0), ReadVec($t1, j))))));

    // assume Iff(Eq<num>(Len<#0>($t0), Len<#0>($t12)), forall j: Range(0, $t25): ContainsVec<#0>($t12, Index($t1, j))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    assume {:print "$at(24,10603,10706)"} true;
    assume ($IsEqual'num'(LenVec($Dereference($t0)), LenVec($t12)) <==> (var $range_0 := $Range(0, $t25); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($ContainsVec'#0'($t12, ReadVec($t1, j)))))));

    // $t26 := <($t25, $t21) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:238:16+1
    assume {:print "$at(24,10737,10738)"} true;
    call $t26 := $Lt($t25, $t21);

    // if ($t26) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:221:9+1484
    assume {:print "$at(24,9483,10967)"} true;
    if ($t26) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:221:9+1484
L1:

    // goto L2 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:221:9+1484
    goto L2;

    // label L0 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:240:40+6
    assume {:print "$at(24,10803,10809)"} true;
L0:

    // $t27 := Vector::borrow<#0>($t1, $t25) on_abort goto L10 with $t22 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:240:25+25
    call $t27 := $1_Vector_borrow'#0'($t1, $t25);
    if ($abort_flag) {
        assume {:print "$at(24,10788,10813)"} true;
        $t22 := $abort_code;
        assume {:print "$track_abort(42,1):", $t22} $t22 == $t22;
        goto L10;
    }

    // trace_local[entry]($t27) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:240:17+5
    assume {:print "$track_local(42,1,4):", $t27} $t27 == $t27;

    // trace_local[tmp#$3]($t27) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:241:34+16
    assume {:print "$at(24,10848,10864)"} true;
    assume {:print "$track_local(42,1,3):", $t27} $t27 == $t27;

    // trace_local[tmp#$2]($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:241:34+16
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(42,1,2):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // $t28 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:241:34+16
    $t28 := $Dereference($t0);

    // $t29 := Vector::contains<#0>($t28, $t27) on_abort goto L10 with $t22 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:241:18+32
    call $t29 := $1_Vector_contains'#0'($t28, $t27);
    if ($abort_flag) {
        assume {:print "$at(24,10832,10864)"} true;
        $t22 := $abort_code;
        assume {:print "$track_abort(42,1):", $t22} $t22 == $t22;
        goto L10;
    }

    // $t30 := !($t29) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:241:17+1
    call $t30 := $Not($t29);

    // if ($t30) goto L3 else goto L4 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:241:13+106
    if ($t30) { goto L3; } else { goto L4; }

    // label L4 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:241:13+106
L4:

    // goto L5 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:241:13+106
    goto L5;

    // label L3 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:242:35+7
    assume {:print "$at(24,10902,10909)"} true;
L3:

    // Vector::push_back<#0>($t0, $t27) on_abort goto L10 with $t22 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:242:17+34
    call $t0 := $1_Vector_push_back'#0'($t0, $t27);
    if ($abort_flag) {
        assume {:print "$at(24,10884,10918)"} true;
        $t22 := $abort_code;
        assume {:print "$track_abort(42,1):", $t22} $t22 == $t22;
        goto L10;
    }

    // goto L6 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:242:51+1
    goto L6;

    // label L5 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:241:13+106
    assume {:print "$at(24,10827,10933)"} true;
L5:

    // destroy($t27) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:241:13+106

    // label L6 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:244:17+1
    assume {:print "$at(24,10951,10952)"} true;
L6:

    // $t31 := 1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:244:21+1
    $t31 := 1;
    assume $IsValid'u64'($t31);

    // $t32 := +($t25, $t31) on_abort goto L10 with $t22 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:244:19+1
    call $t32 := $AddU64($t25, $t31);
    if ($abort_flag) {
        assume {:print "$at(24,10953,10954)"} true;
        $t22 := $abort_code;
        assume {:print "$track_abort(42,1):", $t22} $t22 == $t22;
        goto L10;
    }

    // trace_local[i]($t32) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:244:13+1
    assume {:print "$track_local(42,1,5):", $t32} $t32 == $t32;

    // goto L8 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:244:22+1
    goto L8;

    // label L2 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:247:9+38
    assume {:print "$at(24,10978,11016)"} true;
L2:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:247:9+38

    // $t33 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:247:24+7
    $t33 := $Dereference($t0);

    // $t34 := Vector::length<#0>($t33) on_abort goto L10 with $t22 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:247:9+23
    call $t34 := $1_Vector_length'#0'($t33);
    if ($abort_flag) {
        assume {:print "$at(24,10978,11001)"} true;
        $t22 := $abort_code;
        assume {:print "$track_abort(42,1):", $t22} $t22 == $t22;
        goto L10;
    }

    // $t35 := >($t34, $t24) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:247:33+1
    call $t35 := $Gt($t34, $t24);

    // trace_return[0]($t35) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:247:9+38
    assume {:print "$track_return(42,1,0):", $t35} $t35 == $t35;

    // trace_local[members]($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:247:9+38
    $temp_0'vec'#0'' := $Dereference($t0);
    assume {:print "$track_local(42,1,0):", $temp_0'vec'#0''} $temp_0'vec'#0'' == $temp_0'vec'#0'';

    // goto L9 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:247:9+38
    goto L9;

    // label L8 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:247:9+38
    // Loop invariant checking block for the loop started with header: L7
L8:

    // assert Le($t32, $t21) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:223:17+26
    assume {:print "$at(24,9527,9553)"} true;
    assert {:msg "assert_failed(24,9527,9553): induction case of the loop invariant does not hold"}
      ($t32 <= $t21);

    // assert Ge(Len<#0>($t0), Len<#0>($t17)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:225:17+44
    assume {:print "$at(24,9622,9666)"} true;
    assert {:msg "assert_failed(24,9622,9666): induction case of the loop invariant does not hold"}
      (LenVec($Dereference($t0)) >= LenVec($t17));

    // assert forall j: Range(0, Len<#0>($t0)), k: Range(0, Len<#0>($t0)): Implies(Eq<#0>(Index($t0, j), Index($t0, k)), Eq<num>(j, k)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:227:17+97
    assume {:print "$at(24,9759,9856)"} true;
    assert {:msg "assert_failed(24,9759,9856): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (var $range_1 := $Range(0, LenVec($Dereference($t0))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var j := $i_2;
    (var k := $i_3;
    (($IsEqual'#0'(ReadVec($Dereference($t0), j), ReadVec($Dereference($t0), k)) ==> $IsEqual'num'(j, k))))))));

    // assert forall j: Range(0, Len<#0>($t18)): Eq<#0>(Index($t0, j), Index($t18, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:229:17+74
    assume {:print "$at(24,9966,10040)"} true;
    assert {:msg "assert_failed(24,9966,10040): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($t18)); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($IsEqual'#0'(ReadVec($Dereference($t0), j), ReadVec($t18, j))))));

    // assert forall j: Range(Len<#0>($t19), Len<#0>($t0)): ContainsVec<#0>(Slice($t1, Range(0, $t32)), Index($t0, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:231:17+90
    assume {:print "$at(24,10159,10249)"} true;
    assert {:msg "assert_failed(24,10159,10249): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(LenVec($t19), LenVec($Dereference($t0))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($ContainsVec'#0'($SliceVecByRange($t1, $Range(0, $t32)), ReadVec($Dereference($t0), j))))));

    // assert forall j: Range(0, $t32): ContainsVec<#0>($t0, Index($t1, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:233:17+57
    assume {:print "$at(24,10353,10410)"} true;
    assert {:msg "assert_failed(24,10353,10410): induction case of the loop invariant does not hold"}
      (var $range_0 := $Range(0, $t32); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($ContainsVec'#0'($Dereference($t0), ReadVec($t1, j))))));

    // assert Iff(Eq<num>(Len<#0>($t0), Len<#0>($t20)), forall j: Range(0, $t32): ContainsVec<#0>($t20, Index($t1, j))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    assume {:print "$at(24,10603,10706)"} true;
    assert {:msg "assert_failed(24,10603,10706): induction case of the loop invariant does not hold"}
      ($IsEqual'num'(LenVec($Dereference($t0)), LenVec($t20)) <==> (var $range_0 := $Range(0, $t32); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var j := $i_1;
    ($ContainsVec'#0'($t20, ReadVec($t1, j)))))));

    // stop() at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:236:17+103
    assume false;
    return;

    // label L9 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:248:5+1
    assume {:print "$at(24,11021,11022)"} true;
L9:

    // assert Not(false) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:254:9+16
    assume {:print "$at(24,11231,11247)"} true;
    assert {:msg "assert_failed(24,11231,11247): function does not abort under this condition"}
      !false;

    // assert true at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:252:9+24
    assume {:print "$at(24,11197,11221)"} true;
    assert {:msg "assert_failed(24,11197,11221): post-condition does not hold"}
      true;

    // assert forall e: $t1: ContainsVec<#0>($t0, e) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:269:9+53
    assume {:print "$at(24,11848,11901)"} true;
    assert {:msg "assert_failed(24,11848,11901): post-condition does not hold"}
      (var $range_0 := $t1; (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var e := ReadVec($range_0, $i_1);
    ($ContainsVec'#0'($Dereference($t0), e)))));

    // assert forall e: $t8: ContainsVec<#0>($t0, e) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:271:9+58
    assume {:print "$at(24,11978,12036)"} true;
    assert {:msg "assert_failed(24,11978,12036): post-condition does not hold"}
      (var $range_0 := $t8; (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var e := ReadVec($range_0, $i_1);
    ($ContainsVec'#0'($Dereference($t0), e)))));

    // assert forall e: $t0: Or(ContainsVec<#0>($t8, e), ContainsVec<#0>($t1, e)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:273:9+83
    assume {:print "$at(24,12143,12226)"} true;
    assert {:msg "assert_failed(24,12143,12226): post-condition does not hold"}
      (var $range_0 := $Dereference($t0); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var e := ReadVec($range_0, $i_1);
    (($ContainsVec'#0'($t8, e) || $ContainsVec'#0'($t1, e))))));

    // assert forall i: Range(0, Len<#0>($t0)), j: Range(0, Len<#0>($t0)): Implies(Eq<#0>(Index($t0, i), Index($t0, j)), Eq<num>(i, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume {:print "$at(24,16207,16304)"} true;
    assert {:msg "assert_failed(24,16207,16304): post-condition does not hold"}
      (var $range_0 := $Range(0, LenVec($Dereference($t0))); (var $range_1 := $Range(0, LenVec($Dereference($t0))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var i := $i_2;
    (var j := $i_3;
    (($IsEqual'#0'(ReadVec($Dereference($t0), i), ReadVec($Dereference($t0), j)) ==> $IsEqual'num'(i, j))))))));

    // assert Eq<bool>($t35, exists e: $t1: Not(ContainsVec<#0>($t8, e))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:262:9+67
    assume {:print "$at(24,11550,11617)"} true;
    assert {:msg "assert_failed(24,11550,11617): post-condition does not hold"}
      $IsEqual'bool'($t35, (var $range_0 := $t1; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var e := ReadVec($range_0, $i_1);
    (!$ContainsVec'#0'($t8, e))))));

    // return $t35 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:262:9+67
    $ret0 := $t35;
    $ret1 := $t0;
    return;

    // label L10 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:248:5+1
    assume {:print "$at(24,11021,11022)"} true;
L10:

    // assert false at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:249:5+596
    assume {:print "$at(24,11027,11623)"} true;
    assert {:msg "assert_failed(24,11027,11623): abort not covered by any of the `aborts_if` clauses"}
      false;

    // abort($t22) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:249:5+596
    $abort_code := $t22;
    $abort_flag := true;
    return;

}

// fun NetworkIdentity::initialize_network_identity [verification] at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:66:5+169
procedure {:timeLimit 40} $1_NetworkIdentity_initialize_network_identity$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: Vec (Vec (int));
    var $t2: int;
    var $t3: Vec (Vec (int));
    var $t4: int;
    var $t5: $1_NetworkIdentity_NetworkIdentity;
    var $t0: $signer;
    var $1_NetworkIdentity_NetworkIdentity_$modifies: [int]bool;
    var $temp_0'signer': $signer;
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:66:5+169
    assume {:print "$at(24,2299,2468)"} true;
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<NetworkIdentity::NetworkIdentity>(): And(WellFormed($rsc), forall i: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($rsc))), j: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($rsc))): Implies(Eq<vector<u8>>(Index(select NetworkIdentity::NetworkIdentity.identities($rsc), i), Index(select NetworkIdentity::NetworkIdentity.identities($rsc), j)), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:66:5+169
    assume (forall $a_0: int :: {$ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $a_0)}(var $rsc := $ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $a_0);
    (($IsValid'$1_NetworkIdentity_NetworkIdentity'($rsc) && (var $range_1 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc))); (var $range_2 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc))); (forall $i_3: int, $i_4: int :: $InRange($range_1, $i_3) ==> $InRange($range_2, $i_4) ==> (var i := $i_3;
    (var j := $i_4;
    (($IsEqual'vec'u8''(ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc), i), ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc), j)) ==> $IsEqual'num'(i, j))))))))))));

    // assume Identical($t2, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:71:9+52
    assume {:print "$at(24,2516,2568)"} true;
    assume ($t2 == $1_Signer_spec_address_of($t0));

    // assume CanModify<NetworkIdentity::NetworkIdentity>($t2) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:72:9+47
    assume {:print "$at(24,2577,2624)"} true;
    assume $1_NetworkIdentity_NetworkIdentity_$modifies[$t2];

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:66:5+1
    assume {:print "$at(24,2299,2300)"} true;
    assume {:print "$track_local(42,3,0):", $t0} $t0 == $t0;

    // $t3 := Vector::empty<vector<u8>>() on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:67:26+27
    assume {:print "$at(24,2376,2403)"} true;
    call $t3 := $1_Vector_empty'vec'u8''();
    if ($abort_flag) {
        assume {:print "$at(24,2376,2403)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(42,3):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[identities]($t3) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:67:13+10
    assume {:print "$track_local(42,3,1):", $t3} $t3 == $t3;

    // $t5 := pack NetworkIdentity::NetworkIdentity($t3) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:68:26+30
    assume {:print "$at(24,2430,2460)"} true;
    $t5 := $1_NetworkIdentity_NetworkIdentity($t3);

    // assert forall i: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($t5))), j: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($t5))): Implies(Eq<vector<u8>>(Index(select NetworkIdentity::NetworkIdentity.identities($t5), i), Index(select NetworkIdentity::NetworkIdentity.identities($t5), j)), Eq<num>(i, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    // data invariant at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume {:print "$at(24,16207,16304)"} true;
    assert {:msg "assert_failed(24,16207,16304): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($t5))); (var $range_1 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($t5))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var i := $i_2;
    (var j := $i_3;
    (($IsEqual'vec'u8''(ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($t5), i), ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($t5), j)) ==> $IsEqual'num'(i, j))))))));

    // assert CanModify<NetworkIdentity::NetworkIdentity>($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:68:9+7
    assume {:print "$at(24,2413,2420)"} true;
    assert {:msg "assert_failed(24,2413,2420): caller does not have permission to modify `NetworkIdentity::NetworkIdentity` at given address"}
      $1_NetworkIdentity_NetworkIdentity_$modifies[$1_Signer_spec_address_of($t0)];

    // move_to<NetworkIdentity::NetworkIdentity>($t5, $t0) on_abort goto L2 with $t4 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:68:9+7
    if ($ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_NetworkIdentity_NetworkIdentity_$memory := $ResourceUpdate($1_NetworkIdentity_NetworkIdentity_$memory, $1_Signer_spec_address_of($t0), $t5);
    }
    if ($abort_flag) {
        assume {:print "$at(24,2413,2420)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(42,3):", $t4} $t4 == $t4;
        goto L2;
    }

    // label L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:69:5+1
    assume {:print "$at(24,2467,2468)"} true;
L1:

    // return () at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:69:5+1
    return;

    // label L2 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:69:5+1
L2:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:69:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun NetworkIdentity::initialize_network_identity_event_handle [verification] at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
procedure {:timeLimit 40} $1_NetworkIdentity_initialize_network_identity_event_handle$verify(_$t0: $signer) returns ()
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: $1_NetworkIdentity_NetworkIdentityEventHandle;
    var $t4: int;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: bool;
    var $t9: bool;
    var $t10: int;
    var $t11: int;
    var $t12: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification';
    var $t13: $1_NetworkIdentity_NetworkIdentityEventHandle;
    var $t0: $signer;
    var $temp_0'$1_NetworkIdentity_NetworkIdentityEventHandle': $1_NetworkIdentity_NetworkIdentityEventHandle;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(24,1540,2108)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall i1: Range(0, Len<DiemSystem::ValidatorInfo>(DiemSystem::spec_get_validators())): Roles::spec_has_validator_role_addr(select DiemSystem::ValidatorInfo.addr(Index(DiemSystem::spec_get_validators(), i1))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:672:8+147
    assume (var $range_0 := $Range(0, LenVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory))); (forall $i_1: int :: $InRange($range_0, $i_1) ==> (var i1 := $i_1;
    ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, $addr#$1_DiemSystem_ValidatorInfo(ReadVec($1_DiemSystem_spec_get_validators($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory), i1)))))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomainManager>(addr), Roles::spec_has_treasury_compliance_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2397:9+159
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomainManager_$memory, addr) <==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<VASPDomain::VASPDomains>(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2401:9+145
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_VASPDomain_VASPDomains_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DesignatedDealer::Dealer>(addr), Roles::spec_has_designated_dealer_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2416:9+152
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DesignatedDealer_Dealer_$memory, addr) <==> $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DualAttestation::Credential>(addr), Or(Roles::spec_has_designated_dealer_role_addr(addr), Roles::spec_has_parent_VASP_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2420:9+234
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DualAttestation_Credential_$memory, addr) <==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<SlidingNonce::SlidingNonce>(addr), Or(Roles::spec_has_diem_root_role_addr(addr), Roles::spec_has_treasury_compliance_role_addr(addr))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2444:9+203
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_SlidingNonce_SlidingNonce_$memory, addr) <==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr) || $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorConfig::$exists_config(addr), Roles::spec_has_validator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2448:9+142
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<NetworkIdentity::NetworkIdentityEventHandle>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+568
    assume (forall $a_0: int :: {$ResourceValue($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $a_0)}(var $rsc := $ResourceValue($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $a_0);
    ($IsValid'$1_NetworkIdentity_NetworkIdentityEventHandle'($rsc))));

    // trace_local[tc_account]($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:46:5+1
    assume {:print "$track_local(42,4,0):", $t0} $t0 == $t0;

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:47:9+45
    assume {:print "$at(24,1623,1668)"} true;

    // assume Identical($t5, Or(Or(Not(exists<Roles::RoleId>($t4)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1)), Neq<address>(Signer::spec_address_of($t0), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:47:9+45
    assume ($t5 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t4) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453)));

    // if ($t5) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:47:9+45
    if ($t5) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:47:9+45
L5:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t4)), Eq(5, $t6)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t4)), 1), Eq(3, $t6))), And(Neq<address>(Signer::spec_address_of($t0), b1e55ed), Eq(2, $t6))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:47:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t4) && $IsEqual'num'(5, $t6)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t4)), 1) && $IsEqual'num'(3, $t6))) || (!$IsEqual'address'($1_Signer_spec_address_of($t0), 186537453) && $IsEqual'num'(2, $t6)));

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:47:9+45
    assume {:print "$at(24,1623,1668)"} true;
    assume {:print "$track_abort(42,4):", $t6} $t6 == $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:47:9+45
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:47:9+45
L4:

    // opaque end: Roles::assert_treasury_compliance($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:47:9+45

    // $t7 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:49:49+30
    assume {:print "$at(24,1734,1764)"} true;

    // assume WellFormed($t7) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:49:49+30
    assume $IsValid'address'($t7);

    // assume Eq<address>($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:49:49+30
    assume $IsEqual'address'($t7, $1_Signer_spec_address_of($t0));

    // $t7 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:49:49+30

    // $t8 := exists<NetworkIdentity::NetworkIdentityEventHandle>($t7) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:49:14+6
    $t8 := $ResourceExists($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $t7);

    // $t9 := !($t8) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:49:13+1
    call $t9 := $Not($t8);

    // $t10 := 3 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:50:39+32
    assume {:print "$at(24,1805,1837)"} true;
    $t10 := 3;
    assume $IsValid'u64'($t10);

    // $t11 := opaque begin: Errors::already_published($t10) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:50:13+59

    // assume WellFormed($t11) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:50:13+59
    assume $IsValid'u64'($t11);

    // assume Eq<u64>($t11, 6) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:50:13+59
    assume $IsEqual'u64'($t11, 6);

    // $t11 := opaque end: Errors::already_published($t10) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:50:13+59

    // trace_local[tmp#$2]($t11) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:48:9+170
    assume {:print "$at(24,1678,1848)"} true;
    assume {:print "$track_local(42,4,2):", $t11} $t11 == $t11;

    // trace_local[tmp#$1]($t9) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:48:9+170
    assume {:print "$track_local(42,4,1):", $t9} $t9 == $t9;

    // if ($t9) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:48:9+170
    if ($t9) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:48:9+170
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:48:9+170

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:48:9+170
    assume {:print "$at(24,1678,1848)"} true;
    assume {:print "$track_abort(42,4):", $t11} $t11 == $t11;

    // $t6 := move($t11) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:48:9+170
    $t6 := $t11;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:48:9+170
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:53:96+10
    assume {:print "$at(24,2001,2011)"} true;
L0:

    // $t12 := Event::new_event_handle<NetworkIdentity::NetworkIdentityChangeNotification>($t0) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:53:37+70
    call $t12 := $1_Event_new_event_handle'$1_NetworkIdentity_NetworkIdentityChangeNotification'($t0);
    if ($abort_flag) {
        assume {:print "$at(24,1942,2012)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(42,4):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t13 := pack NetworkIdentity::NetworkIdentityEventHandle($t12) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:52:28+146
    assume {:print "$at(24,1877,2023)"} true;
    $t13 := $1_NetworkIdentity_NetworkIdentityEventHandle($t12);

    // trace_local[event_handle]($t13) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:52:13+12
    assume {:print "$track_local(42,4,3):", $t13} $t13 == $t13;

    // move_to<NetworkIdentity::NetworkIdentityEventHandle>($t13, $t0) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:55:9+7
    assume {:print "$at(24,2033,2040)"} true;
    if ($ResourceExists($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_NetworkIdentity_NetworkIdentityEventHandle_$memory := $ResourceUpdate($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $1_Signer_spec_address_of($t0), $t13);
    }
    if ($abort_flag) {
        assume {:print "$at(24,2033,2040)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(42,4):", $t6} $t6 == $t6;
        goto L3;
    }

    // label L2 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:59:5+1
    assume {:print "$at(24,2107,2108)"} true;
L2:

    // return () at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:59:5+1
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:59:5+1
L3:

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:59:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun NetworkIdentity::remove_identities [verification] at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
procedure {:timeLimit 40} $1_NetworkIdentity_remove_identities$verify(_$t0: $signer, _$t1: Vec (Vec (int))) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: bool;
    var $t9: int;
    var $t10: int;
    var $t11: bool;
    var $t12: $Mutation (Vec (Vec (int)));
    var $t13: $Mutation ($1_NetworkIdentity_NetworkIdentity);
    var $t14: int;
    var $t15: int;
    var $t16: Vec (Vec (int));
    var $t17: bool;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: int;
    var $t22: int;
    var $t23: int;
    var $t24: bool;
    var $t25: int;
    var $t26: int;
    var $t27: int;
    var $t28: bool;
    var $t29: int;
    var $t30: int;
    var $t31: int;
    var $t32: bool;
    var $t33: int;
    var $t34: int;
    var $t35: $Mutation ($1_NetworkIdentity_NetworkIdentity);
    var $t36: $Mutation (Vec (Vec (int)));
    var $t37: bool;
    var $t38: Vec (Vec (int));
    var $t39: int;
    var $t40: $Mutation ($1_NetworkIdentity_NetworkIdentityEventHandle);
    var $t41: $Mutation ($1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification');
    var $t42: Vec (Vec (int));
    var $t43: int;
    var $t44: bool;
    var $t45: $1_NetworkIdentity_NetworkIdentityChangeNotification;
    var $t46: $1_Event_EventHandle'$1_NetworkIdentity_NetworkIdentityChangeNotification';
    var $t47: $1_NetworkIdentity_NetworkIdentityChangeNotification;
    var $t0: $signer;
    var $t1: Vec (Vec (int));
    var $1_NetworkIdentity_NetworkIdentity_$modifies: [int]bool;
    var $temp_0'$1_NetworkIdentity_NetworkIdentity': $1_NetworkIdentity_NetworkIdentity;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'vec'u8''': Vec (Vec (int));
    var $1_NetworkIdentity_NetworkIdentityEventHandle_$memory#121: $Memory $1_NetworkIdentity_NetworkIdentityEventHandle;
    var $1_NetworkIdentity_NetworkIdentity_$memory#122: $Memory $1_NetworkIdentity_NetworkIdentity;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#123: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t12));
    assume IsEmptyVec(p#$Mutation($t13));
    assume IsEmptyVec(p#$Mutation($t35));
    assume IsEmptyVec(p#$Mutation($t36));
    assume IsEmptyVec(p#$Mutation($t40));
    assume IsEmptyVec(p#$Mutation($t41));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(24,6098,7461)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_diem_root_role_addr(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:433:9+110
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), Roles::spec_has_treasury_compliance_role_addr(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:440:9+130
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:282:9+102
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<SlidingNonce::SlidingNonce>(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/SlidingNonce.move:285:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_SlidingNonce_SlidingNonce_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_has_config()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemConfig.move:435:9+76
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_has_config($1_DiemConfig_Configuration_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), And(DiemConfig::spec_is_published<DiemSystem::DiemSystem>(), exists<DiemSystem::CapabilityHolder>(a550c18))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemSystem.move:584:9+165
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> ($1_DiemConfig_spec_is_published'$1_DiemSystem_DiemSystem'($1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory) && $ResourceExists($1_DiemSystem_CapabilityHolder_$memory, 173345816)));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<RegisteredCurrencies::RegisteredCurrencies>()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/RegisteredCurrencies.move:91:9+112
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_RegisteredCurrencies_RegisteredCurrencies'($1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XUS::XUS>()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:56:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XUS_XUS'($1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XUS::XUS>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/XUS.move:61:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), XDX::reserve_exists()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:124:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_XDX_reserve_exists($1_XDX_Reserve_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), Diem::$is_currency<XDX::XDX>()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:127:9+83
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_Diem_$is_currency'$1_XDX_XDX'($1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountLimits::LimitsDefinition<XDX::XDX>>(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/XDX.move:140:9+126
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), TransactionFee::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/TransactionFee.move:158:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_TransactionFee_$is_initialized($1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DualAttestation::spec_is_published()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:539:9+78
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DualAttestation_spec_is_published($1_DualAttestation_Limit_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemTransactionPublishingOption::DiemTransactionPublishingOption>()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTransactionPublishingOption.move:162:9+135
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'($1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), exists<ChainId::ChainId>(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/ChainId.move:50:9+85
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_ChainId_ChainId_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:196:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:204:9+108
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), AccountFreezing::spec_account_is_not_frozen(b1e55ed)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:209:9+118
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_AccountFreezing_spec_account_is_not_frozen($1_AccountFreezing_FreezingBit_$memory, 186537453));

    // assume Implies(DiemTimestamp::$is_operating(), exists<AccountFreezing::FreezeEventsHolder>(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:216:9+96
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_AccountFreezing_FreezeEventsHolder_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::AccountOperationsCapability>(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2356:9+105
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemAccount::DiemWriteSetManager>(a550c18)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2359:9+97
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, 173345816));

    // assume Implies(DiemTimestamp::$is_operating(), DiemBlock::$is_initialized()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemBlock.move:129:9+75
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemBlock_$is_initialized($1_DiemBlock_BlockMetadata_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVMConfig::DiemVMConfig>()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVMConfig.move:216:9+104
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVMConfig_DiemVMConfig'($1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory));

    // assume Implies(DiemTimestamp::$is_operating(), DiemConfig::spec_is_published<DiemVersion::DiemVersion>()) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemVersion.move:70:9+103
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $1_DiemConfig_spec_is_published'$1_DiemVersion_DiemVersion'($1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    assume $IsValid'vec'vec'u8'''($t1);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<NetworkIdentity::NetworkIdentity>(): And(WellFormed($rsc), forall i: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($rsc))), j: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($rsc))): Implies(Eq<vector<u8>>(Index(select NetworkIdentity::NetworkIdentity.identities($rsc), i), Index(select NetworkIdentity::NetworkIdentity.identities($rsc), j)), Eq<num>(i, j))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    assume (forall $a_0: int :: {$ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $a_0)}(var $rsc := $ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $a_0);
    (($IsValid'$1_NetworkIdentity_NetworkIdentity'($rsc) && (var $range_1 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc))); (var $range_2 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc))); (forall $i_3: int, $i_4: int :: $InRange($range_1, $i_3) ==> $InRange($range_2, $i_4) ==> (var i := $i_3;
    (var j := $i_4;
    (($IsEqual'vec'u8''(ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc), i), ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($rsc), j)) ==> $IsEqual'num'(i, j))))))))))));

    // assume forall $rsc: ResourceDomain<NetworkIdentity::NetworkIdentityEventHandle>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1363
    assume (forall $a_0: int :: {$ResourceValue($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $a_0)}(var $rsc := $ResourceValue($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $a_0);
    ($IsValid'$1_NetworkIdentity_NetworkIdentityEventHandle'($rsc))));

    // assume Identical($t15, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:180:9+52
    assume {:print "$at(24,7499,7551)"} true;
    assume ($t15 == $1_Signer_spec_address_of($t0));

    // assume Identical($t16, select NetworkIdentity::NetworkIdentity.identities(global<NetworkIdentity::NetworkIdentity>($t15))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:181:9+72
    assume {:print "$at(24,7560,7632)"} true;
    assume ($t16 == $identities#$1_NetworkIdentity_NetworkIdentity($ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $t15)));

    // assume Identical($t17, exists e: $t1: ContainsVec<vector<u8>>($t16, e)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:182:9+72
    assume {:print "$at(24,7641,7713)"} true;
    assume ($t17 == (var $range_0 := $t1; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var e := ReadVec($range_0, $i_1);
    ($ContainsVec'vec'u8''($t16, e))))));

    // assume CanModify<NetworkIdentity::NetworkIdentity>($t15) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:200:9+47
    assume {:print "$at(24,8661,8708)"} true;
    assume $1_NetworkIdentity_NetworkIdentity_$modifies[$t15];

    // @123 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:200:9+47
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#123 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @122 := save_mem(NetworkIdentity::NetworkIdentity) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:200:9+47
    $1_NetworkIdentity_NetworkIdentity_$memory#122 := $1_NetworkIdentity_NetworkIdentity_$memory;

    // @121 := save_mem(NetworkIdentity::NetworkIdentityEventHandle) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:200:9+47
    $1_NetworkIdentity_NetworkIdentityEventHandle_$memory#121 := $1_NetworkIdentity_NetworkIdentityEventHandle_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1
    assume {:print "$at(24,6098,6099)"} true;
    assume {:print "$track_local(42,5,0):", $t0} $t0 == $t0;

    // trace_local[to_remove]($t1) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:149:5+1
    assume {:print "$track_local(42,5,1):", $t1} $t1 == $t1;

    // $t18 := NetworkIdentity::tc_network_identity_event_handle_exists() on_abort goto L13 with $t19 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:16+41
    assume {:print "$at(24,6246,6287)"} true;
    call $t18 := $1_NetworkIdentity_tc_network_identity_event_handle_exists();
    if ($abort_flag) {
        assume {:print "$at(24,6246,6287)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(42,5):", $t19} $t19 == $t19;
        goto L13;
    }

    // $t20 := 3 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:81+32
    $t20 := 3;
    assume $IsValid'u64'($t20);

    // $t21 := opaque begin: Errors::not_published($t20) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:59+55

    // assume WellFormed($t21) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:59+55
    assume $IsValid'u64'($t21);

    // assume Eq<u64>($t21, 5) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:59+55
    assume $IsEqual'u64'($t21, 5);

    // $t21 := opaque end: Errors::not_published($t20) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:59+55

    // trace_local[tmp#$3]($t21) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:9+106
    assume {:print "$track_local(42,5,3):", $t21} $t21 == $t21;

    // trace_local[tmp#$2]($t18) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:9+106
    assume {:print "$track_local(42,5,2):", $t18} $t18 == $t18;

    // if ($t18) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:9+106
    if ($t18) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:9+106
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:9+106

    // trace_abort($t21) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:9+106
    assume {:print "$at(24,6239,6345)"} true;
    assume {:print "$track_abort(42,5):", $t21} $t21 == $t21;

    // $t19 := move($t21) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:9+106
    $t19 := $t21;

    // goto L13 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:150:9+106
    goto L13;

    // label L0 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:151:44+10
    assume {:print "$at(24,6390,6400)"} true;
L0:

    // $t22 := Vector::length<vector<u8>>($t1) on_abort goto L13 with $t19 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:151:29+26
    call $t22 := $1_Vector_length'vec'u8''($t1);
    if ($abort_flag) {
        assume {:print "$at(24,6375,6401)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(42,5):", $t19} $t19 == $t19;
        goto L13;
    }

    // trace_local[num_to_remove]($t22) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:151:13+13
    assume {:print "$track_local(42,5,14):", $t22} $t22 == $t22;

    // $t23 := 0 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:32+1
    assume {:print "$at(24,6434,6435)"} true;
    $t23 := 0;
    assume $IsValid'u64'($t23);

    // $t24 := >($t22, $t23) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:30+1
    call $t24 := $Gt($t22, $t23);

    // $t25 := 2 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:60+20
    $t25 := 2;
    assume $IsValid'u64'($t25);

    // $t26 := opaque begin: Errors::invalid_argument($t25) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:35+46

    // assume WellFormed($t26) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:35+46
    assume $IsValid'u64'($t26);

    // assume Eq<u64>($t26, 7) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:35+46
    assume $IsEqual'u64'($t26, 7);

    // $t26 := opaque end: Errors::invalid_argument($t25) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:35+46

    // trace_local[tmp#$5]($t26) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:9+73
    assume {:print "$track_local(42,5,5):", $t26} $t26 == $t26;

    // trace_local[tmp#$4]($t24) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:9+73
    assume {:print "$track_local(42,5,4):", $t24} $t24 == $t24;

    // if ($t24) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:9+73
    if ($t24) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:9+73
L3:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:9+73

    // trace_abort($t26) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:9+73
    assume {:print "$at(24,6411,6484)"} true;
    assume {:print "$track_abort(42,5):", $t26} $t26 == $t26;

    // $t19 := move($t26) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:9+73
    $t19 := $t26;

    // goto L13 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:152:9+73
    goto L13;

    // label L2 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:154:13+13
    assume {:print "$at(24,6514,6527)"} true;
L2:

    // $t27 := 100 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:154:30+19
    $t27 := 100;
    assume $IsValid'u64'($t27);

    // $t28 := <=($t22, $t27) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:154:27+2
    call $t28 := $Le($t22, $t27);

    // $t29 := 1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:155:36+26
    assume {:print "$at(24,6587,6613)"} true;
    $t29 := 1;
    assume $IsValid'u64'($t29);

    // $t30 := opaque begin: Errors::limit_exceeded($t29) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:155:13+50

    // assume WellFormed($t30) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:155:13+50
    assume $IsValid'u64'($t30);

    // assume Eq<u64>($t30, 8) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:155:13+50
    assume $IsEqual'u64'($t30, 8);

    // $t30 := opaque end: Errors::limit_exceeded($t29) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:155:13+50

    // trace_local[tmp#$7]($t30) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:153:9+130
    assume {:print "$at(24,6494,6624)"} true;
    assume {:print "$track_local(42,5,7):", $t30} $t30 == $t30;

    // trace_local[tmp#$6]($t28) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:153:9+130
    assume {:print "$track_local(42,5,6):", $t28} $t28 == $t28;

    // if ($t28) goto L4 else goto L5 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:153:9+130
    if ($t28) { goto L4; } else { goto L5; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:153:9+130
L5:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:153:9+130

    // trace_abort($t30) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:153:9+130
    assume {:print "$at(24,6494,6624)"} true;
    assume {:print "$track_abort(42,5):", $t30} $t30 == $t30;

    // $t19 := move($t30) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:153:9+130
    $t19 := $t30;

    // goto L13 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:153:9+130
    goto L13;

    // label L4 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:158:47+7
    assume {:print "$at(24,6673,6680)"} true;
L4:

    // $t31 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:158:28+27

    // assume WellFormed($t31) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:158:28+27
    assume $IsValid'address'($t31);

    // assume Eq<address>($t31, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:158:28+27
    assume $IsEqual'address'($t31, $1_Signer_spec_address_of($t0));

    // $t31 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:158:28+27

    // trace_local[account_addr]($t31) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:158:13+12
    assume {:print "$track_local(42,5,10):", $t31} $t31 == $t31;

    // $t32 := exists<NetworkIdentity::NetworkIdentity>($t31) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:160:13+6
    assume {:print "$at(24,6711,6717)"} true;
    $t32 := $ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory, $t31);

    // $t33 := 0 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:161:35+24
    assume {:print "$at(24,6784,6808)"} true;
    $t33 := 0;
    assume $IsValid'u64'($t33);

    // $t34 := opaque begin: Errors::not_published($t33) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:161:13+47

    // assume WellFormed($t34) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:161:13+47
    assume $IsValid'u64'($t34);

    // assume Eq<u64>($t34, 5) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:161:13+47
    assume $IsEqual'u64'($t34, 5);

    // $t34 := opaque end: Errors::not_published($t33) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:161:13+47

    // trace_local[tmp#$9]($t34) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:159:9+128
    assume {:print "$at(24,6691,6819)"} true;
    assume {:print "$track_local(42,5,9):", $t34} $t34 == $t34;

    // trace_local[tmp#$8]($t32) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:159:9+128
    assume {:print "$track_local(42,5,8):", $t32} $t32 == $t32;

    // if ($t32) goto L6 else goto L7 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:159:9+128
    if ($t32) { goto L6; } else { goto L7; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:159:9+128
L7:

    // trace_abort($t34) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:159:9+128
    assume {:print "$at(24,6691,6819)"} true;
    assume {:print "$track_abort(42,5):", $t34} $t34 == $t34;

    // $t19 := move($t34) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:159:9+128
    $t19 := $t34;

    // goto L13 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:159:9+128
    goto L13;

    // label L6 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:164:59+12
    assume {:print "$at(24,6880,6892)"} true;
L6:

    // assert CanModify<NetworkIdentity::NetworkIdentity>($t31) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:164:24+17
    assert {:msg "assert_failed(24,6845,6862): caller does not have permission to modify `NetworkIdentity::NetworkIdentity` at given address"}
      $1_NetworkIdentity_NetworkIdentity_$modifies[$t31];

    // $t35 := borrow_global<NetworkIdentity::NetworkIdentity>($t31) on_abort goto L13 with $t19 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:164:24+17
    if (!$ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory, $t31)) {
        call $ExecFailureAbort();
    } else {
        $t35 := $Mutation($Global($t31), EmptyVec(), $ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $t31));
    }
    if ($abort_flag) {
        assume {:print "$at(24,6845,6862)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(42,5):", $t19} $t19 == $t19;
        goto L13;
    }

    // trace_local[identity]($t35) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:164:13+8
    $temp_0'$1_NetworkIdentity_NetworkIdentity' := $Dereference($t35);
    assume {:print "$track_local(42,5,13):", $temp_0'$1_NetworkIdentity_NetworkIdentity'} $temp_0'$1_NetworkIdentity_NetworkIdentity' == $temp_0'$1_NetworkIdentity_NetworkIdentity';

    // $t36 := borrow_field<NetworkIdentity::NetworkIdentity>.identities($t35) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:165:26+24
    assume {:print "$at(24,6920,6944)"} true;
    $t36 := $ChildMutation($t35, 0, $identities#$1_NetworkIdentity_NetworkIdentity($Dereference($t35)));

    // trace_local[identities]($t36) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:165:13+10
    $temp_0'vec'vec'u8''' := $Dereference($t36);
    assume {:print "$track_local(42,5,12):", $temp_0'vec'vec'u8'''} $temp_0'vec'vec'u8''' == $temp_0'vec'vec'u8''';

    // assert forall i: Range(0, Len<vector<u8>>($t36)), j: Range(0, Len<vector<u8>>($t36)): Implies(Eq<vector<u8>>(Index($t36, i), Index($t36, j)), Eq<num>(i, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume {:print "$at(24,16207,16304)"} true;
    assert {:msg "assert_failed(24,16207,16304): precondition does not hold at this call"}
      (var $range_0 := $Range(0, LenVec($Dereference($t36))); (var $range_1 := $Range(0, LenVec($Dereference($t36))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var i := $i_2;
    (var j := $i_3;
    (($IsEqual'vec'u8''(ReadVec($Dereference($t36), i), ReadVec($Dereference($t36), j)) ==> $IsEqual'num'(i, j))))))));

    // $t37 := opaque begin: NetworkIdentity::remove_members_internal<vector<u8>>($t36, $t1) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97

    // $t38 := read_ref($t36) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    $t38 := $Dereference($t36);

    // havoc[mut]($t36) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    havoc $temp_0'vec'vec'u8''';
    $t36 := $UpdateMutation($t36, $temp_0'vec'vec'u8''');
    assume $IsValid'vec'vec'u8'''($Dereference($t36));

    // assume WellFormed($t36) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume $IsValid'vec'vec'u8'''($Dereference($t36));

    // assume WellFormed($t37) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume $IsValid'bool'($t37);

    // assume forall e: $t1: Not(ContainsVec<vector<u8>>($t36, e)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume (var $range_0 := $t1; (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var e := ReadVec($range_0, $i_1);
    (!$ContainsVec'vec'u8''($Dereference($t36), e)))));

    // assume forall e: $t36: ContainsVec<vector<u8>>($t38, e) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume (var $range_0 := $Dereference($t36); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var e := ReadVec($range_0, $i_1);
    ($ContainsVec'vec'u8''($t38, e)))));

    // assume forall e: $t38: Or(ContainsVec<vector<u8>>($t1, e), ContainsVec<vector<u8>>($t36, e)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume (var $range_0 := $t38; (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var e := ReadVec($range_0, $i_1);
    (($ContainsVec'vec'u8''($t1, e) || $ContainsVec'vec'u8''($Dereference($t36), e))))));

    // assume forall i: Range(0, Len<vector<u8>>($t36)), j: Range(0, Len<vector<u8>>($t36)): Implies(Eq<vector<u8>>(Index($t36, i), Index($t36, j)), Eq<num>(i, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume (var $range_0 := $Range(0, LenVec($Dereference($t36))); (var $range_1 := $Range(0, LenVec($Dereference($t36))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var i := $i_2;
    (var j := $i_3;
    (($IsEqual'vec'u8''(ReadVec($Dereference($t36), i), ReadVec($Dereference($t36), j)) ==> $IsEqual'num'(i, j))))))));

    // assume Eq<bool>($t37, exists e: $t1: ContainsVec<vector<u8>>($t38, e)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume $IsEqual'bool'($t37, (var $range_0 := $t1; (exists $i_1: int :: InRangeVec($range_0, $i_1) && (var e := ReadVec($range_0, $i_1);
    ($ContainsVec'vec'u8''($t38, e))))));

    // $t37 := opaque end: NetworkIdentity::remove_members_internal<vector<u8>>($t36, $t1) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97

    // write_back[Reference($t35).identities]($t36) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:167:26+47
    assume {:print "$at(24,6972,7019)"} true;
    $t35 := $UpdateMutation($t35, $Update'$1_NetworkIdentity_NetworkIdentity'_identities($Dereference($t35), $Dereference($t36)));

    // trace_local[has_change]($t37) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:167:13+10
    assume {:print "$track_local(42,5,11):", $t37} $t37 == $t37;

    // if ($t37) goto L8 else goto L9 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:168:9+425
    assume {:print "$at(24,7029,7454)"} true;
    if ($t37) { goto L8; } else { goto L9; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:168:9+425
L9:

    // goto L10 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:168:9+425
    goto L10;

    // label L8 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:170:68+19
    assume {:print "$at(24,7145,7164)"} true;
L8:

    // $t39 := 0xb1e55ed at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:170:68+19
    $t39 := 186537453;
    assume $IsValid'address'($t39);

    // $t40 := borrow_global<NetworkIdentity::NetworkIdentityEventHandle>($t39) on_abort goto L13 with $t19 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:170:22+17
    if (!$ResourceExists($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $t39)) {
        call $ExecFailureAbort();
    } else {
        $t40 := $Mutation($Global($t39), EmptyVec(), $ResourceValue($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $t39));
    }
    if ($abort_flag) {
        assume {:print "$at(24,7099,7116)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(42,5):", $t19} $t19 == $t19;
        goto L13;
    }

    // $t41 := borrow_field<NetworkIdentity::NetworkIdentityEventHandle>.identity_change_events($t40) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:170:17+94
    $t41 := $ChildMutation($t40, 0, $identity_change_events#$1_NetworkIdentity_NetworkIdentityEventHandle($Dereference($t40)));

    // $t42 := get_field<NetworkIdentity::NetworkIdentity>.identities($t35) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:173:34+20
    assume {:print "$at(24,7318,7338)"} true;
    $t42 := $identities#$1_NetworkIdentity_NetworkIdentity($Dereference($t35));

    // assert forall i: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($t35))), j: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($t35))): Implies(Eq<vector<u8>>(Index(select NetworkIdentity::NetworkIdentity.identities($t35), i), Index(select NetworkIdentity::NetworkIdentity.identities($t35), j)), Eq<num>(i, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    // data invariant at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume {:print "$at(24,16207,16304)"} true;
    assert {:msg "assert_failed(24,16207,16304): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($Dereference($t35)))); (var $range_1 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($Dereference($t35)))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var i := $i_2;
    (var j := $i_3;
    (($IsEqual'vec'u8''(ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($Dereference($t35)), i), ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($Dereference($t35)), j)) ==> $IsEqual'num'(i, j))))))));

    // write_back[NetworkIdentity::NetworkIdentity@]($t35) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:173:34+20
    assume {:print "$at(24,7318,7338)"} true;
    $1_NetworkIdentity_NetworkIdentity_$memory := $ResourceUpdate($1_NetworkIdentity_NetworkIdentity_$memory, $GlobalLocationAddress($t35),
        $Dereference($t35));

    // $t43 := opaque begin: DiemTimestamp::now_seconds() at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28
    assume {:print "$at(24,7382,7410)"} true;

    // assume Identical($t44, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28
    assume ($t44 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t44) goto L16 else goto L14 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28
    if ($t44) { goto L16; } else { goto L14; }

    // label L15 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28
L15:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t19)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t19));

    // trace_abort($t19) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28
    assume {:print "$at(24,7382,7410)"} true;
    assume {:print "$track_abort(42,5):", $t19} $t19 == $t19;

    // goto L13 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28
    goto L13;

    // label L14 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28
L14:

    // assume WellFormed($t43) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28
    assume $IsValid'u64'($t43);

    // assume Eq<u64>($t43, Div(DiemTimestamp::spec_now_microseconds(), 1000000)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28
    assume $IsEqual'u64'($t43, ($1_DiemTimestamp_spec_now_microseconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) div 1000000));

    // $t43 := opaque end: DiemTimestamp::now_seconds() at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:174:43+28

    // $t45 := pack NetworkIdentity::NetworkIdentityChangeNotification($t31, $t42, $t43) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:171:17+223
    assume {:print "$at(24,7206,7429)"} true;
    $t45 := $1_NetworkIdentity_NetworkIdentityChangeNotification($t31, $t42, $t43);

    // Event::emit_event<NetworkIdentity::NetworkIdentityChangeNotification>($t41, $t45) on_abort goto L13 with $t19 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:169:13+384
    assume {:print "$at(24,7059,7443)"} true;
    call $t41 := $1_Event_emit_event'$1_NetworkIdentity_NetworkIdentityChangeNotification'($t41, $t45);
    if ($abort_flag) {
        assume {:print "$at(24,7059,7443)"} true;
        $t19 := $abort_code;
        assume {:print "$track_abort(42,5):", $t19} $t19 == $t19;
        goto L13;
    }

    // goto L11 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:176:14+1
    assume {:print "$at(24,7443,7444)"} true;
    goto L11;

    // label L10 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:168:9+425
    assume {:print "$at(24,7029,7454)"} true;
L10:

    // assert forall i: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($t35))), j: Range(0, Len<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities($t35))): Implies(Eq<vector<u8>>(Index(select NetworkIdentity::NetworkIdentity.identities($t35), i), Index(select NetworkIdentity::NetworkIdentity.identities($t35), j)), Eq<num>(i, j)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    // data invariant at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:353:9+97
    assume {:print "$at(24,16207,16304)"} true;
    assert {:msg "assert_failed(24,16207,16304): data invariant does not hold"}
      (var $range_0 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($Dereference($t35)))); (var $range_1 := $Range(0, LenVec($identities#$1_NetworkIdentity_NetworkIdentity($Dereference($t35)))); (forall $i_2: int, $i_3: int :: $InRange($range_0, $i_2) ==> $InRange($range_1, $i_3) ==> (var i := $i_2;
    (var j := $i_3;
    (($IsEqual'vec'u8''(ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($Dereference($t35)), i), ReadVec($identities#$1_NetworkIdentity_NetworkIdentity($Dereference($t35)), j)) ==> $IsEqual'num'(i, j))))))));

    // write_back[NetworkIdentity::NetworkIdentity@]($t35) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:168:9+425
    assume {:print "$at(24,7029,7454)"} true;
    $1_NetworkIdentity_NetworkIdentity_$memory := $ResourceUpdate($1_NetworkIdentity_NetworkIdentity_$memory, $GlobalLocationAddress($t35),
        $Dereference($t35));

    // destroy($t35) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:168:9+425

    // label L11 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:177:10+1
    assume {:print "$at(24,7454,7455)"} true;
L11:

    // label L12 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:178:5+1
    assume {:print "$at(24,7460,7461)"} true;
L12:

    // assume Identical($t46, select NetworkIdentity::NetworkIdentityEventHandle.identity_change_events(global<NetworkIdentity::NetworkIdentityEventHandle>(b1e55ed))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:184:9+97
    assume {:print "$at(24,7723,7820)"} true;
    assume ($t46 == $identity_change_events#$1_NetworkIdentity_NetworkIdentityEventHandle($ResourceValue($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, 186537453)));

    // assume Identical($t47, pack NetworkIdentity::NetworkIdentityChangeNotification($t15, select NetworkIdentity::NetworkIdentity.identities(global<NetworkIdentity::NetworkIdentity>($t15)), DiemTimestamp::spec_now_seconds())) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:185:9+239
    assume {:print "$at(24,7829,8068)"} true;
    assume ($t47 == $1_NetworkIdentity_NetworkIdentityChangeNotification($t15, $identities#$1_NetworkIdentity_NetworkIdentity($ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $t15)), $1_DiemTimestamp_spec_now_seconds($1_DiemTimestamp_CurrentTimeMicroseconds_$memory)));

    // assert Not(Not(NetworkIdentity::$tc_network_identity_event_handle_exists[@121]())) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:191:9+80
    assume {:print "$at(24,8078,8158)"} true;
    assert {:msg "assert_failed(24,8078,8158): function does not abort under this condition"}
      !!$1_NetworkIdentity_$tc_network_identity_event_handle_exists($1_NetworkIdentity_NetworkIdentityEventHandle_$memory#121);

    // assert Not(Eq<num>(Len<vector<u8>>($t1), 0)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:192:9+60
    assume {:print "$at(24,8167,8227)"} true;
    assert {:msg "assert_failed(24,8167,8227): function does not abort under this condition"}
      !$IsEqual'num'(LenVec($t1), 0);

    // assert Not(Gt(Len<vector<u8>>($t1), 100)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:193:9+75
    assume {:print "$at(24,8236,8311)"} true;
    assert {:msg "assert_failed(24,8236,8311): function does not abort under this condition"}
      !(LenVec($t1) > 100);

    // assert Not(Not(exists[@122]<NetworkIdentity::NetworkIdentity>($t15))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:194:9+76
    assume {:print "$at(24,8320,8396)"} true;
    assert {:msg "assert_failed(24,8320,8396): function does not abort under this condition"}
      !!$ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory#122, $t15);

    // assert Not(And($t17, Not(DiemTimestamp::$is_operating[@123]()))) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !($t17 && !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#123));

    // assert forall e: $t1: Not(ContainsVec<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities(global<NetworkIdentity::NetworkIdentity>($t15)), e)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:344:9+57
    assume {:print "$at(24,15737,15794)"} true;
    assert {:msg "assert_failed(24,15737,15794): post-condition does not hold"}
      (var $range_0 := $t1; (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var e := ReadVec($range_0, $i_1);
    (!$ContainsVec'vec'u8''($identities#$1_NetworkIdentity_NetworkIdentity($ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $t15)), e)))));

    // assert forall e: select NetworkIdentity::NetworkIdentity.identities(global<NetworkIdentity::NetworkIdentity>($t15)): ContainsVec<vector<u8>>($t16, e) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:346:9+58
    assume {:print "$at(24,15873,15931)"} true;
    assert {:msg "assert_failed(24,15873,15931): post-condition does not hold"}
      (var $range_0 := $identities#$1_NetworkIdentity_NetworkIdentity($ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $t15)); (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var e := ReadVec($range_0, $i_1);
    ($ContainsVec'vec'u8''($t16, e)))));

    // assert forall e: $t16: Or(ContainsVec<vector<u8>>($t1, e), ContainsVec<vector<u8>>(select NetworkIdentity::NetworkIdentity.identities(global<NetworkIdentity::NetworkIdentity>($t15)), e)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:348:9+86
    assume {:print "$at(24,16042,16128)"} true;
    assert {:msg "assert_failed(24,16042,16128): post-condition does not hold"}
      (var $range_0 := $t16; (forall $i_1: int :: InRangeVec($range_0, $i_1) ==> (var e := ReadVec($range_0, $i_1);
    (($ContainsVec'vec'u8''($t1, e) || $ContainsVec'vec'u8''($identities#$1_NetworkIdentity_NetworkIdentity($ResourceValue($1_NetworkIdentity_NetworkIdentity_$memory, $t15)), e))))));

    // assert EventStoreIncludes(ExtendEventStore(EmptyEventStore(), $t47, $t46, $t17)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:201:9+34
    assume {:print "$at(24,8717,8751)"} true;
    assert {:msg "assert_failed(24,8717,8751): function does not emit the expected event"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_NetworkIdentity_NetworkIdentityChangeNotification'($EmptyEventStore, $t46, $t47, $t17); $EventStore__is_subset(expected, actual)));

    // assert EventStoreIncludedIn(ExtendEventStore(EmptyEventStore(), $t47, $t46, $t17)) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:179:5+1291
    assume {:print "$at(24,7466,8757)"} true;
    assert {:msg "assert_failed(24,7466,8757): emitted event not covered by any of the `emits` clauses"}
      (var actual := $EventStore__subtract($es, old($es)); (var expected := $CondExtendEventStore'$1_NetworkIdentity_NetworkIdentityChangeNotification'($EmptyEventStore, $t46, $t47, $t17); $EventStore__is_subset(actual, expected)));

    // return () at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:179:5+1291
    return;

    // label L13 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:178:5+1
    assume {:print "$at(24,7460,7461)"} true;
L13:

    // assert Or(Or(Or(Or(Not(NetworkIdentity::$tc_network_identity_event_handle_exists[@121]()), Eq<num>(Len<vector<u8>>($t1), 0)), Gt(Len<vector<u8>>($t1), 100)), Not(exists[@122]<NetworkIdentity::NetworkIdentity>($t15))), And($t17, Not(DiemTimestamp::$is_operating[@123]()))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:179:5+1291
    assume {:print "$at(24,7466,8757)"} true;
    assert {:msg "assert_failed(24,7466,8757): abort not covered by any of the `aborts_if` clauses"}
      ((((!$1_NetworkIdentity_$tc_network_identity_event_handle_exists($1_NetworkIdentity_NetworkIdentityEventHandle_$memory#121) || $IsEqual'num'(LenVec($t1), 0)) || (LenVec($t1) > 100)) || !$ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory#122, $t15)) || ($t17 && !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#123)));

    // assert Or(Or(Or(Or(And(Not(NetworkIdentity::$tc_network_identity_event_handle_exists[@121]()), Eq(5, $t19)), And(Eq<num>(Len<vector<u8>>($t1), 0), Eq(7, $t19))), And(Gt(Len<vector<u8>>($t1), 100), Eq(8, $t19))), And(Not(exists[@122]<NetworkIdentity::NetworkIdentity>($t15)), Eq(5, $t19))), And(And($t17, Not(DiemTimestamp::$is_operating[@123]())), Eq(1, $t19))) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:179:5+1291
    assert {:msg "assert_failed(24,7466,8757): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((!$1_NetworkIdentity_$tc_network_identity_event_handle_exists($1_NetworkIdentity_NetworkIdentityEventHandle_$memory#121) && $IsEqual'num'(5, $t19)) || ($IsEqual'num'(LenVec($t1), 0) && $IsEqual'num'(7, $t19))) || ((LenVec($t1) > 100) && $IsEqual'num'(8, $t19))) || (!$ResourceExists($1_NetworkIdentity_NetworkIdentity_$memory#122, $t15) && $IsEqual'num'(5, $t19))) || (($t17 && !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#123)) && $IsEqual'num'(1, $t19)));

    // abort($t19) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:179:5+1291
    $abort_code := $t19;
    $abort_flag := true;
    return;

    // label L16 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L16:

    // destroy($t41) at <internal>:1:1+10

    // goto L15 at <internal>:1:1+10
    goto L15;

}

// fun NetworkIdentity::tc_network_identity_event_handle_exists [baseline] at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:61:5+123
procedure {:inline 1} $1_NetworkIdentity_tc_network_identity_event_handle_exists() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // bytecode translation starts here
    // $t0 := 0xb1e55ed at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:62:44+19
    assume {:print "$at(24,2211,2230)"} true;
    $t0 := 186537453;
    assume $IsValid'address'($t0);

    // $t1 := exists<NetworkIdentity::NetworkIdentityEventHandle>($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:62:9+6
    $t1 := $ResourceExists($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:62:9+55
    assume {:print "$track_return(42,7,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:63:5+1
    assume {:print "$at(24,2236,2237)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:63:5+1
    $ret0 := $t1;
    return;

}

// fun NetworkIdentity::tc_network_identity_event_handle_exists [verification] at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:61:5+123
procedure {:timeLimit 40} $1_NetworkIdentity_tc_network_identity_event_handle_exists$verify() returns ($ret0: bool)
{
    // declare local variables
    var $t0: int;
    var $t1: bool;
    var $temp_0'bool': bool;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall $rsc: ResourceDomain<NetworkIdentity::NetworkIdentityEventHandle>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:61:5+123
    assume {:print "$at(24,2114,2237)"} true;
    assume (forall $a_0: int :: {$ResourceValue($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $a_0)}(var $rsc := $ResourceValue($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $a_0);
    ($IsValid'$1_NetworkIdentity_NetworkIdentityEventHandle'($rsc))));

    // $t0 := 0xb1e55ed at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:62:44+19
    assume {:print "$at(24,2211,2230)"} true;
    $t0 := 186537453;
    assume $IsValid'address'($t0);

    // $t1 := exists<NetworkIdentity::NetworkIdentityEventHandle>($t0) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:62:9+6
    $t1 := $ResourceExists($1_NetworkIdentity_NetworkIdentityEventHandle_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:62:9+55
    assume {:print "$track_return(42,7,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:63:5+1
    assume {:print "$at(24,2236,2237)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/NetworkIdentity.move:63:5+1
    $ret0 := $t1;
    return;

}
