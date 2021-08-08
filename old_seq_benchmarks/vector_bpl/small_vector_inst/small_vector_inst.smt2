(set-option :print-success false)
(set-info :smt-lib-version 2.6)
; (set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort T@Element 0)
(declare-datatypes ((T@Vec_1347 0)) (((Vec_1347 (|contents#Vec_1347| (Array Int T@Element)) (|len#Vec_1347| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun Default_1076 () T@Element)
(declare-fun |lambda#0| (Int T@Element Int Int T@Vec_1347 Int T@Element) (Array Int T@Element))
(declare-fun |lambda#1| (Int T@Element Int Int T@Vec_1347 Int Int T@Vec_1347 Int T@Element) (Array Int T@Element))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 T@Vec_1347) ) (! (= ((_ map (ite (Bool T@Element T@Element) T@Element)) ((_ map and) ((_ map (<= (Int Int) Int)) ((as const (Array Int Int)) 0) Identity) ((_ map not) ((_ map (<= (Int Int) Int)) ((as const (Array Int Int)) (+ 0 (|len#Vec_1347| x@@0))) Identity))) ((as const (Array Int T@Element)) Default_1076) (|contents#Vec_1347| x@@0)) ((as const (Array Int T@Element)) Default_1076))
 :qid |LibraryDefinitionsbpl.53:32|
 :skolemid |1|
 :pattern ( (|len#Vec_1347| x@@0))
 :pattern ( (|contents#Vec_1347| x@@0))
)))
(assert (forall ((x@@1 T@Vec_1347) ) (! (>= (|len#Vec_1347| x@@1) 0)
 :qid |LibraryDefinitionsbpl.54:32|
 :skolemid |2|
 :pattern ( (|len#Vec_1347| x@@1))
)))
(assert (forall ((|l#0| Int) (|l#1| T@Element) (|l#2| Int) (|l#3| Int) (|l#4| T@Vec_1347) (|l#5| Int) (|l#6| T@Element) (k Int) ) (! (= (select (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) k) (ite (< k |l#0|) |l#1| (ite  (and (<= |l#2| k) (< k |l#3|)) (select (|contents#Vec_1347| |l#4|) (+ k |l#5|)) |l#6|)))
 :qid |LibraryDefinitionsbpl.92:25|
 :skolemid |3|
 :pattern ( (select (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) k))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| T@Element) (|l#2@@0| Int) (|l#3@@0| Int) (|l#4@@0| T@Vec_1347) (|l#5@@0| Int) (|l#6@@0| Int) (|l#7| T@Vec_1347) (|l#8| Int) (|l#9| T@Element) (i Int) ) (! (= (select (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7| |l#8| |l#9|) i) (ite (< i |l#0@@0|) |l#1@@0| (ite  (and (<= |l#2@@0| i) (< i |l#3@@0|)) (select (|contents#Vec_1347| |l#4@@0|) i) (ite  (and (<= |l#5@@0| i) (< i |l#6@@0|)) (select (|contents#Vec_1347| |l#7|) (- i |l#8|)) |l#9|))))
 :qid |LibraryDefinitionsbpl.80:21|
 :skolemid |4|
 :pattern ( (select (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7| |l#8| |l#9|) i))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i@@0 () Int)
(declare-fun A () T@Vec_1347)
(push 1)
(set-info :boogie-vc-id Ex0)
(assert (not
 (=> (= (ControlFlow 0 0) 2522) (let ((anon0_correct  (=> (= (ControlFlow 0 57) (- 0 2552)) (= (Vec_1347 (|lambda#1| 0 Default_1076 0 (|len#Vec_1347| (ite  (and (and (<= 0 0) (< 0 i@@0)) (<= i@@0 (|len#Vec_1347| A))) (Vec_1347 (|lambda#0| 0 Default_1076 0 (- i@@0 0) A 0 Default_1076) (- i@@0 0)) (Vec_1347 ((as const (Array Int T@Element)) Default_1076) 0))) (ite  (and (and (<= 0 0) (< 0 i@@0)) (<= i@@0 (|len#Vec_1347| A))) (Vec_1347 (|lambda#0| 0 Default_1076 0 (- i@@0 0) A 0 Default_1076) (- i@@0 0)) (Vec_1347 ((as const (Array Int T@Element)) Default_1076) 0)) (|len#Vec_1347| (ite  (and (and (<= 0 0) (< 0 i@@0)) (<= i@@0 (|len#Vec_1347| A))) (Vec_1347 (|lambda#0| 0 Default_1076 0 (- i@@0 0) A 0 Default_1076) (- i@@0 0)) (Vec_1347 ((as const (Array Int T@Element)) Default_1076) 0))) (+ (|len#Vec_1347| (ite  (and (and (<= 0 0) (< 0 i@@0)) (<= i@@0 (|len#Vec_1347| A))) (Vec_1347 (|lambda#0| 0 Default_1076 0 (- i@@0 0) A 0 Default_1076) (- i@@0 0)) (Vec_1347 ((as const (Array Int T@Element)) Default_1076) 0))) (|len#Vec_1347| (ite  (and (and (<= 0 i@@0) (< i@@0 (|len#Vec_1347| A))) (<= (|len#Vec_1347| A) (|len#Vec_1347| A))) (Vec_1347 (|lambda#0| 0 Default_1076 0 (- (|len#Vec_1347| A) i@@0) A i@@0 Default_1076) (- (|len#Vec_1347| A) i@@0)) (Vec_1347 ((as const (Array Int T@Element)) Default_1076) 0)))) (ite  (and (and (<= 0 i@@0) (< i@@0 (|len#Vec_1347| A))) (<= (|len#Vec_1347| A) (|len#Vec_1347| A))) (Vec_1347 (|lambda#0| 0 Default_1076 0 (- (|len#Vec_1347| A) i@@0) A i@@0 Default_1076) (- (|len#Vec_1347| A) i@@0)) (Vec_1347 ((as const (Array Int T@Element)) Default_1076) 0)) (|len#Vec_1347| (ite  (and (and (<= 0 0) (< 0 i@@0)) (<= i@@0 (|len#Vec_1347| A))) (Vec_1347 (|lambda#0| 0 Default_1076 0 (- i@@0 0) A 0 Default_1076) (- i@@0 0)) (Vec_1347 ((as const (Array Int T@Element)) Default_1076) 0))) Default_1076) (+ (|len#Vec_1347| (ite  (and (and (<= 0 0) (< 0 i@@0)) (<= i@@0 (|len#Vec_1347| A))) (Vec_1347 (|lambda#0| 0 Default_1076 0 (- i@@0 0) A 0 Default_1076) (- i@@0 0)) (Vec_1347 ((as const (Array Int T@Element)) Default_1076) 0))) (|len#Vec_1347| (ite  (and (and (<= 0 i@@0) (< i@@0 (|len#Vec_1347| A))) (<= (|len#Vec_1347| A) (|len#Vec_1347| A))) (Vec_1347 (|lambda#0| 0 Default_1076 0 (- (|len#Vec_1347| A) i@@0) A i@@0 Default_1076) (- (|len#Vec_1347| A) i@@0)) (Vec_1347 ((as const (Array Int T@Element)) Default_1076) 0))))) A))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (<= 0 i@@0) (< i@@0 (|len#Vec_1347| A))) (= (ControlFlow 0 2522) 57)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
