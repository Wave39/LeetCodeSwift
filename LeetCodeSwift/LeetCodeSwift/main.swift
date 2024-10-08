//
//  main.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/22/22.
//

import Foundation

// Set this "hardcodedProblemNumber" variable to 0 to use the console input to specify the problem number to solve

let hardcodedProblemNumber = 0

print("")
print("Welcome to BP's LeetCode Solution Machine.")

if hardcodedProblemNumber > 0 {
    print("")
    print("Solving problem number \(hardcodedProblemNumber), please stand by...")
    runProblemNumber(hardcodedProblemNumber)

    print("")
    print("Press Enter to terminate application")
    _ = readLine()
} else {
    print("Make sure to click in the Output window to enter which puzzle you would like to solve.")
    var quitApp = false
    var problemNumber = 0
    while !quitApp {
        print("")
        print("Which problem number would you like the Solution Machine to solve? (Enter a number or Q to quit)")
        guard let response = readLine() else { continue }
        if response.lowercased() == "q" {
            quitApp = true
        } else if !response.isEmpty {
            problemNumber = Int(response) ?? 0
            print("Solving problem number \(problemNumber), please stand by...")
            runProblemNumber(problemNumber)
        }
    }
}

func runProblemNumber(_ problemNumber: Int) {
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
    } else if problemNumber >= 1100 && problemNumber <= 1199 {
        ProblemSelection1100to1199().run(problemNumber)
    } else if problemNumber >= 1200 && problemNumber <= 1299 {
        ProblemSelection1200to1299().run(problemNumber)
    } else if problemNumber >= 1300 && problemNumber <= 1399 {
        ProblemSelection1300to1399().run(problemNumber)
    } else if problemNumber >= 1400 && problemNumber <= 1499 {
        ProblemSelection1400to1499().run(problemNumber)
    } else if problemNumber >= 1500 && problemNumber <= 1599 {
        ProblemSelection1500to1599().run(problemNumber)
    } else if problemNumber >= 1600 && problemNumber <= 1699 {
        ProblemSelection1600to1699().run(problemNumber)
    } else if problemNumber >= 1700 && problemNumber <= 1799 {
        ProblemSelection1700to1799().run(problemNumber)
    } else if problemNumber >= 1800 && problemNumber <= 1899 {
        ProblemSelection1800to1899().run(problemNumber)
    } else if problemNumber >= 1900 && problemNumber <= 1999 {
        ProblemSelection1900to1999().run(problemNumber)
    } else if problemNumber >= 2000 && problemNumber <= 2099 {
        ProblemSelection2000to2099().run(problemNumber)
    } else if problemNumber >= 2100 && problemNumber <= 2199 {
        ProblemSelection2100to2199().run(problemNumber)
    } else if problemNumber >= 2200 && problemNumber <= 2299 {
        ProblemSelection2200to2299().run(problemNumber)
    } else if problemNumber >= 2300 && problemNumber <= 2399 {
        ProblemSelection2300to2399().run(problemNumber)
    } else if problemNumber >= 2400 && problemNumber <= 2499 {
        ProblemSelection2400to2499().run(problemNumber)
    } else if problemNumber >= 2500 && problemNumber <= 2599 {
        ProblemSelection2500to2599().run(problemNumber)
    } else if problemNumber >= 2600 && problemNumber <= 2699 {
        ProblemSelection2600to2699().run(problemNumber)
    } else if problemNumber >= 2700 && problemNumber <= 2799 {
        ProblemSelection2700to2799().run(problemNumber)
    } else if problemNumber >= 2800 && problemNumber <= 2899 {
        ProblemSelection2800to2899().run(problemNumber)
    } else if problemNumber >= 2900 && problemNumber <= 2999 {
        ProblemSelection2900to2999().run(problemNumber)
    } else if problemNumber >= 3000 && problemNumber <= 3099 {
        ProblemSelection3000to3099().run(problemNumber)
    } else if problemNumber >= 3100 && problemNumber <= 3199 {
        ProblemSelection3100to3199().run(problemNumber)
    } else if problemNumber >= 3200 && problemNumber <= 3299 {
        ProblemSelection3200to3299().run(problemNumber)
    } else {
        print("No such problem number exists")
    }
}
