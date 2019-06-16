//Q1
    let Pi: Float = 3.141596
    var radius: Float = 10
    var circle_area = 2*Pi*radius
    print(circle_area)
    //因為Pi圓周率是固定不變的常數，所以使用let
//Q2
    var x: Int = 10
    var y: Int = 3
    let average: Int = (x+y)/2
//Q3
    var x_2: Double = 100
    var y_2: Double = 3
    let average_2: Double = (x_2+y_2)/2
    //Q3-2
    //因為10/3 資料型別皆為Int，因此運算結果也會是Int，所以會將小數點後面數值無條件捨去。
    //而10.0/3.0 資料型別為Double，因此運算結果將會是Double，所以小數點後面數值將可以保留呈現
//Q4
    var flag: Bool = true
    var inputString: String = "​Hello world."
    let bitsInBite: Int = 8
    let averageScore: Double = 86.8
//Q5
    var salary = 22000
    salary += 28000
    print(salary)
//Q6
    var name = "jiancheng"
    name == "huang"
//Q7
    let number1:Int = 3
    let number2:Int = 10
    let remain:Int = 10%3

//Q8
/*
    var 主要是儲存變數，也就是事後可以重新指定相同的資料型別data給變數。
    let 主要是儲存常數，常數一宣告之後是不可以被重新指定data的。
*/

//Q9
/*
     1.不能使用空白
     2.命名法使用cameCase，也就是第一個單字的字母小寫，隨後單字的開頭字母大寫。ex： var favoriteLanguage = “swift”
     3.不能使用數字開頭
     4.不能使用特殊字、數學符號元。如 ？！. ,
 */

//Q10
/*
     Type Inference 型別推斷 可以有效的根據第一次宣告時自動判別你所期望的資料型別（表示不用特別去宣告資料型別 var x = 1 會自動推斷為Int）
     在隨後重新指定變數時，必須使用同樣的資料型別。 x = 3
     這樣在編譯時一旦發現資料型別不同，就會被標記為錯誤，可以有效的發現並修正錯誤。 （x = "string" 這樣將會被視為錯誤）
 */

//Q11
    //因為一開始型別推斷為Int，而在下一行中是無法指定string給phoneNumber（Int）






