import UIKit

func shipWithinDays(_ weights: [Int], _ days: Int) -> Int {
    if weights.count == 0 {
        return 0
    }

    var left = weights.max()!, right = weights.reduce(0, +)

    while left < right {
        let mid = (left + right) / 2

        var currentWeight = 0
        var totalDays = 1
        for weight in weights {
            currentWeight += weight
            if currentWeight > mid {
                totalDays += 1
                currentWeight = weight
            }
        }

        if totalDays <= days {
            right = mid
        } else {
            left = mid + 1
        }
    }

    return right
}

shipWithinDays([1,2,3,4,5,6,7,8,9,10], 5)
shipWithinDays([3,2,2,4,1,4], 3)
shipWithinDays([1,2,3,1,1], 4)
