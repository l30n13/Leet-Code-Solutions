import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    var maxProfit = 0
    var left = 0

    for right in 1 ..< prices.count {
        if prices[left] > prices[right] {
            left = right
        }
        maxProfit = max(prices[right] - prices[left], maxProfit)
    }

    return maxProfit
}

//func maxProfit(_ prices: [Int]) -> Int {
//    var minPrice = Int.max
//    var ans = 0
//
//    for price in prices {
//        minPrice = min(minPrice, price)
//        ans = max(ans, price - minPrice)
//    }
//
//    return ans
//}

maxProfit([7,1,5,3,6,4])
maxProfit([7,6,4,3,1])
