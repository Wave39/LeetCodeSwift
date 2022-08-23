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

        if problemNumber == 1 {
            Problem1().solve()
        } else {
            print("No such problem number exists")
        }
    }
}

print("")
print("Thanks for checking out my LeetCode Solution Machine.")
