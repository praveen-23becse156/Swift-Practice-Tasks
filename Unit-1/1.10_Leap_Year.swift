// Task 1.10: Check whether a year is a leap year.
let year = 2024

if year % 400 == 0 {
    print("Leap year")
} else if year % 100 == 0 {
    print("Not a leap year")
} else if year % 4 == 0 {
    print("Leap year")
} else {
    print("Not a leap year")
}
