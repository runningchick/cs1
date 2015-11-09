module list

import bool
import ite
import nat
import eq
import serialize

infixr 7 ::, ++ --inflix right associative 7 precidence

data list a = nil | (::) a (list a)

--The functions

||| return length of any given list
length: list a -> nat
length nil = O
length (h::t) = S (length t)

||| return the result of appending two lists
append: list a -> list a -> list a
append nil l2' = l2'
append (h::l1') l2 = h :: (append l1' l2)

||| append as an infix operator
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

||| maps a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

||| give a list and a predicate on elements return the sublist of elements for which the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h) (h::(filter f t)) (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

||| an element is in set if true and false if not
member:(eq a) => a -> list a -> bool
member v nil =  false
member v (h::t) = ite (eql v h) true (member v t)

sub_element: (eq a) => list a -> list a -> bool
sub_element nil l = true
sub_element (h::t) l2 = and (member h l2) (sub_element t l2)

same_elements: (eq a) => list a -> list a -> bool
same_elements s1 s2 = and (sub_element s1 s2) (sub_element s2 s1)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (toStringList l) ++ "]"
