//nums = [-1,0,3,5,9,12], target = 9
// startIndex | endIndex | midIndex | target
//      0          5          2
//      3          5          
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var startIndex = 0
        var endIndex = nums.count - 1
        
        while startIndex <= endIndex {
            var midIndex = (startIndex + (endIndex-startIndex)/2)
            
            if nums[midIndex] == target {
                return midIndex
            } else if nums[midIndex] > target {
                endIndex = midIndex - 1
            } else {
                startIndex = midIndex + 1
            }
        }
        
        return -1
    }
}