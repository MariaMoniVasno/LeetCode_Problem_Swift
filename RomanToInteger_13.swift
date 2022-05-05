/*
Given a roman numeral, convert it to an integer.

Example 1:

Input: s = "III"
Output: 3
Explanation: III = 3.

*/


class Solution {
    func romanToInt(_ s: String) -> Int {
        var ans = 0
        var lastSymbol = Roman.I.rawValue
        for i in s.reversed(){
            var currentSymbol = String(i).romanStr.rawValue
            if currentSymbol < lastSymbol{
                ans -= currentSymbol
            }else{
                ans += currentSymbol
            }
            lastSymbol = currentSymbol
        }
        return ans
    }
}
    enum Roman: Int {
        case I = 1
        case V = 5
        case X = 10
        case L = 50
        case C = 100
        case D = 500
        case M = 1000
        }


extension String {
    var romanStr : Roman{
        switch self{
            case "I":
            return .I
            case "V" :
            return .V
            case "X" :
            return .X
            case "L" :
            return .L
            case "C" :
            return .C
            case "D" :
            return .D
            case "M" :
            return .M
            default :
            return .I
        }
    }
}