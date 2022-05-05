/*
You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits.


Example 1:

Input: digits = [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.
Incrementing by one gives 123 + 1 = 124.
Thus, the result should be [1,2,4].
*/
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        if digits.count == 1 && digits[0] == 0{
           return([1])
        }else{
           let filterArr = digits.filter{$0 == 9}
             if filterArr.count == digits.count{
                 var arr = filterArr.map{$0 == 9 ? 0 : 1}
                 arr.insert(1, at: 0)
                 return (arr)
             }
         }
            var halfArr = digits
            if digits.count >= 20{
            halfArr = digits.suffix(10)
            }
            var intVal = halfArr.reduce(""){$0 + String($1)}
            let sum = String(Int(intVal)! + 1)
            var intVal2 = sum.compactMap{ $0.wholeNumberValue }
            for i in 0...halfArr.count {
               if halfArr[i] == 0{
                   intVal2.insert(0, at: i)
                }else{
                   break
                }
            }
        return((digits.prefix(digits.count - halfArr.count) + intVal2))
    }
}