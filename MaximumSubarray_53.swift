/*
Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

A subarray is a contiguous part of an array.

 

Example 1:

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.

*/
// Solution 1
var temp = nums[0]
var sum = nums[0]
for i in 1..<nums.count{
    temp = max(temp+nums[i],nums[i])
    sum = max(temp,sum)
}
return (sum)




