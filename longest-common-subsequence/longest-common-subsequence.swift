class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        if (text1.count == 0 || text2.count == 0) {
            return 0
        }
        let text1Arr = Array(text1)
        let text2Arr = Array(text2)

        var arr = Array(repeating: Array(repeating: 0, count: text2.count+1), count: text1.count+1)
  
        for row in 1...text1Arr.count {
            for col in 1...text2Arr.count {
                if (text1Arr[row-1] == text2Arr[col-1]) {
                arr[row][col] = 1 + arr[row-1][col-1]
            } else {
                arr[row][col] = max(arr[row-1][col], arr[row][col-1])
            }
            }
        }
        return arr[text1.count][text2.count]
    }
}