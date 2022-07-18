import UIKit

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }

    var sHash: [Character : Int] = [:]
    var tHash: [Character : Int] = [:]

    s.forEach({
        sHash[$0, default: 0] += 1
    })

    t.forEach({
        tHash[$0, default: 0] += 1
    })

    for (k,v) in sHash {
        if tHash[k] != v {
            return false
        }
    }

    return true
}

isAnagram("anagram", "nagaram")
isAnagram("cat", "rat")
isAnagram("a", "ab")
