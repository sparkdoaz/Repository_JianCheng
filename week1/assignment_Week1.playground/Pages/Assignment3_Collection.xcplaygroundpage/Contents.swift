//Q1
    //var myFriend: [String] = []
    var myFriend = [String]()

//Q2
/*
     myFriend.append("lan")
     myFriend.append("Bomi")
     myFriend.append("Kevin")
     or
     myFriend.append(contentsOf: ["lan","Bomi","Kevin"])
*/
    myFriend += ["lan","Bomi","Kevin"]

//Q3
    myFriend.append("Michael")

//Q4
    myFriend.remove(at: 2)
    myFriend.insert("Kevin", at: 0)

//Q5
    for name in myFriend {
        print(name)
    }

//Q6
    myFriend.count
    //總共才4個資料，因此myFriend[5]並不存在。

//Q7
    myFriend[0] //第一筆資料的index 是 0

//Q8
    myFriend[3] //因為先前的myFriend.count 為4，因此index 將會是0、1、2、3 ，3會是最後一個，也千萬不要使用跟資料總數一樣的index值

//Q9
    var myCountryNumber = [String:Int]()

//Q10
    myCountryNumber = ["US":1,"GB":44,"JP":81]

//Q11
    myCountryNumber["GB"] = 0

//Q12
    //我認為跟Q9的答案類似，因為tape safety 所以仍然需要設定key、value要為甚麼資料型別type。
    var myEmptyDictionary = [Int:Int]()
    /*
     或是先創dictionary然後再empty
     var myEmptyDictionary = ["TW":1,"US":2,"USA":3]
    */
    myEmptyDictionary = [:]

//Q13
    myCountryNumber["GB"]=nil















