//
//  Problem6.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/6/22.
//

// 6. Zigzag Conversion
// https://leetcode.com/problems/zigzag-conversion/

public class Problem6 {
    public func run() {
        let solve1 = convert("PAYPALISHIRING", 3)
        print("\(solve1) -- should be PAHNAPLSIIGYIR")
        let solve2 = convert("PAYPALISHIRING", 4)
        print("\(solve2) -- should be PINALSIGYAHRPI")
        let solve3 = convert("A", 1)
        print("\(solve3) -- should be A")
        let solve4 = convert("AB", 1)
        print("\(solve4) -- should be AB")
    }

    public func test(_ s: String, _ numRows: Int) -> String {
        return convert(s, numRows)
    }

    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }

        var idx = 0
        var direction = 1
        var lineArray = Array(repeating: "", count: numRows)
        for c in s {
            lineArray[idx] += String(c)
            idx += direction
            if idx == numRows - 1 {
                direction = -1
            } else if idx == 0 {
                direction = 1
            }
        }

        return lineArray.joined()
    }
}
