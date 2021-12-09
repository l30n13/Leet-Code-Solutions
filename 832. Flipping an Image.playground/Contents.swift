import UIKit

func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
    var newImage: [[Int]] = []
    for i in 0 ..< image.count {
        newImage.append(image[i].reversed())
    }
    for i in 0 ..< newImage.count {
        inverseData(&newImage[i])
    }
    
    return image
}

func inverseData(_ inverse: inout [Int]) {
    for i in 0 ..< inverse.count {
        if inverse[i] == 0 {
            inverse[i] = 1
        } else {
            inverse[i] = 0
        }
    }
}

flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]])
