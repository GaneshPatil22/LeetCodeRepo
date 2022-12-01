/*
 * @lc app=leetcode id=1704 lang=swift
 *
 * [1704] Determine if String Halves Are Alike
 */

// @lc code=start
class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        let strArr = s.map { String($0) }
        let count = s.count
        let vowel = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        let half: Int = count / 2
        var count1 = 0
        for i in 0..<count {
            let c = strArr[i]
            if vowel.contains(c) == false {
                continue
            }
            if (i < half) {
                count1 += 1
            } else {
                count1 -= 1
            }
        }
        return count1 == 0
    }
}
// @lc code=end

