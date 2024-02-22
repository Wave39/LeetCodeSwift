//
//  Problem1980.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/16/23.
//

// 1980. Find Unique Binary String (Medium)
// https://leetcode.com/problems/find-unique-binary-string/

// WOO HOO!!!
// Runtime: 0ms, Beats 100.00% of users with Swift
// Memory: 14.64MB, Beats 75.00% of users with Swift

public class Problem1980 {
    public func run() {
        let solve1 = findDifferentBinaryString(["01", "10"])
        print("\(solve1) -- should be 00")
        let solve2 = findDifferentBinaryString(["00", "01"])
        print("\(solve2) -- should be 10")
        let solve3 = findDifferentBinaryString(["111", "011", "001"])
        print("\(solve3) -- should be 000")
    }

    public func test(_ nums: [String]) -> String {
        return findDifferentBinaryString(nums)
    }

    func findDifferentBinaryString(_ nums: [String]) -> String {
        let intArray = nums.map { Int($0, radix: 2) ?? 0 }
        var idx = 0
        while intArray.contains(idx) {
            idx += 1
        }

        var retval = String(idx, radix: 2)
        while retval.count < nums.count {
            retval = "0" + retval
        }

        return retval
    }
}
