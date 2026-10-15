// Task 1.16: Print a right-angled triangle, then skip even rows using continue.
let n = 5

print("Normal triangle:")
for row in 1...n {
    for _ in 1...row {
        print("*", terminator: "")
    }
    print()
}

print("\nTriangle skipping even rows:")
for row in 1...n {
    if row % 2 == 0 {
        continue
    }

    for _ in 1...row {
        print("*", terminator: "")
    }
    print()
}
