class Solution {
    func removeVowels(_ s: String) -> String {
        var newString: String = ""
        let chars: Set<Character> = ["a","e","i","o","u"]
        
        for char in s {
            if (!chars.contains(char)) {
                newString += String(char)
            }
        }
        
        return newString
    }
}