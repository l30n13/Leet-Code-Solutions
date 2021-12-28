import UIKit

func specialArray(_ nums: [Int]) -> Int {
    var size = nums.count
    
    while size > 0 {
        var count = 0
        
        for i in 0 ..< nums.count {
            if nums[i] >= size {
                count += 1
            }
        }
        if count == size {
            return size
        }
        
        size -= 1
    }
    
    return -1
}


specialArray([3,5])
specialArray([0,0])
specialArray([0,4,3,0,4])
specialArray([3,6,7,7,0])
