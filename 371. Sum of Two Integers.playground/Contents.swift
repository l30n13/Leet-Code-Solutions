import UIKit

func getSum(_ a: Int, _ b: Int) -> Int {
    var A = a, B = b
    
    while B != 0 {
        let carry = A & B
        
        A = A ^ B
        B = carry << 1
    }
    
    return A
}

getSum(1, 2)
getSum(2, 3)
getSum(20, 30)
