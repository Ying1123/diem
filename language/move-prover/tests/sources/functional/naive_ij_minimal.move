module 0x42::TestNaiveSort {
	public fun verify_ij(vlen: u64): u64 {
		spec {
			assume vlen == 2;
		};
		if (vlen <= 1) return vlen - 2;

		let i = 0;
		let j = 1;
        while 
		({
			spec {
				assert i < j;
			};
			(j < vlen)
		}) 
		{
			if (j + 1 < vlen) {
				j = j + 1;
			} else {
				i = i + 1;
				j = i + 1;
			}
		};
		spec {
			assert i == vlen - 2;
		};
		i
	}
	spec verify_sort {
		aborts_if false;
		ensures result == vlen - 2;
	}
}

