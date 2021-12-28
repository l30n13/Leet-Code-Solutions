import UIKit

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    if nums1.isEmpty && nums2.isEmpty {
        return 0.0
    }
    
    var newNumbers = nums1
    newNumbers.append(contentsOf: nums2)
    newNumbers = newNumbers.sorted()
    
    if newNumbers.count == 1 {
        return Double(newNumbers[0])
    }
    
    let mid = newNumbers.count / 2
    
    if newNumbers.count % 2 == 0 {
        return Double(Double(newNumbers[mid-1] + newNumbers[mid])/2)
    } else {
        return Double(newNumbers[mid])
    }
}

findMedianSortedArrays([1,3], [2])
findMedianSortedArrays([1,2], [3,4])
findMedianSortedArrays([], [])
findMedianSortedArrays([], [2,3])
