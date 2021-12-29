class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxCount = 0, countOnes = 0
        
        for i in 0..<nums.count {
            if (nums[i] == 1) {
                countOnes += 1
            } else {
                if (countOnes > maxCount) {
                    maxCount = countOnes
                }
                countOnes = 0
            }
        }
        
        if (countOnes > maxCount) {
            return countOnes
        } else {
            return maxCount
        }
    }
}