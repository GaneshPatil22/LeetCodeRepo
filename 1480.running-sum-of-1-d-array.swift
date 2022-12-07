/*
 * @lc app=leetcode id=1480 lang=swift
 *
 * [1480] Running Sum of 1d Array
 */

// @lc code=start
class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var ans = nums
        var sum = nums[0]
        for i in 1..<nums.count {
            let val = nums[i]
            sum += val
            ans[i] = sum
        }
        return ans
    }
}
// @lc code=end

