import UIKit

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var count: [Int : Int] = [:]

    nums.forEach { count[$0, default: 0] += 1 }

    let result = count.sorted { $0.value > $1.value }.map { $0.key }[..<k]

    return Array(result)
}

topKFrequent([1,1,1,2,2,3], 2)
