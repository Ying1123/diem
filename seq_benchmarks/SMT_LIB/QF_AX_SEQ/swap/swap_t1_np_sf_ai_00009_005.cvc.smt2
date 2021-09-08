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
(declare-fun a_543 () (Seq Element))
(declare-fun a_545 () (Seq Element))
(declare-fun a_547 () (Seq Element))
(declare-fun a_549 () (Seq Element))
(declare-fun a_551 () (Seq Element))
(declare-fun a_553 () (Seq Element))
(declare-fun a_555 () (Seq Element))
(declare-fun a_557 () (Seq Element))
(declare-fun a_559 () (Seq Element))
(declare-fun a_561 () (Seq Element))
(declare-fun a_563 () (Seq Element))
(declare-fun a_565 () (Seq Element))
(declare-fun a_567 () (Seq Element))
(declare-fun a_569 () (Seq Element))
(declare-fun a_571 () (Seq Element))
(declare-fun a_573 () (Seq Element))
(declare-fun a_575 () (Seq Element))
(declare-fun a_577 () (Seq Element))
(declare-fun a_578 () (Seq Element))
(declare-fun a_579 () (Seq Element))
(declare-fun a_581 () (Seq Element))
(declare-fun a_583 () (Seq Element))
(declare-fun a_585 () (Seq Element))
(declare-fun a_587 () (Seq Element))
(declare-fun a_589 () (Seq Element))
(declare-fun a_591 () (Seq Element))
(declare-fun a_593 () (Seq Element))
(declare-fun a_595 () (Seq Element))
(declare-fun e_542 () Element)
(declare-fun e_544 () Element)
(declare-fun e_546 () Element)
(declare-fun e_548 () Element)
(declare-fun e_550 () Element)
(declare-fun e_552 () Element)
(declare-fun e_554 () Element)
(declare-fun e_556 () Element)
(declare-fun e_558 () Element)
(declare-fun e_560 () Element)
(declare-fun e_562 () Element)
(declare-fun e_564 () Element)
(declare-fun e_566 () Element)
(declare-fun e_568 () Element)
(declare-fun e_570 () Element)
(declare-fun e_572 () Element)
(declare-fun e_574 () Element)
(declare-fun e_576 () Element)
(declare-fun e_580 () Element)
(declare-fun e_582 () Element)
(declare-fun e_584 () Element)
(declare-fun e_586 () Element)
(declare-fun e_588 () Element)
(declare-fun e_590 () Element)
(declare-fun e_592 () Element)
(declare-fun e_594 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(assert (= a_543 (seq.update a1 i7 (seq.unit e_542))))
(assert (= a_545 (seq.update a_543 i4 (seq.unit e_544))))
(assert (= a_547 (seq.update a_545 i8 (seq.unit e_546))))
(assert (= a_549 (seq.update a_547 i3 (seq.unit e_548))))
(assert (= a_551 (seq.update a_549 i5 (seq.unit e_550))))
(assert (= a_553 (seq.update a_551 i2 (seq.unit e_552))))
(assert (= a_555 (seq.update a_553 i1 (seq.unit e_554))))
(assert (= a_557 (seq.update a_555 i0 (seq.unit e_556))))
(assert (= a_559 (seq.update a_557 i5 (seq.unit e_558))))
(assert (= a_561 (seq.update a_559 i2 (seq.unit e_560))))
(assert (= a_563 (seq.update a_561 i0 (seq.unit e_562))))
(assert (= a_565 (seq.update a_563 i2 (seq.unit e_564))))
(assert (= a_567 (seq.update a_565 i7 (seq.unit e_566))))
(assert (= a_569 (seq.update a_567 i2 (seq.unit e_568))))
(assert (= a_571 (seq.update a_569 i8 (seq.unit e_570))))
(assert (= a_573 (seq.update a_571 i1 (seq.unit e_572))))
(assert (= a_575 (seq.update a_573 i4 (seq.unit e_574))))
(assert (= a_577 (seq.update a_575 i2 (seq.unit e_576))))
(assert (= a_578 (seq.update a_557 i2 (seq.unit e_560))))
(assert (= a_579 (seq.update a_578 i5 (seq.unit e_558))))
(assert (= a_581 (seq.update a_579 i0 (seq.unit e_580))))
(assert (= a_583 (seq.update a_581 i2 (seq.unit e_582))))
(assert (= a_585 (seq.update a_583 i2 (seq.unit e_584))))
(assert (= a_587 (seq.update a_585 i7 (seq.unit e_586))))
(assert (= a_589 (seq.update a_587 i8 (seq.unit e_588))))
(assert (= a_591 (seq.update a_589 i1 (seq.unit e_590))))
(assert (= a_593 (seq.update a_591 i2 (seq.unit e_592))))
(assert (= a_595 (seq.update a_593 i4 (seq.unit e_594))))
(assert (= e_542 (seq.nth a1 i4)))
(assert (= e_544 (seq.nth a1 i7)))
(assert (= e_546 (seq.nth a_545 i3)))
(assert (= e_548 (seq.nth a_545 i8)))
(assert (= e_550 (seq.nth a_549 i2)))
(assert (= e_552 (seq.nth a_549 i5)))
(assert (= e_554 (seq.nth a_553 i0)))
(assert (= e_556 (seq.nth a_553 i1)))
(assert (= e_558 (seq.nth a_557 i2)))
(assert (= e_560 (seq.nth a_557 i5)))
(assert (= e_562 (seq.nth a_561 i2)))
(assert (= e_564 (seq.nth a_561 i0)))
(assert (= e_566 (seq.nth a_565 i2)))
(assert (= e_568 (seq.nth a_565 i7)))
(assert (= e_570 (seq.nth a_569 i1)))
(assert (= e_572 (seq.nth a_569 i8)))
(assert (= e_574 (seq.nth a_573 i2)))
(assert (= e_576 (seq.nth a_573 i4)))
(assert (= e_580 (seq.nth a_579 i2)))
(assert (= e_582 (seq.nth a_579 i0)))
(assert (= e_584 (seq.nth a_583 i7)))
(assert (= e_586 (seq.nth a_583 i2)))
(assert (= e_588 (seq.nth a_587 i1)))
(assert (= e_590 (seq.nth a_587 i8)))
(assert (= e_592 (seq.nth a_591 i4)))
(assert (= e_594 (seq.nth a_591 i2)))
(assert (not (= a_577 a_595)))
(check-sat)
(exit)