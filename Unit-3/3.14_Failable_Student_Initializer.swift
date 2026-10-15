// Task 3.14: Failable initializer validates marks from 0 to 100.
struct Student {
    var name: String
    var marks: Int

    init?(name: String, marks: Int) {
        guard (0...100).contains(marks) else {
            return nil
        }
        self.name = name
        self.marks = marks
    }
}

if let student = Student(name: "Anu", marks: 88) {
    print("\(student.name): \(student.marks)")
} else {
    print("Invalid student marks")
}

if Student(name: "Raj", marks: 120) == nil {
    print("Student creation failed because marks are invalid")
}
