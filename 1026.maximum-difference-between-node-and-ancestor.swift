/*
 * @lc app=leetcode id=1026 lang=swift
 *
 * [1026] Maximum Difference Between Node and Ancestor
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var diff = 0
    func maxAncestorDiff(_ root: TreeNode?) -> Int {
        path(root, maxTillNow: Int.min, minTillNow: Int.max)
        return diff
    }
    func path(_ node: TreeNode?, maxTillNow: Int, minTillNow: Int) {
        guard let n = node else {
            return
        }
        let val = n.val
        var max = maxTillNow
        var min = minTillNow
        if val > max {
            max = val
        }
        if val < min {
            min = val
        }
        // print("On Node \(n.val), max is \(maxTillNow), min is \(minTillNow)")
        if n.left == nil && n.right == nil {
            var tempDiff = max - min
            tempDiff = tempDiff < 0 ? (tempDiff * -1) : tempDiff
            if tempDiff > diff {
                diff = tempDiff
            }
            return
        }
        path(n.left, maxTillNow: max, minTillNow: min)
        path(n.right, maxTillNow: max, minTillNow: min)

    }
}
// @lc code=end

