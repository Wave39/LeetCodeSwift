//
//  Problem393.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/12/22.
//

// 393. UTF-8 Validation (Medium)
// https://leetcode.com/problems/utf-8-validation/

// WOO HOO!!!
//Runtime: 208 ms, faster than 100.00% of Swift online submissions for UTF-8 Validation.
//Memory Usage: 14.5 MB, less than 100.00% of Swift online submissions for UTF-8 Validation.

public class Problem393 {
    public func run() {
        let solve1 = validUtf8([197, 130, 1])
        print("\(solve1) -- should be true")
        let solve2 = validUtf8([235, 140, 4])
        print("\(solve2) -- should be false")
    }

    public func test(_ data: [Int]) -> Bool {
        return validUtf8(data)
    }

    func validUtf8(_ data: [Int]) -> Bool {
        var array = data
        while !array.isEmpty {
            let firstByte = array.removeFirst()
            let str = String(firstByte, radix: 2)
            let additionalBytes: Int
            if str.count < 8 {
                additionalBytes = 0
            } else if str.starts(with: "110") {
                additionalBytes = 1
            } else if str.starts(with: "1110") {
                additionalBytes = 2
            } else if str.starts(with: "11110") {
                additionalBytes = 3
            } else {
                return false
            }

            if array.count < additionalBytes {
                return false
            }

            if additionalBytes > 0 {
                for _ in 1...additionalBytes {
                    let byte = array.removeFirst()
                    let str = String(byte, radix: 2)
                    if !(str.count == 8 && str.starts(with: "10")) {
                        return false
                    }
                }
            }
        }

        return true
    }
}
