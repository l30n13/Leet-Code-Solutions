import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result: [Int : Int] = [:] //[Number : Index]

    for i in 0 ..< nums.count {
        let remaing = target - nums[i]

        if result.keys.contains(remaing) {
            return [result[remaing]!, i]
        }
        result[nums[i]] = i
    }

    return []
}

twoSum([3,2,4], 5)
twoSum([3,3], 6)
twoSum([-3,4,3,90], 0)
