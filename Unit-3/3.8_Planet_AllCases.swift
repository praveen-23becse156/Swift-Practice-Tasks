// Task 3.8: Print all planets and their order from the Sun.
enum Planet: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune

    var orderFromSun: Int {
        switch self {
        case .mercury: return 1
        case .venus: return 2
        case .earth: return 3
        case .mars: return 4
        case .jupiter: return 5
        case .saturn: return 6
        case .uranus: return 7
        case .neptune: return 8
        }
    }
}

for planet in Planet.allCases {
    print("\(planet): planet number \(planet.orderFromSun)")
}
