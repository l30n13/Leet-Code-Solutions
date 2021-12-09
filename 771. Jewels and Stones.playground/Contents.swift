import UIKit

func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    var result = 0
    
    let j = Array(jewels)
    let s = Array(stones)
    
    s.forEach {
        if j.contains($0) {
            result += 1
        }
    }
    
    return result
}

numJewelsInStones("aA", "aAAbbbb")
numJewelsInStones("z", "ZZ")
