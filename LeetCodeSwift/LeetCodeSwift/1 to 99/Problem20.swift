//
//  Problem20.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/25/22.
//

// 20. Valid Parentheses
// https://leetcode.com/problems/valid-parentheses/

public class Problem20 {
    public func run() {
        let solve1 = isValid("()")
        print("\(solve1) -- should be true")
        let solve2 = isValid("()[]{}")
        print("\(solve2) -- should be true")
        let solve3 = isValid("(]")
        print("\(solve3) -- should be false")
        let solve4 = isValid("]")
        print("\(solve4) -- should be false")
    }

    public func test(_ s: String) -> Bool {
        return isValid(s)
    }

    func isValid(_ s: String) -> Bool {
        var arr = [Character]()
        for char: Character in s {
            if char == "(" || char == "{" || char == "[" {
                arr.append(char)
            } else {
                guard let lastChar = arr.last else {
                    return false
                }
                if char == ")" {
                    if lastChar == "(" {
                        arr.removeLast()
                    } else {
                        return false
                    }
                } else if char == "}" {
                    if lastChar == "{" {
                        arr.removeLast()
                    } else {
                        return false
                    }
                } else {
                    if lastChar == "[" {
                        arr.removeLast()
                    } else {
                        return false
                    }
                }
            }
        }

        return arr.isEmpty
    }
}
