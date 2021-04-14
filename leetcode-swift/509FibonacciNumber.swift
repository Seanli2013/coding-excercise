//
//  509FibonacciNumber.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/12/21.
//
//  https://leetcode.com/problems/fibonacci-number/
//

import Foundation

// TC: O(n), SC:O(1)
class FibonacciNumberSolution2 {
    func fib(_ n: Int) -> Int {
        if 0 == n { return 0 }
        if 1 == n { return 1 }

        // n >= 2
        var nMinus1 = 1, nMinus2 = 0, retV = 1
        for _ in 2...n {
            retV = nMinus1 + nMinus2
            nMinus2 = nMinus1
            nMinus1 = retV
        }
        return retV
    }
}

// TC: O(2^n)
class FibonacciNumberSolution1 {
    func fib(_ n: Int) -> Int {
        // 递归最简单，但复杂度高
        return fib(n - 1) + fib (n - 2)
    }
}

