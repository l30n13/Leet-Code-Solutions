import UIKit

func maxPower(_ s: String) -> Int {
    if s.count <= 1 {
        return 1
    }
    
    var maxNumb = 0
    var temp = 0
    let sChar = Array(s)
    
    for i in 0 ..< sChar.count {
        temp = 0
        for j in i ..< sChar.count {
            if sChar[i] == sChar[j] {
                temp += 1
            } else {
                break
            }
        }
        maxNumb = max(maxNumb, temp)
    }
    return maxNumb
}

maxPower("leetcode")
maxPower("abbcccddddeeeeedcba")
maxPower("triplepillooooow")
maxPower("j")
maxPower("cc")
