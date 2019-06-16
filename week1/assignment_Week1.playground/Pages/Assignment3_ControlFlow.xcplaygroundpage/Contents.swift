//Q1
    let lottoNumbers = [10,9,8,7,6,5]
    var power = lottoNumbers.count - 1

     for index in power-2...power {
        print(lottoNumbers[index])
    }
    //another method
    //for index in lottoNumbers.count-3..<lottoNumbers.count {
    //    print(lottoNumbers[index])
    //}

//Q2
    for item in stride(from: 5, through: 0 , by: -1 ) {
        print(lottoNumbers[item])
    }     //through 包含END的數值
    for item in stride(from: 0, to:6 , by:2 ) {
        print(lottoNumbers[item])
    }     //to 不包括end的數值
    //another method
    //for item in 0...power {
    //    print(lottoNumbers[power-item])
    //}
        //for item in 0..<lottoNumbers.count {
        //    print(lottoNumbers[lottoNumbers.count-item-1])
        //}
    //for item in 0..<lottoNumbers.count/2 {
    //    print(lottoNumbers[item*2])
    //}

//Q3
    var index = lottoNumbers.count - 1
    while 0 <= index  {
        print(lottoNumbers[index])
        index += -1
    }

    index = 0
    while index < lottoNumbers.count {
        print(lottoNumbers[index])
        index += 2
    }
//Q4
    index = lottoNumbers.count - 1
    repeat {
        print(lottoNumbers[index])
        index += -1
    } while 0 <= index

    index = 0
    repeat {
        print(lottoNumbers[index])
        index += 2
    } while index < lottoNumbers.count

//Q5
    var isRaining = "sunny"
    if isRaining == "raining" {
        print("It's raining, I don't want to work today.")
    } else{
        print("Although it's sunny, I still don't want to work today.")
    }

    var jobLevel = 4
    switch jobLevel {
    case 1 :print("JobTitle: Member")
    case 2 :print("JobTitle: Team Leader")
    case 3 :print("JobTitle: Manager")
    case 4 :print("JobTitle: Director")
    default:print("We don't have this job")
    }

