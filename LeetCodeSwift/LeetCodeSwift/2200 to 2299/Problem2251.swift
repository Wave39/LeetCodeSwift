//
//  Problem2251.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/11/23.
//

// 2251. Number of Flowers in Full Bloom (Hard)
// https://leetcode.com/problems/number-of-flowers-in-full-bloom/

// Somehow I just knew that my naive solution would fail under the weight of unrealistic data.
// At least it got through 46 of 52 test cases, which is better than my naive solutions usually do.
// https://leetcode.com/problems/number-of-flowers-in-full-bloom/solutions/4155410/swift-optimal-solution-binary-search/

public class Problem2251 {
    public func run() {
        let solve1 = fullBloomFlowers([[1, 6], [3, 7], [9, 12], [4, 13]], [2, 3, 7, 11])
        print("\(solve1) -- should be [1, 2, 2, 2]")
        let solve2 = fullBloomFlowers([[1, 10], [3, 3]], [3, 3, 2])
        print("\(solve2) -- should be [2, 2, 1]")
    }

    public func test(_ flowers: [[Int]], _ people: [Int]) -> [Int] {
        return fullBloomFlowers(flowers, people)
    }

    func fullBloomFlowers(_ flowers: [[Int]], _ people: [Int]) -> [Int] {
        // Create two arrays to store the sorted start and end times of full blooms.
        var starts: [Int] = []
        var ends: [Int] = []

        // Extract start and end times from the 'flowers' array and adjust for inclusivity.
        flowers.forEach {
            starts.append($0[0])
            // Add 1 to the end time to account for the inclusive bloom time range.
            ends.append($0[1] + 1)
        }

        // Sort both arrays in ascending order.
        starts.sort()
        ends.sort()

        // Define a binary search function.
        func binarySearch(_ nums: [Int], _ target: Int) -> Int {
            var l = 0
            var r = nums.count
            while l < r {
                let mid = (l + r) / 2
                if target < nums[mid] {
                    r = mid
                } else {
                    l = mid + 1
                }
            }
            return l
        }

        // Map the bloom times of people to the number of flowers in bloom at that time.
        return people.map {
            let flowersStartedToBloom = binarySearch(starts, $0)
            let flowersEndedToBloom = binarySearch(ends, $0)
            return flowersStartedToBloom - flowersEndedToBloom
        }
    }

    func fullBloomFlowers_naive(_ flowers: [[Int]], _ people: [Int]) -> [Int] {
        var retval = [Int]()
        for person in people {
            var count = 0
            for line in flowers {
                if person >= line[0] && person <= line[1] {
                    count += 1
                }
            }

            retval.append(count)
        }

        return retval
    }
}
