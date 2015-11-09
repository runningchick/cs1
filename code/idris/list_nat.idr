module listNat

import nat
import pair

data list_nat = nil | cons nat list_nat

lO: list_nat
lO = nil

l1: list_nat
l1 = cons O nil

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list_nat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))

lengthn: list_nat -> nat
lengthn nil = O
lengthn (cons n l') = S (lengthn l')

appd: pair list_nat list_nat -> list_nat
appd (mkPair nil l2') = l2'
appd (mkPair (cons n l1') l2) = cons n (appd (mkPair l1' l2))
