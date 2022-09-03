//
//  ProblemSelection200to299.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/24/22.
//

public class ProblemSelection200to299 {
    public func run(_ problemNumber: Int) {
        if problemNumber == 200 {
            Problem200().run()
        } else if problemNumber == 205 {
            Problem205().run()
        } else if problemNumber == 234 {
            Problem234().run()
        } else if problemNumber == 274 {
            Problem274().run()
        } else {
            print("No such problem number exists")
        }
    }
}
