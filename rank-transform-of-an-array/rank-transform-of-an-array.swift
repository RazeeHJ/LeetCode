class Solution {
    func arrayRankTransform(_ arr: [Int]) -> [Int] {
        var dict: [Int:Int] = [:]
        var count = 0
        let sorted = arr.sorted()
        var indx = 0

        while count < sorted.count {
            if count > 0 && (sorted[count] == sorted[count-1] ){
                dict[sorted[count]] = indx
            } else {
                dict[sorted[count]] = indx + 1
                indx += 1
            }
            count += 1
        }

        var result: [Int] = []

        for i in 0..<arr.count {
            if let value = dict[arr[i]] {
                result.append(value)
            }
        }

        return result
    }
}