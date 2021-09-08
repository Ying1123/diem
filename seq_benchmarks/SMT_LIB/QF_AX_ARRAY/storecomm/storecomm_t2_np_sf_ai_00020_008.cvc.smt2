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
(set-info :status unsat)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun a_100 () (Array Index Element))
(declare-fun a_101 () (Array Index Element))
(declare-fun a_102 () (Array Index Element))
(declare-fun a_103 () (Array Index Element))
(declare-fun a_104 () (Array Index Element))
(declare-fun a_105 () (Array Index Element))
(declare-fun a_106 () (Array Index Element))
(declare-fun a_107 () (Array Index Element))
(declare-fun a_108 () (Array Index Element))
(declare-fun a_109 () (Array Index Element))
(declare-fun a_110 () (Array Index Element))
(declare-fun a_111 () (Array Index Element))
(declare-fun a_112 () (Array Index Element))
(declare-fun a_113 () (Array Index Element))
(declare-fun a_114 () (Array Index Element))
(declare-fun a_115 () (Array Index Element))
(declare-fun a_116 () (Array Index Element))
(declare-fun a_117 () (Array Index Element))
(declare-fun a_118 () (Array Index Element))
(declare-fun a_119 () (Array Index Element))
(declare-fun a_80 () (Array Index Element))
(declare-fun a_81 () (Array Index Element))
(declare-fun a_82 () (Array Index Element))
(declare-fun a_83 () (Array Index Element))
(declare-fun a_84 () (Array Index Element))
(declare-fun a_85 () (Array Index Element))
(declare-fun a_86 () (Array Index Element))
(declare-fun a_87 () (Array Index Element))
(declare-fun a_88 () (Array Index Element))
(declare-fun a_89 () (Array Index Element))
(declare-fun a_90 () (Array Index Element))
(declare-fun a_91 () (Array Index Element))
(declare-fun a_92 () (Array Index Element))
(declare-fun a_93 () (Array Index Element))
(declare-fun a_94 () (Array Index Element))
(declare-fun a_95 () (Array Index Element))
(declare-fun a_96 () (Array Index Element))
(declare-fun a_97 () (Array Index Element))
(declare-fun a_98 () (Array Index Element))
(declare-fun a_99 () (Array Index Element))
(declare-fun a1 () (Array Index Element))
(declare-fun e1 () Element)
(declare-fun e10 () Element)
(declare-fun e11 () Element)
(declare-fun e12 () Element)
(declare-fun e13 () Element)
(declare-fun e14 () Element)
(declare-fun e15 () Element)
(declare-fun e16 () Element)
(declare-fun e17 () Element)
(declare-fun e18 () Element)
(declare-fun e19 () Element)
(declare-fun e2 () Element)
(declare-fun e20 () Element)
(declare-fun e3 () Element)
(declare-fun e4 () Element)
(declare-fun e5 () Element)
(declare-fun e6 () Element)
(declare-fun e7 () Element)
(declare-fun e8 () Element)
(declare-fun e9 () Element)
(declare-fun i1 () Index)
(declare-fun i10 () Index)
(declare-fun i11 () Index)
(declare-fun i12 () Index)
(declare-fun i13 () Index)
(declare-fun i14 () Index)
(declare-fun i15 () Index)
(declare-fun i16 () Index)
(declare-fun i17 () Index)
(declare-fun i18 () Index)
(declare-fun i19 () Index)
(declare-fun i2 () Index)
(declare-fun i20 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(declare-fun i7 () Index)
(declare-fun i8 () Index)
(declare-fun i9 () Index)
(assert (= a_100 (store a1 i18 e18)))
(assert (= a_101 (store a_100 i10 e10)))
(assert (= a_102 (store a_101 i3 e3)))
(assert (= a_103 (store a_102 i17 e17)))
(assert (= a_104 (store a_103 i1 e1)))
(assert (= a_105 (store a_104 i11 e11)))
(assert (= a_106 (store a_105 i7 e7)))
(assert (= a_107 (store a_106 i5 e5)))
(assert (= a_108 (store a_107 i9 e9)))
(assert (= a_109 (store a_108 i19 e19)))
(assert (= a_110 (store a_109 i16 e16)))
(assert (= a_111 (store a_110 i2 e2)))
(assert (= a_112 (store a_111 i20 e20)))
(assert (= a_113 (store a_112 i4 e4)))
(assert (= a_114 (store a_113 i15 e15)))
(assert (= a_115 (store a_114 i8 e8)))
(assert (= a_116 (store a_115 i12 e12)))
(assert (= a_117 (store a_116 i14 e14)))
(assert (= a_118 (store a_117 i13 e13)))
(assert (= a_119 (store a_118 i6 e6)))
(assert (= a_80 (store a1 i1 e1)))
(assert (= a_81 (store a_80 i2 e2)))
(assert (= a_82 (store a_81 i3 e3)))
(assert (= a_83 (store a_82 i4 e4)))
(assert (= a_84 (store a_83 i5 e5)))
(assert (= a_85 (store a_84 i6 e6)))
(assert (= a_86 (store a_85 i7 e7)))
(assert (= a_87 (store a_86 i8 e8)))
(assert (= a_88 (store a_87 i9 e9)))
(assert (= a_89 (store a_88 i10 e10)))
(assert (= a_90 (store a_89 i11 e11)))
(assert (= a_91 (store a_90 i12 e12)))
(assert (= a_92 (store a_91 i13 e13)))
(assert (= a_93 (store a_92 i14 e14)))
(assert (= a_94 (store a_93 i15 e15)))
(assert (= a_95 (store a_94 i16 e16)))
(assert (= a_96 (store a_95 i17 e17)))
(assert (= a_97 (store a_96 i18 e18)))
(assert (= a_98 (store a_97 i19 e19)))
(assert (= a_99 (store a_98 i20 e20)))
(assert (not (= i19 i20)))
(assert (not (= i18 i20)))
(assert (not (= i18 i19)))
(assert (not (= i17 i20)))
(assert (not (= i17 i19)))
(assert (not (= i17 i18)))
(assert (not (= i16 i20)))
(assert (not (= i16 i19)))
(assert (not (= i16 i18)))
(assert (not (= i16 i17)))
(assert (not (= i15 i20)))
(assert (not (= i15 i19)))
(assert (not (= i15 i18)))
(assert (not (= i15 i17)))
(assert (not (= i15 i16)))
(assert (not (= i14 i20)))
(assert (not (= i14 i19)))
(assert (not (= i14 i18)))
(assert (not (= i14 i17)))
(assert (not (= i14 i16)))
(assert (not (= i14 i15)))
(assert (not (= i13 i20)))
(assert (not (= i13 i19)))
(assert (not (= i13 i18)))
(assert (not (= i13 i17)))
(assert (not (= i13 i16)))
(assert (not (= i13 i15)))
(assert (not (= i13 i14)))
(assert (not (= i12 i20)))
(assert (not (= i12 i19)))
(assert (not (= i12 i18)))
(assert (not (= i12 i17)))
(assert (not (= i12 i16)))
(assert (not (= i12 i15)))
(assert (not (= i12 i14)))
(assert (not (= i12 i13)))
(assert (not (= i11 i20)))
(assert (not (= i11 i19)))
(assert (not (= i11 i18)))
(assert (not (= i11 i17)))
(assert (not (= i11 i16)))
(assert (not (= i11 i15)))
(assert (not (= i11 i14)))
(assert (not (= i11 i13)))
(assert (not (= i11 i12)))
(assert (not (= i10 i20)))
(assert (not (= i10 i19)))
(assert (not (= i10 i18)))
(assert (not (= i10 i17)))
(assert (not (= i10 i16)))
(assert (not (= i10 i15)))
(assert (not (= i10 i14)))
(assert (not (= i10 i13)))
(assert (not (= i10 i12)))
(assert (not (= i10 i11)))
(assert (not (= i9 i20)))
(assert (not (= i9 i19)))
(assert (not (= i9 i18)))
(assert (not (= i9 i17)))
(assert (not (= i9 i16)))
(assert (not (= i9 i15)))
(assert (not (= i9 i14)))
(assert (not (= i9 i13)))
(assert (not (= i9 i12)))
(assert (not (= i9 i11)))
(assert (not (= i9 i10)))
(assert (not (= i8 i20)))
(assert (not (= i8 i19)))
(assert (not (= i8 i18)))
(assert (not (= i8 i17)))
(assert (not (= i8 i16)))
(assert (not (= i8 i15)))
(assert (not (= i8 i14)))
(assert (not (= i8 i13)))
(assert (not (= i8 i12)))
(assert (not (= i8 i11)))
(assert (not (= i8 i10)))
(assert (not (= i8 i9)))
(assert (not (= i7 i20)))
(assert (not (= i7 i19)))
(assert (not (= i7 i18)))
(assert (not (= i7 i17)))
(assert (not (= i7 i16)))
(assert (not (= i7 i15)))
(assert (not (= i7 i14)))
(assert (not (= i7 i13)))
(assert (not (= i7 i12)))
(assert (not (= i7 i11)))
(assert (not (= i7 i10)))
(assert (not (= i7 i9)))
(assert (not (= i7 i8)))
(assert (not (= i6 i20)))
(assert (not (= i6 i19)))
(assert (not (= i6 i18)))
(assert (not (= i6 i17)))
(assert (not (= i6 i16)))
(assert (not (= i6 i15)))
(assert (not (= i6 i14)))
(assert (not (= i6 i13)))
(assert (not (= i6 i12)))
(assert (not (= i6 i11)))
(assert (not (= i6 i10)))
(assert (not (= i6 i9)))
(assert (not (= i6 i8)))
(assert (not (= i6 i7)))
(assert (not (= i5 i20)))
(assert (not (= i5 i19)))
(assert (not (= i5 i18)))
(assert (not (= i5 i17)))
(assert (not (= i5 i16)))
(assert (not (= i5 i15)))
(assert (not (= i5 i14)))
(assert (not (= i5 i13)))
(assert (not (= i5 i12)))
(assert (not (= i5 i11)))
(assert (not (= i5 i10)))
(assert (not (= i5 i9)))
(assert (not (= i5 i8)))
(assert (not (= i5 i7)))
(assert (not (= i5 i6)))
(assert (not (= i4 i20)))
(assert (not (= i4 i19)))
(assert (not (= i4 i18)))
(assert (not (= i4 i17)))
(assert (not (= i4 i16)))
(assert (not (= i4 i15)))
(assert (not (= i4 i14)))
(assert (not (= i4 i13)))
(assert (not (= i4 i12)))
(assert (not (= i4 i11)))
(assert (not (= i4 i10)))
(assert (not (= i4 i9)))
(assert (not (= i4 i8)))
(assert (not (= i4 i7)))
(assert (not (= i4 i6)))
(assert (not (= i4 i5)))
(assert (not (= i3 i20)))
(assert (not (= i3 i19)))
(assert (not (= i3 i18)))
(assert (not (= i3 i17)))
(assert (not (= i3 i16)))
(assert (not (= i3 i15)))
(assert (not (= i3 i14)))
(assert (not (= i3 i13)))
(assert (not (= i3 i12)))
(assert (not (= i3 i11)))
(assert (not (= i3 i10)))
(assert (not (= i3 i9)))
(assert (not (= i3 i8)))
(assert (not (= i3 i7)))
(assert (not (= i3 i6)))
(assert (not (= i3 i5)))
(assert (not (= i3 i4)))
(assert (not (= i2 i20)))
(assert (not (= i2 i19)))
(assert (not (= i2 i18)))
(assert (not (= i2 i17)))
(assert (not (= i2 i16)))
(assert (not (= i2 i15)))
(assert (not (= i2 i14)))
(assert (not (= i2 i13)))
(assert (not (= i2 i12)))
(assert (not (= i2 i11)))
(assert (not (= i2 i10)))
(assert (not (= i2 i9)))
(assert (not (= i2 i8)))
(assert (not (= i2 i7)))
(assert (not (= i2 i6)))
(assert (not (= i2 i5)))
(assert (not (= i2 i4)))
(assert (not (= i2 i3)))
(assert (not (= i1 i20)))
(assert (not (= i1 i19)))
(assert (not (= i1 i18)))
(assert (not (= i1 i17)))
(assert (not (= i1 i16)))
(assert (not (= i1 i15)))
(assert (not (= i1 i14)))
(assert (not (= i1 i13)))
(assert (not (= i1 i12)))
(assert (not (= i1 i11)))
(assert (not (= i1 i10)))
(assert (not (= i1 i9)))
(assert (not (= i1 i8)))
(assert (not (= i1 i7)))
(assert (not (= i1 i6)))
(assert (not (= i1 i5)))
(assert (not (= i1 i4)))
(assert (not (= i1 i3)))
(assert (not (= i1 i2)))
(assert (not (= a_99 a_119)))
(check-sat)
(exit)