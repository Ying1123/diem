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
(declare-fun i3 () Int)
(assert (let ((?v_0 (seq.nth a1 i3))) (let ((?v_1 (seq.update (seq.update a1 i3 (seq.unit ?v_0)) i3 (seq.unit ?v_0)))) (let ((?v_5 (seq.nth ?v_1 i0)) (?v_6 (seq.nth ?v_1 i3))) (let ((?v_2 (seq.update (seq.update ?v_1 i0 (seq.unit ?v_6)) i3 (seq.unit ?v_5)))) (let ((?v_3 (seq.nth ?v_2 i3))) (let ((?v_4 (seq.update (seq.update ?v_2 i3 (seq.unit ?v_3)) i3 (seq.unit ?v_3))) (?v_7 (seq.update (seq.update ?v_1 i3 (seq.unit ?v_5)) i0 (seq.unit ?v_6)))) (let ((?v_8 (seq.nth ?v_7 i3))) (let ((?v_9 (seq.update (seq.update ?v_7 i3 (seq.unit ?v_8)) i3 (seq.unit ?v_8)))) (not (= (seq.update (seq.update ?v_4 i0 (seq.unit (seq.nth ?v_4 i1))) i1 (seq.unit (seq.nth ?v_4 i0))) (seq.update (seq.update ?v_9 i1 (seq.unit (seq.nth ?v_9 i0))) i0 (seq.unit (seq.nth ?v_9 i1))))))))))))))
(check-sat)
(exit)
