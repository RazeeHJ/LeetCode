// nums = [1,3,5,6], target = 2
// start | end | mid
//   0      3     1
//   0      1     0
//
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var start = 0
        var end = nums.count - 1
        
        while start <= end {
            var mid = start + (end-start)/2
            
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        
        return start
    }
}