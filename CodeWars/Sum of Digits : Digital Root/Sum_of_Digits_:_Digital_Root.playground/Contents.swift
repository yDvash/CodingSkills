/**
 Digital root is the recursive sum of all the digits in a number.

 Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.

 Examples
 
     16  -->  1 + 6 = 7
    942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
    132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
    493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2
 */

func digitalRoot(of number: Int) -> Int {
    let newNumber = String(number).compactMap { Int(String($0)) }.reduce(0, +)
    if newNumber >= 10 {
        return digitalRoot(of: newNumber)
    }
    return newNumber
}

/// Examples
[16, 942, 132189, 493193].forEach {
    print(digitalRoot(of: $0))
}
