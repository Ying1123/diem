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

function {:builtin "seq.rev"} Vec_Reverse<T>(v: Vec T) : Vec T;

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

procedure reverse_a(A: Vec Element) returns (B: Vec Element)
ensures Vec_Len(A) == Vec_Len(B);
ensures (forall x: int :: 0 <= x && x < Vec_Len(A) ==> Vec_Nth(A, x) == Vec_Nth(B, Vec_Len(A) - 1 - x));
{
  B := Vec_Reverse(A);
}

procedure reverse(A: Vec Element) returns (B: Vec Element)
ensures Vec_Len(A) == Vec_Len(B);
ensures (forall x: int :: 0 <= x && x < Vec_Len(A) ==> Vec_Nth(A, x) == Vec_Nth(B, Vec_Len(A) - 1 - x));
{
    var len: int;
    var front_index: int;
    var back_index: int;

    B := A;
    len := Vec_Len(A);
    if (len == 0) {
        return;
    }

    front_index := 0;
    back_index := len - 1;
    while (front_index < back_index)
    invariant front_index + back_index == len - 1;
    invariant Vec_Len(A) == Vec_Len(B);
    invariant (forall x: int :: 0 <= x && x < front_index ==> Vec_Nth(A, x) == Vec_Nth(B, Vec_Len(A) - 1 - x));
    invariant (forall x: int :: back_index < x && x < Vec_Len(A) ==> Vec_Nth(A, x) == Vec_Nth(B, Vec_Len(A) - 1 - x));
    invariant (forall x: int :: front_index <= x && x <= back_index ==> Vec_Nth(A, x) == Vec_Nth(B, x));
    {
        B := Vec_Swap(B, front_index, back_index);
        front_index := front_index + 1;
        back_index := back_index - 1;
    }
}

procedure append(A: Vec Element, B: Vec Element) returns (C: Vec Element)
ensures C == Vec_Concat(A, B);
{
    var R: Vec Element;
    var e: Element;
    var y: int;

    C := A;
    call R := reverse(B);
    while (0 < Vec_Len(R))
    invariant (forall {:pool "L"} x: int :: {:skolem_add_to_pool "L", 0, x + 1}
    0 <= x && x < Vec_Len(R) ==> Vec_Nth(B, x + Vec_Len(B) - Vec_Len(R)) == Vec_Nth(R, Vec_Len(R) - 1 - x));
    invariant C == Vec_Concat(A, Vec_Slice(B, 0, Vec_Len(B) - Vec_Len(R)));
    {
        e := Vec_Nth(R, Vec_Len(R) - 1);
        C := Vec_Append(C, e);
        R := Vec_Remove(R);
        assert Vec_Len(C) == Vec_Len(Vec_Concat(A, Vec_Slice(B, 0, Vec_Len(B) - Vec_Len(R))));
    }
}


