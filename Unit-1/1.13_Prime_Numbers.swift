// Task 1.13: Check one number and print all primes from 1 to 50.

func isPrime(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    if number == 2 {
        return true
    }

    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

let number = 7
print(isPrime(number) ? "\(number) is prime" : "\(number) is not prime")

print("Prime numbers from 1 to 50:")
for value in 1...50 {
    if isPrime(value) {
        print(value)
    }
}
