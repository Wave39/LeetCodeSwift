//
//  Problem2798.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/22/24.
//

// 2798. Number of Employees Who Met the Target (Easy)
// https://leetcode.com/problems/number-of-employees-who-met-the-target/

public class Problem2798 {
    public func run() {
        let solve1 = numberOfEmployeesWhoMetTarget([0, 1, 2, 3, 4], 2)
        print("\(solve1) -- should be 3")
        let solve2 = numberOfEmployeesWhoMetTarget([5, 1, 4, 2, 2], 6)
        print("\(solve2) -- should be 0")
    }

    public func test(_ hours: [Int], _ target: Int) -> Int {
        return numberOfEmployeesWhoMetTarget(hours, target)
    }

    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        return hours.filter { $0 >= target}.count
    }
}
