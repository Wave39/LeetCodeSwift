//
//  Problem621.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/19/24.
//

// 621. Task Scheduler (Medium)
// https://leetcode.com/problems/task-scheduler/

public class Problem621 {
    public func run() {
        let solve1 = leastInterval(["A", "A", "A", "B", "B", "B"], 2)
        print("\(solve1) -- should be 8")
        let solve2 = leastInterval(["A", "C", "A", "B", "D", "B"], 1)
        print("\(solve2) -- should be 6")
        let solve3 = leastInterval(["A", "A", "A", "B", "B", "B"], 3)
        print("\(solve3) -- should be 10")
    }

    public func test(_ tasks: [Character], _ n: Int) -> Int {
        return leastInterval(tasks, n)
    }

    // https://leetcode.com/problems/task-scheduler/solutions/3393068/accepted-swift/
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        var dict: Dictionary<Character, Int> = [:]
        for task in tasks {
            dict[task, default: 0] += 1
        }

        var arr = dict
            .values
            .map { ($0, -n) }

        var res = 0

        while !arr.isEmpty {
            arr.sort { $0.0 > $1.0 }

            let i: Int

            if let nowait = arr.indices.first(where: { res - arr[$0].1 + 1 > n }) {
                i = nowait
            }
            else {
                let mi = arr.map(\.1).min()!
                i = arr.firstIndex(where: { $0.1 == mi })!
            }

            res += max(1, n - res + arr[i].1 + 1)

            arr[i].0 -= 1
            arr[i].1 = res

            if arr[i].0 == 0 {
                arr.remove(at: i)
            }
        }

        return res
    }
}
