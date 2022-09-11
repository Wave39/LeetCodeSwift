//
//  Problem188.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/11/22.
//

// 188. Best Time to Buy and Sell Stock IV
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iv/

public class Problem188 {
    public func run() {
        let solve1 = maxProfit(2, [2, 4, 1])
        print("\(solve1) -- should be 2")
        let solve2 = maxProfit(2, [3, 2, 6, 5, 0, 3])
        print("\(solve2) -- should be 7")
    }

    public func test(_ k: Int, _ prices: [Int]) -> Int {
        return maxProfit(k, prices)
    }

    func maxProfit(_ k: Int, _ prices: [Int]) -> Int {
        guard k > 0 && prices.count > 1 else { return 0 }
        guard k >= prices.count/2 else {
            var low = [Int](repeating: prices[0], count: k)
            var res = [Int](repeating: 0, count: k)
            for i in prices.indices {
                for s in 0..<k {
                    let mj = low[s], pn = prices[i]
                    low[s] = min(mj, s == 0 ? pn : pn - res[s-1])
                    res[s] = max(res[s], pn - mj)
                }
            }
            return res[k - 1]
        }
        var res = 0
        for i in 1..<prices.count where prices[i] > prices[i-1] {
            res += (prices[i] - prices[i-1])
        }
        return res
    }
}
