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
(declare-fun a_419 () (Array Index Element))
(declare-fun a_421 () (Array Index Element))
(declare-fun a_423 () (Array Index Element))
(declare-fun a_425 () (Array Index Element))
(declare-fun a_427 () (Array Index Element))
(declare-fun a_429 () (Array Index Element))
(declare-fun a_431 () (Array Index Element))
(declare-fun a_433 () (Array Index Element))
(declare-fun a_435 () (Array Index Element))
(declare-fun a_437 () (Array Index Element))
(declare-fun a_439 () (Array Index Element))
(declare-fun a_440 () (Array Index Element))
(declare-fun a_441 () (Array Index Element))
(declare-fun a_443 () (Array Index Element))
(declare-fun a_445 () (Array Index Element))
(declare-fun a_447 () (Array Index Element))
(declare-fun a_449 () (Array Index Element))
(declare-fun a_451 () (Array Index Element))
(declare-fun a_453 () (Array Index Element))
(declare-fun a_455 () (Array Index Element))
(declare-fun a_457 () (Array Index Element))
(declare-fun a_459 () (Array Index Element))
(declare-fun a_461 () (Array Index Element))
(declare-fun a_463 () (Array Index Element))
(declare-fun a_465 () (Array Index Element))
(declare-fun a_467 () (Array Index Element))
(declare-fun a_469 () (Array Index Element))
(declare-fun a_471 () (Array Index Element))
(declare-fun a_473 () (Array Index Element))
(declare-fun e_404 () Element)
(declare-fun e_406 () Element)
(declare-fun e_408 () Element)
(declare-fun e_410 () Element)
(declare-fun e_412 () Element)
(declare-fun e_414 () Element)
(declare-fun e_416 () Element)
(declare-fun e_418 () Element)
(declare-fun e_420 () Element)
(declare-fun e_422 () Element)
(declare-fun e_424 () Element)
(declare-fun e_426 () Element)
(declare-fun e_428 () Element)
(declare-fun e_430 () Element)
(declare-fun e_432 () Element)
(declare-fun e_434 () Element)
(declare-fun e_436 () Element)
(declare-fun e_438 () Element)
(declare-fun e_442 () Element)
(declare-fun e_444 () Element)
(declare-fun e_446 () Element)
(declare-fun e_448 () Element)
(declare-fun e_450 () Element)
(declare-fun e_452 () Element)
(declare-fun e_454 () Element)
(declare-fun e_456 () Element)
(declare-fun e_458 () Element)
(declare-fun e_460 () Element)
(declare-fun e_462 () Element)
(declare-fun e_464 () Element)
(declare-fun e_466 () Element)
(declare-fun e_468 () Element)
(declare-fun e_470 () Element)
(declare-fun e_472 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(declare-fun i7 () Index)
(declare-fun i8 () Index)
(assert (= a_405 (store a1 i4 e_404)))
(assert (= a_407 (store a_405 i0 e_406)))
(assert (= a_409 (store a_407 i6 e_408)))
(assert (= a_411 (store a_409 i1 e_410)))
(assert (= a_413 (store a_411 i2 e_412)))
(assert (= a_415 (store a_413 i4 e_414)))
(assert (= a_417 (store a_415 i1 e_416)))
(assert (= a_419 (store a_417 i4 e_418)))
(assert (= a_421 (store a_419 i0 e_420)))
(assert (= a_423 (store a_421 i5 e_422)))
(assert (= a_425 (store a_423 i7 e_424)))
(assert (= a_427 (store a_425 i5 e_426)))
(assert (= a_429 (store a_427 i8 e_428)))
(assert (= a_431 (store a_429 i6 e_430)))
(assert (= a_433 (store a_431 i4 e_432)))
(assert (= a_435 (store a_433 i3 e_434)))
(assert (= a_437 (store a_435 i4 e_436)))
(assert (= a_439 (store a_437 i3 e_438)))
(assert (= a_440 (store a1 i0 e_406)))
(assert (= a_441 (store a_440 i4 e_404)))
(assert (= a_443 (store a_441 i1 e_442)))
(assert (= a_445 (store a_443 i6 e_444)))
(assert (= a_447 (store a_445 i2 e_446)))
(assert (= a_449 (store a_447 i4 e_448)))
(assert (= a_451 (store a_449 i1 e_450)))
(assert (= a_453 (store a_451 i4 e_452)))
(assert (= a_455 (store a_453 i0 e_454)))
(assert (= a_457 (store a_455 i5 e_456)))
(assert (= a_459 (store a_457 i7 e_458)))
(assert (= a_461 (store a_459 i5 e_460)))
(assert (= a_463 (store a_461 i8 e_462)))
(assert (= a_465 (store a_463 i6 e_464)))
(assert (= a_467 (store a_465 i3 e_466)))
(assert (= a_469 (store a_467 i4 e_468)))
(assert (= a_471 (store a_469 i4 e_470)))
(assert (= a_473 (store a_471 i3 e_472)))
(assert (= e_404 (select a1 i0)))
(assert (= e_406 (select a1 i4)))
(assert (= e_408 (select a_407 i1)))
(assert (= e_410 (select a_407 i6)))
(assert (= e_412 (select a_411 i4)))
(assert (= e_414 (select a_411 i2)))
(assert (= e_416 (select a_415 i4)))
(assert (= e_418 (select a_415 i1)))
(assert (= e_420 (select a_419 i5)))
(assert (= e_422 (select a_419 i0)))
(assert (= e_424 (select a_423 i5)))
(assert (= e_426 (select a_423 i7)))
(assert (= e_428 (select a_427 i6)))
(assert (= e_430 (select a_427 i8)))
(assert (= e_432 (select a_431 i3)))
(assert (= e_434 (select a_431 i4)))
(assert (= e_436 (select a_435 i3)))
(assert (= e_438 (select a_435 i4)))
(assert (= e_442 (select a_441 i6)))
(assert (= e_444 (select a_441 i1)))
(assert (= e_446 (select a_445 i4)))
(assert (= e_448 (select a_445 i2)))
(assert (= e_450 (select a_449 i4)))
(assert (= e_452 (select a_449 i1)))
(assert (= e_454 (select a_453 i5)))
(assert (= e_456 (select a_453 i0)))
(assert (= e_458 (select a_457 i5)))
(assert (= e_460 (select a_457 i7)))
(assert (= e_462 (select a_461 i6)))
(assert (= e_464 (select a_461 i8)))
(assert (= e_466 (select a_465 i4)))
(assert (= e_468 (select a_465 i3)))
(assert (= e_470 (select a_469 i3)))
(assert (= e_472 (select a_469 i4)))
(assert (not (= a_439 a_473)))
(check-sat)
(exit)
