// Optional
var someValue: Int?

// Optional Binding test
let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""

// Enter code below
//[String:[String:[String:String]]]
 if let cast = movieDictionary["Spectre"], let actor = cast["cast"] {
 leadActor = actor[0]
 }

//
/*
In the editor, you have a struct named Book which has few stored properties, two of which are optional.


Your task is to create a failable initializer that accepts a dictionary of type [String : String] as input and initializes all the stored properties. (Hint: A failable init method is one that can return nil and is written as init?).


Use the following keys to retrieve values from the dictionary: "title", "author", "price", "pubDate"


Note: Give your initializer argument the name dict
*/

/*
struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(bookDictionary: [String : String]) {
        guard let title = bookDictionary["title"], let author = bookDictionary["author"] else {
            return nil
        }
        let price = bookDictionary["price"]
        let pubDate = bookDictionary["pubDate"]
        //return Book(title: title,author: author,price: self.price, pubDate: pubDate)
    }
    
}
*/
struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String: String]) {
        /*guard dict["title"] != nil && dict["author"] != nil else {
            // A book must have title and author. If not, fail by returning nil
            return nil
        } */
        guard let title = dict["title"], let author = dict["author"] else {
            return nil
        }
        print(title)
        self.title = dict["title"]! // 有點不太懂為什麼這邊還要打title 及 author
        self.author = dict["author"]!
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
    }
}
let book2 = Book(dict: ["title": "ha",])
/*
struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String : String]) {
        guard let title = dict["title"] , let author = dict["author"] else {
            return nil
       }
       let price = dict["price"]
       let pubDate = dict["pubDate"]
          }
}
let book1 = Book(dict: ["title": "Harry Potter", "author": "JK Rowling"])
*/

