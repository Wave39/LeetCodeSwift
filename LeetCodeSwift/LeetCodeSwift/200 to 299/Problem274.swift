//
//  Problem274.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/23/22.
//

// 274. H-Index (Medium)
// https://leetcode.com/problems/h-index/

public class Problem274 {
    public func run() {
        let solve1 = hIndex([0, 1, 0])
        print("\(solve1) -- should be 1")
        let solve2 = hIndex([3, 0, 1, 2, 5, 6])
        print("\(solve2) -- should be 3")
    }

    public func test(_ arr: [Int]) -> Int {
        return hIndex(arr)
    }

    func hIndex(_ citations: [Int]) -> Int {
        if citations.count == 0 {
            return 0
        }

        var hIndex = 0
        let citationMax = citations.max()!
        if citationMax == 0 {
            return 0
        }

        for n in 1...citationMax {
            let aboveCount = citations.filter{$0 >= n}.count
            if aboveCount >= n {
                hIndex = n
            }
        }

        return hIndex
    }
}
