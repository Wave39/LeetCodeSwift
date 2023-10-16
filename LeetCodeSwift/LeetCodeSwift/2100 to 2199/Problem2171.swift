//
//  Problem2171.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/16/23.
//

// 2171. Removing Minimum Number of Magic Beans (Medium)
// https://leetcode.com/problems/removing-minimum-number-of-magic-beans/description/

// https://leetcode.com/problems/removing-minimum-number-of-magic-beans/solutions/2305937/swift-one-liner-fully-explained/

public class Problem2171 {
    public func run() {
        let solve1 = minimumRemoval([4, 1, 6, 5])
        print("\(solve1) -- should be 4")
        let solve2 = minimumRemoval([2, 10, 3, 2])
        print("\(solve2) -- should be 7")
    }

    public func test(_ beans: [Int]) -> Int {
        return minimumRemoval(beans)
    }

    func minimumRemoval(_ beans: [Int]) -> Int {
        let totalBeans = beans.reduce(0, +)
        let bags = beans.sorted()
        let remainingBeans = bags.enumerated().map { i, beans -> Int in
            return (bags.count - i) * beans
        }

        return totalBeans - remainingBeans.max()!
    }
}
