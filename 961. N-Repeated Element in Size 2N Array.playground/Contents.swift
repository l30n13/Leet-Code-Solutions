import UIKit

func repeatedNTimes1(_ nums: [Int]) -> Int {
    var countNums: [Int : Int] = [:]
    nums.forEach { countNums[$0, default: 0] += 1 }
    
    for (k,v) in countNums {
        if v * 2 == nums.count {
            return k
        }
    }
    return 0
}

func repeatedNTimes(_ nums: [Int]) -> Int {
    var checkNums: [Int : Bool] = [:]
    
    for i in 0 ..< nums.count {
        if checkNums[nums[i]] != nil {
            return nums[i]
        } else {
            checkNums[nums[i]] = true
        }
    }
    return nums[0]
}

repeatedNTimes([1,2,3,3])
repeatedNTimes([2,1,2,5,3,2])
repeatedNTimes([5,1,5,2,5,3,5,4])
