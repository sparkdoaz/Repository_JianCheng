struct Book {
    let title: String
    let author: String
    let price: Double
}

let myBook = Book(title: "Animal Farm", author: "George Orwell", price: 6.00)

myBook.author

let coordinate1: (x: Int, y: Int) = (0,0) //這是啥查一下

///Returns the surrounding points in range of the current one
struct Point {
    let x: Int
    let y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    func points(inRange range: Int = 1) -> [Point] {
        var results = [Point]()
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        let lowerBoundOdYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOdYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        return results
    }
}
let coordinatePoint = Point(x: 0, y: 0) //instance 已經實體化了
coordinatePoint.points() //預設的1 //coordinatePoint.points(inRange: 2)
coordinatePoint.x

// Enemies

class Enemy {
    var life: Int = 2 //property
    let position: Point // an instance of Point is the property of position
    /*init(position: Point) { //方法一 先有一個實例然後傳遞到initializer 缺點是使用者呼叫的時候 要輸入 point的 data type 會不太了解，忘記這什麼意思就把這一行comment 打開 下面的init關掉，然後去創建一個instance 就知道了
                                var text = Enemy(<-這時候就可以看出變化
        self.position = position
     } */
    init(x: Int, y: Int) { //就跟point struct 的initializer 很像
        self.position = Point(x: x, y: y) //an instance of Point now assigned to position。And the cool part is that we don't have to decide now what that point will be.  //這個好處是很直覺的輸入x y 位置
        //position = Point(x: x, y: y) 跟上面應該一樣 只是比較常打self
    }
    func decreaseLife(by factor: Int) {
        life -= factor
    }
}

class SuperEnemy: Enemy {
    let isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50 //life = 60 一樣
        
    }
    
    
}
var one = Enemy(x: 1, y: 1)

// Towers

class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    func fire(at enemy: Enemy)  {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print("gotcha")
        } else {
            print("Darn! Out of the range")
        }
    }
    func isInRange(of enemy: Enemy) -> Bool {  //helper method 可以在範圍內被其他calss structure method 使用，例如可以被上面的fire method 所使用（在下方的func被上方的func取用，因為在同一個scope）
        let availablePositions = position.points(inRange: range)
        
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                return true
            }
        }
        return false //這一行沒有的話，會提醒你因為要回傳bool，complier會思考所有可能性。
    }
}
let tower1 = Tower(x: 1, y: 1)
let enemy1 = Enemy(x: 0, y: 0)
tower1.fire(at: enemy1)
let superenemy1 = SuperEnemy(x: 2, y: 2)
superenemy1.life


//Given the struct below in the editor, we want to add a method that returns the person’s full name. Declare a method named fullName() that returns a string containing the person’s full name. Note: Make sure to allow for a space between the first and last name
struct Person {
    let firstName: String
    let lastName: String
    
    func fullName() -> String {
        var result = String()
        result = "\(firstName) \(lastName)"
        return result
    }
}
//Let's use the struct to create an instance of Person and assign it to a constant named aPerson. Assign any values you want to the first and last name properties.
//Once you have an instance, call the instance method and assign the full name to a constant named myFullName.
let aPerson = Person(firstName: "Jack", lastName: "Huang")
aPerson.fullName()
let myFullName = aPerson.fullName()

//creating Empty Array
var someInts = [Int]()
//creating Empty varible
var someInt: Int
someInt = 1

/*
 In the editor, I’ve declared a struct named RGBColor that models a color object in the RGB space.
 
 
 Your task is to write a custom initializer method for the object. Using the initializer assign values to the first four properties. Using the values assigned to those properties create a value for the description property that is a string representation of the color object.
 
 
 For example, given the values 86.0 for red, 191.0 for green, 131.0 for blue and 1.0 for alpha, each of the stored properties should hold these values and the description property should look like this:
 
 
 "red: 86.0, green: 191.0, blue: 131.0, alpha: 1.0"
 */
struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String
    
    // Add your code below
    init(red: Double, green: Double, blue:Double, alpha: Double) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
        
        description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)"
        //self.description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)" 跟上面一行一樣 self.red 指的是property
    }
}
let white = RGBColor(red: 86.0, green: 191.0, blue: 131.0, alpha: 1.0)
print(white.description)



/*
 struct OnePerson {
 var name: String = "kkbox"
 
 init (name: String) {
 self.name = name
 }
 }
 var firstperson = OnePerson()
 firstperson.name
 firstperson.name = "jack"
 firstperson.name
 */

struct markStruct{
    var mark1: Int
    var mark2: Int
    var mark3: Int
    
    init (mark1: Int, mark2: Int, mark3: Int){
        self.mark1 = mark1 + 1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}

print("优异成绩:")
var marks = markStruct(mark1: 98, mark2: 96, mark3:100)
print(marks.mark1)


/* introduction of class 的 練習題
 Let's get in some practice creating a class. Declare a class named Shape with a variable property named numberOfSides of type Int.
 
 
 Remember that with classes you are required to write an initializer method.
 
 
 Once you have a class definition, create an instance and assign it to a constant named someShape.
 */
class Shape {
    var numberOfSides: Int
    
   /* init(x: Int) {
        numberOfSides = x
   }  這個不好的原因是使用者呼叫的時候不知道這x代表甚麼意思*/
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
}
let someShape = Shape(numberOfSides: 2)

