import UIKit

func reorderLogFiles(_ logs: [String]) -> [String] {
    var sortedLogs = logs.sorted()
    var digitLogs: [String] = []
    
    sortedLogs.forEach { log in
        if Int(log.components(separatedBy: " ")[1]) != nil {
            digitLogs.append(log)
            sortedLogs.remove(at: sortedLogs.firstIndex(of: log)!)
        }
    }
    sortedLogs = sortedLogs.sorted { $0.components(separatedBy: " ").count < $1.components(separatedBy: " ").count }
    sortedLogs = sortedLogs.sorted {
        ($0.components(separatedBy: " ").count == $1.components(separatedBy: " ").count) &&
        String($0.components(separatedBy: " ")[0].last) < String($1.components(separatedBy: " ")[0].last)
    }
    
    sortedLogs.append(contentsOf: digitLogs)
    
    print(sortedLogs)
    return sortedLogs
}

reorderLogFiles(["dig1 8 1 5 1","let1 art can","dig2 3 6","let2 own kit dig","let3 art zero"])

reorderLogFiles(["a1 9 2 3 1","g1 act car","zo4 4 7","ab1 off key dog","a8 act zoo"])

reorderLogFiles(["dig1 8 1 5 1","let1 art can","dig2 3 6","let2 own kit dig","let3 art zero"])
