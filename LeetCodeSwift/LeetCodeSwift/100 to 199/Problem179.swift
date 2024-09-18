//
//  Problem179.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/18/24.
//

// 179. Largest Number (Medium)
// https://leetcode.com/problems/largest-number/

public class Problem179 {
    public func run() {
        let solve1 = largestNumber([10, 2])
        print("\(solve1) -- should be 210")
        let solve2 = largestNumber([3, 30, 34, 5, 9])
        print("\(solve2) -- should be 9534330")
        let solve3 = largestNumber([0, 0, 0, 0, 0])
        print("\(solve3) -- should be 0")
    }

    public func test(_ nums: [Int]) -> String {
        return largestNumber(nums)
    }

    func largestNumber(_ nums: [Int]) -> String {
        guard nums.first(where: { $0 > 0 }) != nil else { return "0" }
        let numStrings = nums.map { String($0) }
        let sortedNumStrings = numStrings.sorted {a, b in a + b > b + a}
        return sortedNumStrings.joined()
    }
}
