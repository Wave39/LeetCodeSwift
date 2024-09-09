//
//  Problem2326.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/9/24.
//

// 2326. Spiral Matrix IV (Medium)
// https://leetcode.com/problems/spiral-matrix-iv/

// https://leetcode.com/problems/spiral-matrix-iv/solutions/5759297/best-easy-to-understand-solution-for-filling-a-matrix-in-spiral-order-using-a-linked-list-in-swift/

public class Problem2326 {
    public func run() {
        let solve1 = spiralMatrix(3, 5, ListNode.arrayToList([3, 0, 2, 6, 8, 1, 7, 9, 4, 2, 5, 5, 0]))
        print("\(solve1) -- should be [[3, 0, 2, 6, 8], [5, 0, -1, -1, 1], [5, 2, 4, 9, 7]]")
        let solve2 = spiralMatrix(1, 4, ListNode.arrayToList([0, 1, 2]))
        print("\(solve2) -- should be [[0, 1, 2, -1]]")
    }

    public func test(_ m: Int, _ n: Int, _ head: ListNode?) -> [[Int]] {
        return spiralMatrix(m, n, head)
    }

    func spiralMatrix(_ m: Int, _ n: Int, _ head: ListNode?) -> [[Int]] {
        var matrix = [[Int]](repeating: [Int](repeating: -1, count: n), count: m)
        let dir = [(0, 1), (1, 0), (0, -1), (-1, 0)]
        var currentDirection = 0
        var top = 0
        var right = n - 1
        var down = m - 1
        var left = 0
        var r = 0
        var c = 0
        var current = head
        while current != nil {
            matrix[r][c] = current!.val
            current = current?.next
            let nextR = r + dir[currentDirection].0
            let nextC = c + dir[currentDirection].1
            if nextR > down || nextR < top || nextC > right || nextC < left {
                if currentDirection == 0 { top += 1 }
                else if currentDirection == 1 { right -= 1 }
                else if currentDirection == 2 { down -= 1 }
                else if currentDirection == 3 { left += 1 }

                currentDirection = (currentDirection + 1) % 4
            }

            r += dir[currentDirection].0
            c += dir[currentDirection].1
        }

        return matrix
    }
}
