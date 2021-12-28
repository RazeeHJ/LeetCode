class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
    var result = [[Int]]()
    var level = 0

        while level < numRows {
        var line = [Int](repeating: 0, count: level+1)
        
        line[0] = 1
        if level == 0 {
            result.append(line)
            level += 1
            continue
        }
        line[level] = 1
        for i in 1..<level {
            line[i] = result[level-1][i-1]+result[level-1][i]
        }
        level += 1
        result.append(line)   
    }
    
    return result
    }
}