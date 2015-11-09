module PlayerTest

import uvafootball
import list
import pair
import bool
import relation

--Projections (old)
names: Player -> String
names (mkPlayer n u h w c) = n

numbers: Player -> Nat
numbers (mkPlayer n u h w c) = u

heights: Player -> Nat
heights (mkPlayer n u h w c) = h

weights: Player -> Nat
weights (mkPlayer n u h w c) = w

classes: Player -> bool
classes (mkPlayer n u h w c) = c

--Average Height and Weight (extended)
aveHeight: pair Nat Nat
aveHeight = mkPair (query team upperclassman height plus 0) (query team upperclassman countOne plus 0)

aveWeight: pair Nat Nat
aveWeight = mkPair (query team upperclassman weight plus 0) (query team upperclassman countOne plus 0)

