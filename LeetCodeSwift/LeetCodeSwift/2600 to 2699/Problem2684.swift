//
//  Problem2684.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/29/24.
//

// 2684. Maximum Number of Moves in a Grid (Medium)
// https://leetcode.com/problems/maximum-number-of-moves-in-a-grid/

// https://leetcode.com/problems/maximum-number-of-moves-in-a-grid/solutions/5980453/list-most-common-interview-matrix-beats-100-explained-step-by-step/

public class Problem2684 {
    public func run() {
        let solve1 = maxMoves([[2, 4, 3, 5], [5, 4, 9, 3], [3, 4, 2, 11], [10, 9, 13, 15]])
        print("\(solve1) -- should be 3")
        let solve2 = maxMoves([[3, 2, 4], [2, 1, 9], [1, 1, 7]])
        print("\(solve2) -- should be 0")
    }

    public func test(_ grid: [[Int]]) -> Int {
        return maxMoves(grid)
    }

    func maxMoves(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var res = 0
        var dp = Array(repeating: 0, count: m)
        for j in 1..<n {
            var leftTop = 0
            var found = false
            for i in 0..<m {
                var cur = -1
                let nxtLeftTop = dp[i]
                if i - 1 >= 0 && leftTop != -1 && grid[i][j] > grid[i - 1][j - 1] {
                    cur = max(cur, leftTop + 1)
                }

                if dp[i] != -1 && grid[i][j] > grid[i][j - 1] {
                    cur = max(cur, dp[i] + 1)
                }

                if i + 1 < m && dp[i + 1] != -1 && grid[i][j] > grid[i + 1][j - 1] {
                    cur = max(cur, dp[i + 1] + 1)
                }

                dp[i] = cur
                found = found || (dp[i] != -1)
                leftTop = nxtLeftTop
            }

            if !found {
                break
            }
            
            res = j
        }

        return res
    }
}
