import UIKit

func numIdenticalPairs(_ nums: [Int]) -> Int {
    var result = 0
    
    var count: [Int : Int] = [:]
    
    nums.forEach { count[$0, default: 0] += 1 }
    
    count.forEach { k,v in
        if v > 1 {
            let n = (v * (v - 1)) / 2
            result += n
        }
    }
    
    return result
}


numIdenticalPairs([1,2,3,1,1,3])
