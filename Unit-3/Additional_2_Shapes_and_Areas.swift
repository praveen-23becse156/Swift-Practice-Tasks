// Additional Task 2: Shape areas and Rectangle value semantics.
import Foundation

enum Shape {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    case triangle(base: Double, height: Double)

    var area: Double {
        switch self {
        case .circle(let radius):
            return Double.pi * radius * radius
        case .rectangle(let width, let height):
            return width * height
        case .triangle(let base, let height):
            return 0.5 * base * height
        }
    }
}

struct Rectangle {
    var width: Double
    var height: Double

    var perimeter: Double {
        return 2 * (width + height)
    }

    mutating func scale(by factor: Double) {
        guard factor > 0 else {
            print("Scale factor must be positive")
            return
        }
        width *= factor
        height *= factor
    }
}

print("Circle area:", Shape.circle(radius: 2).area)
print("Rectangle area:", Shape.rectangle(width: 4, height: 3).area)
print("Triangle area:", Shape.triangle(base: 6, height: 4).area)

var original = Rectangle(width: 4, height: 3)
var copy = original
copy.scale(by: 2)

print("Original dimensions: \(original.width) x \(original.height)")
print("Original perimeter:", original.perimeter)
print("Copy dimensions: \(copy.width) x \(copy.height)")
