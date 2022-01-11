class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var countNum: [Int:Int] = [:]
        
        for i in 0..<nums.count {
            if let count = countNum[nums[i]] {
                countNum[nums[i]] = count + 1
            } else {
                countNum[nums[i]] = 1
            }
        }
        
        var result = 0
        countNum.values.forEach { value in
            let count = (value*(value-1))/2
            result += count
        }
        
        return result
    }
}