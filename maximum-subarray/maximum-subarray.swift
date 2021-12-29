// nums = [-2,1,-3,4,-1,2,1,-5,4]
// index | currentSub | Sum |
//   0         -2        -2
//   1          1         1
//   2         -2         1
//   3          4         4
//   4          3         4
//   5          5         5
//   6          6         6
//   7          1         6
//   8          5         6  
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var currentSub = nums[0]
        var sum = nums[0]
        
        for i in 1..<nums.count {
            if (nums[i] > currentSub + nums[i]) {
                currentSub = nums[i]
            } else {
                currentSub += nums[i]
            }
            
            if (currentSub > sum) {
                sum = currentSub
            }
        }
        
        return sum
    }
}