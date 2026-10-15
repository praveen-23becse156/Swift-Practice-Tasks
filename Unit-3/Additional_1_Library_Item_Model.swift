// Additional Task 1: Enum + struct + class; compare value and reference semantics.
enum BookStatus {
    case available
    case borrowed(by: String, dueIns: Int)
    case reserved(for: String)

    var label: String {
        switch self {
        case .available:
            return "Available"
        case .borrowed(let name, let days):
            return "Borrowed by \(name), due in \(days) days"
        case .reserved(let name):
            return "Reserved for \(name)"
        }
    }
}

struct Book {
    var title: String
    var status: BookStatus = .available
}

class Member {
    var name: String
    var borrowedBooks: [String]

    init(name: String, borrowedBooks: [String] = []) {
        self.name = name
        self.borrowedBooks = borrowedBooks
    }
}

var firstBook = Book(title: "Swift Guide")
var secondBook = firstBook
secondBook.status = .borrowed(by: "Bala", dueIns: 7)

print("Original book:", firstBook.status.label)
print("Copied book:", secondBook.status.label)

let firstMember = Member(name: "Arun")
let secondMember = firstMember
secondMember.name = "Priya"

print("First member name:", firstMember.name)  // Priya: both constants refer to the same class instance.
print("Second member name:", secondMember.name)
