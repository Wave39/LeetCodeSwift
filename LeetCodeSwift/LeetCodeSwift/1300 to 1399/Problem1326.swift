//
//  Problem1326.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/31/23.
//

// 1326. Minimum Number of Taps to Open to Water a Garden (Hard)
// https://leetcode.com/problems/minimum-number-of-taps-to-open-to-water-a-garden/

// WOO HOO!!!
// Runtime: 62ms, Beats 100.00% of users with Swift
// Memory: 14.19MB, Beats 100.00% of users with Swift

public class Problem1326 {
    public func run() {
        let solve1 = minTaps(5, [3, 4, 1, 1, 0, 0])
        print("\(solve1) -- should be 1")
        let solve2 = minTaps(3, [0, 0, 0, 0])
        print("\(solve2) -- should be -1")
        let solve3 = minTaps(5, [3, 0, 1, 1, 0, 0])
        print("\(solve3) -- should be -1")
    }

    public func test(_ n: Int, _ ranges: [Int]) -> Int {
        return minTaps(n, ranges)
    }

    func minTaps(_ n: Int, _ ranges: [Int]) -> Int {
        var coverages = [(Int, Int)]()
        for idx in 0...n {
            if ranges[idx] > 0 {
                coverages.append((idx - ranges[idx], idx + ranges[idx]))
            }
        }

        var pos = 0
        var taps = 0
        while pos < n {
            let filteredCoverages = coverages.filter { $0.0 <= pos && pos <= $0.1 }
            if filteredCoverages.isEmpty {
                return -1
            }

            taps += 1
            let newpos = filteredCoverages.map { $0.1 }.max()!
            if newpos == pos {
                return -1
            }

            pos = newpos
        }

        return taps
    }
}
