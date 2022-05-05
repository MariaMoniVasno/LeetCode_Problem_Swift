/*Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

Clarification:

What should we return when needle is an empty string? This is a great question to ask during an interview.

For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().
Input: haystack = "hello", needle = "ll"
Output: 2
*/

func strStr(_ haystack: String, _ needle: String) -> Int {
        var needleArr = needle.map{String($0)}
        var haystackArr = haystack.map{String($0)}
        if needle.count == 0{
            return (0)
        }else if haystack.contains(needle){
            let hayLen = haystack.count
            let needLen = needle.count
            let hayArr = Array(haystack)
            let needArr = Array(needle)
            for i in 0...hayLen - needLen{
                for j in 0..<needLen{
                if hayArr[i+j] != needArr[j]{
                    break
                }
                    if j+1 == needLen{
                        return(i)
                    }
                }
            }
        }else{
                return -1
        }
        return 0
}