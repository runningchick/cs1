module TrafficLight

-- Alternative configuration

data TrafficLight =
 red |
 green |
 amber

nextColor: TrafficLight -> TrafficLight
nextColor red = green
nextColor green = amber
nextColor amber = red

