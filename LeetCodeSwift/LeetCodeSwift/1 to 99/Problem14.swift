//
//  Problem14.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 2/29/24.
//

// 14. Longest Common Prefix (Easy)
// https://leetcode.com/problems/longest-common-prefix/

public class Problem14 {
    public func run() {
        let solve1 = longestCommonPrefix(["flower", "flow", "flight"])
        print("\"\(solve1)\" -- should be \"fl\"")
        let solve2 = longestCommonPrefix(["dog", "racecar", "car"])
        print("\"\(solve2)\" -- should be \"\"(empty string)")
    }

    public func test(_ strs: [String]) -> String {
        return longestCommonPrefix(strs)
    }

    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = ""
        let chars = Array(strs[0]).map { String($0) }
        for idx in 0..<chars.count {
            prefix += chars[idx]
            let ctr = strs.filter { $0.hasPrefix(prefix) }.count
            if ctr < strs.count {
                let index1 = prefix.index(prefix.endIndex, offsetBy: -1)
                return String(prefix[..<index1])
            }
        }

        return prefix
    }
}
