//
//  Problem592.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/23/24.
//

// 589. N-ary Tree Preorder Traversal (Easy)
// https://leetcode.com/problems/n-ary-tree-preorder-traversal/

public class Problem592 {
    public func run() {
        let solve1 = fractionAddition("-1/2+1/2")
        print("\(solve1) -- should be 0/1")
        let solve2 = fractionAddition("-1/2+1/2+1/3")
        print("\(solve2) -- should be 1/3")
        let solve3 = fractionAddition("1/3-1/2")
        print("\(solve3) -- should be -1/6")
    }

    public func test(_ expression: String) -> String {
        return fractionAddition(expression)
    }

    private let LCM = 7 * 8 * 9 * 10

    func fractionAddition(_ expression: String) -> String {
        var fraction: (num: Int, den: Int) = (0, LCM)

        var it = expression.makeIterator()

        if expression.first?.isWholeNumber ?? false {
            let (num, den) = extractFraction(from: &it)
            let delta = num * LCM / den
            fraction.num += delta
        }

        while let sym = it.next() {
            guard sym == "+" || sym == "-" else { break }
            let (num, den) = extractFraction(from: &it)
            let delta = num * LCM / den
            fraction.num += sym == "+" ? delta : -delta
        }

        for n in (2...10).reversed() {
            guard fraction.den > 1 else { break }
            guard fraction.den % n == 0 && fraction.num % n == 0 else { continue }
            fraction.den /= n
            fraction.num /= n
        }

        return "\(fraction.num)/\(fraction.den)"
    }

    private func extractFraction(from iterator: inout String.Iterator) -> (num: Int, den: Int) {
        var curNum = iterator.next()!.wholeNumberValue!
        if iterator.next()?.isWholeNumber ?? false {
            _ = iterator.next()
            curNum = 10
        }

        var curDen = iterator.next()!.wholeNumberValue!
        var iteratorCopy = iterator

        if iteratorCopy.next()?.isWholeNumber ?? false {
            _ = iterator.next()
            curDen = 10
        }

        return (curNum, curDen)
    }
}
