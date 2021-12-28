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
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    if headA == nil || headB == nil {
        return nil
    }
    
    var currA: ListNode? = headA
    var currB: ListNode? = headB
    
    while currA !== currB {
        currA = currA == nil ? headB : currA?.next
        currB = currB == nil ? headA : currB?.next
    }
    
    return currA
    }
}