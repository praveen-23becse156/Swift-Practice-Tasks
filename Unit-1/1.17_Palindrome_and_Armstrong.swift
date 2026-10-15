// Task 1.17: Check palindrome and Armstrong numbers.
import Foundation

let number = 153

// Palindrome check
var temp = number
var reverse = 0

while temp > 0 {
    reverse = reverse * 10 + temp % 10
    temp /= 10
}

if number >= 0 && number == reverse {
    print("\(number) is a palindrome")
} else {
    print("\(number) is not a palindrome")
}

// Armstrong check
let digits = String(number).count
var remaining = number
var sum = 0

while remaining > 0 {
    let digit = remaining % 10
    sum += Int(pow(Double(digit), Double(digits)))
    remaining /= 10
}

if number >= 0 && sum == number {
    print("\(number) is an Armstrong number")
} else {
    print("\(number) is not an Armstrong number")
}
