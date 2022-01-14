class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var result = [Int]()
        
        for i in 0..<nums.count {
            result.insert(nums[i], at: index[i])
        }
        
        return result
    }
}