//
//  Problem119.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/16/23.
//

// 119. Pascal's Triangle II (Easy)
// https://leetcode.com/problems/pascals-triangle-ii/

public class Problem119 {
    public func run() {
        let solve1 = getRow(4)
        print("\(solve1) -- should be [1, 4, 6, 4, 1]")
        let solve2 = getRow(0)
        print("\(solve2) -- should be [1]")
        let solve3 = getRow(1)
        print("\(solve3) -- should be [1, 1]")
        let solve4 = getRow(3)
        print("\(solve4) -- should be [1, 3, 3, 1]")
    }

    public func test(_ rowIndex: Int) -> [Int] {
        return getRow(rowIndex)
    }

    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 {
            return [1]
        } else if rowIndex == 1 {
            return [1, 1]
        }

        var previousRow = [1, 1]
        var currentRow = [Int]()

        var idx = 1
        while idx < rowIndex {
            currentRow = [1]
            for elementIndex in 1...(previousRow.count - 1) {
                currentRow.append(previousRow[elementIndex - 1] + previousRow[elementIndex])
            }

            currentRow.append(1)
            previousRow = currentRow
            idx += 1
        }

        return currentRow
    }
}
