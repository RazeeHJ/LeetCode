class Solution {
    func addDigits(_ num: Int) -> Int {
        var digit = num
        
        while (digit/10 > 0) {
            digit = getDigits(digit)
        }
        return digit
    }
    
    func getDigits(_ num: Int) -> Int {
        var value = num
        var digit = 0
        
        while (value != 0) {
            digit += value % 10
            value = value/10
        }
        
        return digit
    }
}