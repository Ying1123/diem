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
(declare-fun a_1 () (Seq Element))
(declare-fun a_3 () (Seq Element))
(declare-fun a_5 () (Seq Element))
(declare-fun a_7 () (Seq Element))
(declare-fun e_0 () Element)
(declare-fun e_2 () Element)
(declare-fun e_4 () Element)
(declare-fun e_6 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun a2 () (Seq Element))
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(assert (= a_1 (seq.update a1 i1 (seq.unit e_0))))
(assert (= a_3 (seq.update a2 i1 (seq.unit e_2))))
(assert (= a_5 (seq.update a_1 i1 (seq.unit e_4))))
(assert (= a_7 (seq.update a_3 i2 (seq.unit e_6))))
(assert (= e_0 (seq.nth a2 i1)))
(assert (= e_2 (seq.nth a1 i1)))
(assert (= e_4 (seq.nth a_3 i2)))
(assert (= e_6 (seq.nth a_1 i2)))
(assert (= a_5 a_7))
(assert (not (= a1 a2)))
(check-sat)
(exit)
