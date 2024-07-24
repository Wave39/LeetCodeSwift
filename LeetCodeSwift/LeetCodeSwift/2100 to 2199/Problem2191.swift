//
//  Problem2191.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/24/24.
//

// 2191. Sort the Jumbled Numbers (Medium)
// https://leetcode.com/problems/sort-the-jumbled-numbers/

// WOO HOO!!!
// Runtime: 772 ms, Beats 100.00%
// Memory: 22.38 MB, Beats 100.00%

public class Problem2191 {
    public func run() {
        let solve1 = sortJumbled([8, 9, 4, 0, 2, 1, 3, 5, 7, 6], [991, 338, 38])
        print("\(solve1) -- should be [338, 38, 991]")
        let solve2 = sortJumbled([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], [789, 456, 123])
        print("\(solve2) -- should be [123, 456, 789]")
    }

    public func test(_ mapping: [Int], _ nums: [Int]) -> [Int] {
        return sortJumbled(mapping, nums)
    }

    func sortJumbled(_ mapping: [Int], _ nums: [Int]) -> [Int] {
        struct Element {
            var originalValue = 0
            var mappedValue = 0
            var index = 0
        }

        var elements = [Element]()
        for (index, value) in nums.enumerated() {
            var mappedValue = ""
            for char in String(value) {
                mappedValue += String(mapping[Int(String(char))!])
            }

            var element = Element()
            element.originalValue = value
            element.mappedValue = Int(mappedValue)!
            element.index = index
            elements.append(element)
        }

        elements.sort { (a, b) -> Bool in
            return a.mappedValue != b.mappedValue ? a.mappedValue < b.mappedValue : a.index < b.index
        }

        return elements.map { $0.originalValue }
    }
}
