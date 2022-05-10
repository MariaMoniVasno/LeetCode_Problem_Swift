/*
Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.

 
Example 1:

Input: num = 38
Output: 2
Explanation: The process is
38 --> 3 + 8 --> 11
11 --> 1 + 1 --> 2 
Since 2 has only one digit, return it.

*/

class Solution {
    func addDigits(_ num: Int) -> Int {
        var number = num
        while number > 9{
          var temp = 0
            while number > 0{
              temp += number % 10
              number = number / 10
            }
        number = temp
        }
        return number
    }
}