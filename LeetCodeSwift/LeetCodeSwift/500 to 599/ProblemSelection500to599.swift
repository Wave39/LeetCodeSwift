//
//  ProblemSelection500to599.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/2/22.
//

public class ProblemSelection500to599 {
    public func run(_ problemNumber: Int) {
        if problemNumber == 500 {
            Problem500().run()
        } else if problemNumber == 509 {
            Problem509().run()
        } else if problemNumber == 566 {
            Problem566().run()
        } else if problemNumber == 589 {
            Problem589().run()
        } else {
            print("No such problem number exists")
        }
    }
}
