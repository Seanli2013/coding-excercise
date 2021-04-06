//
//  13-roman-to-integer.swift
//  
//
//  Created by XiangLI on 4/6/21.
//
//  https://leetcode-cn.com/problems/roman-to-integer/
//  Time Complexity: O(n); Space Complexity: O(1)
//

class Solution {
    func romanToInt(_ s: String) -> Int {

        var addNum = 0
        var retValue = 0
        var tmpChar: Character = "!"
        for char in s {
            switch char {
                case "I":
                    addNum = 1
                case "V":
                    addNum = tmpChar == "I" ? 3 : 5
                case "X":
                    addNum = tmpChar == "I" ? 8 : 10
                case "L":
                    addNum = tmpChar == "X" ? 30 : 50
                case "C":
                    addNum = tmpChar == "X" ? 80 : 100
                case "D":
                    addNum = tmpChar == "C" ? 300 : 500
                case "M":
                    addNum = tmpChar == "C" ? 800 : 1000
                default:
                print("default")
                // throw error
            }
            tmpChar = char
            retValue = retValue + addNum
        }

        return retValue
    }
}
