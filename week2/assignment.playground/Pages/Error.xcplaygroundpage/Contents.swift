// Q1
enum GuessNumberGameError: Error {
    
    case wrongNumber
}

class GuessNumberGame {
    
    var targetNumber =  10
    
    func guess(number: Int) throws {
        
        guard number == targetNumber else {
            
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right number: \(targetNumber)")
    }
}

// Q2
//try GuessNumberGame().guess(number: 20)

let game = GuessNumberGame()

do {
    try game.guess(number: 30)
} catch let error {
    print(error)
}

