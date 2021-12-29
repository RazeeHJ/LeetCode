class Solution {
    func sumOfDigits(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {return 0}
        var min: Int = nums[0]
        
        for i in 1..<nums.count {
            if (nums[i] < min) {
                min = nums[i]
            }
        }
        var total = digitTotal(min)
        if (total % 2 != 0) {
            return 0
        } else {
            return 1
        }
        
    }
    
    func digitTotal(_ value: Int) -> Int {
        var num = value
        var total = 0
        while (num != 0) {
            total += num%10
            num = num/10
        }
        
        return total
    }
}