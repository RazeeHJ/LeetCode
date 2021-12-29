class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var longest = 0
        var slow = 0
        var fast = 0
        var numberOfZeros = 0
        
        while fast < nums.count {
            if nums[fast] == 0 {
                numberOfZeros += 1
            }
            
            while (numberOfZeros == 2) {
                if nums[slow] == 0 {
                    numberOfZeros -= 1
                }
                slow += 1
            }
            
            longest = max(longest, fast-slow + 1)
            fast += 1
        }
        
        return longest
    }
}