class Solution {
    func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
        let m = mat.count, n = mat[0].count
        var newArray: [Int] = [Int](repeating: 0, count: m * n)
        var row = 0, col = 0
        
        for i in 0..<newArray.count {
            newArray[i] = mat[row][col]
            
            if ((row+col) % 2 == 0) {
                let up = whenUp(&row,&col,n)
                row = up.row
                col = up.col
            } else {
                let down = whenDown(&row,&col,m)
                row = down.row
                col = down.col
            }
        }
        
        return newArray
    }
    
    func whenUp(_ row: inout Int, _ col: inout Int, _ n: Int) -> (row: Int, col: Int) {
        if (col == n-1) {
            row += 1
        } else if (row == 0) {
            col += 1
        } else {
            row -= 1
            col += 1
        }
        
        return (row, col)
    }
    
    func whenDown(_ row: inout Int, _ col: inout Int, _ m: Int) -> (row: Int, col: Int) {
        if (row == m-1) {
            col += 1
        } else if (col == 0) {
            row += 1
        } else {
            row += 1
            col -= 1
        }
        return (row, col)
    }
}
