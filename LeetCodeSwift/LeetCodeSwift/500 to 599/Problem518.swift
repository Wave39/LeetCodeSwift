//
//  Problem518.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/11/23.
//

// 518. Coin Change II (Medium)
// https://leetcode.com/problems/coin-change-ii/

public class Problem518 {
    public func run() {
        let solve1 = change(5, [1, 2, 5])
        print("\(solve1) -- should be 4")
        let solve2 = change(3, [2])
        print("\(solve2) -- should be 0")
        let solve3 = change(10, [10])
        print("\(solve3) -- should be 1")
    }

    public func test(_ amount: Int, _ coins: [Int]) -> Int {
        return change(amount, coins)
    }

    var coins: [Int] = []
    var memo: [[Int]] = []

    func numberOfWays(_ i: Int, _ amount: Int) -> Int {
        if amount == 0 {
            return 1
        }

        if i == coins.count {
            return 0
        }

        if memo[i][amount] != -1 {
            return memo[i][amount]
        }

        if coins[i] > amount {
            memo[i][amount] = numberOfWays(i + 1, amount)
            return memo[i][amount]
        }

        memo[i][amount] = numberOfWays(i, amount - coins[i]) + numberOfWays(i + 1, amount)
        return memo[i][amount]
    }

    func change(_ amount: Int, _ coins: [Int]) -> Int {
        self.coins = coins
        memo = []
        for _ in 0..<coins.count {
            memo.append(Array(repeating: -1, count: amount + 1))
        }

        return numberOfWays(0, amount)
    }
}
