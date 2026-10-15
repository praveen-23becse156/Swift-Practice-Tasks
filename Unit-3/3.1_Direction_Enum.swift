// Task 3.1: Direction enum and switch.
enum Direction {
    case north, south, east, west
}

let direction = Direction.north

switch direction {
case .north: print("Moving north")
case .south: print("Moving south")
case .east: print("Moving east")
case .west: print("Moving west")
}
