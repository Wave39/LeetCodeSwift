//
//  ListNodeExtensions.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/23/22.
//

extension ListNode {
    public static func arrayToList(_ arr: [Int]) -> ListNode {
        var listNodeArray = [ListNode]()
        for number in arr {
            listNodeArray.append(ListNode(number))
        }

        while listNodeArray.count != 1 {
            let lastItem = listNodeArray[listNodeArray.count - 1]
            listNodeArray[listNodeArray.count - 2].next = lastItem
            listNodeArray.removeLast()
        }

        return listNodeArray[0]
    }

    public func toArray() -> [Int] {
        var retval = [Int]()
        var ptr: ListNode? = self
        while ptr != nil {
            retval.append(ptr?.val ?? 0)
            ptr = ptr?.next
        }

        return retval
    }
}
