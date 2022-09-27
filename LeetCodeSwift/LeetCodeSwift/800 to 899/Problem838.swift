//
//  Problem838.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/27/22.
//

// 838. Push Dominoes
// https://leetcode.com/problems/push-dominoes/

public class Problem838 {
    public func run() {
        let solve1 = pushDominoes("RR.L")
        print("\(solve1) -- should be RR.L")
        let solve2 = pushDominoes(".L.R...LR..L..")
        print("\(solve2) -- should be LL.RR.LLRRLL..")
    }

    public func test(_ dominoes: String) -> String {
        return pushDominoes(dominoes)
    }

    func pushDominoes(_ dominoes: String) -> String {
        let dominoCount = dominoes.count
        var oldDominoes = dominoes
        while true {
            let oldDominoArray = oldDominoes.map { String($0) }
            print("processing \(oldDominoArray)")
            var newDominoArray = oldDominoArray
            for idx in 0..<dominoCount {
                if oldDominoArray[idx] == "L" {
                    if idx == 1 {
                        if oldDominoArray[idx - 1] == "." {
                            newDominoArray[idx - 1] = "L"
                        }
                    } else if idx > 1 {
                        if !(oldDominoArray[idx - 1] == "R" || (oldDominoArray[idx - 2] == "R" && oldDominoArray[idx - 1] == ".")) {
                            newDominoArray[idx - 1] = "L"
                        }
                    }
                } else if oldDominoArray[idx] == "R" {
                    if idx == dominoCount - 2 {
                        if oldDominoArray[idx + 1] == "." {
                            newDominoArray[idx + 1] = "R"
                        }
                    } else if idx < dominoCount - 2 {
                        if !(oldDominoArray[idx + 1] == "L" || (oldDominoArray[idx + 2] == "L" && oldDominoArray[idx + 1] == ".")) {
                            newDominoArray[idx + 1] = "R"
                        }
                    }
                }
            }

            if oldDominoArray == newDominoArray {
                return newDominoArray.joined()
            }

            oldDominoes = newDominoArray.joined()
        }
    }
}
