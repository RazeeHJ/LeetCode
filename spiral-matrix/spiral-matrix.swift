class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var result = [Int]()
        var top = 0, left = 0
        var bottom = matrix.count-1, right = matrix[0].count-1
        var sizeOfArray = matrix.count * matrix[0].count
        
        while result.count < sizeOfArray {
            // go right
            for i in stride(from: left, to: right+1, by: 1 ) where result.count < sizeOfArray {
                result.append(matrix[top][i])
            }
            top += 1
            
            // go down
            for i in stride(from: top, to: bottom+1, by: 1) where result.count < sizeOfArray {
                result.append(matrix[i][right])
            }
            right -= 1
            
            // go left
            for i in stride(from: right, to: left-1, by: -1) where result.count < sizeOfArray {
                result.append(matrix[bottom][i])
            }
            bottom -= 1
            
            // go up
            for i in stride(from: bottom, to: top-1, by: -1) where result.count < sizeOfArray {
                result.append(matrix[i][left])
            }
            left += 1
        }
        
        return result
    }
}