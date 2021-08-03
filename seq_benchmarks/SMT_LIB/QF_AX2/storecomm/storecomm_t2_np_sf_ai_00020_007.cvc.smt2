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
(declare-fun a_160 () (Array Index Element))
(declare-fun a_161 () (Array Index Element))
(declare-fun a_162 () (Array Index Element))
(declare-fun a_163 () (Array Index Element))
(declare-fun a_164 () (Array Index Element))
(declare-fun a_165 () (Array Index Element))
(declare-fun a_166 () (Array Index Element))
(declare-fun a_167 () (Array Index Element))
(declare-fun a_168 () (Array Index Element))
(declare-fun a_169 () (Array Index Element))
(declare-fun a_170 () (Array Index Element))
(declare-fun a_171 () (Array Index Element))
(declare-fun a_172 () (Array Index Element))
(declare-fun a_173 () (Array Index Element))
(declare-fun a_174 () (Array Index Element))
(declare-fun a_175 () (Array Index Element))
(declare-fun a_176 () (Array Index Element))
(declare-fun a_177 () (Array Index Element))
(declare-fun a_178 () (Array Index Element))
(declare-fun a_179 () (Array Index Element))
(declare-fun a_180 () (Array Index Element))
(declare-fun a_181 () (Array Index Element))
(declare-fun a_182 () (Array Index Element))
(declare-fun a_183 () (Array Index Element))
(declare-fun a_184 () (Array Index Element))
(declare-fun a_185 () (Array Index Element))
(declare-fun a_186 () (Array Index Element))
(declare-fun a_187 () (Array Index Element))
(declare-fun a_188 () (Array Index Element))
(declare-fun a_189 () (Array Index Element))
(declare-fun a_190 () (Array Index Element))
(declare-fun a_191 () (Array Index Element))
(declare-fun a_192 () (Array Index Element))
(declare-fun a_193 () (Array Index Element))
(declare-fun a_194 () (Array Index Element))
(declare-fun a_195 () (Array Index Element))
(declare-fun a_196 () (Array Index Element))
(declare-fun a_197 () (Array Index Element))
(declare-fun a_198 () (Array Index Element))
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
(assert (= a_160 (store a1 i1 e1)))
(assert (= a_161 (store a_160 i2 e2)))
(assert (= a_162 (store a_161 i3 e3)))
(assert (= a_163 (store a_162 i4 e4)))
(assert (= a_164 (store a_163 i5 e5)))
(assert (= a_165 (store a_164 i6 e6)))
(assert (= a_166 (store a_165 i7 e7)))
(assert (= a_167 (store a_166 i8 e8)))
(assert (= a_168 (store a_167 i9 e9)))
(assert (= a_169 (store a_168 i10 e10)))
(assert (= a_170 (store a_169 i11 e11)))
(assert (= a_171 (store a_170 i12 e12)))
(assert (= a_172 (store a_171 i13 e13)))
(assert (= a_173 (store a_172 i14 e14)))
(assert (= a_174 (store a_173 i15 e15)))
(assert (= a_175 (store a_174 i16 e16)))
(assert (= a_176 (store a_175 i17 e17)))
(assert (= a_177 (store a_176 i18 e18)))
(assert (= a_178 (store a_177 i19 e19)))
(assert (= a_179 (store a_178 i20 e20)))
(assert (= a_180 (store a_160 i10 e10)))
(assert (= a_181 (store a_180 i17 e17)))
(assert (= a_182 (store a_181 i3 e3)))
(assert (= a_183 (store a_182 i11 e11)))
(assert (= a_184 (store a_183 i12 e12)))
(assert (= a_185 (store a_184 i16 e16)))
(assert (= a_186 (store a_185 i6 e6)))
(assert (= a_187 (store a_186 i19 e19)))
(assert (= a_188 (store a_187 i4 e4)))
(assert (= a_189 (store a_188 i14 e14)))
(assert (= a_190 (store a_189 i5 e5)))
(assert (= a_191 (store a_190 i9 e9)))
(assert (= a_192 (store a_191 i18 e18)))
(assert (= a_193 (store a_192 i20 e20)))
(assert (= a_194 (store a_193 i13 e13)))
(assert (= a_195 (store a_194 i15 e15)))
(assert (= a_196 (store a_195 i2 e2)))
(assert (= a_197 (store a_196 i8 e8)))
(assert (= a_198 (store a_197 i7 e7)))
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
(assert (not (= a_179 a_198)))
(check-sat)
(exit)
