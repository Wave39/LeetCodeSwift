//
//  Problem1598.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/10/24.
//

// 1598. Crawler Log Folder (Easy)
// https://leetcode.com/problems/crawler-log-folder/

public class Problem1598 {
    public func run() {
        let solve1 = minOperations(["d1/","d2/","../","d21/","./"])
        print("\(solve1) -- should be 2")
        let solve2 = minOperations(["d1/","d2/","./","d3/","../","d31/"])
        print("\(solve2) -- should be 3")
        let solve3 = minOperations(["d1/","../","../","../"])
        print("\(solve3) -- should be 0")
    }

    public func test(_ logs: [String]) -> Int {
        return minOperations(logs)
    }

    func minOperations(_ logs: [String]) -> Int {
        var level = 0
        for path in logs {
            if path == "../" {
                if level > 0 {
                    level -= 1
                }
            } else if path != "./" {
                level += 1
            }
        }

        return level
    }
}
