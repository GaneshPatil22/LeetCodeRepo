/*
 * @lc app=leetcode id=938 lang=swift
 *
 * [938] Range Sum of BST
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
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        return travel(root, low, high)
    }

    func travel(_ node: TreeNode?, _ low: Int, _ high: Int) -> Int {
        guard let n = node else {
            return 0
        }
        let lval = travel(n.left, low, high)
        let rval = travel(n.right, low, high)
        var val = n.val
        if (val < low || val > high) {
            val = 0
        }
        return lval + rval + val
    }
}
// @lc code=end

