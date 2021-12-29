class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var count = 0

        for i in 0..<sentences.count {
            var sentence = sentences[i].components(separatedBy: " ") 
        
            if (sentence.count > count) {
                count = sentence.count
            }
        }
        
        return count
    }
}