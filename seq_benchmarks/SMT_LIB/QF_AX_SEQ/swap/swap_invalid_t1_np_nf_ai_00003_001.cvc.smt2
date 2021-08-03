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
(assert (let ((?v_0 (seq.update (seq.update a1 i1 (seq.unit (seq.nth a1 i2))) i2 (seq.unit (seq.nth a1 i1))))) (let ((?v_1 (seq.nth ?v_0 i0))) (let ((?v_2 (seq.update (seq.update ?v_0 i0 (seq.unit ?v_1)) i0 (seq.unit ?v_1)))) (let ((?v_3 (seq.nth ?v_2 i1))) (not (= (seq.update (seq.update ?v_2 i0 (seq.unit ?v_3)) i1 (seq.unit (seq.nth ?v_2 i0))) (seq.update (seq.update ?v_2 i1 (seq.unit ?v_3)) i1 (seq.unit ?v_3)))))))))
(check-sat)
(exit)
