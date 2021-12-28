//

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var expected = 0
        var total = 0
        
        for i in 1...nums.count {
            expected += i
        }
        
        for i in 0..<nums.count {
            total += nums[i]
        }
        
        return expected-total
    }
}