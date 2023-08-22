//
//  Problem168.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/22/23.
//

// 168. Excel Sheet Column Title (Easy)
// https://leetcode.com/problems/excel-sheet-column-title/

public class Problem168 {
    public func run() {
        let solve1 = convertToTitle(1)
        print("\(solve1) -- should be A")
        let solve2 = convertToTitle(28)
        print("\(solve2) -- should be AB")
        let solve3 = convertToTitle(701)
        print("\(solve3) -- should be ZY")
    }

    public func test(_ columnNumber: Int) -> String {
        return convertToTitle(columnNumber)
    }

    func convertToTitle(_ columnNumber: Int) -> String {
        var value = columnNumber
        var columnTitle = ""
        while value > 0 {
            let remainder = (value - 1) % 26
            let char = Character(UnicodeScalar(65 + remainder)!)
            columnTitle.insert(char, at: columnTitle.startIndex)
            value = (value - 1) / 26
        }

        return columnTitle
    }
}
