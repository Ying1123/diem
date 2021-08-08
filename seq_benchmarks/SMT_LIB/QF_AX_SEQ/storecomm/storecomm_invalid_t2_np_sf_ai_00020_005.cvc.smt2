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
(set-info :status sat)

(declare-sort Element 0)
(declare-fun a_319 () (Seq Element))
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
(declare-fun e3 () Element)
(declare-fun e4 () Element)
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
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (= a_319 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_320 (seq.update a_319 i2 (seq.unit e2))))
(assert (= a_321 (seq.update a_320 i3 (seq.unit e3))))
(assert (= a_322 (seq.update a_321 i4 (seq.unit e4))))
(assert (= a_323 (seq.update a_322 i5 (seq.unit e5))))
(assert (= a_324 (seq.update a_323 i6 (seq.unit e6))))
(assert (= a_325 (seq.update a_324 i7 (seq.unit e7))))
(assert (= a_326 (seq.update a_325 i8 (seq.unit e8))))
(assert (= a_327 (seq.update a_326 i9 (seq.unit e9))))
(assert (= a_328 (seq.update a_327 i10 (seq.unit e10))))
(assert (= a_329 (seq.update a_328 i11 (seq.unit e11))))
(assert (= a_330 (seq.update a_329 i12 (seq.unit e12))))
(assert (= a_331 (seq.update a_330 i13 (seq.unit e13))))
(assert (= a_332 (seq.update a_331 i14 (seq.unit e14))))
(assert (= a_333 (seq.update a_332 i15 (seq.unit e15))))
(assert (= a_334 (seq.update a_333 i16 (seq.unit e16))))
(assert (= a_335 (seq.update a_334 i17 (seq.unit e17))))
(assert (= a_336 (seq.update a_335 i18 (seq.unit e18))))
(assert (= a_337 (seq.update a_336 i19 (seq.unit e19))))
(assert (= a_338 (seq.update a_337 i1 (seq.unit e1))))
(assert (= a_339 (seq.update a1 i9 (seq.unit e9))))
(assert (= a_340 (seq.update a_339 i12 (seq.unit e12))))
(assert (= a_341 (seq.update a_340 i4 (seq.unit e4))))
(assert (= a_342 (seq.update a_341 i2 (seq.unit e2))))
(assert (= a_343 (seq.update a_342 i11 (seq.unit e11))))
(assert (= a_344 (seq.update a_343 i19 (seq.unit e19))))
(assert (= a_345 (seq.update a_344 i1 (seq.unit e1))))
(assert (= a_346 (seq.update a_345 i8 (seq.unit e8))))
(assert (= a_347 (seq.update a_346 i15 (seq.unit e15))))
(assert (= a_348 (seq.update a_347 i10 (seq.unit e10))))
(assert (= a_349 (seq.update a_348 i6 (seq.unit e6))))
(assert (= a_350 (seq.update a_349 i14 (seq.unit e14))))
(assert (= a_351 (seq.update a_350 i3 (seq.unit e3))))
(assert (= a_352 (seq.update a_351 i16 (seq.unit e16))))
(assert (= a_353 (seq.update a_352 i5 (seq.unit e5))))
(assert (= a_354 (seq.update a_353 i18 (seq.unit e18))))
(assert (= a_355 (seq.update a_354 i7 (seq.unit e7))))
(assert (= a_356 (seq.update a_355 i20 (seq.unit e20))))
(assert (= a_357 (seq.update a_356 i13 (seq.unit e13))))
(assert (= a_358 (seq.update a_357 i17 (seq.unit e17))))
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
