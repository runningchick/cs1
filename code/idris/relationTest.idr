module relationTest

import list
import bool
import pair
import Person
import relation

women: list Person
women = filter gender people

wAges: list Nat
wAges = map age women

years: Nat
years = list.foldr plus 0 wAges

oneLine: Nat
oneLine = list.foldr plus 0 (map age (filter gender people))

--Generalization
years': Nat
years' = query1 plus 0 age gender people

totalHeight: Nat
totalHeight = query1 plus 0 height gender people

names: String
names = query1 (++) "" name gender people

--improve argument
years'': Nat
years'' = query people gender age plus 0

totalInches'': Nat
totalInches'' = query people gender height mult 1

names'': String
names'' = query people gender name (++) ""

--Count

number: Nat
number = query people gender countOne plus 0

count_rel: (list tuple) -> (tuple -> bool) -> Nat
count_rel rel sel = query rel sel countOne plus 0

--Sum
sum_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> Nat
sum_rel rel sel proj = query rel sel proj plus 0

--Average
aveAge: pair Nat Nat
aveAge = mkPair (query people gender age plus 0) (query people gender countOne plus 0)

ave_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> pair Nat Nat
ave_rel rel sel proj = mkPair (sum_rel rel sel proj) (count_rel rel sel)

aveAge': pair Nat Nat
aveAge' = ave_rel people gender age
