class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        var indx = digits.count - 1
        
        while (indx >= 0 && result[indx] == 9) {
            result[indx] = 0
            indx -= 1
        }
        
        if (indx == -1) {
            result.insert(1, at: 0)
        } else {
            result[indx] = result[indx] + 1
        }
        
        return result
    }
}