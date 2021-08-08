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
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(assert (let ((?v_6 (seq.nth a1 i0)) (?v_7 (seq.nth a1 i1))) (let ((?v_0 (seq.update (seq.update a1 i0 (seq.unit ?v_7)) i1 (seq.unit ?v_6)))) (let ((?v_1 (seq.update (seq.update ?v_0 i5 (seq.unit (seq.nth ?v_0 i1))) i1 (seq.unit (seq.nth ?v_0 i5))))) (let ((?v_2 (seq.update (seq.update ?v_1 i3 (seq.unit (seq.nth ?v_1 i1))) i1 (seq.unit (seq.nth ?v_1 i3))))) (let ((?v_3 (seq.nth ?v_2 i4))) (let ((?v_4 (seq.update (seq.update ?v_2 i4 (seq.unit ?v_3)) i4 (seq.unit ?v_3)))) (let ((?v_5 (seq.update (seq.update ?v_4 i1 (seq.unit (seq.nth ?v_4 i5))) i5 (seq.unit (seq.nth ?v_4 i1)))) (?v_8 (seq.update (seq.update a1 i1 (seq.unit ?v_6)) i0 (seq.unit ?v_7)))) (let ((?v_9 (seq.update (seq.update ?v_8 i5 (seq.unit (seq.nth ?v_8 i1))) i1 (seq.unit (seq.nth ?v_8 i5))))) (let ((?v_10 (seq.update (seq.update ?v_9 i3 (seq.unit (seq.nth ?v_9 i1))) i1 (seq.unit (seq.nth ?v_9 i3))))) (let ((?v_11 (seq.nth ?v_10 i4))) (let ((?v_12 (seq.update (seq.update ?v_10 i4 (seq.unit ?v_11)) i4 (seq.unit ?v_11)))) (let ((?v_13 (seq.update (seq.update ?v_12 i5 (seq.unit (seq.nth ?v_12 i1))) i1 (seq.unit (seq.nth ?v_12 i5))))) (not (= (seq.update (seq.update ?v_5 i3 (seq.unit (seq.nth ?v_5 i1))) i1 (seq.unit (seq.nth ?v_5 i3))) (seq.update (seq.update ?v_13 i3 (seq.unit (seq.nth ?v_13 i1))) i1 (seq.unit (seq.nth ?v_13 i3))))))))))))))))))
(check-sat)
(exit)
