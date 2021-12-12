import UIKit

func minimumDifference(_ nums: [Int], _ k: Int) -> Int {
    if nums.count <= 1 {
        return 0
    }
    
    var min = Int.max
    
    let n = nums.sorted()
    
    var j = 0
    for i in k-1 ..< n.count {
        print(abs(n[i] - n[j]), " ")
        if abs(n[i] - n[j]) < min {
            min = abs(n[i] - n[j])
        }
        j += 1
    }
    
    return min
}


minimumDifference([90], 1)
minimumDifference([9,4,1,7], 2)
minimumDifference([87063,61094,44530,21297,95857,93551,9918], 6)
