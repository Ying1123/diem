
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

// spec fun at /home/ying/diem/language/diem-framework/modules/Roles.move:519:9+169
function {:inline} $1_Roles_spec_signed_by_treasury_compliance_role($1_Roles_RoleId_$memory: $Memory $1_Roles_RoleId): bool {
    (exists a: int :: $IsValid'address'(a) && (($1_Signer_is_txn_signer_addr(a) && $1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, a))))
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

// fun Roles::grant_role [verification] at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
procedure {:timeLimit 40} $1_Roles_grant_role$verify(_$t0: $signer, _$t1: int) returns ()
{
    // declare local variables
    var $t2: bool;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: bool;
    var $t7: bool;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: $1_Roles_RoleId;
    var $t0: $signer;
    var $t1: int;
    var $1_Roles_RoleId_$modifies: [int]bool;
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $1_Roles_RoleId_$memory#121: $Memory $1_Roles_RoleId;
    var $1_Roles_RoleId_$memory#125: $Memory $1_Roles_RoleId;
    var $1_ValidatorConfig_ValidatorConfig_$memory#126: $Memory $1_ValidatorConfig_ValidatorConfig;
    var $1_DualAttestation_Limit_$memory#127: $Memory $1_DualAttestation_Limit;
    var $1_AccountFreezing_FreezingBit_$memory#128: $Memory $1_AccountFreezing_FreezingBit;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(28,7001,7200)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    assume $IsValid'u64'($t1);

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume Identical($t4, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:173:9+44
    assume {:print "$at(28,7316,7360)"} true;
    assume ($t4 == $1_Signer_spec_address_of($t0));

    // assume Implies(Eq<u64>($t1, 0), Eq<address>($t4, a550c18)) at /home/ying/diem/language/diem-framework/modules/Roles.move:175:9+60
    assume {:print "$at(28,7419,7479)"} true;
    assume ($IsEqual'u64'($t1, 0) ==> $IsEqual'address'($t4, 173345816));

    // assume Implies(Eq<u64>($t1, 1), Eq<address>($t4, b1e55ed)) at /home/ying/diem/language/diem-framework/modules/Roles.move:176:9+80
    assume {:print "$at(28,7488,7568)"} true;
    assume ($IsEqual'u64'($t1, 1) ==> $IsEqual'address'($t4, 186537453));

    // assume CanModify<Roles::RoleId>(Signer::$address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:184:9+30
    assume {:print "$at(28,7822,7852)"} true;
    assume $1_Roles_RoleId_$modifies[$1_Signer_$address_of($t0)];

    // @121 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/Roles.move:184:9+30
    $1_Roles_RoleId_$memory#121 := $1_Roles_RoleId_$memory;

    // trace_local[account]($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+1
    assume {:print "$at(28,7001,7002)"} true;
    assume {:print "$track_local(4,12,0):", $t0} $t0 == $t0;

    // trace_local[role_id]($t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+1
    assume {:print "$track_local(4,12,1):", $t1} $t1 == $t1;

    // $t5 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:32+27
    assume {:print "$at(28,7081,7108)"} true;

    // assume WellFormed($t5) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:32+27
    assume $IsValid'address'($t5);

    // assume Eq<address>($t5, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:32+27
    assume $IsEqual'address'($t5, $1_Signer_spec_address_of($t0));

    // $t5 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:32+27

    // $t6 := exists<Roles::RoleId>($t5) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:17+6
    $t6 := $ResourceExists($1_Roles_RoleId_$memory, $t5);

    // $t7 := !($t6) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:16+1
    call $t7 := $Not($t6);

    // $t8 := 0 at /home/ying/diem/language/diem-framework/modules/Roles.move:167:88+8
    $t8 := 0;
    assume $IsValid'u64'($t8);

    // $t9 := opaque begin: Errors::already_published($t8) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:62+35

    // assume WellFormed($t9) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:62+35
    assume $IsValid'u64'($t9);

    // assume Eq<u64>($t9, 6) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:62+35
    assume $IsEqual'u64'($t9, 6);

    // $t9 := opaque end: Errors::already_published($t8) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:62+35

    // trace_local[tmp#$3]($t9) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    assume {:print "$track_local(4,12,3):", $t9} $t9 == $t9;

    // trace_local[tmp#$2]($t7) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    assume {:print "$track_local(4,12,2):", $t7} $t7 == $t7;

    // if ($t7) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    if ($t7) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89

    // trace_abort($t9) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    assume {:print "$at(28,7058,7147)"} true;
    assume {:print "$track_abort(4,12):", $t9} $t9 == $t9;

    // $t10 := move($t9) at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    $t10 := $t9;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/Roles.move:167:9+89
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/Roles.move:168:17+7
    assume {:print "$at(28,7165,7172)"} true;
L0:

    // $t11 := pack Roles::RoleId($t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:168:26+18
    $t11 := $1_Roles_RoleId($t1);

    // assert CanModify<Roles::RoleId>($t0) at /home/ying/diem/language/diem-framework/modules/Roles.move:168:9+7
    assert {:msg "assert_failed(28,7157,7164): caller does not have permission to modify `Roles::RoleId` at given address"}
      $1_Roles_RoleId_$modifies[$1_Signer_spec_address_of($t0)];

    // @125 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    // state save for global update invariants
    assume {:print "$at(28,7001,7200)"} true;
    $1_Roles_RoleId_$memory#125 := $1_Roles_RoleId_$memory;

    // @126 := save_mem(ValidatorConfig::ValidatorConfig) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    $1_ValidatorConfig_ValidatorConfig_$memory#126 := $1_ValidatorConfig_ValidatorConfig_$memory;

    // @127 := save_mem(DualAttestation::Limit) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    $1_DualAttestation_Limit_$memory#127 := $1_DualAttestation_Limit_$memory;

    // @128 := save_mem(AccountFreezing::FreezingBit) at /home/ying/diem/language/diem-framework/modules/Roles.move:166:5+199
    $1_AccountFreezing_FreezingBit_$memory#128 := $1_AccountFreezing_FreezingBit_$memory;

    // move_to<Roles::RoleId>($t11, $t0) on_abort goto L3 with $t10 at /home/ying/diem/language/diem-framework/modules/Roles.move:168:9+7
    assume {:print "$at(28,7157,7164)"} true;
    if ($ResourceExists($1_Roles_RoleId_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_Roles_RoleId_$memory := $ResourceUpdate($1_Roles_RoleId_$memory, $1_Signer_spec_address_of($t0), $t11);
    }
    if ($abort_flag) {
        assume {:print "$at(28,7157,7164)"} true;
        $t10 := $abort_code;
        assume {:print "$track_abort(4,12):", $t10} $t10 == $t10;
        goto L3;
    }

    // assert forall addr: TypeDomain<address>() where exists[@125]<Roles::RoleId>(addr): And(exists<Roles::RoleId>(addr), Eq<u64>(select Roles::RoleId.role_id(global[@125]<Roles::RoleId>(addr)), select Roles::RoleId.role_id(global<Roles::RoleId>(addr)))) at /home/ying/diem/language/diem-framework/modules/Roles.move:378:9+189
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:378:9+189
    assume {:print "$at(28,15262,15451)"} true;
    assert {:msg "assert_failed(28,15262,15451): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_Roles_RoleId_$memory#125, addr))  ==> (($ResourceExists($1_Roles_RoleId_$memory, addr) && $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#125, addr)), $role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, addr))))));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume {:print "$at(28,19372,19463)"} true;
    assert {:msg "assert_failed(28,19372,19463): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume {:print "$at(28,19851,19972)"} true;
    assert {:msg "assert_failed(28,19851,19972): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume {:print "$at(28,20357,20476)"} true;
    assert {:msg "assert_failed(28,20357,20476): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume {:print "$at(28,20552,20681)"} true;
    assert {:msg "assert_failed(28,20552,20681): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume {:print "$at(28,20748,20867)"} true;
    assert {:msg "assert_failed(28,20748,20867): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume {:print "$at(28,20942,21070)"} true;
    assert {:msg "assert_failed(28,20942,21070): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume {:print "$at(28,21137,21263)"} true;
    assert {:msg "assert_failed(28,21137,21263): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume {:print "$at(28,21324,21444)"} true;
    assert {:msg "assert_failed(28,21324,21444): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume {:print "$at(28,21504,21623)"} true;
    assert {:msg "assert_failed(28,21504,21623): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume {:print "$at(39,3154,3291)"} true;
    assert {:msg "assert_failed(39,3154,3291): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall a: TypeDomain<address>() where And(exists[@126]<ValidatorConfig::ValidatorConfig>(a), exists<ValidatorConfig::ValidatorConfig>(a)): Implies(Neq<Option::Option<address>>(select ValidatorConfig::ValidatorConfig.operator_account(global[@126]<ValidatorConfig::ValidatorConfig>(a)), select ValidatorConfig::ValidatorConfig.operator_account(global<ValidatorConfig::ValidatorConfig>(a))), And(Signer::is_txn_signer_addr(a), Roles::spec_has_validator_role_addr(a))) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:318:9+304
    assume {:print "$at(38,13733,14037)"} true;
    assert {:msg "assert_failed(38,13733,14037): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> (($ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory#126, a) && $ResourceExists($1_ValidatorConfig_ValidatorConfig_$memory, a)))  ==> ((!$IsEqual'$1_Option_Option'address''($operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory#126, a)), $operator_account#$1_ValidatorConfig_ValidatorConfig($ResourceValue($1_ValidatorConfig_ValidatorConfig_$memory, a))) ==> ($1_Signer_is_txn_signer_addr(a) && $1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, a)))));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume {:print "$at(38,14521,14633)"} true;
    assert {:msg "assert_failed(38,14521,14633): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume {:print "$at(38,14862,14974)"} true;
    assert {:msg "assert_failed(38,14862,14974): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume {:print "$at(38,15308,15415)"} true;
    assert {:msg "assert_failed(38,15308,15415): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall a: TypeDomain<address>() where exists[@127]<DualAttestation::Limit>(a550c18): Implies(Neq<u64>(DualAttestation::spec_get_cur_microdiem_limit(), DualAttestation::spec_get_cur_microdiem_limit[@127]()), Roles::spec_signed_by_treasury_compliance_role()) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:558:9+214
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:558:9+214
    assume {:print "$at(22,24708,24922)"} true;
    assert {:msg "assert_failed(22,24708,24922): global memory invariant does not hold"}
      (forall a: int :: $IsValid'address'(a) ==> ($ResourceExists($1_DualAttestation_Limit_$memory#127, 173345816))  ==> ((!$IsEqual'u64'($1_DualAttestation_spec_get_cur_microdiem_limit($1_DualAttestation_Limit_$memory), $1_DualAttestation_spec_get_cur_microdiem_limit($1_DualAttestation_Limit_$memory#127)) ==> $1_Roles_spec_signed_by_treasury_compliance_role($1_Roles_RoleId_$memory))));

    // assert forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume {:print "$at(22,25137,25346)"} true;
    assert {:msg "assert_failed(22,25137,25346): global memory invariant does not hold"}
      (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assert forall addr: TypeDomain<address>() where exists[@128]<AccountFreezing::FreezingBit>(addr): Implies(Neq<bool>(select AccountFreezing::FreezingBit.is_frozen(global<AccountFreezing::FreezingBit>(addr)), select AccountFreezing::FreezingBit.is_frozen(global[@128]<AccountFreezing::FreezingBit>(addr))), Roles::spec_signed_by_treasury_compliance_role()) at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:219:9+237
    // global invariant at /home/ying/diem/language/diem-framework/modules/AccountFreezing.move:219:9+237
    assume {:print "$at(4,8702,8939)"} true;
    assert {:msg "assert_failed(4,8702,8939): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_AccountFreezing_FreezingBit_$memory#128, addr))  ==> ((!$IsEqual'bool'($is_frozen#$1_AccountFreezing_FreezingBit($ResourceValue($1_AccountFreezing_FreezingBit_$memory, addr)), $is_frozen#$1_AccountFreezing_FreezingBit($ResourceValue($1_AccountFreezing_FreezingBit_$memory#128, addr))) ==> $1_Roles_spec_signed_by_treasury_compliance_role($1_Roles_RoleId_$memory))));

    // assert forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume {:print "$at(12,109678,109825)"} true;
    assert {:msg "assert_failed(12,109678,109825): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // label L2 at /home/ying/diem/language/diem-framework/modules/Roles.move:169:5+1
    assume {:print "$at(28,7199,7200)"} true;
L2:

    // assert Not(exists[@121]<Roles::RoleId>(Signer::$address_of[]($t0))) at /home/ying/diem/language/diem-framework/modules/Roles.move:181:9+62
    assume {:print "$at(28,7656,7718)"} true;
    assert {:msg "assert_failed(28,7656,7718): function does not abort under this condition"}
      !$ResourceExists($1_Roles_RoleId_$memory#121, $1_Signer_$address_of($t0));

    // assert exists<Roles::RoleId>(Signer::$address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:182:9+29
    assume {:print "$at(28,7727,7756)"} true;
    assert {:msg "assert_failed(28,7727,7756): post-condition does not hold"}
      $ResourceExists($1_Roles_RoleId_$memory, $1_Signer_$address_of($t0));

    // assert Eq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>(Signer::$address_of($t0))), $t1) at /home/ying/diem/language/diem-framework/modules/Roles.move:183:9+48
    assume {:print "$at(28,7765,7813)"} true;
    assert {:msg "assert_failed(28,7765,7813): post-condition does not hold"}
      $IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $1_Signer_$address_of($t0))), $t1);

    // return () at /home/ying/diem/language/diem-framework/modules/Roles.move:183:9+48
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/Roles.move:169:5+1
    assume {:print "$at(28,7199,7200)"} true;
L3:

    // assert exists[@121]<Roles::RoleId>(Signer::$address_of[]($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:170:5+369
    assume {:print "$at(28,7205,7574)"} true;
    assert {:msg "assert_failed(28,7205,7574): abort not covered by any of the `aborts_if` clauses"}
      $ResourceExists($1_Roles_RoleId_$memory#121, $1_Signer_$address_of($t0));

    // assert And(exists[@121]<Roles::RoleId>(Signer::$address_of[]($t0)), Eq(6, $t10)) at /home/ying/diem/language/diem-framework/modules/Roles.move:170:5+369
    assert {:msg "assert_failed(28,7205,7574): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ($ResourceExists($1_Roles_RoleId_$memory#121, $1_Signer_$address_of($t0)) && $IsEqual'num'(6, $t10));

    // abort($t10) at /home/ying/diem/language/diem-framework/modules/Roles.move:170:5+369
    $abort_code := $t10;
    $abort_flag := true;
    return;

}

// spec fun at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:54:5+320
function {:inline} $1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig, validator_operator_addr: int): Vec (int) {
    $human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig($ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, validator_operator_addr))
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

// fun ValidatorOperatorConfig::get_human_name [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:54:5+320
procedure {:timeLimit 40} $1_ValidatorOperatorConfig_get_human_name$verify(_$t0: int) returns ($ret0: Vec (int))
{
    // declare local variables
    var $t1: bool;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
    var $t8: Vec (int);
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#120: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:54:5+320
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume {:print "$at(39,2075,2395)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>(): Iff(ValidatorOperatorConfig::$has_validator_operator_config(addr), Roles::spec_has_validator_operator_role_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:54:5+320
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2452:9+175
    assume (forall addr: int :: $IsValid'address'(addr) ==> (($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr) <==> $1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:61:17+6
    assume {:print "$at(39,2563,2569)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<ValidatorOperatorConfig::ValidatorOperatorConfig>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:61:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0);
    ($IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'($rsc))));

    // @120 := save_mem(ValidatorOperatorConfig::ValidatorOperatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:54:5+1
    assume {:print "$at(39,2075,2076)"} true;
    $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#120 := $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory;

    // trace_local[validator_operator_addr]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:54:5+1
    assume {:print "$track_local(5,0,0):", $t0} $t0 == $t0;

    // $t3 := ValidatorOperatorConfig::has_validator_operator_config($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:16+54
    assume {:print "$at(39,2197,2251)"} true;
    call $t3 := $1_ValidatorOperatorConfig_has_validator_operator_config($t0);
    if ($abort_flag) {
        assume {:print "$at(39,2197,2251)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,0):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t5 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:94+26
    $t5 := 0;
    assume $IsValid'u64'($t5);

    // $t6 := opaque begin: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:72+49

    // assume WellFormed($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:72+49
    assume $IsValid'u64'($t6);

    // assume Eq<u64>($t6, 5) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:72+49
    assume $IsEqual'u64'($t6, 5);

    // $t6 := opaque end: Errors::not_published($t5) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:72+49

    // trace_local[tmp#$2]($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:9+113
    assume {:print "$track_local(5,0,2):", $t6} $t6 == $t6;

    // trace_local[tmp#$1]($t3) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:9+113
    assume {:print "$track_local(5,0,1):", $t3} $t3 == $t3;

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:9+113
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:9+113
L1:

    // trace_abort($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:9+113
    assume {:print "$at(39,2190,2303)"} true;
    assume {:print "$track_abort(5,0):", $t6} $t6 == $t6;

    // $t4 := move($t6) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:9+113
    $t4 := $t6;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:55:9+113
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:56:50+23
    assume {:print "$at(39,2354,2377)"} true;
L0:

    // $t7 := get_global<ValidatorOperatorConfig::ValidatorOperatorConfig>($t0) on_abort goto L3 with $t4 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:56:11+13
    if (!$ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t0)) {
        call $ExecFailureAbort();
    } else {
        $t7 := $ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t0);
    }
    if ($abort_flag) {
        assume {:print "$at(39,2315,2328)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(5,0):", $t4} $t4 == $t4;
        goto L3;
    }

    // $t8 := get_field<ValidatorOperatorConfig::ValidatorOperatorConfig>.human_name($t7) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:56:10+75
    $t8 := $human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig($t7);

    // trace_return[0]($t8) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:56:9+76
    assume {:print "$track_return(5,0,0):", $t8} $t8 == $t8;

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:57:5+1
    assume {:print "$at(39,2394,2395)"} true;
L2:

    // assert Not(Not(ValidatorOperatorConfig::$has_validator_operator_config[@120]($t0))) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:60:9+93
    assume {:print "$at(39,2453,2546)"} true;
    assert {:msg "assert_failed(39,2453,2546): function does not abort under this condition"}
      !!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#120, $t0);

    // assert Eq<vector<u8>>($t8, ValidatorOperatorConfig::$get_human_name($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:61:9+58
    assume {:print "$at(39,2555,2613)"} true;
    assert {:msg "assert_failed(39,2555,2613): post-condition does not hold"}
      $IsEqual'vec'u8''($t8, $1_ValidatorOperatorConfig_$get_human_name($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t0));

    // return $t8 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:61:9+58
    $ret0 := $t8;
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:57:5+1
    assume {:print "$at(39,2394,2395)"} true;
L3:

    // assert Not(ValidatorOperatorConfig::$has_validator_operator_config[@120]($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:58:5+219
    assume {:print "$at(39,2400,2619)"} true;
    assert {:msg "assert_failed(39,2400,2619): abort not covered by any of the `aborts_if` clauses"}
      !$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#120, $t0);

    // assert And(Not(ValidatorOperatorConfig::$has_validator_operator_config[@120]($t0)), Eq(5, $t4)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:58:5+219
    assert {:msg "assert_failed(39,2400,2619): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      (!$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#120, $t0) && $IsEqual'num'(5, $t4));

    // abort($t4) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:58:5+219
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun ValidatorOperatorConfig::has_validator_operator_config [baseline] at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:63:5+153
procedure {:inline 1} $1_ValidatorOperatorConfig_has_validator_operator_config(_$t0: int) returns ($ret0: bool)
{
    // declare local variables
    var $t1: bool;
    var $t0: int;
    var $temp_0'address': int;
    var $temp_0'bool': bool;
    $t0 := _$t0;

    // bytecode translation starts here
    // trace_local[validator_operator_addr]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:63:5+1
    assume {:print "$at(39,2624,2625)"} true;
    assume {:print "$track_local(5,1,0):", $t0} $t0 == $t0;

    // $t1 := exists<ValidatorOperatorConfig::ValidatorOperatorConfig>($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:64:9+6
    assume {:print "$at(39,2715,2721)"} true;
    $t1 := $ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:64:9+56
    assume {:print "$track_return(5,1,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:65:5+1
    assume {:print "$at(39,2776,2777)"} true;
L1:

    // return $t1 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:65:5+1
    $ret0 := $t1;
    return;

}

// fun ValidatorOperatorConfig::has_validator_operator_config [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:63:5+153
procedure {:timeLimit 40} $1_ValidatorOperatorConfig_has_validator_operator_config$verify(_$t0: int) returns ($ret0: bool)
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
    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:63:5+153
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume {:print "$at(39,2624,2777)"} true;
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:67:17+6
    assume {:print "$at(39,2835,2841)"} true;
    assume $IsValid'address'($t0);

    // assume forall $rsc: ResourceDomain<ValidatorOperatorConfig::ValidatorOperatorConfig>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:67:17+6
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0);
    ($IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'($rsc))));

    // trace_local[validator_operator_addr]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:63:5+1
    assume {:print "$at(39,2624,2625)"} true;
    assume {:print "$track_local(5,1,0):", $t0} $t0 == $t0;

    // $t1 := exists<ValidatorOperatorConfig::ValidatorOperatorConfig>($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:64:9+6
    assume {:print "$at(39,2715,2721)"} true;
    $t1 := $ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t0);

    // trace_return[0]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:64:9+56
    assume {:print "$track_return(5,1,0):", $t1} $t1 == $t1;

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:65:5+1
    assume {:print "$at(39,2776,2777)"} true;
L1:

    // assert Eq<bool>($t1, ValidatorOperatorConfig::$has_validator_operator_config($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:67:9+73
    assume {:print "$at(39,2827,2900)"} true;
    assert {:msg "assert_failed(39,2827,2900): post-condition does not hold"}
      $IsEqual'bool'($t1, $1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $t0));

    // return $t1 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:67:9+73
    $ret0 := $t1;
    return;

}

// fun ValidatorOperatorConfig::publish [verification] at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
procedure {:timeLimit 40} $1_ValidatorOperatorConfig_publish$verify(_$t0: $signer, _$t1: $signer, _$t2: Vec (int)) returns ()
{
    // declare local variables
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: bool;
    var $t11: int;
    var $t12: int;
    var $t13: bool;
    var $t14: int;
    var $t15: bool;
    var $t16: int;
    var $t17: bool;
    var $t18: bool;
    var $t19: int;
    var $t20: int;
    var $t21: $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
    var $t0: $signer;
    var $t1: $signer;
    var $t2: Vec (int);
    var $temp_0'bool': bool;
    var $temp_0'signer': $signer;
    var $temp_0'u64': int;
    var $temp_0'vec'u8'': Vec (int);
    var $1_Roles_RoleId_$memory#122: $Memory $1_Roles_RoleId;
    var $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#123: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
    var $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#124: $Memory $1_DiemTimestamp_CurrentTimeMicroseconds;
    var $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#129: $Memory $1_ValidatorOperatorConfig_ValidatorOperatorConfig;
    $t0 := _$t0;
    $t1 := _$t1;
    $t2 := _$t2;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume Implies(DiemTimestamp::$is_operating(), exists<DiemTimestamp::CurrentTimeMicroseconds>(a550c18)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:182:9+72
    assume {:print "$at(39,524,1121)"} true;
    assume ($1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) ==> $ResourceExists($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, 173345816));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Eq<address>(addr, a550c18) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:432:9+91
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 173345816)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Eq<address>(addr, b1e55ed) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:438:9+121
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($IsEqual'address'(addr, 186537453)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_diem_root_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:446:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_diem_root_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_treasury_compliance_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:450:9+129
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_treasury_compliance_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:454:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_validator_operator_role_addr(addr): Not(Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:458:9+128
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr))  ==> (!$1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_designated_dealer_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:462:9+126
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_parent_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:466:9+120
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where Roles::spec_has_child_VASP_role_addr(addr): Roles::spec_can_hold_balance_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/Roles.move:470:9+119
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_Roles_spec_has_child_VASP_role_addr($1_Roles_RoleId_$memory, addr))  ==> ($1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:337:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$exists_config(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:342:9+112
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$exists_config($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr: TypeDomain<address>() where ValidatorConfig::$is_valid(addr): Roles::spec_has_validator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorConfig.move:349:9+107
    assume (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorConfig_$is_valid($1_ValidatorConfig_ValidatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assume forall addr1: TypeDomain<address>(): Implies(DualAttestation::spec_has_credential(addr1), Or(Roles::spec_has_parent_VASP_role_addr(addr1), Roles::spec_has_designated_dealer_role_addr(addr1))) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:564:9+209
    assume (forall addr1: int :: $IsValid'address'(addr1) ==> (($1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory, addr1) ==> ($1_Roles_spec_has_parent_VASP_role_addr($1_Roles_RoleId_$memory, addr1) || $1_Roles_spec_has_designated_dealer_role_addr($1_Roles_RoleId_$memory, addr1)))));

    // assume forall addr: TypeDomain<address>(): Implies(Or(exists<DiemAccount::Balance<XUS::XUS>>(addr), exists<DiemAccount::Balance<XDX::XDX>>(addr)), Roles::spec_can_hold_balance_addr(addr)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // global invariant at /home/ying/diem/language/diem-framework/modules/DiemAccount.move:2411:9+147
    assume (forall addr: int :: $IsValid'address'(addr) ==> ((($ResourceExists($1_DiemAccount_Balance'$1_XUS_XUS'_$memory, addr) || $ResourceExists($1_DiemAccount_Balance'$1_XDX_XDX'_$memory, addr)) ==> $1_Roles_spec_can_hold_balance_addr($1_Roles_RoleId_$memory, addr))));

    // assume WellFormed($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    assume $IsValid'signer'($t0) && $1_Signer_is_txn_signer($t0) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    assume $IsValid'signer'($t1) && $1_Signer_is_txn_signer($t1) && $1_Signer_is_txn_signer_addr($1_Signer_spec_address_of($t1));

    // assume WellFormed($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    assume $IsValid'vec'u8''($t2);

    // assume forall $rsc: ResourceDomain<DiemTimestamp::CurrentTimeMicroseconds>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    assume (forall $a_0: int :: {$ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0)}(var $rsc := $ResourceValue($1_DiemTimestamp_CurrentTimeMicroseconds_$memory, $a_0);
    ($IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'($rsc))));

    // assume forall $rsc: ResourceDomain<Roles::RoleId>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    assume (forall $a_0: int :: {$ResourceValue($1_Roles_RoleId_$memory, $a_0)}(var $rsc := $ResourceValue($1_Roles_RoleId_$memory, $a_0);
    ($IsValid'$1_Roles_RoleId'($rsc))));

    // assume forall $rsc: ResourceDomain<ValidatorOperatorConfig::ValidatorOperatorConfig>(): WellFormed($rsc) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    assume (forall $a_0: int :: {$ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0)}(var $rsc := $ResourceValue($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $a_0);
    ($IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'($rsc))));

    // assume Identical($t5, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t5 == $1_Signer_spec_address_of($t1));

    // assume Identical($t6, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:598:9+44
    assume {:print "$at(28,26510,26554)"} true;
    assume ($t6 == $1_Signer_spec_address_of($t0));

    // assume Identical($t7, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:44:9+82
    assume {:print "$at(39,1550,1632)"} true;
    assume ($t7 == $1_Signer_spec_address_of($t0));

    // assume Identical($t8, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t8 == $1_Signer_spec_address_of($t1));

    // assume Identical($t9, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:598:9+44
    assume {:print "$at(28,26510,26554)"} true;
    assume ($t9 == $1_Signer_spec_address_of($t0));

    // @124 := save_mem(DiemTimestamp::CurrentTimeMicroseconds) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+1
    assume {:print "$at(39,524,525)"} true;
    $1_DiemTimestamp_CurrentTimeMicroseconds_$memory#124 := $1_DiemTimestamp_CurrentTimeMicroseconds_$memory;

    // @122 := save_mem(Roles::RoleId) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+1
    $1_Roles_RoleId_$memory#122 := $1_Roles_RoleId_$memory;

    // @123 := save_mem(ValidatorOperatorConfig::ValidatorOperatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+1
    $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#123 := $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory;

    // trace_local[validator_operator_account]($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+1
    assume {:print "$track_local(5,2,0):", $t0} $t0 == $t0;

    // trace_local[dr_account]($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+1
    assume {:print "$track_local(5,2,1):", $t1} $t1 == $t1;

    // trace_local[human_name]($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+1
    assume {:print "$track_local(5,2,2):", $t2} $t2 == $t2;

    // opaque begin: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:22:9+33
    assume {:print "$at(39,674,707)"} true;

    // assume Identical($t10, Not(DiemTimestamp::$is_operating())) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:22:9+33
    assume ($t10 == !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory));

    // if ($t10) goto L5 else goto L4 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:22:9+33
    if ($t10) { goto L5; } else { goto L4; }

    // label L5 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:22:9+33
L5:

    // assume And(Not(DiemTimestamp::$is_operating()), Eq(1, $t11)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:22:9+33
    assume (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory) && $IsEqual'num'(1, $t11));

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:22:9+33
    assume {:print "$at(39,674,707)"} true;
    assume {:print "$track_abort(5,2):", $t11} $t11 == $t11;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:22:9+33
    goto L3;

    // label L4 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:22:9+33
L4:

    // opaque end: DiemTimestamp::assert_operating() at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:22:9+33

    // assume Identical($t12, Signer::spec_address_of($t1)) at /home/ying/diem/language/diem-framework/modules/Roles.move:537:9+44
    assume {:print "$at(28,23915,23959)"} true;
    assume ($t12 == $1_Signer_spec_address_of($t1));

    // opaque begin: Roles::assert_diem_root($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:23:9+35
    assume {:print "$at(39,717,752)"} true;

    // assume Identical($t13, Or(Or(Or(Neq<address>(Signer::spec_address_of($t1), a550c18), Not(exists<Roles::RoleId>($t12))), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t12)), 0)), Neq<address>(Signer::spec_address_of($t1), a550c18))) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:23:9+35
    assume ($t13 == (((!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816) || !$ResourceExists($1_Roles_RoleId_$memory, $t12)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t12)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816)));

    // if ($t13) goto L7 else goto L6 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:23:9+35
    if ($t13) { goto L7; } else { goto L6; }

    // label L7 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:23:9+35
L7:

    // assume Or(Or(Or(And(Neq<address>(Signer::spec_address_of($t1), a550c18), Eq(2, $t11)), And(Not(exists<Roles::RoleId>($t12)), Eq(5, $t11))), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t12)), 0), Eq(3, $t11))), And(Neq<address>(Signer::spec_address_of($t1), a550c18), Eq(2, $t11))) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:23:9+35
    assume ((((!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816) && $IsEqual'num'(2, $t11)) || (!$ResourceExists($1_Roles_RoleId_$memory, $t12) && $IsEqual'num'(5, $t11))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t12)), 0) && $IsEqual'num'(3, $t11))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816) && $IsEqual'num'(2, $t11)));

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:23:9+35
    assume {:print "$at(39,717,752)"} true;
    assume {:print "$track_abort(5,2):", $t11} $t11 == $t11;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:23:9+35
    goto L3;

    // label L6 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:23:9+35
L6:

    // opaque end: Roles::assert_diem_root($t1) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:23:9+35

    // assume Identical($t14, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:598:9+44
    assume {:print "$at(28,26510,26554)"} true;
    assume ($t14 == $1_Signer_spec_address_of($t0));

    // opaque begin: Roles::assert_validator_operator($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:24:9+60
    assume {:print "$at(39,762,822)"} true;

    // assume Identical($t15, Or(Not(exists<Roles::RoleId>($t14)), Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 4))) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:24:9+60
    assume ($t15 == (!$ResourceExists($1_Roles_RoleId_$memory, $t14) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 4)));

    // if ($t15) goto L9 else goto L8 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:24:9+60
    if ($t15) { goto L9; } else { goto L8; }

    // label L9 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:24:9+60
L9:

    // assume Or(And(Not(exists<Roles::RoleId>($t14)), Eq(5, $t11)), And(Neq<u64>(select Roles::RoleId.role_id(global<Roles::RoleId>($t14)), 4), Eq(3, $t11))) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:24:9+60
    assume ((!$ResourceExists($1_Roles_RoleId_$memory, $t14) && $IsEqual'num'(5, $t11)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory, $t14)), 4) && $IsEqual'num'(3, $t11)));

    // trace_abort($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:24:9+60
    assume {:print "$at(39,762,822)"} true;
    assume {:print "$track_abort(5,2):", $t11} $t11 == $t11;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:24:9+60
    goto L3;

    // label L8 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:24:9+60
L8:

    // opaque end: Roles::assert_validator_operator($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:24:9+60

    // $t16 := opaque begin: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:26:44+46
    assume {:print "$at(39,883,929)"} true;

    // assume WellFormed($t16) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:26:44+46
    assume $IsValid'address'($t16);

    // assume Eq<address>($t16, Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:26:44+46
    assume $IsEqual'address'($t16, $1_Signer_spec_address_of($t0));

    // $t16 := opaque end: Signer::address_of($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:26:44+46

    // $t17 := ValidatorOperatorConfig::has_validator_operator_config($t16) on_abort goto L3 with $t11 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:26:14+77
    call $t17 := $1_ValidatorOperatorConfig_has_validator_operator_config($t16);
    if ($abort_flag) {
        assume {:print "$at(39,853,930)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(5,2):", $t11} $t11 == $t11;
        goto L3;
    }

    // $t18 := !($t17) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:26:13+1
    call $t18 := $Not($t17);

    // $t19 := 0 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:27:39+26
    assume {:print "$at(39,970,996)"} true;
    $t19 := 0;
    assume $IsValid'u64'($t19);

    // $t20 := opaque begin: Errors::already_published($t19) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:27:13+53

    // assume WellFormed($t20) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:27:13+53
    assume $IsValid'u64'($t20);

    // assume Eq<u64>($t20, 6) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:27:13+53
    assume $IsEqual'u64'($t20, 6);

    // $t20 := opaque end: Errors::already_published($t19) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:27:13+53

    // trace_local[tmp#$4]($t20) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:25:9+175
    assume {:print "$at(39,832,1007)"} true;
    assume {:print "$track_local(5,2,4):", $t20} $t20 == $t20;

    // trace_local[tmp#$3]($t18) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:25:9+175
    assume {:print "$track_local(5,2,3):", $t18} $t18 == $t18;

    // if ($t18) goto L0 else goto L1 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:25:9+175
    if ($t18) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:25:9+175
L1:

    // destroy($t0) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:25:9+175

    // trace_abort($t20) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:25:9+175
    assume {:print "$at(39,832,1007)"} true;
    assume {:print "$track_abort(5,2):", $t20} $t20 == $t20;

    // $t11 := move($t20) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:25:9+175
    $t11 := $t20;

    // goto L3 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:25:9+175
    goto L3;

    // label L0 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:30:17+26
    assume {:print "$at(39,1026,1052)"} true;
L0:

    // $t21 := pack ValidatorOperatorConfig::ValidatorOperatorConfig($t2) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:30:45+59
    $t21 := $1_ValidatorOperatorConfig_ValidatorOperatorConfig($t2);

    // @129 := save_mem(ValidatorOperatorConfig::ValidatorOperatorConfig) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:17:5+597
    // state save for global update invariants
    assume {:print "$at(39,524,1121)"} true;
    $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#129 := $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory;

    // move_to<ValidatorOperatorConfig::ValidatorOperatorConfig>($t21, $t0) on_abort goto L3 with $t11 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:30:9+7
    assume {:print "$at(39,1018,1025)"} true;
    if ($ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $1_Signer_spec_address_of($t0))) {
        call $ExecFailureAbort();
    } else {
        $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory := $ResourceUpdate($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $1_Signer_spec_address_of($t0), $t21);
    }
    if ($abort_flag) {
        assume {:print "$at(39,1018,1025)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(5,2):", $t11} $t11 == $t11;
        goto L3;
    }

    // assert forall addr: TypeDomain<address>() where ValidatorOperatorConfig::$has_validator_operator_config(addr): Roles::spec_has_validator_operator_role_addr(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:76:9+137
    assume {:print "$at(39,3154,3291)"} true;
    assert {:msg "assert_failed(39,3154,3291): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr))  ==> ($1_Roles_spec_has_validator_operator_role_addr($1_Roles_RoleId_$memory, addr)));

    // assert forall addr: TypeDomain<address>() where exists[@129]<ValidatorOperatorConfig::ValidatorOperatorConfig>(addr): exists<ValidatorOperatorConfig::ValidatorOperatorConfig>(addr) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:82:9+138
    // global invariant at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:82:9+138
    assume {:print "$at(39,3347,3485)"} true;
    assert {:msg "assert_failed(39,3347,3485): global memory invariant does not hold"}
      (forall addr: int :: $IsValid'address'(addr) ==> ($ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#129, addr))  ==> ($ResourceExists($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, addr)));

    // label L2 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:33:5+1
    assume {:print "$at(39,1120,1121)"} true;
L2:

    // assert Not(Not(exists[@122]<Roles::RoleId>($t5))) at /home/ying/diem/language/diem-framework/modules/Roles.move:538:9+59
    assume {:print "$at(28,23968,24027)"} true;
    assert {:msg "assert_failed(28,23968,24027): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#122, $t5);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t5)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:539:9+87
    assume {:print "$at(28,24036,24123)"} true;
    assert {:msg "assert_failed(28,24036,24123): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t5)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t1), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:9+86
    assume {:print "$at(9,1379,1465)"} true;
    assert {:msg "assert_failed(9,1379,1465): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816);

    // assert Not(Not(exists[@122]<Roles::RoleId>($t6))) at /home/ying/diem/language/diem-framework/modules/Roles.move:600:9+59
    assume {:print "$at(28,26607,26666)"} true;
    assert {:msg "assert_failed(28,26607,26666): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#122, $t6);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t6)), 4)) at /home/ying/diem/language/diem-framework/modules/Roles.move:601:9+108
    assume {:print "$at(28,26675,26783)"} true;
    assert {:msg "assert_failed(28,26675,26783): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t6)), 4);

    // assert Not(ValidatorOperatorConfig::$has_validator_operator_config[@123]($t7)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:48:9+108
    assume {:print "$at(39,1849,1957)"} true;
    assert {:msg "assert_failed(39,1849,1957): function does not abort under this condition"}
      !$1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#123, $t7);

    // assert Not(Not(DiemTimestamp::$is_operating[@124]())) at /home/ying/diem/language/diem-framework/modules/DiemTimestamp.move:173:9+53
    assume {:print "$at(18,7043,7096)"} true;
    assert {:msg "assert_failed(18,7043,7096): function does not abort under this condition"}
      !!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#124);

    // assert Not(Not(exists[@122]<Roles::RoleId>($t8))) at /home/ying/diem/language/diem-framework/modules/Roles.move:538:9+59
    assume {:print "$at(28,23968,24027)"} true;
    assert {:msg "assert_failed(28,23968,24027): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#122, $t8);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t8)), 0)) at /home/ying/diem/language/diem-framework/modules/Roles.move:539:9+87
    assume {:print "$at(28,24036,24123)"} true;
    assert {:msg "assert_failed(28,24036,24123): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t8)), 0);

    // assert Not(Neq<address>(Signer::spec_address_of[]($t1), a550c18)) at /home/ying/diem/language/diem-framework/modules/CoreAddresses.move:31:9+86
    assume {:print "$at(9,1379,1465)"} true;
    assert {:msg "assert_failed(9,1379,1465): function does not abort under this condition"}
      !!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816);

    // assert Not(Not(exists[@122]<Roles::RoleId>($t9))) at /home/ying/diem/language/diem-framework/modules/Roles.move:600:9+59
    assume {:print "$at(28,26607,26666)"} true;
    assert {:msg "assert_failed(28,26607,26666): function does not abort under this condition"}
      !!$ResourceExists($1_Roles_RoleId_$memory#122, $t9);

    // assert Not(Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t9)), 4)) at /home/ying/diem/language/diem-framework/modules/Roles.move:601:9+108
    assume {:print "$at(28,26675,26783)"} true;
    assert {:msg "assert_failed(28,26675,26783): function does not abort under this condition"}
      !!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t9)), 4);

    // assert ValidatorOperatorConfig::$has_validator_operator_config(Signer::spec_address_of($t0)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:38:9+91
    assume {:print "$at(39,1337,1428)"} true;
    assert {:msg "assert_failed(39,1337,1428): post-condition does not hold"}
      $1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory, $1_Signer_spec_address_of($t0));

    // return () at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:38:9+91
    return;

    // label L3 at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:33:5+1
    assume {:print "$at(39,1120,1121)"} true;
L3:

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Not(exists[@122]<Roles::RoleId>($t5)), Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t5)), 0)), Neq<address>(Signer::spec_address_of[]($t1), a550c18)), Not(exists[@122]<Roles::RoleId>($t6))), Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t6)), 4)), ValidatorOperatorConfig::$has_validator_operator_config[@123]($t7)), Not(DiemTimestamp::$is_operating[@124]())), Not(exists[@122]<Roles::RoleId>($t8))), Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t8)), 0)), Neq<address>(Signer::spec_address_of[]($t1), a550c18)), Not(exists[@122]<Roles::RoleId>($t9))), Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t9)), 4)) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:34:5+308
    assume {:print "$at(39,1126,1434)"} true;
    assert {:msg "assert_failed(39,1126,1434): abort not covered by any of the `aborts_if` clauses"}
      (((((((((((!$ResourceExists($1_Roles_RoleId_$memory#122, $t5) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t5)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816)) || !$ResourceExists($1_Roles_RoleId_$memory#122, $t6)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t6)), 4)) || $1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#123, $t7)) || !$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#124)) || !$ResourceExists($1_Roles_RoleId_$memory#122, $t8)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t8)), 0)) || !$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816)) || !$ResourceExists($1_Roles_RoleId_$memory#122, $t9)) || !$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t9)), 4));

    // assert Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(Or(And(Not(exists[@122]<Roles::RoleId>($t5)), Eq(5, $t11)), And(Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t5)), 0), Eq(3, $t11))), And(Neq<address>(Signer::spec_address_of[]($t1), a550c18), Eq(2, $t11))), And(Not(exists[@122]<Roles::RoleId>($t6)), Eq(5, $t11))), And(Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t6)), 4), Eq(3, $t11))), And(ValidatorOperatorConfig::$has_validator_operator_config[@123]($t7), Eq(6, $t11))), And(Not(DiemTimestamp::$is_operating[@124]()), Eq(1, $t11))), And(Not(exists[@122]<Roles::RoleId>($t8)), Eq(5, $t11))), And(Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t8)), 0), Eq(3, $t11))), And(Neq<address>(Signer::spec_address_of[]($t1), a550c18), Eq(2, $t11))), And(Not(exists[@122]<Roles::RoleId>($t9)), Eq(5, $t11))), And(Neq<u64>(select Roles::RoleId.role_id(global[@122]<Roles::RoleId>($t9)), 4), Eq(3, $t11))) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:34:5+308
    assert {:msg "assert_failed(39,1126,1434): abort code not covered by any of the `aborts_if` or `aborts_with` clauses"}
      ((((((((((((!$ResourceExists($1_Roles_RoleId_$memory#122, $t5) && $IsEqual'num'(5, $t11)) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t5)), 0) && $IsEqual'num'(3, $t11))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816) && $IsEqual'num'(2, $t11))) || (!$ResourceExists($1_Roles_RoleId_$memory#122, $t6) && $IsEqual'num'(5, $t11))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t6)), 4) && $IsEqual'num'(3, $t11))) || ($1_ValidatorOperatorConfig_$has_validator_operator_config($1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory#123, $t7) && $IsEqual'num'(6, $t11))) || (!$1_DiemTimestamp_$is_operating($1_DiemTimestamp_CurrentTimeMicroseconds_$memory#124) && $IsEqual'num'(1, $t11))) || (!$ResourceExists($1_Roles_RoleId_$memory#122, $t8) && $IsEqual'num'(5, $t11))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t8)), 0) && $IsEqual'num'(3, $t11))) || (!$IsEqual'address'($1_Signer_spec_address_of($t1), 173345816) && $IsEqual'num'(2, $t11))) || (!$ResourceExists($1_Roles_RoleId_$memory#122, $t9) && $IsEqual'num'(5, $t11))) || (!$IsEqual'u64'($role_id#$1_Roles_RoleId($ResourceValue($1_Roles_RoleId_$memory#122, $t9)), 4) && $IsEqual'num'(3, $t11)));

    // abort($t11) at /home/ying/diem/language/diem-framework/modules/ValidatorOperatorConfig.move:34:5+308
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

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

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:121:10+85
function {:inline} $1_DualAttestation_spec_has_credential($1_DualAttestation_Credential_$memory: $Memory $1_DualAttestation_Credential, addr: int): bool {
    $ResourceExists($1_DualAttestation_Credential_$memory, addr)
}

// spec fun at /home/ying/diem/language/diem-framework/modules/DualAttestation.move:550:9+104
function {:inline} $1_DualAttestation_spec_get_cur_microdiem_limit($1_DualAttestation_Limit_$memory: $Memory $1_DualAttestation_Limit): int {
    $micro_xdx_limit#$1_DualAttestation_Limit($ResourceValue($1_DualAttestation_Limit_$memory, 173345816))
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
