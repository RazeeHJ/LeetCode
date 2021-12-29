class Solution {
    func toLowerCase(_ s: String) -> String {
        var newString: String = ""

        for char in s {
            if let ascii = char.asciiValue, ascii >= 65 && ascii <= 90 {
                newString += String(UnicodeScalar(ascii+32))
            } else {
                newString += String(char)
            }
        }

        return newString
    }
}