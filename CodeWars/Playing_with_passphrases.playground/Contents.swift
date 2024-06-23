import Foundation

/**
 Everyone knows passphrases. One can choose passphrases from poems, songs, movies names and so on but frequently they can be guessed due to common cultural references. You can get your passphrases stronger by different means. One is the following:

 choose a text in capital letters including or not digits and non alphabetic characters,

 shift each letter by a given number but the transformed letter must be a letter (circular shift),
 replace each digit by its complement to 9,
 keep such as non alphabetic and non digit characters,
 downcase each letter in odd position, upcase each letter in even position (the first character is in position 0),
 reverse the whole result.
 Example:

 your text: "BORN IN 2015!", shift 1

 1 + 2 + 3 -> "CPSO JO 7984!"

 4 "CpSo jO 7984!"

 5 "!4897 Oj oSpC"

 With longer passphrases it's better to have a small and easy program. Would you write it?

 https://en.wikipedia.org/wiki/Passphrase
 */
func playPass(_ s: String, _ n: Int) -> String {
    var phraseArray: [Character] = []
    
    for (index, character) in s.enumerated() {
        if character.isNumber {
            
            phraseArray.insert(increment(number: character), at: 0)
            
        } else if character.isLetter {
            
            var shiftedCharacter = increment(character: character, by: n)
            
            if index % 2 != 0 {
                phraseArray.insert(contentsOf: shiftedCharacter.lowercased(), at: 0)
            } else {
                phraseArray.insert(shiftedCharacter, at: 0)
            }
            
        } else {
            phraseArray.insert(character, at: 0)
        }
    }
    
    return String(phraseArray)
}

func increment(number: Character) -> Character {
    if let digit = Int(String(number)) {
        let shiftedValue = 9 - digit
        return Character(String(shiftedValue))
    }
    return number
}

func increment(character: Character, by shift: Int) -> Character {
    let asciiValue = Int(character.asciiValue!)
    var shiftedValue = asciiValue + shift
    
    if shiftedValue > Constants.zAscii {
        shiftedValue = shiftedValue - Constants.zAscii + Constants.aAscii - 1
    } else if shiftedValue < Constants.aAscii {
        shiftedValue = shiftedValue + Constants.zAscii - Constants.aAscii
    }
    
    return Character(UnicodeScalar(shiftedValue)!)
}

