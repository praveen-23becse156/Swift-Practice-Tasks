// Task 3.15: Add, remove, search, and list books.
class Book {
    let title: String

    init(title: String) {
        self.title = title
    }
}

class Library {
    private var books: [Book] = []

    func add(_ book: Book) {
        books.append(book)
        print("Added: \(book.title)")
    }

    func remove(title: String) {
        if let index = books.firstIndex(where: { $0.title.lowercased() == title.lowercased() }) {
            let removed = books.remove(at: index)
            print("Removed: \(removed.title)")
        } else {
            print("Book not found")
        }
    }

    func search(title: String) {
        if let book = books.first(where: { $0.title.lowercased() == title.lowercased() }) {
            print("Found: \(book.title)")
        } else {
            print("Book not found")
        }
    }

    func listBooks() {
        if books.isEmpty {
            print("Library is empty")
        } else {
            for book in books {
                print(book.title)
            }
        }
    }
}

let library = Library()
library.add(Book(title: "Swift Basics"))
library.add(Book(title: "Programming 101"))
library.search(title: "Swift Basics")
print("All books:")
library.listBooks()
library.remove(title: "Programming 101")
