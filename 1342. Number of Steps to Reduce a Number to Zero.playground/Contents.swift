import UIKit

func numberOfSteps(_ num: Int) -> Int {
    var newNum = num
    var count = 0
    
    if num == 0 {
        return 0
    }
    
    if num == 1 {
        return 1
    }
    
    while newNum > 0 {
        if newNum % 2 == 0 {
            newNum /= 2
            count += 1
        } else {
            newNum -= 1
            count += 1
        }
    }
    
    return count
}

numberOfSteps(14)
numberOfSteps(8)
numberOfSteps(123)
