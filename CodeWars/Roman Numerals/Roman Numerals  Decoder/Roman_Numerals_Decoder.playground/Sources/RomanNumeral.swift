import Foundation

enum RomanNumeral: String {
    case I, V, X, L, C, D, M
    
    var number: Int {
        switch self {
        case .I: return 1
        case .V: return 5
        case .X: return 10
        case .L: return 50
        case .C: return 100
        case .D: return 500
        case .M: return 1000
        }
    }
}
