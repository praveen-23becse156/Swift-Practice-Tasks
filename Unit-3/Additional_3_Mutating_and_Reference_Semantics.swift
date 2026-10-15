// Additional Task 3: Why does the original code fail?
struct Counter {
    var value = 0
    mutating func increment() {
        value += 1
    }
}

class Box {
    var value = 0
    func increment() {
        value += 1
    }
}

// Compile error in the original: c is declared with let, but increment() mutates a struct.
// Fix: use var for the struct instance.
var c = Counter()
c.increment()
print("Struct counter:", c.value)

// A class instance can be changed through a let constant because let fixes the reference,
// not the object's mutable properties.
let b = Box()
b.increment()
print("Class box:", b.value)

// Both constants point to the same object.
let anotherBox = b
print("Same object:", b === anotherBox)
