class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {return nums[0]}
        var sizeOfArray = nums.count - 1
        var arr: [Int] = [Int](repeating: 0, count: sizeOfArray+1)
        
        // Base cases
        arr[0] = nums[0]
        arr[1] = max(nums[0], nums[1])
        
        for i in 2..<nums.count {
            arr[i] = max(arr[i-1], arr[i-2]+nums[i])
        }
        return arr[sizeOfArray]
    }
}