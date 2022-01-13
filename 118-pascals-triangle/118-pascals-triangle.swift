class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result = [[Int]]()
        var level = 0

        while level < numRows {
            var line = [Int](repeating: 0, count: level+1)

            for i in 0..<line.count {
                if (i == 0 || i == line.count-1) {
                    line[i] = 1
                } else {
                    line[i] = result[level-1][i-1]+result[level-1][i]
                }
            }
            result.append(line)
            level += 1
        }
    
        return result
    }
}