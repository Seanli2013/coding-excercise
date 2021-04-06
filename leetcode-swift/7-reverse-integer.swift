//
//  7-reverse-integer.swift
//  
//
//  Created by XiangLI on 4/6/21.
//
//  https://leetcode-cn.com/problems/reverse-integer/
//

//  [Solution 2] convertion btw Int and Array
class ReverseIntegerSolution1 {
    func reverse(_ x: Int) -> Int {
        // 边界条件
        if x == -2147483648 {return 0;}
        
        var x = x
        var sign = 1
        if x < 0 {
            sign = -1
            x = -1 * x
        }
        var y = 0
        var tmpNum = x % 10
        while x > 0 {
            y = y * 10 + tmpNum
            x = x / 10
            tmpNum = x % 10
        }
        
        let retValue = y * sign
        if retValue > 2147483647 || retValue < -2147483648 {return 0}
        return retValue
    }
}



//  [Solution 1] convertion btw Int and String, String reverse
class ReverseIntegerSolution2 {
    func reverse(_ x: Int) -> Int {
        // 边界条件
        if x == -2147483648 {return 0;}

        var x = x
        var sign = 1
        if x < 0 {
            sign = -1
            x = -1 * x
        }

        var myString = String(x)
        myString = String(myString.reversed())

        let retValue = Int(myString)! * sign
        if retValue > 2147483647 || retValue < -2147483648 {return 0}
        return retValue
    }
}
