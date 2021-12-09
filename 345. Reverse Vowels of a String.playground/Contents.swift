import UIKit

func reverseVowels(_ s: String) -> String {
    let vowels = ["a","e","i","o","u", "A", "E", "I", "O", "U"]
    var newString = Array(s)
    var indexs: [Int] = []
    
    var vChars: [Character] = []
    for i in 0 ..< newString.count {
        if vowels.contains(String(newString[i])) {
            vChars.append(newString[i])
            indexs.append(i)
        }
    }
    
    vChars = vChars.reversed()
    var count = 0
    for i in indexs {
        newString[i] = vChars[count]
        count += 1
    }
    
    return String(newString)
}


reverseVowels("aA")
