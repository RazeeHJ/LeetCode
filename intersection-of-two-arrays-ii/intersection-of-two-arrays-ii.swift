class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let sortedNums1 = nums1.sorted()
        let sortedNums2 = nums2.sorted()

        var indx = 0
        if sortedNums1.count > sortedNums2.count {
            indx = sortedNums2.count
        } else {
            indx = sortedNums1.count
        }
        var arr: [Int] = []

        var startIndx = 0
        var left = 0
        var right = 0
        
        while (startIndx < indx) {
            let l = left < sortedNums1.count ? sortedNums1[left] : -1
            let r = right < sortedNums2.count ? sortedNums2[right] : -1
            
            if (l == -1 || r == -1) {
                return arr
            }
            
            if (l == r ) {
                arr.append(l)
                left += 1
                right += 1
                startIndx += 1
            } else if (l < r ) {
                left += 1
            } else if (r < l) {
                right += 1
            }
        }
        
        return arr
    }
}