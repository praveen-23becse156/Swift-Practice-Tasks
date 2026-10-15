// Task 3.13: Use didSet to observe salary changes.
class Employee {
    var salary: Double {
        didSet {
            print("Salary changed from \(oldValue) to \(salary)")
        }
    }

    init(salary: Double) {
        self.salary = salary
    }
}

let employee = Employee(salary: 30000)
employee.salary = 35000
employee.salary = 40000
