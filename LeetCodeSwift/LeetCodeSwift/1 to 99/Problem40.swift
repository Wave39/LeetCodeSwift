//
//  Problem40.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/13/24.
//

// 40. Combination Sum II (Medium)
// https://leetcode.com/problems/combination-sum-ii/

// https://leetcode.com/problems/combination-sum-ii/solutions/5628781/swift/

public class Problem40 {
    public func run() {
        let solve1 = combinationSum2([10, 1, 2, 7, 6, 1, 5], 8)
        print("\(solve1) -- should be [[1, 1, 6], [1, 2, 5], [1, 7], [2, 6]]")
        let solve2 = combinationSum2([2, 5, 2, 1, 2], 5)
        print("\(solve2) -- should be [[1, 2, 2], [5]]")
    }

    public func test(_ candidates: [Int], _ target: Int) -> [[Int]] {
        return combinationSum2(candidates, target)
    }

    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var freq = [Int: Int](candidates.map{($0, 1)}, uniquingKeysWith: +)
        let keys = freq.keys.sorted()
        var partial = [Int]()
        var result = [[Int]]()

        func backtrack(_ startIndex: Int, _ target: Int) {
            for (i, key) in keys[startIndex...].enumerated()
            where freq[key]! > 0 {
                guard key <= target else { return }
                partial.append(key)
                if key == target {
                    result.append(partial)
                } else {
                    freq[key]! -= 1
                    backtrack(startIndex + i, target - key)
                    freq[key]! += 1
                }

                _ = partial.popLast()
            }
        }

        backtrack(0, target)
        return result
    }
}
