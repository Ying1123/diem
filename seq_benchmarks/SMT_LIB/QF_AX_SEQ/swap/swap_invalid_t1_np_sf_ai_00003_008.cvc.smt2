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
(declare-fun a_14 () (Seq Element))
(declare-fun a_15 () (Seq Element))
(declare-fun a_17 () (Seq Element))
(declare-fun a_18 () (Seq Element))
(declare-fun a_20 () (Seq Element))
(declare-fun a_22 () (Seq Element))
(declare-fun a_23 () (Seq Element))
(declare-fun a_24 () (Seq Element))
(declare-fun e_13 () Element)
(declare-fun e_16 () Element)
(declare-fun e_19 () Element)
(declare-fun e_21 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(assert (= a_14 (seq.update a1 i1 (seq.unit e_13))))
(assert (= a_15 (seq.update a_14 i1 (seq.unit e_13))))
(assert (= a_17 (seq.update a_15 i1 (seq.unit e_16))))
(assert (= a_18 (seq.update a_17 i1 (seq.unit e_16))))
(assert (= a_20 (seq.update a_18 i1 (seq.unit e_19))))
(assert (= a_22 (seq.update a_20 i2 (seq.unit e_21))))
(assert (= a_23 (seq.update a_18 i2 (seq.unit e_19))))
(assert (= a_24 (seq.update a_23 i2 (seq.unit e_19))))
(assert (= e_13 (seq.nth a1 i1)))
(assert (= e_16 (seq.nth a_15 i1)))
(assert (= e_19 (seq.nth a_18 i2)))
(assert (= e_21 (seq.nth a_18 i1)))
(assert (not (= a_22 a_24)))
(check-sat)
(exit)
