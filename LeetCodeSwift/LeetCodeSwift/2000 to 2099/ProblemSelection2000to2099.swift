//
//  ProblemSelection2000to2099.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/15/22.
//

public class ProblemSelection2000to2099 {
    public func run(_ problemNumber: Int) {
        if problemNumber == 2000 {
            Problem2000().run()
        } else if problemNumber == 2007 {
            Problem2007().run()
        } else if problemNumber == 2009 {
            Problem2009().run()
        } else if problemNumber == 2028 {
            Problem2028().run()
        } else if problemNumber == 2044 {
            Problem2044().run()
        } else if problemNumber == 2048 {
            Problem2048().run()
        } else if problemNumber == 2058 {
            Problem2058().run()
        } else if problemNumber == 2068 {
            Problem2068().run()
        } else if problemNumber == 2073 {
            Problem2073().run()
        } else if problemNumber == 2096 {
            Problem2096().run()
        } else {
            print("No such problem number exists")
        }
    }
}
