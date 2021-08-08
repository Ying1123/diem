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
(declare-fun a_160 () (Seq Element))
(declare-fun a_161 () (Seq Element))
(declare-fun a_162 () (Seq Element))
(declare-fun a_163 () (Seq Element))
(declare-fun a_164 () (Seq Element))
(declare-fun a_165 () (Seq Element))
(declare-fun a_166 () (Seq Element))
(declare-fun a_167 () (Seq Element))
(declare-fun a_168 () (Seq Element))
(declare-fun a_169 () (Seq Element))
(declare-fun a_170 () (Seq Element))
(declare-fun a_171 () (Seq Element))
(declare-fun a_172 () (Seq Element))
(declare-fun a_173 () (Seq Element))
(declare-fun a_174 () (Seq Element))
(declare-fun a_175 () (Seq Element))
(declare-fun a_176 () (Seq Element))
(declare-fun a_177 () (Seq Element))
(declare-fun a_178 () (Seq Element))
(declare-fun a_179 () (Seq Element))
(declare-fun a_180 () (Seq Element))
(declare-fun a_181 () (Seq Element))
(declare-fun a_182 () (Seq Element))
(declare-fun a_183 () (Seq Element))
(declare-fun a_184 () (Seq Element))
(declare-fun a_185 () (Seq Element))
(declare-fun a_186 () (Seq Element))
(declare-fun a_187 () (Seq Element))
(declare-fun a_188 () (Seq Element))
(declare-fun a_189 () (Seq Element))
(declare-fun a_190 () (Seq Element))
(declare-fun a_191 () (Seq Element))
(declare-fun a_192 () (Seq Element))
(declare-fun a_193 () (Seq Element))
(declare-fun a_194 () (Seq Element))
(declare-fun a_195 () (Seq Element))
(declare-fun a_196 () (Seq Element))
(declare-fun a_197 () (Seq Element))
(declare-fun a_198 () (Seq Element))
(declare-fun a_199 () (Seq Element))
(declare-fun a_200 () (Seq Element))
(declare-fun a_201 () (Seq Element))
(declare-fun a_202 () (Seq Element))
(declare-fun a_203 () (Seq Element))
(declare-fun a_204 () (Seq Element))
(declare-fun a_205 () (Seq Element))
(declare-fun a_206 () (Seq Element))
(declare-fun a_207 () (Seq Element))
(declare-fun a_208 () (Seq Element))
(declare-fun a_209 () (Seq Element))
(declare-fun a_210 () (Seq Element))
(declare-fun a_211 () (Seq Element))
(declare-fun a_212 () (Seq Element))
(declare-fun a_213 () (Seq Element))
(declare-fun a_214 () (Seq Element))
(declare-fun a_215 () (Seq Element))
(declare-fun a_216 () (Seq Element))
(declare-fun a_217 () (Seq Element))
(declare-fun a_218 () (Seq Element))
(declare-fun a_219 () (Seq Element))
(declare-fun a_220 () (Seq Element))
(declare-fun a_221 () (Seq Element))
(declare-fun a_222 () (Seq Element))
(declare-fun a_223 () (Seq Element))
(declare-fun a_224 () (Seq Element))
(declare-fun a_225 () (Seq Element))
(declare-fun a_226 () (Seq Element))
(declare-fun a_227 () (Seq Element))
(declare-fun a_228 () (Seq Element))
(declare-fun a_229 () (Seq Element))
(declare-fun a_230 () (Seq Element))
(declare-fun a_231 () (Seq Element))
(declare-fun a_232 () (Seq Element))
(declare-fun a_233 () (Seq Element))
(declare-fun a_234 () (Seq Element))
(declare-fun a_235 () (Seq Element))
(declare-fun a_236 () (Seq Element))
(declare-fun a_237 () (Seq Element))
(declare-fun a_238 () (Seq Element))
(declare-fun a_239 () (Seq Element))
(declare-fun a1 () (Seq Element))
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
(declare-fun e21 () Element)
(declare-fun e22 () Element)
(declare-fun e23 () Element)
(declare-fun e24 () Element)
(declare-fun e25 () Element)
(declare-fun e26 () Element)
(declare-fun e27 () Element)
(declare-fun e28 () Element)
(declare-fun e29 () Element)
(declare-fun e3 () Element)
(declare-fun e30 () Element)
(declare-fun e31 () Element)
(declare-fun e32 () Element)
(declare-fun e33 () Element)
(declare-fun e34 () Element)
(declare-fun e35 () Element)
(declare-fun e36 () Element)
(declare-fun e37 () Element)
(declare-fun e38 () Element)
(declare-fun e39 () Element)
(declare-fun e4 () Element)
(declare-fun e40 () Element)
(declare-fun e5 () Element)
(declare-fun e6 () Element)
(declare-fun e7 () Element)
(declare-fun e8 () Element)
(declare-fun e9 () Element)
(declare-fun i1 () Int)
(declare-fun i10 () Int)
(declare-fun i11 () Int)
(declare-fun i12 () Int)
(declare-fun i13 () Int)
(declare-fun i14 () Int)
(declare-fun i15 () Int)
(declare-fun i16 () Int)
(declare-fun i17 () Int)
(declare-fun i18 () Int)
(declare-fun i19 () Int)
(declare-fun i2 () Int)
(declare-fun i20 () Int)
(declare-fun i21 () Int)
(declare-fun i22 () Int)
(declare-fun i23 () Int)
(declare-fun i24 () Int)
(declare-fun i25 () Int)
(declare-fun i26 () Int)
(declare-fun i27 () Int)
(declare-fun i28 () Int)
(declare-fun i29 () Int)
(declare-fun i3 () Int)
(declare-fun i30 () Int)
(declare-fun i31 () Int)
(declare-fun i32 () Int)
(declare-fun i33 () Int)
(declare-fun i34 () Int)
(declare-fun i35 () Int)
(declare-fun i36 () Int)
(declare-fun i37 () Int)
(declare-fun i38 () Int)
(declare-fun i39 () Int)
(declare-fun i4 () Int)
(declare-fun i40 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (= a_160 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_161 (seq.update a_160 i2 (seq.unit e2))))
(assert (= a_162 (seq.update a_161 i3 (seq.unit e3))))
(assert (= a_163 (seq.update a_162 i4 (seq.unit e4))))
(assert (= a_164 (seq.update a_163 i5 (seq.unit e5))))
(assert (= a_165 (seq.update a_164 i6 (seq.unit e6))))
(assert (= a_166 (seq.update a_165 i7 (seq.unit e7))))
(assert (= a_167 (seq.update a_166 i8 (seq.unit e8))))
(assert (= a_168 (seq.update a_167 i9 (seq.unit e9))))
(assert (= a_169 (seq.update a_168 i10 (seq.unit e10))))
(assert (= a_170 (seq.update a_169 i11 (seq.unit e11))))
(assert (= a_171 (seq.update a_170 i12 (seq.unit e12))))
(assert (= a_172 (seq.update a_171 i13 (seq.unit e13))))
(assert (= a_173 (seq.update a_172 i14 (seq.unit e14))))
(assert (= a_174 (seq.update a_173 i15 (seq.unit e15))))
(assert (= a_175 (seq.update a_174 i16 (seq.unit e16))))
(assert (= a_176 (seq.update a_175 i17 (seq.unit e17))))
(assert (= a_177 (seq.update a_176 i18 (seq.unit e18))))
(assert (= a_178 (seq.update a_177 i19 (seq.unit e19))))
(assert (= a_179 (seq.update a_178 i20 (seq.unit e20))))
(assert (= a_180 (seq.update a_179 i21 (seq.unit e21))))
(assert (= a_181 (seq.update a_180 i22 (seq.unit e22))))
(assert (= a_182 (seq.update a_181 i23 (seq.unit e23))))
(assert (= a_183 (seq.update a_182 i24 (seq.unit e24))))
(assert (= a_184 (seq.update a_183 i25 (seq.unit e25))))
(assert (= a_185 (seq.update a_184 i26 (seq.unit e26))))
(assert (= a_186 (seq.update a_185 i27 (seq.unit e27))))
(assert (= a_187 (seq.update a_186 i28 (seq.unit e28))))
(assert (= a_188 (seq.update a_187 i29 (seq.unit e29))))
(assert (= a_189 (seq.update a_188 i30 (seq.unit e30))))
(assert (= a_190 (seq.update a_189 i31 (seq.unit e31))))
(assert (= a_191 (seq.update a_190 i32 (seq.unit e32))))
(assert (= a_192 (seq.update a_191 i33 (seq.unit e33))))
(assert (= a_193 (seq.update a_192 i34 (seq.unit e34))))
(assert (= a_194 (seq.update a_193 i35 (seq.unit e35))))
(assert (= a_195 (seq.update a_194 i36 (seq.unit e36))))
(assert (= a_196 (seq.update a_195 i37 (seq.unit e37))))
(assert (= a_197 (seq.update a_196 i38 (seq.unit e38))))
(assert (= a_198 (seq.update a_197 i39 (seq.unit e39))))
(assert (= a_199 (seq.update a_198 i40 (seq.unit e40))))
(assert (= a_200 (seq.update a1 i29 (seq.unit e29))))
(assert (= a_201 (seq.update a_200 i24 (seq.unit e24))))
(assert (= a_202 (seq.update a_201 i23 (seq.unit e23))))
(assert (= a_203 (seq.update a_202 i11 (seq.unit e11))))
(assert (= a_204 (seq.update a_203 i18 (seq.unit e18))))
(assert (= a_205 (seq.update a_204 i2 (seq.unit e2))))
(assert (= a_206 (seq.update a_205 i30 (seq.unit e30))))
(assert (= a_207 (seq.update a_206 i15 (seq.unit e15))))
(assert (= a_208 (seq.update a_207 i7 (seq.unit e7))))
(assert (= a_209 (seq.update a_208 i31 (seq.unit e31))))
(assert (= a_210 (seq.update a_209 i13 (seq.unit e13))))
(assert (= a_211 (seq.update a_210 i32 (seq.unit e32))))
(assert (= a_212 (seq.update a_211 i5 (seq.unit e5))))
(assert (= a_213 (seq.update a_212 i22 (seq.unit e22))))
(assert (= a_214 (seq.update a_213 i8 (seq.unit e8))))
(assert (= a_215 (seq.update a_214 i38 (seq.unit e38))))
(assert (= a_216 (seq.update a_215 i17 (seq.unit e17))))
(assert (= a_217 (seq.update a_216 i14 (seq.unit e14))))
(assert (= a_218 (seq.update a_217 i10 (seq.unit e10))))
(assert (= a_219 (seq.update a_218 i20 (seq.unit e20))))
(assert (= a_220 (seq.update a_219 i33 (seq.unit e33))))
(assert (= a_221 (seq.update a_220 i28 (seq.unit e28))))
(assert (= a_222 (seq.update a_221 i21 (seq.unit e21))))
(assert (= a_223 (seq.update a_222 i1 (seq.unit e1))))
(assert (= a_224 (seq.update a_223 i9 (seq.unit e9))))
(assert (= a_225 (seq.update a_224 i35 (seq.unit e35))))
(assert (= a_226 (seq.update a_225 i39 (seq.unit e39))))
(assert (= a_227 (seq.update a_226 i37 (seq.unit e37))))
(assert (= a_228 (seq.update a_227 i19 (seq.unit e19))))
(assert (= a_229 (seq.update a_228 i16 (seq.unit e16))))
(assert (= a_230 (seq.update a_229 i25 (seq.unit e25))))
(assert (= a_231 (seq.update a_230 i27 (seq.unit e27))))
(assert (= a_232 (seq.update a_231 i40 (seq.unit e40))))
(assert (= a_233 (seq.update a_232 i3 (seq.unit e3))))
(assert (= a_234 (seq.update a_233 i34 (seq.unit e34))))
(assert (= a_235 (seq.update a_234 i6 (seq.unit e6))))
(assert (= a_236 (seq.update a_235 i12 (seq.unit e12))))
(assert (= a_237 (seq.update a_236 i26 (seq.unit e26))))
(assert (= a_238 (seq.update a_237 i36 (seq.unit e36))))
(assert (= a_239 (seq.update a_238 i4 (seq.unit e4))))
(assert (not (= i39 i40)))
(assert (not (= i38 i40)))
(assert (not (= i38 i39)))
(assert (not (= i37 i40)))
(assert (not (= i37 i39)))
(assert (not (= i37 i38)))
(assert (not (= i36 i40)))
(assert (not (= i36 i39)))
(assert (not (= i36 i38)))
(assert (not (= i36 i37)))
(assert (not (= i35 i40)))
(assert (not (= i35 i39)))
(assert (not (= i35 i38)))
(assert (not (= i35 i37)))
(assert (not (= i35 i36)))
(assert (not (= i34 i40)))
(assert (not (= i34 i39)))
(assert (not (= i34 i38)))
(assert (not (= i34 i37)))
(assert (not (= i34 i36)))
(assert (not (= i34 i35)))
(assert (not (= i33 i40)))
(assert (not (= i33 i39)))
(assert (not (= i33 i38)))
(assert (not (= i33 i37)))
(assert (not (= i33 i36)))
(assert (not (= i33 i35)))
(assert (not (= i33 i34)))
(assert (not (= i32 i40)))
(assert (not (= i32 i39)))
(assert (not (= i32 i38)))
(assert (not (= i32 i37)))
(assert (not (= i32 i36)))
(assert (not (= i32 i35)))
(assert (not (= i32 i34)))
(assert (not (= i32 i33)))
(assert (not (= i31 i40)))
(assert (not (= i31 i39)))
(assert (not (= i31 i38)))
(assert (not (= i31 i37)))
(assert (not (= i31 i36)))
(assert (not (= i31 i35)))
(assert (not (= i31 i34)))
(assert (not (= i31 i33)))
(assert (not (= i31 i32)))
(assert (not (= i30 i40)))
(assert (not (= i30 i39)))
(assert (not (= i30 i38)))
(assert (not (= i30 i37)))
(assert (not (= i30 i36)))
(assert (not (= i30 i35)))
(assert (not (= i30 i34)))
(assert (not (= i30 i33)))
(assert (not (= i30 i32)))
(assert (not (= i30 i31)))
(assert (not (= i29 i40)))
(assert (not (= i29 i39)))
(assert (not (= i29 i38)))
(assert (not (= i29 i37)))
(assert (not (= i29 i36)))
(assert (not (= i29 i35)))
(assert (not (= i29 i34)))
(assert (not (= i29 i33)))
(assert (not (= i29 i32)))
(assert (not (= i29 i31)))
(assert (not (= i29 i30)))
(assert (not (= i28 i40)))
(assert (not (= i28 i39)))
(assert (not (= i28 i38)))
(assert (not (= i28 i37)))
(assert (not (= i28 i36)))
(assert (not (= i28 i35)))
(assert (not (= i28 i34)))
(assert (not (= i28 i33)))
(assert (not (= i28 i32)))
(assert (not (= i28 i31)))
(assert (not (= i28 i30)))
(assert (not (= i28 i29)))
(assert (not (= i27 i40)))
(assert (not (= i27 i39)))
(assert (not (= i27 i38)))
(assert (not (= i27 i37)))
(assert (not (= i27 i36)))
(assert (not (= i27 i35)))
(assert (not (= i27 i34)))
(assert (not (= i27 i33)))
(assert (not (= i27 i32)))
(assert (not (= i27 i31)))
(assert (not (= i27 i30)))
(assert (not (= i27 i29)))
(assert (not (= i27 i28)))
(assert (not (= i26 i40)))
(assert (not (= i26 i39)))
(assert (not (= i26 i38)))
(assert (not (= i26 i37)))
(assert (not (= i26 i36)))
(assert (not (= i26 i35)))
(assert (not (= i26 i34)))
(assert (not (= i26 i33)))
(assert (not (= i26 i32)))
(assert (not (= i26 i31)))
(assert (not (= i26 i30)))
(assert (not (= i26 i29)))
(assert (not (= i26 i28)))
(assert (not (= i26 i27)))
(assert (not (= i25 i40)))
(assert (not (= i25 i39)))
(assert (not (= i25 i38)))
(assert (not (= i25 i37)))
(assert (not (= i25 i36)))
(assert (not (= i25 i35)))
(assert (not (= i25 i34)))
(assert (not (= i25 i33)))
(assert (not (= i25 i32)))
(assert (not (= i25 i31)))
(assert (not (= i25 i30)))
(assert (not (= i25 i29)))
(assert (not (= i25 i28)))
(assert (not (= i25 i27)))
(assert (not (= i25 i26)))
(assert (not (= i24 i40)))
(assert (not (= i24 i39)))
(assert (not (= i24 i38)))
(assert (not (= i24 i37)))
(assert (not (= i24 i36)))
(assert (not (= i24 i35)))
(assert (not (= i24 i34)))
(assert (not (= i24 i33)))
(assert (not (= i24 i32)))
(assert (not (= i24 i31)))
(assert (not (= i24 i30)))
(assert (not (= i24 i29)))
(assert (not (= i24 i28)))
(assert (not (= i24 i27)))
(assert (not (= i24 i26)))
(assert (not (= i24 i25)))
(assert (not (= i23 i40)))
(assert (not (= i23 i39)))
(assert (not (= i23 i38)))
(assert (not (= i23 i37)))
(assert (not (= i23 i36)))
(assert (not (= i23 i35)))
(assert (not (= i23 i34)))
(assert (not (= i23 i33)))
(assert (not (= i23 i32)))
(assert (not (= i23 i31)))
(assert (not (= i23 i30)))
(assert (not (= i23 i29)))
(assert (not (= i23 i28)))
(assert (not (= i23 i27)))
(assert (not (= i23 i26)))
(assert (not (= i23 i25)))
(assert (not (= i23 i24)))
(assert (not (= i22 i40)))
(assert (not (= i22 i39)))
(assert (not (= i22 i38)))
(assert (not (= i22 i37)))
(assert (not (= i22 i36)))
(assert (not (= i22 i35)))
(assert (not (= i22 i34)))
(assert (not (= i22 i33)))
(assert (not (= i22 i32)))
(assert (not (= i22 i31)))
(assert (not (= i22 i30)))
(assert (not (= i22 i29)))
(assert (not (= i22 i28)))
(assert (not (= i22 i27)))
(assert (not (= i22 i26)))
(assert (not (= i22 i25)))
(assert (not (= i22 i24)))
(assert (not (= i22 i23)))
(assert (not (= i21 i40)))
(assert (not (= i21 i39)))
(assert (not (= i21 i38)))
(assert (not (= i21 i37)))
(assert (not (= i21 i36)))
(assert (not (= i21 i35)))
(assert (not (= i21 i34)))
(assert (not (= i21 i33)))
(assert (not (= i21 i32)))
(assert (not (= i21 i31)))
(assert (not (= i21 i30)))
(assert (not (= i21 i29)))
(assert (not (= i21 i28)))
(assert (not (= i21 i27)))
(assert (not (= i21 i26)))
(assert (not (= i21 i25)))
(assert (not (= i21 i24)))
(assert (not (= i21 i23)))
(assert (not (= i21 i22)))
(assert (not (= i20 i40)))
(assert (not (= i20 i39)))
(assert (not (= i20 i38)))
(assert (not (= i20 i37)))
(assert (not (= i20 i36)))
(assert (not (= i20 i35)))
(assert (not (= i20 i34)))
(assert (not (= i20 i33)))
(assert (not (= i20 i32)))
(assert (not (= i20 i31)))
(assert (not (= i20 i30)))
(assert (not (= i20 i29)))
(assert (not (= i20 i28)))
(assert (not (= i20 i27)))
(assert (not (= i20 i26)))
(assert (not (= i20 i25)))
(assert (not (= i20 i24)))
(assert (not (= i20 i23)))
(assert (not (= i20 i22)))
(assert (not (= i20 i21)))
(assert (not (= i19 i40)))
(assert (not (= i19 i39)))
(assert (not (= i19 i38)))
(assert (not (= i19 i37)))
(assert (not (= i19 i36)))
(assert (not (= i19 i35)))
(assert (not (= i19 i34)))
(assert (not (= i19 i33)))
(assert (not (= i19 i32)))
(assert (not (= i19 i31)))
(assert (not (= i19 i30)))
(assert (not (= i19 i29)))
(assert (not (= i19 i28)))
(assert (not (= i19 i27)))
(assert (not (= i19 i26)))
(assert (not (= i19 i25)))
(assert (not (= i19 i24)))
(assert (not (= i19 i23)))
(assert (not (= i19 i22)))
(assert (not (= i19 i21)))
(assert (not (= i19 i20)))
(assert (not (= i18 i40)))
(assert (not (= i18 i39)))
(assert (not (= i18 i38)))
(assert (not (= i18 i37)))
(assert (not (= i18 i36)))
(assert (not (= i18 i35)))
(assert (not (= i18 i34)))
(assert (not (= i18 i33)))
(assert (not (= i18 i32)))
(assert (not (= i18 i31)))
(assert (not (= i18 i30)))
(assert (not (= i18 i29)))
(assert (not (= i18 i28)))
(assert (not (= i18 i27)))
(assert (not (= i18 i26)))
(assert (not (= i18 i25)))
(assert (not (= i18 i24)))
(assert (not (= i18 i23)))
(assert (not (= i18 i22)))
(assert (not (= i18 i21)))
(assert (not (= i18 i20)))
(assert (not (= i18 i19)))
(assert (not (= i17 i40)))
(assert (not (= i17 i39)))
(assert (not (= i17 i38)))
(assert (not (= i17 i37)))
(assert (not (= i17 i36)))
(assert (not (= i17 i35)))
(assert (not (= i17 i34)))
(assert (not (= i17 i33)))
(assert (not (= i17 i32)))
(assert (not (= i17 i31)))
(assert (not (= i17 i30)))
(assert (not (= i17 i29)))
(assert (not (= i17 i28)))
(assert (not (= i17 i27)))
(assert (not (= i17 i26)))
(assert (not (= i17 i25)))
(assert (not (= i17 i24)))
(assert (not (= i17 i23)))
(assert (not (= i17 i22)))
(assert (not (= i17 i21)))
(assert (not (= i17 i20)))
(assert (not (= i17 i19)))
(assert (not (= i17 i18)))
(assert (not (= i16 i40)))
(assert (not (= i16 i39)))
(assert (not (= i16 i38)))
(assert (not (= i16 i37)))
(assert (not (= i16 i36)))
(assert (not (= i16 i35)))
(assert (not (= i16 i34)))
(assert (not (= i16 i33)))
(assert (not (= i16 i32)))
(assert (not (= i16 i31)))
(assert (not (= i16 i30)))
(assert (not (= i16 i29)))
(assert (not (= i16 i28)))
(assert (not (= i16 i27)))
(assert (not (= i16 i26)))
(assert (not (= i16 i25)))
(assert (not (= i16 i24)))
(assert (not (= i16 i23)))
(assert (not (= i16 i22)))
(assert (not (= i16 i21)))
(assert (not (= i16 i20)))
(assert (not (= i16 i19)))
(assert (not (= i16 i18)))
(assert (not (= i16 i17)))
(assert (not (= i15 i40)))
(assert (not (= i15 i39)))
(assert (not (= i15 i38)))
(assert (not (= i15 i37)))
(assert (not (= i15 i36)))
(assert (not (= i15 i35)))
(assert (not (= i15 i34)))
(assert (not (= i15 i33)))
(assert (not (= i15 i32)))
(assert (not (= i15 i31)))
(assert (not (= i15 i30)))
(assert (not (= i15 i29)))
(assert (not (= i15 i28)))
(assert (not (= i15 i27)))
(assert (not (= i15 i26)))
(assert (not (= i15 i25)))
(assert (not (= i15 i24)))
(assert (not (= i15 i23)))
(assert (not (= i15 i22)))
(assert (not (= i15 i21)))
(assert (not (= i15 i20)))
(assert (not (= i15 i19)))
(assert (not (= i15 i18)))
(assert (not (= i15 i17)))
(assert (not (= i15 i16)))
(assert (not (= i14 i40)))
(assert (not (= i14 i39)))
(assert (not (= i14 i38)))
(assert (not (= i14 i37)))
(assert (not (= i14 i36)))
(assert (not (= i14 i35)))
(assert (not (= i14 i34)))
(assert (not (= i14 i33)))
(assert (not (= i14 i32)))
(assert (not (= i14 i31)))
(assert (not (= i14 i30)))
(assert (not (= i14 i29)))
(assert (not (= i14 i28)))
(assert (not (= i14 i27)))
(assert (not (= i14 i26)))
(assert (not (= i14 i25)))
(assert (not (= i14 i24)))
(assert (not (= i14 i23)))
(assert (not (= i14 i22)))
(assert (not (= i14 i21)))
(assert (not (= i14 i20)))
(assert (not (= i14 i19)))
(assert (not (= i14 i18)))
(assert (not (= i14 i17)))
(assert (not (= i14 i16)))
(assert (not (= i14 i15)))
(assert (not (= i13 i40)))
(assert (not (= i13 i39)))
(assert (not (= i13 i38)))
(assert (not (= i13 i37)))
(assert (not (= i13 i36)))
(assert (not (= i13 i35)))
(assert (not (= i13 i34)))
(assert (not (= i13 i33)))
(assert (not (= i13 i32)))
(assert (not (= i13 i31)))
(assert (not (= i13 i30)))
(assert (not (= i13 i29)))
(assert (not (= i13 i28)))
(assert (not (= i13 i27)))
(assert (not (= i13 i26)))
(assert (not (= i13 i25)))
(assert (not (= i13 i24)))
(assert (not (= i13 i23)))
(assert (not (= i13 i22)))
(assert (not (= i13 i21)))
(assert (not (= i13 i20)))
(assert (not (= i13 i19)))
(assert (not (= i13 i18)))
(assert (not (= i13 i17)))
(assert (not (= i13 i16)))
(assert (not (= i13 i15)))
(assert (not (= i13 i14)))
(assert (not (= i12 i40)))
(assert (not (= i12 i39)))
(assert (not (= i12 i38)))
(assert (not (= i12 i37)))
(assert (not (= i12 i36)))
(assert (not (= i12 i35)))
(assert (not (= i12 i34)))
(assert (not (= i12 i33)))
(assert (not (= i12 i32)))
(assert (not (= i12 i31)))
(assert (not (= i12 i30)))
(assert (not (= i12 i29)))
(assert (not (= i12 i28)))
(assert (not (= i12 i27)))
(assert (not (= i12 i26)))
(assert (not (= i12 i25)))
(assert (not (= i12 i24)))
(assert (not (= i12 i23)))
(assert (not (= i12 i22)))
(assert (not (= i12 i21)))
(assert (not (= i12 i20)))
(assert (not (= i12 i19)))
(assert (not (= i12 i18)))
(assert (not (= i12 i17)))
(assert (not (= i12 i16)))
(assert (not (= i12 i15)))
(assert (not (= i12 i14)))
(assert (not (= i12 i13)))
(assert (not (= i11 i40)))
(assert (not (= i11 i39)))
(assert (not (= i11 i38)))
(assert (not (= i11 i37)))
(assert (not (= i11 i36)))
(assert (not (= i11 i35)))
(assert (not (= i11 i34)))
(assert (not (= i11 i33)))
(assert (not (= i11 i32)))
(assert (not (= i11 i31)))
(assert (not (= i11 i30)))
(assert (not (= i11 i29)))
(assert (not (= i11 i28)))
(assert (not (= i11 i27)))
(assert (not (= i11 i26)))
(assert (not (= i11 i25)))
(assert (not (= i11 i24)))
(assert (not (= i11 i23)))
(assert (not (= i11 i22)))
(assert (not (= i11 i21)))
(assert (not (= i11 i20)))
(assert (not (= i11 i19)))
(assert (not (= i11 i18)))
(assert (not (= i11 i17)))
(assert (not (= i11 i16)))
(assert (not (= i11 i15)))
(assert (not (= i11 i14)))
(assert (not (= i11 i13)))
(assert (not (= i11 i12)))
(assert (not (= i10 i40)))
(assert (not (= i10 i39)))
(assert (not (= i10 i38)))
(assert (not (= i10 i37)))
(assert (not (= i10 i36)))
(assert (not (= i10 i35)))
(assert (not (= i10 i34)))
(assert (not (= i10 i33)))
(assert (not (= i10 i32)))
(assert (not (= i10 i31)))
(assert (not (= i10 i30)))
(assert (not (= i10 i29)))
(assert (not (= i10 i28)))
(assert (not (= i10 i27)))
(assert (not (= i10 i26)))
(assert (not (= i10 i25)))
(assert (not (= i10 i24)))
(assert (not (= i10 i23)))
(assert (not (= i10 i22)))
(assert (not (= i10 i21)))
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
(assert (not (= i9 i40)))
(assert (not (= i9 i39)))
(assert (not (= i9 i38)))
(assert (not (= i9 i37)))
(assert (not (= i9 i36)))
(assert (not (= i9 i35)))
(assert (not (= i9 i34)))
(assert (not (= i9 i33)))
(assert (not (= i9 i32)))
(assert (not (= i9 i31)))
(assert (not (= i9 i30)))
(assert (not (= i9 i29)))
(assert (not (= i9 i28)))
(assert (not (= i9 i27)))
(assert (not (= i9 i26)))
(assert (not (= i9 i25)))
(assert (not (= i9 i24)))
(assert (not (= i9 i23)))
(assert (not (= i9 i22)))
(assert (not (= i9 i21)))
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
(assert (not (= i8 i40)))
(assert (not (= i8 i39)))
(assert (not (= i8 i38)))
(assert (not (= i8 i37)))
(assert (not (= i8 i36)))
(assert (not (= i8 i35)))
(assert (not (= i8 i34)))
(assert (not (= i8 i33)))
(assert (not (= i8 i32)))
(assert (not (= i8 i31)))
(assert (not (= i8 i30)))
(assert (not (= i8 i29)))
(assert (not (= i8 i28)))
(assert (not (= i8 i27)))
(assert (not (= i8 i26)))
(assert (not (= i8 i25)))
(assert (not (= i8 i24)))
(assert (not (= i8 i23)))
(assert (not (= i8 i22)))
(assert (not (= i8 i21)))
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
(assert (not (= i7 i40)))
(assert (not (= i7 i39)))
(assert (not (= i7 i38)))
(assert (not (= i7 i37)))
(assert (not (= i7 i36)))
(assert (not (= i7 i35)))
(assert (not (= i7 i34)))
(assert (not (= i7 i33)))
(assert (not (= i7 i32)))
(assert (not (= i7 i31)))
(assert (not (= i7 i30)))
(assert (not (= i7 i29)))
(assert (not (= i7 i28)))
(assert (not (= i7 i27)))
(assert (not (= i7 i26)))
(assert (not (= i7 i25)))
(assert (not (= i7 i24)))
(assert (not (= i7 i23)))
(assert (not (= i7 i22)))
(assert (not (= i7 i21)))
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
(assert (not (= i6 i40)))
(assert (not (= i6 i39)))
(assert (not (= i6 i38)))
(assert (not (= i6 i37)))
(assert (not (= i6 i36)))
(assert (not (= i6 i35)))
(assert (not (= i6 i34)))
(assert (not (= i6 i33)))
(assert (not (= i6 i32)))
(assert (not (= i6 i31)))
(assert (not (= i6 i30)))
(assert (not (= i6 i29)))
(assert (not (= i6 i28)))
(assert (not (= i6 i27)))
(assert (not (= i6 i26)))
(assert (not (= i6 i25)))
(assert (not (= i6 i24)))
(assert (not (= i6 i23)))
(assert (not (= i6 i22)))
(assert (not (= i6 i21)))
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
(assert (not (= i5 i40)))
(assert (not (= i5 i39)))
(assert (not (= i5 i38)))
(assert (not (= i5 i37)))
(assert (not (= i5 i36)))
(assert (not (= i5 i35)))
(assert (not (= i5 i34)))
(assert (not (= i5 i33)))
(assert (not (= i5 i32)))
(assert (not (= i5 i31)))
(assert (not (= i5 i30)))
(assert (not (= i5 i29)))
(assert (not (= i5 i28)))
(assert (not (= i5 i27)))
(assert (not (= i5 i26)))
(assert (not (= i5 i25)))
(assert (not (= i5 i24)))
(assert (not (= i5 i23)))
(assert (not (= i5 i22)))
(assert (not (= i5 i21)))
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
(assert (not (= i4 i40)))
(assert (not (= i4 i39)))
(assert (not (= i4 i38)))
(assert (not (= i4 i37)))
(assert (not (= i4 i36)))
(assert (not (= i4 i35)))
(assert (not (= i4 i34)))
(assert (not (= i4 i33)))
(assert (not (= i4 i32)))
(assert (not (= i4 i31)))
(assert (not (= i4 i30)))
(assert (not (= i4 i29)))
(assert (not (= i4 i28)))
(assert (not (= i4 i27)))
(assert (not (= i4 i26)))
(assert (not (= i4 i25)))
(assert (not (= i4 i24)))
(assert (not (= i4 i23)))
(assert (not (= i4 i22)))
(assert (not (= i4 i21)))
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
(assert (not (= i3 i40)))
(assert (not (= i3 i39)))
(assert (not (= i3 i38)))
(assert (not (= i3 i37)))
(assert (not (= i3 i36)))
(assert (not (= i3 i35)))
(assert (not (= i3 i34)))
(assert (not (= i3 i33)))
(assert (not (= i3 i32)))
(assert (not (= i3 i31)))
(assert (not (= i3 i30)))
(assert (not (= i3 i29)))
(assert (not (= i3 i28)))
(assert (not (= i3 i27)))
(assert (not (= i3 i26)))
(assert (not (= i3 i25)))
(assert (not (= i3 i24)))
(assert (not (= i3 i23)))
(assert (not (= i3 i22)))
(assert (not (= i3 i21)))
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
(assert (not (= i2 i40)))
(assert (not (= i2 i39)))
(assert (not (= i2 i38)))
(assert (not (= i2 i37)))
(assert (not (= i2 i36)))
(assert (not (= i2 i35)))
(assert (not (= i2 i34)))
(assert (not (= i2 i33)))
(assert (not (= i2 i32)))
(assert (not (= i2 i31)))
(assert (not (= i2 i30)))
(assert (not (= i2 i29)))
(assert (not (= i2 i28)))
(assert (not (= i2 i27)))
(assert (not (= i2 i26)))
(assert (not (= i2 i25)))
(assert (not (= i2 i24)))
(assert (not (= i2 i23)))
(assert (not (= i2 i22)))
(assert (not (= i2 i21)))
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
(assert (not (= i1 i40)))
(assert (not (= i1 i39)))
(assert (not (= i1 i38)))
(assert (not (= i1 i37)))
(assert (not (= i1 i36)))
(assert (not (= i1 i35)))
(assert (not (= i1 i34)))
(assert (not (= i1 i33)))
(assert (not (= i1 i32)))
(assert (not (= i1 i31)))
(assert (not (= i1 i30)))
(assert (not (= i1 i29)))
(assert (not (= i1 i28)))
(assert (not (= i1 i27)))
(assert (not (= i1 i26)))
(assert (not (= i1 i25)))
(assert (not (= i1 i24)))
(assert (not (= i1 i23)))
(assert (not (= i1 i22)))
(assert (not (= i1 i21)))
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
(assert (not (= a_199 a_239)))
(check-sat)
(exit)
