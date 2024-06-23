import Foundation

enum RomanNumeral: Int, CaseIterable {
    
    case I = 1
    case IV = 4
    case V = 5
    case IX = 9
    case X = 10
    case XL = 40
    case L = 50
    case XC = 90
    case C = 100
    case CD = 400
    case D = 500
    case CM = 900
    case M = 1_000
    
    var symbol: String {
        switch self {
        case .I: return "I"
        case .IV: return "IV"
        case .V: return "V"
        case .IX: return "IX"
        case .X: return "X"
        case .XL: return "XL"
        case .L: return "L"
        case .XC: return "XC"
        case .C: return "C"
        case .CD: return "CD"
        case .D: return "D"
        case .CM: return "CM"
        case .M: return "M"
        }
    }
}
