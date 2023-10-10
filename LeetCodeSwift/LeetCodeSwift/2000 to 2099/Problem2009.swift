//
//  Problem2009.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/10/23.
//

// 2009. Minimum Number of Operations to Make Array Continuous (Hard)
// https://leetcode.com/problems/minimum-number-of-operations-to-make-array-continuous/

// My naive attempt to just look for dupes and changes needed from the boundary was wrong in ways that
// I cannot begin to comprehend. I guess that is why this one is classified as Hard.
// https://leetcode.com/problems/minimum-number-of-operations-to-make-array-continuous/solutions/4152099/swift-optimal-solution-sliding-window/

public class Problem2009 {
    public func run() {
        let solve1 = minOperations([4, 2, 5, 3])
        print("\(solve1) -- should be 0")
        let solve2 = minOperations([1, 2, 3, 5, 6])
        print("\(solve2) -- should be 1")
        let solve3 = minOperations([1, 10, 100, 1000])
        print("\(solve3) -- should be 3")
        let solve4 = minOperations([8, 5, 9, 9, 8, 4])
        print("\(solve4) -- should be 2")
        let solve5 = minOperations([41, 33, 29, 33, 35, 26, 47, 24, 18, 28])
        print("\(solve5) -- should be 5")
    }

    public func test(_ nums: [Int]) -> Int {
        return minOperations(nums)
    }

    func minOperations(_ nums: [Int]) -> Int {
        let uniqueNums = Array(Set(nums)).sorted()
        let n = uniqueNums.count

        var result = 0
        var right = 0

        for left in 0..<n {
            while right < n && uniqueNums[right] - uniqueNums[left] < nums.count {
                right += 1
            }

            result = max(result, right - left)
        }

        return nums.count - result
    }

    func minOperationsFromMin(_ nums: [Int]) -> Int {
        var count = 0
        var numberSet = Set<Int>()
        if let numsMin = nums.min() {
            for number in nums {
                if number >= numsMin + nums.count {
                    count += 1
                } else if numberSet.contains(number) {
                    count += 1
                } else {
                    numberSet.insert(number)
                }
            }
        }

        return count
    }

    func minOperationsFromMax(_ nums: [Int]) -> Int {
        var count = 0
        var numberSet = Set<Int>()
        if let numsMax = nums.max() {
            for number in nums {
                if number <= numsMax - nums.count {
                    count += 1
                } else if numberSet.contains(number) {
                    count += 1
                } else {
                    numberSet.insert(number)
                }
            }
        }

        return count
    }

    func minOperations_wrong(_ nums: [Int]) -> Int {
        let countFromMin = minOperationsFromMin(nums)
        let countFromMax = minOperationsFromMax(nums)
        return min(countFromMin, countFromMax)
    }
}
