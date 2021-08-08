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
(declare-fun a_460 () (Array Index Element))
(declare-fun a_461 () (Array Index Element))
(declare-fun a_463 () (Array Index Element))
(declare-fun a_465 () (Array Index Element))
(declare-fun a_467 () (Array Index Element))
(declare-fun a_469 () (Array Index Element))
(declare-fun a_471 () (Array Index Element))
(declare-fun a_473 () (Array Index Element))
(declare-fun a_475 () (Array Index Element))
(declare-fun a_477 () (Array Index Element))
(declare-fun e_440 () Element)
(declare-fun e_442 () Element)
(declare-fun e_444 () Element)
(declare-fun e_446 () Element)
(declare-fun e_448 () Element)
(declare-fun e_450 () Element)
(declare-fun e_452 () Element)
(declare-fun e_454 () Element)
(declare-fun e_456 () Element)
(declare-fun e_458 () Element)
(declare-fun e_462 () Element)
(declare-fun e_464 () Element)
(declare-fun e_466 () Element)
(declare-fun e_468 () Element)
(declare-fun e_470 () Element)
(declare-fun e_472 () Element)
(declare-fun e_474 () Element)
(declare-fun e_476 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i4 () Index)
(assert (= a_441 (store a1 i2 e_440)))
(assert (= a_443 (store a_441 i0 e_442)))
(assert (= a_445 (store a_443 i1 e_444)))
(assert (= a_447 (store a_445 i2 e_446)))
(assert (= a_449 (store a_447 i4 e_448)))
(assert (= a_451 (store a_449 i2 e_450)))
(assert (= a_453 (store a_451 i4 e_452)))
(assert (= a_455 (store a_453 i1 e_454)))
(assert (= a_457 (store a_455 i0 e_456)))
(assert (= a_459 (store a_457 i2 e_458)))
(assert (= a_460 (store a1 i0 e_442)))
(assert (= a_461 (store a_460 i2 e_440)))
(assert (= a_463 (store a_461 i2 e_462)))
(assert (= a_465 (store a_463 i1 e_464)))
(assert (= a_467 (store a_465 i2 e_466)))
(assert (= a_469 (store a_467 i4 e_468)))
(assert (= a_471 (store a_469 i1 e_470)))
(assert (= a_473 (store a_471 i4 e_472)))
(assert (= a_475 (store a_473 i0 e_474)))
(assert (= a_477 (store a_475 i2 e_476)))
(assert (= e_440 (select a1 i0)))
(assert (= e_442 (select a1 i2)))
(assert (= e_444 (select a_443 i2)))
(assert (= e_446 (select a_443 i1)))
(assert (= e_448 (select a_447 i2)))
(assert (= e_450 (select a_447 i4)))
(assert (= e_452 (select a_451 i1)))
(assert (= e_454 (select a_451 i4)))
(assert (= e_456 (select a_455 i2)))
(assert (= e_458 (select a_455 i0)))
(assert (= e_462 (select a_461 i1)))
(assert (= e_464 (select a_461 i2)))
(assert (= e_466 (select a_465 i4)))
(assert (= e_468 (select a_465 i2)))
(assert (= e_470 (select a_469 i4)))
(assert (= e_472 (select a_469 i1)))
(assert (= e_474 (select a_473 i2)))
(assert (= e_476 (select a_473 i0)))
(assert (not (= a_459 a_477)))
(check-sat)
(exit)
