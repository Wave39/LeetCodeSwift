//
//  Problem118.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/20/22.
//

// 118. Pascal's Triangle (Easy)
// https://leetcode.com/problems/pascals-triangle/

public class Problem118 {
    public func run() {
        let solve1 = generate(5)
        print("\(solve1) -- should be [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]")
        let solve2 = generate(1)
        print("\(solve2) -- should be [[1]]")
    }

    public func test(_ numRows: Int) -> [[Int]] {
        return generate(numRows)
    }

    func generate(_ numRows: Int) -> [[Int]] {
        var retval = [[Int]]()

        var rowIndex = 1
        while rowIndex <= numRows {
            if rowIndex == 1 {
                retval.append([1])
            } else if rowIndex == 2 {
                retval.append([1, 1])
            } else {
                var arr = [1]
                for idx in 1..<(rowIndex - 1) {
                    arr.append(retval[rowIndex - 2][idx - 1] + retval[rowIndex - 2][idx])
                }

                arr.append(1)
                retval.append(arr)
            }

            rowIndex += 1
        }

        return retval
    }
}
