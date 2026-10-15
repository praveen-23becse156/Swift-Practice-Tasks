// Task 3.10: Deposit and withdraw without allowing overdraft.
struct BankAccount {
    var balance: Double

    mutating func deposit(_ amount: Double) {
        guard amount > 0 else {
            print("Deposit amount must be positive")
            return
        }
        balance += amount
    }

    mutating func withdraw(_ amount: Double) {
        guard amount > 0 else {
            print("Withdrawal amount must be positive")
            return
        }
        guard amount <= balance else {
            print("Insufficient balance")
            return
        }
        balance -= amount
    }
}

var account = BankAccount(balance: 500)
account.deposit(200)
account.withdraw(100)
account.withdraw(1000)
print("Balance:", account.balance)
