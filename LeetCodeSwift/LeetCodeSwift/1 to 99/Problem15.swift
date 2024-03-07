//
//  Problem15.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/7/24.
//

// 15. 3Sum (Medium)
// https://leetcode.com/problems/3sum/

public class Problem15 {
    public func run() {
        let solve1 = threeSum([-1, 0, 1, 2, -1, -4])
        print("\(solve1) -- should be [[-1, 0, 1], [-1, -1, 2]]")
        let solve2 = threeSum([0, 1, 1])
        print("\(solve2) -- should be []")
        let solve3 = threeSum([0, 0, 0])
        print("\(solve3) -- should be [[0, 0, 0]]")
    }

    public func test(_ nums: [Int]) -> [[Int]] {
        return threeSum(nums)
    }

    func threeSum(_ nums: [Int]) -> [[Int]] {
        var retval = Set<[Int]>()
        var valueDict = [Int: Int]()
        nums.forEach { valueDict[$0, default: 0] += 1 }
        let firstValues = Set(nums)
        for firstValue in firstValues {
            valueDict[firstValue]! -= 1
            let secondValues = Set(valueDict.keys.filter { valueDict[$0]! > 0 })
            for secondValue in secondValues {
                valueDict[secondValue]! -= 1
                let searchValue = -(firstValue + secondValue)
                if let ctr = valueDict[searchValue], ctr > 0 {
                    let arr = [firstValue, secondValue, searchValue].sorted()
                    retval.insert(arr)
                }

                valueDict[secondValue]! += 1
            }

            valueDict[firstValue]! += 1
        }

        return Array(retval)
    }
}
