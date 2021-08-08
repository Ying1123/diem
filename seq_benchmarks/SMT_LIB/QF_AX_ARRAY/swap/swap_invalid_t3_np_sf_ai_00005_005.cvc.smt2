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
(declare-fun a_251 () (Array Index Element))
(declare-fun a_253 () (Array Index Element))
(declare-fun a_255 () (Array Index Element))
(declare-fun a_257 () (Array Index Element))
(declare-fun a_259 () (Array Index Element))
(declare-fun a_261 () (Array Index Element))
(declare-fun a_263 () (Array Index Element))
(declare-fun a_265 () (Array Index Element))
(declare-fun a_267 () (Array Index Element))
(declare-fun a_269 () (Array Index Element))
(declare-fun a_270 () (Array Index Element))
(declare-fun a_271 () (Array Index Element))
(declare-fun a_273 () (Array Index Element))
(declare-fun a_275 () (Array Index Element))
(declare-fun a_277 () (Array Index Element))
(declare-fun a_279 () (Array Index Element))
(declare-fun a_281 () (Array Index Element))
(declare-fun a_283 () (Array Index Element))
(declare-fun a_285 () (Array Index Element))
(declare-fun a_287 () (Array Index Element))
(declare-fun e_250 () Element)
(declare-fun e_252 () Element)
(declare-fun e_254 () Element)
(declare-fun e_256 () Element)
(declare-fun e_258 () Element)
(declare-fun e_260 () Element)
(declare-fun e_262 () Element)
(declare-fun e_264 () Element)
(declare-fun e_266 () Element)
(declare-fun e_268 () Element)
(declare-fun e_272 () Element)
(declare-fun e_274 () Element)
(declare-fun e_276 () Element)
(declare-fun e_278 () Element)
(declare-fun e_280 () Element)
(declare-fun e_282 () Element)
(declare-fun e_284 () Element)
(declare-fun e_286 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(assert (= a_251 (store a1 i0 e_250)))
(assert (= a_253 (store a_251 i1 e_252)))
(assert (= a_255 (store a_253 i3 e_254)))
(assert (= a_257 (store a_255 i2 e_256)))
(assert (= a_259 (store a_257 i3 e_258)))
(assert (= a_261 (store a_259 i0 e_260)))
(assert (= a_263 (store a_261 i3 e_262)))
(assert (= a_265 (store a_263 i0 e_264)))
(assert (= a_267 (store a_265 i4 e_266)))
(assert (= a_269 (store a_267 i1 e_268)))
(assert (= a_270 (store a1 i1 e_252)))
(assert (= a_271 (store a_270 i0 e_250)))
(assert (= a_273 (store a_271 i3 e_272)))
(assert (= a_275 (store a_273 i2 e_274)))
(assert (= a_277 (store a_275 i0 e_276)))
(assert (= a_279 (store a_277 i3 e_278)))
(assert (= a_281 (store a_279 i3 e_280)))
(assert (= a_283 (store a_281 i0 e_282)))
(assert (= a_285 (store a_283 i1 e_284)))
(assert (= a_287 (store a_285 i0 e_286)))
(assert (= e_250 (select a1 i1)))
(assert (= e_252 (select a1 i0)))
(assert (= e_254 (select a_253 i2)))
(assert (= e_256 (select a_253 i3)))
(assert (= e_258 (select a_257 i0)))
(assert (= e_260 (select a_257 i3)))
(assert (= e_262 (select a_261 i0)))
(assert (= e_264 (select a_261 i3)))
(assert (= e_266 (select a_265 i1)))
(assert (= e_268 (select a_265 i4)))
(assert (= e_272 (select a_271 i2)))
(assert (= e_274 (select a_271 i3)))
(assert (= e_276 (select a_275 i3)))
(assert (= e_278 (select a_275 i0)))
(assert (= e_280 (select a_279 i0)))
(assert (= e_282 (select a_279 i3)))
(assert (= e_284 (select a_283 i0)))
(assert (= e_286 (select a_283 i1)))
(assert (not (= a_269 a_287)))
(check-sat)
(exit)
