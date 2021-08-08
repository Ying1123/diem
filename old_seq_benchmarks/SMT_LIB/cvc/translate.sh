sed -i "s/select/seq.nth/" read5.smt2
sed -i "s/store/seq.update/" read5.smt2
sed -i "s/set-logic.*/set-logic ALL)/" read5.smt2
sed -i "s/(Array Int /(Seq /" read5.smt2

