//
//  Problem214.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/20/24.
//

// 214. Shortest Palindrome (Hard)
// https://leetcode.com/problems/shortest-palindrome/

// https://leetcode.com/problems/shortest-palindrome/solutions/5811272/beats-60-but-really-simple-to-understand/

public class Problem214 {
    public func run() {
        let solve1 = shortestPalindrome("aacecaaa")
        print("\(solve1) -- should be aaacecaaa")
        let solve2 = shortestPalindrome("abcd")
        print("\(solve2) -- should be dcbabcd")
    }

    public func test(_ s: String) -> String {
        return shortestPalindrome(s)
    }

    func shortestPalindrome(_ s: String) -> String {
        var firstArr = Array(s)
        var secondArr = Array(s.reversed())
        if firstArr == secondArr {
            return s
        }

        var ind = 0
        while firstArr != secondArr {
            firstArr.removeLast()
            secondArr.removeFirst()
            ind += 1
        }

        let smallArr = Array(s.reversed())
        var smallStr = ""
        for i in 0..<ind {
            smallStr += String(smallArr[i])
        }

        return smallStr + s
    }
}
