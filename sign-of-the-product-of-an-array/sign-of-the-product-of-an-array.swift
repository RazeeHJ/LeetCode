class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var sign: Int = 1
        
        for i in 0..<nums.count {
            if nums[i] == 0 {
                return 0
            } else if nums[i] < 0 {
                sign *= -1
            }
        }
        
        return sign
    }
}