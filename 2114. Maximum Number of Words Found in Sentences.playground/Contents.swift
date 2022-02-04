import UIKit

func mostWordsFound(_ sentences: [String]) -> Int {
    var result = 0
    
    var maxCount = Int.min
    
    sentences.forEach { sentences in
        let wordCount = sentences.components(separatedBy: " ").count
        if wordCount > maxCount {
            maxCount = wordCount
            result = wordCount
        }
    }
    
    return result
}


mostWordsFound(["alice and bob love leetcode", "i think so too", "this is great thanks very much"])
