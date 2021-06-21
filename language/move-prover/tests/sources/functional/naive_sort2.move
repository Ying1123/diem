// separate_baseline: cvc4
// The separate baseline is legit and caused by a different choice in the generated model.
module 0x42::TestNaiveSort {
	use 0x1::Vector;
	
	public fun verify_sort(v: &mut vector<u64>): vector<u64> {
		let vlen = Vector::length(v);
		spec {
			assume len(v) == 2;
		};
		let p = &mut Vector::empty<u64>();
		let i = 0;
		while ({
			spec {
				assert len(p) == i;
				assert forall k in 0..len(p): p[k] == k;
			};
			(i < vlen)
		}) {
			Vector::push_back(p, i);
			i = i + 1;
		};
		if (vlen <= 1) return *p;

		let i = 0;
		let j = 1;
        while ({
			spec {
				assert i < j;
				assert len(v) == vlen;
				assert forall k in 0..i-1: v[k] <= v[k + 1];
				assert forall k in i+1..j: v[i] <= v[k];
		        assert forall k in 0..len(v): v[k] == old(v)[p[k]];
				// p is a permutation
				assert forall k in 0..vlen: 0 <= p[k] && p[k] < vlen;
				assert forall k in 0..vlen: forall l in 0..vlen: k != l ==> p[k] != p[l];
			};
			(j < vlen)
		}) {
			if (*Vector::borrow(v, i) > *Vector::borrow(v, j)) {
				Vector::swap(p, i, j);
				Vector::swap(v, i, j);
			};
			if (j + 1 < vlen) {
				j = j + 1;
			} else {
				i = i + 1;
				j = i + 1;
			};
			};
		*p
	}
	spec verify_sort {
		aborts_if false;
		ensures forall i in 0..len(v)-1: v[i] <= v[i+1];
		ensures forall k in 0..len(v): v[k] == old(v)[result[k]];
        // result is a permutation
		ensures forall i in 0..len(v): 0 <= result[i] && result[i] < len(result);
		ensures forall i in 0..len(v): forall j in 0..len(result): i != j ==> result[i] != result[j];
	}
}

