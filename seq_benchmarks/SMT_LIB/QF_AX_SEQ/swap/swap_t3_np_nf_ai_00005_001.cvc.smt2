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
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(assert (let ((?v_0 (seq.nth a1 i1))) (let ((?v_1 (seq.update (seq.update a1 i1 (seq.unit ?v_0)) i1 (seq.unit ?v_0)))) (let ((?v_2 (seq.nth ?v_1 i3))) (let ((?v_3 (seq.update (seq.update ?v_1 i3 (seq.unit ?v_2)) i3 (seq.unit ?v_2)))) (let ((?v_4 (seq.update (seq.update ?v_3 i2 (seq.unit (seq.nth ?v_3 i3))) i3 (seq.unit (seq.nth ?v_3 i2))))) (let ((?v_5 (seq.update (seq.update ?v_4 i3 (seq.unit (seq.nth ?v_4 i4))) i4 (seq.unit (seq.nth ?v_4 i3))))) (let ((?v_6 (seq.update (seq.update ?v_5 i3 (seq.unit (seq.nth ?v_5 i0))) i0 (seq.unit (seq.nth ?v_5 i3))))) (not (= ?v_6 ?v_6))))))))))
(check-sat)
(exit)
