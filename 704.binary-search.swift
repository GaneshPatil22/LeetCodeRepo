/*
 * @lc app=leetcode id=704 lang=swift
 *
 * [704] Binary Search
 */

// @lc code=start
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var index = -1
        while(left <= right) {
            let mid: Int = (left + right) / 2
            if (nums[mid] == target) {
                index = mid
                break
            } else if (nums[mid] > target) {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return index
    }
}
// @lc code=end

