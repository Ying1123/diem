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
(assert (let ((?v_0 (seq.update (seq.update a1 i3 (seq.unit (seq.nth a1 i2))) i2 (seq.unit (seq.nth a1 i3))))) (let ((?v_4 (seq.nth ?v_0 i0)) (?v_5 (seq.nth ?v_0 i2))) (let ((?v_1 (seq.update (seq.update ?v_0 i0 (seq.unit ?v_5)) i2 (seq.unit ?v_4)))) (let ((?v_2 (seq.nth ?v_1 i3))) (let ((?v_3 (seq.update (seq.update ?v_1 i3 (seq.unit ?v_2)) i3 (seq.unit ?v_2))) (?v_6 (seq.update (seq.update ?v_0 i2 (seq.unit ?v_4)) i0 (seq.unit ?v_5)))) (let ((?v_7 (seq.nth ?v_6 i3))) (let ((?v_8 (seq.update (seq.update ?v_6 i3 (seq.unit ?v_7)) i3 (seq.unit ?v_7)))) (not (= (seq.update (seq.update ?v_3 i1 (seq.unit (seq.nth ?v_3 i3))) i3 (seq.unit (seq.nth ?v_3 i1))) (seq.update (seq.update ?v_8 i3 (seq.unit (seq.nth ?v_8 i1))) i1 (seq.unit (seq.nth ?v_8 i3)))))))))))))
(check-sat)
(exit)
