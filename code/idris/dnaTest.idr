module dnaTest

import dna
import list
import pair

s1: list base
s1 = T::A::T::C::G::C::A::G::nil

complement_s1: list base
complement_s1 = complement_strand s1


s2: list (pair base base)
s2 = (mkPair A T)::(mkPair C G)::nil
