//
//  Problem2800.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/22/24.
//

// 2800. Shortest String That Contains Three Strings (Medium)
// https://leetcode.com/problems/shortest-string-that-contains-three-strings/

import Foundation

public class Problem2800 {
    public func run() {
        let solve1 = minimumString("abc", "bca", "aaa")
        print("\(solve1) -- should be aaabca")
        let solve2 = minimumString("ab", "ba", "aba")
        print("\(solve2) -- should be aba")
        let solve3 = minimumString("cab", "a", "b")
        print("\(solve3) -- should be cab")
    }

    public func test(_ a: String, _ b: String, _ c: String) -> String {
        return minimumString(a, b, c)
    }

    // I was running out of time for the day and not all that interested in trying to figure out why my string indexes
    // were getting all bolluxed up...
    // https://leetcode.com/problems/shortest-string-that-contains-three-strings/solutions/3837307/solution-in-swift/

    private func merge(_ s1: String, _ s2: String) -> String {
        if s1.contains(s2) {
            return s1
        }

        for i in s1.indices {
            if s2.starts(with: s1[i...]) {
                return String(s1[..<i]) + s2
            }
        }

        return s1 + s2
    }

    func minimumString(_ a: String, _ b: String, _ c: String) -> String {
        var res = ""
        var l = Int.max

        for s in [
            merge(merge(a, b), c),
            merge(merge(b, a), c),
            merge(merge(c, b), a),
            merge(merge(b, c), a),
            merge(merge(a, c), b),
            merge(merge(c, a), b)
        ] {
            if s.count < l {
                res = s
                l = s.count
            } else if s.count == l {
                res = min(res, s)
            }
        }

        return res
    }
}
