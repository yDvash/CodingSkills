import Foundation

/**
 Write a method (or function, depending on the language) that converts a string to camelCase, that is, all words must have their first letter capitalized and spaces must be removed.
 
 Examples (input --> output):
 
 "hello case" --> "HelloCase"
 "camel case word" --> "CamelCaseWord"
 */

func camelCase2(_ str: String) -> String {
    return str.capitalized.replacingOccurrences(of: " ", with: "")
}

func camelCase1(_ str: String) -> String {
    return str
        .components(separatedBy: " ")
        .filter { $0 != " " }
        .map({ (string) -> String in
            guard let firstChar = string.first else { return string }
            return String(firstChar).capitalized + string.dropFirst()
        })
        .joined(separator: "")
}
