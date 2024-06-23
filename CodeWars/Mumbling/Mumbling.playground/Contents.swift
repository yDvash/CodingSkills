/**
 This time no story, no theory. The examples below show you how to write function accum:

 Examples:

 accum("abcd") -> "A-Bb-Ccc-Dddd"
 accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
 accum("cwAt") -> "C-Ww-Aaa-Tttt"
 The parameter of accum is a string which includes only letters from a..z and A..Z.
 */

func accum(_ s: String) -> String {
    s.enumerated()
        .map({ (arguments) in
            let (index, char) = arguments
            return char.uppercased() + String(repeating: char.lowercased(), count: index)
        })
        .joined(separator: "-")
}

/// Examples
["abcd", "RqaEzty", "cwAt"].forEach {
    print(accum($0))
}
