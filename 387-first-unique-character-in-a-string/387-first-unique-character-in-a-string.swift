class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var charDict: [Character: Int] = [:]
        var charArray = Array(s)
        
        guard charArray.count > 0 else {return -1}
        guard charArray.count > 1 else {return 0}

        for i in 0..<charArray.count {
            if let indx = charDict[charArray[i]] {
                charDict[charArray[i]] = -1
            } else {
                charDict[charArray[i]] = i
            }
        }
        
        for i in 0..<charArray.count {
            if let indx = charDict[charArray[i]] {
                if indx != -1 {
                    return indx
                }
            }
        }
        return -1
    }
}