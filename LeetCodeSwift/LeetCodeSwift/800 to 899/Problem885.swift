//
//  Problem885.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/8/24.
//

// 885. Spiral Matrix III (Medium)
// https://leetcode.com/problems/spiral-matrix-iii/

// https://leetcode.com/problems/spiral-matrix-iii/solutions/5604690/swift-clean/

public class Problem885 {
    public func run() {
        let solve1 = spiralMatrixIII(1, 4, 0, 0)
        print("\(solve1) -- should be [[0, 0], [0, 1], [0, 2], [0, 3]]")
        let solve2 = spiralMatrixIII(5, 6, 1, 4)
        print("\(solve2) -- should be [[1, 4], [1, 5], [2, 5], [2, 4], [2, 3], [1, 3], [0, 3], [0, 4], [0, 5], [3, 5], [3, 4], [3, 3], [3, 2], [2, 2], [1, 2], [0, 2], [4, 5], [4, 4], [4, 3], [4, 2], [4, 1], [3, 1], [2, 1], [1, 1], [0, 1], [4, 0], [3, 0], [2, 0], [1, 0], [0, 0]]")
    }

    public func test(_ rows: Int, _ cols: Int, _ rStart: Int, _ cStart: Int) -> [[Int]] {
        return spiralMatrixIII(rows, cols, rStart, cStart)
    }

    func spiralMatrixIII(_ rows: Int, _ cols: Int, _ rStart: Int, _ cStart: Int) -> [[Int]] {
        var result = [[Int]]()
        let deltas = [0, 1, 0, -1, 0]
        var pos = [rStart, cStart]
        var direction = 0  // 0=east 1=south 2=west 3=north
        var bounds = [cStart + 1, rStart + 1, cStart - 1, rStart - 1]

        while result.count < rows * cols {
            if 0..<rows ~= pos[0], 0..<cols ~= pos[1] {
                result.append(pos)
            }

            pos = zip(pos, deltas[direction...]).map(+)
            if pos[1 - direction & 1] == bounds[direction] {
                bounds[direction] += 1 - (direction & 2)
                direction = (direction + 1) % 4
            }
        }

        return result
    }
}
