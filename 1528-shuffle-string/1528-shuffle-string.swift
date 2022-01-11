class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        let  arr = Array(s)
        
        var newArray = [Character](repeating: "a", count: arr.count)
        for i in 0..<arr.count {
            newArray[indices[i]] = arr[i]
        }
        
        return String(newArray)
    }
}