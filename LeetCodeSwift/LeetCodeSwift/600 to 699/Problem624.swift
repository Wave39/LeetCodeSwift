//
//  Problem624.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/16/24.
//

// 624. Maximum Distance in Arrays (Medium)
// https://leetcode.com/problems/maximum-distance-in-arrays/

// https://leetcode.com/problems/maximum-distance-in-arrays/solutions/5644838/greedy-algorithm/

public class Problem624 {
    public func run() {
        let solve1 = maxDistance([[1, 2, 3], [4, 5], [1, 2, 3]])
        print("\(solve1) -- should be 4")
        let solve2 = maxDistance([[1], [1]])
        print("\(solve2) -- should be 0")
    }

    public func test(_ arrays: [[Int]]) -> Int {
        return maxDistance(arrays)
    }

    func maxDistance(_ arrays: [[Int]]) -> Int {
        var minValue = arrays[0].first!
        var maxValue = arrays[0].last!
        var retval = 0

        for array in arrays[1...] {
            let minElement = array.first!
            let maxElement = array.last!

            retval = max(retval, maxElement - minValue)
            retval = max(retval, maxValue - minElement)

            minValue = min(minValue, minElement)
            maxValue = max(maxValue, maxElement)
        }

        return retval
    }
}
