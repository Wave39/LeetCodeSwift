//
//  Problem1688.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/7/23.
//

// 1688. Count of Matches in Tournament (Easy)
// https://leetcode.com/problems/count-of-matches-in-tournament/

// WOO HOO!!!
// Runtime: 4ms, Beats 44.08% of users with Swift
// Memory: 13.32MB, Beats 99.30% of users with Swift

// On a side note, how can this solution not beat 100.00% of users for both Runtime and Memory?????????

public class Problem1688 {
    public func run() {
        let solve1 = numberOfMatches(7)
        print("\(solve1) -- should be 6")
        let solve2 = numberOfMatches(14)
        print("\(solve2) -- should be 13")
    }

    public func test(_ n: Int) -> Int {
        return numberOfMatches(n)
    }

    func numberOfMatches(_ n: Int) -> Int {
        // In a single elimination tournament, each team has to lose once in a match
        return n - 1
    }
}
