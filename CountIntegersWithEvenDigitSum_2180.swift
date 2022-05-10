/*
Given a positive integer num, return the number of positive integers less than or equal to num whose digit sums are even.
The digit sum of a positive integer is the sum of all its digits.


Example 1:

Input: num = 4
Output: 2
Explanation:
The only integers less than or equal to 4 whose digit sums are even are 2 and 4.    
*/

class Solution {
    func countEven(_ num: Int) -> Int {
       var count = 0
        for i in 1...num{
            let number = [i].map{"\($0)"}.reduce(""){$0+$1}
            let arr = String(number).compactMap({$0.wholeNumberValue})
            let result = (arr.reduce(0, +))
            if result % 2 == 0{
              count += 1
            }
        }
        return count
    }
}