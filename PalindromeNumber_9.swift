class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        // Solution 1
        var str = String(x)
        var strRev = ""
        for char in str {
            strRev = "\(char)" + strRev
        }
        return str == strRev 

        // Solution 2
        var temp = x
        var reverse = 0
        if x > 0 && x < 10{
            return true
        }
        while temp > 0{ 
        var remainder = temp % 10 
        reverse = reverse * 10 + remainder
        temp = temp / 10 
        }
        return x == reverse
    }
}