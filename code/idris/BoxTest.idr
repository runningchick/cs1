module BoxTest

import Box
import bool
import unit
import nat

box1: Box bool
box1 = (mkBox true)

box2: Box unit
box2 = (mkBox mkUnit)

b1: Box nat
b1 = mkBox O

n: nat
n = unbox b1
