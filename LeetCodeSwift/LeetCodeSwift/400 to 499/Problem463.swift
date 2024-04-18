//
//  Problem463.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/18/24.
//

// 463. Island Perimeter (Easy)
// https://leetcode.com/problems/island-perimeter/

public class Problem463 {
    public func run() {
        let solve1 = islandPerimeter([[0, 1, 0, 0], [1, 1, 1, 0], [0, 1, 0, 0], [1, 1, 0, 0]])
        print("\(solve1) -- should be 16")
        let solve2 = islandPerimeter([[1]])
        print("\(solve2) -- should be 4")
        let solve3 = islandPerimeter([[1, 0]])
        print("\(solve3) -- should be 4")
    }

    public func test(_ grid: [[Int]]) -> Int {
        return islandPerimeter(grid)
    }

    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var dict = Dictionary<[Int], Int>()
        for row in 0..<grid.count {
            for column in 0..<grid[row].count {
                if grid[row][column] == 1 {
                    dict[[row, column, row, column + 1], default: 0] += 1
                    dict[[row, column + 1, row + 1, column + 1], default: 0] += 1
                    dict[[row, column, row + 1, column], default: 0] += 1
                    dict[[row + 1, column, row + 1, column + 1], default: 0] += 1
                }
            }
        }

        return dict.values.filter({$0 == 1}).count
    }
}
