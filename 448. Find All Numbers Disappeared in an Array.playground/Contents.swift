import UIKit

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    if nums.count == 0 {
        return []
    }
    var result: [Int] = []
    let newNums = nums.sorted()
    
    for i in 1 ... newNums.count {
        if !isNumberExist(in: newNums, for: i) {
            result.append(i)
        }
    }
//    for i in 1 ... newNums.count {
//        if !isNumberExists(in: newNums, for: i, l: 0, r: newNums.count - 1) {
//            result.append(i)
//        }
//    }
    
    //MARK: This is not excepted for TLE
    //    for i in 1 ... newNums.count {
    //        if newNums.filter({ $0 == i }).count == 0 {
    //            result.append(i)
    //            newNums.removeAll { $0 == i }
    //        }
    //    }
    
    return result
}

findDisappearedNumbers([4,3,2,7,8,2,3,1])
findDisappearedNumbers([1,1])


func isNumberExist(in numbers: [Int], for value: Int) -> Bool {
    var left = 0
    var right = numbers.count - 1
    
    while left <= right {
        let middle = Int(floor(Double(left + right) / 2.0))
        if numbers[middle] < value {
            left = middle + 1
        } else if numbers[middle] > value {
            right = middle - 1
        } else {
            return true
        }
    }
    return false
}

func isNumberExists(in numbers: [Int], for value: Int, l left: Int, r right: Int) -> Bool {
    if left > right {
        return false
    }
    
    let middle = Int(floor(Double(left + right) / 2.0))
    if numbers[middle] < value {
        return isNumberExists(in: numbers, for: value, l: middle + 1, r: right)
    } else if numbers[middle] > value {
        return isNumberExists(in: numbers, for: value, l: left, r: middle - 1)
    } else {
        return true
    }
}
