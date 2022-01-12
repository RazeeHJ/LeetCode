class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var countOccurences: [Int:Int] = [:]
        
        for i in 0..<arr.count {
            if let count = countOccurences[arr[i]] {
                countOccurences[arr[i]] = count + 1
            } else {
                countOccurences[arr[i]] = 1
            }
        }
        
        var count = [Int](repeating: 0, count: countOccurences.count)
        
        var index = 0
        countOccurences.forEach { key, value in
            count[index] = value
            index += 1
        }
        if (count.count < 2) {
            return true
        }
        
        let sorted = count.sorted()
        var slow = 0, fast = 0
        
        while fast < sorted.count {
            if (slow == fast) {
                fast += 1
            }
            
            if (sorted[slow] == sorted[fast]) {
                return false
            }
            slow += 1
            fast += 1
        }
        
        return true
    }
}