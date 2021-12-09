import UIKit

func buildArray(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    
    for i in 0 ..< nums.count {
        result.append(nums[nums[i]])
    }
    
    return result
}


buildArray([5,0,1,2,3,4])
