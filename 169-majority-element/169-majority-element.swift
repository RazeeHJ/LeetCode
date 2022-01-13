class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var elements: [Int:Int] = [:]
        
        for i in 0..<nums.count {
            if let value = elements[nums[i]] {
                elements[nums[i]] = value + 1
            } else {
                elements[nums[i]] = 1
            }
        }
        
        var majority = 0
        var count = 0
        for (key, value) in elements {
            if (value > count) {
                majority = key
                count = value
            }
        }
        
        return majority
    }
}