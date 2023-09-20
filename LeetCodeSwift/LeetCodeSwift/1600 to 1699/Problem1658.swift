//
//  Problem1658.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/20/23.
//

// 1658. Minimum Operations to Reduce X to Zero (Medium)
// https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/

// I thought I had a good thing going with my recursive routine, but the 3rd test case was not working,
// and I did not want to have to unroll all the recursive calls.
// Probably just as well, as it would have probably ran over time on the maximal test case.
// https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/solutions/1016454/swift-o-n-solution/

public class Problem1658 {
    public func run() {
        let solve1 = minOperations([1, 1, 4, 2, 3], 5)
        print("\(solve1) -- should be 2")
        let solve2 = minOperations([5, 6, 7, 8, 9], 4)
        print("\(solve2) -- should be -1")
        let solve3 = minOperations([3, 2, 20, 1, 1, 3], 10)
        print("\(solve3) -- should be 5")
    }

    public func test(_ nums: [Int], _ x: Int) -> Int {
        return minOperations(nums, x)
    }

    func minOperations(_ nums: [Int], _ x: Int) -> Int {
        let c = nums.count
        var leftSums = [0: 0], leftSum = 0
        for left in 0..<c {
            leftSum += nums[left]
            if leftSums[leftSum] != nil {
                continue
            } else {
                leftSums[leftSum] = left + 1
            }
        }
        var result = leftSums[x, default: Int.max], rightSum = 0
        for right in stride(from: c - 1, through: 0, by: -1) {
            rightSum += nums[right]
            if let left = leftSums[x - rightSum], right >= left {
                result = min(result, left + (c - right))
            }
        }
        return result == Int.max ? -1 : result
    }

    func minOperations_nonworking(_ nums: [Int], _ x: Int) -> Int {
        func calc(_ nums: [Int], _ x: Int) -> Int {
            if nums.count == 1 {
                let val = nums[0]
                if val == x {
                    return 1
                } else {
                    return -1
                }
            } else {
                let left = nums.first!
                let right = nums.last!
                if left > x && right > x {
                    return -1
                } else if left == x && right == x {
                    return 1
                } else if left > x {
                    var newArr = nums
                    newArr.removeLast()
                    let calc = calc(newArr, x - right)
                    return calc == -1 ? -1 : 1 + calc
                } else if right > x {
                    var newArr = nums
                    newArr.removeFirst()
                    let calc = calc(newArr, x - left)
                    return 1 + calc == -1 ? -1 : 1 + calc
                } else {
                    var newArrayLeft = nums
                    newArrayLeft.removeLast()
                    var newArrayRight = nums
                    newArrayRight.removeFirst()
                    let calc1 = calc(newArrayLeft, x - right)
                    let calc2 = calc(newArrayRight, x - left)
                    if calc1 == -1 && calc2 == -1 {
                        return -1
                    } else if calc1 == -1 {
                        return 1 + calc2
                    } else if calc2 == -1 {
                        return 1 + calc1
                    } else {
                        return 1 + min(calc1, calc2)
                    }
                }
            }
        }

        return calc(nums, x)
    }
}
