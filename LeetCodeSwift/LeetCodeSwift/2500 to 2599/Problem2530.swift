//
//  Problem2530.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/14/24.
//

// 2530. Maximal Score After Applying K Operations (Medium)
// https://leetcode.com/problems/maximal-score-after-applying-k-operations/

// https://leetcode.com/problems/maximal-score-after-applying-k-operations/solutions/5911536/runtime-445ms-solution/

import Foundation

public class Problem2530 {
    public func run() {
        let solve1 = maxKelements([10, 10, 10, 10, 10], 5)
        print("\(solve1) -- should be 50")
        let solve2 = maxKelements([1, 10, 3, 3, 3], 3)
        print("\(solve2) -- should be 17")
    }

    public func test(_ nums: [Int], _ k: Int) -> Int {
        return maxKelements(nums, k)
    }

    func maxKelements(_ nums: [Int], _ k: Int) -> Int {
        var heapSort: [Int] = nums.sorted(by: >)
        heapSort.insert(Int.max, at: 0)
        let n = heapSort.count
        var ret: Int = 0
        for _ in 0..<k {
            ret += heapSort[1]
            heapSort[1] = Int(ceil(Double(heapSort[1]) / 3.0))
            var i: Int = 1
            while i < n {
                let leftIdx = 2 * i
                let rightIdx = leftIdx + 1
                if (leftIdx >= n || heapSort[i] >= heapSort[leftIdx])
                        && (rightIdx >= n || heapSort[i] >= heapSort[rightIdx]) {
                    break
                }

                if rightIdx >= n || heapSort[leftIdx] >= heapSort[rightIdx] {
                    heapSort.swapAt(i, leftIdx)
                    i = leftIdx
                } else {
                    heapSort.swapAt(i, rightIdx)
                    i = rightIdx
                }
            }
        }

        return ret
    }
}
