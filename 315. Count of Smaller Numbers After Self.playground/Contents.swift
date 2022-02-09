import UIKit


//MARK: Getting TLE, need to use binary search
func countSmaller(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    
    for i in 0 ..< nums.count {
        var count = 0
        for j in i + 1 ..< nums.count {
            if nums[j] < nums[i] {
                count += 1
            }
        }
        result.append(count)
    }
    
    return result
}

//MARK: Binary tree

func countSmaller1(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    
    let sortedNums = nums.sorted()
    print(sortedNums)
    
    for i in 0 ..< nums.count - 1 {
        let position = getPosition(in: sortedNums, for: nums[i])
        if position == sortedNums.count - 1 {
            result.append(sortedNums.count - position)
        } else {
            result.append(position)
        }
    }
    result.append(0)
    
    return result
}
func getPosition(in nums: [Int], for num: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = (left + right) / 2
        
        if num < nums[mid] {
            right = mid - 1
        } else if num > nums[mid] {
            left = mid + 1
        } else {
            return mid
        }
    }
    
    return 0
}


//countSmaller([5,2,6,1])
countSmaller1([0,1,2])
countSmaller1([5,2,6,1])
