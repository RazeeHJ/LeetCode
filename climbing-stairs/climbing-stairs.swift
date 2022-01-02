class Solution {
    func climbStairs(_ n: Int) -> Int {
        var result = [Int](repeating: 0, count: n+1)
        if n == 1 {
            return 1
        }
        if n == 2 {
            return 2
        }
        result[0] = 1
        result[1] = 2
        
        for i in 2..<n {
            result[i] = result[i-2] + result[i-1]
        }
        
        return result[n-1]
    }
}