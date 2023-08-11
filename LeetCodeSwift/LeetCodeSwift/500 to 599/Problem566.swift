//
//  Problem566.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/20/22.
//

// 566. Reshape the Matrix (Easy)
// https://leetcode.com/problems/reshape-the-matrix/

public class Problem566 {
    public func run() {
        let solve1 = matrixReshape([[1, 2], [3, 4]], 1, 4)
        print("\(solve1) -- should be [[1, 2, 3, 4]]")
        let solve2 = matrixReshape([[1, 2], [3, 4]], 2, 4)
        print("\(solve2) -- should be [[1, 2], [3, 4]]")
    }

    public func test(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        return matrixReshape(mat, r, c)
    }

    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let arr = mat.flatMap { $0 }
        if arr.count != r * c {
            return mat
        }

        var retval = Array(repeating: Array(repeating: 0, count: c), count: r)
        var x = 0
        var y = 0
        var idx = 0
        while idx < r * c {
            retval[y][x] = arr[idx]
            x += 1
            if x == c {
                x = 0
                y += 1
            }

            idx += 1
        }

        return retval
    }
}
