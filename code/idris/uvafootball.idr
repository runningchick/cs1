module Player

import bool
import list
import pair
import relation


||| A record type that is equivalent to (data Player = mkPlayer String Nat Nat Nat Bool). A player has a name, a height in inches, a weight in pounds, a jersey number, and a bool denoting true when the player is a SR or JR and false when the player is FR SO

record Player where
  constructor mkPlayer
  name : String
  number : Nat
  height : Nat
  weight : Nat
  upperclassman : bool

--Matt Johns
matt: Player
matt = mkPlayer "Matt Johns" 15 77 210 true

--Caanan Severin
caanan: Player
caanan = mkPlayer "Caanan Severin" 9 74 205 true

--Austin Petty
austin: Player
austin = mkPlayer "Austin Petty" 90 75 210 false

--Trace Halpem
trace: Player
trace = mkPlayer "Trace Halpem" 98 70 180 false

--Sean Karl
sean: Player
sean = mkPlayer "Sean Karl" 62 78 310 true

team: list Player
team = matt::caanan::austin::trace::sean::nil

--Projections using Map
team_numbers: list Nat
team_numbers = list.map number team

team_names: list String
team_names = list.map name team

team_height: list Nat
team_height = list.map height team

team_weight: list Nat
team_weight = list.map weight team

team_class: list bool
team_class = list.map upperclassman team

--Average Height and Average Weight
count_rel: (list tuple) -> (tuple -> bool) -> Nat
count_rel rel sel = query rel sel countOne plus 0

sum_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> Nat
sum_rel rel sel proj = query rel sel proj plus 0

ave_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> pair Nat Nat
ave_rel rel sel proj = mkPair (sum_rel rel sel proj) (count_rel rel sel)

aveHeight': pair Nat Nat
aveHeight' = ave_rel team upperclassman height

aveWeight': pair Nat Nat
aveWeight' = ave_rel team upperclassman weight

