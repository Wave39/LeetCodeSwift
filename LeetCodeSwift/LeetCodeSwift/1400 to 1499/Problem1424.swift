//
//  Problem1424.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/22/23.
//

// 1424. Diagonal Traverse II (Medium)
// https://leetcode.com/problems/diagonal-traverse-ii/

// WOO HOO!!
// Runtime: 826ms, Beats 100.00% of users with Swift
// Memory: 24.00MB, Beats 71.88% of users with Swift

public class Problem1424 {
    public func run() {
        let solve1 = findDiagonalOrder([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
        print("\(solve1) -- should be [1, 4, 2, 7, 5, 3, 8, 6, 9]")
        let solve2 = findDiagonalOrder([[1, 2, 3, 4, 5], [6, 7], [8], [9, 10, 11], [12, 13, 14, 15, 16]])
        print("\(solve2) -- should be [1, 6, 2, 8, 7, 3, 9, 4, 12, 10, 5, 13, 11, 14, 15, 16]")
    }

    public func test(_ nums: [[Int]]) -> [Int] {
        return findDiagonalOrder(nums)
    }

    func findDiagonalOrder(_ nums: [[Int]]) -> [Int] {
        var numbers = [(Int, Int, Int)]()
        var rowIdx = 0
        for line in nums {
            var colIdx = 0
            for entry in line {
                numbers.append((entry, rowIdx + colIdx, rowIdx * 1000000 + colIdx))
                colIdx += 1
            }

            rowIdx += 1
        }

        numbers.sort {
            if $0.1 != $1.1 {
                return $0.1 < $1.1
            } else {
                return $0.2 > $1.2
            }
        }

        return numbers.map { $0.0 }
    }
}
