//
//  Problem241.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/19/24.
//

// 241. Different Ways to Add Parentheses (Medium)
// https://leetcode.com/problems/different-ways-to-add-parentheses/

// https://leetcode.com/problems/different-ways-to-add-parentheses/solutions/4990623/swift/

public class Problem241 {
    public func run() {
        let solve1 = diffWaysToCompute("2-1-1")
        print("\(solve1) -- should be [2, 0]")
        let solve2 = diffWaysToCompute("2*3-4*5")
        print("\(solve2) -- should be [-34, -10, -14, -10, 10]")
    }

    public func test(_ expression: String) -> [Int] {
        return diffWaysToCompute(expression)
    }

    func diffWaysToCompute(_ expression: String) -> [Int] {
        if let num = Int(expression) {
            return [num]
        }

        var result = [Int]()

        for (i, char) in expression.enumerated() {
            if "+-*".contains(char) {
                let left = diffWaysToCompute(String(expression[expression.startIndex..<expression.index(expression.startIndex, offsetBy: i)]))
                let right = diffWaysToCompute(String(expression[expression.index(expression.startIndex, offsetBy: i + 1)..<expression.endIndex]))

                for l in left {
                    for r in right {
                        switch char {
                        case "+":
                            result.append(l + r)
                        case "-":
                            result.append(l - r)
                        case "*":
                            result.append(l * r)
                        default:
                            break
                        }
                    }
                }
            }
        }

        return result
    }
}
