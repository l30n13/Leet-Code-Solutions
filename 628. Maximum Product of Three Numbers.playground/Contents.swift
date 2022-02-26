import UIKit

func maximumProduct(_ nums: [Int]) -> Int {
    let sortedProduct = nums.sorted(by: { $0 > $1 })
    
    let firstMultiply = sortedProduct[1] * sortedProduct[2] * sortedProduct[0]
    let lastMultiply = sortedProduct[sortedProduct.count - 2] * sortedProduct[sortedProduct.count - 1] * sortedProduct[0]
    
    return max(firstMultiply, lastMultiply)
}

maximumProduct([1,2,3])
maximumProduct([1,2,3,4])
maximumProduct([-1,-2,-3])
maximumProduct([-100,-98,-1,2,3,4])
maximumProduct([-1,-2,-3,-4])
