// encoded[i] = arr[i] ^ arr[i+1]
// arr[i+1] = arr[i] ^ encoded[o]
//

class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var result = [Int](repeating: 0, count: encoded.count+1)
        result[0] = first
        
        for i in 0..<encoded.count {
            result[i+1] = result[i] ^ encoded[i]  
        }
        
        return result
    }
}