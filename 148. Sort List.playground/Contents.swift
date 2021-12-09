import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


func sortList(_ head: ListNode?) -> ListNode? {
    if head?.val == nil {
        return head
    }
    
    var list = [Int]()
    var newHead = head
    while newHead?.val != nil {
        list.append(newHead!.val)
        newHead = newHead?.next
    }
    list = list.sorted()
    
    var sortedHead = ListNode(list[0])
    for i in 1 ..< list.count {
        sortedHead.next = ListNode(list[i])
    }
    
    return sortedHead
}
