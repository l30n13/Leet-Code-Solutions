import UIKit

func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
    if piles.count == 0 {
        return 0
    }

    var left = 1, right = piles.max()!
    var result = right

    while left <= right {
        let mid = (left + right) / 2


        var hourCount = 0
        for pile in piles {
            hourCount += pile/mid
            if pile % mid != 0 {
                hourCount += 1
            }
        }

        if hourCount <= h {
            result = min(mid, result)
            right = mid - 1
        } else {
            left = mid + 1
        }
    }

    return result
}

minEatingSpeed([3,6,7,11], 8)
minEatingSpeed([30,11,23,4,20], 5)
minEatingSpeed([30,11,23,4,20], 6)
minEatingSpeed([312884470], 312884469)
