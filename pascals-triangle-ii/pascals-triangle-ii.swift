class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var arr = [[Int]]()
        var level = 0

        while (level <= rowIndex) {
            var line = [Int](repeating: 0, count: level+1)

            line[0] = 1
            if (level == 0) {
                level += 1
                arr.append(line)
                continue
            }

            line[level] = 1
            for i in 1..<level {
                line[i] = arr[level-1][i-1]+arr[level-1][i]
            }

            arr.append(line)
            level += 1
        }

        return arr[rowIndex]
    }
}