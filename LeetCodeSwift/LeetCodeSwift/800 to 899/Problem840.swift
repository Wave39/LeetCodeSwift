//
//  Problem840.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/9/24.
//

// 840. Magic Squares In Grid (Medium)
// https://leetcode.com/problems/magic-squares-in-grid/

// WOO HOO!!!
// Runtime: 7 ms, Beats 100.00%
// Memory: 15.92 MB, Beats 100.00%

public class Problem840 {
    public func run() {
        let solve1 = numMagicSquaresInside([[4, 3, 8, 4], [9, 5, 1, 9], [2, 7, 6, 2]])
        print("\(solve1) -- should be 1")
        let solve2 = numMagicSquaresInside([[8]])
        print("\(solve2) -- should be 0")
        let solve3 = numMagicSquaresInside([[5, 5, 5], [5, 5, 5], [5, 5, 5]])
        print("\(solve3) -- should be 0")
        let solve4 = numMagicSquaresInside([[10, 3, 5], [1, 6, 11], [7, 9, 2]])
        print("\(solve4) -- should be 0")
        let solve5 = numMagicSquaresInside([[7, 0, 5], [2, 4, 6], [3, 8, 1]])
        print("\(solve5) -- should be 0")
    }

    public func test(_ grid: [[Int]]) -> Int {
        return numMagicSquaresInside(grid)
    }

    func numMagicSquaresInside(_ grid: [[Int]]) -> Int {
        if grid.count < 3 || grid[0].count < 3 {
            return 0
        }

        var retval = 0
        for row in 0...grid.count - 3 {
            for col in 0...grid[row].count - 3 {
                let sum = grid[row][col] + grid[row][col + 1] + grid[row][col + 2]
                let numberSet: Set<Int> = [
                    grid[row][col], grid[row][col + 1], grid[row][col + 2],
                    grid[row + 1][col], grid[row + 1][col + 1], grid[row + 1][col + 2],
                    grid[row + 2][col], grid[row + 2][col + 1], grid[row + 2][col + 2],
                ]
                let filteredSet = numberSet.filter({ $0 >= 1 && $0 <= 9 })
                if filteredSet.count == 9 &&
                    sum == grid[row + 1][col] + grid[row + 1][col + 1] + grid[row + 1][col + 2] &&
                    sum == grid[row + 2][col] + grid[row + 2][col + 1] + grid[row + 2][col + 2] &&
                    sum == grid[row][col] + grid[row + 1][col] + grid[row + 2][col] &&
                    sum == grid[row][col + 1] + grid[row + 1][col + 1] + grid[row + 2][col + 1] &&
                    sum == grid[row][col + 2] + grid[row + 1][col + 2] + grid[row + 2][col + 2] && 
                    sum == grid[row][col] + grid[row + 1][col + 1] + grid[row + 2][col + 2] &&
                    sum == grid[row][col + 2] + grid[row + 1][col + 1] + grid[row + 2][col] {
                    retval += 1
                }
            }
        }

        return retval
    }
}
