import UIKit

func climbStairs(_ n: Int) -> Int {
    var a = 0
    var b = 1
    var c = 1
    
    for _ in 0 ..< n {
        c = a+b
        a = b
        b = c
    }
    
    return c
}


climbStairs(45)
