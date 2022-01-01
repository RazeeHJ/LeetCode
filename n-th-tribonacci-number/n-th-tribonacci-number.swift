class Solution {
    func tribonacci(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        
        if n == 1 {
            return 1
        }
        
        if n == 2 {
            return 1
        }
        
        var result = [Int](repeating: 0, count: n+1)
        result[0] = 0
        result[1] = 1
        result[2] = 1
        
        for i in 3...n {
            result[i] = result[i-3] + result[i-2] + result[i-1]
        }
        
        return result[n]
    }
}