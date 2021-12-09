import UIKit

func nearestValidPoint(_ x: Int, _ y: Int, _ points: [[Int]]) -> Int {
    var resultPoint: [Int] = []
    var result: [Int : Int] = [:]
    
    points.forEach { i in
        if i[0] == x || i[1] == y {
            resultPoint.append(points.firstIndex(of: i) ?? -1)
        }
    }
    
    if resultPoint.isEmpty {
        return -1
    }
    
    resultPoint.forEach { i in
        result[i] = abs(points[i][0] - x) + abs(points[i][1] - y)
    }
    
    var a = Set<Int>()
    result.forEach { k,v in
        a.insert(v)
    }
    
    var newResult: [Int : Int] = [:]
    a.forEach { i in
        result.forEach { k,v in
            print(v)
            if i == v {
                newResult[k] = v
            }
        }
    }
    
    print(newResult)
    
    return resultPoint[0]
}


nearestValidPoint(3, 4, [[1,2],[3,1],[2,4],[2,3],[4,4]])
