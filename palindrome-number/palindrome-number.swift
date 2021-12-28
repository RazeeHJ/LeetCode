class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if (x < 0) {
            return false
        } else if (x < 10) {
            return true
        } else {
            var y = x
        var newValue = ""
        while y > 0 {
            var rem = y%10
            newValue.append("\(rem)")
            y = y/10
        }
        
        if (Int(newValue) == x) {
            return true
        } else {
            return false
        }
        }
        
        
    }
}