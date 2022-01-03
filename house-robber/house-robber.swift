class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums[0]}
        
        var arr = [Int](repeating: 0, count: nums.count)
        
        arr[0] = nums[0]
        arr[1] = max(nums[0], nums[1])
        
        for i in 2..<nums.count {
            var max = max(arr[i-1], arr[i-2]+nums[i])
            arr[i] = max
        }
        
        return arr[nums.count-1]
    }
}