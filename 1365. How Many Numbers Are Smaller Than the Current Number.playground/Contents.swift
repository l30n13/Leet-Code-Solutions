import UIKit

//Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. That is, for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].

//Return the answer in an array.


//MARK: Brute force approch
func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    
    for i in 0 ..< nums.count {
        var count = 0
        for j in 0 ..< nums.count {
            if nums[j] < nums[i] {
                count += 1
            }
        }
        result.append(count)
    }
    
    return result
}



//MARK: Efficient approch
func smallerNumbersThanCurrent1(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    
    let sortedNums = nums.sorted()
    
    nums.forEach { num in
        if let index = sortedNums.firstIndex(of: num) {
            result.append(index)
        }
    }
    
    return result
}

smallerNumbersThanCurrent([8,1,2,2,3])

smallerNumbersThanCurrent1([8,1,2,2,3])
