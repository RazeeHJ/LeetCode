class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        guard ransomNote.count <= magazine.count else {return false}
        
        var keepChar: [Character:Int] = [:]
        
        let magazineArray = Array(magazine)
        for i in 0..<magazineArray.count {
            if let count = keepChar[magazineArray[i]] {
                keepChar[magazineArray[i]] = count + 1
            } else {
                keepChar[magazineArray[i]] = 1
            }
        }
        
        let ransomNoteChar = Array(ransomNote)
        for i in 0..<ransomNoteChar.count {
            
            if let count = keepChar[ransomNoteChar[i]] {
                if (count < 1) {
                    return false
                } else {
                    keepChar[ransomNoteChar[i]] = count-1
                }
            } else {
                return false
            }
        }
        
        return true
    }
}