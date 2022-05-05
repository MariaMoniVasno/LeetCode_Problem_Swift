/*
Given a non-negative integer x, compute and return the square root of x.

Since the return type is an integer, the decimal digits are truncated, and only the integer part of the result is returned.

Note: You are not allowed to use any built-in exponent function or operator, such as pow(x, 0.5) or x ** 0.5.

 

Example 1:

Input: x = 4
Output: 2
*/


class Solution {
    func mySqrt(_ x: Int) -> Int {
        // Solution 1
        var low = 1 , high = x
        while low != high{
            var mid = (high + low)/2
            if mid * mid <= x && (mid + 1) * (mid + 1) > x{
                return mid
            }else if mid * mid > x{
                high = mid - 1
            }else{
                low = mid + 1
            }
        }
        return low
    }
}