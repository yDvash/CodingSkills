import Foundation

/**
 Maximum value in the array
 You are given an array of integers. Your job is to write a program to return the maximum value in the array. If the given array is empty return null.
 */

func iterativeMaxiumum(_ array: [Int]) -> Int? {
    if array.isEmpty {
        return nil
    }
    var max = 0
    for num in array {
        if num > max {
            max = num
        }
    }
    return max
}

func sortingMaxiumum(_ array: [Int]) -> Int? {
    if array.isEmpty {
        return nil
    }
    let sortedArray = array.sorted()
    return sortedArray.last
}

let myArray = [10,11,1,13,-10]

let aStartTime = Date()
let a = iterativeMaxiumum(myArray)
let aEndTime = Date()
let aInterval = aEndTime.timeIntervalSince(aStartTime)

let bStartTime = Date()
let b = sortingMaxiumum(myArray)
let bEndTime = Date()
let bInterval = bEndTime.timeIntervalSince(bStartTime)

let cStartTime = Date()
let c = myArray.max() // Native
let cEndTime = Date()
let cInterval = cEndTime.timeIntervalSince(cStartTime)
