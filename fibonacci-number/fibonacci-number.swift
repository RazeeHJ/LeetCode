class Solution {
    func fib(_ n: Int) -> Int {
        if (n == 0) {
            return 0
        }
        if (n == 1) {
            return 1
        }
        
        if (n == 2) {
            return 1
        }
        var first = 1
        var second = 1
    
        for i in 3...n {
            var third = first + second //2
            first = second //1
            second = third //2
        }
        
        return second
    }
}