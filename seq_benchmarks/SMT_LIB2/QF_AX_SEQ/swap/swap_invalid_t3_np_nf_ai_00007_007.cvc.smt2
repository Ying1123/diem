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
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(assert (let ((?v_0 (seq.nth a1 i2))) (let ((?v_1 (seq.update (seq.update a1 i2 (seq.unit ?v_0)) i2 (seq.unit ?v_0)))) (let ((?v_2 (seq.nth ?v_1 i0))) (let ((?v_3 (seq.update (seq.update ?v_1 i0 (seq.unit ?v_2)) i0 (seq.unit ?v_2)))) (let ((?v_4 (seq.nth ?v_3 i6))) (let ((?v_5 (seq.update (seq.update ?v_3 i6 (seq.unit ?v_4)) i6 (seq.unit ?v_4)))) (let ((?v_9 (seq.nth ?v_5 i5)) (?v_10 (seq.nth ?v_5 i3))) (let ((?v_6 (seq.update (seq.update ?v_5 i5 (seq.unit ?v_10)) i3 (seq.unit ?v_9)))) (let ((?v_7 (seq.update (seq.update ?v_6 i5 (seq.unit (seq.nth ?v_6 i0))) i0 (seq.unit (seq.nth ?v_6 i5))))) (let ((?v_8 (seq.update (seq.update ?v_7 i1 (seq.unit (seq.nth ?v_7 i3))) i3 (seq.unit (seq.nth ?v_7 i1)))) (?v_11 (seq.update (seq.update ?v_5 i3 (seq.unit ?v_9)) i5 (seq.unit ?v_10)))) (let ((?v_12 (seq.update (seq.update ?v_11 i0 (seq.unit (seq.nth ?v_11 i5))) i5 (seq.unit (seq.nth ?v_11 i0))))) (let ((?v_13 (seq.update (seq.update ?v_12 i3 (seq.unit (seq.nth ?v_12 i1))) i1 (seq.unit (seq.nth ?v_12 i3))))) (not (= (seq.update (seq.update ?v_8 i6 (seq.unit (seq.nth ?v_8 i4))) i4 (seq.unit (seq.nth ?v_8 i6))) (seq.update (seq.update ?v_13 i4 (seq.unit (seq.nth ?v_13 i0))) i0 (seq.unit (seq.nth ?v_13 i4))))))))))))))))))
(check-sat)
(exit)
