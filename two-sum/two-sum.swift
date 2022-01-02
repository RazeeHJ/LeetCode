class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int:Int] = [:]
        
        for (index, value) in nums.enumerated() {
            var expected = target - nums[index]
            
            if let dictIndx = dict[expected] {
                return [dictIndx, index]
            }    
            
            dict[value] = index
        }
        
        return []
    }
}