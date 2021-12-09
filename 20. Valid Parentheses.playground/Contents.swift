import Foundation

func isValid(_ s: String) -> Bool {
    var bracesList: [Character] =  []
    for braces in s  {
        if braces == "(" || braces == "{" || braces == "[" {
            bracesList.append(braces)
        } else if braces == ")" {
            if bracesList.last == "(" {
                bracesList.popLast()
            } else {
                return false
            }
        } else if braces == "}" {
            if bracesList.last == "{" {
                bracesList.popLast()
            } else {
                return false
            }
        } else if braces == "]" {
            if bracesList.last == "[" {
                bracesList.popLast()
            } else {
                return false
            }
        }
    }
    
    if bracesList.count == 0 {
        return true
    } else {
        return false
    }
}

isValid("({})")
