// 
class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var left = 0
        var right = nums.count - 1
        
        var newArray = nums
        var indx = nums.count - 1
        
        while (left <= right) {
            if (nums[left] * nums[left] > nums[right]*nums[right]) {
                newArray[indx] = nums[left] * nums[left]
                
                left += 1
            } else {
                newArray[indx] = nums[right] * nums[right]
                right -= 1
            }
            indx -= 1
        }
        
        return newArray
    }
}