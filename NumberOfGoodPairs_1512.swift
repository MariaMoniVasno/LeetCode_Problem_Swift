/*
Given an array of integers nums, return the number of good pairs.

A pair (i, j) is called good if nums[i] == nums[j] and i < j.

 

Example 1:

Input: nums = [1,2,3,1,1,3]
Output: 4
Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
*/

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var count = 0
        // Solution 1
        for i in 0..<nums.count{
            for j in 1..<nums.count{
                if nums[i] == nums[j] && i < j{
                    count += 1
                }
            }
        }

        // Solution 2
        for i in 0..<nums.count{
            for j in i+1..<nums.count{
                if nums[i] == nums[j] {
                 count += 1   
                }
            }
        }
        return count
    }
}