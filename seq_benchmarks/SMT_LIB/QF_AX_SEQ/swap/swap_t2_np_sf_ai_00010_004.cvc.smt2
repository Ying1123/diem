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
(declare-fun a_710 () (Seq Element))
(declare-fun a_712 () (Seq Element))
(declare-fun a_714 () (Seq Element))
(declare-fun a_716 () (Seq Element))
(declare-fun a_718 () (Seq Element))
(declare-fun a_720 () (Seq Element))
(declare-fun a_722 () (Seq Element))
(declare-fun a_724 () (Seq Element))
(declare-fun a_726 () (Seq Element))
(declare-fun a_728 () (Seq Element))
(declare-fun a_730 () (Seq Element))
(declare-fun a_732 () (Seq Element))
(declare-fun a_734 () (Seq Element))
(declare-fun a_736 () (Seq Element))
(declare-fun a_738 () (Seq Element))
(declare-fun a_740 () (Seq Element))
(declare-fun a_742 () (Seq Element))
(declare-fun a_744 () (Seq Element))
(declare-fun a_746 () (Seq Element))
(declare-fun a_747 () (Seq Element))
(declare-fun a_748 () (Seq Element))
(declare-fun a_749 () (Seq Element))
(declare-fun a_751 () (Seq Element))
(declare-fun a_753 () (Seq Element))
(declare-fun a_755 () (Seq Element))
(declare-fun a_757 () (Seq Element))
(declare-fun a_759 () (Seq Element))
(declare-fun a_761 () (Seq Element))
(declare-fun a_763 () (Seq Element))
(declare-fun a_765 () (Seq Element))
(declare-fun a_767 () (Seq Element))
(declare-fun a_769 () (Seq Element))
(declare-fun a_771 () (Seq Element))
(declare-fun a_773 () (Seq Element))
(declare-fun a_775 () (Seq Element))
(declare-fun a_777 () (Seq Element))
(declare-fun a_779 () (Seq Element))
(declare-fun a_781 () (Seq Element))
(declare-fun a_783 () (Seq Element))
(declare-fun a_784 () (Seq Element))
(declare-fun e_709 () Element)
(declare-fun e_711 () Element)
(declare-fun e_713 () Element)
(declare-fun e_715 () Element)
(declare-fun e_717 () Element)
(declare-fun e_719 () Element)
(declare-fun e_721 () Element)
(declare-fun e_723 () Element)
(declare-fun e_725 () Element)
(declare-fun e_727 () Element)
(declare-fun e_729 () Element)
(declare-fun e_731 () Element)
(declare-fun e_733 () Element)
(declare-fun e_735 () Element)
(declare-fun e_737 () Element)
(declare-fun e_739 () Element)
(declare-fun e_741 () Element)
(declare-fun e_743 () Element)
(declare-fun e_745 () Element)
(declare-fun e_750 () Element)
(declare-fun e_752 () Element)
(declare-fun e_754 () Element)
(declare-fun e_756 () Element)
(declare-fun e_758 () Element)
(declare-fun e_760 () Element)
(declare-fun e_762 () Element)
(declare-fun e_764 () Element)
(declare-fun e_766 () Element)
(declare-fun e_768 () Element)
(declare-fun e_770 () Element)
(declare-fun e_772 () Element)
(declare-fun e_774 () Element)
(declare-fun e_776 () Element)
(declare-fun e_778 () Element)
(declare-fun e_780 () Element)
(declare-fun e_782 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(assert (= a_710 (seq.update a1 i0 (seq.unit e_709))))
(assert (= a_712 (seq.update a_710 i1 (seq.unit e_711))))
(assert (= a_714 (seq.update a_712 i4 (seq.unit e_713))))
(assert (= a_716 (seq.update a_714 i6 (seq.unit e_715))))
(assert (= a_718 (seq.update a_716 i1 (seq.unit e_717))))
(assert (= a_720 (seq.update a_718 i4 (seq.unit e_719))))
(assert (= a_722 (seq.update a_720 i0 (seq.unit e_721))))
(assert (= a_724 (seq.update a_722 i1 (seq.unit e_723))))
(assert (= a_726 (seq.update a_724 i7 (seq.unit e_725))))
(assert (= a_728 (seq.update a_726 i0 (seq.unit e_727))))
(assert (= a_730 (seq.update a_728 i2 (seq.unit e_729))))
(assert (= a_732 (seq.update a_730 i0 (seq.unit e_731))))
(assert (= a_734 (seq.update a_732 i8 (seq.unit e_733))))
(assert (= a_736 (seq.update a_734 i3 (seq.unit e_735))))
(assert (= a_738 (seq.update a_736 i6 (seq.unit e_737))))
(assert (= a_740 (seq.update a_738 i2 (seq.unit e_739))))
(assert (= a_742 (seq.update a_740 i2 (seq.unit e_741))))
(assert (= a_744 (seq.update a_742 i4 (seq.unit e_743))))
(assert (= a_746 (seq.update a_744 i3 (seq.unit e_745))))
(assert (= a_747 (seq.update a_746 i3 (seq.unit e_745))))
(assert (= a_748 (seq.update a1 i1 (seq.unit e_711))))
(assert (= a_749 (seq.update a_748 i0 (seq.unit e_709))))
(assert (= a_751 (seq.update a_749 i6 (seq.unit e_750))))
(assert (= a_753 (seq.update a_751 i4 (seq.unit e_752))))
(assert (= a_755 (seq.update a_753 i1 (seq.unit e_754))))
(assert (= a_757 (seq.update a_755 i4 (seq.unit e_756))))
(assert (= a_759 (seq.update a_757 i0 (seq.unit e_758))))
(assert (= a_761 (seq.update a_759 i1 (seq.unit e_760))))
(assert (= a_763 (seq.update a_761 i0 (seq.unit e_762))))
(assert (= a_765 (seq.update a_763 i7 (seq.unit e_764))))
(assert (= a_767 (seq.update a_765 i0 (seq.unit e_766))))
(assert (= a_769 (seq.update a_767 i2 (seq.unit e_768))))
(assert (= a_771 (seq.update a_769 i3 (seq.unit e_770))))
(assert (= a_773 (seq.update a_771 i8 (seq.unit e_772))))
(assert (= a_775 (seq.update a_773 i2 (seq.unit e_774))))
(assert (= a_777 (seq.update a_775 i6 (seq.unit e_776))))
(assert (= a_779 (seq.update a_777 i4 (seq.unit e_778))))
(assert (= a_781 (seq.update a_779 i2 (seq.unit e_780))))
(assert (= a_783 (seq.update a_781 i3 (seq.unit e_782))))
(assert (= a_784 (seq.update a_783 i3 (seq.unit e_782))))
(assert (= e_709 (seq.nth a1 i1)))
(assert (= e_711 (seq.nth a1 i0)))
(assert (= e_713 (seq.nth a_712 i6)))
(assert (= e_715 (seq.nth a_712 i4)))
(assert (= e_717 (seq.nth a_716 i4)))
(assert (= e_719 (seq.nth a_716 i1)))
(assert (= e_721 (seq.nth a_720 i1)))
(assert (= e_723 (seq.nth a_720 i0)))
(assert (= e_725 (seq.nth a_724 i0)))
(assert (= e_727 (seq.nth a_724 i7)))
(assert (= e_729 (seq.nth a_728 i0)))
(assert (= e_731 (seq.nth a_728 i2)))
(assert (= e_733 (seq.nth a_732 i3)))
(assert (= e_735 (seq.nth a_732 i8)))
(assert (= e_737 (seq.nth a_736 i2)))
(assert (= e_739 (seq.nth a_736 i6)))
(assert (= e_741 (seq.nth a_740 i4)))
(assert (= e_743 (seq.nth a_740 i2)))
(assert (= e_745 (seq.nth a_744 i3)))
(assert (= e_750 (seq.nth a_749 i4)))
(assert (= e_752 (seq.nth a_749 i6)))
(assert (= e_754 (seq.nth a_753 i4)))
(assert (= e_756 (seq.nth a_753 i1)))
(assert (= e_758 (seq.nth a_757 i1)))
(assert (= e_760 (seq.nth a_757 i0)))
(assert (= e_762 (seq.nth a_761 i7)))
(assert (= e_764 (seq.nth a_761 i0)))
(assert (= e_766 (seq.nth a_765 i2)))
(assert (= e_768 (seq.nth a_765 i0)))
(assert (= e_770 (seq.nth a_769 i8)))
(assert (= e_772 (seq.nth a_769 i3)))
(assert (= e_774 (seq.nth a_773 i6)))
(assert (= e_776 (seq.nth a_773 i2)))
(assert (= e_778 (seq.nth a_777 i2)))
(assert (= e_780 (seq.nth a_777 i4)))
(assert (= e_782 (seq.nth a_781 i3)))
(assert (not (= a_747 a_784)))
(check-sat)
(exit)