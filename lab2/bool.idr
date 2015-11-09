module bool

data bool = true | false

id: bool -> bool
id true = true
id false = false

not: bool -> bool
not false = true
not true = false

constTrue: bool -> bool
constTrue false = true
constTrue true = true

constFalse: bool -> bool
constFalse false = false
constFalse true = false

