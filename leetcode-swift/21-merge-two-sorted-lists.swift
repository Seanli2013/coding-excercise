/**
 * https://leetcode-cn.com/problems/merge-two-sorted-lists/
 *
 *
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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if nil == l1 && nil == l2 {return nil}

        var l = ListNode(0)
        let head = l
        var l1 = l1
        var l2 = l2

        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                l.next = l1
                l1 = l1!.next
            }
            else {
                l.next = l2
                l2 = l2!.next
            }
            l = l.next!
            // print(l.val)
        }

        l.next = l1 ?? l2

        return head.next
    }
}
