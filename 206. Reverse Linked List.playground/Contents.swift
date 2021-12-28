import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val;self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) {self.val = val; self.next = next; }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        return reverseData(head, nil)
    }
    
    private func reverseData(_ head: ListNode?, _ newHead: ListNode?) -> ListNode? {
        if head == nil {
            return newHead
        }
        
        let next = head?.next
        head?.next = newHead
        return reverseData(next, head)
    }
}


let s = Solution()
s.reverseList(ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))))

