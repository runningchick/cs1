module dna

import pair
import list

data base = A | T | G | C

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base G = C
complement_base C = G

complement_strand: list base -> list base
complement_strand l = list.map complement_base l

strand1: list (pair base base) -> list base
strand1 l = list.map fst l

strand2: list (pair base base) -> list base
strand2 l = list.map snd l

complete: list base -> list (pair base base)
complete l = mkPair l (complement_strand l)


