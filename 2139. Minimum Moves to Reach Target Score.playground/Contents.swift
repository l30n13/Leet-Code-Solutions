import UIKit

func minMoves(_ target: Int, _ maxDoubles: Int) -> Int {
    var count = 0
    
    if target == 1 {
        return count
    }
    
    var target1 = target
    var maxDoubles1 = maxDoubles
    
    if maxDoubles == 0 {
        return target - 1
    }
    
    while target1 > 1 {
        if target1 % 2 == 0 && maxDoubles1 > 0 {
            target1 = target1 / 2
            maxDoubles1 -= 1
            count += 1
        } else {
            target1 -= 1
            count += 1
        }
    }
    
    return count
}


minMoves(5, 0)
minMoves(19, 2)
minMoves(10, 4)
