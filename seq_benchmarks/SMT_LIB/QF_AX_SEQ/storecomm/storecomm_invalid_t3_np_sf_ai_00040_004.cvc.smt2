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
(set-info :status sat)

(declare-sort Element 0)
(declare-fun a_800 () (Seq Element))
(declare-fun a_801 () (Seq Element))
(declare-fun a_802 () (Seq Element))
(declare-fun a_803 () (Seq Element))
(declare-fun a_804 () (Seq Element))
(declare-fun a_805 () (Seq Element))
(declare-fun a_806 () (Seq Element))
(declare-fun a_807 () (Seq Element))
(declare-fun a_808 () (Seq Element))
(declare-fun a_809 () (Seq Element))
(declare-fun a_810 () (Seq Element))
(declare-fun a_811 () (Seq Element))
(declare-fun a_812 () (Seq Element))
(declare-fun a_813 () (Seq Element))
(declare-fun a_814 () (Seq Element))
(declare-fun a_815 () (Seq Element))
(declare-fun a_816 () (Seq Element))
(declare-fun a_817 () (Seq Element))
(declare-fun a_818 () (Seq Element))
(declare-fun a_819 () (Seq Element))
(declare-fun a_820 () (Seq Element))
(declare-fun a_821 () (Seq Element))
(declare-fun a_822 () (Seq Element))
(declare-fun a_823 () (Seq Element))
(declare-fun a_824 () (Seq Element))
(declare-fun a_825 () (Seq Element))
(declare-fun a_826 () (Seq Element))
(declare-fun a_827 () (Seq Element))
(declare-fun a_828 () (Seq Element))
(declare-fun a_829 () (Seq Element))
(declare-fun a_830 () (Seq Element))
(declare-fun a_831 () (Seq Element))
(declare-fun a_832 () (Seq Element))
(declare-fun a_833 () (Seq Element))
(declare-fun a_834 () (Seq Element))
(declare-fun a_835 () (Seq Element))
(declare-fun a_836 () (Seq Element))
(declare-fun a_837 () (Seq Element))
(declare-fun a_838 () (Seq Element))
(declare-fun a_839 () (Seq Element))
(declare-fun a_840 () (Seq Element))
(declare-fun a_841 () (Seq Element))
(declare-fun a_842 () (Seq Element))
(declare-fun a_843 () (Seq Element))
(declare-fun a_844 () (Seq Element))
(declare-fun a_845 () (Seq Element))
(declare-fun a_846 () (Seq Element))
(declare-fun a_847 () (Seq Element))
(declare-fun a_848 () (Seq Element))
(declare-fun a_849 () (Seq Element))
(declare-fun a_850 () (Seq Element))
(declare-fun a_851 () (Seq Element))
(declare-fun a_852 () (Seq Element))
(declare-fun a_853 () (Seq Element))
(declare-fun a_854 () (Seq Element))
(declare-fun a_855 () (Seq Element))
(declare-fun a_856 () (Seq Element))
(declare-fun a_857 () (Seq Element))
(declare-fun a_858 () (Seq Element))
(declare-fun a_859 () (Seq Element))
(declare-fun a_860 () (Seq Element))
(declare-fun a_861 () (Seq Element))
(declare-fun a_862 () (Seq Element))
(declare-fun a_863 () (Seq Element))
(declare-fun a_864 () (Seq Element))
(declare-fun a_865 () (Seq Element))
(declare-fun a_866 () (Seq Element))
(declare-fun a_867 () (Seq Element))
(declare-fun a_868 () (Seq Element))
(declare-fun a_869 () (Seq Element))
(declare-fun a_870 () (Seq Element))
(declare-fun a_871 () (Seq Element))
(declare-fun a_872 () (Seq Element))
(declare-fun a_873 () (Seq Element))
(declare-fun a_874 () (Seq Element))
(declare-fun a_875 () (Seq Element))
(declare-fun a_876 () (Seq Element))
(declare-fun a_877 () (Seq Element))
(declare-fun a_878 () (Seq Element))
(declare-fun a_879 () (Seq Element))
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
(assert (= a_800 (seq.update a1 i1 (seq.unit e1))))
(assert (= a_801 (seq.update a_800 i2 (seq.unit e2))))
(assert (= a_802 (seq.update a_801 i3 (seq.unit e3))))
(assert (= a_803 (seq.update a_802 i4 (seq.unit e4))))
(assert (= a_804 (seq.update a_803 i5 (seq.unit e5))))
(assert (= a_805 (seq.update a_804 i6 (seq.unit e6))))
(assert (= a_806 (seq.update a_805 i7 (seq.unit e7))))
(assert (= a_807 (seq.update a_806 i8 (seq.unit e8))))
(assert (= a_808 (seq.update a_807 i9 (seq.unit e9))))
(assert (= a_809 (seq.update a_808 i10 (seq.unit e10))))
(assert (= a_810 (seq.update a_809 i11 (seq.unit e11))))
(assert (= a_811 (seq.update a_810 i12 (seq.unit e12))))
(assert (= a_812 (seq.update a_811 i13 (seq.unit e13))))
(assert (= a_813 (seq.update a_812 i14 (seq.unit e14))))
(assert (= a_814 (seq.update a_813 i15 (seq.unit e15))))
(assert (= a_815 (seq.update a_814 i16 (seq.unit e16))))
(assert (= a_816 (seq.update a_815 i17 (seq.unit e17))))
(assert (= a_817 (seq.update a_816 i18 (seq.unit e18))))
(assert (= a_818 (seq.update a_817 i19 (seq.unit e19))))
(assert (= a_819 (seq.update a_818 i20 (seq.unit e20))))
(assert (= a_820 (seq.update a_819 i21 (seq.unit e21))))
(assert (= a_821 (seq.update a_820 i22 (seq.unit e22))))
(assert (= a_822 (seq.update a_821 i23 (seq.unit e23))))
(assert (= a_823 (seq.update a_822 i24 (seq.unit e24))))
(assert (= a_824 (seq.update a_823 i25 (seq.unit e25))))
(assert (= a_825 (seq.update a_824 i26 (seq.unit e26))))
(assert (= a_826 (seq.update a_825 i27 (seq.unit e27))))
(assert (= a_827 (seq.update a_826 i28 (seq.unit e28))))
(assert (= a_828 (seq.update a_827 i29 (seq.unit e29))))
(assert (= a_829 (seq.update a_828 i30 (seq.unit e30))))
(assert (= a_830 (seq.update a_829 i31 (seq.unit e31))))
(assert (= a_831 (seq.update a_830 i32 (seq.unit e32))))
(assert (= a_832 (seq.update a_831 i33 (seq.unit e33))))
(assert (= a_833 (seq.update a_832 i34 (seq.unit e34))))
(assert (= a_834 (seq.update a_833 i35 (seq.unit e35))))
(assert (= a_835 (seq.update a_834 i36 (seq.unit e36))))
(assert (= a_836 (seq.update a_835 i37 (seq.unit e37))))
(assert (= a_837 (seq.update a_836 i38 (seq.unit e38))))
(assert (= a_838 (seq.update a_837 i39 (seq.unit e39))))
(assert (= a_839 (seq.update a_838 i1 (seq.unit e1))))
(assert (= a_840 (seq.update a1 i2 (seq.unit e2))))
(assert (= a_841 (seq.update a_840 i15 (seq.unit e15))))
(assert (= a_842 (seq.update a_841 i10 (seq.unit e10))))
(assert (= a_843 (seq.update a_842 i40 (seq.unit e40))))
(assert (= a_844 (seq.update a_843 i20 (seq.unit e20))))
(assert (= a_845 (seq.update a_844 i8 (seq.unit e8))))
(assert (= a_846 (seq.update a_845 i27 (seq.unit e27))))
(assert (= a_847 (seq.update a_846 i35 (seq.unit e35))))
(assert (= a_848 (seq.update a_847 i25 (seq.unit e25))))
(assert (= a_849 (seq.update a_848 i18 (seq.unit e18))))
(assert (= a_850 (seq.update a_849 i1 (seq.unit e1))))
(assert (= a_851 (seq.update a_850 i31 (seq.unit e31))))
(assert (= a_852 (seq.update a_851 i4 (seq.unit e4))))
(assert (= a_853 (seq.update a_852 i11 (seq.unit e11))))
(assert (= a_854 (seq.update a_853 i33 (seq.unit e33))))
(assert (= a_855 (seq.update a_854 i30 (seq.unit e30))))
(assert (= a_856 (seq.update a_855 i17 (seq.unit e17))))
(assert (= a_857 (seq.update a_856 i32 (seq.unit e32))))
(assert (= a_858 (seq.update a_857 i14 (seq.unit e14))))
(assert (= a_859 (seq.update a_858 i13 (seq.unit e13))))
(assert (= a_860 (seq.update a_859 i7 (seq.unit e7))))
(assert (= a_861 (seq.update a_860 i9 (seq.unit e9))))
(assert (= a_862 (seq.update a_861 i19 (seq.unit e19))))
(assert (= a_863 (seq.update a_862 i34 (seq.unit e34))))
(assert (= a_864 (seq.update a_863 i6 (seq.unit e6))))
(assert (= a_865 (seq.update a_864 i26 (seq.unit e26))))
(assert (= a_866 (seq.update a_865 i21 (seq.unit e21))))
(assert (= a_867 (seq.update a_866 i23 (seq.unit e23))))
(assert (= a_868 (seq.update a_867 i24 (seq.unit e24))))
(assert (= a_869 (seq.update a_868 i37 (seq.unit e37))))
(assert (= a_870 (seq.update a_869 i38 (seq.unit e38))))
(assert (= a_871 (seq.update a_870 i39 (seq.unit e39))))
(assert (= a_872 (seq.update a_871 i5 (seq.unit e5))))
(assert (= a_873 (seq.update a_872 i28 (seq.unit e28))))
(assert (= a_874 (seq.update a_873 i36 (seq.unit e36))))
(assert (= a_875 (seq.update a_874 i16 (seq.unit e16))))
(assert (= a_876 (seq.update a_875 i3 (seq.unit e3))))
(assert (= a_877 (seq.update a_876 i12 (seq.unit e12))))
(assert (= a_878 (seq.update a_877 i22 (seq.unit e22))))
(assert (= a_879 (seq.update a_878 i29 (seq.unit e29))))
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
(assert (not (= a_839 a_879)))
(check-sat)
(exit)
