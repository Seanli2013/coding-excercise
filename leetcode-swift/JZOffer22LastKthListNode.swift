//
//  JZOffer22LastKthListNodes.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/14/21.
//
//  https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/
//

import Foundation

class JZOffer22LastKthListNodeSolution {
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head == nil { return nil }
        var left = head, right = head, step = 0
        
        while right != nil {
            if step >= k {
                left = left!.next
            }
            right = right!.next
            step += 1
        }
        return left
    }
}

