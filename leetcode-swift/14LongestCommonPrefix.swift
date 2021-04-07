//
//  14LongestCommonPrefix.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/7/21.
//
//
//  https://leetcode-cn.com/problems/longest-common-prefix/submissions/
//

import Foundation

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
