//
//  Problem1717.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/12/24.
//

// 1717. Maximum Score From Removing Substrings (Medium)
// https://leetcode.com/problems/maximum-score-from-removing-substrings/

// https://leetcode.com/problems/maximum-score-from-removing-substrings/solutions/5463946/easy-swift-solution-beats-100-in-runtime-100-in-memory/

public class Problem1717 {
    public func run() {
        let solve1 = maximumGain("cdbcbbaaabab", 4, 5)
        print("\(solve1) -- should be 19")
        let solve2 = maximumGain("aabbaaxybbaabb", 5, 4)
        print("\(solve2) -- should be 20")
    }

    public func test(_ s: String, _ x: Int, _ y: Int) -> Int {
        return maximumGain(s, x, y)
    }

    func maximumGain(_ s: String, _ x: Int, _ y: Int) -> Int {
        var (stack1, stack2) = ([Character](), [Character]())
        let (maxVal, minVal) = (max(x, y), min(x, y))
        let (first, second): (Character, Character) = ((x > y ? "a" : "b"), (x > y ? "b" : "a"))
        var result = 0

        for i in s {
            if !stack1.isEmpty && stack1[stack1.count - 1] == first && i == second {
                result += maxVal
                stack1.removeLast()
            } else {
                stack1.append(i)
            }
        }

        while !stack1.isEmpty {
            let i = stack1[stack1.count - 1]
            stack1.removeLast()
            if !stack2.isEmpty && stack2[stack2.count - 1] == first && i == second {
                result += minVal
                stack2.removeLast()
            } else {
                stack2.append(i)
            }
        }

        return result
    }

    func maximumGain_naive(_ s: String, _ x: Int, _ y: Int) -> Int {
        var str = s
        var retval = 0
        while (true) {
            let xRange = str.range(of: "ab")
            let yRange = str.range(of: "ba")
            if xRange == nil && yRange == nil {
                return retval
            }

            if xRange != nil && yRange != nil {
                if x > y {
                    retval += x
                    str.removeSubrange(xRange!)
                } else {
                    retval += y
                    str.removeSubrange(yRange!)
                }
            } else if xRange == nil {
                retval += y
                str.removeSubrange(yRange!)
            } else {
                retval += x
                str.removeSubrange(xRange!)
            }
        }
    }
}
