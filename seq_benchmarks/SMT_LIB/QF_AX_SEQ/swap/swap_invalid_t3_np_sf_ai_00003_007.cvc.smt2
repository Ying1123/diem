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
(declare-fun a_47 () (Seq Element))
(declare-fun a_48 () (Seq Element))
(declare-fun a_50 () (Seq Element))
(declare-fun a_52 () (Seq Element))
(declare-fun a_54 () (Seq Element))
(declare-fun a_56 () (Seq Element))
(declare-fun a_57 () (Seq Element))
(declare-fun a_58 () (Seq Element))
(declare-fun e_46 () Element)
(declare-fun e_49 () Element)
(declare-fun e_51 () Element)
(declare-fun e_53 () Element)
(declare-fun e_55 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(assert (= a_47 (seq.update a1 i0 (seq.unit e_46))))
(assert (= a_48 (seq.update a_47 i0 (seq.unit e_46))))
(assert (= a_50 (seq.update a_48 i1 (seq.unit e_49))))
(assert (= a_52 (seq.update a_50 i2 (seq.unit e_51))))
(assert (= a_54 (seq.update a_52 i1 (seq.unit e_53))))
(assert (= a_56 (seq.update a_54 i2 (seq.unit e_55))))
(assert (= a_57 (seq.update a_52 i2 (seq.unit e_53))))
(assert (= a_58 (seq.update a_57 i2 (seq.unit e_53))))
(assert (= e_46 (seq.nth a1 i0)))
(assert (= e_49 (seq.nth a_48 i2)))
(assert (= e_51 (seq.nth a_48 i1)))
(assert (= e_53 (seq.nth a_52 i2)))
(assert (= e_55 (seq.nth a_52 i1)))
(assert (not (= a_56 a_58)))
(check-sat)
(exit)
