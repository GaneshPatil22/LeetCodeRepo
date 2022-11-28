/*
 * @lc app=leetcode id=2225 lang=swift
 *
 * [2225] Find Players With Zero or One Losses
 */

// @lc code=start
class Solution {
    func findWinners(_ matches: [[Int]]) -> [[Int]] {
        var lostMatchMap: [Int: Int] = [:]
        var ans: [[Int]] = []
        for match in matches {
            let winner = match[0]
            let loser = match[1]
            if lostMatchMap[winner] == nil {
                lostMatchMap[winner] = 0
            }
            if lostMatchMap[loser] == nil {
                lostMatchMap[loser] = 1
            } else {
                lostMatchMap[loser] = lostMatchMap[loser]! + 1
            }
        }
        var allWinnerArr: [Int] = []
        var oneLoserArr: [Int] = []
        for (k, v) in lostMatchMap {
            if v == 0 {
                allWinnerArr.append(k)
            }
            if v == 1 {
                oneLoserArr.append(k)
            }
        }
        allWinnerArr.sort()
        oneLoserArr.sort()
        ans = [allWinnerArr, oneLoserArr]        
        return ans
    }
}
// @lc code=end

