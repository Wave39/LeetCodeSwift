//
//  Problem62.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/14/22.
//

// 62. Unique Paths (Medium)
// https://leetcode.com/problems/unique-paths/

// I thought that my recursive algorithm would be fast enough even with large values, but alas no...
// https://leetcode.com/problems/unique-paths/discuss/555952/Swift-0ms

public class Problem62 {
    public func run() {
        let solve1 = uniquePaths(3, 7)
        print("\(solve1) -- should be 28")
        let solve2 = uniquePaths(3, 2)
        print("\(solve2) -- should be 3")
    }

    public func test(_ m: Int, _ n: Int) -> Int {
        return uniquePaths(m, n)
    }

    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        dp[m - 1][n - 1] = 1

        for row in (0..<m).reversed() {
            for col in (0..<n).reversed() {
                let paths = dp[row + 1][col] + dp[row][col + 1]
                dp[row][col] += paths
            }
        }

        return dp[0][0]
    }

    func uniquePaths_recursive(_ m: Int, _ n: Int) -> Int {
        var retval = 0
        let rows = m
        let columns = n
        func processLocation(_ m: Int, _ n: Int) {
            if m == (rows - 1) && n == (columns - 1) {
                retval += 1
            } else {
                if m < (rows - 1) {
                    processLocation(m + 1, n)
                }

                if n < (columns - 1) {
                    processLocation(m, n + 1)
                }
            }
        }

        processLocation(0, 0)

        return retval
    }
}
