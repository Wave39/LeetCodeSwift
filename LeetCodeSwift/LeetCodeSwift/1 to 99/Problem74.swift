//
//  Problem74.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/22/22.
//

// 74. Search a 2D Matrix
// https://leetcode.com/problems/search-a-2d-matrix/

public class Problem74 {
    public func run() {
        let solve1 = searchMatrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 3)
        print("\(solve1) -- should be true")
        let solve2 = searchMatrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 13)
        print("\(solve2) -- should be false")
    }

    public func test(_ matrix: [[Int]], _ target: Int) -> Bool {
        return searchMatrix(matrix, target)
    }

    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        for row in matrix {
            if row.last! >= target {
                return row.contains(target)
            }
        }

        return false
    }
}
