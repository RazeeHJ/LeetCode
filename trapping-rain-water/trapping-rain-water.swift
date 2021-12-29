// height = [0,1,0,2,1,0,1,3,2,1,2,1]
// leftIndex | rightIndex | leftWall | rightWall | water
//     0            11          0          0         0
//     1            11          0          0         0   
//     1            10          0          1         0
//

class Solution {
    func trap(_ height: [Int]) -> Int {
        var leftIndex = 0
        var rightIndex = height.count - 1
        
        var leftWall = 0
        var rightWall = 0
        var water = 0
        
        while (leftIndex < rightIndex) {
            if (height[leftIndex] < height[rightIndex]) {
                if (height[leftIndex] < leftWall) {
                    water += leftWall - height[leftIndex]
                } else {
                    leftWall = height[leftIndex]
                }
                leftIndex += 1
            } else {
                if (height[rightIndex] < rightWall) {
                    water += rightWall - height[rightIndex]
                } else {
                    rightWall = height[rightIndex]
                }
                rightIndex -= 1
            }
        }
        return water
    } 
}