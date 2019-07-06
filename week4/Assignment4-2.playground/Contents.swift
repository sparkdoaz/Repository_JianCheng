//方法1
let odd = (0...100).filter{ $0 % 2 == 1}
print(odd)

let odd2 = { $0 % 2 == 1 }
odd2(2)
odd2(7)

typealias anyCheck  =  (Int) -> Bool
extension Int {
    func checkOperation(_ operation: anyCheck) -> Bool {
        return operation(self)
    }
    
}
func oddCheck(_ value: Int) -> Bool {
    if value != 0 && value % 2 == 1{
        return true
    } else { return false }
}

//方法2-1
1.checkOperation(oddCheck(_:))
99.checkOperation(oddCheck(_:))
//方法2-2
1.checkOperation { if $0 != 0 && $0 % 2 == 1 {return true} else {return false}}

/* 修改前
1.checkOperation( {(value: Int) -> Bool in
    if value != 0 && value % 2 == 1 {
        return true
    } else {
        return false
    }
})
修改後
1.checkOperation {
    if $0 != 0 && $0 % 2 == 1 {
        return true
    } else {
        return false
    }
}
*/

//// 還有負整數問題

