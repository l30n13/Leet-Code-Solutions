import UIKit

func runningSum(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    
    for i in 1 ..< nums.count {
        result.append((nums[0..<i]).reduce(0,+))
    }
    result.append((nums[0..<nums.count]).reduce(0,+))
    
    return result
}

runningSum([1,2,3,4])
runningSum([1,1,1,1,1])
runningSum([3,1,2,10,1])
