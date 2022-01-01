class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict: [Int:Int] = [:]
        
        for i in 0..<nums.count {
            if let value = dict[nums[i]] {
                return true
            }
            dict[nums[i]] = i
        }
        
        return false
    }
}