(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :dt-nested-rec true)
(set-option :strings-deq-ext true)
(set-logic ALL_SUPPORTED)

; done setting options


(declare-fun Identity () (Array Int Int))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@0 () Bool)
(declare-fun s () (Seq Int))
(declare-fun x@@0 () Int)
(declare-fun i@0 () Int)
(declare-fun i@1 () Int)
(push 1)
(set-info :boogie-vc-id lookup)
(assert (not (=> (= (ControlFlow 0 0) 1490) (let ((GeneratedUnifiedExit_correct (=> (= (ControlFlow 0 1482) (- 0 1699)) (= b@0 (exists ((i Int)) (! (and (and (<= 0 i) (< i (seq.len s))) (= x@@0 (seq.nth s i))) :qid |tmpbpl.5:22| :skolemid |0|)))))) (let ((anon5_Then_correct (=> (= (seq.nth s i@0) x@@0) (=> (and (= b@0 true) (= (ControlFlow 0 129) 1482)) GeneratedUnifiedExit_correct)))) (let ((anon4_LoopDone_correct (=> (<= (seq.len s) i@0) (=> (and (= b@0 false) (= (ControlFlow 0 135) 1482)) GeneratedUnifiedExit_correct)))) (let ((anon5_Else_correct (=> (and (not (= (seq.nth s i@0) x@@0)) (= i@1 (+ i@0 1))) (and (=> (= (ControlFlow 0 131) (- 0 1652)) (forall ((u Int)) (! (=> (and (<= 0 u) (< u i@1)) (not (= x@@0 (seq.nth s u)))) :qid |tmpbpl.12:21| :skolemid |1|))) (=> (forall ((u@@0 Int)) (! (=> (and (<= 0 u@@0) (< u@@0 i@1)) (not (= x@@0 (seq.nth s u@@0)))) :qid |tmpbpl.12:21| :skolemid |1|)) (=> (= (ControlFlow 0 131) (- 0 1680)) (<= 0 i@1))))))) (let ((anon4_LoopBody_correct (=> (< i@0 (seq.len s)) (and (=> (= (ControlFlow 0 128) 129) anon5_Then_correct) (=> (= (ControlFlow 0 128) 131) anon5_Else_correct))))) (let ((anon4_LoopHead_correct (=> (and (forall ((u@@1 Int)) (! (=> (and (<= 0 u@@1) (< u@@1 i@0)) (not (= x@@0 (seq.nth s u@@1)))) :qid |tmpbpl.12:21| :skolemid |1|)) (<= 0 i@0)) (and (=> (= (ControlFlow 0 121) 135) anon4_LoopDone_correct) (=> (= (ControlFlow 0 121) 128) anon4_LoopBody_correct))))) (let ((anon0_correct (and (=> (= (ControlFlow 0 119) (- 0 1537)) (forall ((u@@2 Int)) (! (=> (and (<= 0 u@@2) (< u@@2 0)) (not (= x@@0 (seq.nth s u@@2)))) :qid |tmpbpl.12:21| :skolemid |1|))) (=> (forall ((u@@3 Int)) (! (=> (and (<= 0 u@@3) (< u@@3 0)) (not (= x@@0 (seq.nth s u@@3)))) :qid |tmpbpl.12:21| :skolemid |1|)) (and (=> (= (ControlFlow 0 119) (- 0 1565)) (<= 0 0)) (=> (<= 0 0) (=> (= (ControlFlow 0 119) 121) anon4_LoopHead_correct))))))) (let ((PreconditionGeneratedEntry_correct (=> (= (ControlFlow 0 1490) 119) anon0_correct))) PreconditionGeneratedEntry_correct)))))))))))
(check-sat)
