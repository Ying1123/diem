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
(set-info :status unsat)

(declare-sort Element 0)
(declare-fun a_151 () (Seq Element))
(declare-fun a_152 () (Seq Element))
(declare-fun a_154 () (Seq Element))
(declare-fun a_156 () (Seq Element))
(declare-fun a_158 () (Seq Element))
(declare-fun a_160 () (Seq Element))
(declare-fun a_162 () (Seq Element))
(declare-fun a_164 () (Seq Element))
(declare-fun a_166 () (Seq Element))
(declare-fun a_168 () (Seq Element))
(declare-fun a_170 () (Seq Element))
(declare-fun a_172 () (Seq Element))
(declare-fun a_174 () (Seq Element))
(declare-fun a_176 () (Seq Element))
(declare-fun a_178 () (Seq Element))
(declare-fun a_179 () (Seq Element))
(declare-fun a_181 () (Seq Element))
(declare-fun a_183 () (Seq Element))
(declare-fun a_185 () (Seq Element))
(declare-fun a_187 () (Seq Element))
(declare-fun a_188 () (Seq Element))
(declare-fun a_189 () (Seq Element))
(declare-fun a_191 () (Seq Element))
(declare-fun a_193 () (Seq Element))
(declare-fun a_195 () (Seq Element))
(declare-fun a_197 () (Seq Element))
(declare-fun a_199 () (Seq Element))
(declare-fun a_201 () (Seq Element))
(declare-fun a_203 () (Seq Element))
(declare-fun a_205 () (Seq Element))
(declare-fun a_207 () (Seq Element))
(declare-fun a_209 () (Seq Element))
(declare-fun a_211 () (Seq Element))
(declare-fun a_212 () (Seq Element))
(declare-fun a_214 () (Seq Element))
(declare-fun a_216 () (Seq Element))
(declare-fun a_218 () (Seq Element))
(declare-fun a_220 () (Seq Element))
(declare-fun e_150 () Element)
(declare-fun e_153 () Element)
(declare-fun e_155 () Element)
(declare-fun e_157 () Element)
(declare-fun e_159 () Element)
(declare-fun e_161 () Element)
(declare-fun e_163 () Element)
(declare-fun e_165 () Element)
(declare-fun e_167 () Element)
(declare-fun e_169 () Element)
(declare-fun e_171 () Element)
(declare-fun e_173 () Element)
(declare-fun e_175 () Element)
(declare-fun e_177 () Element)
(declare-fun e_180 () Element)
(declare-fun e_182 () Element)
(declare-fun e_184 () Element)
(declare-fun e_186 () Element)
(declare-fun e_190 () Element)
(declare-fun e_192 () Element)
(declare-fun e_194 () Element)
(declare-fun e_196 () Element)
(declare-fun e_198 () Element)
(declare-fun e_200 () Element)
(declare-fun e_202 () Element)
(declare-fun e_204 () Element)
(declare-fun e_206 () Element)
(declare-fun e_208 () Element)
(declare-fun e_210 () Element)
(declare-fun e_213 () Element)
(declare-fun e_215 () Element)
(declare-fun e_217 () Element)
(declare-fun e_219 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (= a_151 (seq.update a1 i8 (seq.unit e_150))))
(assert (= a_152 (seq.update a_151 i8 (seq.unit e_150))))
(assert (= a_154 (seq.update a_152 i7 (seq.unit e_153))))
(assert (= a_156 (seq.update a_154 i6 (seq.unit e_155))))
(assert (= a_158 (seq.update a_156 i5 (seq.unit e_157))))
(assert (= a_160 (seq.update a_158 i7 (seq.unit e_159))))
(assert (= a_162 (seq.update a_160 i8 (seq.unit e_161))))
(assert (= a_164 (seq.update a_162 i9 (seq.unit e_163))))
(assert (= a_166 (seq.update a_164 i1 (seq.unit e_165))))
(assert (= a_168 (seq.update a_166 i4 (seq.unit e_167))))
(assert (= a_170 (seq.update a_168 i1 (seq.unit e_169))))
(assert (= a_172 (seq.update a_170 i4 (seq.unit e_171))))
(assert (= a_174 (seq.update a_172 i0 (seq.unit e_173))))
(assert (= a_176 (seq.update a_174 i9 (seq.unit e_175))))
(assert (= a_178 (seq.update a_176 i3 (seq.unit e_177))))
(assert (= a_179 (seq.update a_178 i3 (seq.unit e_177))))
(assert (= a_181 (seq.update a_179 i6 (seq.unit e_180))))
(assert (= a_183 (seq.update a_181 i2 (seq.unit e_182))))
(assert (= a_185 (seq.update a_183 i6 (seq.unit e_184))))
(assert (= a_187 (seq.update a_185 i7 (seq.unit e_186))))
(assert (= a_188 (seq.update a_152 i6 (seq.unit e_155))))
(assert (= a_189 (seq.update a_188 i7 (seq.unit e_153))))
(assert (= a_191 (seq.update a_189 i7 (seq.unit e_190))))
(assert (= a_193 (seq.update a_191 i5 (seq.unit e_192))))
(assert (= a_195 (seq.update a_193 i9 (seq.unit e_194))))
(assert (= a_197 (seq.update a_195 i8 (seq.unit e_196))))
(assert (= a_199 (seq.update a_197 i4 (seq.unit e_198))))
(assert (= a_201 (seq.update a_199 i1 (seq.unit e_200))))
(assert (= a_203 (seq.update a_201 i4 (seq.unit e_202))))
(assert (= a_205 (seq.update a_203 i1 (seq.unit e_204))))
(assert (= a_207 (seq.update a_205 i0 (seq.unit e_206))))
(assert (= a_209 (seq.update a_207 i9 (seq.unit e_208))))
(assert (= a_211 (seq.update a_209 i3 (seq.unit e_210))))
(assert (= a_212 (seq.update a_211 i3 (seq.unit e_210))))
(assert (= a_214 (seq.update a_212 i6 (seq.unit e_213))))
(assert (= a_216 (seq.update a_214 i2 (seq.unit e_215))))
(assert (= a_218 (seq.update a_216 i7 (seq.unit e_217))))
(assert (= a_220 (seq.update a_218 i6 (seq.unit e_219))))
(assert (= e_150 (seq.nth a1 i8)))
(assert (= e_153 (seq.nth a_152 i6)))
(assert (= e_155 (seq.nth a_152 i7)))
(assert (= e_157 (seq.nth a_156 i7)))
(assert (= e_159 (seq.nth a_156 i5)))
(assert (= e_161 (seq.nth a_160 i9)))
(assert (= e_163 (seq.nth a_160 i8)))
(assert (= e_165 (seq.nth a_164 i4)))
(assert (= e_167 (seq.nth a_164 i1)))
(assert (= e_169 (seq.nth a_168 i4)))
(assert (= e_171 (seq.nth a_168 i1)))
(assert (= e_173 (seq.nth a_172 i9)))
(assert (= e_175 (seq.nth a_172 i0)))
(assert (= e_177 (seq.nth a_176 i3)))
(assert (= e_180 (seq.nth a_179 i2)))
(assert (= e_182 (seq.nth a_179 i6)))
(assert (= e_184 (seq.nth a_183 i7)))
(assert (= e_186 (seq.nth a_183 i6)))
(assert (= e_190 (seq.nth a_189 i5)))
(assert (= e_192 (seq.nth a_189 i7)))
(assert (= e_194 (seq.nth a_193 i8)))
(assert (= e_196 (seq.nth a_193 i9)))
(assert (= e_198 (seq.nth a_197 i1)))
(assert (= e_200 (seq.nth a_197 i4)))
(assert (= e_202 (seq.nth a_201 i1)))
(assert (= e_204 (seq.nth a_201 i4)))
(assert (= e_206 (seq.nth a_205 i9)))
(assert (= e_208 (seq.nth a_205 i0)))
(assert (= e_210 (seq.nth a_209 i3)))
(assert (= e_213 (seq.nth a_212 i2)))
(assert (= e_215 (seq.nth a_212 i6)))
(assert (= e_217 (seq.nth a_216 i6)))
(assert (= e_219 (seq.nth a_216 i7)))
(assert (not (= a_187 a_220)))
(check-sat)
(exit)
