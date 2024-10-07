//
//  Problem2696.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/7/24.
//

// 2696. Minimum String Length After Removing Substrings (Easy)
// https://leetcode.com/problems/minimum-string-length-after-removing-substrings/

public class Problem2696 {
    public func run() {
        let solve1 = minLength("ABFCACDB")
        print("\(solve1) -- should be 2")
        let solve2 = minLength("ACBBD")
        print("\(solve2) -- should be 5")
    }

    public func test(_ s: String) -> Int {
        return minLength(s)
    }

    func minLength(_ s: String) -> Int {
        var s = s
        while true {
            let originalLength = s.count
            s = s.replacingOccurrences(of: "AB", with: "").replacingOccurrences(of: "CD", with: "")
            if originalLength == s.count {
                return s.count
            }
        }
    }
}
