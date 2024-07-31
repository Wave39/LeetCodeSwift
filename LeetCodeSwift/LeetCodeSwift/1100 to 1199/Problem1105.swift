//
//  Problem1105.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/31/24.
//

// 1105. Filling Bookcase Shelves (Medium)
// https://leetcode.com/problems/filling-bookcase-shelves/

// https://leetcode.com/problems/filling-bookcase-shelves/solutions/5562081/dp-clean-short/

public class Problem1105 {
    public func run() {
        let solve1 = minHeightShelves([[1, 1], [2, 3], [2, 3], [1, 1], [1, 1], [1, 1], [1, 2]], 4)
        print("\(solve1) -- should be 6")
        let solve2 = minHeightShelves([[1, 3], [2, 4], [3, 2]], 6)
        print("\(solve2) -- should be 4")
    }

    public func test(_ books: [[Int]], _ shelfWidth: Int) -> Int {
        return minHeightShelves(books, shelfWidth)
    }

    func minHeightShelves(_ books: [[Int]], _ shelfWidth: Int) -> Int {
        let bookCount = books.count
        var dp = CollectionOfOne(0) + ContiguousArray(repeating: Int.max, count: bookCount)

        for i in 1...bookCount {
            var width = 0
            var height = 0

            for j in stride(from: i, to: 0, by: -1) {
                width += books[j - 1][0]
                if width > shelfWidth {
                    break
                }

                height = max(height, books[j - 1][1])
                dp[i] = min(dp[i], dp[j - 1] + height)
            }
        }
        
        return dp[bookCount]
    }
}
