/*
Given a string columnTitle that represents the column title as appear in an Excel sheet, return its corresponding column number.

For example:

A -> 1
B -> 2
C -> 3
...
Z -> 26
AA -> 27
AB -> 28 
...
 

Example 1:

Input: columnTitle = "A"
Output: 1
*/

class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var result = 0
        for i in columnTitle.unicodeScalars{
            result = (result * 26) + Int(i.value - 64)
        }
        return result
    }
}