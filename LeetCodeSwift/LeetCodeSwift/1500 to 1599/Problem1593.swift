//
//  Problem1593.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/21/24.
//

// 1593. Split a String Into the Max Number of Unique Substrings (Medium)
// https://leetcode.com/problems/split-a-string-into-the-max-number-of-unique-substrings/

// https://leetcode.com/problems/split-a-string-into-the-max-number-of-unique-substrings/solutions/5944990/swift-bit-mask/

public class Problem1593 {
    public func run() {
        let solve1 = maxUniqueSplit("ababccc")
        print("\(solve1) -- should be 5")
        let solve2 = maxUniqueSplit("aba")
        print("\(solve2) -- should be 2")
        let solve3 = maxUniqueSplit("aa")
        print("\(solve3) -- should be 1")
    }

    public func test(_ s: String) -> Int {
        return maxUniqueSplit(s)
    }

    func maxUniqueSplit(_ s: String) -> Int {
        let s = Array(s)
        let n = s.count
        var res = 0

        for var bitMask in 0..<(1 << (n - 1)) {
            bitMask |= 1 << (n - 1)
            var substrings = [ArraySlice<Character>]()
            var lastStartIndex = -1
            for i in 0..<n {
                if bitMask & (1 << i) != 0 {
                    substrings.append(s[(lastStartIndex + 1)...i])
                    lastStartIndex = i
                }
            }

            if substrings.count == Set(substrings).count {
                res = max(res, substrings.count)
            }
        }

        return res
    }
}
