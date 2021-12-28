class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var slow = 0
        var fast = 0

        while (fast < nums.count) {
            if (nums[slow] == val) {
                if (nums[fast] != val) {
                    nums[slow] = nums[fast]
                    nums[fast] = val
                    slow += 1
                } 
                fast += 1
            } else {
                slow += 1
                fast += 1
            }
        }
        
        return slow
    }
}