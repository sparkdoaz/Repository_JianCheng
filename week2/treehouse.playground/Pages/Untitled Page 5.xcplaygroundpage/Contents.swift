
enum ParserError: Error {
    case emptyDictionary(description: String)
    case invalidKey(description: String)
}

struct Parser {
    var data: [String : String?]?
    
    func parse() throws {
        
        guard data != nil else {
            throw ParserError.emptyDictionary(description: "empty dictionary")
        }
        
        guard data?.keys.contains("someKey") == true else {
            throw ParserError.invalidKey(description: "invalid key")
        }
        
    }
}

let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: data)

do {
    try parser.parse()
    
} catch ParserError.emptyDictionary(let description) {
    print(description)
    
} catch ParserError.invalidKey(let description) {
    print(description)
    
}

/* //another
 
 enum ParserError: Error {
    case emptyDictionary(description: String)
    case invalidKey(description: String)
    
}
 
 struct Parser {
    var data: [String : String?]?
 
    func parse() throws {
        guard let emptyDictionary = data else {
            throw ParserError.emptyDictionary(description: "The Dictionary has no value")
            
        }
        guard let invalidKey = data?["someKey"] else {
            throw ParserError.invalidKey(description: "There are no keys associated with the value")
            
        }
    }
 }
 
let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: data)
 
 do {
    let parser = try Parser.parse
    
 } catch ParserError.emptyDictionary(let description) {
    print(description)
    
 } catch ParserError.invalidKey(let description) {
    print(description)
    
}
 */
 
 
 
 
 
 
