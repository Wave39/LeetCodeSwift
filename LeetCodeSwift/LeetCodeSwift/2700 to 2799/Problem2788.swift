//
//  Problem2788.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/31/23.
//

// 2788. Split Strings by Separator
// https://leetcode.com/problems/split-strings-by-separator/

public class Problem2788 {
    public func run() {
        let solve1 = splitWordsBySeparator(["one.two.three", "four.five", "six"], ".")
        print("\(solve1) -- should be [\"one\", \"two\", \"three\", \"four\", \"five\", \"six\"]")
        let solve2 = splitWordsBySeparator(["$easy$", "$problem$"], "$")
        print("\(solve2) -- should be [\"easy\", \"problem\"]")
        let solve3 = splitWordsBySeparator(["|||"], "|")
        print("\(solve3) -- should be []")
    }

    public func test(_ words: [String], _ separator: Character) -> [String] {
        return splitWordsBySeparator(words, separator)
    }

    func splitWordsBySeparator(_ words: [String], _ separator: Character) -> [String] {
        var results: [String] = []
        for word in words {
            let arr = word.split(separator: separator).map { String($0) }
            results.append(contentsOf: arr)
        }

        return results
    }
}
