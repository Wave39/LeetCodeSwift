//
//  Problem1550.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/1/24.
//

// 1550. Three Consecutive Odds (Easy)
// https://leetcode.com/problems/three-consecutive-odds/

public class Problem1550 {
    public func run() {
        let solve1 = threeConsecutiveOdds([2, 6, 4, 1])
        print("\(solve1) -- should be false")
        let solve2 = threeConsecutiveOdds([1, 2, 34, 3, 4, 5, 7, 23, 12])
        print("\(solve2) -- should be true")
    }

    public func test(_ arr: [Int]) -> Bool {
        return threeConsecutiveOdds(arr)
    }

    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        let parityArray = arr.map { $0 % 2 }
        return parityArray.contains([1, 1, 1])
    }
}
