//
//  9PalindromeNumber.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/7/21.
//
//  https://leetcode.com/problems/palindrome-number/
//

import Foundation

//  TC: O(n), SC: O(1)
class PalindromeNumberSolution1 {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {return false}
        let o = x
        var t = 0, y = 0, x = x
        
        repeat {
            t = x % 10
            x = x / 10
            y = y * 10 + t
        } while x > 0

        return y == o
    }
}
