//
//  Problem2073.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/9/24.
//

// 2073. Time Needed to Buy Tickets (Easy)
// https://leetcode.com/problems/time-needed-to-buy-tickets/

public class Problem2073 {
    public func run() {
        let solve1 = timeRequiredToBuy([2,3,2], 2)
        print("\(solve1) -- should be 6")
        let solve2 = timeRequiredToBuy([5,1,1,1], 0)
        print("\(solve2) -- should be 8")
    }

    public func test(_ tickets: [Int], _ k: Int) -> Int {
        return timeRequiredToBuy(tickets, k)
    }

    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        var elapsedTime = 0
        var tickets = tickets
        while true {
            for idx in 0..<tickets.count {
                if tickets[idx] > 0 {
                    elapsedTime += 1
                    tickets[idx] -= 1
                    if idx == k && tickets[idx] == 0 {
                        return elapsedTime
                    }
                }
            }
        }
    }
}
