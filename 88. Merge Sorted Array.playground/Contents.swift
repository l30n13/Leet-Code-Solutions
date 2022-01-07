import UIKit

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    var newNum = [Int]()
    
    let n1 = Array(nums1.prefix(m))
    let n2 = Array(nums2.prefix(n))
    
    newNum = n1
    newNum.append(contentsOf: n2)
    
    nums1 = newNum.sorted()
    
    print(newNum.sorted())
}

var num1 = [1,2,3,0,0,0]
merge(&num1, 3, [2,5,6], 3)
