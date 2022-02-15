import UIKit

func areOccurrencesEqual(_ s: String) -> Bool {
    var countOccurrence = [String : Int]()

    s.forEach { countOccurrence[String($0), default: 0] += 1 }
    
    let first = countOccurrence.first
    
    for (_, value) in  countOccurrence {
        if first?.value != value {
            return false
        }
    }
    
    return true
}

areOccurrencesEqual("abacbc")
areOccurrencesEqual("aaabb")
