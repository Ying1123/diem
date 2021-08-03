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
(declare-fun a_75 () (Seq Element))
(declare-fun a_77 () (Seq Element))
(declare-fun a_79 () (Seq Element))
(declare-fun a_80 () (Seq Element))
(declare-fun a_81 () (Seq Element))
(declare-fun a_82 () (Seq Element))
(declare-fun a_84 () (Seq Element))
(declare-fun a_86 () (Seq Element))
(declare-fun e_74 () Element)
(declare-fun e_76 () Element)
(declare-fun e_78 () Element)
(declare-fun e_83 () Element)
(declare-fun e_85 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(assert (= a_75 (seq.update a1 i1 (seq.unit e_74))))
(assert (= a_77 (seq.update a_75 i0 (seq.unit e_76))))
(assert (= a_79 (seq.update a_77 i1 (seq.unit e_78))))
(assert (= a_80 (seq.update a_79 i1 (seq.unit e_78))))
(assert (= a_81 (seq.update a1 i0 (seq.unit e_76))))
(assert (= a_82 (seq.update a_81 i1 (seq.unit e_74))))
(assert (= a_84 (seq.update a_82 i0 (seq.unit e_83))))
(assert (= a_86 (seq.update a_84 i1 (seq.unit e_85))))
(assert (= e_74 (seq.nth a1 i0)))
(assert (= e_76 (seq.nth a1 i1)))
(assert (= e_78 (seq.nth a_77 i1)))
(assert (= e_83 (seq.nth a_82 i1)))
(assert (= e_85 (seq.nth a_82 i0)))
(assert (not (= a_80 a_86)))
(check-sat)
(exit)
