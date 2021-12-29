class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let arr = s.split(separator: " ")
        let sizeOfArray = arr.count
        
        var str = arr[sizeOfArray-1]
        
        return str.count
        
    }
}