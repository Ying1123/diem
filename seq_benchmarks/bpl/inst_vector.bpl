/// sequences
type {:builtin "Seq"} Vec _;
function {:builtin "seq.empty"} Vec_Empty<T>(): Vec T;

function {:builtin "seq.len"} Vec_Len<T>(a: Vec T): int;

function {:builtin "seq.++"} Vec_Concat<T>(a: Vec T, b: Vec T): Vec T;
function {:builtin "seq.unit"} Vec_Unit<T>(v: T): Vec T;
function {:builtin "seq.nth"} Vec_Nth<T>(a: Vec T, i: int): T;

function {:builtin "seq.extract"} Vec_Extract<T>(a: Vec T, pos: int, length: int): Vec T;

function {:inline} Vec_Append<T>(v: Vec T, x: T) : Vec T
{
  Vec_Concat(v, Vec_Unit(x))
}

function {:builtin "seq.update"} Vec_Update<T>(v: Vec T, i: int, x: Vec T) : Vec T;


function {:inline} Vec_Slice<T>(v: Vec T, i: int, j: int): Vec T {
  Vec_Extract(v, i, j - i)
}

function {:inline} Vec_Swap<T>(v: Vec T, i: int, j: int): Vec T {
    Vec_Update(Vec_Update(v, j, Vec_Extract(v, i, 1)), i, Vec_Extract(v, j, 1))
}

function {:inline} Vec_Remove<T>(v: Vec T): Vec T {
  Vec_Extract(v, 0, Vec_Len(v) - 1)
}

type Element = int;

// procedures Ex0 to Ex9 are exercises to ramp up to the "real" vector procedures
procedure Ex0(A: Vec Element, i: int)
requires 0 <= i && i < Vec_Len(A);
{
    assert Vec_Concat(Vec_Slice(A, 0, i), Vec_Slice(A, i, Vec_Len(A))) == A;
}

procedure Ex1(A: Vec Element, i: int)
requires 0 <= i && i < Vec_Len(A) - 1;
requires Vec_Nth(A, i) == Vec_Nth(A, i + 1);
{
    assert
    Vec_Concat(Vec_Slice(A, 0, i + 1), Vec_Slice(A, i + 2, Vec_Len(A)))
    ==
    Vec_Concat(Vec_Slice(A, 0, i), Vec_Slice(A, i + 1, Vec_Len(A)));

    assert Vec_Swap(A, i, i+1) == A;
}

procedure Ex2(A: Vec Element, i: int, j: int)
requires 0 <= i && i < Vec_Len(A);
requires 0 <= j && j < Vec_Len(A);
requires Vec_Nth(A, i) == Vec_Nth(A, j);
{
    assert Vec_Swap(A, i, j) == A;
}

procedure Ex3(A: Vec Element, i: int, j: int)
requires 0 <= i && i < Vec_Len(A);
requires 0 <= j && j < Vec_Len(A);
{
    assert
    Vec_Concat(Vec_Slice(A, 0, i), Vec_Slice(A, i, Vec_Len(A)))
    ==
    Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j, Vec_Len(A)));
}

procedure Ex4(A: Vec Element, B: Vec Element, i: int, e: Element)
requires 0 <= i && i < Vec_Len(A);
requires Vec_Concat(Vec_Slice(A, 0, i), Vec_Slice(A, i + 1, Vec_Len(A))) == B;
{
    var A', B': Vec Element;

    A' := Vec_Append(A, e);
    B' := Vec_Append(B, e);

    assert Vec_Concat(Vec_Slice(A', 0, i), Vec_Slice(A', i + 1, Vec_Len(A'))) == B';
}

procedure Ex5(A: Vec Element, B: Vec Element, i: int, e: Element)
requires 0 <= i && i < Vec_Len(A);
requires Vec_Len(B) > 0;
requires Vec_Nth(A, i) == Vec_Nth(B, Vec_Len(B) - 1);
requires Vec_Concat(Vec_Slice(A, 0, i), Vec_Slice(A, i + 1, Vec_Len(A))) == Vec_Slice(B, 0, Vec_Len(B) - 1);
{
    var A', B': Vec Element;

    A' := Vec_Append(A, e);
    B' := Vec_Swap(Vec_Append(B, e), Vec_Len(B) - 1, Vec_Len(B));

    assert Vec_Concat(Vec_Slice(A', 0, i), Vec_Slice(A', i + 1, Vec_Len(A'))) == Vec_Slice(B', 0, Vec_Len(B') - 1);
}

procedure Ex5a(A: Vec Element, B: Vec Element, i: int, e: Element)
requires 0 <= i && i < Vec_Len(A);
requires Vec_Len(B) > 0;
requires Vec_Nth(A, i) == Vec_Nth(B, Vec_Len(B) - 1);
requires Vec_Concat(Vec_Slice(A, 0, i), Vec_Slice(A, i + 1, Vec_Len(A))) == Vec_Slice(B, 0, Vec_Len(B) - 1);
{
    var A', B': Vec Element;

    A' := Vec_Append(A, e);
    B' := Vec_Swap(Vec_Append(B, e), Vec_Len(B) - 1, Vec_Len(B));

    assert (forall x: int :: {:skolem_add_to_pool "Slice", x}
    Vec_Nth(Vec_Concat(Vec_Slice(A', 0, i), Vec_Slice(A', i + 1, Vec_Len(A'))), x) == Vec_Nth(Vec_Slice(B', 0, Vec_Len(B') - 1), x));
}

procedure Ex6a(A: Vec Element, B: Vec Element, i: int, e: Element)
requires 0 <= i && i < Vec_Len(A);
requires Vec_Len(B) > 0;
requires Vec_Nth(A, i) == Vec_Nth(B, Vec_Len(B) - 1);
requires Vec_Concat(Vec_Slice(A, 0, i), Vec_Slice(A, i + 1, Vec_Len(A))) == Vec_Slice(B, 0, Vec_Len(B) - 1);
{
    var A', B': Vec Element;

    A' := Vec_Append(A, e);
    B' := Vec_Swap(Vec_Append(B, e), Vec_Len(B) - 1, Vec_Len(B));

    assert Vec_Nth(A', i) == Vec_Nth(B', Vec_Len(B') - 1);
}

procedure Ex6b(A: Vec Element, B: Vec Element, i: int, e: Element)
requires 0 <= i && i < Vec_Len(A);
requires Vec_Len(B) > 0;
requires Vec_Nth(A, i) == Vec_Nth(B, Vec_Len(B) - 1);
requires Vec_Concat(Vec_Slice(A, 0, i), Vec_Slice(A, i + 1, Vec_Len(A))) == Vec_Slice(B, 0, Vec_Len(B) - 1);
{
    var A', B': Vec Element;
    var x: int;

    A' := Vec_Append(A, e);
    B' := Vec_Swap(Vec_Append(B, e), Vec_Len(B) - 1, Vec_Len(B));

    assert
    Vec_Concat(Vec_Slice(A', 0, i), Vec_Slice(A', i + 1, Vec_Len(A'))) == Vec_Slice(B', 0, Vec_Len(B') - 1);
}

procedure Ex7a(A: Vec Element, j: int, B: Vec Element, i: int)
requires 0 <= j && j <= i && i < Vec_Len(A) - 1;
requires Vec_Nth(B, i) == Vec_Nth(A, j);
requires Vec_Slice(B, 0, i) == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, i + 1));
requires Vec_Slice(B, i + 1, Vec_Len(B)) == Vec_Slice(A, i + 1, Vec_Len(A));
{
    var B': Vec Element;
    var i': int;

    B' := Vec_Swap(B, i, i + 1);
    i' := i + 1;

    assert Vec_Nth(B', i') == Vec_Nth(A, j);
}

procedure Ex7b(A: Vec Element, j: int, B: Vec Element, i: int)
requires 0 <= j && j <= i && i < Vec_Len(A) - 1;
requires Vec_Nth(B, i) == Vec_Nth(A, j);
requires Vec_Slice(B, 0, i) == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, i + 1));
requires Vec_Slice(B, i + 1, Vec_Len(B)) == Vec_Slice(A, i + 1, Vec_Len(A));
{
    var B': Vec Element;
    var i': int;
    var x: int;

    B' := Vec_Swap(B, i, i + 1);
    i' := i + 1;

    assert Vec_Slice(B', 0, i') == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, i' + 1));
}

procedure Ex7c(A: Vec Element, j: int, B: Vec Element, i: int)
requires 0 <= j && j <= i && i < Vec_Len(A) - 1;
requires Vec_Nth(B, i) == Vec_Nth(A, j);
requires Vec_Slice(B, 0, i) == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, i + 1));
requires Vec_Slice(B, i + 1, Vec_Len(B)) == Vec_Slice(A, i + 1, Vec_Len(A));
{
    var B': Vec Element;
    var i': int;
    var x: int;

    B' := Vec_Swap(B, i, i + 1);
    i' := i + 1;

    assert Vec_Slice(B', i' + 1, Vec_Len(B')) == Vec_Slice(A, i' + 1, Vec_Len(A));
}

procedure Ex8(A: Vec Element, j: int, B: Vec Element, i: int)
returns (B': Vec Element, i': int)
requires 0 <= j && j <= i && i < Vec_Len(A) - 1;
requires i + 1 < Vec_Len(B);
requires Vec_Nth(B, i) == Vec_Nth(A, j);
requires Vec_Slice(B, 0, i) == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, i + 1));
requires Vec_Slice(B, i + 1, Vec_Len(B)) == Vec_Slice(A, i + 1, Vec_Len(A));
requires Vec_Len(A) == Vec_Len(B);
ensures i' == i + 1;
ensures Vec_Len(A) == Vec_Len(B');
ensures Vec_Nth(B', i') == Vec_Nth(A, j);
ensures Vec_Slice(B', 0, i') == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, i' + 1));
ensures Vec_Slice(B', i' + 1, Vec_Len(B')) == Vec_Slice(A, i' + 1, Vec_Len(A));
{
    var x, y: int;

    B' := Vec_Swap(B, i, i + 1);
    i' := i + 1;

    assert Vec_Nth(B', i') == Vec_Nth(A, j);
    assert Vec_Slice(B', 0, i') == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, i' + 1));
    assert Vec_Slice(B', i' + 1, Vec_Len(B')) == Vec_Slice(A, i' + 1, Vec_Len(A));
}

procedure Ex9(A: Vec Element, j: int) returns (B: Vec Element, e: Element)
requires 0 <= j && j < Vec_Len(A);
ensures e == Vec_Nth(A, j);
ensures B == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, Vec_Len(A)));
{
    var i: int;
    var x, y, z: int;

    B := A;
    i := j;
    while (i < Vec_Len(A) - 1)
    invariant Vec_Len(A) == Vec_Len(B);
    invariant j <= i && i <= Vec_Len(A) - 1;
    invariant Vec_Nth(B, i) == Vec_Nth(A, j);
    invariant Vec_Slice(B, 0, i) == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, i + 1));
    invariant Vec_Slice(B, i + 1, Vec_Len(B)) == Vec_Slice(A, i + 1, Vec_Len(A));
    {
        call B, i := Ex8(A, j, B, i);
    }
    e := Vec_Nth(B, Vec_Len(A) - 1);
    B := Vec_Remove(B);
}

// "real" vector procedures start here
procedure remove(A: Vec Element, j: int) returns (B: Vec Element, e: Element)
requires 0 <= j && j < Vec_Len(A);
ensures e == Vec_Nth(A, j);
ensures B == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, Vec_Len(A)));
{
    var i: int;
    var x, y, z: int;

    B := A;
    i := j;
    while (i < Vec_Len(A) - 1)
    invariant j <= i && i <= Vec_Len(A) - 1;
    invariant Vec_Nth(B, i) == Vec_Nth(A, j);
    invariant Vec_Slice(B, 0, i) == Vec_Concat(Vec_Slice(A, 0, j), Vec_Slice(A, j + 1, i + 1));
    invariant Vec_Slice(B, i + 1, Vec_Len(B)) == Vec_Slice(A, i + 1, Vec_Len(A));
    invariant Vec_Len(A) == Vec_Len(B);
    {
        B := Vec_Swap(B, i, i + 1);
        i := i + 1;
    }
    e := Vec_Nth(B, Vec_Len(A) - 1);
    B := Vec_Remove(B);
}

procedure swap_remove(A: Vec Element, j: int) returns (B: Vec Element)
requires 0 <= j && j < Vec_Len(A);
ensures Vec_Slice(B, 0, j) == Vec_Slice(A, 0, j);
ensures Vec_Slice(B, j+1, Vec_Len(B)) == Vec_Slice(A, j+1, Vec_Len(B));
ensures Vec_Len(B) == Vec_Len(A) - 1;
ensures j < Vec_Len(B) ==> Vec_Nth(B, j) == Vec_Nth(A, Vec_Len(A) - 1);
{
    var last_idx: int;

    last_idx := Vec_Len(A) - 1;
    B := Vec_Swap(A, j, last_idx);
    B := Vec_Remove(B);
}

procedure contains(A: Vec Element, e: Element) returns (found: bool)
ensures !found <==> (forall x: int :: 0 <= x && x < Vec_Len(A) ==> Vec_Nth(A, x) != e);
{
    var i: int;
    var len: int;

    found := false;
    i := 0;
    len := Vec_Len(A);
    while (i < len)
    invariant 0 <= i;
    invariant (forall x: int :: 0 <= x && x < i ==> Vec_Nth(A, x) != e);
    {
        if (Vec_Nth(A, i) == e) {
            found := true;
            return;
        }
        i := i + 1;
    }
}

procedure index_of(A: Vec Element, e: Element) returns (found: bool, pos: int)
ensures found ==> Vec_Nth(A, pos) == e;
ensures !found ==> pos == 0 && (forall x: int :: 0 <= x && x < Vec_Len(A) ==> Vec_Nth(A, x) != e);
{
    var i: int;
    var len: int;

    found, pos := false, 0;
    i := 0;
    len := Vec_Len(A);
    while (i < len)
    invariant (forall x: int :: 0 <= x && x < i ==> Vec_Nth(A, x) != e);
    {
        if (Vec_Nth(A, i) == e) {
            found, pos := true, i;
            return;
        }
        i := i + 1;
    }
}

