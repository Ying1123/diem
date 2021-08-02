sed -i "s/select/seq.nth/" storeinv_t1_np_nf_ai_00002_001.cvc.smt2
sed -i "s/store/seq.update/" storeinv_t1_np_nf_ai_00002_001.cvc.smt2
sed -i "s/set-logic.*/set-logic ALL)/" storeinv_t1_np_nf_ai_00002_001.cvc.smt2
sed -i "s/(Array Index /(Seq /" storeinv_t1_np_nf_ai_00002_001.cvc.smt2
