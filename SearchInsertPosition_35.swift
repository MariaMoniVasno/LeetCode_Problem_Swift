/*
Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity.
Input: nums = [1,3,5,6], target = 5
Output: 2
*/

class Solution {
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
// Solution 1
    var i = 0
    while i < nums.count{
        if target <= nums[i]{
            return i
        }
        i += 1
        return i
    }


// Solution 2
    if nums.contains(target){
          return nums.firstIndex(of:target)!
        }else if nums.count == 1{
            return nums[0] < target ? 1 : 0
        }else{
            var mid = Int()
            var left = 0
            var right = nums.count - 1
            repeat {
                mid = (left + right) / 2
                if target < nums[mid]{
                    right = mid - 1
                }else{
                    left = mid + 1
                }
            }while (left <= right)
           return left
        }
        return 0
    }
}