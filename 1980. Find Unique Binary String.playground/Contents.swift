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
    
    result = pad(string: result, toSize: nums[0].count)
    
    return result
}

func pad(string : String, toSize: Int) -> String {
    var padded = string
    for _ in 0..<(toSize - string.count) {
        padded = "0" + padded
    }
    return padded
}

findDifferentBinaryString(["01","10"])
findDifferentBinaryString(["00","01"])
findDifferentBinaryString(["111","011","001"])
