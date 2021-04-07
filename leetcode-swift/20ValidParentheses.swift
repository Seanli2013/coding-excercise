//
//  20ValidParentheses.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/7/21.
//
//  https://leetcode-cn.com/problems/valid-parentheses/
//
import Foundation

//  TC: O(n) SC: O(1)
//  Using replacingOccurrences probably increases time complexity
class ValidParenthesesSolution1 {
    func isValid(_ s: String) -> Bool {
        var s = s
        let iLength =  s.count / 2
        for _ in 0...iLength {
            s = s.replacingOccurrences(of:"()", with:"")
            s = s.replacingOccurrences(of:"[]", with:"")
            s = s.replacingOccurrences(of:"{}", with:"")

            if s.count == 0 {return true}
        }

        return false
    }
}
