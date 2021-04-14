//
//  136SingleNumber .swift
//  CodeExcercise
//
//  Created by XiangLI on 4/7/21.
//
//
//  https://leetcode.com/problems/single-number/submissions/


import Foundation

// TC: O(n), SC: O(1)
class SingleNumberSolution2 {
    func singleNumber(_ nums: [Int]) -> Int {
        var retValue = 0
        for num in nums {
            retValue ^= num
        }
        return retValue
    }
}



// TC: O(n), SC: O(n)
class SingleNumberSolution1 {
    func singleNumber(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for num in nums {
            if dict[num] != nil {
                dict.removeValue(forKey:num)
            } else {
                dict[num] = 1
            }
        }
        return Array(dict.keys)[0]
    }
}
