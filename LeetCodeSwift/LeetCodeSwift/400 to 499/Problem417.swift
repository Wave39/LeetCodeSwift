//
//  Problem417.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/31/22.
//

// 417. Pacific Atlantic Water Flow (Medium)
// https://leetcode.com/problems/pacific-atlantic-water-flow/

public class Problem417 {
    public func run() {
        let solve1 = pacificAtlantic([[1, 2, 2, 3, 5], [3, 2, 3, 4, 4], [2 ,4 ,5 ,3 ,1], [6 ,7 ,1 ,4 ,5], [5, 1, 1, 2, 4]])
        print("\(solve1) -- should be [[0, 4], [1, 3], [1, 4], [2, 2], [3, 0], [3, 1], [4, 0]]")
        let solve2 = pacificAtlantic([[1]])
        print("\(solve2) -- should be [[0, 0]]")
    }

    public func test(_ heights: [[Int]]) -> [[Int]] {
        return pacificAtlantic(heights)
    }

    func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
        let rows = heights.count
        let columns = heights[0].count
        var status = Array(repeating: Array(repeating: ("?", "?"), count: columns), count: rows)

        func setCellToPacificYes(_ row: Int, _ column: Int) {
            status[row][column].0 = "Y"
            if row > 0 && status[row - 1][column].0 == "?" && heights[row - 1][column] >= heights[row][column] {
                setCellToPacificYes(row - 1, column)
            }
            if row < rows - 1 && status[row + 1][column].0 == "?" && heights[row + 1][column] >= heights[row][column] {
                setCellToPacificYes(row + 1, column)
            }
            if column > 0 && status[row][column - 1].0 == "?" && heights[row][column - 1] >= heights[row][column] {
                setCellToPacificYes(row, column - 1)
            }
            if column < columns - 1 && status[row][column + 1].0 == "?" && heights[row][column + 1] >= heights[row][column] {
                setCellToPacificYes(row, column + 1)
            }
        }

        func setCellToAtlanticYes(_ row: Int, _ column: Int) {
            status[row][column].1 = "Y"
            if row > 0 && status[row - 1][column].1 == "?" && heights[row - 1][column] >= heights[row][column] {
                setCellToAtlanticYes(row - 1, column)
            }
            if row < rows - 1 && status[row + 1][column].1 == "?" && heights[row + 1][column] >= heights[row][column] {
                setCellToAtlanticYes(row + 1, column)
            }
            if column > 0 && status[row][column - 1].1 == "?" && heights[row][column - 1] >= heights[row][column] {
                setCellToAtlanticYes(row, column - 1)
            }
            if column < columns - 1 && status[row][column + 1].1 == "?" && heights[row][column + 1] >= heights[row][column] {
                setCellToAtlanticYes(row, column + 1)
            }
        }

        for row in 0..<rows {
            setCellToPacificYes(row, 0)
            setCellToAtlanticYes(row, columns - 1)
        }

        for column in 0..<columns {
            setCellToPacificYes(0, column)
            setCellToAtlanticYes(rows - 1, column)
        }

        var retval = [[Int]]()
        for row in 0..<rows {
            for column in 0..<columns {
                if status[row][column] == ("Y", "Y") {
                    retval.append([row, column])
                }
            }
        }

        return retval
    }
}
