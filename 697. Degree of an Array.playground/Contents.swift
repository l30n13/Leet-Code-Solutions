import Foundation

func findShortestSubArray(_ nums: [Int]) -> Int {
    var counts: [Int : Int] = [:]
    var maxValue = -1, minDistance = Int.max
    
    nums.forEach { counts[$0, default: 0] += 1 }
    let allValues = Array(counts.values)
    maxValue = allValues.max()!
    
    let keys = counts.filter { $0.value == maxValue }.keys
    
    if keys.isEmpty {
        return 0
    }
    
    var ans = 0
    if keys.count != 1 {
        keys.forEach { i in
            let fIndex = nums.firstIndex(of: i)!
            let lIndex = nums.lastIndex(of: i)!
            ans = (lIndex - fIndex) + 1
            
            if ans < minDistance {
                minDistance = ans
            } else {
                ans = minDistance
            }
        }
    } else {
        let fIndex = nums.firstIndex(of: keys.first!)!
        let lIndex = nums.lastIndex(of: keys.first!)!
        ans = (lIndex - fIndex) + 1
    }
    return ans
}

findShortestSubArray([1,2,2,3,1])
findShortestSubArray([1,2,2,3,1,4,2])
findShortestSubArray([1,3,2,2,3,1])
