import UIKit

func diagonalSum(_ mat: [[Int]]) -> Int {
    if mat.count == 1 {
        return mat[0][0]
    }
    
    var values = [Int]()
    
    var col = 0
    for r in 0 ..< mat.count {
        values.append(mat[r][col])
        col += 1
    }
    
    col = mat[0].count - 1
    
    for r in 0 ..< mat.count {
        if mat.count % 2 != 1 {
            values.append(mat[r][col])
        } else if (r != mat.count / 2) && (col != mat.count / 2) {
            values.append(mat[r][col])
        }
        
        col -= 1
    }
    
    return values.reduce(0, +)
    
}

diagonalSum([[1,2,3],
             [4,5,6],
             [7,8,9]])

//diagonalSum([[1,1,1,1],
//             [1,1,1,1],
//             [1,1,1,1],
//             [1,1,1,1]])
//
//diagonalSum([[5]])
