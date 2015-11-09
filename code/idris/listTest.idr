module listTest

import list
import nat
import eq
import serialize

lO: Nat
lO = length nil {a = Nat} --expects 0

l1: Nat
l1 = length (1::nil) --expects 1

l2: Nat
l2 = length (3::5::7::9::11::nil) --expects 5

l3: list nat
l3 = (S O)::(S (S O))::(S (S (S O)))::nil

a3: list Nat
a3 = append (1::2::3::nil) (4::5::6::nil) --expects 1::2::3::4::5::6::nil

a4: list bool
a4 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

isThree: bool
isThree = (member (S (S (S O))) l3)

s: String
s = toString l3
