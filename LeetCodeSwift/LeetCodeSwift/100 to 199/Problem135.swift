//
//  Problem135.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/13/23.
//

// 135. Candy (Hard)
// https://leetcode.com/problems/candy/

// My naive solution was failing under the weight of a tremendously large test case.
// As a result, I used the following solution:
// https://leetcode.com/problems/candy/solutions/1739602/solution-swift-candy-test-cases/

public class Problem135 {
    public func run() {
        let solve1 = candy([1, 0, 2])
        print("\(solve1) -- should be 5")
        let solve2 = candy([1, 2, 2])
        print("\(solve2) -- should be 4")
        let solve3 = candy([0])
        print("\(solve3) -- should be 1")
    }

    public func test(_ ratings: [Int]) -> Int {
        return candy(ratings)
    }

    func candy(_ ratings: [Int]) -> Int {
        let len = ratings.count
        guard len > 1 else { return len }

        var value = 0

        var lhs2rhs = [Int](repeating: 1, count: len)
        var rhs2lhs = [Int](repeating: 1, count: len)

        for i in 1..<len where ratings[i] > ratings[i - 1] {
            lhs2rhs[i] = lhs2rhs[i - 1] + 1
        }
        for i in (0..<(len - 1)).reversed() where ratings[i] > ratings[i + 1] {
            rhs2lhs[i] = rhs2lhs[i + 1] + 1
        }
        for i in 0..<len {
            value += max(lhs2rhs[i], rhs2lhs[i])
        }
        return value
    }

    func candy_naive(_ ratings: [Int]) -> Int {
        if ratings.count == 1 {
            return 1
        }

        func firstInvalidCandyEntry(_ candyArray: [Int]) -> Int? {
            for idx in 0..<candyArray.count {
                if idx == 0 {
                    if ratings[0] > ratings[1] && candyArray[0] <= candyArray[1] {
                        return 0
                    }
                } else if idx == candyArray.count - 1 {
                    if ratings[idx] > ratings[idx - 1] && candyArray[idx] <= candyArray[idx - 1] {
                        return idx
                    }
                } else {
                    if ratings[idx] > ratings[idx - 1] && candyArray[idx] <= candyArray[idx - 1] {
                        return idx
                    }
                    if ratings[idx] > ratings[idx + 1] && candyArray[idx] <= candyArray[idx + 1] {
                        return idx
                    }
                }
            }

            return nil
        }

        let childCount = ratings.count
        var candyArray = Array(repeating: 1, count: childCount)
        var firstInvalidEntry = firstInvalidCandyEntry(candyArray)
        while firstInvalidEntry != nil {
            candyArray[firstInvalidEntry!] += 1
            firstInvalidEntry = firstInvalidCandyEntry(candyArray)
        }

        return candyArray.reduce(0, +)
    }
}
