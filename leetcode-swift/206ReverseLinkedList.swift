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
class ReverseLinkedListSolution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {return nil}

        var prev = head, cur = head!.next, tmp = head
        prev!.next = nil
        while cur != nil {
            tmp = cur!.next
            cur!.next = prev
            prev = cur
            cur = tmp
        }
        return prev
    }
}

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
