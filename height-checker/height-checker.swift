class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        let sorted = heights.sorted()
        var count = 0
        
        for i in 0..<heights.count {
            if heights[i] != sorted[i] {
                count += 1
            }
        }
        
        return count
    }
}