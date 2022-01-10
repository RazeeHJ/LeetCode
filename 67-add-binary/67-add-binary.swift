class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var aIndex = a.count - 1
        var bIndex = b.count - 1
        var result: String = ""
        var carry: Int = 0
        
        while (aIndex >= 0 || bIndex >= 0){
            let a = aIndex >= 0 ? String(Array(a)[aIndex]) : ""
            let b = bIndex >= 0 ? String(Array(b)[bIndex]) : ""
            var sum = carry
            
            if (a != "") {
                sum += Int(a)!
                aIndex -= 1
            }
            
            if (b != "") {
                sum += Int(b)!
                bIndex -= 1
            }
            
            result = "\(sum % 2)" + result
            carry = sum/2
        }
        
        if carry != 0 {
            result = "1" + result
        }
        return result
    }
}