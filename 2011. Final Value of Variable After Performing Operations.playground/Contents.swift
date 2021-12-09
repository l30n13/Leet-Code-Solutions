import UIKit

func finalValueAfterOperations(_ operations: [String]) -> Int {
    var result = 0
    
    operations.forEach { i in
        if i == "++X" || i == "X++" {
            result += 1
        } else {
            result -= 1
        }
    }
    
    return result
}

finalValueAfterOperations(["--X","X++","X++"])
finalValueAfterOperations(["++X","++X","X++"])
finalValueAfterOperations(["X++","++X","--X","X--"])
