//
//  206-reverse-linked-list.swift
//  
//
//  Created by XiangLI on 4/6/21.
//

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 *
 *
 *
 * https://leetcode-cn.com/problems/reverse-linked-list/
 * Time Complexity O(n), Space Complexity O(1)
 */
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {return nil}
        var l1 = head
        var dummy = ListNode(l1!.val)
        l1 = l1!.next
        var lTmp = l1
        while l1 != nil {
            lTmp = l1!.next
            l1!.next = dummy
            dummy = l1!
            l1 = lTmp
        }
        return dummy
    }
}
