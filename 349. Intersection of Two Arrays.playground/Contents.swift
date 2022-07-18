import UIKit

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result: Set<Int> = Set<Int>()
    nums1.forEach({
        if nums2.contains($0) {
            result.update(with: $0)
        }
    })
    
    return Array(result)
}

intersection([1,2,2,1], [2,2])
intersection([4,9,5], [9,4,9,8,4])
