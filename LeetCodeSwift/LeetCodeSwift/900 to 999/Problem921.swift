//
//  Problem921.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/9/24.
//

// 921. Minimum Add to Make Parentheses Valid (Medium)
// https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/

// https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/solutions/5888873/swift-stackless/

public class Problem921 {
    public func run() {
        let solve1 = minAddToMakeValid("())")
        print("\(solve1) -- should be 1")
        let solve2 = minAddToMakeValid("(((")
        print("\(solve2) -- should be 3")
    }

    public func test(_ s: String) -> Int {
        return minAddToMakeValid(s)
    }

    func minAddToMakeValid(_ s: String) -> Int {
        var missingOpen = 0
        var missingClosed = 0
        for ch in s {
            missingOpen += (ch == "(" ? 1: -1)
            if missingOpen < 0 {
                missingClosed += 1
                missingOpen = 0
            }
        }

        return missingOpen + missingClosed
    }
}
