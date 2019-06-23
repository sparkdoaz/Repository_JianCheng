/*
 In the editor you've been provided with a Tag type.
 
 
 Create a struct named Post with three stored properties: title of type String, author of type String, and tag of type Tag.
 
 
 Then create an instance of Post and assign it to a constant named firstPost.
//
struct Tag {
    let name: String
}
struct Post {
    
    let title: String
    let author: String
    let tag: Tag
    
}
let firstPost = Post(title: "LOVE", author: "Davied", tag: Tag(name: "jack"))

//
For this task, add an instance method to Post.


Name the method description. It takes no parameters and returns a string that describes the post instance. For example given a title: "iOS Development", author: "Apple", and a tag named "swift", the description would read as follows"


"iOSDevelopment by Apple. Filed under swift"


Once you have an instance method, call it on the firstPost instance and assign the result to a constant named postDescription
*/


struct Tag {
    let name: String
}
struct Post {
    
    let title: String
    let author: String
    let tag: Tag
    func description() -> String {
        return "\(title) by \(author). Filed under \(tag.name)"
    }
    
}
let firstPost = Post(title: "iOSDevelopment", author: "Apple", tag: Tag(name: "Swift"))
let postDescription = firstPost.description()
firstPost.description()

//Q2
/*
In the editor you've been provided with two classes: Point to represent a coordinate point, and Machine. The machine has a move method that doesn't do anything.


Your task is to subclass Machine and create a new class named Robot. In the Robot class, override the move method and provide the following implementation:


If you enter the string "Up" the y coordinate of the Robot's location increases by 1. "Down" decreases it by 1.
If you enter "Left", the x coordinate of the location property decreases by 1 while "Right" increases it by 1.


Note: If you use a switch statement you can use the break statement in the default clause to exit the current iteration.
*/

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

class Machine {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(_ direction: String) {
        print("Do nothing! I am a machine!")
    }
}

// Enter your code below
class Robot: Machine {
    override func move(_ direction: String) {
        switch direction {
        case "Up":
            self.location.y += 1
        case "Down": self.location.y -= 1
        case "Left": self.location.x -= 1
        case "Right": self.location.x += 1
        default:
            break
        }
    }
}
