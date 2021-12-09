import UIKit

func moveZeroes(_ nums: inout [Int]) {
    var a = nums.filter { $0 == 0}
    var b = nums.filter { $0 != 0}
    
    if !a.isEmpty {
        nums = b
        nums.append(contentsOf: a)
    }
}

var a = [0,1,0,3,12]
moveZeroes(&a)
