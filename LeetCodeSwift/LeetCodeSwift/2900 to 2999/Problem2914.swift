//
//  Problem2914.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/5/24.
//

// 2914. Minimum Number of Changes to Make Binary String Beautiful (Medium)
// https://leetcode.com/problems/minimum-number-of-changes-to-make-binary-string-beautiful/

// https://leetcode.com/problems/minimum-number-of-changes-to-make-binary-string-beautiful/solutions/6008428/swift/

public class Problem2914 {
    public func run() {
        let solve1 = minChanges("1001")
        print("\(solve1) -- should be 2")
        let solve2 = minChanges("10")
        print("\(solve2) -- should be 1")
        let solve3 = minChanges("0000")
        print("\(solve3) -- should be 0")
    }

    public func test(_ s: String) -> Int {
        return minChanges(s)
    }

    func minChanges(_ s: String) -> Int {
        var prev = s.first!
        var result = 0
        for (i, ch) in s.enumerated() where ch != prev {
            result += i & 1
            prev = [ch, prev][i & 1]
        }

        return result
    }
}
