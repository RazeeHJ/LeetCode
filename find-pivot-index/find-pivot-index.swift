class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var pivotIndex = 0
        var sum = 0
        var left = 0
        
        for i in 0..<nums.count {
            sum += nums[i]
        }
        
        for i in 0..<nums.count {
            if (left == (sum-left-nums[i])) {
                return i
            }
            
            left += nums[i]
        }
        
        return -1
    }
}