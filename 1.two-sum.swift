/*
 * @lc app=leetcode id=1 lang=swift
 *
 * [1] Two Sum
 */

// @lc code=start
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for index in 0..<nums.count {
            let remainder = target - nums[index]
            if dict[nums[index]] == nil {
                dict[remainder] = index
            } else {
                return [index, dict[nums[index]]!]
            }
        }
        return [-1, -1]
    }
}
// @lc code=end

