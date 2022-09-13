//
//  Problem70.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/12/22.
//

// 70. Climbing Stairs
// https://leetcode.com/problems/climbing-stairs/

// Borrowed the solution from this link:
// https://leetcode.com/problems/climbing-stairs/discuss/554663/Swift
// I guess I just didn't realize that since stair N is accessible from either
// stair N - 1 or stair N - 2, you can just add those two together to get it

public class Problem70 {
    public func run() {
        let solve1 = climbStairs(2)
        print("\(solve1) -- should be 2")
        let solve2 = climbStairs(3)
        print("\(solve2) -- should be 3")
        let solve3 = climbStairs(4)
        print("\(solve3) -- should be 5")
    }

    public func test(_ n: Int) -> Int {
        return climbStairs(n)
    }

    func climbStairs(_ n: Int) -> Int {
        var dp = [1, 1]
        if n < 2
        {
            return 1
        }
        if n == 2
        {
            return dp[0] + dp[1]
        }

        for i in 2...n
        {
            dp.append(dp[i - 1] + dp[i - 2])
        }

        return dp[n]
    }
}
