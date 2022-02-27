import UIKit

let letters: [String : String] = [
    "a" : ".-",
    "b" : "-...",
    "c" : "-.-.",
    "d" : "-..",
    "e" : ".",
    "f" : "..-.",
    "g" : "--.",
    "h" : "....",
    "i" : "..",
    "j" : ".---",
    "k" : "-.-",
    "l" : ".-..",
    "m" : "--",
    "n" : "-.",
    "o" : "---",
    "p" : ".--.",
    "q" : "--.-",
    "r" : ".-.",
    "s" : "...",
    "t" : "-",
    "u" : "..-",
    "v" : "...-",
    "w" : ".--",
    "x" : "-..-",
    "y" : "-.--",
    "z" : "--.."
]

func uniqueMorseRepresentations(_ words: [String]) -> Int {
    if words.count == 1 {
        return 1
    }
    
    var morseArray: [String] = []
    
    words.forEach {
        var a = ""
        $0.forEach {
            if let s = letters[String($0)] {
                a.append(s)
            }
        }
        morseArray.append(a)
    }
    
    var countDifference: [String : Int] = [:]
    
    morseArray.forEach {
        countDifference[$0, default: 0] += 1
    }
    
    return countDifference.count
}

uniqueMorseRepresentations(["gin","zen","gig","msg"])
