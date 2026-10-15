// Task 3.7: Car class with accelerate() and brake().
class Car {
    var brand: String
    var speed: Int

    init(brand: String, speed: Int = 0) {
        self.brand = brand
        self.speed = speed
    }

    func accelerate() {
        speed += 10
        print("\(brand) speed: \(speed) km/h")
    }

    func brake() {
        speed = max(0, speed - 10)
        print("\(brand) speed: \(speed) km/h")
    }
}

let car = Car(brand: "Toyota")
car.accelerate()
car.accelerate()
car.brake()
