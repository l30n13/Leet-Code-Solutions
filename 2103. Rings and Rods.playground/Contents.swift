import UIKit

func countPoints(_ rings: String) -> Int {
    var rods = [Int : Set<String>]()
    
    for i in 0 ..< 10 {
        rods[i] = []
    }
    
    let ringsArray = Array(rings)
    
    var i = 0
    while i < ringsArray.count {
        rods[Int(String(ringsArray[i + 1]))!]?.insert(String(ringsArray[i]))
        
        i += 2
    }
    
    return rods.filter { $0.value.count == 3 }.count
}


countPoints("B0B6G0R6R0R6G9")
