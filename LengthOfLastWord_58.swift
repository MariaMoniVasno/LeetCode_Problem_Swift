/*
Given a string s consisting of some words separated by some number of spaces, return the length of the last word in the string.

A word is a maximal substring consisting of non-space characters only.
Example 1:
Input: s = "Hello World"
Output: 5
Explanation: The last word is "World" with length 5.
*/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
       // Solution 1
        var senArr = s.components(separatedBy:" ")
        let finalArr = senArr.filter { $0 != ""}
        return finalArr.last!.count

        // Solution 2
        var spiltArr = s.split(separator: " ")
        return spiltArr.last!.count
    }
}