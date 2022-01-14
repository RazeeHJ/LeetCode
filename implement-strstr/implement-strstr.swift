class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty { return 0 }
        if (haystack.count < needle.count) { return -1 }
        
        let h = Array(haystack)
        let n = Array(needle)
        
        for i in 0...haystack.count-needle.count {
            if h[i..<i+n.count] == n[0..<n.count] {
                return i
            }
        }
        return -1
    }
}