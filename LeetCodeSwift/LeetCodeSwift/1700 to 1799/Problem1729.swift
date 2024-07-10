//
//  Problem1729.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/10/24.
//

// 1729. Find Followers Count (Easy)
// https://leetcode.com/problems/find-followers-count/

public class Problem1729 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select user_id, count(follower_id) as followers_count from Followers
    group by user_id
""")
    }

    public func test() -> Bool {
        return true
    }
}
