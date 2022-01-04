import UIKit

func findDifferentBinaryString(_ nums: [String]) -> String {
    var result = ""
    
    var numberArray: [Int] = []
    nums.forEach {
        numberArray.append(Int($0, radix: 2)!)
    }
    numberArray = numberArray.sorted()
    for i in 0 ... numberArray.count {
        if !numberArray.contains(i) {
            result = String(i, radix: 2)
        }
    }
    print(numberArray)
    
    return result
}


findDifferentBinaryString(["01","10"])
findDifferentBinaryString(["00","01"])
findDifferentBinaryString(["111","011","001"])
