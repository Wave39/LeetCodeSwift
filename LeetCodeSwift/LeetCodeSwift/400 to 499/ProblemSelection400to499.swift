//
//  ProblemSelection400to499.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/24/22.
//

public class ProblemSelection400to499 {
    public func run(_ problemNumber: Int) {
        if problemNumber == 400 {
            Problem400().run()
        } else if problemNumber == 409 {
            Problem409().run()
        } else if problemNumber == 417 {
            Problem417().run()
        } else if problemNumber == 429 {
            Problem429().run()
        } else if problemNumber == 438 {
            Problem438().run()
        } else if problemNumber == 476 {
            Problem476().run()
        } else {
            print("No such problem number exists")
        }
    }
}
