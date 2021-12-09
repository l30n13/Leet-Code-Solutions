import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    guard head != nil else { return nil }
    
    var head = head
    while head != nil, head!.val == val {
        head = head?.next
    }
    
    var prev = head
    var current = head?.next
    
    while let curr = current {
        if curr.val == val {
            prev?.next = curr.next
            current = curr.next
            continue
        }
        prev = curr
        current = curr.next
    }
    
    return head
}

removeElements(ListNode(1, ListNode(2, ListNode(6, ListNode(3, ListNode(4, ListNode(5, ListNode(6))))))), 6)
