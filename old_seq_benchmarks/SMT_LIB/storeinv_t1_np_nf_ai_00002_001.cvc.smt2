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
(assert (let ((?v_0 (seq.update a2 i1 (seq.unit (seq.nth a1 i1))))        ; v0 = a2,  a2[i1]: = a1[i1]
              (?v_1 (seq.update a1 i1 (seq.unit (seq.nth a2 i1)))))       ; v1 = a1,  a1[i1]: = a2[i1]
             (= (seq.update ?v_1 i2 (seq.unit (seq.nth ?v_0 i2))) (seq.update ?v_0 i2 (seq.unit (seq.nth ?v_1 i2))))))  ; a1[i2] := a2[i2] == a2[i2] := a1[i2]
(assert (not (= a1 a2)))
(check-sat)
(exit)
