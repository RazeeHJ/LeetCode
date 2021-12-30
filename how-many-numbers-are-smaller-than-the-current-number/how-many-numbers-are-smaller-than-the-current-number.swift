class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let sorted = nums.sorted{$0 > $1}
    var arr = [Int](repeating: 0, count: sorted.count)
    
    for i in 0..<sorted.count {
        var j = i+1
            while (j < sorted.count && sorted[i] == sorted[j]) {
                j+=1
            }
        arr[i] = sorted.count-j
    }
    
    var dict: [Int:Int] = [:]
    for i in 0..<sorted.count {
        dict[sorted[i]] = arr[i]
    }
    
    var result = [Int](repeating: 0, count: nums.count)
    for i in 0..<nums.count {
        if let value = dict[nums[i]] {
            result[i] = value
        }
    }
    
    return result
    }
}