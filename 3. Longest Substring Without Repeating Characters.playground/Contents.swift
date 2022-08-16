import UIKit

//func lengthOfLongestSubstring(_ s: String) -> Int {
//    if s.isEmpty {
//        return 0
//    }
//
//    var result = 1
//
//    var count: [Character : Bool] = [:]
//
//    let stringArray: [Character] = Array(s)
//
//    for i in 0 ..< stringArray.count {
//        count.removeAll()
//        for j in i ..< stringArray.count {
//            if count[stringArray[j]] == nil {
//                count[stringArray[j]] = true
//                result = max(result, count.count)
//            } else {
//                result = max(result, count.count)
//                break
//            }
//        }
//    }
//    return result
//}

func lengthOfLongestSubstring(_ s: String) -> Int {
    guard s.count > 1 else { return s.count }
    var highestCount = 0
    var currentSubstring: [Character] = []
    for char in s {
        if let index = currentSubstring.firstIndex(of: char) {
            currentSubstring.removeFirst(index+1)
        }
        currentSubstring.append(char)
        highestCount = max(highestCount, currentSubstring.count)
    }
    return highestCount
}

lengthOfLongestSubstring("abcabcbb")
lengthOfLongestSubstring("bbbbb")
lengthOfLongestSubstring("pwwkew")
lengthOfLongestSubstring("au")
