// Task 1.12: Print the Fibonacci series up to n terms.
let n = 10
var a = 0
var b = 1

if n > 0 {
    for _ in 1...n {
        print(a)
        let next = a + b
        a = b
        b = next
    }
}
