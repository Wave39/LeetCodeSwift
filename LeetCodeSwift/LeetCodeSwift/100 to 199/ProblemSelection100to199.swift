//
//  ProblemSelection100to199.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/24/22.
//

public class ProblemSelection100to199 {
    public func run(_ problemNumber: Int) {
        if problemNumber == 100 {
            Problem100().run()
        } else if problemNumber == 102 {
            Problem102().run()
        } else if problemNumber == 121 {
            Problem121().run()
        } else if problemNumber == 142 {
            Problem142().run()
        } else {
            print("No such problem number exists")
        }
    }
}
