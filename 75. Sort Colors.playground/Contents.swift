import UIKit

func sortColors(_ nums: inout [Int]) {
    nums = nums.sorted()
}

var a = [2,0,2,1,1,0]
sortColors(&a)
