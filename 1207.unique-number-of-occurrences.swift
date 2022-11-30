/*
 * @lc app=leetcode id=1207 lang=swift
 *
 * [1207] Unique Number of Occurrences
 */

// @lc code=start
class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var map: [Int: Int] = [:]
        for e in arr {
            if map[e] == nil {
                map[e] = 1
            } else {
                map[e] = map[e]! + 1
            }
        }
        var map2: [Int: Int] = [:]
        for(_, v) in map {
            if map2[v] == nil {
                map2[v] = 1
            } else {
                return false;
            }
        }
        return true;
    }
}
// @lc code=end

