class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let sorted1 = nums1.sorted()
        let sorted2 = nums2.sorted()

        var indx1 = 0
        var indx2 = 0
        
        var arr = [Int]()
        
        while (indx1 < sorted1.count && indx2 < sorted2.count) {
            if (sorted1[indx1] == sorted2[indx2]) {
                arr.append(sorted1[indx1])
                indx1 += 1
                indx2 += 1
            } else if (sorted1[indx1] < sorted2[indx2]) {
                indx1 += 1
            } else {
                indx2 += 1
            }
        }
        
        return arr
    }
}