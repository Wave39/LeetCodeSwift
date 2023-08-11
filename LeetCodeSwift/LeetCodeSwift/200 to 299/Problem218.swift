//
//  Problem218.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/29/22.
//

// 218. The Skyline Problem (Hard)
// https://leetcode.com/problems/the-skyline-problem/

// https://leetcode.com/problems/the-skyline-problem/discuss/1160331/Swift-intuitive-way-map-%2B-set-%2B-binary-search-O(n-log-n)

public class Problem218 {
    public func run() {
        let solve1 = getSkyline([[2, 9, 10], [3, 7, 15], [5, 12, 12], [15, 20, 10], [19, 24, 8]])
        print("\(solve1) -- should be [[2, 10], [3, 15], [7, 12], [12, 0], [15, 10], [20, 8], [24, 0]]")
        let solve2 = getSkyline([[0, 2, 3], [2, 5, 3]])
        print("\(solve2) -- should be [[0, 3], [5, 0]]")
    }

    public func test(_ buildings: [[Int]]) -> [[Int]] {
        return getSkyline(buildings)
    }

    func getSkyline(_ buildings: [[Int]]) -> [[Int]] {
        var startDict = [Int:[Int]]()
        var endDict = [Int:[Int]]()
        var timeline = Set<Int>()

        for building in buildings {
            let startPoint = building[0]
            let endPoint = building[1]
            let height = building[2]
            startDict[startPoint,default:[]].append(height)
            endDict[endPoint,default:[]].append(height)
            timeline.insert(startPoint)
            timeline.insert(endPoint)
        }

        var prev = 0
        var sortedArr = [0]
        var res = [[Int]]()

        let timelineArr = timeline.sorted()
        for point in timelineArr {
            if startDict[point] != nil {
                for n in startDict[point]! {
                    let index = search(n, sortedArr)
                    sortedArr.insert(n, at: index)
                }
            }
            if endDict[point] != nil {
                for n in endDict[point]! {
                    let index = search(n, sortedArr)
                    sortedArr.remove(at: index)
                }
                if prev > sortedArr.last! {
                    res.append([point, sortedArr.last!])
                    prev = sortedArr.last!
                }
            }

            let curr = sortedArr.last!
            if curr > prev {
                res.append([point, curr])
                prev = curr
            }
        }
        return res
    }

    func search(_ n: Int, _ arr: [Int]) -> Int {
        var l = 0, r = arr.endIndex
        while l < r {
            let mid = (l+r)>>1
            if arr[mid] < n {
                l = mid + 1
            } else {
                r = mid
            }
        }
        return l
    }
}
