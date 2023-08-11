//
//  Problem557.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/22/22.
//

// 557. Reverse Words in a String III (Easy)
// https://leetcode.com/problems/reverse-words-in-a-string-iii/

public class Problem557 {
    public func run() {
        let solve1 = reverseWords("Let's take LeetCode contest")
        print("\"\(solve1)\" -- should be \"s'teL ekat edoCteeL tsetnoc\"")
        let solve2 = reverseWords("God Ding")
        print("\"\(solve2)\" -- should be \"doG gniD\"")
    }

    public func test(_ s: String) -> String {
        return reverseWords(s)
    }

    func reverseWords(_ s: String) -> String {
        var outputArr = [String]()
        for word in s.split(separator: " ") {
            outputArr.append(String(word.reversed()))
        }

        return outputArr.joined(separator: " ")
    }
}
