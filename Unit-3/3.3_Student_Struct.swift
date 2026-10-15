// Task 3.3: Create two Student instances and print their details.
struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int
}

let student1 = Student(name: "Arun", rollNumber: 101, marks: 85)
let student2 = Student(name: "Priya", rollNumber: 102, marks: 92)

print(student1.name, student1.rollNumber, student1.marks)
print(student2.name, student2.rollNumber, student2.marks)
