/*
 * @lc app=leetcode id=198 lang=swift
 *
 * [198] House Robber
 */

// @lc code=start
class Solution {
    func rob(_ nums: [Int]) -> Int {
        var n = nums.map { $0 }
        n.append(0)
        for i in 0..<nums.count {
            var newI = i + 1
            var prevIndex = newI - 2
            var sum = nums[i]
            if (prevIndex > 0) {
                sum += n[prevIndex]
            }
            if (sum < n[i]) {
                sum = n[i]
            }
            n[newI] = sum
        }
        return n.last ?? 0
    }
}
// @lc code=end

