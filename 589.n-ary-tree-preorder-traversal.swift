/*
 * @lc app=leetcode id=589 lang=swift
 *
 * [589] N-ary Tree Preorder Traversal
 */

// @lc code=start
/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    var arr: [Int] = []
    func preorder(_ root: Node?) -> [Int] {
        order(root)
        return arr
    }

    func order(_ n: Node?) {
        guard let node = n else { return }
        arr.append(node.val)
        for no in node.children {
            order(no)
        }
    }
}
// @lc code=end

