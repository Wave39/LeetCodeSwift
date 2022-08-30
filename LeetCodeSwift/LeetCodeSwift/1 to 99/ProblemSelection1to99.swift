//
//  ProblemSelection1to99.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/24/22.
//

public class ProblemSelection1to99 {
    public func run(_ problemNumber: Int) {
        if problemNumber == 1 {
            Problem1().run()
        } else if problemNumber == 2 {
            Problem2().run()
        } else if problemNumber == 3 {
            Problem3().run()
        } else if problemNumber == 4 {
            Problem4().run()
        } else if problemNumber == 26 {
            Problem26().run()
        } else if problemNumber == 48 {
            Problem48().run()
        } else {
            print("No such problem number exists")
        }
    }
}
