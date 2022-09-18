//
//  Problem42.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/17/22.
//

// 42. Trapping Rain Water
// https://leetcode.com/problems/trapping-rain-water/

// https://leetcode.com/problems/trapping-rain-water/discuss/630722/Swift-Pointers

public class Problem42 {
    public func run() {
        let solve1 = trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1])
        print("\(solve1) -- should be 6")
        let solve2 = trap([4, 2, 0, 3, 2, 5])
        print("\(solve2) -- should be 9")
    }

    public func test(_ height: [Int]) -> Int {
        return trap(height)
    }

    func trap(_ height: [Int]) -> Int {
        guard height.count > 2 else {
            return 0
        }

        var start = 0
        var end = height.count - 1

        // skip zeros on both sides
        while start < height.count && height[start] == 0 {
            start += 1
        }
        while end > 0 && height[end] == 0 {
            end -= 1
        }

        var leftHighest = 0
        var rightHighest = 0

        var leftSum = 0
        var rightSum = 0

        while start < end {
            let startVal = height[start]
            let endVal = height[end]
            if startVal < endVal {
                if startVal < leftHighest {
                    leftSum += leftHighest - startVal
                }
                else {
                    leftHighest = startVal
                }

                start += 1
            }
            else {
                if endVal < rightHighest {
                    rightSum += rightHighest - endVal
                }
                else {
                    rightHighest = endVal
                }
                end -= 1
            }
        }

        return leftSum + rightSum
    }

    func trap_naive(_ height: [Int]) -> Int {
        var retval = 0
        let heightCount = height.count
        if heightCount < 2 {
            return 0
        }

        let maxHeight = height.max()!
        for column in 1..<(heightCount - 1) {
            let leftHeight = height[0..<column]
            let rightHeight = height[column + 1..<heightCount]
            if height[column] < maxHeight {
                for height in ((height[column] + 1)...maxHeight).reversed() {
                    if leftHeight.contains(where: { $0 >= height }) && rightHeight.contains(where: { $0 >= height }) {
                        retval += 1
                    }
                }
            }
        }

        return retval
    }
}
