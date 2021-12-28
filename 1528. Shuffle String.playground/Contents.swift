import UIKit

func restoreString(_ s: String, _ indices: [Int]) -> String {
    var result = ""
    
    let chars = Array(s)
    var dic: [Int : String] = [:]
    
    for i in 0 ..< chars.count {
        dic[indices[i]] = String(chars[i])
    }
    let sortDic = dic.sorted { $0.key < $1.key }
    sortDic.forEach { k, v in
        result += v
    }
    
    return result
}


restoreString("codeleet", [4,5,6,7,0,2,1,3])
