import UIKit

func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
    var countDict: [String : Int] = [:]
    
    s1.components(separatedBy: " ").forEach({
        countDict[$0, default: 0] += 1
    })
    s2.components(separatedBy: " ").forEach({
        countDict[$0, default: 0] += 1
    })
    
    let result = countDict.filter({ $0.value == 1 }).keys
    
    return Array(result)
}

uncommonFromSentences("this apple is sweet", "this apple is sour")
uncommonFromSentences("apple apple", "banana")
