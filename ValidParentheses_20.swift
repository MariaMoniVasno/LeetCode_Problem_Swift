/*
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
 

Example 1:

Input: s = "()"
Output: true
*/

class Solution {
    func isValid(_ s: String) -> Bool {
    var charArr = [Character]()
    if s.count % 2 != 0 {
        return false
    } 
    for i in s{
        switch i{
            case "{":
            charArr.append("}")
            case "[":
            charArr.append("]")
            case "(":
            charArr.append(")")
            default:
            if charArr.isEmpty || charArr.removeLast() != i{
                return false
            }
        }
    }    
        return charArr.isEmpty
    }
}