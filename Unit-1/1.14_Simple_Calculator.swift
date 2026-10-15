// Task 1.14: Simple calculator using switch.
let a = 20.0
let b = 5.0
let op = "/"

switch op {
case "+":
    print(a + b)
case "-":
    print(a - b)
case "*":
    print(a * b)
case "/":
    if b == 0 {
        print("Cannot divide by zero")
    } else {
        print(a / b)
    }
default:
    print("Invalid operator")
}
