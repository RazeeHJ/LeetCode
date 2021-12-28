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

// 1. Find mid of the linked list
// 2. Reverse one half of the linked list
// 3. Compare the elements in both lists starting from head
//      1. if nodes are unequal, return false
//      2. otherwise return true
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var slow: ListNode? = head
        var fast: ListNode? = head
                
        if (head == nil) {return false}
        
        while (fast?.next != nil && fast?.next?.next != nil) {
            fast = fast?.next?.next
            slow = slow?.next
        }
        
        fast = head
        slow = reversed(slow)
        
        while (slow?.next != nil) {
            if (slow?.val != fast?.val) { return false }
            
            slow = slow?.next
            fast = fast?.next
        }
        
        return true
    }
    
    func reversed(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var curr: ListNode? = head
        
        while (curr != nil) {
            var next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }
        
        return prev
    }
}