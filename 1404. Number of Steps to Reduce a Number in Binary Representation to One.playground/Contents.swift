import UIKit

func numSteps(_ s: String) -> Int {
    var result = 0
    
    let sChar = Array(s)
    var carry = 0
    var length = sChar.count - 1
    while length > 0 {
        if (carry == 0 && sChar[length] == "1")  || (carry == 1 && sChar[length] == "0") {
            result += 2
            carry = 1
        } else if carry == 0 && sChar[length] == "0" {
            result += 1
        } else {
            result += 1
            carry = 1
        }
        
        length -= 1
    }
    
    if carry > 0 {
        result += 1
    }
    
    return result
}

numSteps("1101")
numSteps("10")
numSteps("1")
numSteps("101001011001000101111011110101011")
numSteps("1111110011101010110011100100101110010100101110111010111110110010")
numSteps("100100001010010101101000111100100111101111000111111010010001100001000100011001")
