/**
 Create a function that takes a Roman numeral as its argument and returns its value as a numeric decimal integer. You don't need to validate the form of the Roman numeral.
 
 Modern Roman numerals are written by expressing each decimal digit of the number to be encoded separately, starting with the leftmost digit and skipping any 0s. So 1990 is rendered "MCMXC" (1000 = M, 900 = CM, 90 = XC) and 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII). The Roman numeral for 1666, "MDCLXVI", uses each letter in descending order.
 */
func solution(_ string:String) -> Int {
    var sum = 0
    for (index, char) in string.enumerated() {
        let optionalCurrentRoman = RomanNumeral(rawValue: String(char))
        switch index {
        case 0:
            if let currentNumber = optionalCurrentRoman?.number {
                sum += currentNumber
            }
        default:
            let preChar = Array(string)[index - 1]
            let optionalPreviousRoman = RomanNumeral(rawValue: String(preChar))
            guard let curNum = optionalCurrentRoman?.number, let preNum = optionalPreviousRoman?.number else { continue }
            if curNum <= preNum {
                sum += curNum
            } else {
                sum += curNum - (2 * preNum)
            }
        }
    }
    return sum
}
