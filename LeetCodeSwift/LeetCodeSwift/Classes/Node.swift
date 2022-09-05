//
//  Node.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/5/22.
//

public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}
