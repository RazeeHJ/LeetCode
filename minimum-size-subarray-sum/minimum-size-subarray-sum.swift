class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var slow = 0, total = 0
        var minSubCon = Int.max
        
        for i in 0..<nums.count {
            total += nums[i]
            
            while total >= target {
                minSubCon = min(minSubCon, i-slow+1)
                total -= nums[slow]
                slow += 1
            }
        }
        
        return minSubCon == Int.max ? 0 : minSubCon

    }
}