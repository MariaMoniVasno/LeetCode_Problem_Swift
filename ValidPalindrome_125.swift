/*
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.


Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
*/

class Solution {
    func isPalindrome(_ s: String) -> Bool {
     var str = removeSpecialCharsFromString(text:s)
    var reverseStr = String(str.reversed())
        if str == reverseStr{
            return true
        }
        return false
    }
    func removeSpecialCharsFromString(text: String) -> String {
         let removeSpl : Set<Character> = 
             Set("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890")
         return String(text.filter {removeSpl.contains($0) }).lowercased()
    }
    }
