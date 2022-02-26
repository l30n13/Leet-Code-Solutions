import UIKit
import Foundation

func checkIfPangram(_ sentence: String) -> Bool {
    if sentence.count < 26 {
        return false
    }
    
    let sentenceArray = Array(sentence)
    let letters: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    var count = 0
    letters.forEach {
        if sentenceArray.contains($0) {
            count += 1
        }
    }
    
    if count == 26 {
        return true
    } else {
        return false
    }
}

checkIfPangram("thequickbrownfoxjumpsoverthelazydog")
checkIfPangram("leetcode")
checkIfPangram("uwqohxamknblecdtzpisgvyfjr")
