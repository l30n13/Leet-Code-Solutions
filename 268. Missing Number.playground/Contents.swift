import UIKit

func missingNumber(_ nums: [Int]) -> Int {
    var result = 0
    
    for i in 0 ... nums.count {
        if !nums.contains(i) {
            result = i
        }
    }
    
    return result
}

missingNumber([3,0,1])
missingNumber([0,1])
missingNumber([9,6,4,2,3,5,7,0,1])
