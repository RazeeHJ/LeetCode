class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var k = k % nums.count 
        guard nums.count > 1 else {return}
        action(start: 0, end: nums.count-1, &nums)
        action(start: 0, end: k-1, &nums)
        action(start: k, end: nums.count-1, &nums)
    }
    
    func action(start: Int, end: Int, _ nums: inout [Int]) -> [Int] {
        var left = start
        var right = end
        while (left <= right) {
            let temp = nums[left]
            nums[left] = nums[right]
            nums[right] = temp
            left += 1
            right -= 1
        }
        
        return nums
    }
}