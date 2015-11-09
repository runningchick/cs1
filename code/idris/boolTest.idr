module boolTest
import bool
import pair

andtt: bool
andtt = and true true --yields true

andtf: bool
andtf = and true false --yields false

andft: bool
andft = and false true --yields false

andff: bool
andff = and false false -- yields false

ortt: bool
ortt = or true true --yields true

ortf: bool
ortf = or true false --yields true

orft: bool
orft = or false true --yields true

orff: bool
orff = or false false --yields false

xortt: bool
xortt = xor true true --yields false

xortf: bool
xortf = xor true false --yields true

xorft: bool
xorft = xor false true --yields true

xorff: bool
xorff = xor false false --yields false

nandtt: bool
nandtt = nand true true --yields false

nandtf: bool
nandtf = nand true false --yields true

nandft: bool
nandft = nand false true --yields true

nandff: bool
nandff = nand false false --yields true

