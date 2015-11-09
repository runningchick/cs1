module nat

import bool
import pair

data nat = O | S nat

addp: pair nat nat -> nat
addp (mkPair O n) = n
addp (mkPair (S n) m) = S addp(mkPair n  m)
