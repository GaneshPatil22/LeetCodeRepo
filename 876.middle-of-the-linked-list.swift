/*
 * @lc app=leetcode id=876 lang=swift
 *
 * [876] Middle of the Linked List
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        if (head == nil || head!.next == nil) {
            return head
        }
        var temp = head
        var count: Int = 1
        while (temp?.next != nil) {
            count += 1
            temp = temp?.next
        }
        var index: Int = (count / 2)
        temp = head
        while(index != 0) {
            temp = temp?.next
            index -= 1
        }
        return temp
    }
}
// @lc code=end

