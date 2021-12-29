class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let arr = Array(s.lowercased().filter{ $0.isLetter || $0.isNumber })

        var left: Int = 0
        var right: Int = arr.count - 1
        
        while (left < right) {
            if (arr[left] != arr[right]) {
                return false
            }
            
            left += 1
            right -= 1
        }
        
        return true
    }
}