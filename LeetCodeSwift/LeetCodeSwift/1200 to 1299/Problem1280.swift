//
//  Problem1280.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/3/24.
//

// 1280. Students and Examinations (Easy)
// https://leetcode.com/problems/students-and-examinations/

public class Problem1280 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select st.student_id, st.student_name, sub.subject_name, count(ex.subject_name) as attended_exams
    from Students st
    cross join Subjects sub
    left join Examinations ex on ex.student_id = st.student_id and ex.subject_name = sub.subject_name
    group by st.student_id, st.student_name, sub.subject_name
    order by st.student_id, sub.subject_name
""")
    }

    public func test() -> Bool {
        return true
    }
}
