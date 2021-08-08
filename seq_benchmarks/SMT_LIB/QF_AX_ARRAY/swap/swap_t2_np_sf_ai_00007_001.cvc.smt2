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
(declare-fun a_733 () (Array Index Element))
(declare-fun a_735 () (Array Index Element))
(declare-fun a_737 () (Array Index Element))
(declare-fun a_739 () (Array Index Element))
(declare-fun a_741 () (Array Index Element))
(declare-fun a_743 () (Array Index Element))
(declare-fun a_745 () (Array Index Element))
(declare-fun a_747 () (Array Index Element))
(declare-fun a_749 () (Array Index Element))
(declare-fun a_751 () (Array Index Element))
(declare-fun a_753 () (Array Index Element))
(declare-fun a_755 () (Array Index Element))
(declare-fun a_757 () (Array Index Element))
(declare-fun a_759 () (Array Index Element))
(declare-fun a_760 () (Array Index Element))
(declare-fun a_761 () (Array Index Element))
(declare-fun a_763 () (Array Index Element))
(declare-fun a_765 () (Array Index Element))
(declare-fun a_767 () (Array Index Element))
(declare-fun a_769 () (Array Index Element))
(declare-fun a_771 () (Array Index Element))
(declare-fun a_773 () (Array Index Element))
(declare-fun a_775 () (Array Index Element))
(declare-fun a_777 () (Array Index Element))
(declare-fun a_779 () (Array Index Element))
(declare-fun a_781 () (Array Index Element))
(declare-fun e_732 () Element)
(declare-fun e_734 () Element)
(declare-fun e_736 () Element)
(declare-fun e_738 () Element)
(declare-fun e_740 () Element)
(declare-fun e_742 () Element)
(declare-fun e_744 () Element)
(declare-fun e_746 () Element)
(declare-fun e_748 () Element)
(declare-fun e_750 () Element)
(declare-fun e_752 () Element)
(declare-fun e_754 () Element)
(declare-fun e_756 () Element)
(declare-fun e_758 () Element)
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
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(assert (= a_733 (store a1 i5 e_732)))
(assert (= a_735 (store a_733 i2 e_734)))
(assert (= a_737 (store a_735 i4 e_736)))
(assert (= a_739 (store a_737 i6 e_738)))
(assert (= a_741 (store a_739 i0 e_740)))
(assert (= a_743 (store a_741 i1 e_742)))
(assert (= a_745 (store a_743 i0 e_744)))
(assert (= a_747 (store a_745 i3 e_746)))
(assert (= a_749 (store a_747 i1 e_748)))
(assert (= a_751 (store a_749 i3 e_750)))
(assert (= a_753 (store a_751 i3 e_752)))
(assert (= a_755 (store a_753 i2 e_754)))
(assert (= a_757 (store a_755 i4 e_756)))
(assert (= a_759 (store a_757 i0 e_758)))
(assert (= a_760 (store a_735 i6 e_738)))
(assert (= a_761 (store a_760 i4 e_736)))
(assert (= a_763 (store a_761 i0 e_762)))
(assert (= a_765 (store a_763 i1 e_764)))
(assert (= a_767 (store a_765 i0 e_766)))
(assert (= a_769 (store a_767 i3 e_768)))
(assert (= a_771 (store a_769 i3 e_770)))
(assert (= a_773 (store a_771 i1 e_772)))
(assert (= a_775 (store a_773 i3 e_774)))
(assert (= a_777 (store a_775 i2 e_776)))
(assert (= a_779 (store a_777 i4 e_778)))
(assert (= a_781 (store a_779 i0 e_780)))
(assert (= e_732 (select a1 i2)))
(assert (= e_734 (select a1 i5)))
(assert (= e_736 (select a_735 i6)))
(assert (= e_738 (select a_735 i4)))
(assert (= e_740 (select a_739 i1)))
(assert (= e_742 (select a_739 i0)))
(assert (= e_744 (select a_743 i3)))
(assert (= e_746 (select a_743 i0)))
(assert (= e_748 (select a_747 i3)))
(assert (= e_750 (select a_747 i1)))
(assert (= e_752 (select a_751 i2)))
(assert (= e_754 (select a_751 i3)))
(assert (= e_756 (select a_755 i0)))
(assert (= e_758 (select a_755 i4)))
(assert (= e_762 (select a_761 i1)))
(assert (= e_764 (select a_761 i0)))
(assert (= e_766 (select a_765 i3)))
(assert (= e_768 (select a_765 i0)))
(assert (= e_770 (select a_769 i1)))
(assert (= e_772 (select a_769 i3)))
(assert (= e_774 (select a_773 i2)))
(assert (= e_776 (select a_773 i3)))
(assert (= e_778 (select a_777 i0)))
(assert (= e_780 (select a_777 i4)))
(assert (not (= a_759 a_781)))
(check-sat)
(exit)
