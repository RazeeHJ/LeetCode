class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var pairs = nums.count/2
        
        var result = [Int]()
        
        for i in 0..<pairs {
            let freqIndx = 2*i
            let valueIndx = (2*i)+1
        
            let freq = nums[freqIndx]
            for i in 0..<freq {
                result.append(nums[valueIndx])
            }
        }
        
        return result
    }
}