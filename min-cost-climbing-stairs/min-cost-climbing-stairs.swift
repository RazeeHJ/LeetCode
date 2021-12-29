class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var sizeOfArray = cost.count 
        var arr = [Int](repeating: 0, count: sizeOfArray+1)
  
        for i in 2..<arr.count {
            let takeOneStep = arr[i-1]+cost[i-1]
            let takeTwoStep = arr[i-2]+cost[i-2]
            arr[i] = min(takeOneStep,takeTwoStep)
        }
        
        return arr[sizeOfArray]
    }
}