// Task 1.18: Categorise BMI using switch ranges and where clauses.
let bmi = 24.5

switch bmi {
case let value where value < 0:
    print("Invalid BMI")
case let value where value < 18.5:
    print("Underweight")
case let value where value >= 18.5 && value < 25:
    print("Normal")
case let value where value >= 25 && value < 30:
    print("Overweight")
case let value where value >= 30:
    print("Obese")
default:
    print("Invalid BMI")
}
