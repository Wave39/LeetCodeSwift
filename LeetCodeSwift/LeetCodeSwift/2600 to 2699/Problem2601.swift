//
//  Problem2601.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/11/24.
//

// 2601. Prime Subtraction Operation (Medium)
// https://leetcode.com/problems/prime-subtraction-operation/

// https://leetcode.com/problems/prime-subtraction-operation/solutions/3395220/swift/

public class Problem2601 {
    public func run() {
        let solve1 = primeSubOperation([4, 9, 6, 10])
        print("\(solve1) -- should be true")
        let solve2 = primeSubOperation([6, 8, 11, 12])
        print("\(solve2) -- should be true")
        let solve3 = primeSubOperation([5, 8, 3])
        print("\(solve3) -- should be false")
    }

    public func test(_ nums: [Int]) -> Bool {
        return primeSubOperation(nums)
    }

    func primeSubOperation(_ nums: [Int]) -> Bool {
        func findSmallestPrime(_ x: Int, _ y: Int) -> Int? {
            (x - y + 1..<x).first{n in n > 1 && (2..<n).first{ n % $0 == 0 } == nil}
        }

        var nums = nums
        for i in nums.indices.dropLast().reversed() where nums[i] >= nums[i + 1] {
            guard let prime = findSmallestPrime(nums[i], nums[i + 1]) else { return false }
            nums[i] -= prime
        }

        return true
    }
}
