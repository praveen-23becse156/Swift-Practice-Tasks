// Task 3.4: Add isPassed() to Student.
struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    func isPassed() -> Bool {
        return marks >= 40
    }
}

let student = Student(name: "Arun", rollNumber: 101, marks: 75)
print(student.isPassed() ? "Passed" : "Failed")
