module scratch

import list
import bool
import nat
import ite

l: list nat
l = (S O)::(S (S O))::(S (S (S O)))::S (S (S (S (S (S O)))))::nil

evens: list nat -> list nat
evens nil = nil
evens (h::t) = ite (evenb h) (h::(evens t)) (evens t)

result: list nat
result = evens l
