// Task 3.17: Mini Student Management System.
struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    var grade: Grade {
        switch marks {
        case 90...100: return .a
        case 80..<90: return .b
        case 70..<80: return .c
        case 60..<70: return .d
        default: return .f
        }
    }
}

enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case d = "D"
    case f = "F"
}

class School {
    private var students: [Student] = []

    func addStudent(_ student: Student) {
        guard (0...100).contains(student.marks) else {
            print("Invalid marks for \(student.name)")
            return
        }
        students.append(student)
    }

    func printReport() {
        let sortedStudents = students.sorted { $0.marks > $1.marks }
        print("Student Report (highest marks first)")
        for student in sortedStudents {
            print("\(student.rollNumber) | \(student.name) | \(student.marks) | Grade \(student.grade.rawValue)")
        }
    }
}

let school = School()
school.addStudent(Student(name: "Arun", rollNumber: 101, marks: 85))
school.addStudent(Student(name: "Priya", rollNumber: 102, marks: 96))
school.addStudent(Student(name: "Kavin", rollNumber: 103, marks: 67))
school.printReport()
