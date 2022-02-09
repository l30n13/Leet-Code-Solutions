import UIKit

func countValidWords(_ sentence: String) -> Int {
    var countValidWord = 0
    
    if sentence.count == 1 {
        if sentence.first! >= "a" && sentence.first! <= "z" {
            return 1
        }
    }
    
    let words: [String] = sentence.components(separatedBy: " ")
    
    words.forEach { word in
        if (word.rangeOfCharacter(from: CharacterSet.decimalDigits) == nil) && word != "" {
            if word.count == 1 {
                if word == "!" || word == "." || word == "," {
                    countValidWord += 1
                }
            } else if word.contains("-") {
                let subString = word.components(separatedBy: "-")
                if subString.count == 2 {
                    if isValid(subString[0]) && isValid(subString[1]) {
                        countValidWord += 1
                    }
                }
            } else if word.contains("!") {
                if word.last == "!" {
                    countValidWord += 1
                }
            } else if word.rangeOfCharacter(from: CharacterSet.lowercaseLetters) != nil {
                countValidWord += 1
            } else {
                countValidWord += 1
            }
        }
    }
    return countValidWord
}

func isValid(_ sentence: String) -> Bool {
    if sentence.contains("!") || sentence.contains(".") || sentence.contains(",") {
        if sentence.last == "!" || sentence.last == "." || sentence.last == "," {
            return true
        } else {
            return false
        }
    } else {
        return true
    }
}

//countValidWords("cat and  dog")
//countValidWords("!this  1-s b8d!")
//countValidWords("alice and  bob are playing stone-game10")
//countValidWords("he bought 2 pencils, 3 erasers, and 1  pencil-sharpener.")
//countValidWords("-")
//countValidWords("a")
//countValidWords("!")
//countValidWords("a-!b")
countValidWords("a-.b")
countValidWords(",aab")
