module Bit

--Data Type
data Bit = zero | one

--Function
change: Bit -> Bit
change zero = one
change one = zero

id: Bit -> Bit
id one = one
id zero = zero
