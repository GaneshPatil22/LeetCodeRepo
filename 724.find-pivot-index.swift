/*
 * @lc app=leetcode id=724 lang=swift
 *
 * [724] Find Pivot Index
 */

// @lc code=start
class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var s = 0
        var pf = nums
        for i in 0..<nums.count {
            s += nums[i]
            pf[i] = s
        }
        var index = -1
        var prev = 0
        for i in 0..<nums.count {
            let val = pf[i]
            let rsum = s - val
            if rsum == prev {
                index = i
                break
            }
            prev = val
        }
        return index
    }
}
// @lc code=end

