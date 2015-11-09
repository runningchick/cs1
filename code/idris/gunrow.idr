module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per
||| 1O,OOO buy gun for homocides, suicides, unintentional, and other

data gunrow = mkGunrow country Int Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austral: gunrow
austral = mkGunrow Australia 11 62 5 8

aust: gunrow
aust = mkGunrow Austria 18 269 1 8

hond: gunrow
hond = mkGunrow Honduras 6480 0 0 0

usa: gunrow
usa = mkGunrow USA 355 670 16 9

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer10M: gunrow -> Int
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

listgunrow: list gunrow
listgunrow = cons argen (cons austral (cons aust (cons hond (cons usa nil))))
