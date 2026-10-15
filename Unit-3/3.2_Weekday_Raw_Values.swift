// Task 3.2: Weekday enum with raw values 1 through 7.
enum Weekday: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
}

let day = Weekday.wednesday
print("Raw value:", day.rawValue)

if let selectedDay = Weekday(rawValue: 5) {
    print("Day for raw value 5:", selectedDay)
} else {
    print("Invalid day")
}
