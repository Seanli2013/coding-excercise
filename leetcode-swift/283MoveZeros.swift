//
//  283MoveZeros.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/13/21.
//
//  https://leetcode-cn.com/problems/move-zeroes/
//
//

import Foundation
class MoveZerosSolution {
    func moveZeroes(_ nums: inout [Int]) {
        var left = 0, right = 0, n = nums.count
        while right < n {
            if nums[right] != 0 {
                nums.swapAt(right, left)
                left += 1
            }
            right += 1
        }
    }
}
