//
//  ProblemSelection1900to1999.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/11/22.
//

public class ProblemSelection1900to1999 {
    public func run(_ problemNumber: Int) {
        if problemNumber == 1903 {
            Problem1903().run()
        } else if problemNumber == 1915 {
            Problem1915().run()
        } else if problemNumber == 1921 {
            Problem1921().run()
        } else if problemNumber == 1930 {
            Problem1930().run()
        } else if problemNumber == 1934 {
            Problem1934().run()
        } else if problemNumber == 1980 {
            Problem1980().run()
        } else if problemNumber == 1996 {
            Problem1996().run()
        } else {
            print("No such problem number exists")
        }
    }
}
