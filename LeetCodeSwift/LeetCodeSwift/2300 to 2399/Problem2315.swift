//
//  Problem2315.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/25/22.
//

// 2315. Count Asterisks
// https://leetcode.com/problems/count-asterisks/

public class Problem2315 {
    public func run() {
        let solve1 = countAsterisks("l|*e*et|c**o|*de|")
        print("\(solve1) -- should be 2")
        let solve2 = countAsterisks("iamprogrammer")
        print("\(solve2) -- should be 0")
        let solve3 = countAsterisks("yo|uar|e**|b|e***au|tifu|l")
        print("\(solve3) -- should be 5")
    }

    public func test(_ s: String) -> Int {
        return countAsterisks(s)
    }

    func countAsterisks(_ s: String) -> Int {
        var asteriskCount = 0
        var pipeCount = 0
        for c in s {
            if c == "|" {
                pipeCount += 1
            } else if c == "*" {
                if pipeCount % 2 == 0 {
                    asteriskCount += 1
                }
            }
        }

        return asteriskCount
    }
}
