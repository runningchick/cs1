module natTest

import nat
import bool
import pair
import serialize

--Homework 8 tests

add1: nat -> nat
add1 = add (S O)

result: nat
result = add1 (S (S (S O))) --yields four

mult2: nat -> nat
mult2 = mult (S (S O))

result1: nat
result1 = mult2 (S (S (S O))) --yeilds six

fact2: nat
fact2 = fact (S (S O)) --yields two

sub5: nat -> nat
sub5 = sub (S (S (S (S (S O)))))

result2: nat
result2 = sub5 (S (S (S O))) --yields two

exp3: nat -> nat
exp3 = exp (S (S (S O)))

result3: nat
result3 = exp3 (S (S O)) --yields nine

s: String
s = toString result3
