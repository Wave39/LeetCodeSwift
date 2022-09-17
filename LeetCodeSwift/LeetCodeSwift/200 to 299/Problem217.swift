//
//  Problem217.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/17/22.
//

// 217. Contains Duplicate
// https://leetcode.com/problems/contains-duplicate/

public class Problem217 {
    public func run() {
        let solve1 = containsDuplicate([1, 2, 3, 1])
        print("\(solve1) -- should be true")
        let solve2 = containsDuplicate([1, 2, 3, 4])
        print("\(solve2) -- should be false")
        let solve3 = containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2])
        print("\(solve3) -- should be true")
    }

    public func test(_ nums: [Int]) -> Bool {
        return containsDuplicate(nums)
    }

    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>()
        for num in nums {
            if set.contains(num) {
                return true
            }

            set.insert(num)
        }
        
        return false
    }
}
