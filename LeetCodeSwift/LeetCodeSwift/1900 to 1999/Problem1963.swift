//
//  Problem1963.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/8/24.
//

// 1963. Minimum Number of Swaps to Make the String Balanced (Medium)
// https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/

// https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/solutions/5887544/easy-with-stacks-swift/

public class Problem1963 {
    public func run() {
        let solve1 = minSwaps("][][")
        print("\(solve1) -- should be 1")
        let solve2 = minSwaps("]]][[[")
        print("\(solve2) -- should be 2")
        let solve3 = minSwaps("[]")
        print("\(solve3) -- should be 0")
    }

    public func test(_ s: String) -> Int {
        return minSwaps(s)
    }

    func minSwaps(_ s: String) -> Int {
        let arr = Array(s)
        var stack: [Character] = []

        for i in arr {
            if stack.isEmpty {
                stack.append(i)
                continue
            }

            if i == "]" && stack.last! == "[" {
                _ = stack.popLast()
            } else {
                stack.append(i)
            }
        }

        return ((stack.count / 2) + 1) / 2
    }
}
