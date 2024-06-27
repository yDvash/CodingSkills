import Foundation

struct FindElement {
    
    let array: [Int]
    
    /// O(n)
    func linearSearch(target: Int) -> Bool {
        for element in array {
            if element == target {
                return true
            }
        }
        return false
    }
    
    /// O(log n)
    func binarySearch(target: Int) -> Bool {
        var left = 0
        var right = array.count - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            let midELement = array[mid]
            
            if midELement == target {
                return true
            } else if midELement < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return false
    }
}

/// Examples:

let range = 1...10_000
let sortedArray = Array(range)
let target: Int = Int.random(in: range)

let findElement = FindElement(array: sortedArray)

let linearTimeStamp = Date()
findElement.linearSearch(target: target)
print("Linear Search took: \(Date().timeIntervalSince(linearTimeStamp))")

let binaryTimeStamp = Date()
findElement.binarySearch(target: target)
print("Binary Search took: \(Date().timeIntervalSince(binaryTimeStamp))")
