//
//  Problem3005.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/8/24.
//

// 3005. Count Elements With Maximum Frequency (Easy)
// https://leetcode.com/problems/count-elements-with-maximum-frequency/

public class Problem3005 {
    public func run() {
        let solve1 = maxFrequencyElements([1, 2, 2, 3, 1, 4])
        print("\(solve1) -- should be 4")
        let solve2 = maxFrequencyElements([1, 2, 3, 4, 5])
        print("\(solve2) -- should be 5")
    }

    public func test(_ nums: [Int]) -> Int {
        return maxFrequencyElements(nums)
    }

    func maxFrequencyElements(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        nums.forEach { dict[$0, default: 0] += 1 }
        let counts = dict.values.sorted()
        return counts.last! * counts.filter { $0 == counts.last! }.count
    }
}
