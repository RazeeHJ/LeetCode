class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var left = 0
        var right = nums.count-1
        var arr = nums
        while (left < right) {
            if (arr[left] % 2 != 0) {
                if (arr[right] % 2 == 0) {
                    var temp = arr[right]
                    arr[right] = arr[left]
                    arr[left] = temp
                    left += 1
                }
                right -= 1
            } else {
                left += 1
            }
        }
        
        return arr
    }
}