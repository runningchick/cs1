module Box
import bool
import unit

data Box t = mkBox t

b1: Box bool
b1 = mkBox true

b2: Box unit
b2 = mkBox mkUnit

unbox: Box t -> t
unbox (mkBox b) = b

