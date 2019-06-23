// Q1
/*
struct Person {
    var name: String
}
 */
protocol PoliceMan {
    func arrestCriminals()
}

//Q2
/*
 struct Persion: PoliceMan {
 var name: String
 func arrestCriminals() {
 
 }
 }
*/
/*
extension Person: PoliceMan {
    func arrestCriminals() {
        print("PoliceOfficer")
    }
}
 */
// Q3
protocol ToolMan {
    func fixComputer()
}
//Q4 感覺有更好的辦法

struct Person: PoliceMan, ToolMan {
    let name: String
    let toolMan: ToolMan
    
    func arrestCriminals() {
        
    }
    
    func fixComputer() {
        
    }
}
// Q5
struct Engineer: ToolMan {
    func fixComputer() {
        
    }
}

// Q6
let someBody = Person(name: "Steven", toolMan: Engineer())

