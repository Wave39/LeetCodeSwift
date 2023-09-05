//
//  NodeWithRandom.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/5/23.
//

public class NodeWithRandom {
    public var val: Int
    public var next: NodeWithRandom?
    public var random: NodeWithRandom?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }

    public static func getList(_ arr: [[Int?]]) -> [NodeWithRandom] {
        var retval = [NodeWithRandom]()
        for element in arr {
            retval.append(NodeWithRandom(element[0]!))
        }

        for idx in 0..<(retval.count - 1) {
            retval[idx].next = retval[idx + 1]
        }

        for idx in 0..<(retval.count - 1) {
            if let ptr = arr[idx][1] {
                retval[idx].random = retval[ptr]
            }
        }

        return retval
    }
}
