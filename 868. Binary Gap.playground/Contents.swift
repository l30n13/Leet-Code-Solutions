import Foundation

func binaryGap(_ n: Int) -> Int {
    let binary: [Character] = Array(String(n, radix: 2))
    var indexs: [Int] = []
    var maxGap = 0
    
    for i in 0 ..< binary.count {
        if binary[i] == "1" {
            indexs.append(i)
        }
    }
    
    for i in 0 ..< indexs.count - 1 {
        let gap = abs(indexs[i] - indexs[i + 1])
        if gap > maxGap {
            maxGap = gap
        }
    }
    
    if maxGap == 0 {
        return 0
    } else {
        return maxGap
    }
}

binaryGap(1041)
