//
//  Problem121.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/6/22.
//

// 121. Best Time to Buy and Sell Stock (Easy)
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

// Assist to:
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/discuss/725110/Swift
// I cleaned up that code just a bit to remove the optional, it makes the code a bit cleaner

public class Problem121 {
    public func run() {
        let solve1 = maxProfit([7, 1, 5, 3, 6, 4])
        print("\(solve1) -- should be 5")
        let solve2 = maxProfit([7, 6, 4, 3, 1])
        print("\(solve2) -- should be 0")
        let solve3 = maxProfit([3, 10, 1, 2])
        print("\(solve3) -- should be 7")
    }

    public func test(_ prices: [Int]) -> Int {
        return maxProfit(prices)
    }

    func maxProfit(_ prices: [Int]) -> Int {
        var currentBuy = prices[0]
        var maxProfit = 0
        for price in prices {
            let currentProfit = price - currentBuy
            maxProfit = max(currentProfit, maxProfit)
            if currentProfit < 0 {
                currentBuy = price
            }
        }

        return maxProfit
    }

    func maxProfit_naive(_ prices: [Int]) -> Int {
        var maxProfit = 0
        for idx in 0..<prices.count - 1 {
            let newArr = prices[idx...]
            let newArrMax = newArr.max()!
            if newArrMax - prices[idx] > maxProfit {
                maxProfit = newArrMax - prices[idx]
            }
        }

        return maxProfit
    }
}
