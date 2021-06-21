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
		
		*p
	}
	spec verify_sort {
		aborts_if false;
	}
}

