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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var curr = head, head = head
        var prev: ListNode? = nil

        while (curr != nil) {
            let next = curr?.next
            
            if (curr?.val == val) {
                if (curr === head) {
                    head = next
                } else {
                    prev?.next = next
                }
            } else {
                prev = curr
            }
            
            curr = next
        }
        
        return head
    }
}