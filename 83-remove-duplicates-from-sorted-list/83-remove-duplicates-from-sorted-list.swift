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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var curr = head
        var prev: ListNode? = nil
        
        var dict: [Int?:Int] = [:]
        while (curr != nil || curr?.next != nil) {
            let next = curr?.next
            
            if let val = dict[curr?.val] {
                dict[curr?.val] = val-1
                prev?.next = next
            } else {
                dict[curr?.val] = 1
                prev = curr
            }
            
            curr = next
        }
        
        return head
    }
}