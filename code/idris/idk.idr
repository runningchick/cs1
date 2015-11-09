module testing

import box
import pair
import bool

t1: Box pair bool bool -> bool
t1 = (mkBox mkPair true true) = true 
