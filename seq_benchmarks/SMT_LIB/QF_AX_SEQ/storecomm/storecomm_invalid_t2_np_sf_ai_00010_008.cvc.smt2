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
(declare-fun a_40 () (Seq Element))
(declare-fun a_41 () (Seq Element))
(declare-fun a_42 () (Seq Element))
(declare-fun a_43 () (Seq Element))
(declare-fun a_44 () (Seq Element))
(declare-fun a_45 () (Seq Element))
(declare-fun a_46 () (Seq Element))
(declare-fun a_47 () (Seq Element))
(declare-fun a_48 () (Seq Element))
(declare-fun a_49 () (Seq Element))
(declare-fun a_50 () (Seq Element))
(declare-fun a_51 () (Seq Element))
(declare-fun a_52 () (Seq Element))
(declare-fun a_53 () (Seq Element))
(declare-fun a_54 () (Seq Element))
(declare-fun a_55 () (Seq Element))
(declare-fun a_56 () (Seq Element))
(declare-fun a_57 () (Seq Element))
(declare-fun a_58 () (Seq Element))
(declare-fun a_59 () (Seq Element))
(declare-fun a1 () (Seq Element))
(declare-fun e1 () Element)
(declare-fun e10 () Element)
(declare-fun e2 () Element)
(declare-fun e3 () Element)
(declare-fun e4 () Element)
(declare-fun e5 () Element)
(declare-fun e6 () Element)
(declare-fun e7 () Element)
(declare-fun e8 () Element)
(declare-fun e9 () Element)
(declare-fun i1 () Int)
(declare-fun i10 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (= a_40 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_41 (seq.update a_40 i2 (seq.unit e2))))
(assert (= a_42 (seq.update a_41 i3 (seq.unit e3))))
(assert (= a_43 (seq.update a_42 i4 (seq.unit e4))))
(assert (= a_44 (seq.update a_43 i5 (seq.unit e5))))
(assert (= a_45 (seq.update a_44 i6 (seq.unit e6))))
(assert (= a_46 (seq.update a_45 i7 (seq.unit e7))))
(assert (= a_47 (seq.update a_46 i8 (seq.unit e8))))
(assert (= a_48 (seq.update a_47 i9 (seq.unit e9))))
(assert (= a_49 (seq.update a_48 i1 (seq.unit e1))))
(assert (= a_50 (seq.update a1 i2 (seq.unit e2))))
(assert (= a_51 (seq.update a_50 i4 (seq.unit e4))))
(assert (= a_52 (seq.update a_51 i1 (seq.unit e1))))
(assert (= a_53 (seq.update a_52 i9 (seq.unit e9))))
(assert (= a_54 (seq.update a_53 i5 (seq.unit e5))))
(assert (= a_55 (seq.update a_54 i3 (seq.unit e3))))
(assert (= a_56 (seq.update a_55 i8 (seq.unit e8))))
(assert (= a_57 (seq.update a_56 i7 (seq.unit e7))))
(assert (= a_58 (seq.update a_57 i10 (seq.unit e10))))
(assert (= a_59 (seq.update a_58 i6 (seq.unit e6))))
(assert (not (= i9 i10)))
(assert (not (= i8 i10)))
(assert (not (= i8 i9)))
(assert (not (= i7 i10)))
(assert (not (= i7 i9)))
(assert (not (= i7 i8)))
(assert (not (= i6 i10)))
(assert (not (= i6 i9)))
(assert (not (= i6 i8)))
(assert (not (= i6 i7)))
(assert (not (= i5 i10)))
(assert (not (= i5 i9)))
(assert (not (= i5 i8)))
(assert (not (= i5 i7)))
(assert (not (= i5 i6)))
(assert (not (= i4 i10)))
(assert (not (= i4 i9)))
(assert (not (= i4 i8)))
(assert (not (= i4 i7)))
(assert (not (= i4 i6)))
(assert (not (= i4 i5)))
(assert (not (= i3 i10)))
(assert (not (= i3 i9)))
(assert (not (= i3 i8)))
(assert (not (= i3 i7)))
(assert (not (= i3 i6)))
(assert (not (= i3 i5)))
(assert (not (= i3 i4)))
(assert (not (= i2 i10)))
(assert (not (= i2 i9)))
(assert (not (= i2 i8)))
(assert (not (= i2 i7)))
(assert (not (= i2 i6)))
(assert (not (= i2 i5)))
(assert (not (= i2 i4)))
(assert (not (= i2 i3)))
(assert (not (= i1 i10)))
(assert (not (= i1 i9)))
(assert (not (= i1 i8)))
(assert (not (= i1 i7)))
(assert (not (= i1 i6)))
(assert (not (= i1 i5)))
(assert (not (= i1 i4)))
(assert (not (= i1 i3)))
(assert (not (= i1 i2)))
(assert (not (= a_49 a_59)))
(check-sat)
(exit)
