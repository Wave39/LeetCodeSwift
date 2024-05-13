//
//  Problem861.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/13/24.
//

// 861. Score After Flipping Matrix (Medium)
// https://leetcode.com/problems/score-after-flipping-matrix/

public class Problem861 {
    public func run() {
        let solve1 = matrixScore([[0, 0, 1, 1], [1, 0, 1, 0], [1, 1, 0, 0]])
        print("\(solve1) -- should be 39")
        let solve2 = matrixScore([[0]])
        print("\(solve2) -- should be 1")
    }

    public func test(_ grid: [[Int]]) -> Int {
        return matrixScore(grid)
    }

    func matrixScore(_ grid: [[Int]]) -> Int {
        var grid = grid

        // set all rows to begin with 1
        for idx in 0..<grid.count {
            if grid[idx][0] == 0 {
                grid[idx] = grid[idx].map { $0 == 0 ? 1 : 0 }
            }
        }

        // now check columns other than the first
        for idx in 1..<grid[0].count {
            var zeroCount = 0
            for rowIdx in 0..<grid.count {
                if grid[rowIdx][idx] == 0 {
                    zeroCount += 1
                }
            }

            let oneCount = grid.count - zeroCount
            if zeroCount > oneCount {
                for rowIdx in 0..<grid.count {
                    grid[rowIdx][idx] = (grid[rowIdx][idx] == 0 ? 1 : 0)
                }
            }
        }

        // and sum up the entries
        var sum = 0
        for row in grid {
            let str = row.map { String($0) }.joined()
            sum += Int(str, radix: 2)!
        }

        return sum
    }
}
