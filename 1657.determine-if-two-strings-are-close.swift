/*
 * @lc app=leetcode id=1657 lang=swift
 *
 * [1657] Determine if Two Strings Are Close
 */

// @lc code=start
class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        var s1map: [Character: Int] = [:]
        var s2map: [Character: Int] = [:]
        
        for c in word1 {
            s1map[c] = s1map[c, default: 0] + 1
        }
        
        for c in word2 {
            s2map[c] = s2map[c, default: 0] + 1
        }
        var temp = s1map
        for c in word2 {
            if temp[c] == nil {
                return false
            }
        }
        temp = s1map
        for c in word1 {
            if temp[c] == nil {
                return false
            }
        }
        
        
        var v1: [Int: Int] = [:]
        
        for (_, v) in s1map {
            v1[v] = v1[v, default: 0] + 1
        }
        for (_, v) in s2map {
            if v1[v] == nil {
                return false
            } else {
                v1[v] = v1[v]! - 1
            }
        }
        
        for (_, v) in v1 {
            if v > 0 {
                return false
            }
        }
        return true
    }
}
// @lc code=end

