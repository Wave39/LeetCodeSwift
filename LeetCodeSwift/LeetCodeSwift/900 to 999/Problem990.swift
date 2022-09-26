//
//  Problem990.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/26/22.
//

// 990. Satisfiability of Equality Equations
// https://leetcode.com/problems/satisfiability-of-equality-equations/

// https://leetcode.com/problems/satisfiability-of-equality-equations/discuss/1814526/Swift-DFS-solution

public class Problem990 {
    public func run() {
        let solve1 = equationsPossible(["a==b", "b!=a"])
        print("\(solve1) -- should be false")
        let solve2 = equationsPossible(["b==a", "a==b"])
        print("\(solve2) -- should be true")
    }

    public func test(_ equations: [String]) -> Bool {
        return equationsPossible(equations)
    }

    func equationsPossible(_ equations: [String]) -> Bool {
        var adjMatrix = [String: [String]]()
        var unequalDict = [String: [String]]()

        for equation in equations {
            let arr = equation.map { String($0) }
            if arr[1] == "=" {
                adjMatrix[arr[0]] = adjMatrix[arr[0]] ?? [ ]
                adjMatrix[arr[3]] = adjMatrix[arr[3]] ?? [ ]
                adjMatrix[arr[0]]?.append(arr[3])
                adjMatrix[arr[3]]?.append(arr[0])
            } else {
                if arr[0] == arr[3] {
                    return false
                }
                unequalDict[arr[0]] = unequalDict[arr[0]] ?? [ ]
                unequalDict[arr[0]]?.append(arr[3])
            }
        }

        var visited = Set<String>()

        for (key, values) in unequalDict {
            for value in values {
                if dfs(key: key, target: value, adjMatrix: adjMatrix, visited: &visited) {
                    return false
                }

                visited = Set<String>()
            }
        }

        return true
    }

    func dfs(key: String, target: String, adjMatrix: [String: [String]], visited: inout Set<String>) -> Bool {
        var buffer = false

        if adjMatrix[key] == nil || visited.contains(key) {
            return false
        }

        if key == target {
            return true
        }

        visited.insert(key)
        for value in adjMatrix[key]! {
            buffer = buffer || dfs(key: value, target: target, adjMatrix: adjMatrix, visited: &visited)
        }

        return buffer
    }
}
