//
//  ProblemSelection2000to2099.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/15/22.
//

public class ProblemSelection2000to2099 {
    public func run(_ problemNumber: Int) {
        if problemNumber == 2007 {
            Problem2007().run()
        } else if problemNumber == 2009 {
            Problem2009().run()
        } else if problemNumber == 2048 {
            Problem2048().run()
        } else if problemNumber == 2068 {
            Problem2068().run()
        } else {
            print("No such problem number exists")
        }
    }
}
