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
(declare-fun a_47 () (Seq Element))
(declare-fun a_49 () (Seq Element))
(declare-fun a_51 () (Seq Element))
(declare-fun a_53 () (Seq Element))
(declare-fun a_55 () (Seq Element))
(declare-fun a_57 () (Seq Element))
(declare-fun a_59 () (Seq Element))
(declare-fun a_61 () (Seq Element))
(declare-fun a_62 () (Seq Element))
(declare-fun a_63 () (Seq Element))
(declare-fun a_65 () (Seq Element))
(declare-fun a_67 () (Seq Element))
(declare-fun a_69 () (Seq Element))
(declare-fun a_71 () (Seq Element))
(declare-fun a_73 () (Seq Element))
(declare-fun a_75 () (Seq Element))
(declare-fun e_46 () Element)
(declare-fun e_48 () Element)
(declare-fun e_50 () Element)
(declare-fun e_52 () Element)
(declare-fun e_54 () Element)
(declare-fun e_56 () Element)
(declare-fun e_58 () Element)
(declare-fun e_60 () Element)
(declare-fun e_64 () Element)
(declare-fun e_66 () Element)
(declare-fun e_68 () Element)
(declare-fun e_70 () Element)
(declare-fun e_72 () Element)
(declare-fun e_74 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(assert (= a_47 (seq.update a1 i3 (seq.unit e_46))))
(assert (= a_49 (seq.update a_47 i1 (seq.unit e_48))))
(assert (= a_51 (seq.update a_49 i1 (seq.unit e_50))))
(assert (= a_53 (seq.update a_51 i3 (seq.unit e_52))))
(assert (= a_55 (seq.update a_53 i3 (seq.unit e_54))))
(assert (= a_57 (seq.update a_55 i2 (seq.unit e_56))))
(assert (= a_59 (seq.update a_57 i3 (seq.unit e_58))))
(assert (= a_61 (seq.update a_59 i1 (seq.unit e_60))))
(assert (= a_62 (seq.update a1 i1 (seq.unit e_48))))
(assert (= a_63 (seq.update a_62 i3 (seq.unit e_46))))
(assert (= a_65 (seq.update a_63 i1 (seq.unit e_64))))
(assert (= a_67 (seq.update a_65 i3 (seq.unit e_66))))
(assert (= a_69 (seq.update a_67 i3 (seq.unit e_68))))
(assert (= a_71 (seq.update a_69 i2 (seq.unit e_70))))
(assert (= a_73 (seq.update a_71 i1 (seq.unit e_72))))
(assert (= a_75 (seq.update a_73 i0 (seq.unit e_74))))
(assert (= e_46 (seq.nth a1 i1)))
(assert (= e_48 (seq.nth a1 i3)))
(assert (= e_50 (seq.nth a_49 i3)))
(assert (= e_52 (seq.nth a_49 i1)))
(assert (= e_54 (seq.nth a_53 i2)))
(assert (= e_56 (seq.nth a_53 i3)))
(assert (= e_58 (seq.nth a_57 i1)))
(assert (= e_60 (seq.nth a_57 i3)))
(assert (= e_64 (seq.nth a_63 i3)))
(assert (= e_66 (seq.nth a_63 i1)))
(assert (= e_68 (seq.nth a_67 i2)))
(assert (= e_70 (seq.nth a_67 i3)))
(assert (= e_72 (seq.nth a_71 i0)))
(assert (= e_74 (seq.nth a_71 i1)))
(assert (not (= a_61 a_75)))
(check-sat)
(exit)
