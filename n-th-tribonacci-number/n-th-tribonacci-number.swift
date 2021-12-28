//
// Tn = Tn-3 + Tn-2 + Tn-1 
class Solution {
    func tribonacci(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        
        if n == 1 || n == 2 {
            return 1
        }
        
        var arr = [Int](repeating: 0, count: n+1)
        arr[0] = 0
        arr[1] = 1
        arr[2] = 1
        for i in 3...n {
            arr[i] = arr[i-3] + arr[i-2] + arr[i-1]
        }
        
        return arr[n]
    }
}