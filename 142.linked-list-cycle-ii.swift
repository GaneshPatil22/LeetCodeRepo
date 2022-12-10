/*
 * @lc app=leetcode id=142 lang=swift
 *
 * [142] Linked List Cycle II
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var single = head
        var double = head
        var foundNode: ListNode? = nil
        var index: ListNode? = nil
        while (single != nil && double != nil) {
            single = single?.next
            double = double?.next?.next
            // print(single?.val ?? 0)
            // print(double?.val ?? 0)
            if ((single != nil && double != nil) && (single! === double!)) {
                foundNode = single
                break
            }
        }
        print(foundNode?.val ?? 0)
        if let node = foundNode {
            var temp = head
            var temp2: ListNode? = node
            while ((temp! !== temp2!)) {
                temp = temp?.next
                temp2 = temp2?.next
            }
            index = temp                
        }
        return index
        
    }
}
// @lc code=end

