//
//  Problem950.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/10/24.
//

// 950. Reveal Cards In Increasing Order (Medium)
// https://leetcode.com/problems/reveal-cards-in-increasing-order/

// https://leetcode.com/problems/reveal-cards-in-increasing-order/solutions/5001342/quick-and-clear-solution-in-swift-100-beats/

public class Problem950 {
    public func run() {
        let solve1 = deckRevealedIncreasing([17, 13, 11, 2, 3, 5, 7])
        print("\(solve1) -- should be [2, 13, 3, 11, 5, 17, 7]")
        let solve2 = deckRevealedIncreasing([1, 1000])
        print("\(solve2) -- should be [1, 1000]")
    }

    public func test(_ deck: [Int]) -> [Int] {
        return deckRevealedIncreasing(deck)
    }

    func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {
        var deck = deck.sorted(by: >)
        var queue : [Int] = [deck.removeFirst()]

        for card in deck {
            queue.insert(queue.popLast()!, at: 0)
            queue.insert(card, at: 0)
        }

        return queue
    }
}
