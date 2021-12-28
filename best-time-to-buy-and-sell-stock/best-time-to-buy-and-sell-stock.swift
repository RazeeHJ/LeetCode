// prices = [7,1,5,3,6,4]
// buyingPrice | price | maxProfit
//      7          1         0
//      1          5         4
//      1          6 
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buyingPrice = prices[0]
        var maxProfit = 0
        
        for i in 1..<prices.count {
            if prices[i] < buyingPrice {
                buyingPrice = prices[i]
            } else if (prices[i] - buyingPrice > maxProfit) {
                maxProfit = prices[i] - buyingPrice
            }
        }
        
        return maxProfit
    }
}