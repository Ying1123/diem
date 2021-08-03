(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Translated from old SVC processor verification benchmarks.  Contact Clark
Barrett at barrett@cs.nyu.edu for more information.

This benchmark was automatically translated into SMT-LIB format from
CVC format using CVC Lite
|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-sort Element 0)
(declare-fun a () Int)
(declare-fun aaa () Int)
(declare-fun aa () Int)
(declare-fun S () (Seq Element))
(declare-fun vvv () Element)
(declare-fun v () Element)
(declare-fun vv () Element)
(declare-fun bbb () Int)
(declare-fun www () Element)
(declare-fun bb () Int)
(declare-fun ww () Element)
(declare-fun b () Int)
(declare-fun w () Element)
(declare-fun SS () (Seq Element))
(assert (let ((?v_3 (ite (= a aa) false true)) (?v_4 (ite (= aa aaa) false true)) (?v_1 (seq.update (seq.update (seq.update S a (seq.unit v)) aa (seq.unit vv)) aaa (seq.unit vvv))) (?v_0 (seq.update S aaa (seq.unit vvv))) (?v_2 (seq.update S aa (seq.unit vv)))) (not (ite (ite (ite (ite (= a aaa) false true) (ite ?v_3 ?v_4 false) false) (ite (= (seq.update (seq.update ?v_0 a (seq.unit v)) aa (seq.unit vv)) ?v_1) (ite (= (seq.update (seq.update ?v_0 aa (seq.unit vv)) a (seq.unit v)) ?v_1) (ite (= (seq.update (seq.update ?v_2 a (seq.unit v)) aaa (seq.unit vvv)) ?v_1) (= (seq.update (seq.update ?v_2 aaa (seq.unit vvv)) a (seq.unit v)) ?v_1) false) false) false) true) (ite (ite (= ?v_1 (seq.update (seq.update (seq.update S bbb (seq.unit www)) bb (seq.unit ww)) b (seq.unit w))) (ite (ite ?v_3 (ite ?v_4 (ite (ite (= aa b) false true) (ite (ite (= aa bb) false true) (ite (= aa bbb) false true) false) false) false) false) (= (seq.nth S aa) vv) true) true) (ite (= S (seq.update SS a (seq.unit v))) (= S (seq.update SS a (seq.unit (seq.nth S a)))) true) false) false))))
(check-sat)
(exit)
