//
//  53MaximumSubarray.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/12/21.
//
//  https://leetcode-cn.com/problems/maximum-subarray/
//


import Foundation
class MaximumSubarraySolution {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums[0] }
        var prev = -10^5, maxSum = -10^5
        for num in nums {
            prev = max(num, prev + num)
            maxSum = max(prev, maxSum)
            // print("maxSum \(maxSum) \n sumPrev \(prev) \n ----- \n")
        }
        return maxSum
    }
}
