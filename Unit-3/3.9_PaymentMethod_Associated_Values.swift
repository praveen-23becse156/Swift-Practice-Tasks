// Task 3.9: Enum with associated values.
enum PaymentMethod {
    case cash
    case card(number: String)
    case upi(id: String)
}

func printPayment(_ method: PaymentMethod) {
    switch method {
    case .cash:
        print("Payment by cash")
    case .card(let number):
        print("Payment by card ending in \(number.suffix(4))")
    case .upi(let id):
        print("Payment by UPI: \(id)")
    }
}

printPayment(.cash)
printPayment(.card(number: "1234567812345678"))
printPayment(.upi(id: "student@upi"))
