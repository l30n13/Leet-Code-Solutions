import UIKit

func getConcatenation(_ nums: [Int]) -> [Int] {
    var result = nums
    
    nums.forEach { i in
        result.append(i)
    }
    
    return result
}

getConcatenation([1,2,1])
