/*
 * @lc app=leetcode id=872 lang=swift
 *
 * [872] Leaf-Similar Trees
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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        getAllLeaves(root1)
        let arr1 = arr
        arr = []
        getAllLeaves(root2)
        let arr2 = arr
        if (arr1.count != arr2.count) {
            return false
        }
        for i in 0..<arr1.count {
            if arr1[i] != arr2[i] {
                return false
            }
        }
        return true
    }

    func getAllLeaves(_ node: TreeNode?) {
        guard let n = node else {
            return
        }
        let lval = getAllLeaves(n.left)
        let rval = getAllLeaves(n.right)  
        if n.left == nil && n.right == nil {
            arr.append(n.val)
        }
    }
}
// @lc code=end

