//
//  Problem1957.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/1/24.
//

// 1957. Delete Characters to Make Fancy String (Easy)
// https://leetcode.com/problems/delete-characters-to-make-fancy-string/

// https://leetcode.com/problems/delete-characters-to-make-fancy-string/solutions/5862653/swift/

public class Problem1957 {
    public func run() {
        let solve1 = makeFancyString("leeetcode")
        print("\(solve1) -- should be leetcode")
        let solve2 = makeFancyString("aaabaaaa")
        print("\(solve2) -- should be aabaa")
        let solve3 = makeFancyString("aab")
        print("\(solve3) -- should be aab")
    }

    public func test(_ s: String) -> String {
        return makeFancyString(s)
    }

    func makeFancyString(_ s: String) -> String {
        var result = ""
        var streak = 1
        for ch in s {
            streak = (ch == result.last ? streak + 1 : 1)
            guard streak < 3 else { continue }
            result.append(ch)
        }

        return result
    }
}
