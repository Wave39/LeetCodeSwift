//
//  Problem1310.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/13/24.
//

// 1310. XOR Queries of a Subarray (Medium)
// https://leetcode.com/problems/xor-queries-of-a-subarray/

// https://leetcode.com/problems/xor-queries-of-a-subarray/solutions/3068537/simple-solution-clear-solution/

public class Problem1310 {
    public func run() {
        let solve1 = xorQueries([1, 3, 4, 8], [[0, 1], [1, 2], [0, 3], [3, 3]])
        print("\(solve1) -- should be [2, 7, 14, 8]")
        let solve2 = xorQueries([4, 8, 2, 10], [[2, 3], [1, 3], [0, 0], [0, 3]])
        print("\(solve2) -- should be [8, 0, 4, 4]")
    }

    public func test(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
        return xorQueries(arr, queries)
    }

    func xorQueries(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
        var result: [Int] = []
        for i in 0..<queries.count {
            var count = 0
            for j in (queries[i][0]...queries[i][1]) {
                count ^= arr[j]
            }

            result.append(count)
        }

        return result
    }
}
