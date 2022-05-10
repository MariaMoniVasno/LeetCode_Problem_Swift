/*
You are given a string s consisting of lowercase English letters, and an integer k.

First, convert s into an integer by replacing each letter with its position in the alphabet (i.e., replace 'a' with 1, 'b' with 2, ..., 'z' with 26). Then, transform the integer by replacing it with the sum of its digits. Repeat the transform operation k times in total.

For example, if s = "zbax" and k = 2, then the resulting integer would be 8 by the following operations:

Convert: "zbax" ➝ "(26)(2)(1)(24)" ➝ "262124" ➝ 262124
Transform #1: 262124 ➝ 2 + 6 + 2 + 1 + 2 + 4 ➝ 17
Transform #2: 17 ➝ 1 + 7 ➝ 8
Return the resulting integer after performing the operations described above.
 

Example 1:

Input: s = "iiii", k = 1
Output: 36
Explanation: The operations are as follows:
- Convert: "iiii" ➝ "(9)(9)(9)(9)" ➝ "9999" ➝ 9999
- Transform #1: 9999 ➝ 9 + 9 + 9 + 9 ➝ 36
Thus the resulting integer is 36.
*/

class Solution {
    func getLucky(_ s: String, _ k: Int) -> Int {
        var temp = [Int]()
        var j = 1
        var result = 0
        for i in s{
            let aScalars = i.unicodeScalars
            let aCode = Int(aScalars[aScalars.startIndex].value - 96)
            temp.append(aCode)
        }
         while j <= k{
            let number = temp.map{"\($0)"}.reduce(""){$0+$1}
            let arr = String(number).compactMap({$0.wholeNumberValue})
            result = (arr.reduce(0, +))
            temp = [result]
            j += 1
        }
        return result
    }
}