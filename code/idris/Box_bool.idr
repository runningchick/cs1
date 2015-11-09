module Box

import bool
import unit

data Box t = mkBox t

b1: Box bool
b1 = mkBox true

b2: Box bool
b2 = mkBox false

b3: Box unit
b3 = mkBox mkUnit

unbox: Box t -> t
unbox (mkBox b) = b
