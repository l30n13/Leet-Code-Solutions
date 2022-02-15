import UIKit

func dayOfYear(_ date: String) -> Int {
    let seperatedDate = date.components(separatedBy: "-")
    let year = Int(seperatedDate[0])!
    let month = Int(seperatedDate[1])!
    let day = Int(seperatedDate[2])!
    
    var isLeapYear = false
    if year % 4 == 0 && year % 100 == 0 && year % 400 == 0 {
        isLeapYear = true
    } else if year % 4 == 0 && year % 100 != 0 {
        isLeapYear = true
    }
    
    let numberOfMonths: [Int : Int] = [
        1 : 31,
        2 : isLeapYear ? 29 : 28,
        3 : 31,
        4 : 30,
        5 : 31,
        6 : 30,
        7 : 31,
        8 : 31,
        9 : 30,
        10: 31,
        11: 30,
        12: 31
    ]
    
    if month == 1  {
        return day
    } else {
        var totalDays = 0
        
        for i in 1 ..< month {
            totalDays += numberOfMonths[i]!
        }
        
        return totalDays + day
    }
}

dayOfYear("2019-01-09")
dayOfYear("2019-02-10")
