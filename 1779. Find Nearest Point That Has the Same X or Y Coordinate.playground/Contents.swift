import UIKit

func nearestValidPoint(_ x: Int, _ y: Int, _ points: [[Int]]) -> Int {
    var validPointIndex: [Int] = []
    var result: [Int : Int] = [:]
    
    for i in 0 ..< points.count {
        if points[i][0] == x && points[i][1] == y {
            return i
        }
        
        if points[i][0] == x || points[i][1] == y {
            validPointIndex.append(i)
        }
    }
    
    if validPointIndex.isEmpty {
        return -1
    }
    
    validPointIndex.forEach { i in
        result[i] = abs(points[i][0] - x) + abs(points[i][1] - y)
    }
    var minDistance = Int.max
    result.forEach {
        if minDistance > $0.value {
            minDistance = $0.value
        }
    }
    
    result = result.filter { $0.value == minDistance }
    
    var minIndex = Int.max
    result.forEach {
        if minIndex > $0.key {
            minIndex = $0.key
        }
    }
    
    return minIndex
}


nearestValidPoint(3, 4, [[1,2],[3,1],[2,4],[2,3],[4,4]])
