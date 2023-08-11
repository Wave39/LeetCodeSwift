//
//  Problem200.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/24/22.
//

// 200. Number of Islands (Medium)
// https://leetcode.com/problems/number-of-islands/

public class Problem200 {
    public func run() {
        let test1 = [
            ["1","1","1","1","0"],
            ["1","1","0","1","0"],
            ["1","1","0","0","0"],
            ["0","0","0","0","0"]
        ]
        let test1c = test1.map { $0.map { Character($0) } }
        let solve1 = numIslands(test1c)
        print("\(solve1) -- should be 1")

        let test2 = [
            ["1","1","0","0","0"],
            ["1","1","0","0","0"],
            ["0","0","1","0","0"],
            ["0","0","0","1","1"]
        ]
        let test2c = test2.map { $0.map { Character($0) } }
        let solve2 = numIslands(test2c)
        print("\(solve2) -- should be 3")
    }

    public func test( _ grid: [[Character]]) -> Int {
        return numIslands(grid)
    }

    func findNextIslandStart( _ grid: [[Character]]) -> (Int, Int) {
        let m = grid.count
        let n = grid[0].count
        for y in 0..<m {
            for x in 0..<n {
                if grid[y][x] == "1" {
                    return (x, y)
                }
            }
        }

        return (-1, -1)
    }

    func markAsUsed(_ grid: inout [[Character]], x: Int, y: Int) {
        grid[y][x] = "."
        if grid[y][x - 1] == "1" {
            markAsUsed(&grid, x: x - 1, y: y)
        }
        if grid[y][x + 1] == "1" {
            markAsUsed(&grid, x: x + 1, y: y)
        }
        if grid[y - 1][x] == "1" {
            markAsUsed(&grid, x: x, y: y - 1)
        }
        if grid[y + 1][x] == "1" {
            markAsUsed(&grid, x: x, y: y + 1)
        }
    }

    func numIslands(_ grid: [[Character]]) -> Int {
        var newGrid = [[Character]]()
        newGrid.append(Array(repeating: Character("0"), count: grid[0].count + 2))
        for row in grid {
            var newRow = [Character]()
            newRow.append("0")
            newRow.append(contentsOf: row)
            newRow.append("0")
            newGrid.append(newRow)
        }
        newGrid.append(Array(repeating: Character("0"), count: grid[0].count + 2))

        var found = findNextIslandStart(newGrid)
        var islands = 0
        while found.0 != -1 && found.1 != -1 {
            islands += 1
            markAsUsed(&newGrid, x: found.0, y: found.1)
            found = findNextIslandStart(newGrid)
        }

        return islands
    }
}
