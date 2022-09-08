//
//  Problem278.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/8/22.
//

// 278. First Bad Version
// https://leetcode.com/problems/first-bad-version/

public class Problem278 {
    public static var currentBadVersion = 0

    public func run() {
        Problem278.currentBadVersion = 4
        let solve1 = firstBadVersion(5)
        print("\(solve1) -- should be 4")

        Problem278.currentBadVersion = 1
        let solve2 = firstBadVersion(1)
        print("\(solve2) -- should be 1")
    }

    public func test(_ n: Int) -> Int {
        return firstBadVersion(n)
    }

    func isBadVersion(_ version: Int) -> Bool {
        return version >= Problem278.currentBadVersion
    }

    func firstBadVersion(_ n: Int) -> Int {
        var low = 1
        var high = n
        var indexBad = 0
        var indexGood = 0
        while (indexBad - indexGood) != 1 {
            let mid = (low + high) / 2
            if isBadVersion(mid) {
                indexBad = mid
                high = mid - 1
            } else {
                indexGood = mid
                low = mid + 1
            }
        }

        return indexBad
    }
}
