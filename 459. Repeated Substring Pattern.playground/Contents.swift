import UIKit

func repeatedSubstringPattern(_ s: String) -> Bool {
    let ss = (s + s).dropFirst().dropLast()
    return ss.contains(s)
}

repeatedSubstringPattern("abab")
repeatedSubstringPattern("aba")
repeatedSubstringPattern("abcabcabcabc")
repeatedSubstringPattern("ababba")
