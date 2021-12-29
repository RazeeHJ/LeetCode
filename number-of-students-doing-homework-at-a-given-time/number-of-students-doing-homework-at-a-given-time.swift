class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var count = 0
        
        for i in 0..<startTime.count {
            if (startTime[i] <= queryTime && endTime[i] >= queryTime) {
                print("i", i)
                count += 1        
            }
        }
        
        return count
    }
}