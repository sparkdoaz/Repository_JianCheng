// Q1
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    func getPrice(type oil: Gasoline)  -> Double {
        switch oil {
        case .oil92:
            return 28.8
        case .oil95:
            return 30.3
        case .oil98:
            return 32.3
        case .diesel:
            return 26.8
        }
    }
    
}
Gasoline.oil98.rawValue
// 1-4
// associated values 可以與 enum menber 合作且 type 類型可以與 enum member 不一樣，讓我們可以附加額外的資訊。
enum Monseter {
    case dragon(attack: Double)  //在這裡使用Double作為associated values，並且使用attack作為parameter label
    
    func loseBlood() { ///建立一個method，將Double指定為一個常數，並命名為attack，並在print結果中帶入此常數
        switch self {
        case .dragon(let attack): print("I loose the \(attack) blood. Help Me!!")

        }
    }
}
///此時呼叫Monseter，指定attack為100，可以看到結果
Monseter.dragon(attack: 100).loseBlood()

// Q2-1
class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Person {
    var pet: Pet?
}
// Q2-2
let JC = Person()
JC.pet = Pet(name: "Niti")

func havePet(master: Person) {
    guard let pet = JC.pet else {
       return print("\(JC) don't have pet.")
    }
    print("JC have a pet named \(pet.name)!")
}
havePet(master: JC)

// Q2-3
let Perter = Person()

/*
func hasAnotherPet(master: Person) -> String {
    if let pet = Perter.pet?.name {
        return "Perter have a pet named \(pet)!"
    } else {
        return "Peter doesn't have any pet."
    }
}
*/
func hasAnotherPet(master: Person) -> String {
    if let pet = Perter.pet {
        return "Perter have a pet named \(pet.name)!"
    } else {
        return "Peter doesn't have any pet."
    }
}
hasAnotherPet(master: Perter)
