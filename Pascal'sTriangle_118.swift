/*
Given an integer numRows, return the first numRows of Pascal's triangle.

Example 1:

Input: numRows = 5
Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
*/

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 0{
            return [[]]
        }
        var result = [[1]]
        for row in 1..<numRows{
            result.append([1])
            for i in 1..<row{
                result[row].append(result[row - 1][i - 1] + result[row - 1][i])
            }
            result[row].append(1)
        }
        return result
    }
}