import UIKit

func findDuplicates(_ nums: [Int]) -> [Int] {
    if nums.count == 0 {
        return []
    }
    
    var result: [Int] = []
    var countDigit: [Int : Int] = [:]
    nums.forEach { countDigit[$0, default: 0] += 1 }
    
    countDigit = countDigit.filter { $0.value > 1 }
    countDigit.forEach {
        result.append($0.key)
    }
    
    return result.sorted()
}


findDuplicates([4,3,2,7,8,2,3,1])
//findDuplicates([1,1,2])
//findDuplicates([])
