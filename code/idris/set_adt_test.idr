module setAdtTest

import bool
import option
import pair
import list
import nat
import eq
import serialize
import ite
import set
import set_adt_hw

----- empty set ------

s1: set.set nat
s1 = mkSet (nil)

----- is empty set -----

s_empty_true: bool
s_empty_true = (isEmpty (mkSet nil))

s_empty_false: bool
s_empty_false = (isEmpty (mkSet ((S (S O))::nil)))

----- insert ------
s2: set.set nat
s2 = (mkSet ((S (S (S O)))::(S (S O))::(S O)::nil))

s3: set.set nat
s3 = set_insert (S (S O)) s2
---(mkSet ((S (S (S O)))::(S (S O))::(S O)::nil))

s4: set.set nat
s4 = set_insert (S (S (S (S O)))) s3
---(mkSet (S (S (S (S O))))::((S (S (S O)))::(S (S O))::(S O)::nil))


----- set remove -----
s5: set.set nat
s5 = set_remove ((S (S (S (S O)))) s4)
---(mkSet ((S (S (S O)))::(S (S O))::(S O)::nil))

----- set cardinality -----
s6: nat
s6 = set_cardinality s2
---(S (S (S O)))

----- set member -----
s7: bool
s7 = set_member (S (S O)) s2
--true

s8: bool
s8 = set_member (S (S (S (S (S O))))) s2
--false

------ set union -----
s9: set.set nat
s9 = (mkSet (S (S (S (S (S O)))))::(S (S (S (S O))))::nil)

s10: set.set nat
s10 = (set_union s2 s9)
-- (mkSet (S (S (S (S (S O)))))::(S (S (S (S O))))::(S (S (S O)))::(S (S O))::(S O)::nil)

----- set intersect ----
s11: set.set nat
s11 = set_intersection s2 s9
--nil

s12: set.set nat
s12 = set_intersection s2 s10
--(mkSet (S (S (S O)))::(S (S O))::(S O)::nil)

----- set difference -----
s13: set.set nat
s13 = set_difference s2 s9
--(mkSet (S (S (S O)))::(S (S O))::(S O))

----- set exists -----
s14: bool
s14 = (set_exists evenb s2)
--true

----- set for all -----
s15: bool
s15 = (set_forall evenb s2)
--false

----- set witness -----
s16: option nat
s16: set_witness evenb s2
--some (S (S O))

----- set product -----
s17: set (pair a b)
s17 = set_product s2 s9
--(mkSet (mkPair (S (S (S O))) (S (S (S (S O)))))::(mkPair (S (S (S O))) (S (S (S (S (S O))))))::(mkPair (S (S O)) (S (S (S (S O)))))::(mkPair (S (S O)) (S (S (S (S (S O))))))::(mkPair (S O) (S (S (S (S O))))))::(mkPair (S O (S (S (S (S (S O)))))))::nil
