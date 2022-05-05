/*
Given an array nums of size n, return the majority element.

The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 

Example 1:

Input: nums = [3,2,3]
Output: 3

*/

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        // Solution 1
     let counts = nums.reduce(into: [:]) { counts, word in counts[word, default: 0] += 1 }
        var maxCount =  counts.filter{$0.value > nums.count/2}
        return maxCount.keys.first! 


        // Solution
    }
}