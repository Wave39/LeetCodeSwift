//
//  Problem1614.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/4/24.
//

// 1614. Maximum Nesting Depth of the Parentheses (Easy)
// https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

public class Problem1614 {
    public func run() {
        let solve1 = maxDepth("")
        print("\(solve1) -- should be 0")
        let solve2 = maxDepth("()()")
        print("\(solve2) -- should be 1")
        let solve3 = maxDepth("()(()())")
        print("\(solve3) -- should be 2")
        let solve4 = maxDepth("(1+(2*3)+((8)/4))+1")
        print("\(solve4) -- should be 3")
        let solve5 = maxDepth("(1)+((2))+(((3)))")
        print("\(solve5) -- should be 3")
    }

    public func test(_ s: String) -> Int {
        return maxDepth(s)
    }

    func maxDepth(_ s: String) -> Int {
        var retval = 0
        var level = 0
        for c in s {
            if c == "(" {
                level += 1
                if level > retval {
                    retval = level
                }
            } else if c == ")" {
                level -= 1
            }
        }

        return retval
    }
}
