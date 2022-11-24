/*
 * @lc app=leetcode id=79 lang=swift
 *
 * [79] Word Search
 */

// @lc code=start
class Solution {
    var visited: [[Bool]] = []
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var m = board.count;
        var n = board[0].count;
        for _ in 0..<m {
            var b: [Bool] = []
            for _ in 0..<n {
                b.append(false)
            }
            visited.append(b)
        }
        //to store freq of alphabets in board
        var alphFreqForBoard: [Int] = []
        for _ in 0..<58 {
            alphFreqForBoard.append(0)
        }
        //to store freq of alphabets in word
        var alphFreqForWord: [Int] = []
        for _ in 0..<58 {
            alphFreqForWord.append(0)
        }
        //counting freq of alphabets in word
        for cc in Array(word) {
            let c = Int(Character(String(cc)).asciiValue!)
            let ascciiValueOfA = 65
            alphFreqForWord[c - ascciiValueOfA] += 1
        }
       //counting freq of alphabets in board
        for r in 0..<board.count {
            for c in 0..<board[0].count {
                let cc = board[r][c]
                let c = Int(Character(String(cc)).asciiValue!)
                let ascciiValueOfA = 65
                alphFreqForBoard[c - ascciiValueOfA] += 1
            }
        }
        //base case : if freq of any alphabet in word is already more than that in board, it's a NO so returning false
        for cc in Array(word) {
            let c = Int(Character(String(cc)).asciiValue!)
            let ascciiValueOfA = 65
            if (alphFreqForBoard[c - ascciiValueOfA] < alphFreqForWord[c - ascciiValueOfA]) {
                return false
            }
        }
        //now calling exist() for every cell in board
        for i in 0..<m {
            for j in 0..<n {
               // if possible to find word in board return true
                if exist(board, i, j, word, 0) {
                    return true
                }
            }
        }
        // else false
        return false;
    }

    func exist(_ board: [[Character]], _ i: Int, _ j: Int, _ w: String, _ ind: Int) -> Bool {
         // base case1 : if current index is equal to the word length
        if w.count == ind {
            return true
        }
       //base case2: if u reach beyond the start the of the board or out of board or characters don't match or it's a visited cell, gotta return false
        if (i<0 || j<0 || i==board.count || j==board[0].count || board[i][j] != Array(w)[ind] || visited[i][j]) {
            return false;
        }
        // marking cell as visited
        visited[i][j]=true;
         // checking in all directions(up, down, left, right) to check if word exists
        if(exist(board, i+1, j, w, ind+1)
            || exist(board, i, j+1, w, ind+1)
            || exist(board, i-1, j, w, ind+1)
           || exist(board, i, j-1, w, ind+1)) {
            return true;
        }
       // it didn't return true already then need to mark the visited cell as false. coz that cell didn't help to find the word
        visited[i][j]=false;
        return false;
    }
}
// @lc code=end

