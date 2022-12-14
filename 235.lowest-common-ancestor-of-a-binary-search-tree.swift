/*
 * @lc app=leetcode id=235 lang=swift
 *
 * [235] Lowest Common Ancestor of a Binary Search Tree
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let pp = p, let qq = q else { return root }
        return low(root, pp, qq)
    }

    func low(_ node: TreeNode?, _ p: TreeNode, _ q: TreeNode) -> TreeNode? {
        guard let n = node else { return nil }
        if n.val >= p.val && n.val <= q.val {
            return n
        } else if n.val >= q.val && n.val <= p.val {
            return n
        } else {
            if (n.val > p.val && n.val > q.val) {
                return low(n.left, p, q)
            } else {
                return low(n.right, p, q)
            }
        }
    }
}
// @lc code=end

