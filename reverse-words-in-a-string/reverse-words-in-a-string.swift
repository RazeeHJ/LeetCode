class Solution {
    func reverseWords(_ s: String) -> String {
        var arr = s.split(separator: " ")
        var newString: String = ""
        
        // Reverse and add to string
        var right = arr.count-1
        while (0 <= right) {
            newString += arr[right]
            if (right != 0) {
                newString += " "
            }
            right -= 1

        }
        
        return newString
    }
}