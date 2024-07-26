//
//  Problem1329.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/27/22.
//

// 1329. Sort the Matrix Diagonally (Medium)
// https://leetcode.com/problems/sort-the-matrix-diagonally/

public class Problem1329 {
    public func run() {
        let solve1 = diagonalSort([[3, 3, 1, 1], [2, 2, 1, 2], [1, 1, 1, 2]])
        print("\(solve1) -- should be [[1, 1, 1, 1], [1, 2, 2, 2], [1, 2, 3, 3]]")
        let solve2 = diagonalSort([[11, 25, 66, 1, 69, 7], [23, 55, 17, 45, 15, 52], [75, 31, 36, 44, 58, 8], [22, 27, 33, 25, 68, 4], [84, 28, 14, 11, 5, 50]])
        print("\(solve2) -- should be [[5, 17, 4, 1, 52, 7], [11, 11, 25, 45, 8, 69], [14, 23, 25, 44, 58, 15], [22, 27, 31, 36, 50, 66], [84, 28, 75, 33, 55, 68]]")
    }

    public func test(_ mat: [[Int]]) -> [[Int]] {
        return diagonalSort(mat)
    }

    func diagonalSort(_ mat: [[Int]]) -> [[Int]] {
        var matrix = mat
        let rows = mat.count
        let columns = mat[0].count

        for x in 0..<columns {
            var arr = [Int]()
            for y in 0..<rows {
                if (x + y) < columns {
                    arr.append(mat[y][x + y])
                }
            }

            arr.sort()

            for y in 0..<arr.count {
                matrix[y][x + y] = arr[y]
            }
        }

        if rows > 1 {
            for y in 1..<rows {
                var arr = [Int]()
                for x in 0..<columns {
                    if (y + x) < rows {
                        arr.append(mat[y + x][x])
                    }
                }

                arr.sort()

                for x in 0..<arr.count {
                    matrix[y + x][x] = arr[x]
                }
            }
        }

        return matrix
    }
}
