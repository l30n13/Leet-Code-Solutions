import UIKit

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.count == 0 {
        return 0
    }
    if haystack.count == 0 {
        return -1
    }
    if needle.count > haystack.count {
        return -1
    }
    
    let haystackChar = Array(haystack)
    let needleChar = Array(needle)
    
    for i in 0 ..< haystackChar.count - needleChar.count + 1 {
        let char = haystackChar[i]
        var isMatch = false
        if char == needleChar[0] {
            isMatch = true
            for j in 1 ..< needleChar.count {
                if haystackChar[j + i] != needleChar[j] {
                    isMatch = false
                }
            }
        }
        
        if isMatch {
            return i
        }
    }
    
    return -1
}

strStr("hello", "ll")

strStr("aaaaa", "bba")

strStr("aaa", "aaa")

strStr("a", "")

strStr("", "a")

strStr("a", "a")

strStr("mississippi", "issip")
