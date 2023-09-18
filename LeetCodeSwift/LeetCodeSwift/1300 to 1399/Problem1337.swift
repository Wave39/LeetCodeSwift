//
//  Problem1337.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/18/23.
//

// 1337. The K Weakest Rows in a Matrix (Easy)
// https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/

public class Problem1337 {
    public func run() {
        let solve1 = kWeakestRows([[1, 1, 0, 0, 0],
                                   [1, 1, 1, 1, 0],
                                   [1, 0, 0, 0, 0],
                                   [1, 1, 0, 0, 0],
                                   [1, 1, 1, 1, 1]], 3)
        print("\(solve1) -- should be [2, 0, 3]")
        let solve2 = kWeakestRows([[1, 0, 0, 0],
                                   [1, 1, 1, 1],
                                   [1, 0, 0, 0],
                                   [1, 0, 0, 0]], 2)
        print("\(solve2) -- should be [0, 2]")
    }

    public func test(_ mat: [[Int]], _ k: Int) -> [Int] {
        return kWeakestRows(mat, k)
    }

    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var arr: [(Int, Int)] = []
        for idx in 0..<mat.count {
            let ctr = mat[idx].filter { $0 == 1 }.count
            arr.append((idx, ctr))
        }

        arr.sort { (first, second) -> Bool in
            if first.1 == second.1 {
                return first.0 < second.0
            }

            return first.1 < second.1
        }

        var retval: [Int] = []
        for idx in 0...(k - 1) {
            retval.append(arr[idx].0)
        }

        return retval
    }
}
