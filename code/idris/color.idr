module colors

import pair
import bool

data color = red | green | blue | yellow | cyan | magenta

complement: color -> color
complement red = cyan
complement green = magenta
complement blue = yellow
complement yellow = blue
complement cyan = red
complement _ = green

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive yellow = true
subtractive cyan = true
subtractive magenta = true
subtractive _ = false

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair green magenta) = true
complements (mkPair blue yellow) = true
complements (mkPair yellow blue) = true
complements (mkPair magenta green) = true
complements (mkPair cyan red) = true
complements _ = false


mixink: pair color color -> color
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
mixink (mkPair cyan magenta) = blue
mixink (mkPair magenta cyan) = blue
