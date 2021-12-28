//[2,3,-2,0,-1,-10,-2]
// maxSoFar | minSoFar
//    
class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {return 0}
        var maxProduct = nums[0], max = nums[0], min = nums[0]
        
        for i in 1..<nums.count {
            var tempMax = Swift.max(nums[i], nums[i]*max, nums[i]*min)
            var tempMin = Swift.min(nums[i], nums[i]*max, nums[i]*min)
            
            max = tempMax
            min = tempMin
            maxProduct = Swift.max(maxProduct, max)
        }
        
        return maxProduct
    }
}