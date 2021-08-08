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
(declare-fun a_45 () (Seq Element))
(declare-fun a_46 () (Seq Element))
(declare-fun a_48 () (Seq Element))
(declare-fun a_50 () (Seq Element))
(declare-fun a_52 () (Seq Element))
(declare-fun a_54 () (Seq Element))
(declare-fun a_55 () (Seq Element))
(declare-fun a_56 () (Seq Element))
(declare-fun e_44 () Element)
(declare-fun e_47 () Element)
(declare-fun e_49 () Element)
(declare-fun e_51 () Element)
(declare-fun e_53 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(assert (= a_45 (seq.update a1 i0 (seq.unit e_44))))
(assert (= a_46 (seq.update a_45 i0 (seq.unit e_44))))
(assert (= a_48 (seq.update a_46 i1 (seq.unit e_47))))
(assert (= a_50 (seq.update a_48 i2 (seq.unit e_49))))
(assert (= a_52 (seq.update a_50 i1 (seq.unit e_51))))
(assert (= a_54 (seq.update a_52 i2 (seq.unit e_53))))
(assert (= a_55 (seq.update a_50 i2 (seq.unit e_53))))
(assert (= a_56 (seq.update a_55 i1 (seq.unit e_51))))
(assert (= e_44 (seq.nth a1 i0)))
(assert (= e_47 (seq.nth a_46 i2)))
(assert (= e_49 (seq.nth a_46 i1)))
(assert (= e_51 (seq.nth a_50 i2)))
(assert (= e_53 (seq.nth a_50 i1)))
(assert (not (= a_54 a_56)))
(check-sat)
(exit)
