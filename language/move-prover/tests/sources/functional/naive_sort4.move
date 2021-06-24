// separate_baseline: cvc4
// The separate baseline is legit and caused by a different choice in the generated model.
// *** Some problem with "v" taking random values, but Ying convinced me that it should work.
module 0x42::TestNaiveSort {
	use 0x1::Vector;
	
	public fun verify_sort(v: &mut vector<u64>) {
		let vlen = Vector::length(v);
                spec {
                    assume vlen == 45;
                };
		if (vlen <= 1) return ();

		let i = 0;
		let j = 1;
                while 
		({
			spec {
				assert vlen == len(v);
      				assert i < j;
				assert j <= vlen;
				assert forall k in 0..i: v[k] <= v[k + 1];
                                // Invariant depends on whether i was just incremented or not
                                // v[i] is still in process, but previous indices are the minimum
                                // elements of the vector (they've already been compared with everything)
                                assert i > 0 ==> (forall k in i..vlen: v[i-1] <= v[k]);
                                // v[i] has been swapped with everything up to v[j]
                                assert forall k in i+1..j: v[i] <= v[k];
                                // j stays in bounds until loop exit       
                                assert i < vlen - 1 ==> j < vlen;
			};
			(i < vlen - 1)
		}) 
		{
			if (*Vector::borrow(v, i) > *Vector::borrow(v, j)) {
				Vector::swap(v, i, j);
			};

			if (j < vlen - 1 ) {
				j = j + 1;
			} else {
				i = i + 1;
				j = i + 1;
			};
                        // spec {
                        //     TRACE(i);
                        //     TRACE(j);
                        //     TRACE(v);
                        // }
		};
		spec {
			assert len(v) == vlen;
			assert i == vlen - 1;
			assert j == vlen;
			assert v[0] <= v[1];
			assert v[vlen - 2] <= v[vlen - 1];
		};
	}
	spec verify_sort {
		aborts_if false;
		ensures forall i in 0..len(v)-1: v[i] <= v[i+1];
	}
}
