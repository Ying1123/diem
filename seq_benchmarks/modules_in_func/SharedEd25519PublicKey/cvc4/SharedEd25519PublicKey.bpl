
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




//==================================
// Begin Translation



// Given Types for Type Parameters

type #0;
function {:inline} $IsEqual'#0'(x1: #0, x2: #0): bool { x1 == x2 }
function {:inline} $IsValid'#0'(x: #0): bool { true }

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
function {:inline} $1_Option_$is_some'$1_DiemAccount_KeyRotationCapability'(t: $1_Option_Option'$1_DiemAccount_KeyRotationCapability'): bool {
    !$1_Vector_$is_empty'$1_DiemAccount_KeyRotationCapability'($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'(t))
}

// spec fun at /home/ying/diem/language/move-stdlib/modules/Option.move:61:5+96
function {:inline} $1_Option_$is_some'$1_DiemAccount_WithdrawCapability'(t: $1_Option_Option'$1_DiemAccount_WithdrawCapability'): bool {
    !$1_Vector_$is_empty'$1_DiemAccount_WithdrawCapability'($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'(t))
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

// fun SharedEd25519PublicKey::publish [verification] at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
procedure {:timeLimit 40} $1_SharedEd25519PublicKey_publish$verify(_$t0: $signer, _$t1: Vec (int)) returns ()
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
    var $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#130: $Memory $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $1_DiemAccount_DiemAccount_$memory#131: $Memory $1_DiemAccount_DiemAccount;
    var $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#133: $Memory $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t12));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume {:print "$at(29,1433,1808)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    assume $IsValid'vec'u8''($t1);

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<SharedEd25519PublicKey::SharedEd25519PublicKey>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    assume (forall $a_0: int :: {$ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0)}(var $rsc := $ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0);
    ($IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'($rsc))));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:46:9+44
    assume {:print "$at(29,1991,2035)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:972:9+52
    assume {:print "$at(12,43278,43330)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:60:9+44
    assume {:print "$at(29,2531,2575)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // @131 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+1
    assume {:print "$at(29,1433,1434)"} true;
    $1_DiemAccount_DiemAccount_$memory#131 := $1_DiemAccount_DiemAccount_$memory;

    // @130 := save_mem(SharedEd25519PublicKey::SharedEd25519PublicKey) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+1
    $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#130 := $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+1
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

    // @133 := save_mem(SharedEd25519PublicKey::SharedEd25519PublicKey) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:30:5+375
    // state save for global update invariants
    assume {:print "$at(29,1433,1808)"} true;
    $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#133 := $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory;

    // move_to<SharedEd25519PublicKey::SharedEd25519PublicKey>($t18, $t0) on_abort goto L3 with $t11 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:37:9+7
    assume {:print "$at(29,1782,1789)"} true;
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

    // assert forall addr: TypeDomain<address>() where exists[@133]<SharedEd25519PublicKey::SharedEd25519PublicKey>(addr): exists<SharedEd25519PublicKey::SharedEd25519PublicKey>(addr) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:145:9+136
    // global invariant at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:145:9+136
    assume {:print "$at(29,6066,6202)"} true;
    assert {:msg "assert_failed(29,6066,6202): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#133, addr))  ==> ($ResourceExists($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, addr)));

    // label L2 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:38:5+1
    assume {:print "$at(29,1807,1808)"} true;
L2:

    // assert Not(SharedEd25519PublicKey::$exists_at[@130]($t5)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:55:9+57
    assume {:print "$at(29,2376,2433)"} true;
    assert {:msg "assert_failed(29,2376,2433): function does not abort under this condition"}
      !$1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#130, $t5);

    // assert Not(Not(DiemAccount::$exists_at[@131]($t6))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:973:9+62
    assume {:print "$at(12,43339,43401)"} true;
    assert {:msg "assert_failed(12,43339,43401): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#131, $t6);

    // assert Not(DiemAccount::$delegated_key_rotation_capability[@131](Signer::spec_address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:978:9+105
    assume {:print "$at(12,43554,43659)"} true;
    assert {:msg "assert_failed(12,43554,43659): function does not abort under this condition"}
      !$1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#131, $1_Signer_spec_address_of($t0));

    // assert Not(Not(Signature::$ed25519_validate_pubkey[]($t1))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:85:9+92
    assume {:print "$at(29,3470,3562)"} true;
    assert {:msg "assert_failed(29,3470,3562): function does not abort under this condition"}
      !!$1_Signature_$ed25519_validate_pubkey($t1);

    // assert Not(Not(DiemAccount::$exists_at[@131](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(pack SharedEd25519PublicKey::SharedEd25519PublicKey([], DiemAccount::spec_get_key_rotation_cap[@131]($t5))))))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:936:9+69
    assume {:print "$at(12,41499,41568)"} true;
    assert {:msg "assert_failed(12,41499,41568): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#131, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($1_SharedEd25519PublicKey_SharedEd25519PublicKey($EmptyVec'u8'(), $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory#131, $t5)))));

    // assert Not(Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:937:9+74
    assume {:print "$at(12,41577,41651)"} true;
    assert {:msg "assert_failed(12,41577,41651): function does not abort under this condition"}
      !!$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32);

    // assert SharedEd25519PublicKey::$exists_at($t7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:62:9+24
    assume {:print "$at(29,2585,2609)"} true;
    assert {:msg "assert_failed(29,2585,2609): post-condition does not hold"}
      $1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t7);

    // assert Eq<vector<u8>>(select SharedEd25519PublicKey::SharedEd25519PublicKey.key(global<SharedEd25519PublicKey::SharedEd25519PublicKey>($t7)), $t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:94:9+41
    assume {:print "$at(29,3908,3949)"} true;
    assert {:msg "assert_failed(29,3908,3949): post-condition does not hold"}
      $IsEqual'vec'u8''($key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t7)), $t1);

    // return () at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:94:9+41
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:38:5+1
    assume {:print "$at(29,1807,1808)"} true;
L3:

    // assert Or(Or(Or(Or(Or(SharedEd25519PublicKey::$exists_at[@130]($t5), Not(DiemAccount::$exists_at[@131]($t6))), DiemAccount::$delegated_key_rotation_capability[@131](Signer::spec_address_of[]($t0))), Not(Signature::$ed25519_validate_pubkey[]($t1))), Not(DiemAccount::$exists_at[@131](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(pack SharedEd25519PublicKey::SharedEd25519PublicKey([], DiemAccount::spec_get_key_rotation_cap[@131]($t5))))))), Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:39:5+85
    assume {:print "$at(29,1813,1898)"} true;
    assert {:msg "assert_failed(29,1813,1898): abort not covered by any of the `aborts_if` clauses"}
      ((((($1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#130, $t5) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#131, $t6)) || $1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#131, $1_Signer_spec_address_of($t0))) || !$1_Signature_$ed25519_validate_pubkey($t1)) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#131, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($1_SharedEd25519PublicKey_SharedEd25519PublicKey($EmptyVec'u8'(), $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory#131, $t5)))))) || !$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32));

    // assert Or(Or(Or(Or(Or(And(SharedEd25519PublicKey::$exists_at[@130]($t5), Eq(6, $t11)), And(Not(DiemAccount::$exists_at[@131]($t6)), Eq(5, $t11))), And(DiemAccount::$delegated_key_rotation_capability[@131](Signer::spec_address_of[]($t0)), Eq(1, $t11))), And(Not(Signature::$ed25519_validate_pubkey[]($t1)), Eq(7, $t11))), And(Not(DiemAccount::$exists_at[@131](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(pack SharedEd25519PublicKey::SharedEd25519PublicKey([], DiemAccount::spec_get_key_rotation_cap[@131]($t5)))))), Eq(5, $t11))), And(Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32), Eq(7, $t11))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:39:5+85
    assert {:msg "assert_failed(29,1813,1898): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((((($1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#130, $t5) && $IsEqual'num'(6, $t11)) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#131, $t6) && $IsEqual'num'(5, $t11))) || ($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory#131, $1_Signer_spec_address_of($t0)) && $IsEqual'num'(1, $t11))) || (!$1_Signature_$ed25519_validate_pubkey($t1) && $IsEqual'num'(7, $t11))) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#131, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($1_SharedEd25519PublicKey_SharedEd25519PublicKey($EmptyVec'u8'(), $1_DiemAccount_spec_get_key_rotation_cap($1_DiemAccount_DiemAccount_$memory#131, $t5))))) && $IsEqual'num'(5, $t11))) || (!$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32) && $IsEqual'num'(7, $t11)));

    // abort($t11) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:39:5+85
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

// fun SharedEd25519PublicKey::exists_at [verification] at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:134:5+94
procedure {:timeLimit 40} $1_SharedEd25519PublicKey_exists_at$verify(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:134:5+94
    assume {:print "$at(29,5758,5852)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<SharedEd25519PublicKey::SharedEd25519PublicKey>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:134:5+94
    assume (forall $a_0: int :: {$ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0)}(var $rsc := $ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0);
    ($IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'($rsc))));

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:134:5+1
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

// fun SharedEd25519PublicKey::key [verification] at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:128:5+208
procedure {:timeLimit 40} $1_SharedEd25519PublicKey_key$verify(_$t0: int) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $t8: Vec (int);
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:128:5+208
    assume {:print "$at(29,5470,5678)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<SharedEd25519PublicKey::SharedEd25519PublicKey>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:128:5+208
    assume (forall $a_0: int :: {$ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0)}(var $rsc := $ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0);
    ($IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'($rsc))));

    // trace_local[addr]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:128:5+1
    assume {:print "$track_local(34,1,0):", $t0} $t0 == $t0;

    // $t3 := SharedEd25519PublicKey::exists_at($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:16+15
    assume {:print "$at(29,5561,5576)"} true;
    call $t3 := $1_SharedEd25519PublicKey_exists_at($t0);
    if ($abort_flag) {
        assume {:print "$at(29,5561,5576)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(34,1):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t5 := 1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:55+11
    $t5 := 1;
    assume $IsValid'u64'($t5);

    // $t6 := opaque begin: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:33+34

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:33+34
    assume $IsValid'u64'($t6);

    // assume Eq<u64>($t6, 5) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:33+34
    assume $IsEqual'u64'($t6, 5);

    // $t6 := opaque end: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:33+34

    // trace_local[tmp#$2]($t6) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:9+59
    assume {:print "$track_local(34,1,2):", $t6} $t6 == $t6;

    // trace_local[tmp#$1]($t3) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:9+59
    assume {:print "$track_local(34,1,1):", $t3} $t3 == $t3;

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:9+59
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:9+59
L1:

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:9+59
    assume {:print "$at(29,5554,5613)"} true;
    assume {:print "$track_abort(34,1):", $t6} $t6 == $t6;

    // $t4 := move($t6) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:9+59
    $t4 := $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:129:9+59
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:130:49+4
    assume {:print "$at(29,5663,5667)"} true;
L0:

    // $t7 := get_global<SharedEd25519PublicKey::SharedEd25519PublicKey>($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:130:11+13
    if (!$ResourceExists($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t7 := $ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(29,5625,5638)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(34,1):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t8 := get_field<SharedEd25519PublicKey::SharedEd25519PublicKey>.key($t7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:130:10+48
    $t8 := $key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($t7);

    // trace_return[0]($t8) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:130:9+49
    assume {:print "$track_return(34,1,0):", $t8} $t8 == $t8;

    // label L2 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:131:5+1
    assume {:print "$at(29,5677,5678)"} true;
L2:

    // return $t8 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:131:5+1
    $ret0 := $t8;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:131:5+1
L3:

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:131:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun SharedEd25519PublicKey::rotate_key [verification] at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
procedure {:timeLimit 40} $1_SharedEd25519PublicKey_rotate_key$verify(_$t0: $signer, _$t1: Vec (int)) returns ()
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
    var $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#127: $Memory $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $1_DiemAccount_DiemAccount_$memory#128: $Memory $1_DiemAccount_DiemAccount;
    var $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#132: $Memory $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t12));

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume {:print "$at(29,4383,4693)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    assume $IsValid'vec'u8''($t1);

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // assume forall $rsc: ResourceDomain<SharedEd25519PublicKey::SharedEd25519PublicKey>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    assume (forall $a_0: int :: {$ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0)}(var $rsc := $ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $a_0);
    ($IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'($rsc))));

    // assume Identical($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:115:9+44
    assume {:print "$at(29,4896,4940)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t0));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:122:9+44
    assume {:print "$at(29,5201,5245)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // @128 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+1
    assume {:print "$at(29,4383,4384)"} true;
    $1_DiemAccount_DiemAccount_$memory#128 := $1_DiemAccount_DiemAccount_$memory;

    // @127 := save_mem(SharedEd25519PublicKey::SharedEd25519PublicKey) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+1
    $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#127 := $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+1
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

    // @132 := save_mem(SharedEd25519PublicKey::SharedEd25519PublicKey) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:103:5+310
    // state save for global update invariants
    assume {:print "$at(29,4383,4693)"} true;
    $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#132 := $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory;

    // write_back[SharedEd25519PublicKey::SharedEd25519PublicKey@]($t12) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:106:9+76
    assume {:print "$at(29,4610,4686)"} true;
    $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory := $ResourceUpdate($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $GlobalLocationAddress($t12),
        $Dereference($t12));

    // assert forall addr: TypeDomain<address>() where exists[@132]<SharedEd25519PublicKey::SharedEd25519PublicKey>(addr): exists<SharedEd25519PublicKey::SharedEd25519PublicKey>(addr) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:145:9+136
    // global invariant at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:145:9+136
    assume {:print "$at(29,6066,6202)"} true;
    assert {:msg "assert_failed(29,6066,6202): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#132, addr))  ==> ($ResourceExists($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, addr)));

    // label L2 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:107:5+1
    assume {:print "$at(29,4692,4693)"} true;
L2:

    // assert Not(Not(SharedEd25519PublicKey::$exists_at[@127]($t5))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:116:9+54
    assume {:print "$at(29,4949,5003)"} true;
    assert {:msg "assert_failed(29,4949,5003): function does not abort under this condition"}
      !!$1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#127, $t5);

    // assert Not(Not(Signature::$ed25519_validate_pubkey[]($t1))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:85:9+92
    assume {:print "$at(29,3470,3562)"} true;
    assert {:msg "assert_failed(29,3470,3562): function does not abort under this condition"}
      !!$1_Signature_$ed25519_validate_pubkey($t1);

    // assert Not(Not(DiemAccount::$exists_at[@128](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(global[@127]<SharedEd25519PublicKey::SharedEd25519PublicKey>($t5)))))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:936:9+69
    assume {:print "$at(12,41499,41568)"} true;
    assert {:msg "assert_failed(12,41499,41568): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#128, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#127, $t5))));

    // assert Not(Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:937:9+74
    assume {:print "$at(12,41577,41651)"} true;
    assert {:msg "assert_failed(12,41577,41651): function does not abort under this condition"}
      !!$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32);

    // assert Eq<vector<u8>>(select SharedEd25519PublicKey::SharedEd25519PublicKey.key(global<SharedEd25519PublicKey::SharedEd25519PublicKey>($t6)), $t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:94:9+41
    assume {:print "$at(29,3908,3949)"} true;
    assert {:msg "assert_failed(29,3908,3949): post-condition does not hold"}
      $IsEqual'vec'u8''($key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory, $t6)), $t1);

    // return () at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:94:9+41
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:107:5+1
    assume {:print "$at(29,4692,4693)"} true;
L3:

    // assert Or(Or(Or(Not(SharedEd25519PublicKey::$exists_at[@127]($t5)), Not(Signature::$ed25519_validate_pubkey[]($t1))), Not(DiemAccount::$exists_at[@128](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(global[@127]<SharedEd25519PublicKey::SharedEd25519PublicKey>($t5)))))), Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:108:5+92
    assume {:print "$at(29,4698,4790)"} true;
    assert {:msg "assert_failed(29,4698,4790): abort not covered by any of the `aborts_if` clauses"}
      (((!$1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#127, $t5) || !$1_Signature_$ed25519_validate_pubkey($t1)) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#128, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#127, $t5))))) || !$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32));

    // assert Or(Or(Or(And(Not(SharedEd25519PublicKey::$exists_at[@127]($t5)), Eq(5, $t9)), And(Not(Signature::$ed25519_validate_pubkey[]($t1)), Eq(7, $t9))), And(Not(DiemAccount::$exists_at[@128](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap(global[@127]<SharedEd25519PublicKey::SharedEd25519PublicKey>($t5))))), Eq(5, $t9))), And(Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32), Eq(7, $t9))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:108:5+92
    assert {:msg "assert_failed(29,4698,4790): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((!$1_SharedEd25519PublicKey_$exists_at($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#127, $t5) && $IsEqual'num'(5, $t9)) || (!$1_Signature_$ed25519_validate_pubkey($t1) && $IsEqual'num'(7, $t9))) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#128, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($ResourceValue($1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory#127, $t5)))) && $IsEqual'num'(5, $t9))) || (!$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32) && $IsEqual'num'(7, $t9)));

    // abort($t9) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:108:5+92
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

// fun SharedEd25519PublicKey::rotate_key_ [verification] at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
procedure {:timeLimit 40} $1_SharedEd25519PublicKey_rotate_key_$verify(_$t0: $Mutation ($1_SharedEd25519PublicKey_SharedEd25519PublicKey), _$t1: Vec (int)) returns ($ret0: $Mutation ($1_SharedEd25519PublicKey_SharedEd25519PublicKey))
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $t5: bool;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: $1_DiemAccount_KeyRotationCapability;
    var $t10: Vec (int);
    var $t11: $Mutation (Vec (int));
    var $t0: $Mutation ($1_SharedEd25519PublicKey_SharedEd25519PublicKey);
    var $t1: Vec (int);
    var $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey': $1_SharedEd25519PublicKey_SharedEd25519PublicKey;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_DiemAccount_DiemAccount_$memory#123: $Memory $1_DiemAccount_DiemAccount;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t11));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::$delegated_key_rotation_capability(addr), DiemAccount::spec_holds_own_key_rotation_cap(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2277:9+147
    assume {:print "$at(29,2729,3244)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_$delegated_key_rotation_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_key_rotation_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>() where DiemAccount::$exists_at(addr): Or(DiemAccount::spec_holds_delegated_withdraw_capability(addr), DiemAccount::spec_holds_own_withdraw_cap(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2307:9+150
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr))  ==> (($1_DiemAccount_spec_holds_delegated_withdraw_capability($1_DiemAccount_DiemAccount_$memory, addr) || $1_DiemAccount_spec_holds_own_withdraw_cap($1_DiemAccount_DiemAccount_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<Roles::RoleId>(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2379:9+96
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_Roles_RoleId_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::AccountOperationsCapability>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2389:9+144
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_AccountOperationsCapability_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(exists<DiemAccount::DiemWriteSetManager>(addr), And(Eq<address>(addr, a550c18), DiemAccount::$exists_at(addr))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2393:9+135
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($ResourceExists($1_DiemAccount_DiemWriteSetManager_$memory, addr) <==> ($IsEqual'address'(addr, 173345816) && $1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr)))));

    // assume forall addr: TypeDomain<address>(): Iff(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2426:9+122
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) <==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume forall addr: TypeDomain<address>(): Implies(DiemAccount::$exists_at(addr), exists<AccountFreezing::FreezingBit>(addr)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2434:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory, addr) ==> $ResourceExists($1_AccountFreezing_FreezingBit_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
    assume $IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
    assume $IsValid'vec'u8''($t1);

    // assume forall $rsc: ResourceDomain<DiemAccount::DiemAccount>(): And(WellFormed($rsc), And(Le(Len<DiemAccount::WithdrawCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.withdraw_capability($rsc))), 1), Le(Len<DiemAccount::KeyRotationCapability>(select Option::Option.vec(select DiemAccount::DiemAccount.key_rotation_capability($rsc))), 1))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+515
    assume (forall $a_0: int :: {$ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemAccount_DiemAccount_$memory, $a_0);
    (($IsValid'$1_DiemAccount_DiemAccount'($rsc) && ((LenVec($vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'($withdraw_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1) && (LenVec($vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'($key_rotation_capability#$1_DiemAccount_DiemAccount($rsc))) <= 1))))));

    // @123 := save_mem(DiemAccount::DiemAccount) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+1
    $1_DiemAccount_DiemAccount_$memory#123 := $1_DiemAccount_DiemAccount_$memory;

    // $t4 := read_ref($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+1
    $t4 := $Dereference($t0);

    // trace_local[shared_key]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+1
    $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey' := $Dereference($t0);
    assume {:print "$track_local(34,4,0):", $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'} $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey' == $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey';

    // trace_local[new_public_key]($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:66:5+1
    assume {:print "$track_local(34,4,1):", $t1} $t1 == $t1;

    // $t5 := Signature::ed25519_validate_pubkey($t1) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:69:13+55
    assume {:print "$at(29,2898,2953)"} true;
    call $t5 := $1_Signature_ed25519_validate_pubkey($t1);
    if ($abort_flag) {
        assume {:print "$at(29,2898,2953)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(34,4):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t7 := 0 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:70:38+21
    assume {:print "$at(29,2992,3013)"} true;
    $t7 := 0;
    assume $IsValid'u64'($t7);

    // $t8 := opaque begin: Errors::invalid_argument($t7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:70:13+47

    // assume WellFormed($t8) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:70:13+47
    assume $IsValid'u64'($t8);

    // assume Eq<u64>($t8, 7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:70:13+47
    assume $IsEqual'u64'($t8, 7);

    // $t8 := opaque end: Errors::invalid_argument($t7) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:70:13+47

    // trace_local[tmp#$3]($t8) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    assume {:print "$at(29,2878,3024)"} true;
    assume {:print "$track_local(34,4,3):", $t8} $t8 == $t8;

    // trace_local[tmp#$2]($t5) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    assume {:print "$track_local(34,4,2):", $t5} $t5 == $t5;

    // if ($t5) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    if ($t5) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146

    // trace_abort($t8) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    assume {:print "$at(29,2878,3024)"} true;
    assume {:print "$track_abort(34,4):", $t8} $t8 == $t8;

    // $t6 := move($t8) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    $t6 := $t8;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:68:9+146
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:73:14+10
    assume {:print "$at(29,3087,3097)"} true;
L0:

    // $t9 := get_field<SharedEd25519PublicKey::SharedEd25519PublicKey>.rotation_cap($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:73:13+24
    $t9 := $rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($Dereference($t0));

    // $t10 := opaque begin: Authenticator::ed25519_authentication_key($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:74:13+62
    assume {:print "$at(29,3124,3186)"} true;

    // assume WellFormed($t10) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:74:13+62
    assume $IsValid'vec'u8''($t10);

    // assume Eq<vector<u8>>($t10, Authenticator::spec_ed25519_authentication_key($t1)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:74:13+62
    assume $IsEqual'vec'u8''($t10, $1_Authenticator_spec_ed25519_authentication_key($t1));

    // $t10 := opaque end: Authenticator::ed25519_authentication_key($t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:74:13+62

    // DiemAccount::rotate_authentication_key($t9, $t10) on_abort goto L3 with $t6 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:72:9+162
    assume {:print "$at(29,3034,3196)"} true;
    call $1_DiemAccount_rotate_authentication_key($t9, $t10);
    if ($abort_flag) {
        assume {:print "$at(29,3034,3196)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(34,4):", $t6} $t6 == $t6;
        goto L3;
    }

    // $t11 := borrow_field<SharedEd25519PublicKey::SharedEd25519PublicKey>.key($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:76:9+14
    assume {:print "$at(29,3206,3220)"} true;
    $t11 := $ChildMutation($t0, 0, $key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($Dereference($t0)));

    // write_ref($t11, $t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:76:9+31
    $t11 := $UpdateMutation($t11, $t1);

    // write_back[Reference($t0).key]($t11) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:76:9+31
    $t0 := $UpdateMutation($t0, $Update'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'_key($Dereference($t0), $Dereference($t11)));

    // trace_local[shared_key]($t0) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:76:40+1
    $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey' := $Dereference($t0);
    assume {:print "$track_local(34,4,0):", $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'} $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey' == $temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey';

    // label L2 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:77:5+1
    assume {:print "$at(29,3243,3244)"} true;
L2:

    // assert Not(Not(Signature::$ed25519_validate_pubkey[]($t1))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:85:9+92
    assume {:print "$at(29,3470,3562)"} true;
    assert {:msg "assert_failed(29,3470,3562): function does not abort under this condition"}
      !!$1_Signature_$ed25519_validate_pubkey($t1);

    // assert Not(Not(DiemAccount::$exists_at[@123](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap($t4))))) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:936:9+69
    assume {:print "$at(12,41499,41568)"} true;
    assert {:msg "assert_failed(12,41499,41568): function does not abort under this condition"}
      !!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#123, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($t4)));

    // assert Not(Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:937:9+74
    assume {:print "$at(12,41577,41651)"} true;
    assert {:msg "assert_failed(12,41577,41651): function does not abort under this condition"}
      !!$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32);

    // assert Eq<vector<u8>>(select SharedEd25519PublicKey::SharedEd25519PublicKey.key($t0), $t1) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:94:9+41
    assume {:print "$at(29,3908,3949)"} true;
    assert {:msg "assert_failed(29,3908,3949): post-condition does not hold"}
      $IsEqual'vec'u8''($key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($Dereference($t0)), $t1);

    // return () at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:94:9+41
    $ret0 := $t0;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:77:5+1
    assume {:print "$at(29,3243,3244)"} true;
L3:

    // assert Or(Or(Not(Signature::$ed25519_validate_pubkey[]($t1)), Not(DiemAccount::$exists_at[@123](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap($t4))))), Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32)) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:78:5+95
    assume {:print "$at(29,3249,3344)"} true;
    assert {:msg "assert_failed(29,3249,3344): abort not covered by any of the `aborts_if` clauses"}
      ((!$1_Signature_$ed25519_validate_pubkey($t1) || !$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#123, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($t4)))) || !$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32));

    // assert Or(Or(And(Not(Signature::$ed25519_validate_pubkey[]($t1)), Eq(7, $t6)), And(Not(DiemAccount::$exists_at[@123](select DiemAccount::KeyRotationCapability.account_address(select SharedEd25519PublicKey::SharedEd25519PublicKey.rotation_cap($t4)))), Eq(5, $t6))), And(Neq<num>(Len<u8>(Authenticator::spec_ed25519_authentication_key[]($t1)), 32), Eq(7, $t6))) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:78:5+95
    assert {:msg "assert_failed(29,3249,3344): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (((!$1_Signature_$ed25519_validate_pubkey($t1) && $IsEqual'num'(7, $t6)) || (!$1_DiemAccount_$exists_at($1_DiemAccount_DiemAccount_$memory#123, $account_address#$1_DiemAccount_KeyRotationCapability($rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey($t4))) && $IsEqual'num'(5, $t6))) || (!$IsEqual'num'(LenVec($1_Authenticator_spec_ed25519_authentication_key($t1)), 32) && $IsEqual'num'(7, $t6)));

    // abort($t6) at /home/ying/diem/language/diem-framework/modules/SharedEd25519PublicKey.move:78:5+95
    $abort_code := $t6;
    $abort_flag := true;
    return;

}
