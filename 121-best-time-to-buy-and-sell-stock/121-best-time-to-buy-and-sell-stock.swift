class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buyingPrice = prices[0]
        var maxProfit = 0
        
        for (index, value) in prices.enumerated() {
            if (buyingPrice > value) {
                buyingPrice = value
            } else if (value - buyingPrice > maxProfit) {
                maxProfit = value-buyingPrice
            }
        }
        
        return maxProfit
    }
}