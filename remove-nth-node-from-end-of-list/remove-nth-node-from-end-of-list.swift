/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var curr: ListNode? = head
        var prev: ListNode? = nil
        var count = 1
        
        while (curr != nil && curr?.next != nil) {
            curr = curr?.next
            count += 1
        }
        
        curr = head
        var removeN = count - n
        
        if (removeN == 0) {
            return curr?.next
        }
        for _ in 0..<removeN {
            prev = curr
            curr = curr?.next
        }

        prev?.next = curr?.next
        return head
    }
}