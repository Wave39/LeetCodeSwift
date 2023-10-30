//
//  Problem11.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/30/23.
//

// 11. Container With Most Water (Medium)
// https://leetcode.com/problems/container-with-most-water/

// I kind of figured that the bubble sort method might take too long.
// Luckily the hints were spot on and not too hard to implement.

public class Problem11 {
    public func run() {
        let solve1 = maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7])
        print("\(solve1) -- should be 49")
        let solve2 = maxArea([1, 1])
        print("\(solve2) -- should be 1")
    }

    public func test(_ height: [Int]) -> Int {
        return maxArea(height)
    }

    func maxArea(_ height: [Int]) -> Int {
        var retval = 0
        var leftIdx = 0
        var rightIdx = height.count - 1
        while leftIdx != rightIdx {
            let val = (rightIdx - leftIdx) * min(height[leftIdx], height[rightIdx])
            if val > retval {
                retval = val
            }

            if height[leftIdx] < height[rightIdx] {
                leftIdx += 1
            } else {
                rightIdx -= 1
            }
        }

        return retval
    }

    func maxArea_naive(_ height: [Int]) -> Int {
        var retval = 0
        let ctr = height.count
        for i in 0..<(ctr - 1) {
            for j in 1..<ctr {
                let val = (j - i) * min(height[i], height[j])
                if val > retval {
                    retval = val
                }
            }
        }

        return retval
    }
}
