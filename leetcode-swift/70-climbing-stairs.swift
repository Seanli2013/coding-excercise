//
//  70-climbing-stairs.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/6/21.
//
//  https://leetcode-cn.com/problems/climbing-stairs/

// Time Complexity: O(n), Space Complexity:O(1)
class ClimbingStairsSolution2 {
    func climbStairs(_ n: Int) -> Int {
        if n <= 3 {return n}
        var fnMinus1 = 2
        var fn = 3
        var tmpN = 0
        for _ in 4...n {
            tmpN = fn
            fn = fn + fnMinus1
            fnMinus1 = tmpN
        }
        return fn
    }
}





// Time Complexity: O(2^n), Space Complexity:O(1)
class ClimbingStairsSolution1 {
    func climbStairs(_ n: Int) -> Int {
        if n == 1 { return 1 }
        if n == 2 { return 2 }

        // n > 2
        return climbStairs(n - 1) + climbStairs (n - 2)
    }
}
