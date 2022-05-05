/*
Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

 

Example 1:

Input: strs = ["flower","flow","flight"]
Output: "fl"
*/


class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
       if strs.count == 0{
            return ""
        }
        var resultStr = strs[0]
        for i in 1..<strs.count{
          resultStr = getLongestPrefix(str1:resultStr, str2:strs[i])
        }
        
    func getLongestPrefix(str1:String,str2:String) -> String{
        var arrStr1 = Array(str1)
        var arrStr2 = Array(str2)
        var result = ""
        var index = 0
        while index < arrStr1.count && index < arrStr2.count && arrStr1[index] == arrStr2[index]{
            result = result+String(arrStr1[index])
            index += 1
        }
        return result
    }
        return resultStr
    }
}