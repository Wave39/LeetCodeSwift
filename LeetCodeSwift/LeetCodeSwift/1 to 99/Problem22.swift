//
//  Problem22.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/17/24.
//

// 22. Generate Parentheses (Medium)
// https://leetcode.com/problems/generate-parentheses/

public class Problem22 {
    public func run() {
        let solve1 = generateParenthesis(3)
        print("\(solve1) -- should be [\"()()()\", \"()(())\", \"(())()\", \"(()())\", \"((()))\"]")
        let solve2 = generateParenthesis(1)
        print("\(solve2) -- should be [\"()\"]")
    }

    public func test(_ n: Int) -> [String] {
        return generateParenthesis(n)
    }

    func generateParenthesis(_ n: Int) -> [String] {
        guard n > 0 else { return [""] }

        var result = [String]()
        for idx in 0..<n {
            for entry1 in generateParenthesis(idx) {
                for entry2 in generateParenthesis(n - 1 - idx) {
                    result.append("(" + entry1 + ")" + entry2)
                }
            }
        }

        return result
    }
}
