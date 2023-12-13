//
//  Problem1582.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/13/23.
//

// 1582. Special Positions in a Binary Matrix (Easy)
// https://leetcode.com/problems/special-positions-in-a-binary-matrix/

public class Problem1582 {
    public func run() {
        let solve1 = numSpecial([[1, 0, 0], [0, 0, 1], [1, 0, 0]])
        print("\(solve1) -- should be 1")
        let solve2 = numSpecial([[1, 0, 0], [0, 1, 0], [0, 0, 1]])
        print("\(solve2) -- should be 3")
    }

    public func test(_ mat: [[Int]]) -> Int {
        return numSpecial(mat)
    }

    func numSpecial(_ mat: [[Int]]) -> Int {
        var retval = 0
        for row in 0..<mat.count {
            for col in 0..<mat[0].count {
                if mat[row][col] == 1 {
                    let hCount = mat[row].filter { $0 == 1 }.count
                    let vCount = mat.map { $0[col] }.filter { $0 == 1 }.count
                    if hCount == 1 && vCount == 1 {
                        retval += 1
                    }
                }
            }
        }

        return retval
    }
}
