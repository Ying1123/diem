// separate_baseline: cvc4
// The separate baseline is legit and caused by a different choice in the generated model.
module 0x42::TestBubbleSort {
	use 0x1::Vector;
	
	public fun verify_sort(v: &mut vector<u64>): vector<u64> {
		let vlen = Vector::length(v);
		spec {
			assume len(v) == 4;
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

		let i = vlen;
		while ({
			spec {
				assert 0 <= i && i <= vlen;
				assert forall k in i..vlen: forall l in 0..k: v[l] <= v[k];
				// p is a permutation
				assert forall k in 0..vlen: 0 <= p[k] && p[k] < vlen;
				assert forall k in 0..vlen-1: forall l in k+1..vlen: p[k] != p[l];
				// permutation consistence
				assert forall k in 0..vlen: v[k] == old(v)[p[k]];
			};
			(true) 
		})
		{
			i = i - 1;
			if (i < 0)
				return *p;

			let j = 0;
			while ({
				spec {
					assert 0 <= j && j < i;
					// order
					assert forall k in i+1..vlen: forall l in 0..k: v[l] <= v[k];
					// p is a permutation
					assert forall k in 0..vlen: 0 <= p[k] && p[k] < vlen;
					assert forall k in 0..vlen-1: forall l in k+1..vlen: p[k] != p[l];
					// permutation consistence
					assert forall k in 0..vlen: v[k] == old(v)[p[k]];

					assert forall k in 0..j: v[k] <= v[j];
				};
				(j < i)
			})
			{
				if (*Vector::borrow(v, j + 1) < *Vector::borrow(v, j)) {
					Vector::swap(v, j + 1, j);
					Vector::swap(p, j + 1, j);
				};
				j = j + 1;
			};
		};
		*p
	}
	spec verify_sort {
		aborts_if false;
		ensures len(v) == len(result);
		ensures forall i in 0..len(v)-1: forall j in i+1..len(v): v[i] <= v[j];
		// p is a permutation
		ensures forall k in 0..len(v): 0 <= result[k] && result[k] < len(v);
		ensures forall k in 0..len(v)-1: forall l in k+1..len(v): result[k] != result[l];
		// permutation consistence
		ensures forall k in 0..len(v): v[k] == old(v)[result[k]];
	}
}

