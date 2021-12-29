class Solution {
    func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
        var sorted = nums.sorted { $0 < $1} 
        var arr: [Int] = []
        
        for i in 0..<sorted.count {
            if sorted[i] == target {
                arr.append(i)
            }
        }
        
        return arr
    }
}