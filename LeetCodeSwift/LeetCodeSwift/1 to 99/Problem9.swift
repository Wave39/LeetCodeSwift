//
//  Problem9.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/11/23.
//

// 9. Palindrome Number (Easy)
// https://leetcode.com/problems/palindrome-number/

public class Problem9 {
    public func run() {
        let solve1 = isPalindrome(121)
        print("\(solve1) -- should be true")
        let solve2 = isPalindrome(-121)
        print("\(solve2) -- should be false")
        let solve3 = isPalindrome(10)
        print("\(solve3) -- should be false")
    }

    public func test(_ x: Int) -> Bool {
        return isPalindrome(x)
    }

    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }

        var str = String(x)
        while str.count >= 2 {
            let first = str.removeFirst()
            let last = str.removeLast()
            if first != last {
                return false
            }
        }

        return true
    }
}
