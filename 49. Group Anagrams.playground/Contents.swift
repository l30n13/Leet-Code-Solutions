import UIKit

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var count: [String : [String]] = [:]
    
    strs.forEach({
        let sorted = String($0.sorted())
        count[sorted, default: []].append($0)
//        if count[sorted] == nil {
//            count[sorted] = [$0]
//        } else {
//            count[sorted]?.append($0)
//        }
    })
    
    return Array(count.values)
}

groupAnagrams(["eat","tea","tan","ate","nat","bat"])
