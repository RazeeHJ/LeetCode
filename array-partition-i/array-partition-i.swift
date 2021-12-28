class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let sorted = nums.sorted{ $0 < $1}
        var sum = 0
        
        for i in stride(from: 0, to: sorted.count-1, by: 2) {
            sum += min(sorted[i], sorted[i+1])    
        }
        
        return sum
    }
}