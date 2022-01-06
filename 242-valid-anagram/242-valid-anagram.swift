class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let sortedS = s.sorted()
        let sortedT = t.sorted()
        
        if sortedS == sortedT {
            return true
        } else {
            return false
        }
    }
}