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

    public func nodeAtIndex(_ idx: Int) -> ListNode {
        var pointer = self
        var index = 0
        while index < idx {
            pointer = pointer.next!
            index += 1
        }
        
        return pointer
    }

    public func tail() -> ListNode {
        var pointer = self
        while pointer.next != nil {
            pointer = pointer.next!
        }

        return pointer
    }

    public func count() -> Int {
        var count = 1
        var pointer = self
        while pointer.next != nil {
            count += 1
            pointer = pointer.next!
        }

        return count
    }
}
