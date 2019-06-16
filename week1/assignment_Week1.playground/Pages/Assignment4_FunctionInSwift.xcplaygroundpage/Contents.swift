//#Q1
    func greet(person: String) -> String {
        let greeting = "Hello, \(person)."
        return greeting
    }
    greet(person: "Celeste")

//#Q2
    func multiply(a:Int,b:Int = 10) {
        print(a*b)
    }
    multiply(a: 1000)

//#Q3
    //每個argument label 實際上由 兩個label所組成，分別是external name 及 local name。
    //當我們給函數一個參數時只有一個name label，這時argument label 的 兩個label皆為同一個，因此可以默認為parameter label
    func remove (havingValue : String) {
        print(havingValue)
    }
    remove(havingValue: "jojo")
    //當我們給這個函數addString，addValue做為external name、value做為local name，
    //value 只能使用在statement裡面，並讓建立者（建立這個函數的人）可以更容易閱讀、容易編寫程式。
    //而當我們呼叫addString時，external name 就會顯示出來,提供使用者（使用這個函數的人）更了解這個函數要輸入的參數意義
    func addString(addValue value:String) {
        print(value) //statment裡面就只能使用local name
    }
    addString(addValue: "hi")

//#Q4
    // 根據回傳箭頭後面的資料型別即可以判斷return type
    func birthday() -> String {
        return "hi~"
    } //return type 為 string
    func payment() -> Double {
        return 0.1
    } //return type 為 double

