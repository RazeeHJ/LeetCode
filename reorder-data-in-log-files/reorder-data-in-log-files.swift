class Solution {
    func reorderLogFiles(_ logs: [String]) -> [String] {
        var digitsLogs: [String] = []
        var letterLogs: [String] = []

        for i in 0..<logs.count {
            let line = logs[i].components(separatedBy: " ")
            let firstLog = line[1]

            if firstLog.first?.isNumber == true {
                digitsLogs.append(logs[i])
            } else {
                letterLogs.append(logs[i])
            }
        }

        letterLogs.sort {
            let log1 = $0.components(separatedBy: " ")
            let log2 = $1.components(separatedBy: " ")

            let identifier1 = log1[0]
            let identifier2 = log2[0]

            let log1Line = log1[1...].joined(separator: " ")
            let log2Line = log2[1...].joined(separator: " ")

            if log1Line == log2Line {
                return identifier1 < identifier2 
            } else {
                return log1Line < log2Line
            }
        }

        return letterLogs + digitsLogs

    }
}