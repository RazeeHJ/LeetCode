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
    func getDecimalValue(_ head: ListNode?) -> Int {
        var curr = head
        var str: String = ""
        
        while (curr != nil) {
            if let val = curr?.val {
                str += "\(val)"
            }
            curr = curr?.next
        }
        return Int(str, radix: 2) ?? 0
        //var temp = Int(str)!
        //var remainder = 0, decimal = 0, base = 1
        //while (temp > 0) {
          //  remainder = temp % 10
           // decimal = decimal + remainder*base
            //temp = temp/10
            //base = base*2
        //}
        
        //return decimal
    }
}