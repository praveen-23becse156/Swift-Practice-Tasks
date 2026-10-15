// Task 3.12: Base class, subclasses, and method overriding.
class Vehicle {
    var brand: String

    init(brand: String) {
        self.brand = brand
    }

    func description() -> String {
        return "Vehicle brand: \(brand)"
    }
}

class Car: Vehicle {
    override func description() -> String {
        return "Car brand: \(brand)"
    }
}

class Bike: Vehicle {
    override func description() -> String {
        return "Bike brand: \(brand)"
    }
}

let vehicles: [Vehicle] = [
    Vehicle(brand: "Generic"),
    Car(brand: "Toyota"),
    Bike(brand: "Yamaha")
]

for vehicle in vehicles {
    print(vehicle.description())
}
