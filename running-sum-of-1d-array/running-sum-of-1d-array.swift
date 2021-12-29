class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var arr = [Int](repeating: 0, count: nums.count)
        
        guard nums.count > 1 else {return nums}
        for i in 0..<nums.count {
            if i == 0 {
                arr[i] = nums[i]
            } else {
                arr[i] = arr[i-1] + nums[i]
            }
        }
        
        return arr
    }
}