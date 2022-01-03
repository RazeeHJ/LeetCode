class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        } else if (nums.count == 2) {
            return max(nums[0], nums[1])
        } 
        
        var firstSubArray = [Int](repeating: 0, count: nums.count-1)
    for i in 0..<firstSubArray.count {
        firstSubArray[i] = nums[i]
    }
    
    var secondSubArray = [Int](repeating: 0, count: nums.count-1)
    for i in 1..<nums.count {
        secondSubArray[i-1] = nums[i]
    }

        return max(getMax(firstSubArray), getMax(secondSubArray))
    }
    
    func getMax(_ nums:[Int]) -> Int {
        guard nums.count > 1 else { return nums[0]}
        guard nums.count > 2 else { return max(nums[0], nums[1])}
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