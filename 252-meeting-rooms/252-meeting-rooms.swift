class Solution {
    func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
        guard intervals.count > 1 else {return true}
        let sorted = intervals.sorted {$0[0] < $1[0]}
        
        print(sorted)
        for i in 1..<sorted.count {
            if (sorted[i][0] < sorted[i-1][1]) {
                return false
            }
        }
        
        return true
    }
}