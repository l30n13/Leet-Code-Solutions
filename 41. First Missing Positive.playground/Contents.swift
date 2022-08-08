import UIKit

//Using HASH MAP
func firstMissingPositive(_ nums: [Int]) -> Int {
    var hashCount: [Int : Int] = [:]
    nums.forEach { hashCount[$0, default: 0] += 1}

    var result = 1
    for num in nums where num > 0 {
        if hashCount[result] != nil {
            result += 1
        } else {
            return result
        }
    }
    return result
}

firstMissingPositive([1,2,0])
firstMissingPositive([3,4,-1,1])
firstMissingPositive([7,8,9,11,12])
firstMissingPositive([0,2,2,1,1])
firstMissingPositive([3,4,-1,1])
