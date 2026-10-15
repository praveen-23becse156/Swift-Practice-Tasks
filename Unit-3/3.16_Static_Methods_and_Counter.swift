// Task 3.16: Static square() and a class instance counter.
struct MathHelper {
    static func square(_ number: Int) -> Int {
        return number * number
    }
}

class Counter {
    static var instancesCreated = 0

    init() {
        Counter.instancesCreated += 1
    }
}

print("Square of 6:", MathHelper.square(6))

let first = Counter()
let second = Counter()
let third = Counter()
print("Counter instances created:", Counter.instancesCreated)
