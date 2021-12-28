class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        if intervals.isEmpty {return []}
        
        var sorted = intervals.sorted {$0[0] < $1[0]}
        var results = [sorted[0]]
        for i in 1..<sorted.count {
            var prevStart = results.last![0]
            var prevEnd = results.last![1]
            
            var currentStart = sorted[i][0]
            var currentEnd = sorted[i][1]
            
            if prevEnd >= currentStart {
                if prevEnd < currentEnd {
                    results.removeLast()
                    results.append([prevStart,currentEnd])
                } 
            } else {
                results.append([currentStart,currentEnd])
            }
        }
        
        return results
    }
}