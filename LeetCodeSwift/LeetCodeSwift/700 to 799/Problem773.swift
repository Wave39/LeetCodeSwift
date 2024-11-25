//
//  Problem773.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/25/24.
//

// 773. Sliding Puzzle (Hard)
// https://leetcode.com/problems/sliding-puzzle/

// https://leetcode.com/problems/sliding-puzzle/solutions/6080400/swift-bfs/

public class Problem773 {
    public func run() {
        let solve1 = slidingPuzzle([[1, 2, 3], [4, 0, 5]])
        print("\(solve1) -- should be 1")
        let solve2 = slidingPuzzle([[1, 2, 3], [5, 4, 0]])
        print("\(solve2) -- should be -1")
        let solve3 = slidingPuzzle([[4, 1, 2], [5, 0, 3]])
        print("\(solve3) -- should be 5")
    }

    public func test(_ board: [[Int]]) -> Int {
        return slidingPuzzle(board)
    }

    func slidingPuzzle(_ board: [[Int]]) -> Int {
        let moves = [[1, 3], [0, 2, 4], [1, 5], [0, 4], [1, 3, 5], [2, 4]]
        var bfs = [board.flatMap{$0}]
        var visited = Set([bfs[0]])
        var result = 0

        while !bfs.isEmpty {
            var nextBfs = [[Int]]()
            for board in bfs {
                guard board != [1, 2, 3, 4, 5, 0] else { return result }
                let zeroIndex = board.firstIndex(of: 0)!
                for move in moves[zeroIndex] {
                    var board = board
                    board.swapAt(move, zeroIndex)
                    guard visited.insert(board).inserted else { continue }
                    nextBfs.append(board)
                }
            }
            bfs = nextBfs
            result += 1
        }

        return -1
    }
}
