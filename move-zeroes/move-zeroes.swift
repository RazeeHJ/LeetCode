// nums = [0,1,0,3,12]
// slow | fast
//   0      0
//   0      1       [1,0,0,3,12]
//   1      2
//   1      3       [1,3,0,12]
//   2      4
//

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var slow = 0
        var fast = 0
        
        while fast < nums.count {
            if nums[fast] == 0 {
                fast += 1
            } else {
                if nums[slow] == 0 {
                    var temp = nums[slow]
                    nums[slow] = nums[fast]
                    nums[fast] = temp
                }
                slow += 1
                fast += 1
            }
        }
    }
}