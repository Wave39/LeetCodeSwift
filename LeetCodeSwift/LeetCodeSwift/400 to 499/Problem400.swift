//
//  Problem400.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/1/22.
//

// 400. Nth Digit (Medium)
// https://leetcode.com/problems/nth-digit/

// Usually my code kind of documents itself, but I put some comments in below because the logic
// might look a little strange or convoluted upon later inspection.

public class Problem400 {
    public func run() {
        let solve1 = findNthDigit(3)
        print("\(solve1) -- should be 3")
        let solve2 = findNthDigit(11)
        print("\(solve2) -- should be 0")
        let solve3 = findNthDigit(10)
        print("\(solve3) -- should be 1")
        let solve4 = findNthDigit(100)
        print("\(solve4) -- should be 5")
    }

    public func test(_ n: Int) -> Int {
        return findNthDigit(n)
    }

    func findNthDigit(_ n: Int) -> Int {
        if n <= 9 {
            return n
        }

        // Figure out the proper starting offset into a new block of digits
        // For example, the first digit of 10 starts at offset 9
        // The first digit of 100 starts at offset 189
        var offset = 0
        var lastOffsetIncrement = 0
        var numberLength = 1
        var power = 1
        while offset < (n - 1) {
            lastOffsetIncrement = 9 * numberLength * power
            offset += lastOffsetIncrement
            numberLength += 1
            power *= 10
        }

        // Back out the last increment because we went past the offset
        offset -= lastOffsetIncrement
        numberLength -= 1
        power /= 10

        // Now figure out the top index of the number we are looking for
        let idx = n - 1 - offset
        var topIdx = idx
        while topIdx % numberLength != 0 {
            topIdx -= 1
        }

        // And kind of cheat a little bit here, once we have the number that our digit is coming from,
        // just convert it to a string and get the modulus index
        let position = topIdx / numberLength
        let positionNumber = power + position
        let s = String(positionNumber)
        let arr = s.map { String($0) }
        return Int(arr[idx % numberLength]) ?? -1
    }
}
