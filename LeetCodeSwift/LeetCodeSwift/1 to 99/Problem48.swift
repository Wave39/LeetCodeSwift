//
//  Problem48.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/30/22.
//

// 48. Rotate Image
// https://leetcode.com/problems/rotate-image/

public class Problem48 {
    public func run() {
        var array1 = [[1, 2, 3],[4, 5, 6],[7, 8, 9]]
        rotate(&array1)
        print("\(array1)\n[[7, 4, 1], [8, 5, 2], [9, 6, 3]] (Expected answer)")
        var array2 = [[5, 1, 9, 11],[2, 4, 8, 10],[13, 3, 6, 7],[15, 14, 12, 16]]
        rotate(&array2)
        print("\(array2)\n[[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]] (Expected answer)")
    }

    public func test(_ matrix: inout [[Int]]) {
        rotate(&matrix)
    }

    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        let iterations = n / 2
        var len = n
        for iteration in 0..<iterations {
            var x = 0
            let y = 0
            while x < len - 1 {
                let t = matrix[y + iteration][x + iteration]
                // top left to bottom left
                let x1 = y
                let y1 = (len - 1) - x
                matrix[y + iteration][x + iteration] = matrix[y1 + iteration][x1 + iteration]
                // bottom left to bottom right
                let x2 = y1
                let y2 = (len - 1) - x1
                matrix[y1 + iteration][x1 + iteration] = matrix[y2 + iteration][x2 + iteration]
                // bottom right to top right
                let x3 = y2
                let y3 = (len - 1) - x2
                matrix[y2 + iteration][x2 + iteration] = matrix[y3 + iteration][x3 + iteration]
                matrix[y3 + iteration][x3 + iteration] = t
                x += 1
            }

            len -= 2
        }
    }
}
