//
//  Problem779.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/25/23.
//

// 779. K-th Symbol in Grammar (Medium)
// https://leetcode.com/problems/k-th-symbol-in-grammar/

// I should have known that my naive solution was not going to work when it said there could be 30 iterations of the string expansion.
// I struggle to see how this one liner works, but hey, I'm no math major.
// https://leetcode.com/problems/k-th-symbol-in-grammar/solutions/4206554/swift-optimal-solution-math/

public class Problem779 {
    public func run() {
        let solve1 = kthGrammar(1, 1)
        print("\(solve1) -- should be 0")
        let solve2 = kthGrammar(2, 1)
        print("\(solve2) -- should be 0")
        let solve3 = kthGrammar(2, 2)
        print("\(solve3) -- should be 1")
    }

    public func test(_ n: Int, _ k: Int) -> Int {
        return kthGrammar(n, k)
    }

    func kthGrammar(_ n: Int, _ k: Int) -> Int {
        (k - 1).nonzeroBitCount & 1
    }

    func kthGrammar_naive(_ n: Int, _ k: Int) -> Int {
        if n == 1 {
            return 0
        }

        var row = "0"
        print("first row \(row)")
        for _ in 2...n {
            var newRow = ""
            for c in row {
                if c == "0" {
                    newRow += "01"
                } else {
                    newRow += "10"
                }
            }

            row = newRow
            print("row \(row)")
        }

        let char = String(Array(row)[k - 1])
        return Int(char) ?? -1
    }
}
