class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var i = 0
        var j = 0
        var max = 0
        
        for i in 0..<accounts.count {
            var value = 0
            
            for j in 0..<accounts[i].count {
                value += accounts[i][j]
            }
            
            if value > max {
                max = value
            }
        } 
        
        return max
    }
}