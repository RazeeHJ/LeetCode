class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var sum = nums[0]
        var currentSub = nums[0]
        
        for i in 1..<nums.count {
            if nums[i] <= nums[i] + currentSub {
                currentSub += nums[i]
            } else {
                currentSub = nums[i]
            }
            
            if currentSub > sum {
                sum = currentSub
            }
        }
        
        return sum
    }
}