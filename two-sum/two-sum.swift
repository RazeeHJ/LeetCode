class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict : [Int:Int] = [:]

        for i in 0..<nums.count {
            var expected = target - nums[i]
            if let indx = dict[expected] {
                return [indx, i]
            }
            dict[nums[i]] = i
        }
        
        return []
    }
}