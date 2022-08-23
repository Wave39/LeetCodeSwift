//
//  Problem2.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/23/22.
//

public class Problem2 {
    public func run() {
        let solve1a = ListNode.arrayToList([2, 4, 3])
        let solve1b = ListNode.arrayToList([5, 6, 4])
        let solve1 = addTwoNumbers(solve1a, solve1b)
        print("\(solve1!.toArray()) should be [7,0,8]")

        let solve2a = ListNode.arrayToList([0])
        let solve2b = ListNode.arrayToList([0])
        let solve2 = addTwoNumbers(solve2a, solve2b)
        print("\(solve2!.toArray()) should be [0]")

        let solve3a = ListNode.arrayToList([9, 9, 9, 9, 9, 9, 9])
        let solve3b = ListNode.arrayToList([9, 9, 9, 9])
        let solve3 = addTwoNumbers(solve3a, solve3b)
        print("\(solve3!.toArray()) should be [8,9,9,9,0,0,0,1]")
    }

    public func test(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return addTwoNumbers(l1, l2)
    }

    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var outputArray = [Int]()
        var ptr1 = l1
        var ptr2 = l2
        var carry = false
        repeat {
            let val1 = ptr1?.val ?? 0
            let val2 = ptr2?.val ?? 0
            var sum = val1 + val2 + (carry ? 1 : 0)
            carry = sum > 9
            if sum > 9 {
                sum %= 10
            }

            outputArray.append(sum)
            if ptr1?.next != nil {
                ptr1 = ptr1!.next
            } else {
                ptr1 = nil
            }

            if ptr2?.next != nil {
                ptr2 = ptr2!.next
            } else {
                ptr2 = nil
            }            
        } while ptr1 != nil || ptr2 != nil

        if carry {
            outputArray.append(1)
        }

        //return ListNode.arrayToList(outputArray)
        var listNodeArray = [ListNode]()
        for number in outputArray {
            listNodeArray.append(ListNode(number))
        }

        while listNodeArray.count != 1 {
            let lastItem = listNodeArray[listNodeArray.count - 1]
            listNodeArray[listNodeArray.count - 2].next = lastItem
            listNodeArray.removeLast()
        }

        return listNodeArray[0]
    }
}
