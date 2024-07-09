//
//  Problem1701.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/9/24.
//

// 1701. Average Waiting Time (Medium)
// https://leetcode.com/problems/average-waiting-time/

// WOO HOO!!!
// Runtime: 1455 ms, Beats 50.00%
// Memory: 24.70 MB, Beats 100.00%

public class Problem1701 {
    public func run() {
        let solve1 = averageWaitingTime([[1, 2], [2, 5], [4, 3]])
        print("\(solve1) -- should be 5.0")
        let solve2 = averageWaitingTime([[5, 2], [5, 4], [10, 3], [20, 1]])
        print("\(solve2) -- should be 3.25")
    }

    public func test(_ customers: [[Int]]) -> Double {
        return averageWaitingTime(customers)
    }

    func averageWaitingTime(_ customers: [[Int]]) -> Double {
        let customerCount = customers.count
        var customers = customers
        var currentTime = 0
        var waitTime = 0
        while !customers.isEmpty {
            let firstCustomer = customers.removeFirst()
            if firstCustomer[0] > currentTime {
                currentTime = firstCustomer[0]
            } else if currentTime > firstCustomer[0] {
                waitTime += (currentTime - firstCustomer[0])
            }

            currentTime += firstCustomer[1]
            waitTime += firstCustomer[1]
        }

        return Double(waitTime) * 1.0 / Double(customerCount)
    }
}
