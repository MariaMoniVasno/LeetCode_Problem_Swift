/*
You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?


Example 1:

Input: n = 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps
*/

class Solution {
    func climbStairs(_ n: Int) -> Int {
        var stairsArr = [0,1,2]
        if n <= 2{
            return stairsArr[n]
        }
        for i in 3...n{
           stairsArr.append(stairsArr[i - 1] + stairsArr[i - 2]) 
        }
        return stairsArr[n]
    }
}