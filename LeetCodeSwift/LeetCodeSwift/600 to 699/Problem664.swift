//
//  Problem664.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/21/24.
//

// 664. Strange Printer (Hard)
// https://leetcode.com/problems/strange-printer/

// https://leetcode.com/problems/strange-printer/solutions/2777984/swift-solution-100-efficient/

public class Problem664 {
    public func run() {
        let solve1 = strangePrinter("aaabbb")
        print("\(solve1) -- should be 2")
        let solve2 = strangePrinter("aba")
        print("\(solve2) -- should be 2")
    }

    public func test(_ s: String) -> Int {
        return strangePrinter(s)
    }

    func strangePrinter(_ s: String) -> Int {
        let s = Array(s)
        var dp = Array(repeating: Array(repeating: 0, count: s.count), count: s.count)
        for i in (0..<s.count).reversed() {
            dp[i][i] = 1
            for j in (i + 1)..<s.count {
                if s[i] == s[j] {
                    dp[i][j] = dp[i][j - 1]
                } else {
                    var minValue = Int.max
                    for k in i..<j {
                        minValue = min(minValue, dp[i][k] + dp[k + 1][j])
                    }

                    dp[i][j] = minValue
                }
            }
        }

        return dp[0][s.count - 1]
    }
}
