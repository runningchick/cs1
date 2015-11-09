
module football

import list

data team = Patriots | Bills | Dolphins | Jets | Steelers | Browns

||| A record of this type represents a NFL team and their record thus far in the season for wins, loses, and ties

data football = mkRecord team Nat Nat Nat

teams: football -> team
teams (mkRecord t w l o) = t

win: football -> Nat
win (mkRecord t w l o) = w

loss: football -> Nat
loss (mkRecord t w l o) = l

tie: football -> Nat
tie (mkRecord t w l o) = o

addwin: football -> football
addwin (mkRecord t w l o) = mkRecord t (S w) l o

addloss: football -> football
addloss (mkRecord t w l o) = mkRecord t w (S l) o

addtie: football -> football
addtie (mkRecord t w l o) = mkRecord t w l (S o)

pat: football
pat = (mkRecord Patriots 3 0 0)

bill: football
bill = (mkRecord Bills 2 2 0)

dolph: football
dolph = (mkRecord Dolphins 1 3 0)

jets: football
jets = (mkRecord Jets 3 1 0)

steel: football
steel = (mkRecord Steelers 2 2 0)

brown: football
brown = (mkRecord Browns 1 3 0)

Record: list football
Record = cons pat (cons bill (cons dolph (cons jets (cons steel (cons brown nil)))))
