// Task 1.11: Calculate the sum of digits using while.
var number = 1234
var temp = abs(number)
var sum = 0

while temp > 0 {
    sum += temp % 10
    temp /= 10
}

print("Sum of digits: \(sum)")
