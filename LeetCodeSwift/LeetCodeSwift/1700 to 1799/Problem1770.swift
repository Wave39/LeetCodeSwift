//
//  Problem1770.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/16/22.
//

// 1770. Maximum Score from Performing Multiplication Operations
// https://leetcode.com/problems/maximum-score-from-performing-multiplication-operations/

// https://leetcode.com/problems/maximum-score-from-performing-multiplication-operations/discuss/2583345/SolutionSwift-DP-(Dynamic-Programming)-(564ms-beats-100)

public class Problem1770 {
    public func run() {
        let solve1 = maximumScore([1, 2, 3], [3, 2, 1])
        print("\(solve1) -- should be 14")
        let solve2 = maximumScore([-5, -3, -3, -2, 7, 1], [-10, -5, 3, 4, 6])
        print("\(solve2) -- should be 102")
    }

    public func test(_ nums: [Int], _ multipliers: [Int]) -> Int {
        return maximumScore(nums, multipliers)
    }

    func maximumScore(_ nums: [Int], _ multipliers: [Int]) -> Int {
        let n = nums.count
        let m = multipliers.count

        var dp = Array(repeating: Array(repeating: 0, count: m + 1),
                       count: m + 1)

        var maxScore = Int.min

        for i in 0...m {
            for j in 0...i {

                if i == 0, j == 0 {
                    dp[i - j][j] = 0
                } else if i - j == 0 {
                    dp[i - j][j] = dp[i - j][j - 1] + multipliers[i - 1] * nums[n - j]
                } else if i != 0, j == 0 {
                    dp[i - j][j] = dp[i - j - 1][j] + multipliers[i - 1] * nums[i - 1]
                } else {
                    dp[i - j][j] = max(dp[i - j][j - 1] + multipliers[i - 1] * nums[n - j],
                                       dp[i - j - 1][j] + multipliers[i - 1] * nums[i - j - 1])
                }

                if i == m {
                    maxScore = max(maxScore, dp[i - j][j])
                }
            }
        }

        return maxScore
    }
}
