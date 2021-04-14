//
//  118PascalsTriangle.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/12/21.
//
//
//  https://leetcode.com/problems/pascals-triangle/
//
import Foundation
class PascalsTriangleSolution1 {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 0 { return [] }
        if numRows == 1 { return [[1]] }
        
        var retArray = [[1]], tmpArray = [1]
        for i in 2...numRows {
            tmpArray = generateLastArray(tmpArray, i)
            retArray.append(tmpArray)
        }
        return retArray
    }

    func generateLastArray(_ array: [Int], _ numRows: Int) -> [Int] {
        if numRows == 1 { return [1] }
        if array.count != numRows - 1 {
            // throw something
            print("array.count: \(array.count); numRows: \(numRows) \n")
            return []
        }
        var retArray = [1]
        var tmpNum = 0
        for i in 1..<numRows {
            if i == array.count {
                tmpNum = array[i-1]
            }
            else {
                tmpNum = array[i] + array[i - 1]
            }
            retArray.append(tmpNum)
        }
        // print("retArray: \(retArray)")
        return retArray
    }
}
