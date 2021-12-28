class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {        
        var ascii: UInt8 = 0
        
        for char in s {
            ascii ^= char.asciiValue!
        }
        
        for char in t {
            ascii ^= char.asciiValue!
        }

        return Character(UnicodeScalar(ascii))
    }
}