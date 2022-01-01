import UIKit

func interpret(_ command: String) -> String {
    let commandChar = Array(command)
    var result = ""
    
    var i = 0
    while i < command.count {
        if commandChar[i] == "G" {
            result += "G"
        } else if commandChar[i] == "(" && commandChar[i+1] == ")" {
            result += "o"
            i += 1
        } else if commandChar[i] == "("  && commandChar[i+1] == "a" && commandChar[i+2] == "l" && commandChar[i+3] == ")" {
            result += "al"
            i += 3
        }
        
        i += 1
    }
    
    return result
}


interpret("G()(al)")
interpret("G()()()()(al)")
interpret("(al)G(al)()()G")
