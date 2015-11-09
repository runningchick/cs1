module Person
import bool
import list
import pair

||| A record type that is equivalent to: (data Person = mkPerson String nat) but where we give names to fields. A person has a name and an age in years.

record Person where
    constructor mkPerson
    name : String
    age : Nat
    height : Nat
    gender : bool


setName: Person -> String -> Person
setName p n = record {name = n} p

setAge: Person -> Nat-> Person
setAge p a = record {age = a} p

setHeight: Person -> Nat -> Person
setHeight p h = record {height = h} p

setGender: Person -> bool -> Person
setGender p g = record {gender = g} p

--a few Persons

tom: Person
tom = mkPerson "Tom" 19 56 false

mary: Person
mary = mkPerson "Mary" 20 59 true

ge: Person
ge = mkPerson "Ge" 21 64 true

daryl: Person
daryl = mkPerson "Daryl" 19 71 false

-- a list of Persons

people: list Person
people = tom::mary::ge::daryl::nil

-- some functions that modify people
mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)

--
query1: (value -> value -> value) -> value -> (tuple -> value) -> (tuple -> bool) -> (list tuple) -> value
query1 reduce id project select relation = list.foldr reduce id (map project (filter select relation))

query2:  (list tuple) -> (tuple -> bool) -> (tuple -> value) -> (value -> value -> value) -> value -> value
query2 relation select project reduce id = list.foldr reduce id (map project (filter select relation))

