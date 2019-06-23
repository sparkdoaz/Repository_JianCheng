
protocol User {
    var name: String { get }
    var age: Int { get set }
    
}
struct Person: User {
    var name: String
    var age: Int
    
    
}
let somePerson = Person(name: "jack", age: 19)




enum LightState {
    case on, off
}

enum Color {
    case rgb(Double, Double, Double, Double)
    case hsb(Double, Double, Double, Double)
}

class WifiLamp {
    let state: LightState
    var color: Color
    
    init() {
        self.state = .on
        self.color = .rgb(0,0,0,0)
    }
}
protocol ColorSwitchable {
    
    func switchColor(_ color: Color)
    
    
}
/*
 
 For this task, make WifiLamp adopt the ColorSwitchable protocol. In the implementation of the method, simply set the color of the lamp to the new color.
 */
extension WifiLamp: ColorSwitchable {
    func switchColor(_ color: Color) {
        self.color = .rgb(255, 0, 0, 0)
    }
    
    
}
protocol Animal {
    var numberOfLegs: Int { get }
}
protocol Pet: Animal {
    var cuddlyName: String { get }
    
}
struct Dog: Pet {
    var cuddlyName: String
    
    var numberOfLegs: Int
    
    
}

/*
 For this task, let's get some practice throwing an error. You've been provided with an error object in the editor. Errors are typically thrown from inside functions so let's start by creating a function that can throw.
 
 Name this function lend. It takes no parameters and has no return type.
 
 */

enum BookError: Error {
    case incorrectTitle
}
func lend() throws {
    throw BookError.incorrectTitle
}
// domain error
/*1-3
 In the editor, you have a struct named Parser whose job is to deconstruct information from the web. The incoming data can be nil, keys may not exist, and values might be nil as well.
 
 In this task, complete the body of the parse function. If the data is nil, throw the EmptyDictionary error. If the key "someKey" doesn't exist throw the InvalidKey error.
 
 Hint: To get a list of keys in a dictionary you can use the keys property which returns an array. Use the contains method on it to check if the value exists in the array
 */
//自己寫有通過
enum ParserError: Error {
    case emptyDictionary
    case invalidKey
}

struct Parser {
    var data: [String : String?]?
    
    func parse() throws {
        guard let someData = data else {
            throw ParserError.emptyDictionary
        }
        guard let someKey = data?["someKey"] else {
            throw ParserError.invalidKey
        }
    }
}

let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: data)

/*
challenge Task 2 of 3
Now that you have good error handling code, let's call the parse method. Remember that since this is a throwing function, you will need to use a do catch block. For this task, just use a generic catch block rather than pattern matching on specific errors.

In the catch clause, simply log an error message of your choosing.
*/


/*
 Challenge Task 3 of 3
 Perfect! We're almost done. Rather than a generic catch clause, let's pattern match on the specific errors so that we can log better error messages.
 
 In this task, change the catch statement to include specific error cases. Like before you can just log an error message of your choosing.
 */


//To execute statements as we leave the current scope we use a "defer" statement
//The call to a throwing function along with the happy path of code is encapsulated in a " do " clause.
//A catch clauses cannot pattern match on different error cases like a switch statement  A: False
//How are defer statements executed? A: In reverse order of which they are written
//In Swift, you can indicate what kind of error is being thrown from a function, i.e, the function preserves type information of thrown errors. A: false
//When a error is thrown from inside a do clause, what happens? A: The error is propagated to its outer scope and handled by a catch clause
//Where are errors thrown from a function handled? A： catch clause
