/*
 * @lc app=leetcode id=102 lang=swift
 *
 * [102] Binary Tree Level Order Traversal
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
    var arr: [[Int]] = []
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil {
            return []
        }
        let height = height(root)
        for i in 1...height {
            let tamp = printCurrentLevel(root, i)
            arr.append(tamp)
        }
        return arr
    }

    func height(_ root: TreeNode?) -> Int {
        guard let node = root else { return 0 }
        let lheight = height(node.left)
        let rheight = height(node.right)
        return lheight > rheight ? (lheight + 1) : (rheight + 1)
    }

    func printCurrentLevel(_ node: TreeNode?, _ level: Int) -> [Int] {
        guard let n = node else { return [] }
        if level == 1 {
            return [n.val]
        } else {
            let larr = printCurrentLevel(n.left, level - 1)
            let rarr = printCurrentLevel(n.right, level - 1)
            return [larr, rarr].flatMap({ $0 })
        }
    }
}
// @lc code=end

