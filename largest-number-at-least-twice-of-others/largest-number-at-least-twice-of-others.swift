class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var max = 0
        var maxIndx = 0
        
        for i in 0..<nums.count {
            if max < nums[i] {
                max = nums[i]
                maxIndx = i
            }
        }
        
        for i in 0..<nums.count {
            if nums[i] * 2 > max && i != maxIndx {
                return -1
            }
        }
        
        return maxIndx
    }
}