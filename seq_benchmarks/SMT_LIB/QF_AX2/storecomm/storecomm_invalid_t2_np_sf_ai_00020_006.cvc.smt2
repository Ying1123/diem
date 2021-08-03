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
(declare-fun a_239 () (Array Index Element))
(declare-fun a_240 () (Array Index Element))
(declare-fun a_241 () (Array Index Element))
(declare-fun a_242 () (Array Index Element))
(declare-fun a_243 () (Array Index Element))
(declare-fun a_244 () (Array Index Element))
(declare-fun a_245 () (Array Index Element))
(declare-fun a_246 () (Array Index Element))
(declare-fun a_247 () (Array Index Element))
(declare-fun a_248 () (Array Index Element))
(declare-fun a_249 () (Array Index Element))
(declare-fun a_250 () (Array Index Element))
(declare-fun a_251 () (Array Index Element))
(declare-fun a_252 () (Array Index Element))
(declare-fun a_253 () (Array Index Element))
(declare-fun a_254 () (Array Index Element))
(declare-fun a_255 () (Array Index Element))
(declare-fun a_256 () (Array Index Element))
(declare-fun a_257 () (Array Index Element))
(declare-fun a_258 () (Array Index Element))
(declare-fun a_259 () (Array Index Element))
(declare-fun a_260 () (Array Index Element))
(declare-fun a_261 () (Array Index Element))
(declare-fun a_262 () (Array Index Element))
(declare-fun a_263 () (Array Index Element))
(declare-fun a_264 () (Array Index Element))
(declare-fun a_265 () (Array Index Element))
(declare-fun a_266 () (Array Index Element))
(declare-fun a_267 () (Array Index Element))
(declare-fun a_268 () (Array Index Element))
(declare-fun a_269 () (Array Index Element))
(declare-fun a_270 () (Array Index Element))
(declare-fun a_271 () (Array Index Element))
(declare-fun a_272 () (Array Index Element))
(declare-fun a_273 () (Array Index Element))
(declare-fun a_274 () (Array Index Element))
(declare-fun a_275 () (Array Index Element))
(declare-fun a_276 () (Array Index Element))
(declare-fun a_277 () (Array Index Element))
(declare-fun a_278 () (Array Index Element))
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
(assert (= a_239 (store a1 i1 e1)))
(assert (= a_240 (store a_239 i2 e2)))
(assert (= a_241 (store a_240 i3 e3)))
(assert (= a_242 (store a_241 i4 e4)))
(assert (= a_243 (store a_242 i5 e5)))
(assert (= a_244 (store a_243 i6 e6)))
(assert (= a_245 (store a_244 i7 e7)))
(assert (= a_246 (store a_245 i8 e8)))
(assert (= a_247 (store a_246 i9 e9)))
(assert (= a_248 (store a_247 i10 e10)))
(assert (= a_249 (store a_248 i11 e11)))
(assert (= a_250 (store a_249 i12 e12)))
(assert (= a_251 (store a_250 i13 e13)))
(assert (= a_252 (store a_251 i14 e14)))
(assert (= a_253 (store a_252 i15 e15)))
(assert (= a_254 (store a_253 i16 e16)))
(assert (= a_255 (store a_254 i17 e17)))
(assert (= a_256 (store a_255 i18 e18)))
(assert (= a_257 (store a_256 i19 e19)))
(assert (= a_258 (store a_257 i1 e1)))
(assert (= a_259 (store a1 i20 e20)))
(assert (= a_260 (store a_259 i18 e18)))
(assert (= a_261 (store a_260 i19 e19)))
(assert (= a_262 (store a_261 i3 e3)))
(assert (= a_263 (store a_262 i12 e12)))
(assert (= a_264 (store a_263 i5 e5)))
(assert (= a_265 (store a_264 i11 e11)))
(assert (= a_266 (store a_265 i16 e16)))
(assert (= a_267 (store a_266 i1 e1)))
(assert (= a_268 (store a_267 i2 e2)))
(assert (= a_269 (store a_268 i10 e10)))
(assert (= a_270 (store a_269 i6 e6)))
(assert (= a_271 (store a_270 i8 e8)))
(assert (= a_272 (store a_271 i4 e4)))
(assert (= a_273 (store a_272 i17 e17)))
(assert (= a_274 (store a_273 i7 e7)))
(assert (= a_275 (store a_274 i13 e13)))
(assert (= a_276 (store a_275 i9 e9)))
(assert (= a_277 (store a_276 i15 e15)))
(assert (= a_278 (store a_277 i14 e14)))
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
(assert (not (= a_258 a_278)))
(check-sat)
(exit)
