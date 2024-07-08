//
//  Problem2356.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/8/24.
//

// 2356. Number of Unique Subjects Taught by Each Teacher (Easy)
// https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/

public class Problem2356 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select teacher_id, count(distinct(subject_id)) as cnt from Teacher
    group by teacher_id
""")
    }

    public func test() -> Bool {
        return true
    }
}
