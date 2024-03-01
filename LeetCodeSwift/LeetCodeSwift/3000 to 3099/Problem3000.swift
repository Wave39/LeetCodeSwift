//
//  Problem3000.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/1/24.
//

// 3000. Maximum Area of Longest Diagonal Rectangle (Easy)
// https://leetcode.com/problems/maximum-area-of-longest-diagonal-rectangle/

// WOO HOO!!!
// Runtime: 21 ms, Beats 97.87% of users with Swift
// Memory: 15.29 MB, Beats 89.36% of users with Swift

public class Problem3000 {
    public func run() {
        let solve1 = areaOfMaxDiagonal([[9, 3], [8, 6]])
        print("\(solve1) -- should be 48")
        let solve2 = areaOfMaxDiagonal([[3, 4], [4, 3]])
        print("\(solve2) -- should be 12")
        let solve3 = areaOfMaxDiagonal([
            [4, 7], [8, 9], [5, 3], [6, 10], [2, 9],
            [3, 10], [2, 2], [5, 8], [5, 10], [5, 6],
            [8, 9], [10, 7], [8, 9], [3, 7], [2, 6],
            [5, 1], [7, 4], [1, 10], [1, 7], [6, 9],
            [3, 3], [4, 6], [8, 2], [10, 6], [7, 9],
            [9, 2], [1, 2], [3, 8], [10, 2], [4, 1],
            [9, 7], [10, 3], [6, 9], [9, 8], [7, 7],
            [5, 7], [5, 4], [6, 5], [1, 8], [2, 3],
            [7, 10], [3, 9], [5, 7], [2, 4], [5, 6],
            [9, 5], [8, 8], [8, 10], [6, 8], [5, 1],
            [10, 8], [7, 4], [2, 1], [2, 7], [10, 3],
            [2, 5], [7, 6], [10, 5], [10, 9], [5, 7],
            [10, 6], [4, 3], [10, 4], [1, 5], [8, 9],
            [3, 1], [2, 5], [9, 10], [6, 6], [5, 10],
            [10, 2], [6, 10], [1, 1], [8, 6], [1, 7],
            [6, 3], [9, 3], [1, 4], [1, 1], [10, 4],
            [7, 9], [4, 5], [2, 8], [7, 9], [7, 3],
            [4, 9], [2, 8], [4, 6], [9, 1], [8, 4],
            [2, 4], [7, 8], [3, 5], [7, 6], [8, 6],
            [4, 7], [25, 60], [39, 52], [16, 63], [33, 56]
        ])
        print("\(solve3) -- should be 2028")
    }

    public func test(_ dimensions: [[Int]]) -> Int {
        return areaOfMaxDiagonal(dimensions)
    }

    func areaOfMaxDiagonal(_ dimensions: [[Int]]) -> Int {
        var maxDiagonal = 0.0
        var retval = 0
        for dimension in dimensions {
            let diagonal = Double(dimension[0] * dimension[0] + dimension[1] * dimension[1]).squareRoot()
            if diagonal > maxDiagonal {
                maxDiagonal = diagonal
                retval = dimension[0] * dimension[1]
            } else if diagonal == maxDiagonal {
                if dimension[0] * dimension[1] > retval {
                    retval = dimension[0] * dimension[1]
                }
            }
        }

        return retval
    }
}
