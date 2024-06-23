/**
 Create a function that takes a Roman numeral as its argument and returns its value as a numeric decimal integer. You don't need to validate the form of the Roman numeral.

 Modern Roman numerals [https://en.wikipedia.org/wiki/Roman_numerals#Standard_form] are written by expressing each decimal digit of the number to be encoded separately, starting with the leftmost digit and skipping any 0s. So 1990 is rendered "MCMXC" (1000 = M, 900 = CM, 90 = XC) and 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII). The Roman numeral for 1666, "MDCLXVI", uses each letter in descending order.
 */
func solution(_ number:Int) -> String {
    
    var result = ""
    var startingValue = number
    
    for romanNumeral in RomanNumeral.allCases.reversed() {
        
        var value = startingValue / romanNumeral.rawValue
        
        if value > 0 {
            for i in 0..<value {
                result += romanNumeral.symbol
            }
            startingValue -= romanNumeral.rawValue * value
        }
        
    }
    
    return result
}
