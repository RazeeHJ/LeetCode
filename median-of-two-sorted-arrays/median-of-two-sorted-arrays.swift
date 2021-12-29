class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var m = nums1.count - 1
        var n = nums2.count - 1
        var right = nums1.count + nums2.count - 1
        var mergedArray = nums1 + nums2

        while right >= 0 {
            let n1 = m >= 0 ? nums1[m] : Int.min
            let n2 = n >= 0 ? nums2[n] : Int.min

            if (n1 > n2) {
                mergedArray[right] = n1
                m -= 1
            } else {
                mergedArray[right] = n2
                n -= 1
            }
            right -= 1
        }

        let mid = mergedArray.count/2

        if mergedArray.count % 2 == 0 {
            return Double(mergedArray[mid-1] + mergedArray[mid])/2
        } else {
            return Double(mergedArray[mid])
        } 
    }
}