module nat

import bool
import pair
import eq
import serialize

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

||| given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

||| given a pair of natural numbers, return its product
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = (add m (mult n m))

fact: nat -> nat
fact O = S O
fact (S n) = (mult (S n) (fact (n)))

sub: nat -> nat -> nat
sub O m = O
sub m O = m
sub (S n) (S m) = (sub n m)

exp: nat -> nat -> nat
exp O (S n) = O
exp (S n) O = (S O)
exp (S n) (S m) = (mult (S n) (exp (S n) m))

le: nat -> nat -> bool
le  O m = true
le (S n) O = false
le (S n) (S m) = (le n m)

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S n) = false
eql_nat (S m) (S n) = (eql_nat m n)

gt: nat -> nat -> bool
gt a b = not (le a b)

ge: nat -> nat -> bool
ge m O = true
ge O (S n) = false
ge (S n) (S m) = (ge n m)

ltp: nat -> nat -> bool
ltp  a b = not (ge a b)

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ toString n
