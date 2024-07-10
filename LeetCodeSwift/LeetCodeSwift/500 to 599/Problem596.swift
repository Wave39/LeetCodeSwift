//
//  Problem596.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/10/24.
//

// 596. Classes More Than 5 Students (Easy)
// https://leetcode.com/problems/classes-more-than-5-students/

public class Problem596 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select class from Courses
    group by class
    having count(student) >= 5
""")
    }

    public func test() -> Bool {
        return true
    }
}
