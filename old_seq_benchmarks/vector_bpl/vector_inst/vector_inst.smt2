(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@Vec_14 0)) (((Vec_14 (|contents#Vec_14| (Array Int Int)) (|len#Vec_14| Int) ) ) ))
(declare-datatypes ((T@Value 0)(T@Vec_2636 0)) (((Integer (|i#Integer| Int) ) (Vector (|v#Vector| T@Vec_2636) ) ) ((Vec_2636 (|contents#Vec_2636| (Array Int T@Value)) (|len#Vec_2636| Int) ) ) ))
(declare-fun has_zero (T@Value) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun Default_2215 () T@Value)
(declare-fun Default_3 () Int)
(assert (forall ((val T@Value) ) (! (= (has_zero val) (ite (is-Integer val) (= val (Integer 0)) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|len#Vec_2636| (|v#Vector| val)))) (has_zero (select (|contents#Vec_2636| (|v#Vector| val)) i)))
 :qid |vectorbpl.125:16|
 :skolemid |15|
))))
 :qid |vectorbpl.121:19|
 :skolemid |16|
 :pattern ( (has_zero val))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |18|
)))
(assert (forall ((x@@0 T@Vec_2636) ) (! (= ((_ map (ite (Bool T@Value T@Value) T@Value)) ((_ map and) ((_ map (<= (Int Int) Int)) ((as const (Array Int Int)) 0) Identity) ((_ map not) ((_ map (<= (Int Int) Int)) ((as const (Array Int Int)) (+ 0 (|len#Vec_2636| x@@0))) Identity))) ((as const (Array Int T@Value)) Default_2215) (|contents#Vec_2636| x@@0)) ((as const (Array Int T@Value)) Default_2215))
 :qid |LibraryDefinitionsbpl.53:32|
 :skolemid |19|
 :pattern ( (|len#Vec_2636| x@@0))
 :pattern ( (|contents#Vec_2636| x@@0))
)))
(assert (forall ((x@@1 T@Vec_14) ) (! (= ((_ map (ite (Bool Int Int) Int)) ((_ map and) ((_ map (<= (Int Int) Int)) ((as const (Array Int Int)) 0) Identity) ((_ map not) ((_ map (<= (Int Int) Int)) ((as const (Array Int Int)) (+ 0 (|len#Vec_14| x@@1))) Identity))) ((as const (Array Int Int)) Default_3) (|contents#Vec_14| x@@1)) ((as const (Array Int Int)) Default_3))
 :qid |LibraryDefinitionsbpl.53:32|
 :skolemid |19|
 :pattern ( (|len#Vec_14| x@@1))
 :pattern ( (|contents#Vec_14| x@@1))
)))
(assert (forall ((x@@2 T@Vec_2636) ) (! (>= (|len#Vec_2636| x@@2) 0)
 :qid |LibraryDefinitionsbpl.54:32|
 :skolemid |20|
 :pattern ( (|len#Vec_2636| x@@2))
)))
(assert (forall ((x@@3 T@Vec_14) ) (! (>= (|len#Vec_14| x@@3) 0)
 :qid |LibraryDefinitionsbpl.54:32|
 :skolemid |20|
 :pattern ( (|len#Vec_14| x@@3))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun s@0 () T@Vec_14)
(declare-fun s@1 () T@Vec_14)
(declare-fun s@2 () T@Vec_14)
(declare-fun s@3 () T@Vec_14)
(push 1)
(set-info :boogie-vc-id test0)
(assert (not
 (=> (= (ControlFlow 0 0) 5797) (let ((anon0_correct  (=> (= s@0 (Vec_14 (store (|contents#Vec_14| (Vec_14 ((as const (Array Int Int)) Default_3) 0)) (|len#Vec_14| (Vec_14 ((as const (Array Int Int)) Default_3) 0)) 0) (+ (|len#Vec_14| (Vec_14 ((as const (Array Int Int)) Default_3) 0)) 1))) (=> (and (= s@1 (Vec_14 (store (|contents#Vec_14| s@0) (|len#Vec_14| s@0) 1) (+ (|len#Vec_14| s@0) 1))) (= s@2 (Vec_14 (store (|contents#Vec_14| s@1) (|len#Vec_14| s@1) 2) (+ (|len#Vec_14| s@1) 1)))) (and (=> (= (ControlFlow 0 83) (- 0 5840)) (= (|len#Vec_14| s@2) 3)) (=> (= (|len#Vec_14| s@2) 3) (and (=> (= (ControlFlow 0 83) (- 0 5847)) (= (select (|contents#Vec_14| s@2) 1) 1)) (=> (= (select (|contents#Vec_14| s@2) 1) 1) (=> (= s@3 (ite  (and (<= 0 1) (< 1 (|len#Vec_14| s@2))) (Vec_14 (store (|contents#Vec_14| s@2) 1 3) (|len#Vec_14| s@2)) s@2)) (and (=> (= (ControlFlow 0 83) (- 0 5869)) (= (select (|contents#Vec_14| s@3) 0) 0)) (=> (= (select (|contents#Vec_14| s@3) 0) 0) (and (=> (= (ControlFlow 0 83) (- 0 5878)) (= (select (|contents#Vec_14| s@3) 1) 3)) (=> (= (select (|contents#Vec_14| s@3) 1) 3) (=> (= (ControlFlow 0 83) (- 0 5887)) (= (|len#Vec_14| s@3) 3)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5797) 83) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
