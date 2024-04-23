//
//  Problem310.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/23/24.
//

// 310. Minimum Height Trees (Medium)
// https://leetcode.com/problems/minimum-height-trees/

public class Problem310 {
    public func run() {
        let solve1 = findMinHeightTrees(4, [[1, 0], [1, 2], [1, 3]])
        print("\(solve1) -- should be [1]")
        let solve2 = findMinHeightTrees(6, [[3, 0], [3, 1], [3, 2], [3, 4], [5, 4]])
        print("\(solve2) -- should be [3, 4]")
    }

    public func test(_ n: Int, _ edges: [[Int]]) -> [Int] {
        return findMinHeightTrees(n, edges)
    }

    func findMinHeightTrees(_ n: Int, _ edges: [[Int]]) -> [Int] {
        // https://leetcode.com/problems/minimum-height-trees/solutions/797651/my-swift-solution-using-two-dictionaries/
        if edges.isEmpty { return [0] }
        var dict1 = [Int: [Int]](), dict2 = [Int: Int]()
        for edge in edges {
            dict1[edge[0], default: [Int]()].append(edge[1])
            dict1[edge[1], default: [Int]()].append(edge[0])
            dict2[edge[0], default: 0] += 1
            dict2[edge[1], default: 0] += 1
        }

        while dict2.reduce(into: Int(0), { $0 = max($0, $1.1) }) > 1 {
            for i in dict2.reduce(into: [Int](), { if $1.1 == 1 { $0.append($1.0) } }) {
                for j in dict1[i, default: []] where dict2[j] != nil {
                    dict2[j, default: 0] -= 1
                }

                dict1[i] = nil
                dict2[i] = nil
            }
        }

        return dict2.reduce(into: [Int](), { $0.append($1.0) }).sorted()
    }

    func findMinHeightTrees_naive(_ n: Int, _ edges: [[Int]]) -> [Int] {
        var retval = [Int]()
        var minHeight = Int.max
        for idx in 0..<n {
            var tempEdges = edges
            var thisLevel = [idx]
            var rowCounter = 0
            while thisLevel.count > 0 {
                rowCounter += 1
                var nextLevel = [Int]()
                for levelEntry in thisLevel {
                    for edgeIdx in 0..<tempEdges.count {
                        if tempEdges[edgeIdx][0] == levelEntry || tempEdges[edgeIdx][1] == levelEntry {
                            if tempEdges[edgeIdx][0] == levelEntry {
                                nextLevel.append(tempEdges[edgeIdx][1])
                            } else {
                                nextLevel.append(tempEdges[edgeIdx][0])
                            }

                            tempEdges[edgeIdx][0] = -1
                            tempEdges[edgeIdx][1] = -1
                        }
                    }
                }

                thisLevel = nextLevel
            }

            if rowCounter < minHeight {
                minHeight = rowCounter
                retval = [idx]
            } else if rowCounter == minHeight {
                retval.append(idx)
            }
        }

        return retval.sorted()
    }
}
