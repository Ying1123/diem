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
(declare-fun a_78 () (Seq Element))
(declare-fun a_80 () (Seq Element))
(declare-fun a_82 () (Seq Element))
(declare-fun a_83 () (Seq Element))
(declare-fun a_85 () (Seq Element))
(declare-fun a_86 () (Seq Element))
(declare-fun a_87 () (Seq Element))
(declare-fun a_88 () (Seq Element))
(declare-fun a_90 () (Seq Element))
(declare-fun a_91 () (Seq Element))
(declare-fun a_93 () (Seq Element))
(declare-fun a_94 () (Seq Element))
(declare-fun e_77 () Element)
(declare-fun e_79 () Element)
(declare-fun e_81 () Element)
(declare-fun e_84 () Element)
(declare-fun e_89 () Element)
(declare-fun e_92 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(assert (= a_78 (seq.update a1 i0 (seq.unit e_77))))
(assert (= a_80 (seq.update a_78 i1 (seq.unit e_79))))
(assert (= a_82 (seq.update a_80 i0 (seq.unit e_81))))
(assert (= a_83 (seq.update a_82 i0 (seq.unit e_81))))
(assert (= a_85 (seq.update a_83 i2 (seq.unit e_84))))
(assert (= a_86 (seq.update a_85 i2 (seq.unit e_84))))
(assert (= a_87 (seq.update a1 i1 (seq.unit e_79))))
(assert (= a_88 (seq.update a_87 i0 (seq.unit e_77))))
(assert (= a_90 (seq.update a_88 i0 (seq.unit e_89))))
(assert (= a_91 (seq.update a_90 i0 (seq.unit e_89))))
(assert (= a_93 (seq.update a_91 i2 (seq.unit e_92))))
(assert (= a_94 (seq.update a_93 i2 (seq.unit e_92))))
(assert (= e_77 (seq.nth a1 i1)))
(assert (= e_79 (seq.nth a1 i0)))
(assert (= e_81 (seq.nth a_80 i0)))
(assert (= e_84 (seq.nth a_83 i2)))
(assert (= e_89 (seq.nth a_88 i0)))
(assert (= e_92 (seq.nth a_91 i2)))
(assert (not (= a_86 a_94)))
(check-sat)
(exit)
