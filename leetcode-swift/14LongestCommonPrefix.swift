//
//  14LongestCommonPrefix.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/7/21.
//
//
//  https://leetcode.com/problems/longest-common-prefix/submissions/
//

import Foundation

// Sort first, then compare the first one and the last one
// TC: O(n), SC: O(n)
class LongestCommonPrefixSolution2 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 { return "" }
        if strs.count == 1 { return strs[0] }
        
        var strArray = strs
        strArray.sort()
        let s1 = strArray[0], s2 = strArray.last!
        let s = s1.count > s2.count ? s2 : s1
        for i in 0..<s.count {
            if s1[s1.index(s1.startIndex, offsetBy: i)] != s2[s2.index(s2.startIndex, offsetBy: i)] {
                return String(s1.prefix(upTo: s1.index(s1.startIndex, offsetBy: i)))
            }
        }
        return s
    }
}


// TC: O(nm), SC: O(1)
class LongestCommonPrefixSolution1 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 { return "" }
        if strs.count == 1 { return strs[0]}

        var r = Array(strs[0]), s = ""

        for i in 1..<strs.count {
            s = strs[i]
            if s.count == 0 { return "" }
            if s.count < r.count {
                r = Array(r.prefix(s.count))
            }

            for j in 0..<r.count {
                if r[j] != s[s.index(s.startIndex, offsetBy: j)] {
                    if j == 0 { return "" }
                    r = Array(r.prefix(j))
                    break
                }
            }
        }
        return String(r)
    }
}
