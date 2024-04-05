//
//  Problem1544.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/5/24.
//

// 1544. Make The String Great (Easy)
// https://leetcode.com/problems/make-the-string-great/

public class Problem1544 {
    public func run() {
        let solve1 = makeGood("leEeetcode")
        print("\"\(solve1)\" -- should be \"leetcode\"")
        let solve2 = makeGood("abBAcC")
        print("\"\(solve2)\" -- should be \"\" (empty string)")
        let solve3 = makeGood("s")
        print("\"\(solve3)\" -- should be \"s\"")
    }

    public func test(_ s: String) -> String {
        return makeGood(s)
    }

    func makeGood(_ s: String) -> String {
        var sArray = Array(s)
        while true {
            if sArray.count < 2 {
                return String(sArray)
            }

            var replacements = false
            for idx in 0..<(sArray.count - 1) {
                if sArray[idx].lowercased() == sArray[idx + 1].lowercased() && sArray[idx] != sArray[idx + 1] {
                    replacements = true
                    sArray.remove(at: idx + 1)
                    sArray.remove(at: idx)
                    break
                }
            }

            if !replacements {
                return String(sArray)
            }
        }
    }
}
