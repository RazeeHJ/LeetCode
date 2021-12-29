/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var curr = head
        
        var detect = hasCycle(curr)

        guard detect != nil else { return nil }
        
        while (detect !== curr) {
            curr = curr?.next
            detect = detect?.next
        }
        
        if (curr === detect) {
            return curr
        } else {
            return nil
        }
    }
    
    func hasCycle(_ node: ListNode?) -> ListNode? {
        var slow = node
        var fast = node

        while (fast != nil && fast?.next != nil) {
            slow = slow?.next
            fast = fast?.next?.next
            
             if (slow === fast) {
                return slow
            }
        }
        
        return nil
    }
}