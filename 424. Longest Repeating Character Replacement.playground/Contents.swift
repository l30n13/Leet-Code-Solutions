import UIKit

func characterReplacement(_ s: String, _ k: Int) -> Int {
    var result = 0
    var count = [Character : Int]()

    let stringArray: [Character] = Array(s)
    var left = 0

    for right in 0 ..< stringArray.count {
        count[stringArray[right], default: 0] += 1

        let replaceCount = ((right - left) + 1) - count.values.max()!
        if replaceCount <= k {
            result = max(result, (right - left) + 1)
        } else {
            count[stringArray[left]]! -= 1
            left += 1
        }
    }

    return result
}

characterReplacement("ABAB", 2)
characterReplacement("AABABBA", 1)
characterReplacement("AAAA", 0)
characterReplacement("AAAB", 0)
