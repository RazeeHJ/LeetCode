class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var dict: [Int:Int] = [:]
        
        for i in 0..<numbers.count {
            let compliment = target - numbers[i]
            
            if let indx = dict[compliment] {
                return [indx+1,i+1]
            }
            dict[numbers[i]] = i    

        }
        
        return []
    }
}