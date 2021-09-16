
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

// spec fun at /home/ying/diem/language/diem-framework/modules/VASP.move:214:10+99
function {:inline} $1_VASP_spec_num_children($1_VASP_ParentVASP_$memory: $Memory $1_VASP_ParentVASP, parent: int): int {
    $num_children#$1_VASP_ParentVASP($ResourceValue($1_VASP_ParentVASP_$memory, parent))
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

// fun VASP::publish_child_vasp_credential [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
procedure {:timeLimit 40} $1_VASP_publish_child_vasp_credential$verify(_$t0: $signer, _$t1: $signer) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: bool;
    var $t5: int;
    var $t6: bool;
    var $t7: int;
    var $t8: int;
    var $t9: $Mutation (int);
    var $t10: int;
    var $t11: int;
    var $t12: int;
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
    var $t26: int;
    var $t27: $Mutation ($1_VASP_ParentVASP);
    var $t28: $Mutation (int);
    var $t29: int;
    var $t30: int;
    var $t31: bool;
    var $t32: int;
    var $t33: int;
    var $t34: int;
    var $t35: int;
    var $t36: int;
    var $t37: $1_VASP_ChildVASP;
    var $t0: $signer;
    var $t1: $signer;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_VASP_ChildVASP_$memory#129: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#130: $Memory $1_VASP_ParentVASP;
    var $1_Roles_RoleId_$memory#131: $Memory $1_Roles_RoleId;
    var $1_VASP_ParentVASP_$memory#140: $Memory $1_VASP_ParentVASP;
    var $1_VASP_ChildVASP_$memory#141: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ChildVASP_$memory#142: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#143: $Memory $1_VASP_ParentVASP;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t9));
    assume IsEmptyVec(p#$Mutation($t27));
    assume IsEmptyVec(p#$Mutation($t28));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(35,3108,4012)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // assume Identical($t11, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/VASP.move:86:9+48
    assume {:print "$at(35,4062,4110)"} true;
    assume ($t11 == $1_Signer_spec_address_of($t1));

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:97:9+50
    assume {:print "$at(35,4674,4724)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // assume Identical($t13, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t13 == $1_Signer_spec_address_of($t0));

    // @131 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+1
    assume {:print "$at(35,3108,3109)"} true;
    $1_Roles_RoleId_$memory#131 := $1_Roles_RoleId_$memory;

    // @129 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+1
    $1_VASP_ChildVASP_$memory#129 := $1_VASP_ChildVASP_$memory;

    // @130 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+1
    $1_VASP_ParentVASP_$memory#130 := $1_VASP_ParentVASP_$memory;

    // trace_local[parent]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+1
    assume {:print "$track_local(23,7,0):", $t0} $t0 == $t0;

    // trace_local[child]($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+1
    assume {:print "$track_local(23,7,1):", $t1} $t1 == $t1;

    // assume Identical($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    assume {:print "$at(35,3243,3281)"} true;

    // assume Identical($t15, Or(Not(exists<Roles::RoleId>($t14)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 5))) at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    assume ($t15 == (!$ResourceExists($1_Roles_RoleId_$memory, $t14) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 5)));

    // if ($t15) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    if ($t15) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
L9:

    // assume Or(And(Not(exists<Roles::RoleId>($t14)), Eq(5, $t16)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 5), Eq(3, $t16))) at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t14) && $IsEqual'num'(5, $t16)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 5) && $IsEqual'num'(3, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    assume {:print "$at(35,3243,3281)"} true;
    assume {:print "$track_abort(23,7):", $t16} $t16 == $t16;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
    goto L7;

    // label L8 at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38
L8:

    // opaque end: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:73:9+38

    // opaque begin: Roles::assert_child_vasp_role($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    assume {:print "$at(35,3291,3327)"} true;

    // assume Identical($t17, Or(Not(exists<Roles::RoleId>(Signer::$address_of($t1))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(Signer::$address_of($t1))), 6))) at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    assume ($t17 == (!$ResourceExists($1_Roles_RoleId_$memory, $1_Signer_$address_of($t1)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $1_Signer_$address_of($t1))), 6)));

    // if ($t17) goto L11 else goto L10 at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    if ($t17) { goto L11; } else { goto L10; }

    // label L11 at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
L11:

    // assume Or(And(Not(exists<Roles::RoleId>(Signer::$address_of($t1))), Eq(5, $t16)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(Signer::$address_of($t1))), 6), Eq(3, $t16))) at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $1_Signer_$address_of($t1)) && $IsEqual'num'(5, $t16)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $1_Signer_$address_of($t1))), 6) && $IsEqual'num'(3, $t16)));

    // trace_abort($t16) at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    assume {:print "$at(35,3291,3327)"} true;
    assume {:print "$track_abort(23,7):", $t16} $t16 == $t16;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
    goto L7;

    // label L10 at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36
L10:

    // opaque end: Roles::assert_child_vasp_role($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:74:9+36

    // $t18 := opaque begin: Signer::address_of($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:75:31+25
    assume {:print "$at(35,3359,3384)"} true;

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:75:31+25
    assume $IsValid'address'($t18);

    // assume Eq<address>($t18, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/VASP.move:75:31+25
    assume $IsEqual'address'($t18, $1_Signer_spec_address_of($t1));

    // $t18 := opaque end: Signer::address_of($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:75:31+25

    // trace_local[child_vasp_addr]($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:75:13+15
    assume {:print "$track_local(23,7,8):", $t18} $t18 == $t18;

    // $t19 := opaque begin: VASP::is_vasp($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:17+24
    assume {:print "$at(35,3402,3426)"} true;

    // assume WellFormed($t19) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:17+24
    assume $IsValid'bool'($t19);

    // assume Eq<bool>($t19, VASP::$is_vasp($t18)) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:17+24
    assume $IsEqual'bool'($t19, $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t18));

    // $t19 := opaque end: VASP::is_vasp($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:17+24

    // $t20 := !($t19) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:16+1
    call $t20 := $Not($t19);

    // $t21 := 0 at /home/ying/diem/language/diem-framework/modules/VASP.move:76:69+21
    $t21 := 0;
    assume $IsValid'u64'($t21);

    // $t22 := opaque begin: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:43+48

    // assume WellFormed($t22) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:43+48
    assume $IsValid'u64'($t22);

    // assume Eq<u64>($t22, 6) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:43+48
    assume $IsEqual'u64'($t22, 6);

    // $t22 := opaque end: Errors::already_published($t21) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:43+48

    // trace_local[tmp#$3]($t22) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    assume {:print "$track_local(23,7,3):", $t22} $t22 == $t22;

    // trace_local[tmp#$2]($t20) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    assume {:print "$track_local(23,7,2):", $t20} $t20 == $t20;

    // if ($t20) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    if ($t20) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83

    // trace_abort($t22) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    assume {:print "$at(35,3394,3477)"} true;
    assume {:print "$track_abort(23,7):", $t22} $t22 == $t22;

    // $t16 := move($t22) at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    $t16 := $t22;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:76:9+83
    goto L7;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASP.move:77:51+6
    assume {:print "$at(35,3529,3535)"} true;
L0:

    // $t23 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:77:32+26

    // assume WellFormed($t23) at /home/ying/diem/language/diem-framework/modules/VASP.move:77:32+26
    assume $IsValid'address'($t23);

    // assume Eq<address>($t23, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:77:32+26
    assume $IsEqual'address'($t23, $1_Signer_spec_address_of($t0));

    // $t23 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:77:32+26

    // trace_local[parent_vasp_addr]($t23) at /home/ying/diem/language/diem-framework/modules/VASP.move:77:13+16
    assume {:print "$track_local(23,7,10):", $t23} $t23 == $t23;

    // $t24 := opaque begin: VASP::is_parent($t23) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:16+27
    assume {:print "$at(35,3553,3580)"} true;

    // assume WellFormed($t24) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:16+27
    assume $IsValid'bool'($t24);

    // assume Eq<bool>($t24, VASP::$is_parent($t23)) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:16+27
    assume $IsEqual'bool'($t24, $1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t23));

    // $t24 := opaque end: VASP::is_parent($t23) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:16+27

    // $t25 := 3 at /home/ying/diem/language/diem-framework/modules/VASP.move:78:70+18
    $t25 := 3;
    assume $IsValid'u64'($t25);

    // $t26 := opaque begin: Errors::invalid_argument($t25) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:45+44

    // assume WellFormed($t26) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:45+44
    assume $IsValid'u64'($t26);

    // assume Eq<u64>($t26, 7) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:45+44
    assume $IsEqual'u64'($t26, 7);

    // $t26 := opaque end: Errors::invalid_argument($t25) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:45+44

    // trace_local[tmp#$5]($t26) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    assume {:print "$track_local(23,7,5):", $t26} $t26 == $t26;

    // trace_local[tmp#$4]($t24) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    assume {:print "$track_local(23,7,4):", $t24} $t24 == $t24;

    // if ($t24) goto L2 else goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    if ($t24) { goto L2; } else { goto L3; }

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
L3:

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81

    // trace_abort($t26) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    assume {:print "$at(35,3546,3627)"} true;
    assume {:print "$track_abort(23,7):", $t26} $t26 == $t26;

    // $t16 := move($t26) at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    $t16 := $t26;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:78:9+81
    goto L7;

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:79:63+16
    assume {:print "$at(35,3691,3707)"} true;
L2:

    // $t27 := borrow_global<VASP::ParentVASP>($t23) on_abort goto L7 with $t16 at /home/ying/diem/language/diem-framework/modules/VASP.move:79:33+17
    if (!$ResourceExists($1_VASP_ParentVASP_$memory, $t23)) {
        call $ExecFailureAbort();
    } else {
        $t27 := $Mutation($Global($t23), EmptyVec(), $ResourceValue($1_VASP_ParentVASP_$memory, $t23));
    }
    if ($abort_flag) {
        assume {:print "$at(35,3661,3678)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(23,7):", $t16} $t16 == $t16;
        goto L7;
    }

    // $t28 := borrow_field<VASP::ParentVASP>.num_children($t27) at /home/ying/diem/language/diem-framework/modules/VASP.move:79:28+65
    $t28 := $ChildMutation($t27, 0, $num_children#$1_VASP_ParentVASP($Dereference($t27)));

    // trace_local[num_children]($t28) at /home/ying/diem/language/diem-framework/modules/VASP.move:79:13+12
    $temp_0'u64' := $Dereference($t28);
    assume {:print "$track_local(23,7,9):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t29 := read_ref($t28) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:16+13
    assume {:print "$at(35,3827,3840)"} true;
    $t29 := $Dereference($t28);

    // $t30 := 65536 at /home/ying/diem/language/diem-framework/modules/VASP.move:81:32+18
    $t30 := 65536;
    assume $IsValid'u64'($t30);

    // $t31 := <($t29, $t30) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:30+1
    call $t31 := $Lt($t29, $t30);

    // $t32 := 1 at /home/ying/diem/language/diem-framework/modules/VASP.move:81:75+18
    $t32 := 1;
    assume $IsValid'u64'($t32);

    // $t33 := opaque begin: Errors::limit_exceeded($t32) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:52+42

    // assume WellFormed($t33) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:52+42
    assume $IsValid'u64'($t33);

    // assume Eq<u64>($t33, 8) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:52+42
    assume $IsEqual'u64'($t33, 8);

    // $t33 := opaque end: Errors::limit_exceeded($t32) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:52+42

    // trace_local[tmp#$7]($t33) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    assume {:print "$track_local(23,7,7):", $t33} $t33 == $t33;

    // trace_local[tmp#$6]($t31) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    assume {:print "$track_local(23,7,6):", $t31} $t31 == $t31;

    // if ($t31) goto L4 else goto L12 at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    if ($t31) { goto L4; } else { goto L12; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
L5:

    // destroy($t28) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86

    // destroy($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86

    // trace_abort($t33) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    assume {:print "$at(35,3820,3906)"} true;
    assume {:print "$track_abort(23,7):", $t33} $t33 == $t33;

    // $t16 := move($t33) at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    $t16 := $t33;

    // goto L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:81:9+86
    goto L7;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:82:26+12
    assume {:print "$at(35,3933,3945)"} true;
L4:

    // $t34 := read_ref($t28) at /home/ying/diem/language/diem-framework/modules/VASP.move:82:25+13
    $t34 := $Dereference($t28);

    // $t35 := 1 at /home/ying/diem/language/diem-framework/modules/VASP.move:82:41+1
    $t35 := 1;
    assume $IsValid'u64'($t35);

    // $t36 := +($t34, $t35) on_abort goto L7 with $t16 at /home/ying/diem/language/diem-framework/modules/VASP.move:82:39+1
    call $t36 := $AddU64($t34, $t35);
    if ($abort_flag) {
        assume {:print "$at(35,3946,3947)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(23,7):", $t16} $t16 == $t16;
        goto L7;
    }

    // write_ref($t28, $t36) at /home/ying/diem/language/diem-framework/modules/VASP.move:82:9+33
    $t28 := $UpdateMutation($t28, $t36);

    // write_back[Reference($t27).num_children]($t28) at /home/ying/diem/language/diem-framework/modules/VASP.move:82:9+33
    $t27 := $UpdateMutation($t27, $Update'$1_VASP_ParentVASP'_num_children($Dereference($t27), $Dereference($t28)));

    // @141 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    // state save for global update invariants
    assume {:print "$at(35,3108,4012)"} true;
    $1_VASP_ChildVASP_$memory#141 := $1_VASP_ChildVASP_$memory;

    // @140 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:69:5+904
    $1_VASP_ParentVASP_$memory#140 := $1_VASP_ParentVASP_$memory;

    // write_back[VASP::ParentVASP@]($t27) at /home/ying/diem/language/diem-framework/modules/VASP.move:82:9+33
    assume {:print "$at(35,3916,3949)"} true;
    $1_VASP_ParentVASP_$memory := $ResourceUpdate($1_VASP_ParentVASP_$memory, $GlobalLocationAddress($t27),
        $Dereference($t27));

    // assert forall addr: TypeDomain<address>() where VASP::$is_parent[@140](addr): VASP::$is_parent(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:223:9+94
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:223:9+94
    assume {:print "$at(35,9497,9591)"} true;
    assert {:msg "assert_failed(35,9497,9591): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#140, addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr)));

    // assert forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,9758,9909)"} true;
    assert {:msg "assert_failed(35,9758,9909): global memory invariant does not hold"}
      (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assert forall a: TypeDomain<address>() where VASP::$is_child[@141](a): Eq<address>(VASP::spec_parent_address(a), VASP::spec_parent_address[@141, @140](a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    assume {:print "$at(35,10996,11121)"} true;
    assert {:msg "assert_failed(35,10996,11121): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory#141, a))  ==> ($IsEqual'address'($1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, a), $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory#141, $1_VASP_ParentVASP_$memory#140, a))));

    // assert forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume {:print "$at(26,10909,11010)"} true;
    assert {:msg "assert_failed(26,10909,11010): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // $t37 := pack VASP::ChildVASP($t23) at /home/ying/diem/language/diem-framework/modules/VASP.move:83:24+30
    assume {:print "$at(35,3974,4004)"} true;
    $t37 := $1_VASP_ChildVASP($t23);

    // @142 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    // state save for global update invariants
    assume {:print "$at(26,10909,11010)"} true;
    $1_VASP_ChildVASP_$memory#142 := $1_VASP_ChildVASP_$memory;

    // @143 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    $1_VASP_ParentVASP_$memory#143 := $1_VASP_ParentVASP_$memory;

    // move_to<VASP::ChildVASP>($t37, $t1) on_abort goto L7 with $t16 at /home/ying/diem/language/diem-framework/modules/VASP.move:83:9+7
    assume {:print "$at(35,3959,3966)"} true;
    if ($ResourceExists($1_VASP_ChildVASP_$memory, $1_Signer_spec_address_of($t1))) {
        call $ExecFailureAbort();
    } else {
        $1_VASP_ChildVASP_$memory := $ResourceUpdate($1_VASP_ChildVASP_$memory, $1_Signer_spec_address_of($t1), $t37);
    }
    if ($abort_flag) {
        assume {:print "$at(35,3959,3966)"} true;
        $t16 := $abort_code;
        assume {:print "$track_abort(23,7):", $t16} $t16 == $t16;
        goto L7;
    }

    // assert forall addr: TypeDomain<address>() where VASP::$is_child[@142](addr): VASP::$is_child(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:226:9+92
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:226:9+92
    assume {:print "$at(35,9601,9693)"} true;
    assert {:msg "assert_failed(35,9601,9693): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory#142, addr))  ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr)));

    // assert forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,9758,9909)"} true;
    assert {:msg "assert_failed(35,9758,9909): global memory invariant does not hold"}
      (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assert forall a: TypeDomain<address>() where VASP::$is_child[@142](a): Eq<address>(VASP::spec_parent_address(a), VASP::spec_parent_address[@142, @143](a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    assume {:print "$at(35,10996,11121)"} true;
    assert {:msg "assert_failed(35,10996,11121): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory#142, a))  ==> ($IsEqual'address'($1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, a), $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory#142, $1_VASP_ParentVASP_$memory#143, a))));

    // assert forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume {:print "$at(26,10909,11010)"} true;
    assert {:msg "assert_failed(26,10909,11010): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // label L6 at /home/ying/diem/language/diem-framework/modules/VASP.move:84:5+1
    assume {:print "$at(35,4011,4012)"} true;
L6:

    // assert Not(VASP::$is_vasp[@129, @130]($t11)) at /home/ying/diem/language/diem-framework/modules/VASP.move:99:9+61
    assume {:print "$at(35,4796,4857)"} true;
    assert {:msg "assert_failed(35,4796,4857): function does not abort under this condition"}
      !$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#129, $1_VASP_ParentVASP_$memory#130, $t11);

    // assert Not(Not(VASP::$is_parent[@130]($t12))) at /home/ying/diem/language/diem-framework/modules/VASP.move:100:9+64
    assume {:print "$at(35,4866,4930)"} true;
    assert {:msg "assert_failed(35,4866,4930): function does not abort under this condition"}
      !!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory#130, $t12);

    // assert Not(Gt(Add(VASP::spec_num_children[@130]($t12), 1), 65536)) at /home/ying/diem/language/diem-framework/modules/VASP.move:101:9+94
    assume {:print "$at(35,4939,5033)"} true;
    assert {:msg "assert_failed(35,4939,5033): function does not abort under this condition"}
      !(($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#130, $t12) + 1) > 65536);

    // assert Not(Not(exists[@131]<Roles::RoleId>($t13))) at /home/ying/diem/language/diem-framework/modules/Roles.move:553:9+59
    assume {:print "$at(28,24626,24685)"} true;
    assert {:msg "assert_failed(28,24626,24685): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#131, $t13);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t13)), 5)) at /home/ying/diem/language/diem-framework/modules/Roles.move:554:9+89
    assume {:print "$at(28,24694,24783)"} true;
    assert {:msg "assert_failed(28,24694,24783): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t13)), 5);

    // assert Not(Not(exists[@131]<Roles::RoleId>($t11))) at /home/ying/diem/language/diem-framework/modules/Roles.move:559:9+62
    assume {:print "$at(28,24864,24926)"} true;
    assert {:msg "assert_failed(28,24864,24926): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#131, $t11);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t11)), 6)) at /home/ying/diem/language/diem-framework/modules/Roles.move:560:9+91
    assume {:print "$at(28,24935,25026)"} true;
    assert {:msg "assert_failed(28,24935,25026): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t11)), 6);

    // assert Eq<u64>(VASP::spec_num_children(Signer::spec_address_of($t0)), Add(VASP::spec_num_children[@130](Signer::spec_address_of[]($t0)), 1)) at /home/ying/diem/language/diem-framework/modules/VASP.move:107:9+82
    assume {:print "$at(35,5150,5232)"} true;
    assert {:msg "assert_failed(35,5150,5232): post-condition does not hold"}
      $IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, $1_Signer_spec_address_of($t0)), ($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#130, $1_Signer_spec_address_of($t0)) + 1));

    // assert VASP::$is_child($t11) at /home/ying/diem/language/diem-framework/modules/VASP.move:108:9+29
    assume {:print "$at(35,5241,5270)"} true;
    assert {:msg "assert_failed(35,5241,5270): post-condition does not hold"}
      $1_VASP_$is_child($1_VASP_ChildVASP_$memory, $t11);

    // assert Eq<address>(VASP::spec_parent_address($t11), Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:109:9+55
    assume {:print "$at(35,5279,5334)"} true;
    assert {:msg "assert_failed(35,5279,5334): post-condition does not hold"}
      $IsEqual'address'($1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t11), $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/diem-framework/modules/VASP.move:109:9+55
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:84:5+1
    assume {:print "$at(35,4011,4012)"} true;
L7:

    // assert Or(Or(Or(Or(Or(Or(VASP::$is_vasp[@129, @130]($t11), Not(VASP::$is_parent[@130]($t12))), Gt(Add(VASP::spec_num_children[@130]($t12), 1), 65536)), Not(exists[@131]<Roles::RoleId>($t13))), Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t13)), 5)), Not(exists[@131]<Roles::RoleId>($t11))), Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t11)), 6)) at /home/ying/diem/language/diem-framework/modules/VASP.move:85:5+551
    assume {:print "$at(35,4017,4568)"} true;
    assert {:msg "assert_failed(35,4017,4568): abort not covered by any of the `aborts_if` clauses"}
      (((((($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#129, $1_VASP_ParentVASP_$memory#130, $t11) || !$1_VASP_$is_parent($1_VASP_ParentVASP_$memory#130, $t12)) || (($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#130, $t12) + 1) > 65536)) || !$ResourceExists($1_Roles_RoleId_$memory#131, $t13)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t13)), 5)) || !$ResourceExists($1_Roles_RoleId_$memory#131, $t11)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t11)), 6));

    // assert Or(Or(Or(Or(Or(Or(And(VASP::$is_vasp[@129, @130]($t11), Eq(6, $t16)), And(Not(VASP::$is_parent[@130]($t12)), Eq(7, $t16))), And(Gt(Add(VASP::spec_num_children[@130]($t12), 1), 65536), Eq(8, $t16))), And(Not(exists[@131]<Roles::RoleId>($t13)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t13)), 5), Eq(3, $t16))), And(Not(exists[@131]<Roles::RoleId>($t11)), Eq(5, $t16))), And(Neq<u64>(select Roles::RoleId.role_id(global[@131]<Roles::RoleId>($t11)), 6), Eq(3, $t16))) at /home/ying/diem/language/diem-framework/modules/VASP.move:85:5+551
    assert {:msg "assert_failed(35,4017,4568): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#129, $1_VASP_ParentVASP_$memory#130, $t11) && $IsEqual'num'(6, $t16)) || (!$1_VASP_$is_parent($1_VASP_ParentVASP_$memory#130, $t12) && $IsEqual'num'(7, $t16))) || ((($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#130, $t12) + 1) > 65536) && $IsEqual'num'(8, $t16))) || (!$ResourceExists($1_Roles_RoleId_$memory#131, $t13) && $IsEqual'num'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t13)), 5) && $IsEqual'num'(3, $t16))) || (!$ResourceExists($1_Roles_RoleId_$memory#131, $t11) && $IsEqual'num'(5, $t16))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#131, $t11)), 6) && $IsEqual'num'(3, $t16)));

    // abort($t16) at /home/ying/diem/language/diem-framework/modules/VASP.move:85:5+551
    $abort_code := $t16;
    $abort_flag := true;
    return;

    // label L12 at <internal>:1:1+10
    assume {:print "$at(1,0,10)"} true;
L12:

    // destroy($t27) at <internal>:1:1+10

    // goto L5 at <internal>:1:1+10
    goto L5;

}

// fun VASP::publish_parent_vasp_credential [verification] at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
procedure {:timeLimit 40} $1_VASP_publish_parent_vasp_credential$verify(_$t0: $signer, _$t1: $signer) returns ()
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
    var $t11: bool;
    var $t12: int;
    var $t13: bool;
    var $t14: int;
    var $t15: bool;
    var $t16: bool;
    var $t17: int;
    var $t18: int;
    var $t19: int;
    var $t20: $1_VASP_ParentVASP;
    var $t0: $signer;
    var $t1: $signer;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#135: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_Roles_RoleId_$memory#136: $Memory $1_Roles_RoleId;
    var $1_VASP_ChildVASP_$memory#137: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#138: $Memory $1_VASP_ParentVASP;
    var $1_VASP_ParentVASP_$memory#145: $Memory $1_VASP_ParentVASP;
    var $1_VASP_ChildVASP_$memory#146: $Memory $1_VASP_ChildVASP;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(35,1979,2408)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:56:9+46
    assume {:print "$at(35,2649,2695)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t1));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // @135 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    assume {:print "$at(35,1979,1980)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#135 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @136 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    $1_Roles_RoleId_$memory#136 := $1_Roles_RoleId_$memory;

    // @137 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    $1_VASP_ChildVASP_$memory#137 := $1_VASP_ChildVASP_$memory;

    // @138 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    $1_VASP_ParentVASP_$memory#138 := $1_VASP_ParentVASP_$memory;

    // trace_local[vasp]($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    assume {:print "$track_local(23,8,0):", $t0} $t0 == $t0;

    // trace_local[tc_account]($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+1
    assume {:print "$track_local(23,8,1):", $t1} $t1 == $t1;

    // opaque begin: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    assume {:print "$at(35,2075,2108)"} true;

    // assume Identical($t8, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    assume ($t8 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t8) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    if ($t8) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
L5:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t9)) at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t9));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    assume {:print "$at(35,2075,2108)"} true;
    assume {:print "$track_abort(23,8):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33
L4:

    // opaque end: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/VASP.move:44:9+33

    // assume Identical($t10, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:545:9+44
    assume {:print "$at(28,24274,24318)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    assume {:print "$at(35,2118,2163)"} true;

    // assume Identical($t11, Or(Or(Not(exists<Roles::RoleId>($t10)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 1)), Neq<address>(Signer::spec_address_of($t1), b1e55ed))) at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    assume ($t11 == ((!$ResourceExists($1_Roles_RoleId_$memory, $t10) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)));

    // if ($t11) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    if ($t11) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
L7:

    // assume Or(Or(And(Not(exists<Roles::RoleId>($t10)), Eq(5, $t9)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t10)), 1), Eq(3, $t9))), And(Neq<address>(Signer::spec_address_of($t1), b1e55ed), Eq(2, $t9))) at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    assume (((!$ResourceExists($1_Roles_RoleId_$memory, $t10) && $IsEqual'num'(5, $t9)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t10)), 1) && $IsEqual'num'(3, $t9))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t9)));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    assume {:print "$at(35,2118,2163)"} true;
    assume {:print "$track_abort(23,8):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45
L6:

    // opaque end: Roles::assert_treasury_compliance($t1) at /home/ying/diem/language/diem-framework/modules/VASP.move:45:9+45

    // assume Identical($t12, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:552:9+44
    assume {:print "$at(28,24573,24617)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    assume {:print "$at(35,2173,2209)"} true;

    // assume Identical($t13, Or(Not(exists<Roles::RoleId>($t12)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t12)), 5))) at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    assume ($t13 == (!$ResourceExists($1_Roles_RoleId_$memory, $t12) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t12)), 5)));

    // if ($t13) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    if ($t13) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
L9:

    // assume Or(And(Not(exists<Roles::RoleId>($t12)), Eq(5, $t9)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t12)), 5), Eq(3, $t9))) at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t12) && $IsEqual'num'(5, $t9)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t12)), 5) && $IsEqual'num'(3, $t9)));

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    assume {:print "$at(35,2173,2209)"} true;
    assume {:print "$track_abort(23,8):", $t9} $t9 == $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36
L8:

    // opaque end: Roles::assert_parent_vasp_role($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:46:9+36

    // $t14 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:47:25+24
    assume {:print "$at(35,2235,2259)"} true;

    // assume WellFormed($t14) at /home/ying/diem/language/diem-framework/modules/VASP.move:47:25+24
    assume $IsValid'address'($t14);

    // assume Eq<address>($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/VASP.move:47:25+24
    assume $IsEqual'address'($t14, $1_Signer_spec_address_of($t0));

    // $t14 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:47:25+24

    // trace_local[vasp_addr]($t14) at /home/ying/diem/language/diem-framework/modules/VASP.move:47:13+9
    assume {:print "$track_local(23,8,4):", $t14} $t14 == $t14;

    // $t15 := opaque begin: VASP::is_vasp($t14) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:17+18
    assume {:print "$at(35,2277,2295)"} true;

    // assume WellFormed($t15) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:17+18
    assume $IsValid'bool'($t15);

    // assume Eq<bool>($t15, VASP::$is_vasp($t14)) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:17+18
    assume $IsEqual'bool'($t15, $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, $t14));

    // $t15 := opaque end: VASP::is_vasp($t14) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:17+18

    // $t16 := !($t15) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:16+1
    call $t16 := $Not($t15);

    // $t17 := 0 at /home/ying/diem/language/diem-framework/modules/VASP.move:48:63+21
    $t17 := 0;
    assume $IsValid'u64'($t17);

    // $t18 := opaque begin: Errors::already_published($t17) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:37+48

    // assume WellFormed($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:37+48
    assume $IsValid'u64'($t18);

    // assume Eq<u64>($t18, 6) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:37+48
    assume $IsEqual'u64'($t18, 6);

    // $t18 := opaque end: Errors::already_published($t17) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:37+48

    // trace_local[tmp#$3]($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    assume {:print "$track_local(23,8,3):", $t18} $t18 == $t18;

    // trace_local[tmp#$2]($t16) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    assume {:print "$track_local(23,8,2):", $t16} $t16 == $t16;

    // if ($t16) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    if ($t16) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77

    // trace_abort($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    assume {:print "$at(35,2269,2346)"} true;
    assume {:print "$track_abort(23,8):", $t18} $t18 == $t18;

    // $t9 := move($t18) at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    $t9 := $t18;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:48:9+77
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/VASP.move:49:17+4
    assume {:print "$at(35,2364,2368)"} true;
L0:

    // $t19 := 0 at /home/ying/diem/language/diem-framework/modules/VASP.move:49:50+1
    $t19 := 0;
    assume $IsValid'u64'($t19);

    // $t20 := pack VASP::ParentVASP($t19) at /home/ying/diem/language/diem-framework/modules/VASP.move:49:23+30
    $t20 := $1_VASP_ParentVASP($t19);

    // @146 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    // state save for global update invariants
    assume {:print "$at(35,1979,2408)"} true;
    $1_VASP_ChildVASP_$memory#146 := $1_VASP_ChildVASP_$memory;

    // @145 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/VASP.move:43:5+429
    $1_VASP_ParentVASP_$memory#145 := $1_VASP_ParentVASP_$memory;

    // move_to<VASP::ParentVASP>($t20, $t0) on_abort goto L3 with $t9 at /home/ying/diem/language/diem-framework/modules/VASP.move:49:9+7
    assume {:print "$at(35,2356,2363)"} true;
    if ($ResourceExists($1_VASP_ParentVASP_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_VASP_ParentVASP_$memory := $ResourceUpdate($1_VASP_ParentVASP_$memory, $1_Signer_spec_address_of($t0), $t20);
    }
    if ($abort_flag) {
        assume {:print "$at(35,2356,2363)"} true;
        $t9 := $abort_code;
        assume {:print "$track_abort(23,8):", $t9} $t9 == $t9;
        goto L3;
    }

    // assert forall addr: TypeDomain<address>() where VASP::$is_parent[@145](addr): VASP::$is_parent(addr) at /home/ying/diem/language/diem-framework/modules/VASP.move:223:9+94
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:223:9+94
    assume {:print "$at(35,9497,9591)"} true;
    assert {:msg "assert_failed(35,9497,9591): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#145, addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr)));

    // assert forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(35,9758,9909)"} true;
    assert {:msg "assert_failed(35,9758,9909): global memory invariant does not hold"}
      (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assert forall a: TypeDomain<address>() where VASP::$is_child[@146](a): Eq<address>(VASP::spec_parent_address(a), VASP::spec_parent_address[@146, @145](a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:265:9+125
    assume {:print "$at(35,10996,11121)"} true;
    assert {:msg "assert_failed(35,10996,11121): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory#146, a))  ==> ($IsEqual'address'($1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, a), $1_VASP_spec_parent_address($1_VASP_ChildVASP_$memory#146, $1_VASP_ParentVASP_$memory#145, a))));

    // assert forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume {:print "$at(26,10909,11010)"} true;
    assert {:msg "assert_failed(26,10909,11010): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // label L2 at /home/ying/diem/language/diem-framework/modules/VASP.move:50:5+1
    assume {:print "$at(35,2407,2408)"} true;
L2:

    // assert Not(Not(DiemTimestamp::$is_operating[@135]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#135);

    // assert Not(Not(exists[@136]<Roles::RoleId>($t6))) at /home/ying/diem/language/diem-framework/modules/Roles.move:546:9+59
    assume {:print "$at(28,24327,24386)"} true;
    assert {:msg "assert_failed(28,24327,24386): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#136, $t6);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@136]<Roles::RoleId>($t6)), 1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:547:9+97
    assume {:print "$at(28,24395,24492)"} true;
    assert {:msg "assert_failed(28,24395,24492): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#136, $t6)), 1);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t1), b1e55ed)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:49:9+108
    assume {:print "$at(9,2057,2165)"} true;
    assert {:msg "assert_failed(9,2057,2165): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453);

    // assert Not(Not(exists[@136]<Roles::RoleId>($t7))) at /home/ying/diem/language/diem-framework/modules/Roles.move:553:9+59
    assume {:print "$at(28,24626,24685)"} true;
    assert {:msg "assert_failed(28,24626,24685): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#136, $t7);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@136]<Roles::RoleId>($t7)), 5)) at /home/ying/diem/language/diem-framework/modules/Roles.move:554:9+89
    assume {:print "$at(28,24694,24783)"} true;
    assert {:msg "assert_failed(28,24694,24783): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#136, $t7)), 5);

    // assert Not(VASP::$is_vasp[@137, @138]($t5)) at /home/ying/diem/language/diem-framework/modules/VASP.move:57:9+60
    assume {:print "$at(35,2704,2764)"} true;
    assert {:msg "assert_failed(35,2704,2764): function does not abort under this condition"}
      !$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#137, $1_VASP_ParentVASP_$memory#138, $t5);

    // assert VASP::$is_parent($t5) at /home/ying/diem/language/diem-framework/modules/VASP.move:63:9+29
    assume {:print "$at(35,2915,2944)"} true;
    assert {:msg "assert_failed(35,2915,2944): post-condition does not hold"}
      $1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $t5);

    // assert Eq<u64>(VASP::spec_num_children($t5), 0) at /home/ying/diem/language/diem-framework/modules/VASP.move:64:9+42
    assume {:print "$at(35,2953,2995)"} true;
    assert {:msg "assert_failed(35,2953,2995): post-condition does not hold"}
      $IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, $t5), 0);

    // assert forall a: TypeDomain<address>(): Eq<bool>(exists<VASP::ChildVASP>(a), exists[@137]<VASP::ChildVASP>(a)) at /home/ying/diem/language/diem-framework/modules/VASP.move:252:9+78
    assume {:print "$at(35,10561,10639)"} true;
    assert {:msg "assert_failed(35,10561,10639): post-condition does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($IsEqual'bool'($ResourceExists($1_VASP_ChildVASP_$memory, a), $ResourceExists($1_VASP_ChildVASP_$memory#137, a))));

    // assert forall parent: TypeDomain<address>() where VASP::$is_parent[@138](parent): Eq<u64>(VASP::spec_num_children(parent), VASP::spec_num_children[@138](parent)) at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    assume {:print "$at(35,10696,10845)"} true;
    assert {:msg "assert_failed(35,10696,10845): post-condition does not hold"}
      (forall parent: int :: $IsValid'address'(parent) ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory#138, parent))  ==> ($IsEqual'u64'($1_VASP_spec_num_children($1_VASP_ParentVASP_$memory, parent), $1_VASP_spec_num_children($1_VASP_ParentVASP_$memory#138, parent))));

    // return () at /home/ying/diem/language/diem-framework/modules/VASP.move:256:9+149
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/VASP.move:50:5+1
    assume {:print "$at(35,2407,2408)"} true;
L3:

    // assert Or(Or(Or(Or(Or(Or(Not(DiemTimestamp::$is_operating[@135]()), Not(exists[@136]<Roles::RoleId>($t6))), Neq<u64>(select Roles::RoleId.role_id(global[@136]<Roles::RoleId>($t6)), 1)), Neq<address>(Signer::spec_address_of[]($t1), b1e55ed)), Not(exists[@136]<Roles::RoleId>($t7))), Neq<u64>(select Roles::RoleId.role_id(global[@136]<Roles::RoleId>($t7)), 5)), VASP::$is_vasp[@137, @138]($t5)) at /home/ying/diem/language/diem-framework/modules/VASP.move:52:5+420
    assume {:print "$at(35,2414,2834)"} true;
    assert {:msg "assert_failed(35,2414,2834): abort not covered by any of the `aborts_if` clauses"}
      ((((((!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#135) || !$ResourceExists($1_Roles_RoleId_$memory#136, $t6)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#136, $t6)), 1)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453)) || !$ResourceExists($1_Roles_RoleId_$memory#136, $t7)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#136, $t7)), 5)) || $1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#137, $1_VASP_ParentVASP_$memory#138, $t5));

    // assert Or(Or(Or(Or(Or(Or(And(Not(DiemTimestamp::$is_operating[@135]()), Eq(1, $t9)), And(Not(exists[@136]<Roles::RoleId>($t6)), Eq(5, $t9))), And(Neq<u64>(select Roles::RoleId.role_id(global[@136]<Roles::RoleId>($t6)), 1), Eq(3, $t9))), And(Neq<address>(Signer::spec_address_of[]($t1), b1e55ed), Eq(2, $t9))), And(Not(exists[@136]<Roles::RoleId>($t7)), Eq(5, $t9))), And(Neq<u64>(select Roles::RoleId.role_id(global[@136]<Roles::RoleId>($t7)), 5), Eq(3, $t9))), And(VASP::$is_vasp[@137, @138]($t5), Eq(6, $t9))) at /home/ying/diem/language/diem-framework/modules/VASP.move:52:5+420
    assert {:msg "assert_failed(35,2414,2834): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((((!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#135) && $IsEqual'num'(1, $t9)) || (!$ResourceExists($1_Roles_RoleId_$memory#136, $t6) && $IsEqual'num'(5, $t9))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#136, $t6)), 1) && $IsEqual'num'(3, $t9))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 186537453) && $IsEqual'num'(2, $t9))) || (!$ResourceExists($1_Roles_RoleId_$memory#136, $t7) && $IsEqual'num'(5, $t9))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#136, $t7)), 5) && $IsEqual'num'(3, $t9))) || ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#137, $1_VASP_ParentVASP_$memory#138, $t5) && $IsEqual'num'(6, $t9)));

    // abort($t9) at /home/ying/diem/language/diem-framework/modules/VASP.move:52:5+420
    $abort_code := $t9;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:121:10+85
function {:inline} $1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential, addr: int): bool {
    $ResourceExists($1_DualAttestation_Credential_$memory, addr)
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

// fun RecoveryAddress::publish [verification] at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
procedure {:timeLimit 40} $1_RecoveryAddress_publish$verify(_$t0: $signer, _$t1: $1_DiemAccount_KeyRotationCapability) returns ()
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
    var $1_VASP_ChildVASP_$memory#123: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#124: $Memory $1_VASP_ParentVASP;
    var $1_RecoveryAddress_RecoveryAddress_$memory#125: $Memory $1_RecoveryAddress_RecoveryAddress;
    var $1_RecoveryAddress_RecoveryAddress_$memory#139: $Memory $1_RecoveryAddress_RecoveryAddress;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(26,2276,3288)"} true;
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): And(Gt(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps(addr)), 0), Eq<address>(select DiemAccount::KeyRotationCapability.account_address(Index(RecoveryAddress::spec_get_rotation_caps(addr), 0)), addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:200:9+226
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> (((LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr)) > 0) && $IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr), 0)), addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    assume $IsValid'$1_DiemAccount_KeyRotationCapability'($t1);

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<RecoveryAddress::RecoveryAddress>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    assume (forall $a_0: int :: {$ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0)}(var $rsc := $ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0);
    ($IsValid'$1_RecoveryAddress_RecoveryAddress'($rsc))));

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:69:9+53
    assume {:print "$at(26,3500,3553)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // assume Identical($t10, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:78:9+53
    assume {:print "$at(26,3959,4012)"} true;
    assume ($t10 == $1_Signer_spec_address_of($t0));

    // @123 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1
    assume {:print "$at(26,2276,2277)"} true;
    $1_VASP_ChildVASP_$memory#123 := $1_VASP_ChildVASP_$memory;

    // @124 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1
    $1_VASP_ParentVASP_$memory#124 := $1_VASP_ParentVASP_$memory;

    // @125 := save_mem(RecoveryAddress::RecoveryAddress) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1
    $1_RecoveryAddress_RecoveryAddress_$memory#125 := $1_RecoveryAddress_RecoveryAddress_$memory;

    // trace_local[recovery_account]($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1
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

    // @139 := save_mem(RecoveryAddress::RecoveryAddress) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:43:5+1012
    // state save for global update invariants
    assume {:print "$at(26,2276,3288)"} true;
    $1_RecoveryAddress_RecoveryAddress_$memory#139 := $1_RecoveryAddress_RecoveryAddress_$memory;

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

    // assert forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): And(Gt(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps(addr)), 0), Eq<address>(select DiemAccount::KeyRotationCapability.account_address(Index(RecoveryAddress::spec_get_rotation_caps(addr), 0)), addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:200:9+226
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:200:9+226
    assume {:print "$at(26,9577,9803)"} true;
    assert {:msg "assert_failed(26,9577,9803): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> (((LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr)) > 0) && $IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr), 0)), addr))));

    // assert forall addr: TypeDomain<address>(): Implies(RecoveryAddress::spec_is_recovery_address[@139](addr), RecoveryAddress::spec_is_recovery_address(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:210:9+136
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:210:9+136
    assume {:print "$at(26,9872,10008)"} true;
    assert {:msg "assert_failed(26,9872,10008): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#139, addr) ==> $1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))));

    // assert forall addr: TypeDomain<address>() where exists[@139]<RecoveryAddress::RecoveryAddress>(addr): exists<RecoveryAddress::RecoveryAddress>(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:219:9+122
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:219:9+122
    assume {:print "$at(26,10129,10251)"} true;
    assert {:msg "assert_failed(26,10129,10251): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory#139, addr))  ==> ($ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory, addr)));

    // assert forall recovery_addr: TypeDomain<address>(), to_recovery_addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address[@139](recovery_addr): Implies(RecoveryAddress::spec_holds_key_rotation_cap_for[@139](recovery_addr, to_recovery_addr), RecoveryAddress::spec_holds_key_rotation_cap_for(recovery_addr, to_recovery_addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:224:9+321
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:224:9+321
    assume {:print "$at(26,10442,10763)"} true;
    assert {:msg "assert_failed(26,10442,10763): global memory invariant does not hold"}
      (forall recovery_addr: int, to_recovery_addr: int :: $IsValid'address'(recovery_addr) ==> $IsValid'address'(to_recovery_addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#139, recovery_addr))  ==> (($1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#139, recovery_addr, to_recovery_addr) ==> $1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory, recovery_addr, to_recovery_addr))));

    // assert forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume {:print "$at(26,10909,11010)"} true;
    assert {:msg "assert_failed(26,10909,11010): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // label L6 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:61:5+1
    assume {:print "$at(26,3287,3288)"} true;
L6:

    // assert Not(Not(VASP::$is_vasp[@123, @124]($t9))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:70:9+61
    assume {:print "$at(26,3562,3623)"} true;
    assert {:msg "assert_failed(26,3562,3623): function does not abort under this condition"}
      !!$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#123, $1_VASP_ParentVASP_$memory#124, $t9);

    // assert Not(RecoveryAddress::spec_is_recovery_address[@125]($t9)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:71:9+72
    assume {:print "$at(26,3632,3704)"} true;
    assert {:msg "assert_failed(26,3632,3704): function does not abort under this condition"}
      !$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#125, $t9);

    // assert Not(Neq<address>(DiemAccount::$key_rotation_capability_address[]($t1), $t9)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:72:9+119
    assume {:print "$at(26,3713,3832)"} true;
    assert {:msg "assert_failed(26,3713,3832): function does not abort under this condition"}
      !!$IsEqual'address'($1_DiemAccount_$key_rotation_capability_address($t1), $t9);

    // assert RecoveryAddress::spec_is_recovery_address($t10) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:79:9+39
    assume {:print "$at(26,4021,4060)"} true;
    assert {:msg "assert_failed(26,4021,4060): post-condition does not hold"}
      $1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, $t10);

    // assert Eq<num>(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps($t10)), 1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:80:9+47
    assume {:print "$at(26,4069,4116)"} true;
    assert {:msg "assert_failed(26,4069,4116): post-condition does not hold"}
      $IsEqual'num'(LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, $t10)), 1);

    // assert Eq<DiemAccount::KeyRotationCapability>(Index(RecoveryAddress::spec_get_rotation_caps($t10), 0), $t1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:81:9+56
    assume {:print "$at(26,4125,4181)"} true;
    assert {:msg "assert_failed(26,4125,4181): post-condition does not hold"}
      $IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, $t10), 0), $t1);

    // return () at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:81:9+56
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:61:5+1
    assume {:print "$at(26,3287,3288)"} true;
L7:

    // assert Or(Or(Not(VASP::$is_vasp[@123, @124]($t9)), RecoveryAddress::spec_is_recovery_address[@125]($t9)), Neq<address>(DiemAccount::$key_rotation_capability_address[]($t1), $t9)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:62:5+85
    assume {:print "$at(26,3293,3378)"} true;
    assert {:msg "assert_failed(26,3293,3378): abort not covered by any of the `aborts_if` clauses"}
      ((!$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#123, $1_VASP_ParentVASP_$memory#124, $t9) || $1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#125, $t9)) || !$IsEqual'address'($1_DiemAccount_$key_rotation_capability_address($t1), $t9));

    // assert Or(Or(And(Not(VASP::$is_vasp[@123, @124]($t9)), Eq(7, $t15)), And(RecoveryAddress::spec_is_recovery_address[@125]($t9), Eq(6, $t15))), And(Neq<address>(DiemAccount::$key_rotation_capability_address[]($t1), $t9), Eq(7, $t15))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:62:5+85
    assert {:msg "assert_failed(26,3293,3378): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((!$1_VASP_$is_vasp($1_VASP_ChildVASP_$memory#123, $1_VASP_ParentVASP_$memory#124, $t9) && $IsEqual'num'(7, $t15)) || ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#125, $t9) && $IsEqual'num'(6, $t15))) || (!$IsEqual'address'($1_DiemAccount_$key_rotation_capability_address($t1), $t9) && $IsEqual'num'(7, $t15)));

    // abort($t15) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:62:5+85
    $abort_code := $t15;
    $abort_flag := true;
    return;

}

// fun RecoveryAddress::rotate_authentication_key [verification] at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
procedure {:timeLimit 40} $1_RecoveryAddress_rotate_authentication_key$verify(_$t0: $signer, _$t1: int, _$t2: int, _$t3: Vec (int)) returns ()
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
    var $1_RecoveryAddress_RecoveryAddress_$memory#126: $Memory $1_RecoveryAddress_RecoveryAddress;
    var $1_DiemAccount_DiemAccount_$memory#127: $Memory $1_DiemAccount_DiemAccount;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;
    $t3 := _$t3;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume {:print "$at(26,4427,6075)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): And(Gt(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps(addr)), 0), Eq<address>(select DiemAccount::KeyRotationCapability.account_address(Index(RecoveryAddress::spec_get_rotation_caps(addr), 0)), addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:200:9+226
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> (((LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr)) > 0) && $IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr), 0)), addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    assume $IsValid'address'($t1);

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    assume $IsValid'address'($t2);

    // assume WellFormed($t3) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    assume $IsValid'vec'u8''($t3);

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<RecoveryAddress::RecoveryAddress>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1648
    assume (forall $a_0: int :: {$ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0)}(var $rsc := $ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0);
    ($IsValid'$1_RecoveryAddress_RecoveryAddress'($rsc))));

    // @127 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1
    $1_DiemAccount_DiemAccount_$memory#127 := $1_DiemAccount_DiemAccount_$memory;

    // @126 := save_mem(RecoveryAddress::RecoveryAddress) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1
    $1_RecoveryAddress_RecoveryAddress_$memory#126 := $1_RecoveryAddress_RecoveryAddress_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:87:5+1
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

    // assert Not(Not(RecoveryAddress::spec_is_recovery_address[@126]($t1))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:138:9+81
    assume {:print "$at(26,6392,6473)"} true;
    assert {:msg "assert_failed(26,6392,6473): function does not abort under this condition"}
      !!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#126, $t1);

    // assert Not(Not(DiemAccount::$exists_at[@127]($t2))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:139:9+73
    assume {:print "$at(26,6482,6555)"} true;
    assert {:msg "assert_failed(26,6482,6555): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#127, $t2);

    // assert Not(Neq<num>(Len<u8>($t3), 32)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:140:9+59
    assume {:print "$at(26,6564,6623)"} true;
    assert {:msg "assert_failed(26,6564,6623): function does not abort under this condition"}
      !!$IsEqual'num'(LenVec($t3), 32);

    // assert Not(Not(RecoveryAddress::spec_holds_key_rotation_cap_for[@126]($t1, $t2))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:141:9+103
    assume {:print "$at(26,6632,6735)"} true;
    assert {:msg "assert_failed(26,6632,6735): function does not abort under this condition"}
      !!$1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#126, $t1, $t2);

    // assert Not(Not(Or(Eq<address>(Signer::spec_address_of[]($t0), $t1), Eq<address>(Signer::spec_address_of[]($t0), $t2)))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:142:9+166
    assume {:print "$at(26,6744,6910)"} true;
    assert {:msg "assert_failed(26,6744,6910): function does not abort under this condition"}
      !!($IsEqual'address'($1_Signer_spec_address_of($t0), $t1) || $IsEqual'address'($1_Signer_spec_address_of($t0), $t2));

    // assert Eq<vector<u8>>(DiemAccount::$authentication_key($t2), $t3) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:148:9+63
    assume {:print "$at(26,7032,7095)"} true;
    assert {:msg "assert_failed(26,7032,7095): post-condition does not hold"}
      $IsEqual'vec'u8''($1_DiemAccount_$authentication_key($1_DiemAccount_DiemAccount_$memory, $t2), $t3);

    // return () at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:148:9+63
    return;

    // label L17 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:128:5+1
    assume {:print "$at(26,6074,6075)"} true;
L17:

    // assert Or(Or(Or(Or(Not(RecoveryAddress::spec_is_recovery_address[@126]($t1)), Not(DiemAccount::$exists_at[@127]($t2))), Neq<num>(Len<u8>($t3), 32)), Not(RecoveryAddress::spec_holds_key_rotation_cap_for[@126]($t1, $t2))), Not(Or(Eq<address>(Signer::spec_address_of[]($t0), $t1), Eq<address>(Signer::spec_address_of[]($t0), $t2)))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:129:5+135
    assume {:print "$at(26,6080,6215)"} true;
    assert {:msg "assert_failed(26,6080,6215): abort not covered by any of the `aborts_if` clauses"}
      ((((!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#126, $t1) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#127, $t2)) || !$IsEqual'num'(LenVec($t3), 32)) || !$1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#126, $t1, $t2)) || !($IsEqual'address'($1_Signer_spec_address_of($t0), $t1) || $IsEqual'address'($1_Signer_spec_address_of($t0), $t2)));

    // assert Or(Or(Or(Or(And(Not(RecoveryAddress::spec_is_recovery_address[@126]($t1)), Eq(5, $t17)), And(Not(DiemAccount::$exists_at[@127]($t2)), Eq(5, $t17))), And(Neq<num>(Len<u8>($t3), 32), Eq(7, $t17))), And(Not(RecoveryAddress::spec_holds_key_rotation_cap_for[@126]($t1, $t2)), Eq(7, $t17))), And(Not(Or(Eq<address>(Signer::spec_address_of[]($t0), $t1), Eq<address>(Signer::spec_address_of[]($t0), $t2))), Eq(7, $t17))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:129:5+135
    assert {:msg "assert_failed(26,6080,6215): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#126, $t1) && $IsEqual'num'(5, $t17)) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#127, $t2) && $IsEqual'num'(5, $t17))) || (!$IsEqual'num'(LenVec($t3), 32) && $IsEqual'num'(7, $t17))) || (!$1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#126, $t1, $t2) && $IsEqual'num'(7, $t17))) || (!($IsEqual'address'($1_Signer_spec_address_of($t0), $t1) || $IsEqual'address'($1_Signer_spec_address_of($t0), $t2)) && $IsEqual'num'(7, $t17)));

    // abort($t17) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:129:5+135
    $abort_code := $t17;
    $abort_flag := true;
    return;

}

// fun RecoveryAddress::add_rotation_capability [verification] at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
procedure {:timeLimit 40} $1_RecoveryAddress_add_rotation_capability$verify(_$t0: $1_DiemAccount_KeyRotationCapability, _$t1: int) returns ()
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
    var $t27: int;
    var $t0: $1_DiemAccount_KeyRotationCapability;
    var $t1: int;
    var $temp_0'$1_DiemAccount_KeyRotationCapability': $1_DiemAccount_KeyRotationCapability;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'$1_DiemAccount_KeyRotationCapability'': Vec ($1_DiemAccount_KeyRotationCapability);
    var $1_RecoveryAddress_RecoveryAddress_$memory#132: $Memory $1_RecoveryAddress_RecoveryAddress;
    var $1_VASP_ChildVASP_$memory#133: $Memory $1_VASP_ChildVASP;
    var $1_VASP_ParentVASP_$memory#134: $Memory $1_VASP_ParentVASP;
    var $1_RecoveryAddress_RecoveryAddress_$memory#144: $Memory $1_RecoveryAddress_RecoveryAddress;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t8));
    assume IsEmptyVec(p#$Mutation($t19));
    assume IsEmptyVec(p#$Mutation($t20));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall child_addr: TypeDomain<address>() where VASP::$is_child(child_addr): VASP::$is_parent(select VASP::ChildVASP.parent_vasp_addr(global<VASP::ChildVASP>(child_addr))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    // global invariant at /home/ying/diem/language/diem-framework/modules/VASP.move:232:9+151
    assume {:print "$at(26,7358,8321)"} true;
    assume (forall child_addr: int :: $IsValid'address'(child_addr) ==> ($1_VASP_$is_child($1_VASP_ChildVASP_$memory, child_addr))  ==> ($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, $parent_vasp_addr#$1_VASP_ChildVASP($ResourceValue($1_VASP_ChildVASP_$memory, child_addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_parent(addr), Roles::spec_has_parent_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2456:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_parent($1_VASP_ParentVASP_$memory, addr) <==> $1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(VASP::$is_child(addr), Roles::spec_has_child_VASP_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2460:9+127
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_VASP_$is_child($1_VASP_ChildVASP_$memory, addr) <==> $1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): And(Gt(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps(addr)), 0), Eq<address>(select DiemAccount::KeyRotationCapability.account_address(Index(RecoveryAddress::spec_get_rotation_caps(addr), 0)), addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:200:9+226
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> (((LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr)) > 0) && $IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr), 0)), addr))));

    // assume forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    assume $IsValid'$1_DiemAccount_KeyRotationCapability'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    assume $IsValid'address'($t1);

    // assume forall $rsc: ResourceDomain<VASP::ChildVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ChildVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ChildVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ChildVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<VASP::ParentVASP>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    assume (forall $a_0: int :: {$ResourceValue($1_VASP_ParentVASP_$memory, $a_0)}(var $rsc := $ResourceValue($1_VASP_ParentVASP_$memory, $a_0);
    ($IsValid'$1_VASP_ParentVASP'($rsc))));

    // assume forall $rsc: ResourceDomain<RecoveryAddress::RecoveryAddress>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    assume (forall $a_0: int :: {$ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0)}(var $rsc := $ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory, $a_0);
    ($IsValid'$1_RecoveryAddress_RecoveryAddress'($rsc))));

    // assume Identical($t10, DiemAccount::$key_rotation_capability_address($t0)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:182:9+82
    assume {:print "$at(26,8811,8893)"} true;
    assume ($t10 == $1_DiemAccount_$key_rotation_capability_address($t0));

    // @133 := save_mem(VASP::ChildVASP) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+1
    assume {:print "$at(26,7358,7359)"} true;
    $1_VASP_ChildVASP_$memory#133 := $1_VASP_ChildVASP_$memory;

    // @134 := save_mem(VASP::ParentVASP) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+1
    $1_VASP_ParentVASP_$memory#134 := $1_VASP_ParentVASP_$memory;

    // @132 := save_mem(RecoveryAddress::RecoveryAddress) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+1
    $1_RecoveryAddress_RecoveryAddress_$memory#132 := $1_RecoveryAddress_RecoveryAddress_$memory;

    // trace_local[to_recover]($t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+1
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

    // @144 := save_mem(RecoveryAddress::RecoveryAddress) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:154:5+963
    // state save for global update invariants
    assume {:print "$at(26,7358,8321)"} true;
    $1_RecoveryAddress_RecoveryAddress_$memory#144 := $1_RecoveryAddress_RecoveryAddress_$memory;

    // write_back[RecoveryAddress::RecoveryAddress@]($t19) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:171:9+44
    assume {:print "$at(26,8270,8314)"} true;
    $1_RecoveryAddress_RecoveryAddress_$memory := $ResourceUpdate($1_RecoveryAddress_RecoveryAddress_$memory, $GlobalLocationAddress($t19),
        $Dereference($t19));

    // assert forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): And(Gt(Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps(addr)), 0), Eq<address>(select DiemAccount::KeyRotationCapability.account_address(Index(RecoveryAddress::spec_get_rotation_caps(addr), 0)), addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:200:9+226
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:200:9+226
    assume {:print "$at(26,9577,9803)"} true;
    assert {:msg "assert_failed(26,9577,9803): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> (((LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr)) > 0) && $IsEqual'address'($account_address#$1_DiemAccount_KeyRotationCapability(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, addr), 0)), addr))));

    // assert forall addr: TypeDomain<address>(): Implies(RecoveryAddress::spec_is_recovery_address[@144](addr), RecoveryAddress::spec_is_recovery_address(addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:210:9+136
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:210:9+136
    assume {:print "$at(26,9872,10008)"} true;
    assert {:msg "assert_failed(26,9872,10008): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> (($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#144, addr) ==> $1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))));

    // assert forall addr: TypeDomain<address>() where exists[@144]<RecoveryAddress::RecoveryAddress>(addr): exists<RecoveryAddress::RecoveryAddress>(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:219:9+122
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:219:9+122
    assume {:print "$at(26,10129,10251)"} true;
    assert {:msg "assert_failed(26,10129,10251): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory#144, addr))  ==> ($ResourceExists($1_RecoveryAddress_RecoveryAddress_$memory, addr)));

    // assert forall recovery_addr: TypeDomain<address>(), to_recovery_addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address[@144](recovery_addr): Implies(RecoveryAddress::spec_holds_key_rotation_cap_for[@144](recovery_addr, to_recovery_addr), RecoveryAddress::spec_holds_key_rotation_cap_for(recovery_addr, to_recovery_addr)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:224:9+321
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:224:9+321
    assume {:print "$at(26,10442,10763)"} true;
    assert {:msg "assert_failed(26,10442,10763): global memory invariant does not hold"}
      (forall recovery_addr: int, to_recovery_addr: int :: $IsValid'address'(recovery_addr) ==> $IsValid'address'(to_recovery_addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#144, recovery_addr))  ==> (($1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory#144, recovery_addr, to_recovery_addr) ==> $1_RecoveryAddress_spec_holds_key_rotation_cap_for($1_RecoveryAddress_RecoveryAddress_$memory, recovery_addr, to_recovery_addr))));

    // assert forall addr: TypeDomain<address>() where RecoveryAddress::spec_is_recovery_address(addr): VASP::$is_vasp(addr) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    // global invariant at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:236:9+101
    assume {:print "$at(26,10909,11010)"} true;
    assert {:msg "assert_failed(26,10909,11010): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory, addr))  ==> ($1_VASP_$is_vasp($1_VASP_ChildVASP_$memory, $1_VASP_ParentVASP_$memory, addr)));

    // label L6 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:172:5+1
    assume {:print "$at(26,8320,8321)"} true;
L6:

    // assume Identical($t27, Len<DiemAccount::KeyRotationCapability>(RecoveryAddress::spec_get_rotation_caps($t1))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:188:9+75
    assume {:print "$at(26,9145,9220)"} true;
    assume ($t27 == LenVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, $t1)));

    // assert Not(Not(RecoveryAddress::spec_is_recovery_address[@132]($t1))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:180:9+81
    assume {:print "$at(26,8590,8671)"} true;
    assert {:msg "assert_failed(26,8590,8671): function does not abort under this condition"}
      !!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#132, $t1);

    // assert Not(Ge(Len<DiemAccount::KeyRotationCapability>(select RecoveryAddress::RecoveryAddress.rotation_caps(global[@132]<RecoveryAddress::RecoveryAddress>($t1))), 256)) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:181:9+122
    assume {:print "$at(26,8680,8802)"} true;
    assert {:msg "assert_failed(26,8680,8802): function does not abort under this condition"}
      !(LenVec($rotation_caps#$1_RecoveryAddress_RecoveryAddress($ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory#132, $t1))) >= 256);

    // assert Not(Not(VASP::spec_is_same_vasp[@133, @134]($t1, $t10))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:183:9+103
    assume {:print "$at(26,8902,9005)"} true;
    assert {:msg "assert_failed(26,8902,9005): function does not abort under this condition"}
      !!$1_VASP_spec_is_same_vasp($1_VASP_ChildVASP_$memory#133, $1_VASP_ParentVASP_$memory#134, $t1, $t10);

    // assert Eq<DiemAccount::KeyRotationCapability>(Index(RecoveryAddress::spec_get_rotation_caps($t1), Sub($t27, 1)), $t0) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:189:9+86
    assume {:print "$at(26,9229,9315)"} true;
    assert {:msg "assert_failed(26,9229,9315): post-condition does not hold"}
      $IsEqual'$1_DiemAccount_KeyRotationCapability'(ReadVec($1_RecoveryAddress_spec_get_rotation_caps($1_RecoveryAddress_RecoveryAddress_$memory, $t1), ($t27 - 1)), $t0);

    // return () at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:189:9+86
    return;

    // label L7 at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:172:5+1
    assume {:print "$at(26,8320,8321)"} true;
L7:

    // assert Or(Or(Not(RecoveryAddress::spec_is_recovery_address[@132]($t1)), Ge(Len<DiemAccount::KeyRotationCapability>(select RecoveryAddress::RecoveryAddress.rotation_caps(global[@132]<RecoveryAddress::RecoveryAddress>($t1))), 256)), Not(VASP::spec_is_same_vasp[@133, @134]($t1, $t10))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:173:5+129
    assume {:print "$at(26,8326,8455)"} true;
    assert {:msg "assert_failed(26,8326,8455): abort not covered by any of the `aborts_if` clauses"}
      ((!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#132, $t1) || (LenVec($rotation_caps#$1_RecoveryAddress_RecoveryAddress($ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory#132, $t1))) >= 256)) || !$1_VASP_spec_is_same_vasp($1_VASP_ChildVASP_$memory#133, $1_VASP_ParentVASP_$memory#134, $t1, $t10));

    // assert Or(Or(And(Not(RecoveryAddress::spec_is_recovery_address[@132]($t1)), Eq(5, $t14)), And(Ge(Len<DiemAccount::KeyRotationCapability>(select RecoveryAddress::RecoveryAddress.rotation_caps(global[@132]<RecoveryAddress::RecoveryAddress>($t1))), 256), Eq(8, $t14))), And(Not(VASP::spec_is_same_vasp[@133, @134]($t1, $t10)), Eq(7, $t14))) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:173:5+129
    assert {:msg "assert_failed(26,8326,8455): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((!$1_RecoveryAddress_spec_is_recovery_address($1_RecoveryAddress_RecoveryAddress_$memory#132, $t1) && $IsEqual'num'(5, $t14)) || ((LenVec($rotation_caps#$1_RecoveryAddress_RecoveryAddress($ResourceValue($1_RecoveryAddress_RecoveryAddress_$memory#132, $t1))) >= 256) && $IsEqual'num'(8, $t14))) || (!$1_VASP_spec_is_same_vasp($1_VASP_ChildVASP_$memory#133, $1_VASP_ParentVASP_$memory#134, $t1, $t10) && $IsEqual'num'(7, $t14)));

    // abort($t14) at /home/ying/diem/language/diem-framework/modules/RecoveryAddress.move:173:5+129
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
