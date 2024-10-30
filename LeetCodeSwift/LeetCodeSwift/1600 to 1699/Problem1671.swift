//
//  Problem1671.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/30/24.
//

// 1671. Minimum Number of Removals to Make Mountain Array (Hard)
// https://leetcode.com/problems/minimum-number-of-removals-to-make-mountain-array/

// https://leetcode.com/problems/minimum-number-of-removals-to-make-mountain-array/solutions/3510338/swift-lis-with-time-complexity-o-nlogn/

public class Problem1671 {
    public func run() {
        let solve1 = minimumMountainRemovals([1, 3, 1])
        print("\(solve1) -- should be 0")
        let solve2 = minimumMountainRemovals([2, 1, 1, 5, 6, 2, 3, 1])
        print("\(solve2) -- should be 3")
    }

    public func test(_ nums: [Int]) -> Int {
        return minimumMountainRemovals(nums)
    }

    func minimumMountainRemovals(_ nums: [Int]) -> Int {
        let count = nums.count
        let reversedNums = Array(nums.reversed())
        let lisLengthsFromStart = findLisLengths(nums)
        let lisLengthsFromEnd = findLisLengths(reversedNums)
        let lengthOfMountainRange: [Int] = Array(0..<count).map {
            let leftRangeLength = lisLengthsFromStart[$0]
            let rightRangeLength = lisLengthsFromEnd[count - 1 - $0]
            if leftRangeLength == 0 || rightRangeLength == 0 {
                return 0
            }

            return leftRangeLength + rightRangeLength + 1
        }

        return count - lengthOfMountainRange.max()!
    }

    private func findLisLengths(_ nums: [Int]) -> [Int] {
        var lis: [Int] = [Int.max]
        var lisLength: [Int] = []
        var curLength = 0
        for i in 0..<nums.count {
            let lastLisValue = lis.last!
            let newValue = nums[i]
            if lastLisValue < newValue {
                lis.append(newValue)
                curLength += 1
            } else {
                let index = findIndexOfFirstValueLargerOrEqualTo(newValue, lis)
                lis[index] = newValue
            }

            lisLength.append(curLength)
        }

        return lisLength
    }

    private func findIndexOfFirstValueLargerOrEqualTo(_ value: Int, _ lis: [Int]) -> Int {
        var low = 0
        var high = lis.count - 1
        while low < high {
            let mid = low + (high - low) / 2
            if lis[mid] < value {
                low = mid + 1
            } else {
                high = mid
            }
        }

        return low
    }
}
