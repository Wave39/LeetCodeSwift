//
//  Problem2678.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/1/24.
//

// 2678. Number of Senior Citizens (Easy)
// https://leetcode.com/problems/number-of-senior-citizens/

public class Problem2678 {
    public func run() {
        let solve1 = countSeniors(["7868190130M7522", "5303914400F9211", "9273338290F4010"])
        print("\(solve1) -- should be 2")
        let solve2 = countSeniors(["1313579440F2036", "2921522980M5644"])
        print("\(solve2) -- should be 0")
    }

    public func test(_ details: [String]) -> Int {
        return countSeniors(details)
    }

    func countSeniors(_ details: [String]) -> Int {
        var retval = 0
        for str in details {
            let strArray = Array(str)
            let age = Int(String(strArray[11]) + String(strArray[12]))!
            if age > 60 {
                retval += 1
            }
        }

        return retval
    }
}
