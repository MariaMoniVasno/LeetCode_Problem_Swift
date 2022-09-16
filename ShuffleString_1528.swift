/*
You are given a string s and an integer array indices of the same length. The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.

Return the shuffled string.

 

Example 1:
Input: s = "codeleet", indices = [4,5,6,7,0,2,1,3]
Output: "leetcode"
Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.

*/

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var arr = Array(s)
        var strArr = arr
        for (index,value) in indices.enumerated(){
            strArr[value] = arr[index]
        }
        return String(strArr)
    }
}