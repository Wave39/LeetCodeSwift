//
//  Problem948.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/12/22.
//

// 948. Bag of Tokens
// https://leetcode.com/problems/bag-of-tokens/

// Found a sorting solution at:
// https://leetcode.com/problems/bag-of-tokens/discuss/909245/Bag-of-Tokens-or-Swift-or-60ms

public class Problem948 {
    public func run() {
        let solve1 = bagOfTokensScore([100], 50)
        print("\(solve1) -- should be 0")
        let solve2 = bagOfTokensScore([100, 200], 150)
        print("\(solve2) -- should be 1")
        let solve3 = bagOfTokensScore([100, 200, 300, 400], 200)
        print("\(solve3) -- should be 2")
        let solve4 = bagOfTokensScore([52, 65, 35, 88, 28, 1, 4, 68, 56, 95], 94)
        print("\(solve4) -- should be 5")
    }

    public func test(_ tokens: [Int], _ power: Int) -> Int {
        return bagOfTokensScore(tokens, power)
    }

    func bagOfTokensScore(_ tokens: [Int], _ power: Int) -> Int {
        guard !tokens.isEmpty else { return 0 }
        var score = 0
        var tokens = tokens.sorted()
        var pwr = power
        guard tokens.first! <= power else { return 0 }
        while !tokens.isEmpty {
            if tokens.first! <= pwr {
                pwr -= tokens.first!
                tokens.removeFirst()
                score += 1
                continue
            } else if tokens.count == 1 { break }
            score -= 1
            pwr += tokens.last!
            tokens.removeLast()
        }
        return score
    }

    func bagOfTokensScore_naive(_ tokens: [Int], _ power: Int) -> Int {
        var largestScore = 0

        func processTokens(_ tokens: [Int], _ power: Int, _ score: Int) {
            if tokens.isEmpty {
                return
            }

            let faceUpTokenIndices = tokens.indices.filter { tokens[$0] <= power }
            if !faceUpTokenIndices.isEmpty {
                for tokenIndex in faceUpTokenIndices {
                    let newPower = power - tokens[tokenIndex]
                    let newScore = score + 1
                    if newScore > largestScore {
                        largestScore = newScore
                    }

                    var arr = tokens
                    arr.remove(at: tokenIndex)
                    processTokens(arr, newPower, newScore)
                }
            }

            if score > 0 {
                for tokenIndex in tokens.indices {
                    let newPower = power + tokens[tokenIndex]
                    let newScore = score - 1
                    var arr = tokens
                    arr.remove(at: tokenIndex)
                    processTokens(arr, newPower, newScore)
                }
            }
        }

        processTokens(tokens, power, 0)

        return largestScore
    }
}
