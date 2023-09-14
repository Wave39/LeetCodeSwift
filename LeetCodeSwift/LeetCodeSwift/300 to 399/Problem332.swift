//
//  Problem332.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/14/23.
//

// 332. Reconstruct Itinerary (Hard)
// https://leetcode.com/problems/reconstruct-itinerary/

// I knew this one was going to be too hard to brute force it, so I went right to the solutions:
// https://leetcode.com/problems/reconstruct-itinerary/solutions/522151/swift-dfs-solution/

public class Problem332 {
    public func run () {
        let solve1 = findItinerary([["MUC", "LHR"], ["JFK", "MUC"], ["SFO", "SJC"], ["LHR", "SFO"]])
        print("\(solve1) -- should be [\"JFK\", \"MUC\", \"LHR\", \"SFO\", \"SJC\"]")
        let solve2 = findItinerary([["JFK", "SFO"], ["JFK", "ATL"], ["SFO", "ATL"], ["ATL", "JFK"], ["ATL", "SFO"]])
        print("\(solve2) -- should be [\"JFK\", \"ATL\", \"JFK\", \"SFO\", \"ATL\", \"SFO\"]")
    }

    public func test(_ tickets: [[String]]) -> [String] {
        return findItinerary(tickets)
    }

    func findItinerary(_ tickets: [[String]]) -> [String] {
        if tickets.count == 0 { return [] }

        let sTickets = tickets.sorted { (first, second) -> Bool in
            return first[1] < second[1]
        }

        var graph: [String: [String]] = [:]
        for ticket in sTickets {
            let from = ticket[0]
            let to = ticket[1]
            if graph[from] == nil {
                graph[from] = [to]
            } else {
                graph[from]!.append(to)
            }
        }
        
        var res: [String] = []
        dfs(&graph, "JFK", &res)
        return res.reversed()
    }

    func dfs(_ graph: inout [String: [String]], _ ticket: String, _ res: inout [String]){
        if graph[ticket] != nil {
            while !graph[ticket]!.isEmpty {
                dfs(&graph, graph[ticket]!.removeFirst(), &res)
            }
        }

        res.append(ticket)
    }
}
