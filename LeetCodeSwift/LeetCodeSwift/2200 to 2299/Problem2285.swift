//
//  Problem2285.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 6/28/24.
//

// 2285. Maximum Total Importance of Roads (Medium)
// https://leetcode.com/problems/maximum-total-importance-of-roads/

// WOO HOO!!!
// Runtime: 764 ms, Beats 100.00%
// Memory: 27.03 MB, Beats 100.00%

public class Problem2285 {
    public func run() {
        let solve1 = maximumImportance(5, [[0, 1], [1, 2], [2, 3], [0, 2], [1, 3], [2, 4]])
        print("\(solve1) -- should be 43")
        let solve2 = maximumImportance(5, [[0, 3], [2, 4], [1, 3]])
        print("\(solve2) -- should be 20")
    }

    public func test(_ n: Int, _ roads: [[Int]]) -> Int {
        return maximumImportance(n, roads)
    }

    func maximumImportance(_ n: Int, _ roads: [[Int]]) -> Int {
        var connectionDict: Dictionary<Int, Int> = [ : ]
        for pair in roads {
            connectionDict[pair[0], default: 0] += 1
            connectionDict[pair[1], default: 0] += 1
        }

        var indexArray = [Int]()
        let sortedValues = Set(connectionDict.values).sorted().reversed()
        for value in sortedValues {
            let filteredKeys = connectionDict.filter { $0.value == value }.keys
            for k in filteredKeys {
                indexArray.append(k)
            }
        }

        var importanceDict: Dictionary<Int, Int> = [ : ]
        var importanceScore = n
        for idx in indexArray {
            importanceDict[idx] = importanceScore
            importanceScore -= 1
        }

        var retval = 0
        for pair in roads {
            retval += importanceDict[pair[0]]!
            retval += importanceDict[pair[1]]!
        }

        return retval
    }
}
