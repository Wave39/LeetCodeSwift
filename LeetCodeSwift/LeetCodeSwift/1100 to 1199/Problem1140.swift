//
//  Problem1140.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/20/24.
//

// 1140. Stone Game II (Medium)
// https://leetcode.com/problems/stone-game-ii/

// https://leetcode.com/problems/stone-game-ii/solutions/5662697/swift-tiny/

public class Problem1140 {
    public func run() {
        let solve1 = stoneGameII([2, 7, 9, 4, 4])
        print("\(solve1) -- should be 10")
        let solve2 = stoneGameII([1, 2, 3, 4, 5, 100])
        print("\(solve2) -- should be 104")
    }

    public func test(_ piles: [Int]) -> Int {
        return stoneGameII(piles)
    }

    func stoneGameII(_ piles: [Int]) -> Int {
        let suffixSum = piles.reversed().reduce(into:[0]){a, p in a.insert(p + a[0], at: 0)}
        var dp = Array(repeating: Array(repeating: Int?.none, count: piles.count), count: piles.count)

        func visit(_ i: Int, _ m: Int) -> Int {
            guard i + m * 2 < piles.count else { return suffixSum[i] }
            dp[i][m] = dp[i][m] ?? (1...m * 2).map{j in visit(i + j, max(j, m))}.min()!
            return suffixSum[i] - dp[i][m]!
        }

        return visit(0, 1)
    }
}
