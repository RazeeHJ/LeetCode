class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var nums1Index = m - 1
        var nums2Index = n - 1
        var indx = m + n - 1
        
        while (nums1Index >= 0 || nums2Index >= 0) {
            var left = nums1Index >= 0 ? nums1[nums1Index] : Int.min
            var right = nums2Index >= 0 ? nums2[nums2Index] : Int.min
            
            if (left > right) {
                nums1[indx] = left
                nums1Index -= 1
            } else {
                nums1[indx] = right
                nums2Index -= 1
            }
            indx -= 1
        }
    }
}