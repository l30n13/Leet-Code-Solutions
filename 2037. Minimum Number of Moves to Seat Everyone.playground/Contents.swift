import UIKit

func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
    var result = 0
    
    let s = seats.sorted()
    let st = students.sorted()
    
    for i in 0 ..< seats.count {
        result += abs(s[i] - st[i])
    }
    
    return result
}


minMovesToSeat([3,1,5], [2,7,4])
minMovesToSeat([4,1,5,9], [1,3,2,6])
minMovesToSeat([2,2,6,6], [1,3,2,6])
