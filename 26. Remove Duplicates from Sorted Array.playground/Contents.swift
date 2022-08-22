// 26. Remove Duplicates from Sorted Array
// https://leetcode.com/problems/remove-duplicates-from-sorted-array/

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index1 = 0
    var index2 = 1
    while index2 < nums.count {
        if nums[index1] != nums[index2] {
            index1 += 1
            nums[index1] = nums[index2]
        }
        index2 += 1
    }
    return index1 + 1
}

var testArray = [1,1,2]
removeDuplicates(&testArray)

testArray = [0,0,1,1,1,2,2,3,3,4]
removeDuplicates(&testArray)
