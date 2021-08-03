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
(declare-fun a_269 () (Array Index Element))
(declare-fun a_271 () (Array Index Element))
(declare-fun a_273 () (Array Index Element))
(declare-fun a_275 () (Array Index Element))
(declare-fun a_277 () (Array Index Element))
(declare-fun a_279 () (Array Index Element))
(declare-fun a_281 () (Array Index Element))
(declare-fun a_283 () (Array Index Element))
(declare-fun a_285 () (Array Index Element))
(declare-fun a_287 () (Array Index Element))
(declare-fun a_289 () (Array Index Element))
(declare-fun a_291 () (Array Index Element))
(declare-fun a_293 () (Array Index Element))
(declare-fun a_295 () (Array Index Element))
(declare-fun a_297 () (Array Index Element))
(declare-fun a_299 () (Array Index Element))
(declare-fun a_301 () (Array Index Element))
(declare-fun a_303 () (Array Index Element))
(declare-fun a_304 () (Array Index Element))
(declare-fun a_305 () (Array Index Element))
(declare-fun a_307 () (Array Index Element))
(declare-fun a_309 () (Array Index Element))
(declare-fun a_311 () (Array Index Element))
(declare-fun a_313 () (Array Index Element))
(declare-fun a_315 () (Array Index Element))
(declare-fun a_317 () (Array Index Element))
(declare-fun a_319 () (Array Index Element))
(declare-fun a_321 () (Array Index Element))
(declare-fun a_323 () (Array Index Element))
(declare-fun a_325 () (Array Index Element))
(declare-fun a_327 () (Array Index Element))
(declare-fun a_329 () (Array Index Element))
(declare-fun a_331 () (Array Index Element))
(declare-fun a_333 () (Array Index Element))
(declare-fun e_268 () Element)
(declare-fun e_270 () Element)
(declare-fun e_272 () Element)
(declare-fun e_274 () Element)
(declare-fun e_276 () Element)
(declare-fun e_278 () Element)
(declare-fun e_280 () Element)
(declare-fun e_282 () Element)
(declare-fun e_284 () Element)
(declare-fun e_286 () Element)
(declare-fun e_288 () Element)
(declare-fun e_290 () Element)
(declare-fun e_292 () Element)
(declare-fun e_294 () Element)
(declare-fun e_296 () Element)
(declare-fun e_298 () Element)
(declare-fun e_300 () Element)
(declare-fun e_302 () Element)
(declare-fun e_306 () Element)
(declare-fun e_308 () Element)
(declare-fun e_310 () Element)
(declare-fun e_312 () Element)
(declare-fun e_314 () Element)
(declare-fun e_316 () Element)
(declare-fun e_318 () Element)
(declare-fun e_320 () Element)
(declare-fun e_322 () Element)
(declare-fun e_324 () Element)
(declare-fun e_326 () Element)
(declare-fun e_328 () Element)
(declare-fun e_330 () Element)
(declare-fun e_332 () Element)
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(declare-fun i7 () Index)
(declare-fun i8 () Index)
(assert (= a_269 (store a1 i6 e_268)))
(assert (= a_271 (store a_269 i8 e_270)))
(assert (= a_273 (store a_271 i3 e_272)))
(assert (= a_275 (store a_273 i1 e_274)))
(assert (= a_277 (store a_275 i6 e_276)))
(assert (= a_279 (store a_277 i5 e_278)))
(assert (= a_281 (store a_279 i6 e_280)))
(assert (= a_283 (store a_281 i1 e_282)))
(assert (= a_285 (store a_283 i5 e_284)))
(assert (= a_287 (store a_285 i7 e_286)))
(assert (= a_289 (store a_287 i7 e_288)))
(assert (= a_291 (store a_289 i2 e_290)))
(assert (= a_293 (store a_291 i2 e_292)))
(assert (= a_295 (store a_293 i1 e_294)))
(assert (= a_297 (store a_295 i8 e_296)))
(assert (= a_299 (store a_297 i5 e_298)))
(assert (= a_301 (store a_299 i7 e_300)))
(assert (= a_303 (store a_301 i0 e_302)))
(assert (= a_304 (store a_271 i1 e_274)))
(assert (= a_305 (store a_304 i3 e_272)))
(assert (= a_307 (store a_305 i5 e_306)))
(assert (= a_309 (store a_307 i6 e_308)))
(assert (= a_311 (store a_309 i1 e_310)))
(assert (= a_313 (store a_311 i6 e_312)))
(assert (= a_315 (store a_313 i7 e_314)))
(assert (= a_317 (store a_315 i5 e_316)))
(assert (= a_319 (store a_317 i7 e_318)))
(assert (= a_321 (store a_319 i2 e_320)))
(assert (= a_323 (store a_321 i1 e_322)))
(assert (= a_325 (store a_323 i2 e_324)))
(assert (= a_327 (store a_325 i8 e_326)))
(assert (= a_329 (store a_327 i5 e_328)))
(assert (= a_331 (store a_329 i7 e_330)))
(assert (= a_333 (store a_331 i0 e_332)))
(assert (= e_268 (select a1 i8)))
(assert (= e_270 (select a1 i6)))
(assert (= e_272 (select a_271 i1)))
(assert (= e_274 (select a_271 i3)))
(assert (= e_276 (select a_275 i5)))
(assert (= e_278 (select a_275 i6)))
(assert (= e_280 (select a_279 i1)))
(assert (= e_282 (select a_279 i6)))
(assert (= e_284 (select a_283 i7)))
(assert (= e_286 (select a_283 i5)))
(assert (= e_288 (select a_287 i2)))
(assert (= e_290 (select a_287 i7)))
(assert (= e_292 (select a_291 i1)))
(assert (= e_294 (select a_291 i2)))
(assert (= e_296 (select a_295 i5)))
(assert (= e_298 (select a_295 i8)))
(assert (= e_300 (select a_299 i0)))
(assert (= e_302 (select a_299 i7)))
(assert (= e_306 (select a_305 i6)))
(assert (= e_308 (select a_305 i5)))
(assert (= e_310 (select a_309 i6)))
(assert (= e_312 (select a_309 i1)))
(assert (= e_314 (select a_313 i5)))
(assert (= e_316 (select a_313 i7)))
(assert (= e_318 (select a_317 i2)))
(assert (= e_320 (select a_317 i7)))
(assert (= e_322 (select a_321 i2)))
(assert (= e_324 (select a_321 i1)))
(assert (= e_326 (select a_325 i5)))
(assert (= e_328 (select a_325 i8)))
(assert (= e_330 (select a_329 i0)))
(assert (= e_332 (select a_329 i7)))
(assert (not (= a_303 a_333)))
(check-sat)
(exit)
