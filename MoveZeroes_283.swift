/*
Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Note that you must do this in-place without making a copy of the array.

 

Example 1:

Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]
*/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        // Solution 1
        var resultArr = [Int]()
        for i in nums{
            if i != 0{
            resultArr.append(i) // resultArr += [i]
            }
        }
        nums = resultArr  + Array(repeating:0, count: nums.count - resultArr.count)

        // Solution 2
        var staticCount = nums.count 
        var count  = 0
        var number = nums
        nums.removeAll()
        for i in number{
            if i != 0{
            nums.append(i)
            }else{
            count += 1
            }
        }
        for _ in 0..<count{
            nums.append(0)
        }
    }
}
