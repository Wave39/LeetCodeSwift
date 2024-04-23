//
//  Problem1148.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/23/24.
//

// 1148. Article Views I (Easy)
// https://leetcode.com/problems/article-views-i/

public class Problem1148 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select distinct(author_id) as id from Views where author_id = viewer_id order by id
""")
    }
}
