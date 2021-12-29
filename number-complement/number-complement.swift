class Solution {
    func findComplement(_ num: Int) -> Int {
        var nums = num
        var result = 0
        var power = 1
        
        while (nums > 0) {
            result += (nums%2^1)*power
            power <<= 1
            nums >>= 1
        }
        
        return result
        /*var nums = num
        var str = ""
        
        // convert to binary
        while (nums != 0) {
            str = String(nums%2) + str
            nums = nums/2
        }
        
        // convert to binary complement
        var str2 = ""
        for c in str {
            if (c == "1") {
                str2 += "0"
            } else {
                str2 += "1"
            }
        }
        
        // convert to digit
        var result = 0
        let reversed = str2.reversed()
        for (index, char) in reversed.enumerated() {
            if (char == "1") {
                result = result + Int(truncating: pow(2,index) as NSNumber)
            }
        }
        
        return result
        */
    }
}