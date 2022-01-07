import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var l1 = list1
    var l2 = list2
    
    let result = ListNode()
    var temp = result
    
    while l1 != nil && l2 != nil {
        let v1 = l1!.val
        let v2 = l2!.val
        
        if v1 < v2 {
            temp.next = l1
            l1 = l1?.next
        } else {
            temp.next = l2
            l2 = l2?.next
        }
        temp = temp.next!
    }
    temp.next = l1 ?? l2
 
    return result.next
}

let one = ListNode(1, ListNode(2, ListNode(4)))
let two = ListNode(1, ListNode(3, ListNode(4)))

mergeTwoLists(one, two)
