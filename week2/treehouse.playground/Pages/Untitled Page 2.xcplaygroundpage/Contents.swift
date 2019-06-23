/*
 In the editor you've been provided with a struct named Location that models a coordinate point using longitude and latitude values.
 
 
 For this task we want to create a class named Business. The class contains two constant stored properties: name of type String and location of type Location.
 
 
 In the initializer method pass in a name and an instance of Location to set up the instance of Business. Using this initializer, create an instance and assign it to a constant named someBusiness.
 */
struct Location {
    let latitude: Double
    let longitude: Double
}
class Business {
    let name: String
    let location: Location
    
    init(name: String, latitude: Double, longitude: Double) {
        self.location = Location(latitude: latitude, longitude: longitude)
        self.name = name
    }
}
let someBusiness = Business(name: "TW", latitude: 121.25, longitude: 23.5)

/* subclass 的 test
 In the editor, I have provided a class named Vehicle.
 
 
 Your task is to create a subclass of Vehicle, named Car, that adds an additional stored property numberOfSeats of type Int with a default value of 4.
 
 
 Once you've implemented the Car class, create an instance and assign it to a constant named someCar.
*/
class Vehicle {
    var numberOfDoors: Int
    var numberOfWheels: Int
    
    init(withDoors doors: Int, andWheels wheels: Int) {
        self.numberOfDoors = doors
        self.numberOfWheels = wheels
    }
}

class Car: Vehicle {
    var numberOfSeats: Int = 4
}
let someCar = Car(withDoors: 4, andWheels: 4)

/*
 I've provided a base class Person in the editor below. Once an instance of Person is created, you can call fullName() and get a person's full name.
 
 
 Your job is to create a class named Doctor that overrides the fullName() method. Once you have a class definition, create an instance and assign it to a constant named someDoctor.
 
 
 For example, given the first name "Sam", and last name "Smith", calling fullName() on an instance of Person would return "Sam Smith", but calling the same method on an instance of Doctor would return "Dr. Smith".
 */
class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}
class Doctor: Person {
    override func fullName() -> String {
        return "Dr. \(lastName)"
    }
}
let someDoctor = Doctor(firstName: "Sam", lastName: "Smith")
someDoctor.fullName()

/*
In the editor below you have two objects - classes named Point and Robot. The Robot stores its location as a point instance and contains a move function.


The task of this challenge is to complete the implementation for move. Move takes a parameter of type Direction which is an enumeration listing the possible movement directions.


When you tell the robot to move up (by specifying Direction.Up as the argument), the y coordinate should increase by 1. Similarly moving down means the y coordinate decreases by 1, moving right means the x coordinate increases by 1 and finally left means x decreases by 1.
*/
class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

enum Direction {
    case left
    case right
    case up
    case down
}

class Robot {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(_ direction: Direction) {
        // Enter your code below
        switch direction {
        case .down: location.y -= 1
        case .up: location.y += 1
        case .left: location.x -= 1
        case .right: location.x += 1
        }
    }
}
var xiaomi = Robot()
xiaomi.move(.down)
xiaomi.location.y

/*
 For this task, let's create a enum named MobilePhone. The enum will have three members: iphone, android and windowsPhone.
 
 
 Each of these members should have a String value as its associated value.
 
 
 Once you have an enum declared, assign the value of the iPhone member with an associated value of "7 Plus" to a constant named iphone
 */
enum MobilePhone {
    case iphone(String)
    case android(String)
    case windowsPhone(String)
}
let iphone = MobilePhone.iphone("7 Plus")

/* 1 of 2
 In the editor you've been provided with a file buttons.swift that defines a BarButton type.
 
 
 Let's start simple. Declare a constant named done and assign an enum value of type BarButton with the member done. This member takes an associated value; assign it the string "Save".
 */
//Example of UIBarButtonItem instance
// let someButton = UIBarButtonItem(title: "A Title", style: .plain, target: nil, action: nil)
/*enum BarButton {
    case done(title: String)
    case edit(title: String)
    
}

let done = BarButton.done(title: "Save")
 */
/* 2 of 2
 Next, add a method to the enum named button that returns an instance of the class UIBarButtonItem configured properly. An example of how to create an instance for this task is shown in the comments below. Use the same initializer.
 
 
 In the method, using the associated values as titles for the button, return a button with style UIBarButtonStyle.done for the done member of the BarButton enum. Similarly for the edit member, return a UIBarButtonItem instance with the style set to UIBarButtonStyle.plain.
 
 
 In both cases you can pass nil for target and action. Once you have a method, call it on the value we created in the previous task and assign it to a constant named button.
 */
import UIKit

enum BarButton {
    case done(title: String)
    case edit(title: String)
    
    func button() -> UIBarButtonItem {
        switch self {
        case .done(let title):
            let doneButton =  UIBarButtonItem(title: title, style: .done, target: nil, action: nil)
            return doneButton
        case .edit(let title):
            return UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
        }
    }
}
let done = BarButton.done(title: "Save")
let button = done.button()
