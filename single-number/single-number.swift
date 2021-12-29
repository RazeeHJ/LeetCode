class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dict: [Int:Int] = [:]

        for i in 0..<nums.count {
            if let indx = dict[nums[i]] {
                dict[nums[i]] = nil
            } else {
                dict[nums[i]] = i
            }
        }
        return dict.first!.key
    }
}