import Foundation
/**
 An Arithmetic Progression is defined as one in which there is a constant difference between the consecutive terms of a given series of numbers. You are provided with consecutive elements of an Arithmetic Progression. There is however one hitch: exactly one term from the original series is missing from the set of numbers which have been given to you. The rest of the given series is the same as the original AP. Find the missing term.

 You have to write a function that receives a list, list size will always be at least 3 numbers. The missing term will never be the first or last one.

 Example

 find_missing([1, 3, 5, 9, 11]) == 7
 */

func findMissing(in sequence:[Int]) -> Int {
    let sequanceSum = sequence.reduce(0, +)
    
    let first = sequence[0]
    let last = sequence[sequence.count - 1]

    return (first + last) * (sequence.count + 1) / 2 - sequanceSum
}

findMissing(in: [1, 3, 5, 9, 11])
