//
//  jz-offer-03-find-repeat-number.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/6/21.
//

class FindRepeatNumberSolution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var hashDict = [Int: Bool]()
        for num in nums {
            if hashDict[num] == true {
                return num
            }
            else {
                hashDict[num] = true
            }
        }
        return -1
    }
}
