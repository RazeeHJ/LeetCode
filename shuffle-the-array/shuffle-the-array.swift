class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var indx = 0
        var xIndx = 0
        var yIndx = n
        
        var result = [Int](repeating: 0, count: nums.count)
        while (indx < nums.count-1) {
            if (xIndx < n) {
                result[indx] = nums[xIndx]
                indx += 1
                xIndx += 1
            }
            
            if (yIndx < nums.count) {
                result[indx] = nums[yIndx]
                indx += 1
                yIndx += 1
            }
        }
        
        return result
    }
}