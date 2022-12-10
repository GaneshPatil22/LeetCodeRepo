/*
 * @lc app=leetcode id=1339 lang=swift
 *
 * [1339] Maximum Product of Splitted Binary Tree
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
    var arr: [Int] = []
    func maxProduct(_ root: TreeNode?) -> Int {
        let total = sum(root)
        var max: Int = 0
        let mod = 1000000007
        for n in arr {
            let val = total - n
            let tempMul = val * n
            if tempMul > max {
                max = tempMul
            }
        }
        return max % mod
    }

    func sum(_ node: TreeNode?) -> Int {
        guard let node = node else {
            return 0
        }
        let left = sum(node.left)
        let right = sum(node.right)
        let val = node.val
        let sum = left + right + val
        arr.append(sum)
        return sum
    }
}
// @lc code=end

