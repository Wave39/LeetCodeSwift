//
//  Problem1743.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/10/23.
//

// 1743. Restore the Array From Adjacent Pairs (Medium)
// https://leetcode.com/problems/restore-the-array-from-adjacent-pairs/

// https://leetcode.com/problems/restore-the-array-from-adjacent-pairs/solutions/4273034/clean-swift-solution/

public class Problem1743 {
    public func run() {
        let solve1 = restoreArray([[2, 1], [3, 4], [3, 2]])
        print("\(solve1) -- should be [1, 2, 3, 4]")
        let solve2 = restoreArray([[4, -2], [1, 4], [-3, 1]])
        print("\(solve2) -- should be [-2, 4, 1, -3]")
        let solve3 = restoreArray([[100000, -100000]])
        print("\(solve3) -- should be [100000, -100000]")
    }

    public func test(_ adjacentPairs: [[Int]]) -> [Int] {
        return restoreArray(adjacentPairs)
    }

    func restoreArray(_ adjacentPairs: [[Int]]) -> [Int] {
        var nextNodesFor: [Int: [Int]] = [:]
        for pair in adjacentPairs {
            nextNodesFor[pair[0], default: []].append(pair[1])
            nextNodesFor[pair[1], default: []].append(pair[0])
        }

        let root = nextNodesFor.first(where: { $1.count == 1 })!.key

        var prev: Int?
        var cur = root
        var answer = [root]

        while answer.count <= adjacentPairs.count {
            for next in nextNodesFor[cur, default: []] where next != prev {
                answer.append(next)
                prev = cur
                cur = next
                break
            }
        }

        return answer
    }

    func restoreArray_naive(_ adjacentPairs: [[Int]]) -> [Int] {
        var retval = [Int]()
        var pairs = adjacentPairs
        let allNumbers = adjacentPairs.flatMap { $0 }
        let mappedItems = allNumbers.map { ($0, 1) }
        let counts = Dictionary(mappedItems, uniquingKeysWith: +)
        var singleNumbers = [Int]()
        for (key, value) in counts {
            if value == 1 {
                singleNumbers.append(key)
            }
        }

        var theValue = singleNumbers.min()!
        retval.append(theValue)
        while !pairs.isEmpty {
            let idx = pairs.firstIndex(where: { $0[0] == theValue || $0[1] == theValue })!
            if pairs[idx][0] == theValue {
                retval.append(pairs[idx][1])
                theValue = pairs[idx][1]
            } else {
                retval.append(pairs[idx][0])
                theValue = pairs[idx][0]
            }

            pairs.remove(at: idx)
        }

        return retval
    }
}
