class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var x = 0
        
        for i in 0..<operations.count {
            if (operations[i] == "X++" || operations[i] == "++X") {
                x += 1
            } else if(operations[i] == "--X" || operations[i] == "X--"){
                x -= 1
            }
        }
        
        return x
    }
}