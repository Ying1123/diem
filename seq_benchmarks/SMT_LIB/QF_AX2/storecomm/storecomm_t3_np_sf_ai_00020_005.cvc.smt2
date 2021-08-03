(set-info :smt-lib-version 2.6)
(set-logic QF_AX)
(set-info :source |
Benchmarks used in the followin paper:
Big proof engines as little proof engines: new results on rewrite-based satisfiability procedure
Alessandro Armando, Maria Paola Bonacina, Silvio Ranise, Stephan Schulz. 
PDPAR'05
http://www.ai.dist.unige.it/pdpar05/


|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun a_319 () (Array Index Element))
(declare-fun a_320 () (Array Index Element))
(declare-fun a_321 () (Array Index Element))
(declare-fun a_322 () (Array Index Element))
(declare-fun a_323 () (Array Index Element))
(declare-fun a_324 () (Array Index Element))
(declare-fun a_325 () (Array Index Element))
(declare-fun a_326 () (Array Index Element))
(declare-fun a_327 () (Array Index Element))
(declare-fun a_328 () (Array Index Element))
(declare-fun a_329 () (Array Index Element))
(declare-fun a_330 () (Array Index Element))
(declare-fun a_331 () (Array Index Element))
(declare-fun a_332 () (Array Index Element))
(declare-fun a_333 () (Array Index Element))
(declare-fun a_334 () (Array Index Element))
(declare-fun a_335 () (Array Index Element))
(declare-fun a_336 () (Array Index Element))
(declare-fun a_337 () (Array Index Element))
(declare-fun a_338 () (Array Index Element))
(declare-fun a_339 () (Array Index Element))
(declare-fun a_340 () (Array Index Element))
(declare-fun a_341 () (Array Index Element))
(declare-fun a_342 () (Array Index Element))
(declare-fun a_343 () (Array Index Element))
(declare-fun a_344 () (Array Index Element))
(declare-fun a_345 () (Array Index Element))
(declare-fun a_346 () (Array Index Element))
(declare-fun a_347 () (Array Index Element))
(declare-fun a_348 () (Array Index Element))
(declare-fun a_349 () (Array Index Element))
(declare-fun a_350 () (Array Index Element))
(declare-fun a_351 () (Array Index Element))
(declare-fun a_352 () (Array Index Element))
(declare-fun a_353 () (Array Index Element))
(declare-fun a_354 () (Array Index Element))
(declare-fun a_355 () (Array Index Element))
(declare-fun a_356 () (Array Index Element))
(declare-fun a_357 () (Array Index Element))
(declare-fun a_358 () (Array Index Element))
(declare-fun a1 () (Array Index Element))
(declare-fun e1 () Element)
(declare-fun e10 () Element)
(declare-fun e11 () Element)
(declare-fun e12 () Element)
(declare-fun e13 () Element)
(declare-fun e14 () Element)
(declare-fun e15 () Element)
(declare-fun e16 () Element)
(declare-fun e17 () Element)
(declare-fun e18 () Element)
(declare-fun e19 () Element)
(declare-fun e2 () Element)
(declare-fun e20 () Element)
(declare-fun e3 () Element)
(declare-fun e4 () Element)
(declare-fun e5 () Element)
(declare-fun e6 () Element)
(declare-fun e7 () Element)
(declare-fun e8 () Element)
(declare-fun e9 () Element)
(declare-fun i1 () Index)
(declare-fun i10 () Index)
(declare-fun i11 () Index)
(declare-fun i12 () Index)
(declare-fun i13 () Index)
(declare-fun i14 () Index)
(declare-fun i15 () Index)
(declare-fun i16 () Index)
(declare-fun i17 () Index)
(declare-fun i18 () Index)
(declare-fun i19 () Index)
(declare-fun i2 () Index)
(declare-fun i20 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(declare-fun i7 () Index)
(declare-fun i8 () Index)
(declare-fun i9 () Index)
(assert (= a_319 (store a1 i1 e1)))
(assert (= a_320 (store a_319 i2 e2)))
(assert (= a_321 (store a_320 i3 e3)))
(assert (= a_322 (store a_321 i4 e4)))
(assert (= a_323 (store a_322 i5 e5)))
(assert (= a_324 (store a_323 i6 e6)))
(assert (= a_325 (store a_324 i7 e7)))
(assert (= a_326 (store a_325 i8 e8)))
(assert (= a_327 (store a_326 i9 e9)))
(assert (= a_328 (store a_327 i10 e10)))
(assert (= a_329 (store a_328 i11 e11)))
(assert (= a_330 (store a_329 i12 e12)))
(assert (= a_331 (store a_330 i13 e13)))
(assert (= a_332 (store a_331 i14 e14)))
(assert (= a_333 (store a_332 i15 e15)))
(assert (= a_334 (store a_333 i16 e16)))
(assert (= a_335 (store a_334 i17 e17)))
(assert (= a_336 (store a_335 i18 e18)))
(assert (= a_337 (store a_336 i19 e19)))
(assert (= a_338 (store a_337 i20 e20)))
(assert (= a_339 (store a1 i9 e9)))
(assert (= a_340 (store a_339 i12 e12)))
(assert (= a_341 (store a_340 i4 e4)))
(assert (= a_342 (store a_341 i2 e2)))
(assert (= a_343 (store a_342 i11 e11)))
(assert (= a_344 (store a_343 i19 e19)))
(assert (= a_345 (store a_344 i1 e1)))
(assert (= a_346 (store a_345 i8 e8)))
(assert (= a_347 (store a_346 i15 e15)))
(assert (= a_348 (store a_347 i10 e10)))
(assert (= a_349 (store a_348 i6 e6)))
(assert (= a_350 (store a_349 i14 e14)))
(assert (= a_351 (store a_350 i3 e3)))
(assert (= a_352 (store a_351 i16 e16)))
(assert (= a_353 (store a_352 i5 e5)))
(assert (= a_354 (store a_353 i18 e18)))
(assert (= a_355 (store a_354 i7 e7)))
(assert (= a_356 (store a_355 i20 e20)))
(assert (= a_357 (store a_356 i13 e13)))
(assert (= a_358 (store a_357 i17 e17)))
(assert (not (= i19 i20)))
(assert (not (= i18 i20)))
(assert (not (= i18 i19)))
(assert (not (= i17 i20)))
(assert (not (= i17 i19)))
(assert (not (= i17 i18)))
(assert (not (= i16 i20)))
(assert (not (= i16 i19)))
(assert (not (= i16 i18)))
(assert (not (= i16 i17)))
(assert (not (= i15 i20)))
(assert (not (= i15 i19)))
(assert (not (= i15 i18)))
(assert (not (= i15 i17)))
(assert (not (= i15 i16)))
(assert (not (= i14 i20)))
(assert (not (= i14 i19)))
(assert (not (= i14 i18)))
(assert (not (= i14 i17)))
(assert (not (= i14 i16)))
(assert (not (= i14 i15)))
(assert (not (= i13 i20)))
(assert (not (= i13 i19)))
(assert (not (= i13 i18)))
(assert (not (= i13 i17)))
(assert (not (= i13 i16)))
(assert (not (= i13 i15)))
(assert (not (= i13 i14)))
(assert (not (= i12 i20)))
(assert (not (= i12 i19)))
(assert (not (= i12 i18)))
(assert (not (= i12 i17)))
(assert (not (= i12 i16)))
(assert (not (= i12 i15)))
(assert (not (= i12 i14)))
(assert (not (= i12 i13)))
(assert (not (= i11 i20)))
(assert (not (= i11 i19)))
(assert (not (= i11 i18)))
(assert (not (= i11 i17)))
(assert (not (= i11 i16)))
(assert (not (= i11 i15)))
(assert (not (= i11 i14)))
(assert (not (= i11 i13)))
(assert (not (= i11 i12)))
(assert (not (= i10 i20)))
(assert (not (= i10 i19)))
(assert (not (= i10 i18)))
(assert (not (= i10 i17)))
(assert (not (= i10 i16)))
(assert (not (= i10 i15)))
(assert (not (= i10 i14)))
(assert (not (= i10 i13)))
(assert (not (= i10 i12)))
(assert (not (= i10 i11)))
(assert (not (= i9 i20)))
(assert (not (= i9 i19)))
(assert (not (= i9 i18)))
(assert (not (= i9 i17)))
(assert (not (= i9 i16)))
(assert (not (= i9 i15)))
(assert (not (= i9 i14)))
(assert (not (= i9 i13)))
(assert (not (= i9 i12)))
(assert (not (= i9 i11)))
(assert (not (= i9 i10)))
(assert (not (= i8 i20)))
(assert (not (= i8 i19)))
(assert (not (= i8 i18)))
(assert (not (= i8 i17)))
(assert (not (= i8 i16)))
(assert (not (= i8 i15)))
(assert (not (= i8 i14)))
(assert (not (= i8 i13)))
(assert (not (= i8 i12)))
(assert (not (= i8 i11)))
(assert (not (= i8 i10)))
(assert (not (= i8 i9)))
(assert (not (= i7 i20)))
(assert (not (= i7 i19)))
(assert (not (= i7 i18)))
(assert (not (= i7 i17)))
(assert (not (= i7 i16)))
(assert (not (= i7 i15)))
(assert (not (= i7 i14)))
(assert (not (= i7 i13)))
(assert (not (= i7 i12)))
(assert (not (= i7 i11)))
(assert (not (= i7 i10)))
(assert (not (= i7 i9)))
(assert (not (= i7 i8)))
(assert (not (= i6 i20)))
(assert (not (= i6 i19)))
(assert (not (= i6 i18)))
(assert (not (= i6 i17)))
(assert (not (= i6 i16)))
(assert (not (= i6 i15)))
(assert (not (= i6 i14)))
(assert (not (= i6 i13)))
(assert (not (= i6 i12)))
(assert (not (= i6 i11)))
(assert (not (= i6 i10)))
(assert (not (= i6 i9)))
(assert (not (= i6 i8)))
(assert (not (= i6 i7)))
(assert (not (= i5 i20)))
(assert (not (= i5 i19)))
(assert (not (= i5 i18)))
(assert (not (= i5 i17)))
(assert (not (= i5 i16)))
(assert (not (= i5 i15)))
(assert (not (= i5 i14)))
(assert (not (= i5 i13)))
(assert (not (= i5 i12)))
(assert (not (= i5 i11)))
(assert (not (= i5 i10)))
(assert (not (= i5 i9)))
(assert (not (= i5 i8)))
(assert (not (= i5 i7)))
(assert (not (= i5 i6)))
(assert (not (= i4 i20)))
(assert (not (= i4 i19)))
(assert (not (= i4 i18)))
(assert (not (= i4 i17)))
(assert (not (= i4 i16)))
(assert (not (= i4 i15)))
(assert (not (= i4 i14)))
(assert (not (= i4 i13)))
(assert (not (= i4 i12)))
(assert (not (= i4 i11)))
(assert (not (= i4 i10)))
(assert (not (= i4 i9)))
(assert (not (= i4 i8)))
(assert (not (= i4 i7)))
(assert (not (= i4 i6)))
(assert (not (= i4 i5)))
(assert (not (= i3 i20)))
(assert (not (= i3 i19)))
(assert (not (= i3 i18)))
(assert (not (= i3 i17)))
(assert (not (= i3 i16)))
(assert (not (= i3 i15)))
(assert (not (= i3 i14)))
(assert (not (= i3 i13)))
(assert (not (= i3 i12)))
(assert (not (= i3 i11)))
(assert (not (= i3 i10)))
(assert (not (= i3 i9)))
(assert (not (= i3 i8)))
(assert (not (= i3 i7)))
(assert (not (= i3 i6)))
(assert (not (= i3 i5)))
(assert (not (= i3 i4)))
(assert (not (= i2 i20)))
(assert (not (= i2 i19)))
(assert (not (= i2 i18)))
(assert (not (= i2 i17)))
(assert (not (= i2 i16)))
(assert (not (= i2 i15)))
(assert (not (= i2 i14)))
(assert (not (= i2 i13)))
(assert (not (= i2 i12)))
(assert (not (= i2 i11)))
(assert (not (= i2 i10)))
(assert (not (= i2 i9)))
(assert (not (= i2 i8)))
(assert (not (= i2 i7)))
(assert (not (= i2 i6)))
(assert (not (= i2 i5)))
(assert (not (= i2 i4)))
(assert (not (= i2 i3)))
(assert (not (= i1 i20)))
(assert (not (= i1 i19)))
(assert (not (= i1 i18)))
(assert (not (= i1 i17)))
(assert (not (= i1 i16)))
(assert (not (= i1 i15)))
(assert (not (= i1 i14)))
(assert (not (= i1 i13)))
(assert (not (= i1 i12)))
(assert (not (= i1 i11)))
(assert (not (= i1 i10)))
(assert (not (= i1 i9)))
(assert (not (= i1 i8)))
(assert (not (= i1 i7)))
(assert (not (= i1 i6)))
(assert (not (= i1 i5)))
(assert (not (= i1 i4)))
(assert (not (= i1 i3)))
(assert (not (= i1 i2)))
(assert (not (= a_338 a_358)))
(check-sat)
(exit)
