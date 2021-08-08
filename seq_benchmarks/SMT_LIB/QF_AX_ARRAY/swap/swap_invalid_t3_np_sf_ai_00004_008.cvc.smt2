(set-info :smt-lib-version 2.6)
(set-logic QF_AX)
(set-info :source |
Benchmarks used in the followin paper:
Big proof engines as little proof engines: new results on rewrite-based satisfiability procedure
Alessandro Armando, Maria Paola Bonacina, Silvio Ranise, Stephan Schulz. 
PDPAR'05
http://www.ai.dist.unige.it/pdpar05/


|)
(set-info :category "crafted")
(set-info :status sat)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun a_47 () (Array Index Element))
(declare-fun a_49 () (Array Index Element))
(declare-fun a_51 () (Array Index Element))
(declare-fun a_53 () (Array Index Element))
(declare-fun a_55 () (Array Index Element))
(declare-fun a_57 () (Array Index Element))
(declare-fun a_59 () (Array Index Element))
(declare-fun a_61 () (Array Index Element))
(declare-fun a_62 () (Array Index Element))
(declare-fun a_63 () (Array Index Element))
(declare-fun a_65 () (Array Index Element))
(declare-fun a_67 () (Array Index Element))
(declare-fun a_69 () (Array Index Element))
(declare-fun a_71 () (Array Index Element))
(declare-fun a_73 () (Array Index Element))
(declare-fun a_75 () (Array Index Element))
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
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(assert (= a_47 (store a1 i3 e_46)))
(assert (= a_49 (store a_47 i1 e_48)))
(assert (= a_51 (store a_49 i1 e_50)))
(assert (= a_53 (store a_51 i3 e_52)))
(assert (= a_55 (store a_53 i3 e_54)))
(assert (= a_57 (store a_55 i2 e_56)))
(assert (= a_59 (store a_57 i3 e_58)))
(assert (= a_61 (store a_59 i1 e_60)))
(assert (= a_62 (store a1 i1 e_48)))
(assert (= a_63 (store a_62 i3 e_46)))
(assert (= a_65 (store a_63 i1 e_64)))
(assert (= a_67 (store a_65 i3 e_66)))
(assert (= a_69 (store a_67 i3 e_68)))
(assert (= a_71 (store a_69 i2 e_70)))
(assert (= a_73 (store a_71 i1 e_72)))
(assert (= a_75 (store a_73 i0 e_74)))
(assert (= e_46 (select a1 i1)))
(assert (= e_48 (select a1 i3)))
(assert (= e_50 (select a_49 i3)))
(assert (= e_52 (select a_49 i1)))
(assert (= e_54 (select a_53 i2)))
(assert (= e_56 (select a_53 i3)))
(assert (= e_58 (select a_57 i1)))
(assert (= e_60 (select a_57 i3)))
(assert (= e_64 (select a_63 i3)))
(assert (= e_66 (select a_63 i1)))
(assert (= e_68 (select a_67 i2)))
(assert (= e_70 (select a_67 i3)))
(assert (= e_72 (select a_71 i0)))
(assert (= e_74 (select a_71 i1)))
(assert (not (= a_61 a_75)))
(check-sat)
(exit)
