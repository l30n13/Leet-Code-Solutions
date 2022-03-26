import UIKit

func countWords(_ words1: [String], _ words2: [String]) -> Int {
    var countWords1: [String : Int] = [:]
    var countWords2: [String : Int] = [:]
    
    words1.forEach({
        countWords1[$0, default: 0] += 1
    })
    countWords1 = countWords1.filter({ $0.value == 1 })
    words2.forEach({
        countWords2[$0, default: 0] += 1
    })
    countWords2 = countWords2.filter({ $0.value == 1 })
    
    var result = 0
    countWords1.forEach({
        if countWords2.keys.contains($0.key) {
            result += 1
        }
    })
    
    return result
}

countWords(["leetcode","is","amazing","as","is"], ["amazing","leetcode","is"])
countWords(["b","bb","bbb"], ["a","aa","aaa"])
countWords(["a","ab"], ["a","a","a","ab"])
