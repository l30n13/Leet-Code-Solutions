import UIKit

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var result: Int?
    
    result = nums.firstIndex(of: target) ?? nil
    
    if result == nil {
        for j in 0 ..< nums.count {
            if target < nums[j] && result == nil {
                result = j
                break
            }
        }
    }
    
    if result == nil {
        result = nums.count
    }
    
    return result ?? 0
}

searchInsert([1,3,5,6], 5)
searchInsert([1,3,5,6], 2)
searchInsert([1,3,5,6], 7)
searchInsert([1,3,5,6], 0)
