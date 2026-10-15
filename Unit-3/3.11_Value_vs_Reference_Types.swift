// Task 3.11: Compare copying a struct and a class.
struct ScoreCard {
    var score: Int
}

class Player {
    var score: Int
    init(score: Int) {
        self.score = score
    }
}

var originalStruct = ScoreCard(score: 10)
var copiedStruct = originalStruct
copiedStruct.score = 99

let originalClass = Player(score: 10)
let copiedClass = originalClass
copiedClass.score = 99

print("Original struct score:", originalStruct.score) // 10: structs are copied by value.
print("Copied struct score:", copiedStruct.score)     // 99: this is a separate value.
print("Original class score:", originalClass.score)   // 99: both references point to the same object.
print("Copied class score:", copiedClass.score)       // 99
