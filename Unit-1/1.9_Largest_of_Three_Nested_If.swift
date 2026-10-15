// Task 1.9: Find the largest of three numbers using nested if.
let a = 10
let b = 25
let c = 15

if a > b {
    if a > c {
        print("Largest: \(a)")
    } else {
        print("Largest: \(c)")
    }
} else {
    if b > c {
        print("Largest: \(b)")
    } else {
        print("Largest: \(c)")
    }
}
