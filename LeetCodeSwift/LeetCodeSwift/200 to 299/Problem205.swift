//
//  Problem205.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/2/22.
//

// 205. Isomorphic Strings (Easy)
// https://leetcode.com/problems/isomorphic-strings/

public class Problem205 {
    public func run() {
        let solve1 = isIsomorphic("egg", "add")
        print("\(solve1) -- should be true")
        let solve2 = isIsomorphic("foo", "bar")
        print("\(solve2) -- should be false")
        let solve3 = isIsomorphic("paper", "title")
        print("\(solve3) -- should be true")
    }

    public func test(_ s: String, _ t: String) -> Bool {
        return isIsomorphic(s, t)
    }

    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let sArray = Array(s) as! [Character]
        let tArray = Array(t) as! [Character]
        var indexSet = Set<Int>()
        for idx in 0..<s.count {
            indexSet.insert(idx)
        }

        while !indexSet.isEmpty {
            let minEntry = indexSet.min()!
            let sChar = sArray[minEntry]
            let tChar = tArray[minEntry]
            let sIdx = sArray.enumerated().compactMap { $1 == sChar ? $0 : nil }
            let tIdx = tArray.enumerated().compactMap { $1 == tChar ? $0 : nil }
            if !sIdx.elementsEqual(tIdx) {
                return false
            }

            sIdx.forEach { indexSet.remove($0) }
        }

        return true
    }
}
