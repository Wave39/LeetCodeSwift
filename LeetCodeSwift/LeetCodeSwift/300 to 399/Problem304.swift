//
//  Problem304.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/23/22.
//

public class Problem304 {
    class NumMatrix {
        var m: [[Int]]
        init(_ matrix: [[Int]]) {
            m = matrix
        }

        func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
            var t = 0
            for r in row1...row2 {
                for c in col1...col2 {
                    t = t + m[r][c]
                }
            }

            return t
        }
    }

    public func solve() {
        let matrix = NumMatrix([
            [3, 0, 1, 4, 2],
            [5, 6, 3, 2, 1],
            [1, 2, 0, 1, 5],
            [4, 1, 0, 1, 7],
            [1, 0, 3, 0, 5]
        ])

        let solve1 = matrix.sumRegion(2, 1, 4, 3) // 8
        print("\(solve1) -- should be 8")
        let solve2 = matrix.sumRegion(1, 1, 2, 2) // 11
        print("\(solve2) -- should be 11")
        let solve3 = matrix.sumRegion(1, 2, 2, 4) // 12
        print("\(solve3) -- should be 12")
    }

    public func test(_ arr: [[Int]], _ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        let matrix = NumMatrix(arr)

        return matrix.sumRegion(row1, col1, row2, col2)
    }
}
