// Q1
enum Gender {
    case male
    case female
    case undefined
}

class Anima {
    let gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat() {
         print("I eat everything!")
    }
}

// Q2
class Elephant: Anima {
    override func eat() {
        print("I eat banana.")
    }
}
let eeve = Elephant(gender: .female)
eeve.eat()

class Tiger: Anima {
    override func eat() {
        print("I eat meat.")
    }
}

class Horse: Anima {
    override func eat() {
        print("I eat grass.")
    }
}

// Q3
class Zoo {
    var weeklyHot: Anima?
    
    
    init(weeklyHot: Anima? = nil) {
        self.weeklyHot = weeklyHot
    }
 
}

let zoo = Zoo(weeklyHot: Tiger(gender: .female))
zoo.weeklyHot
//let zoo2 = Zoo()
//zoo2.weeklyHot
let tiger = Tiger(gender: .female)
let elephant = Elephant(gender: Gender.male)
let horse = Horse(gender: .female)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse
zoo.weeklyHot

// Q4
/*
 1.容易維護只要修改物件這個基本單元就好，不會去影響整個程式碼。
 2.物件可以讓資料與程式封裝在一起，比較好閱讀即維護。
 3.可以利用繼承去繼承父項的基本功能並且加以添加額外的功能。
 */

// Q5
/*
class： 可以被繼承，需要建立 init ，為 reference type
struct： 不可以被繼承，可以不用建立 init ， 為 value type
 */

// Q6
/*
 instance method: 作用在特定 type 的 instance 上，需要先有實體才可以用，它的語法跟 func 是一樣的。當要呼叫 instance method 時，必須利用 dot notation。
 type method: 作用在 type 本身，而不是 instance 上。語法是在 func 前加上 static，如果是在 class 裡面使用，則是在 func 前加上 class 。
 */


// Q7
/*
 init 為 class 與 struct 的 stored properties 設定初始值，也可以使用2個以上的 init 提供不一樣的初始值。
 而 struct 內建 memberwise initialzer 所以當沒有特色需求時可以不用寫 initi ， 但是 class 就必須手動寫。
*/

// Q8
/*
 用來解決 parameter name 與 property name 相同時發生的衝突， self 將會指向 property name
 */


// Q9
/*
reference type： 使用 reference type 資料給某一常數（或變數）時，此時的某常數（或變數）其資料是指向原來的值，也就是當原值改變時也隨之改變。
value type： 使用 value type 資料給某一常數（或變數）時，是將原來的值“複製”到某常數（或變數），因此原值改變時，某常數（或變數）不受改變。
*/

