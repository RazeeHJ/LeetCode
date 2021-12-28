class Solution {
       func validMountainArray(_ arr: [Int]) -> Bool {
        var i = 0
        
        guard arr.count >= 3 else { return false }
        while (i < arr.count-1 && arr[i] < arr[i+1]) {
            i += 1
        }
        
        if (i == 0 || i == arr.count-1) {
            return false
        }
        
        while (i < arr.count-1) {
            if (arr[i] <= arr[i+1]) {
                return false
            }
            i += 1
        }
        
        return true
    }
}