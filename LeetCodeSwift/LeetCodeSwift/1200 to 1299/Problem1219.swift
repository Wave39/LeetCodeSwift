//
//  Problem1219.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/14/24.
//

// 1219. Path with Maximum Gold (Medium)
// https://leetcode.com/problems/path-with-maximum-gold/

// https://leetcode.com/problems/path-with-maximum-gold/solutions/970656/swift-easy-dfs-solution/

public class Problem1219 {
    public func run() {
        let solve1 = getMaximumGold([[0, 6, 0], [5, 8, 7], [0, 9, 0]])
        print("\(solve1) -- should be 24")
        let solve2 = getMaximumGold([[1, 0, 7], [2, 0, 6], [3, 4, 5],[0, 3, 0], [9, 0, 20]])
        print("\(solve2) -- should be 28")
        let solve3 = getMaximumGold([[0, 0, 0], [0, 0, 0], [0, 0, 0]])
        print("\(solve3) -- should be 0")
    }

    public func test(_ grid: [[Int]]) -> Int {
        return getMaximumGold(grid)
    }

    func getMaximumGold(_ grid: [[Int]]) -> Int {
        if (grid.count == 0 || grid[0].count == 0) {
            return 0
        }

        let rows = grid.count
        let cols = grid[0].count
        var input = grid
        var maxGold = 0
        for i in 0..<rows {
            for j in 0..<cols {
                if(input[i][j] != 0) {
                    maxGold = max(maxGold, processLocation(i, j, rows, cols, &input))
                }
            }
        }

        return maxGold
    }


    func processLocation(_ i: Int, _ j: Int, _ rows: Int, _ cols: Int, _ grid: inout [[Int]] ) -> Int {
        if (i < 0 || i >= rows || j < 0 || j >= cols || grid[i][j] == 0) {
            return 0
        }

        var result = grid[i][j]
        let temp = grid[i][j]
        grid[i][j] = 0

        let moves = [[1, 0], [-1, 0], [0, 1], [0, -1]]
        for move in moves {
            let x = i + move[0]
            let y = j + move[1]
            result = max(result, temp + processLocation(x, y, rows, cols, &grid))
        }

        grid[i][j] = temp
        return result
    }
}
