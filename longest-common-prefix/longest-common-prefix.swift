class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var longestCommonPrefix: String = ""
        var indx = 0
        
        if (strs == nil || strs.count == nil) {return longestCommonPrefix}
        if strs.count < 2 { return strs[0] }
        for c in strs[0] {
            for i in 1..<strs.count {
                if indx >= strs[i].count || c != Array(strs[i])[indx] {
                    return longestCommonPrefix
                }
            }
            longestCommonPrefix.append(Array(strs[1])[indx])
            indx += 1
        }
        
        return longestCommonPrefix
    }
}