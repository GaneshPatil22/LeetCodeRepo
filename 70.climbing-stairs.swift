/*
 * @lc app=leetcode id=70 lang=swift
 *
 * [70] Climbing Stairs
 */

// @lc code=start
class Solution {
    var map: [Int : Int] = [:]
    func climbStairs(_ n: Int) -> Int {
        if n < 0 {
            return 0
        }
        if n <= 2 {
            return n
        }
        if map[n] != nil {
            return map[n]!
        }
        let ans = climbStairs(n - 1) + climbStairs(n - 2)
        map[n] = ans
        return ans
    }
}
// @lc code=end

