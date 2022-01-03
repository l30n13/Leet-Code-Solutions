import UIKit

func singleNumber(_ nums: [Int]) -> Int {
    var result = 0
    var count: [Int : Int] = [:]
    
    nums.forEach { count[$0, default: 0] += 1 }
    
    result = count.filter { $0.value == 1 }.first!.key
    
    return result
}

singleNumber([2,2,1])
singleNumber([4,1,2,1,2])
singleNumber([1])
