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
(set-info :status sat)
(declare-sort Index 0)
(declare-sort Element 0)
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
(declare-fun a_359 () (Array Index Element))
(declare-fun a_360 () (Array Index Element))
(declare-fun a_361 () (Array Index Element))
(declare-fun a_362 () (Array Index Element))
(declare-fun a_363 () (Array Index Element))
(declare-fun a_364 () (Array Index Element))
(declare-fun a_365 () (Array Index Element))
(declare-fun a_366 () (Array Index Element))
(declare-fun a_367 () (Array Index Element))
(declare-fun a_368 () (Array Index Element))
(declare-fun a_369 () (Array Index Element))
(declare-fun a_370 () (Array Index Element))
(declare-fun a_371 () (Array Index Element))
(declare-fun a_372 () (Array Index Element))
(declare-fun a_373 () (Array Index Element))
(declare-fun a_374 () (Array Index Element))
(declare-fun a_375 () (Array Index Element))
(declare-fun a_376 () (Array Index Element))
(declare-fun a_377 () (Array Index Element))
(declare-fun a_378 () (Array Index Element))
(declare-fun a_379 () (Array Index Element))
(declare-fun a_380 () (Array Index Element))
(declare-fun a_381 () (Array Index Element))
(declare-fun a_382 () (Array Index Element))
(declare-fun a_383 () (Array Index Element))
(declare-fun a_384 () (Array Index Element))
(declare-fun a_385 () (Array Index Element))
(declare-fun a_386 () (Array Index Element))
(declare-fun a_387 () (Array Index Element))
(declare-fun a_388 () (Array Index Element))
(declare-fun a_389 () (Array Index Element))
(declare-fun a_390 () (Array Index Element))
(declare-fun a_391 () (Array Index Element))
(declare-fun a_392 () (Array Index Element))
(declare-fun a_393 () (Array Index Element))
(declare-fun a_394 () (Array Index Element))
(declare-fun a_395 () (Array Index Element))
(declare-fun a_396 () (Array Index Element))
(declare-fun a_397 () (Array Index Element))
(declare-fun a_398 () (Array Index Element))
(declare-fun a_399 () (Array Index Element))
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
(declare-fun e21 () Element)
(declare-fun e22 () Element)
(declare-fun e23 () Element)
(declare-fun e24 () Element)
(declare-fun e25 () Element)
(declare-fun e26 () Element)
(declare-fun e27 () Element)
(declare-fun e28 () Element)
(declare-fun e29 () Element)
(declare-fun e3 () Element)
(declare-fun e30 () Element)
(declare-fun e31 () Element)
(declare-fun e32 () Element)
(declare-fun e33 () Element)
(declare-fun e34 () Element)
(declare-fun e35 () Element)
(declare-fun e36 () Element)
(declare-fun e37 () Element)
(declare-fun e38 () Element)
(declare-fun e39 () Element)
(declare-fun e4 () Element)
(declare-fun e40 () Element)
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
(declare-fun i21 () Index)
(declare-fun i22 () Index)
(declare-fun i23 () Index)
(declare-fun i24 () Index)
(declare-fun i25 () Index)
(declare-fun i26 () Index)
(declare-fun i27 () Index)
(declare-fun i28 () Index)
(declare-fun i29 () Index)
(declare-fun i3 () Index)
(declare-fun i30 () Index)
(declare-fun i31 () Index)
(declare-fun i32 () Index)
(declare-fun i33 () Index)
(declare-fun i34 () Index)
(declare-fun i35 () Index)
(declare-fun i36 () Index)
(declare-fun i37 () Index)
(declare-fun i38 () Index)
(declare-fun i39 () Index)
(declare-fun i4 () Index)
(declare-fun i40 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(declare-fun i7 () Index)
(declare-fun i8 () Index)
(declare-fun i9 () Index)
(assert (= a_320 (store a1 i1 e1)))
(assert (= a_321 (store a_320 i2 e2)))
(assert (= a_322 (store a_321 i3 e3)))
(assert (= a_323 (store a_322 i4 e4)))
(assert (= a_324 (store a_323 i5 e5)))
(assert (= a_325 (store a_324 i6 e6)))
(assert (= a_326 (store a_325 i7 e7)))
(assert (= a_327 (store a_326 i8 e8)))
(assert (= a_328 (store a_327 i9 e9)))
(assert (= a_329 (store a_328 i10 e10)))
(assert (= a_330 (store a_329 i11 e11)))
(assert (= a_331 (store a_330 i12 e12)))
(assert (= a_332 (store a_331 i13 e13)))
(assert (= a_333 (store a_332 i14 e14)))
(assert (= a_334 (store a_333 i15 e15)))
(assert (= a_335 (store a_334 i16 e16)))
(assert (= a_336 (store a_335 i17 e17)))
(assert (= a_337 (store a_336 i18 e18)))
(assert (= a_338 (store a_337 i19 e19)))
(assert (= a_339 (store a_338 i20 e20)))
(assert (= a_340 (store a_339 i21 e21)))
(assert (= a_341 (store a_340 i22 e22)))
(assert (= a_342 (store a_341 i23 e23)))
(assert (= a_343 (store a_342 i24 e24)))
(assert (= a_344 (store a_343 i25 e25)))
(assert (= a_345 (store a_344 i26 e26)))
(assert (= a_346 (store a_345 i27 e27)))
(assert (= a_347 (store a_346 i28 e28)))
(assert (= a_348 (store a_347 i29 e29)))
(assert (= a_349 (store a_348 i30 e30)))
(assert (= a_350 (store a_349 i31 e31)))
(assert (= a_351 (store a_350 i32 e32)))
(assert (= a_352 (store a_351 i33 e33)))
(assert (= a_353 (store a_352 i34 e34)))
(assert (= a_354 (store a_353 i35 e35)))
(assert (= a_355 (store a_354 i36 e36)))
(assert (= a_356 (store a_355 i37 e37)))
(assert (= a_357 (store a_356 i38 e38)))
(assert (= a_358 (store a_357 i39 e39)))
(assert (= a_359 (store a_358 i1 e1)))
(assert (= a_360 (store a1 i25 e25)))
(assert (= a_361 (store a_360 i1 e1)))
(assert (= a_362 (store a_361 i12 e12)))
(assert (= a_363 (store a_362 i11 e11)))
(assert (= a_364 (store a_363 i19 e19)))
(assert (= a_365 (store a_364 i14 e14)))
(assert (= a_366 (store a_365 i32 e32)))
(assert (= a_367 (store a_366 i22 e22)))
(assert (= a_368 (store a_367 i15 e15)))
(assert (= a_369 (store a_368 i30 e30)))
(assert (= a_370 (store a_369 i35 e35)))
(assert (= a_371 (store a_370 i18 e18)))
(assert (= a_372 (store a_371 i8 e8)))
(assert (= a_373 (store a_372 i10 e10)))
(assert (= a_374 (store a_373 i34 e34)))
(assert (= a_375 (store a_374 i38 e38)))
(assert (= a_376 (store a_375 i37 e37)))
(assert (= a_377 (store a_376 i7 e7)))
(assert (= a_378 (store a_377 i17 e17)))
(assert (= a_379 (store a_378 i5 e5)))
(assert (= a_380 (store a_379 i9 e9)))
(assert (= a_381 (store a_380 i29 e29)))
(assert (= a_382 (store a_381 i33 e33)))
(assert (= a_383 (store a_382 i6 e6)))
(assert (= a_384 (store a_383 i2 e2)))
(assert (= a_385 (store a_384 i21 e21)))
(assert (= a_386 (store a_385 i40 e40)))
(assert (= a_387 (store a_386 i3 e3)))
(assert (= a_388 (store a_387 i24 e24)))
(assert (= a_389 (store a_388 i36 e36)))
(assert (= a_390 (store a_389 i26 e26)))
(assert (= a_391 (store a_390 i13 e13)))
(assert (= a_392 (store a_391 i28 e28)))
(assert (= a_393 (store a_392 i39 e39)))
(assert (= a_394 (store a_393 i16 e16)))
(assert (= a_395 (store a_394 i4 e4)))
(assert (= a_396 (store a_395 i31 e31)))
(assert (= a_397 (store a_396 i23 e23)))
(assert (= a_398 (store a_397 i27 e27)))
(assert (= a_399 (store a_398 i20 e20)))
(assert (not (= i39 i40)))
(assert (not (= i38 i40)))
(assert (not (= i38 i39)))
(assert (not (= i37 i40)))
(assert (not (= i37 i39)))
(assert (not (= i37 i38)))
(assert (not (= i36 i40)))
(assert (not (= i36 i39)))
(assert (not (= i36 i38)))
(assert (not (= i36 i37)))
(assert (not (= i35 i40)))
(assert (not (= i35 i39)))
(assert (not (= i35 i38)))
(assert (not (= i35 i37)))
(assert (not (= i35 i36)))
(assert (not (= i34 i40)))
(assert (not (= i34 i39)))
(assert (not (= i34 i38)))
(assert (not (= i34 i37)))
(assert (not (= i34 i36)))
(assert (not (= i34 i35)))
(assert (not (= i33 i40)))
(assert (not (= i33 i39)))
(assert (not (= i33 i38)))
(assert (not (= i33 i37)))
(assert (not (= i33 i36)))
(assert (not (= i33 i35)))
(assert (not (= i33 i34)))
(assert (not (= i32 i40)))
(assert (not (= i32 i39)))
(assert (not (= i32 i38)))
(assert (not (= i32 i37)))
(assert (not (= i32 i36)))
(assert (not (= i32 i35)))
(assert (not (= i32 i34)))
(assert (not (= i32 i33)))
(assert (not (= i31 i40)))
(assert (not (= i31 i39)))
(assert (not (= i31 i38)))
(assert (not (= i31 i37)))
(assert (not (= i31 i36)))
(assert (not (= i31 i35)))
(assert (not (= i31 i34)))
(assert (not (= i31 i33)))
(assert (not (= i31 i32)))
(assert (not (= i30 i40)))
(assert (not (= i30 i39)))
(assert (not (= i30 i38)))
(assert (not (= i30 i37)))
(assert (not (= i30 i36)))
(assert (not (= i30 i35)))
(assert (not (= i30 i34)))
(assert (not (= i30 i33)))
(assert (not (= i30 i32)))
(assert (not (= i30 i31)))
(assert (not (= i29 i40)))
(assert (not (= i29 i39)))
(assert (not (= i29 i38)))
(assert (not (= i29 i37)))
(assert (not (= i29 i36)))
(assert (not (= i29 i35)))
(assert (not (= i29 i34)))
(assert (not (= i29 i33)))
(assert (not (= i29 i32)))
(assert (not (= i29 i31)))
(assert (not (= i29 i30)))
(assert (not (= i28 i40)))
(assert (not (= i28 i39)))
(assert (not (= i28 i38)))
(assert (not (= i28 i37)))
(assert (not (= i28 i36)))
(assert (not (= i28 i35)))
(assert (not (= i28 i34)))
(assert (not (= i28 i33)))
(assert (not (= i28 i32)))
(assert (not (= i28 i31)))
(assert (not (= i28 i30)))
(assert (not (= i28 i29)))
(assert (not (= i27 i40)))
(assert (not (= i27 i39)))
(assert (not (= i27 i38)))
(assert (not (= i27 i37)))
(assert (not (= i27 i36)))
(assert (not (= i27 i35)))
(assert (not (= i27 i34)))
(assert (not (= i27 i33)))
(assert (not (= i27 i32)))
(assert (not (= i27 i31)))
(assert (not (= i27 i30)))
(assert (not (= i27 i29)))
(assert (not (= i27 i28)))
(assert (not (= i26 i40)))
(assert (not (= i26 i39)))
(assert (not (= i26 i38)))
(assert (not (= i26 i37)))
(assert (not (= i26 i36)))
(assert (not (= i26 i35)))
(assert (not (= i26 i34)))
(assert (not (= i26 i33)))
(assert (not (= i26 i32)))
(assert (not (= i26 i31)))
(assert (not (= i26 i30)))
(assert (not (= i26 i29)))
(assert (not (= i26 i28)))
(assert (not (= i26 i27)))
(assert (not (= i25 i40)))
(assert (not (= i25 i39)))
(assert (not (= i25 i38)))
(assert (not (= i25 i37)))
(assert (not (= i25 i36)))
(assert (not (= i25 i35)))
(assert (not (= i25 i34)))
(assert (not (= i25 i33)))
(assert (not (= i25 i32)))
(assert (not (= i25 i31)))
(assert (not (= i25 i30)))
(assert (not (= i25 i29)))
(assert (not (= i25 i28)))
(assert (not (= i25 i27)))
(assert (not (= i25 i26)))
(assert (not (= i24 i40)))
(assert (not (= i24 i39)))
(assert (not (= i24 i38)))
(assert (not (= i24 i37)))
(assert (not (= i24 i36)))
(assert (not (= i24 i35)))
(assert (not (= i24 i34)))
(assert (not (= i24 i33)))
(assert (not (= i24 i32)))
(assert (not (= i24 i31)))
(assert (not (= i24 i30)))
(assert (not (= i24 i29)))
(assert (not (= i24 i28)))
(assert (not (= i24 i27)))
(assert (not (= i24 i26)))
(assert (not (= i24 i25)))
(assert (not (= i23 i40)))
(assert (not (= i23 i39)))
(assert (not (= i23 i38)))
(assert (not (= i23 i37)))
(assert (not (= i23 i36)))
(assert (not (= i23 i35)))
(assert (not (= i23 i34)))
(assert (not (= i23 i33)))
(assert (not (= i23 i32)))
(assert (not (= i23 i31)))
(assert (not (= i23 i30)))
(assert (not (= i23 i29)))
(assert (not (= i23 i28)))
(assert (not (= i23 i27)))
(assert (not (= i23 i26)))
(assert (not (= i23 i25)))
(assert (not (= i23 i24)))
(assert (not (= i22 i40)))
(assert (not (= i22 i39)))
(assert (not (= i22 i38)))
(assert (not (= i22 i37)))
(assert (not (= i22 i36)))
(assert (not (= i22 i35)))
(assert (not (= i22 i34)))
(assert (not (= i22 i33)))
(assert (not (= i22 i32)))
(assert (not (= i22 i31)))
(assert (not (= i22 i30)))
(assert (not (= i22 i29)))
(assert (not (= i22 i28)))
(assert (not (= i22 i27)))
(assert (not (= i22 i26)))
(assert (not (= i22 i25)))
(assert (not (= i22 i24)))
(assert (not (= i22 i23)))
(assert (not (= i21 i40)))
(assert (not (= i21 i39)))
(assert (not (= i21 i38)))
(assert (not (= i21 i37)))
(assert (not (= i21 i36)))
(assert (not (= i21 i35)))
(assert (not (= i21 i34)))
(assert (not (= i21 i33)))
(assert (not (= i21 i32)))
(assert (not (= i21 i31)))
(assert (not (= i21 i30)))
(assert (not (= i21 i29)))
(assert (not (= i21 i28)))
(assert (not (= i21 i27)))
(assert (not (= i21 i26)))
(assert (not (= i21 i25)))
(assert (not (= i21 i24)))
(assert (not (= i21 i23)))
(assert (not (= i21 i22)))
(assert (not (= i20 i40)))
(assert (not (= i20 i39)))
(assert (not (= i20 i38)))
(assert (not (= i20 i37)))
(assert (not (= i20 i36)))
(assert (not (= i20 i35)))
(assert (not (= i20 i34)))
(assert (not (= i20 i33)))
(assert (not (= i20 i32)))
(assert (not (= i20 i31)))
(assert (not (= i20 i30)))
(assert (not (= i20 i29)))
(assert (not (= i20 i28)))
(assert (not (= i20 i27)))
(assert (not (= i20 i26)))
(assert (not (= i20 i25)))
(assert (not (= i20 i24)))
(assert (not (= i20 i23)))
(assert (not (= i20 i22)))
(assert (not (= i20 i21)))
(assert (not (= i19 i40)))
(assert (not (= i19 i39)))
(assert (not (= i19 i38)))
(assert (not (= i19 i37)))
(assert (not (= i19 i36)))
(assert (not (= i19 i35)))
(assert (not (= i19 i34)))
(assert (not (= i19 i33)))
(assert (not (= i19 i32)))
(assert (not (= i19 i31)))
(assert (not (= i19 i30)))
(assert (not (= i19 i29)))
(assert (not (= i19 i28)))
(assert (not (= i19 i27)))
(assert (not (= i19 i26)))
(assert (not (= i19 i25)))
(assert (not (= i19 i24)))
(assert (not (= i19 i23)))
(assert (not (= i19 i22)))
(assert (not (= i19 i21)))
(assert (not (= i19 i20)))
(assert (not (= i18 i40)))
(assert (not (= i18 i39)))
(assert (not (= i18 i38)))
(assert (not (= i18 i37)))
(assert (not (= i18 i36)))
(assert (not (= i18 i35)))
(assert (not (= i18 i34)))
(assert (not (= i18 i33)))
(assert (not (= i18 i32)))
(assert (not (= i18 i31)))
(assert (not (= i18 i30)))
(assert (not (= i18 i29)))
(assert (not (= i18 i28)))
(assert (not (= i18 i27)))
(assert (not (= i18 i26)))
(assert (not (= i18 i25)))
(assert (not (= i18 i24)))
(assert (not (= i18 i23)))
(assert (not (= i18 i22)))
(assert (not (= i18 i21)))
(assert (not (= i18 i20)))
(assert (not (= i18 i19)))
(assert (not (= i17 i40)))
(assert (not (= i17 i39)))
(assert (not (= i17 i38)))
(assert (not (= i17 i37)))
(assert (not (= i17 i36)))
(assert (not (= i17 i35)))
(assert (not (= i17 i34)))
(assert (not (= i17 i33)))
(assert (not (= i17 i32)))
(assert (not (= i17 i31)))
(assert (not (= i17 i30)))
(assert (not (= i17 i29)))
(assert (not (= i17 i28)))
(assert (not (= i17 i27)))
(assert (not (= i17 i26)))
(assert (not (= i17 i25)))
(assert (not (= i17 i24)))
(assert (not (= i17 i23)))
(assert (not (= i17 i22)))
(assert (not (= i17 i21)))
(assert (not (= i17 i20)))
(assert (not (= i17 i19)))
(assert (not (= i17 i18)))
(assert (not (= i16 i40)))
(assert (not (= i16 i39)))
(assert (not (= i16 i38)))
(assert (not (= i16 i37)))
(assert (not (= i16 i36)))
(assert (not (= i16 i35)))
(assert (not (= i16 i34)))
(assert (not (= i16 i33)))
(assert (not (= i16 i32)))
(assert (not (= i16 i31)))
(assert (not (= i16 i30)))
(assert (not (= i16 i29)))
(assert (not (= i16 i28)))
(assert (not (= i16 i27)))
(assert (not (= i16 i26)))
(assert (not (= i16 i25)))
(assert (not (= i16 i24)))
(assert (not (= i16 i23)))
(assert (not (= i16 i22)))
(assert (not (= i16 i21)))
(assert (not (= i16 i20)))
(assert (not (= i16 i19)))
(assert (not (= i16 i18)))
(assert (not (= i16 i17)))
(assert (not (= i15 i40)))
(assert (not (= i15 i39)))
(assert (not (= i15 i38)))
(assert (not (= i15 i37)))
(assert (not (= i15 i36)))
(assert (not (= i15 i35)))
(assert (not (= i15 i34)))
(assert (not (= i15 i33)))
(assert (not (= i15 i32)))
(assert (not (= i15 i31)))
(assert (not (= i15 i30)))
(assert (not (= i15 i29)))
(assert (not (= i15 i28)))
(assert (not (= i15 i27)))
(assert (not (= i15 i26)))
(assert (not (= i15 i25)))
(assert (not (= i15 i24)))
(assert (not (= i15 i23)))
(assert (not (= i15 i22)))
(assert (not (= i15 i21)))
(assert (not (= i15 i20)))
(assert (not (= i15 i19)))
(assert (not (= i15 i18)))
(assert (not (= i15 i17)))
(assert (not (= i15 i16)))
(assert (not (= i14 i40)))
(assert (not (= i14 i39)))
(assert (not (= i14 i38)))
(assert (not (= i14 i37)))
(assert (not (= i14 i36)))
(assert (not (= i14 i35)))
(assert (not (= i14 i34)))
(assert (not (= i14 i33)))
(assert (not (= i14 i32)))
(assert (not (= i14 i31)))
(assert (not (= i14 i30)))
(assert (not (= i14 i29)))
(assert (not (= i14 i28)))
(assert (not (= i14 i27)))
(assert (not (= i14 i26)))
(assert (not (= i14 i25)))
(assert (not (= i14 i24)))
(assert (not (= i14 i23)))
(assert (not (= i14 i22)))
(assert (not (= i14 i21)))
(assert (not (= i14 i20)))
(assert (not (= i14 i19)))
(assert (not (= i14 i18)))
(assert (not (= i14 i17)))
(assert (not (= i14 i16)))
(assert (not (= i14 i15)))
(assert (not (= i13 i40)))
(assert (not (= i13 i39)))
(assert (not (= i13 i38)))
(assert (not (= i13 i37)))
(assert (not (= i13 i36)))
(assert (not (= i13 i35)))
(assert (not (= i13 i34)))
(assert (not (= i13 i33)))
(assert (not (= i13 i32)))
(assert (not (= i13 i31)))
(assert (not (= i13 i30)))
(assert (not (= i13 i29)))
(assert (not (= i13 i28)))
(assert (not (= i13 i27)))
(assert (not (= i13 i26)))
(assert (not (= i13 i25)))
(assert (not (= i13 i24)))
(assert (not (= i13 i23)))
(assert (not (= i13 i22)))
(assert (not (= i13 i21)))
(assert (not (= i13 i20)))
(assert (not (= i13 i19)))
(assert (not (= i13 i18)))
(assert (not (= i13 i17)))
(assert (not (= i13 i16)))
(assert (not (= i13 i15)))
(assert (not (= i13 i14)))
(assert (not (= i12 i40)))
(assert (not (= i12 i39)))
(assert (not (= i12 i38)))
(assert (not (= i12 i37)))
(assert (not (= i12 i36)))
(assert (not (= i12 i35)))
(assert (not (= i12 i34)))
(assert (not (= i12 i33)))
(assert (not (= i12 i32)))
(assert (not (= i12 i31)))
(assert (not (= i12 i30)))
(assert (not (= i12 i29)))
(assert (not (= i12 i28)))
(assert (not (= i12 i27)))
(assert (not (= i12 i26)))
(assert (not (= i12 i25)))
(assert (not (= i12 i24)))
(assert (not (= i12 i23)))
(assert (not (= i12 i22)))
(assert (not (= i12 i21)))
(assert (not (= i12 i20)))
(assert (not (= i12 i19)))
(assert (not (= i12 i18)))
(assert (not (= i12 i17)))
(assert (not (= i12 i16)))
(assert (not (= i12 i15)))
(assert (not (= i12 i14)))
(assert (not (= i12 i13)))
(assert (not (= i11 i40)))
(assert (not (= i11 i39)))
(assert (not (= i11 i38)))
(assert (not (= i11 i37)))
(assert (not (= i11 i36)))
(assert (not (= i11 i35)))
(assert (not (= i11 i34)))
(assert (not (= i11 i33)))
(assert (not (= i11 i32)))
(assert (not (= i11 i31)))
(assert (not (= i11 i30)))
(assert (not (= i11 i29)))
(assert (not (= i11 i28)))
(assert (not (= i11 i27)))
(assert (not (= i11 i26)))
(assert (not (= i11 i25)))
(assert (not (= i11 i24)))
(assert (not (= i11 i23)))
(assert (not (= i11 i22)))
(assert (not (= i11 i21)))
(assert (not (= i11 i20)))
(assert (not (= i11 i19)))
(assert (not (= i11 i18)))
(assert (not (= i11 i17)))
(assert (not (= i11 i16)))
(assert (not (= i11 i15)))
(assert (not (= i11 i14)))
(assert (not (= i11 i13)))
(assert (not (= i11 i12)))
(assert (not (= i10 i40)))
(assert (not (= i10 i39)))
(assert (not (= i10 i38)))
(assert (not (= i10 i37)))
(assert (not (= i10 i36)))
(assert (not (= i10 i35)))
(assert (not (= i10 i34)))
(assert (not (= i10 i33)))
(assert (not (= i10 i32)))
(assert (not (= i10 i31)))
(assert (not (= i10 i30)))
(assert (not (= i10 i29)))
(assert (not (= i10 i28)))
(assert (not (= i10 i27)))
(assert (not (= i10 i26)))
(assert (not (= i10 i25)))
(assert (not (= i10 i24)))
(assert (not (= i10 i23)))
(assert (not (= i10 i22)))
(assert (not (= i10 i21)))
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
(assert (not (= i9 i40)))
(assert (not (= i9 i39)))
(assert (not (= i9 i38)))
(assert (not (= i9 i37)))
(assert (not (= i9 i36)))
(assert (not (= i9 i35)))
(assert (not (= i9 i34)))
(assert (not (= i9 i33)))
(assert (not (= i9 i32)))
(assert (not (= i9 i31)))
(assert (not (= i9 i30)))
(assert (not (= i9 i29)))
(assert (not (= i9 i28)))
(assert (not (= i9 i27)))
(assert (not (= i9 i26)))
(assert (not (= i9 i25)))
(assert (not (= i9 i24)))
(assert (not (= i9 i23)))
(assert (not (= i9 i22)))
(assert (not (= i9 i21)))
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
(assert (not (= i8 i40)))
(assert (not (= i8 i39)))
(assert (not (= i8 i38)))
(assert (not (= i8 i37)))
(assert (not (= i8 i36)))
(assert (not (= i8 i35)))
(assert (not (= i8 i34)))
(assert (not (= i8 i33)))
(assert (not (= i8 i32)))
(assert (not (= i8 i31)))
(assert (not (= i8 i30)))
(assert (not (= i8 i29)))
(assert (not (= i8 i28)))
(assert (not (= i8 i27)))
(assert (not (= i8 i26)))
(assert (not (= i8 i25)))
(assert (not (= i8 i24)))
(assert (not (= i8 i23)))
(assert (not (= i8 i22)))
(assert (not (= i8 i21)))
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
(assert (not (= i7 i40)))
(assert (not (= i7 i39)))
(assert (not (= i7 i38)))
(assert (not (= i7 i37)))
(assert (not (= i7 i36)))
(assert (not (= i7 i35)))
(assert (not (= i7 i34)))
(assert (not (= i7 i33)))
(assert (not (= i7 i32)))
(assert (not (= i7 i31)))
(assert (not (= i7 i30)))
(assert (not (= i7 i29)))
(assert (not (= i7 i28)))
(assert (not (= i7 i27)))
(assert (not (= i7 i26)))
(assert (not (= i7 i25)))
(assert (not (= i7 i24)))
(assert (not (= i7 i23)))
(assert (not (= i7 i22)))
(assert (not (= i7 i21)))
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
(assert (not (= i6 i40)))
(assert (not (= i6 i39)))
(assert (not (= i6 i38)))
(assert (not (= i6 i37)))
(assert (not (= i6 i36)))
(assert (not (= i6 i35)))
(assert (not (= i6 i34)))
(assert (not (= i6 i33)))
(assert (not (= i6 i32)))
(assert (not (= i6 i31)))
(assert (not (= i6 i30)))
(assert (not (= i6 i29)))
(assert (not (= i6 i28)))
(assert (not (= i6 i27)))
(assert (not (= i6 i26)))
(assert (not (= i6 i25)))
(assert (not (= i6 i24)))
(assert (not (= i6 i23)))
(assert (not (= i6 i22)))
(assert (not (= i6 i21)))
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
(assert (not (= i5 i40)))
(assert (not (= i5 i39)))
(assert (not (= i5 i38)))
(assert (not (= i5 i37)))
(assert (not (= i5 i36)))
(assert (not (= i5 i35)))
(assert (not (= i5 i34)))
(assert (not (= i5 i33)))
(assert (not (= i5 i32)))
(assert (not (= i5 i31)))
(assert (not (= i5 i30)))
(assert (not (= i5 i29)))
(assert (not (= i5 i28)))
(assert (not (= i5 i27)))
(assert (not (= i5 i26)))
(assert (not (= i5 i25)))
(assert (not (= i5 i24)))
(assert (not (= i5 i23)))
(assert (not (= i5 i22)))
(assert (not (= i5 i21)))
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
(assert (not (= i4 i40)))
(assert (not (= i4 i39)))
(assert (not (= i4 i38)))
(assert (not (= i4 i37)))
(assert (not (= i4 i36)))
(assert (not (= i4 i35)))
(assert (not (= i4 i34)))
(assert (not (= i4 i33)))
(assert (not (= i4 i32)))
(assert (not (= i4 i31)))
(assert (not (= i4 i30)))
(assert (not (= i4 i29)))
(assert (not (= i4 i28)))
(assert (not (= i4 i27)))
(assert (not (= i4 i26)))
(assert (not (= i4 i25)))
(assert (not (= i4 i24)))
(assert (not (= i4 i23)))
(assert (not (= i4 i22)))
(assert (not (= i4 i21)))
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
(assert (not (= i3 i40)))
(assert (not (= i3 i39)))
(assert (not (= i3 i38)))
(assert (not (= i3 i37)))
(assert (not (= i3 i36)))
(assert (not (= i3 i35)))
(assert (not (= i3 i34)))
(assert (not (= i3 i33)))
(assert (not (= i3 i32)))
(assert (not (= i3 i31)))
(assert (not (= i3 i30)))
(assert (not (= i3 i29)))
(assert (not (= i3 i28)))
(assert (not (= i3 i27)))
(assert (not (= i3 i26)))
(assert (not (= i3 i25)))
(assert (not (= i3 i24)))
(assert (not (= i3 i23)))
(assert (not (= i3 i22)))
(assert (not (= i3 i21)))
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
(assert (not (= i2 i40)))
(assert (not (= i2 i39)))
(assert (not (= i2 i38)))
(assert (not (= i2 i37)))
(assert (not (= i2 i36)))
(assert (not (= i2 i35)))
(assert (not (= i2 i34)))
(assert (not (= i2 i33)))
(assert (not (= i2 i32)))
(assert (not (= i2 i31)))
(assert (not (= i2 i30)))
(assert (not (= i2 i29)))
(assert (not (= i2 i28)))
(assert (not (= i2 i27)))
(assert (not (= i2 i26)))
(assert (not (= i2 i25)))
(assert (not (= i2 i24)))
(assert (not (= i2 i23)))
(assert (not (= i2 i22)))
(assert (not (= i2 i21)))
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
(assert (not (= i1 i40)))
(assert (not (= i1 i39)))
(assert (not (= i1 i38)))
(assert (not (= i1 i37)))
(assert (not (= i1 i36)))
(assert (not (= i1 i35)))
(assert (not (= i1 i34)))
(assert (not (= i1 i33)))
(assert (not (= i1 i32)))
(assert (not (= i1 i31)))
(assert (not (= i1 i30)))
(assert (not (= i1 i29)))
(assert (not (= i1 i28)))
(assert (not (= i1 i27)))
(assert (not (= i1 i26)))
(assert (not (= i1 i25)))
(assert (not (= i1 i24)))
(assert (not (= i1 i23)))
(assert (not (= i1 i22)))
(assert (not (= i1 i21)))
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
(assert (not (= a_359 a_399)))
(check-sat)
(exit)