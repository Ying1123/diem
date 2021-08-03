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
(declare-fun a_76 () (Seq Element))
(declare-fun a_78 () (Seq Element))
(declare-fun a_80 () (Seq Element))
(declare-fun a_81 () (Seq Element))
(declare-fun a_82 () (Seq Element))
(declare-fun a_83 () (Seq Element))
(declare-fun a_85 () (Seq Element))
(declare-fun a_86 () (Seq Element))
(declare-fun e_75 () Element)
(declare-fun e_77 () Element)
(declare-fun e_79 () Element)
(declare-fun e_84 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(assert (= a_76 (seq.update a1 i1 (seq.unit e_75))))
(assert (= a_78 (seq.update a_76 i0 (seq.unit e_77))))
(assert (= a_80 (seq.update a_78 i1 (seq.unit e_79))))
(assert (= a_81 (seq.update a_80 i1 (seq.unit e_79))))
(assert (= a_82 (seq.update a1 i0 (seq.unit e_77))))
(assert (= a_83 (seq.update a_82 i1 (seq.unit e_75))))
(assert (= a_85 (seq.update a_83 i1 (seq.unit e_84))))
(assert (= a_86 (seq.update a_85 i1 (seq.unit e_84))))
(assert (= e_75 (seq.nth a1 i0)))
(assert (= e_77 (seq.nth a1 i1)))
(assert (= e_79 (seq.nth a_78 i1)))
(assert (= e_84 (seq.nth a_83 i1)))
(assert (not (= a_81 a_86)))
(check-sat)
(exit)
