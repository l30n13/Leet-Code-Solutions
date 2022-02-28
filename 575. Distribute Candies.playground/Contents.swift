import UIKit

func distributeCandies(_ candyType: [Int]) -> Int {
    var countTypes: Set<Int> = Set<Int>()
    candyType.forEach({ countTypes.insert($0) })
    
    let canEatCady = candyType.count / 2
    
    if canEatCady > countTypes.count {
        return countTypes.count
    } else if countTypes.count > canEatCady {
        return canEatCady
    } else if countTypes.count == canEatCady {
        return canEatCady
    } else {
        return 0
    }
}



distributeCandies([1,1,2,2,3,3])
distributeCandies([1,1,2,3])
distributeCandies([6,6,6,6])
