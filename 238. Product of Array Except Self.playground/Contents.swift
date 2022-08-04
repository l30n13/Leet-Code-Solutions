import UIKit

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var result: [Int] = Array(repeating: 1, count: nums.count)

    var prefix = 1
    for i in 0 ..< nums.count {
        result[i] = prefix
        prefix *= nums[i]
    }

    var postfix = 1
    for i in (0 ..< nums.count).reversed() {
        result[i] *= postfix
        postfix *= nums[i]
    }

    return result
}

productExceptSelf([1,2,3,4])
productExceptSelf([-1,1,0,-3,3])
productExceptSelf([0,0])
