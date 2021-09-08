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
(declare-fun a_317 () (Array Index Element))
(declare-fun a_319 () (Array Index Element))
(declare-fun a_321 () (Array Index Element))
(declare-fun a_323 () (Array Index Element))
(declare-fun a_325 () (Array Index Element))
(declare-fun a_327 () (Array Index Element))
(declare-fun a_329 () (Array Index Element))
(declare-fun a_331 () (Array Index Element))
(declare-fun a_333 () (Array Index Element))
(declare-fun a_335 () (Array Index Element))
(declare-fun a_337 () (Array Index Element))
(declare-fun a_339 () (Array Index Element))
(declare-fun a_340 () (Array Index Element))
(declare-fun a_341 () (Array Index Element))
(declare-fun a_343 () (Array Index Element))
(declare-fun a_345 () (Array Index Element))
(declare-fun a_347 () (Array Index Element))
(declare-fun a_349 () (Array Index Element))
(declare-fun a_351 () (Array Index Element))
(declare-fun a_353 () (Array Index Element))
(declare-fun a_355 () (Array Index Element))
(declare-fun a_357 () (Array Index Element))
(declare-fun a_359 () (Array Index Element))
(declare-fun a_361 () (Array Index Element))
(declare-fun e_316 () Element)
(declare-fun e_318 () Element)
(declare-fun e_320 () Element)
(declare-fun e_322 () Element)
(declare-fun e_324 () Element)
(declare-fun e_326 () Element)
(declare-fun e_328 () Element)
(declare-fun e_330 () Element)
(declare-fun e_332 () Element)
(declare-fun e_334 () Element)
(declare-fun e_336 () Element)
(declare-fun e_338 () Element)
(declare-fun e_342 () Element)
(declare-fun e_344 () Element)
(declare-fun e_346 () Element)
(declare-fun e_348 () Element)
(declare-fun e_350 () Element)
(declare-fun e_352 () Element)
(declare-fun e_354 () Element)
(declare-fun e_356 () Element)
(declare-fun e_358 () Element)
(declare-fun e_360 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(assert (= a_317 (store a1 i5 e_316)))
(assert (= a_319 (store a_317 i3 e_318)))
(assert (= a_321 (store a_319 i0 e_320)))
(assert (= a_323 (store a_321 i1 e_322)))
(assert (= a_325 (store a_323 i1 e_324)))
(assert (= a_327 (store a_325 i4 e_326)))
(assert (= a_329 (store a_327 i4 e_328)))
(assert (= a_331 (store a_329 i0 e_330)))
(assert (= a_333 (store a_331 i4 e_332)))
(assert (= a_335 (store a_333 i5 e_334)))
(assert (= a_337 (store a_335 i2 e_336)))
(assert (= a_339 (store a_337 i0 e_338)))
(assert (= a_340 (store a1 i3 e_318)))
(assert (= a_341 (store a_340 i5 e_316)))
(assert (= a_343 (store a_341 i1 e_342)))
(assert (= a_345 (store a_343 i0 e_344)))
(assert (= a_347 (store a_345 i4 e_346)))
(assert (= a_349 (store a_347 i1 e_348)))
(assert (= a_351 (store a_349 i4 e_350)))
(assert (= a_353 (store a_351 i0 e_352)))
(assert (= a_355 (store a_353 i4 e_354)))
(assert (= a_357 (store a_355 i5 e_356)))
(assert (= a_359 (store a_357 i0 e_358)))
(assert (= a_361 (store a_359 i2 e_360)))
(assert (= e_316 (select a1 i3)))
(assert (= e_318 (select a1 i5)))
(assert (= e_320 (select a_319 i1)))
(assert (= e_322 (select a_319 i0)))
(assert (= e_324 (select a_323 i4)))
(assert (= e_326 (select a_323 i1)))
(assert (= e_328 (select a_327 i0)))
(assert (= e_330 (select a_327 i4)))
(assert (= e_332 (select a_331 i5)))
(assert (= e_334 (select a_331 i4)))
(assert (= e_336 (select a_335 i0)))
(assert (= e_338 (select a_335 i2)))
(assert (= e_342 (select a_341 i0)))
(assert (= e_344 (select a_341 i1)))
(assert (= e_346 (select a_345 i1)))
(assert (= e_348 (select a_345 i4)))
(assert (= e_350 (select a_349 i0)))
(assert (= e_352 (select a_349 i4)))
(assert (= e_354 (select a_353 i5)))
(assert (= e_356 (select a_353 i4)))
(assert (= e_358 (select a_357 i2)))
(assert (= e_360 (select a_357 i0)))
(assert (not (= a_339 a_361)))
(check-sat)
(exit)