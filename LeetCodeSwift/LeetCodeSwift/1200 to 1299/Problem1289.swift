//
//  Problem1289.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/26/24.
//

// 1289. Minimum Falling Path Sum II (Hard)
// https://leetcode.com/problems/minimum-falling-path-sum-ii/

public class Problem1289 {
    public func run() {
        let solve1 = minFallingPathSum([[1,2,3],[4,5,6],[7,8,9]])
        print("\(solve1) -- should be 13")
        let solve2 = minFallingPathSum([[7]])
        print("\(solve2) -- should be 7")
    }

    public func test(_ grid: [[Int]]) -> Int {
        return minFallingPathSum(grid)
    }

    func minFallingPathSum(_ grid: [[Int]]) -> Int {
        // https://leetcode.com/problems/minimum-falling-path-sum-ii/solutions/5073431/swift-dp-beats-100-with-comments/
        let n = grid.count
        var dp = grid

        for row in 1..<n {
            for col in 0..<n {
                var possibilities: [Int] = []
                for column in 0..<n where column != col {
                    possibilities.append(dp[row - 1][column])
                }

                dp[row][col] += possibilities.min()!
            }
        }

        return dp[n - 1].min()!
    }
}
