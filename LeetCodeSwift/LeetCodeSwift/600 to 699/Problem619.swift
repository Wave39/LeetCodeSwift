//
//  Problem619.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/8/23.
//

// 619. Biggest Single Number (Easy)
// https://leetcode.com/problems/biggest-single-number/

public class Problem619 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select coalesce(
    (select top 1 max(num) from MyNumbers
    group by num
    having count(num) = 1
    order by num desc)
    , null) as num
""")
    }
}
