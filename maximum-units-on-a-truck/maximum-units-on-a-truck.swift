class Solution {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        let sorted = boxTypes.sorted { $0[1] > $1[1] }
        var unitSize = 0
        var maxBoxSize = 0

        for i in 0..<sorted.count {
            if maxBoxSize < truckSize {
                unitSize += sorted[i][0] * sorted[i][1]
                maxBoxSize += sorted[i][0]
            }

            if maxBoxSize > truckSize {
                let remove = maxBoxSize - truckSize
                unitSize -= remove * sorted[i][1]
                maxBoxSize -= remove

            }
            if maxBoxSize == truckSize {
                return unitSize
            }
        }
        return unitSize
    }
}