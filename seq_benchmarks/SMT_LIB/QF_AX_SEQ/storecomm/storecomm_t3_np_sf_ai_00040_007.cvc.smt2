(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Benchmarks used in the followin paper:
Big proof engines as little proof engines: new results on rewrite-based satisfiability procedure
Alessandro Armando, Maria Paola Bonacina, Silvio Ranise, Stephan Schulz. 
PDPAR'05
http://www.ai.dist.unige.it/pdpar05/


|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-sort Element 0)
(declare-fun a_320 () (Seq Element))
(declare-fun a_321 () (Seq Element))
(declare-fun a_322 () (Seq Element))
(declare-fun a_323 () (Seq Element))
(declare-fun a_324 () (Seq Element))
(declare-fun a_325 () (Seq Element))
(declare-fun a_326 () (Seq Element))
(declare-fun a_327 () (Seq Element))
(declare-fun a_328 () (Seq Element))
(declare-fun a_329 () (Seq Element))
(declare-fun a_330 () (Seq Element))
(declare-fun a_331 () (Seq Element))
(declare-fun a_332 () (Seq Element))
(declare-fun a_333 () (Seq Element))
(declare-fun a_334 () (Seq Element))
(declare-fun a_335 () (Seq Element))
(declare-fun a_336 () (Seq Element))
(declare-fun a_337 () (Seq Element))
(declare-fun a_338 () (Seq Element))
(declare-fun a_339 () (Seq Element))
(declare-fun a_340 () (Seq Element))
(declare-fun a_341 () (Seq Element))
(declare-fun a_342 () (Seq Element))
(declare-fun a_343 () (Seq Element))
(declare-fun a_344 () (Seq Element))
(declare-fun a_345 () (Seq Element))
(declare-fun a_346 () (Seq Element))
(declare-fun a_347 () (Seq Element))
(declare-fun a_348 () (Seq Element))
(declare-fun a_349 () (Seq Element))
(declare-fun a_350 () (Seq Element))
(declare-fun a_351 () (Seq Element))
(declare-fun a_352 () (Seq Element))
(declare-fun a_353 () (Seq Element))
(declare-fun a_354 () (Seq Element))
(declare-fun a_355 () (Seq Element))
(declare-fun a_356 () (Seq Element))
(declare-fun a_357 () (Seq Element))
(declare-fun a_358 () (Seq Element))
(declare-fun a_359 () (Seq Element))
(declare-fun a_360 () (Seq Element))
(declare-fun a_361 () (Seq Element))
(declare-fun a_362 () (Seq Element))
(declare-fun a_363 () (Seq Element))
(declare-fun a_364 () (Seq Element))
(declare-fun a_365 () (Seq Element))
(declare-fun a_366 () (Seq Element))
(declare-fun a_367 () (Seq Element))
(declare-fun a_368 () (Seq Element))
(declare-fun a_369 () (Seq Element))
(declare-fun a_370 () (Seq Element))
(declare-fun a_371 () (Seq Element))
(declare-fun a_372 () (Seq Element))
(declare-fun a_373 () (Seq Element))
(declare-fun a_374 () (Seq Element))
(declare-fun a_375 () (Seq Element))
(declare-fun a_376 () (Seq Element))
(declare-fun a_377 () (Seq Element))
(declare-fun a_378 () (Seq Element))
(declare-fun a_379 () (Seq Element))
(declare-fun a_380 () (Seq Element))
(declare-fun a_381 () (Seq Element))
(declare-fun a_382 () (Seq Element))
(declare-fun a_383 () (Seq Element))
(declare-fun a_384 () (Seq Element))
(declare-fun a_385 () (Seq Element))
(declare-fun a_386 () (Seq Element))
(declare-fun a_387 () (Seq Element))
(declare-fun a_388 () (Seq Element))
(declare-fun a_389 () (Seq Element))
(declare-fun a_390 () (Seq Element))
(declare-fun a_391 () (Seq Element))
(declare-fun a_392 () (Seq Element))
(declare-fun a_393 () (Seq Element))
(declare-fun a_394 () (Seq Element))
(declare-fun a_395 () (Seq Element))
(declare-fun a_396 () (Seq Element))
(declare-fun a_397 () (Seq Element))
(declare-fun a_398 () (Seq Element))
(declare-fun a_399 () (Seq Element))
(declare-fun a1 () (Seq Element))
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
(declare-fun i1 () Int)
(declare-fun i10 () Int)
(declare-fun i11 () Int)
(declare-fun i12 () Int)
(declare-fun i13 () Int)
(declare-fun i14 () Int)
(declare-fun i15 () Int)
(declare-fun i16 () Int)
(declare-fun i17 () Int)
(declare-fun i18 () Int)
(declare-fun i19 () Int)
(declare-fun i2 () Int)
(declare-fun i20 () Int)
(declare-fun i21 () Int)
(declare-fun i22 () Int)
(declare-fun i23 () Int)
(declare-fun i24 () Int)
(declare-fun i25 () Int)
(declare-fun i26 () Int)
(declare-fun i27 () Int)
(declare-fun i28 () Int)
(declare-fun i29 () Int)
(declare-fun i3 () Int)
(declare-fun i30 () Int)
(declare-fun i31 () Int)
(declare-fun i32 () Int)
(declare-fun i33 () Int)
(declare-fun i34 () Int)
(declare-fun i35 () Int)
(declare-fun i36 () Int)
(declare-fun i37 () Int)
(declare-fun i38 () Int)
(declare-fun i39 () Int)
(declare-fun i4 () Int)
(declare-fun i40 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (= a_320 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_321 (seq.update a_320 i2 (seq.unit e2))))
(assert (= a_322 (seq.update a_321 i3 (seq.unit e3))))
(assert (= a_323 (seq.update a_322 i4 (seq.unit e4))))
(assert (= a_324 (seq.update a_323 i5 (seq.unit e5))))
(assert (= a_325 (seq.update a_324 i6 (seq.unit e6))))
(assert (= a_326 (seq.update a_325 i7 (seq.unit e7))))
(assert (= a_327 (seq.update a_326 i8 (seq.unit e8))))
(assert (= a_328 (seq.update a_327 i9 (seq.unit e9))))
(assert (= a_329 (seq.update a_328 i10 (seq.unit e10))))
(assert (= a_330 (seq.update a_329 i11 (seq.unit e11))))
(assert (= a_331 (seq.update a_330 i12 (seq.unit e12))))
(assert (= a_332 (seq.update a_331 i13 (seq.unit e13))))
(assert (= a_333 (seq.update a_332 i14 (seq.unit e14))))
(assert (= a_334 (seq.update a_333 i15 (seq.unit e15))))
(assert (= a_335 (seq.update a_334 i16 (seq.unit e16))))
(assert (= a_336 (seq.update a_335 i17 (seq.unit e17))))
(assert (= a_337 (seq.update a_336 i18 (seq.unit e18))))
(assert (= a_338 (seq.update a_337 i19 (seq.unit e19))))
(assert (= a_339 (seq.update a_338 i20 (seq.unit e20))))
(assert (= a_340 (seq.update a_339 i21 (seq.unit e21))))
(assert (= a_341 (seq.update a_340 i22 (seq.unit e22))))
(assert (= a_342 (seq.update a_341 i23 (seq.unit e23))))
(assert (= a_343 (seq.update a_342 i24 (seq.unit e24))))
(assert (= a_344 (seq.update a_343 i25 (seq.unit e25))))
(assert (= a_345 (seq.update a_344 i26 (seq.unit e26))))
(assert (= a_346 (seq.update a_345 i27 (seq.unit e27))))
(assert (= a_347 (seq.update a_346 i28 (seq.unit e28))))
(assert (= a_348 (seq.update a_347 i29 (seq.unit e29))))
(assert (= a_349 (seq.update a_348 i30 (seq.unit e30))))
(assert (= a_350 (seq.update a_349 i31 (seq.unit e31))))
(assert (= a_351 (seq.update a_350 i32 (seq.unit e32))))
(assert (= a_352 (seq.update a_351 i33 (seq.unit e33))))
(assert (= a_353 (seq.update a_352 i34 (seq.unit e34))))
(assert (= a_354 (seq.update a_353 i35 (seq.unit e35))))
(assert (= a_355 (seq.update a_354 i36 (seq.unit e36))))
(assert (= a_356 (seq.update a_355 i37 (seq.unit e37))))
(assert (= a_357 (seq.update a_356 i38 (seq.unit e38))))
(assert (= a_358 (seq.update a_357 i39 (seq.unit e39))))
(assert (= a_359 (seq.update a_358 i40 (seq.unit e40))))
(assert (= a_360 (seq.update a1 i25 (seq.unit e25))))
(assert (= a_361 (seq.update a_360 i1 (seq.unit e1))))
(assert (= a_362 (seq.update a_361 i12 (seq.unit e12))))
(assert (= a_363 (seq.update a_362 i11 (seq.unit e11))))
(assert (= a_364 (seq.update a_363 i19 (seq.unit e19))))
(assert (= a_365 (seq.update a_364 i14 (seq.unit e14))))
(assert (= a_366 (seq.update a_365 i32 (seq.unit e32))))
(assert (= a_367 (seq.update a_366 i22 (seq.unit e22))))
(assert (= a_368 (seq.update a_367 i15 (seq.unit e15))))
(assert (= a_369 (seq.update a_368 i30 (seq.unit e30))))
(assert (= a_370 (seq.update a_369 i35 (seq.unit e35))))
(assert (= a_371 (seq.update a_370 i18 (seq.unit e18))))
(assert (= a_372 (seq.update a_371 i8 (seq.unit e8))))
(assert (= a_373 (seq.update a_372 i10 (seq.unit e10))))
(assert (= a_374 (seq.update a_373 i34 (seq.unit e34))))
(assert (= a_375 (seq.update a_374 i38 (seq.unit e38))))
(assert (= a_376 (seq.update a_375 i37 (seq.unit e37))))
(assert (= a_377 (seq.update a_376 i7 (seq.unit e7))))
(assert (= a_378 (seq.update a_377 i17 (seq.unit e17))))
(assert (= a_379 (seq.update a_378 i5 (seq.unit e5))))
(assert (= a_380 (seq.update a_379 i9 (seq.unit e9))))
(assert (= a_381 (seq.update a_380 i29 (seq.unit e29))))
(assert (= a_382 (seq.update a_381 i33 (seq.unit e33))))
(assert (= a_383 (seq.update a_382 i6 (seq.unit e6))))
(assert (= a_384 (seq.update a_383 i2 (seq.unit e2))))
(assert (= a_385 (seq.update a_384 i21 (seq.unit e21))))
(assert (= a_386 (seq.update a_385 i40 (seq.unit e40))))
(assert (= a_387 (seq.update a_386 i3 (seq.unit e3))))
(assert (= a_388 (seq.update a_387 i24 (seq.unit e24))))
(assert (= a_389 (seq.update a_388 i36 (seq.unit e36))))
(assert (= a_390 (seq.update a_389 i26 (seq.unit e26))))
(assert (= a_391 (seq.update a_390 i13 (seq.unit e13))))
(assert (= a_392 (seq.update a_391 i28 (seq.unit e28))))
(assert (= a_393 (seq.update a_392 i39 (seq.unit e39))))
(assert (= a_394 (seq.update a_393 i16 (seq.unit e16))))
(assert (= a_395 (seq.update a_394 i4 (seq.unit e4))))
(assert (= a_396 (seq.update a_395 i31 (seq.unit e31))))
(assert (= a_397 (seq.update a_396 i23 (seq.unit e23))))
(assert (= a_398 (seq.update a_397 i27 (seq.unit e27))))
(assert (= a_399 (seq.update a_398 i20 (seq.unit e20))))
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
