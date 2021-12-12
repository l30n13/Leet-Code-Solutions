import UIKit

func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    var result: [Int] = []
 
    for i in 0 ..< n {
        result.append(nums[i])
        result.append(nums[n+i])
    }
    
    return result
}


shuffle([2,5,1,3,4,7], 3)
shuffle([1,2,3,4,4,3,2,1], 4)
