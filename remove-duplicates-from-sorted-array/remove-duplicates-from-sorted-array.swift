class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var slow = 0
        var fast = 0
        
        guard nums.count > 0 else {return 0}
        
        while fast < nums.count {
            if nums[slow] == nums[fast] {
                fast += 1
            } else {
                slow += 1
                nums[slow] = nums[fast]
                fast += 1
            }
        }
        
        return slow + 1
    }
}