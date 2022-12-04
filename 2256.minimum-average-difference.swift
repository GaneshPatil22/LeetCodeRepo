/*
 * @lc app=leetcode id=2256 lang=swift
 *
 * [2256] Minimum Average Difference
 */

// @lc code=start
class Solution {
    func minimumAverageDifference(_ nums: [Int]) -> Int {
        var total = nums.reduce(0, +)
        var l = 0
        var minIndex = 0
        var minDiff = 9999999
        for i in 0..<nums.count {
            let val = nums[i]
            total -= val
            l += val
            let number = i + 1
            let avgl: Int = l / number
            let avgr: Int = number == nums.count ? 0 : (total / (nums.count - number))
            let diff = avgl - avgr
            let absDiff = diff < 0 ? (diff * -1) : diff
            if (minDiff > absDiff) {
                minDiff = absDiff
                minIndex = i
            }
        }
        return minIndex
    }
}
// @lc code=end

