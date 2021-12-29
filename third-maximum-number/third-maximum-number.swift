class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var max: Int? = nil
    var second_max: Int? = nil
    var third_max: Int? = nil
        
    for i in 0..<nums.count {
        if (nums[i] == max || nums[i] == second_max || nums[i] == third_max) {
            continue
        }
            
        if max == nil || nums[i] > max ?? 0 {
            third_max = second_max
            second_max = max
            max = nums[i]
        } else if ((second_max == nil) || nums[i] > second_max ?? 0) {
            third_max = second_max
            second_max = nums[i]
        } else if (third_max == nil || nums[i] > third_max ?? 0) {
            third_max = nums[i]
        }
    }
        
    if (third_max == nil) {
        return max ?? 0
    }
    return third_max ?? 0
    }
}