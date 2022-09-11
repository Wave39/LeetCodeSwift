//
//  main.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/22/22.
//

import Foundation

print("")
print("Welcome to BP's LeetCode Solution Machine.")
print("Make sure to click in the Output window to enter which puzzle you would like to solve.")

private var quitApp = false
private var problemNumber = 0

while !quitApp {
    print("")
    print("Which problem number would you like the Solution Machine to solve? (Enter a number or Q to quit)")
    guard let response = readLine() else { continue }
    if response.lowercased() == "q" {
        quitApp = true
    } else if !response.isEmpty {
        problemNumber = Int(response) ?? 0
        print("")
        print("Solving problem number \(problemNumber), please stand by...")

        if problemNumber >= 1 && problemNumber <= 99 {
            ProblemSelection1to99().run(problemNumber)
        } else if problemNumber >= 100 && problemNumber <= 199 {
            ProblemSelection100to199().run(problemNumber)
        } else if problemNumber >= 200 && problemNumber <= 299 {
            ProblemSelection200to299().run(problemNumber)
        } else if problemNumber >= 300 && problemNumber <= 399 {
            ProblemSelection300to399().run(problemNumber)
        } else if problemNumber >= 400 && problemNumber <= 499 {
            ProblemSelection400to499().run(problemNumber)
        } else if problemNumber >= 500 && problemNumber <= 599 {
            ProblemSelection500to599().run(problemNumber)
        } else if problemNumber >= 600 && problemNumber <= 699 {
            ProblemSelection600to699().run(problemNumber)
        } else if problemNumber >= 700 && problemNumber <= 799 {
            ProblemSelection700to799().run(problemNumber)
        } else if problemNumber >= 800 && problemNumber <= 899 {
            ProblemSelection800to899().run(problemNumber)
        } else if problemNumber >= 900 && problemNumber <= 999 {
            ProblemSelection900to999().run(problemNumber)
        } else if problemNumber >= 1000 && problemNumber <= 1099 {
            ProblemSelection1000to1099().run(problemNumber)
        } else if problemNumber >= 1200 && problemNumber <= 1299 {
            ProblemSelection1200to1299().run(problemNumber)
        } else if problemNumber >= 1300 && problemNumber <= 1399 {
            ProblemSelection1300to1399().run(problemNumber)
        } else if problemNumber >= 1400 && problemNumber <= 1499 {
            ProblemSelection1400to1499().run(problemNumber)
        } else if problemNumber >= 1900 && problemNumber <= 1999 {
            ProblemSelection1900to1999().run(problemNumber)
        } else if problemNumber >= 2300 && problemNumber <= 2399 {
            ProblemSelection2300to2399().run(problemNumber)
        } else {
            print("No such problem number exists")
        }
    }
}

print("")
print("Thanks for checking out my LeetCode Solution Machine.")

// N. THIS SPACE FOR RENT
// https://leetcode.com/problems/N/

public class ProblemN {
    public func run() {
        let solve1 = fooBar(1)
        print("\(solve1) -- should be 0")
        let solve2 = fooBar(47)
        print("\(solve2) -- should be 0")
    }

    public func test(_ num: Int) -> Int {
        return fooBar(num)
    }

    func fooBar(_ num: Int) -> Int {
        return 0
    }
}
