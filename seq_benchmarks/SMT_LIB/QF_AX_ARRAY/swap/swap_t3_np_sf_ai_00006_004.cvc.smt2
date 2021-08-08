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
(declare-fun a_405 () (Array Index Element))
(declare-fun a_407 () (Array Index Element))
(declare-fun a_409 () (Array Index Element))
(declare-fun a_411 () (Array Index Element))
(declare-fun a_413 () (Array Index Element))
(declare-fun a_415 () (Array Index Element))
(declare-fun a_417 () (Array Index Element))
(declare-fun a_418 () (Array Index Element))
(declare-fun a_420 () (Array Index Element))
(declare-fun a_422 () (Array Index Element))
(declare-fun a_424 () (Array Index Element))
(declare-fun a_425 () (Array Index Element))
(declare-fun a_426 () (Array Index Element))
(declare-fun a_427 () (Array Index Element))
(declare-fun a_429 () (Array Index Element))
(declare-fun a_431 () (Array Index Element))
(declare-fun a_433 () (Array Index Element))
(declare-fun a_435 () (Array Index Element))
(declare-fun a_437 () (Array Index Element))
(declare-fun a_438 () (Array Index Element))
(declare-fun a_440 () (Array Index Element))
(declare-fun a_442 () (Array Index Element))
(declare-fun a_444 () (Array Index Element))
(declare-fun a_445 () (Array Index Element))
(declare-fun e_404 () Element)
(declare-fun e_406 () Element)
(declare-fun e_408 () Element)
(declare-fun e_410 () Element)
(declare-fun e_412 () Element)
(declare-fun e_414 () Element)
(declare-fun e_416 () Element)
(declare-fun e_419 () Element)
(declare-fun e_421 () Element)
(declare-fun e_423 () Element)
(declare-fun e_428 () Element)
(declare-fun e_430 () Element)
(declare-fun e_432 () Element)
(declare-fun e_434 () Element)
(declare-fun e_436 () Element)
(declare-fun e_439 () Element)
(declare-fun e_441 () Element)
(declare-fun e_443 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(assert (= a_405 (store a1 i1 e_404)))
(assert (= a_407 (store a_405 i4 e_406)))
(assert (= a_409 (store a_407 i3 e_408)))
(assert (= a_411 (store a_409 i1 e_410)))
(assert (= a_413 (store a_411 i1 e_412)))
(assert (= a_415 (store a_413 i4 e_414)))
(assert (= a_417 (store a_415 i2 e_416)))
(assert (= a_418 (store a_417 i2 e_416)))
(assert (= a_420 (store a_418 i3 e_419)))
(assert (= a_422 (store a_420 i5 e_421)))
(assert (= a_424 (store a_422 i4 e_423)))
(assert (= a_425 (store a_424 i4 e_423)))
(assert (= a_426 (store a1 i4 e_406)))
(assert (= a_427 (store a_426 i1 e_404)))
(assert (= a_429 (store a_427 i3 e_428)))
(assert (= a_431 (store a_429 i1 e_430)))
(assert (= a_433 (store a_431 i1 e_432)))
(assert (= a_435 (store a_433 i4 e_434)))
(assert (= a_437 (store a_435 i2 e_436)))
(assert (= a_438 (store a_437 i2 e_436)))
(assert (= a_440 (store a_438 i5 e_439)))
(assert (= a_442 (store a_440 i3 e_441)))
(assert (= a_444 (store a_442 i4 e_443)))
(assert (= a_445 (store a_444 i4 e_443)))
(assert (= e_404 (select a1 i4)))
(assert (= e_406 (select a1 i1)))
(assert (= e_408 (select a_407 i1)))
(assert (= e_410 (select a_407 i3)))
(assert (= e_412 (select a_411 i4)))
(assert (= e_414 (select a_411 i1)))
(assert (= e_416 (select a_415 i2)))
(assert (= e_419 (select a_418 i5)))
(assert (= e_421 (select a_418 i3)))
(assert (= e_423 (select a_422 i4)))
(assert (= e_428 (select a_427 i1)))
(assert (= e_430 (select a_427 i3)))
(assert (= e_432 (select a_431 i4)))
(assert (= e_434 (select a_431 i1)))
(assert (= e_436 (select a_435 i2)))
(assert (= e_439 (select a_438 i3)))
(assert (= e_441 (select a_438 i5)))
(assert (= e_443 (select a_442 i4)))
(assert (not (= a_425 a_445)))
(check-sat)
(exit)
