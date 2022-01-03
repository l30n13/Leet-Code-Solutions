import UIKit

func longestValidParentheses(_ s: String) -> Int {
    var count = 0
    var check: [Character] = []
    
    s.forEach { b in
        if b == "(" {
            check.append(b)
        } else if b == ")" && check.last == "(" {
            check.popLast()
            count += 2
        } else if b == ")" && check.last == ")" {
        }
    }
    
    return count
}

//congestValidParentheses("")
//longestValidParentheses("(()")
congestValidParentheses("()(()")
