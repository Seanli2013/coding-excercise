//
//  1-two-sum.swift
//  
//
//  Created by XiangLI on 4/6/21.
//

// https://leetcode-cn.com/problems/two-sum/

// Hash
class TwoSumSolution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // input check. nums.count >= 2
        var dict = [Int: Int]()

        for indexA in 0..<nums.count {
            if let indexB = dict[target - nums[indexA]] {
                return [indexB, indexA]
            }
            dict[nums[indexA]] = indexA
        }
        // print(dict)
        return []
    }
}

// exhaustive enumeration
// Time Complexity: O(n^2), Space Complexity: O(1)

class TwoSumSolution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // input check: nums.count >= 2

        for indexA in 0..<nums.count-1 {
            for indexB in indexA+1..<nums.count {
                if (nums[indexA] + nums[indexB] == target) {
                    return [indexA, indexB]
                }
            }
        }

        return []
    }
}
