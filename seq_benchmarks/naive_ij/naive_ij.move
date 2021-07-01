// separate_baseline: cvc4
// The separate baseline is legit and caused by a different choice in the generated model.
module 0x42::TestNaiveSort {
	use 0x1::Vector;
	
	public fun verify_sort(v: &mut vector<u64>) {
		let vlen = Vector::length(v);
		spec {
			assume len(v) == 2;
		};
		if (vlen <= 1) return ();

		let i = 0;
		let j = 1;
		// for i = 0 to vlen - 1:
		//   for j = i + 1 to vlen:
        while 
		({
			spec {
				assert i < j;
				assert len(v) == vlen;
				assert i < vlen;
				assert j <= vlen;
				assert forall k in 0..i-1: v[k] <= v[k + 1];
				assert forall k in i+1..j: v[i] <= v[k];
			};
			(j < vlen)
		}) 
		{
			if (*Vector::borrow(v, i) > *Vector::borrow(v, j)) {
				Vector::swap(v, i, j);
			};

			if (j + 1 < vlen) {
				j = j + 1;
			} else {
				i = i + 1;
				j = i + 1;
			}
		};
		spec {
			assert len(v) == vlen;
			assert i == vlen - 1;
			assert j == vlen;
			assert v[vlen - 2] <= v[vlen - 1];
		};
	}
	spec verify_sort {
		aborts_if false;
		ensures len(v) > 0;
		ensures forall i in 0..len(v)-1: v[i] <= v[i+1];
	}
}

