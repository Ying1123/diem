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
(declare-fun a_10 () (Seq Element))
(declare-fun a_12 () (Seq Element))
(declare-fun a_14 () (Seq Element))
(declare-fun a_15 () (Seq Element))
(declare-fun a_16 () (Seq Element))
(declare-fun a_17 () (Seq Element))
(declare-fun a_19 () (Seq Element))
(declare-fun a_21 () (Seq Element))
(declare-fun e_11 () Element)
(declare-fun e_13 () Element)
(declare-fun e_18 () Element)
(declare-fun e_20 () Element)
(declare-fun e_9 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(assert (= a_10 (seq.update a1 i0 (seq.unit e_9))))
(assert (= a_12 (seq.update a_10 i1 (seq.unit e_11))))
(assert (= a_14 (seq.update a_12 i1 (seq.unit e_13))))
(assert (= a_15 (seq.update a_14 i1 (seq.unit e_13))))
(assert (= a_16 (seq.update a1 i1 (seq.unit e_11))))
(assert (= a_17 (seq.update a_16 i0 (seq.unit e_9))))
(assert (= a_19 (seq.update a_17 i1 (seq.unit e_18))))
(assert (= a_21 (seq.update a_19 i0 (seq.unit e_20))))
(assert (= e_11 (seq.nth a1 i0)))
(assert (= e_13 (seq.nth a_12 i1)))
(assert (= e_18 (seq.nth a_17 i0)))
(assert (= e_20 (seq.nth a_17 i1)))
(assert (= e_9 (seq.nth a1 i1)))
(assert (not (= a_15 a_21)))
(check-sat)
(exit)
