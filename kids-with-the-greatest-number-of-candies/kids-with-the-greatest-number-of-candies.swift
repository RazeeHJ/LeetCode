class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var greatest = candies[0]
        var result = [Bool](repeating: false, count: candies.count) 
        
        for i in 1..<candies.count {
            if (candies[i] > greatest) {
                greatest = candies[i]
            }
        }

        for i in 0..<candies.count {
            if (candies[i] + extraCandies >= greatest) {
                result[i] = true
            } else {
                result[i] = false
            }
        }
               
        return result
    }
}