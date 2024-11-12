//
//  Problem2070.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/12/24.
//

// 2070. Most Beautiful Item for Each Query (Medium)
// https://leetcode.com/problems/most-beautiful-item-for-each-query/

// https://leetcode.com/problems/most-beautiful-item-for-each-query/solutions/6035296/swift/

public class Problem2070 {
    public func run() {
        let solve1 = maximumBeauty([[1, 2], [3, 2], [2, 4], [5, 6], [3, 5]], [1, 2, 3, 4, 5, 6])
        print("\(solve1) -- should be [2, 4, 5, 5, 6, 6]")
        let solve2 = maximumBeauty([[1, 2], [1, 2], [1, 3], [1, 4]], [1])
        print("\(solve2) -- should be [4]")
        let solve3 = maximumBeauty([[10, 1000]], [5])
        print("\(solve3) -- should be [0]]")
    }

    public func test(_ items: [[Int]], _ queries: [Int]) -> [Int] {
        return maximumBeauty(items, queries)
    }

    func maximumBeauty(_ items: [[Int]], _ queries: [Int]) -> [Int] {
        let beautyMap = [Int: Int](items.map { elem in (elem[0], elem[1]) }, uniquingKeysWith: max)
        let prices = beautyMap.keys.sorted()
        let queries = queries.enumerated().sorted { a, b in a.element < b.element }
        var result = Array(repeating: 0, count: queries.count)
        var maxBeauty = 0
        var i = 0
        for (queryIndex, query) in queries {
            while i < prices.count && prices[i] <= query {
                maxBeauty = max(maxBeauty, beautyMap[prices[i]]!)
                i += 1
            }

            result[queryIndex] = maxBeauty
        }

        return result
    }

    func maximumBeauty_naive(_ items: [[Int]], _ queries: [Int]) -> [Int] {
        var itemDict = [Int: Int]()
        for item in items {
            if itemDict[item[0]] == nil {
                itemDict[item[0]] = item[1]
            } else {
                itemDict[item[0]] = max(itemDict[item[0]]!, item[1])
            }
        }

        var retval = [Int]()
        for query in queries {
            let keys = itemDict.keys.filter { $0 <= query }
            var maxValue = 0
            for key in keys {
                maxValue = max(maxValue, itemDict[key]!)
            }

            retval.append(maxValue)
        }

        return retval
    }
}
