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
(declare-fun a2 () (Seq Element))
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(assert (let ((?v_0 (seq.update a2 i1 (seq.unit (seq.nth a1 i1)))) (?v_1 (seq.update a1 i1 (seq.unit (seq.nth a2 i1))))) (let ((?v_3 (seq.update ?v_1 i2 (seq.unit (seq.nth ?v_0 i2)))) (?v_2 (seq.update ?v_0 i2 (seq.unit (seq.nth ?v_1 i2))))) (let ((?v_4 (seq.update ?v_2 i3 (seq.unit (seq.nth ?v_3 i3)))) (?v_5 (seq.update ?v_3 i3 (seq.unit (seq.nth ?v_2 i3))))) (let ((?v_7 (seq.update ?v_5 i4 (seq.unit (seq.nth ?v_4 i4)))) (?v_6 (seq.update ?v_4 i4 (seq.unit (seq.nth ?v_5 i4))))) (let ((?v_8 (seq.update ?v_6 i5 (seq.unit (seq.nth ?v_7 i5)))) (?v_9 (seq.update ?v_7 i5 (seq.unit (seq.nth ?v_6 i5))))) (let ((?v_11 (seq.update ?v_9 i6 (seq.unit (seq.nth ?v_8 i6)))) (?v_10 (seq.update ?v_8 i6 (seq.unit (seq.nth ?v_9 i6))))) (let ((?v_12 (seq.update ?v_10 i7 (seq.unit (seq.nth ?v_11 i7)))) (?v_13 (seq.update ?v_11 i7 (seq.unit (seq.nth ?v_10 i7))))) (= (seq.update ?v_13 i8 (seq.unit (seq.nth ?v_12 i8))) (seq.update ?v_12 i8 (seq.unit (seq.nth ?v_13 i8))))))))))))
(assert (not (= a1 a2)))
(check-sat)
(exit)
